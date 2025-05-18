#!/usr/bin/env python3
# -*- coding: utf-8 -*-

import os
import sys
import json
import argparse
import subprocess
import tempfile
from pathlib import Path
import shutil # 导入 shutil 用于删除目录

def load_analysis_result(json_file):
    """加载分析结果JSON文件"""
    try:
        with open(json_file, 'r', encoding='utf-8') as f:
            data = json.load(f)
        return data
    except Exception as e:
        print(f"加载JSON文件失败: {e}")
        return None

def create_rust_transformer(analysis_result):
    """创建Rust代码转换器"""
    # 创建一个临时目录，不再使用 with 语句自动删除
    temp_dir = tempfile.mkdtemp()
    try:
        # 创建Cargo.toml
        cargo_toml = os.path.join(temp_dir, "Cargo.toml")
        with open(cargo_toml, "w") as f:
            f.write("""
[package]
name = "rust_transformer"
version = "0.1.0"
edition = "2021"

[dependencies]
syn = { version = "1.0", features = ["full", "parsing", "extra-traits", "visit-mut"] }
quote = "1.0"
proc-macro2 = "1.0"
prettyplease = "0.1.25"  # 指定与 syn 1.0 兼容的版本
""")
        
        # 创建src目录
        src_dir = os.path.join(temp_dir, "src")
        os.makedirs(src_dir, exist_ok=True)
        
        # 创建main.rs
        main_rs = os.path.join(src_dir, "main.rs")
        
        # 从分析结果中提取变量信息
        var_info = {}
        for var in analysis_result.get('variables', []):
            var_info[var['name']] = {
                'translation_type': var['translation_type'],
                'reason': var['reason']
            }
        
        # 将变量信息转换为Rust代码中的HashMap
        var_info_str = ""
        for name, info in var_info.items():
            var_info_str += f'    map.insert("{name}".to_string(), ("{info["translation_type"]}".to_string(), "{info["reason"]}".to_string()));\n'
        
        # 编写main.rs - 使用普通字符串而不是f-string
        with open(main_rs, "w") as f:
            # 使用单花括号 {} 定义 Rust 代码块
            rust_code = """
use std::collections::HashMap;
use std::env;
use std::fs;
// 导入 syn::token 以使用 Mut
// 使用单花括号 {}
use syn::{Item, visit_mut::{self, VisitMut}, token};

// 使用单花括号 {}
struct GlobalVarTransformer {
    var_info: HashMap<String, (String, String)>,
    processed_vars: Vec<String>,
}

// 使用单花括号 {}
impl GlobalVarTransformer {
    fn new(var_info: HashMap<String, (String, String)>) -> Self {
        GlobalVarTransformer {
            var_info,
            processed_vars: Vec::new(),
        }
    }
    
    fn get_processed_vars(&self) -> Vec<String> {
        self.processed_vars.clone()
    }
}

// 使用单花括号 {}
impl VisitMut for GlobalVarTransformer {
    fn visit_item_mut(&mut self, item: &mut syn::Item) {
        if let Item::Static(item_static) = item {
            // 获取变量名
            let var_name = item_static.ident.to_string();
            
            // 检查变量是否在分析结果中
            if let Some((translation_type, reason)) = self.var_info.get(&var_name) {
                // 使用单花括号 {}
                match translation_type.as_str() {
                    "const" => {
                        // 将static mut转换为const，移除#[no_mangle]
                        let mut new_attrs = Vec::new();
                        for attr in &item_static.attrs {
                            if !attr.path.is_ident("no_mangle") {
                                new_attrs.push(attr.clone());
                            }
                        }
                        item_static.attrs = new_attrs;
                        
                        // 创建新的const项
                        let ty = &item_static.ty;
                        let expr = &item_static.expr;
                        let ident = &item_static.ident;
                        
                        // 使用字符串替换而不是syn::parse_quote
                        // format! 宏中的花括号 {} 保持不变
                        *item = syn::parse_str(&format!("pub const {}: {} = {};", ident, quote::quote!(#ty), quote::quote!(#expr))).unwrap();
                        
                        // println! 宏中的花括号 {} 保持不变
                        println!("将变量 {} 转换为 'const'", var_name);
                        println!("  原因: {}", reason);
                        self.processed_vars.push(var_name);
                    },
                    "static" => {
                        // 将static mut转换为static
                        // 检查 mutability 是否为 Some(token::Mut)
                        if item_static.mutability.is_some() {
                            // 设置为不可变 (None)
                            item_static.mutability = None;
                            // println! 宏中的花括号 {} 保持不变
                            println!("将变量 {} 转换为 'static'", var_name);
                            println!("  原因: {}", reason);
                            self.processed_vars.push(var_name);
                        }
                    },
                    _ => {
                        // 保持不变
                        // println! 宏中的花括号 {} 保持不变
                        println!("保持变量 {} 为 'static mut'", var_name);
                        println!("  原因: {}", reason);
                        self.processed_vars.push(var_name);
                    }
                } // match 结束花括号
            } // if let Some 结束花括号
        } // if let Item::Static 结束花括号
        
        // 继续访问其他项
        visit_mut::visit_item_mut(self, item);
    } // visit_item_mut 结束花括号
} // impl VisitMut 结束花括号

fn process_file(file_path: &str, var_info: HashMap<String, (String, String)>) -> Result<(), Box<dyn std::error::Error>> {
    // 读取文件内容
    let content = fs::read_to_string(file_path)?;
    
    // 解析Rust代码
    let mut syntax_tree = syn::parse_file(&content)?;
    
    // 创建转换器 - 克隆var_info以避免所有权问题
    let mut transformer = GlobalVarTransformer::new(var_info.clone());
    
    // 应用转换
    transformer.visit_file_mut(&mut syntax_tree);
    
    // 获取处理过的变量
    let processed_vars = transformer.get_processed_vars();
    
    // 将语法树转换回代码
    let new_content = prettyplease::unparse(&syntax_tree);
    
    // 修复对可变静态变量的共享引用
    let new_content = new_content.replace("&mutable_var", "&raw const mutable_var")
                                .replace("&NON_CONST_VAR", "&raw const NON_CONST_VAR");
    
    // 写回文件
    fs::write(file_path, new_content)?;
    
    // 打印未处理的变量
    let all_vars: Vec<String> = var_info.keys().cloned().collect();
    let mut unprocessed = Vec::new();
    
    for var in all_vars {
        if !processed_vars.contains(&var) {
            unprocessed.push(var);
        }
    }
    
    if !unprocessed.is_empty() {
        println!("警告: 以下变量未被处理: {:?}", unprocessed);
        println!("这可能是因为它们的声明格式与预期不符。");
    }
    
    println!("已成功更新 {}", file_path);
    Ok(())
}

fn main() {
    // 获取命令行参数
    let args: Vec<String> = env::args().collect();
    
    if args.len() < 2 {
        eprintln!("用法: {} <rust_file_path>", args[0]);
        std::process::exit(1);
    }
    
    let file_path = &args[1];
    
    // 创建变量信息HashMap
    let mut map = HashMap::new();
VAR_INFO_PLACEHOLDER
    
    // 处理文件
    if let Err(e) = process_file(file_path, map) {
        eprintln!("处理文件失败: {}", e);
        std::process::exit(1);
    }
}
"""
            # 替换变量信息占位符
            rust_code = rust_code.replace("VAR_INFO_PLACEHOLDER", var_info_str)
            # 移除之前错误添加的花括号替换逻辑
            # rust_code = rust_code.replace("{{}}", "{}") 
            f.write(rust_code)
        
        # 编译Rust项目
        print(f"在临时目录 {temp_dir} 中编译 Rust 转换器...")
        subprocess.run(["cargo", "build", "--release"], cwd=temp_dir, check=True, capture_output=True, text=True)
        print("编译完成.")
        
        # 返回编译好的可执行文件路径和临时目录路径
        transformer_path = os.path.join(temp_dir, "target", "release", "rust_transformer")
        # 确保在 Windows 上路径正确
        if sys.platform == "win32":
             transformer_path += ".exe"
        return transformer_path, temp_dir
    except Exception as e:
        # 如果创建过程中出错，也要尝试清理临时目录
        print(f"创建 Rust 转换器时出错: {e}")
        shutil.rmtree(temp_dir, ignore_errors=True)
        raise # 重新抛出异常

def process_rust_file(rust_file, analysis_result, transformer_path):
    """使用Rust转换器处理Rust文件"""
    try:
        # 运行Rust转换器
        result = subprocess.run([transformer_path, rust_file], 
                               capture_output=True, text=True, check=True)
        
        # 打印输出
        print(result.stdout)
        
        return True
    except subprocess.CalledProcessError as e:
        print(f"处理Rust文件失败: {e}")
        print(f"错误输出: {e.stderr}")
        return False
    except Exception as e:
        print(f"处理Rust文件失败: {e}")
        return False

def find_rust_files(base_dir, project_name):
    """查找指定项目名称的Rust文件"""
    # 首先尝试直接在当前目录下查找rust_code目录
    rust_code_dir = os.path.join(base_dir, "rust_code")
    
    # 如果当前目录下没有rust_code，尝试在上级目录查找
    if not os.path.isdir(rust_code_dir):
        parent_dir = os.path.dirname(base_dir)
        rust_code_dir = os.path.join(parent_dir, "rust_code")
    
    # 如果还是找不到，尝试使用绝对路径
    if not os.path.isdir(rust_code_dir):
        # 尝试Ubuntu路径
        rust_code_dir = "/home/xiaoan/c2rust_project/c2rust_test生成单测/const_samples/rust_code"
    
    print(f"查找Rust文件的目录: {rust_code_dir}")
    
    # 检查rust_code目录是否存在
    if not os.path.isdir(rust_code_dir):
        print(f"错误: 找不到rust_code目录: {rust_code_dir}")
        return []
    
    # 查找src目录下的所有.rs文件
    rust_files = []
    src_dir = os.path.join(rust_code_dir, "src")
    if os.path.isdir(src_dir):
        for root, _, files in os.walk(src_dir):
            for file in files:
                if file.endswith(".rs"):
                    rust_files.append(os.path.join(root, file))
    
    return rust_files

def main():
    parser = argparse.ArgumentParser(description="根据分析结果修改Rust代码中的全局变量声明")
    parser.add_argument("--analysis", "-a", help="分析结果JSON文件路径", 
                        default="output/const_samples_analysis.json")
    parser.add_argument("--rust-file", "-r", help="要修改的Rust源代码文件路径")
    parser.add_argument("--project", "-p", help="项目名称", default="const_samples")
    parser.add_argument("--base-dir", "-b", help="基础目录", 
                        default=os.getcwd())
    
    args = parser.parse_args()
    
    print(f"当前工作目录: {os.getcwd()}")
    print(f"基础目录: {args.base_dir}")
    print(f"项目名称: {args.project}")
    print(f"分析结果文件: {args.analysis}")
    
    # 加载分析结果
    analysis_result = load_analysis_result(args.analysis)
    if not analysis_result:
        sys.exit(1)
    
    temp_dir_to_clean = None # 初始化临时目录变量
    try:
        # 创建Rust转换器
        print("创建Rust代码转换器...")
        transformer_path, temp_dir_to_clean = create_rust_transformer(analysis_result)
        print(f"Rust代码转换器创建完成: {transformer_path}")
    
        # 如果指定了具体的Rust文件，则只处理该文件
        if args.rust_file:
            if not process_rust_file(args.rust_file, analysis_result, transformer_path):
                sys.exit(1)
        else:
            # 否则，自动查找并处理项目中的所有Rust文件
            rust_files = find_rust_files(args.base_dir, args.project)
    
            if not rust_files:
                print(f"未找到与项目 '{args.project}' 相关的Rust文件")
                sys.exit(1)
    
            print(f"找到 {len(rust_files)} 个Rust文件:")
            for file in rust_files:
                print(f"  {file}")
    
            success_count = 0
            for rust_file in rust_files:
                print(f"\n处理文件: {rust_file}")
                if process_rust_file(rust_file, analysis_result, transformer_path):
                    success_count += 1
    
            print(f"\n处理完成: {success_count}/{len(rust_files)} 个文件成功处理")
    
        print("全局变量转换完成！")
    
    finally:
        # 确保在使用完毕后删除临时目录
        if temp_dir_to_clean and os.path.exists(temp_dir_to_clean):
            print(f"清理临时目录: {temp_dir_to_clean}")
            shutil.rmtree(temp_dir_to_clean, ignore_errors=True) # ignore_errors 以防万一

if __name__ == "__main__":
    main()