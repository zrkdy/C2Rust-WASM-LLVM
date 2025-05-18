#!/usr/bin/env python3
# -*- coding: utf-8 -*-

import os
import sys
import json
import subprocess
import argparse
from pathlib import Path
import glob

def generate_c_to_ll(c_file):
    """将C文件编译为LLVM IR文件"""
    ll_file = c_file.replace(".c", ".ll")
    
    # 优先检查是否有LLVM 12版本
    try:
        subprocess.run(["clang-12", "--version"], check=True, stdout=subprocess.PIPE, stderr=subprocess.PIPE)
        clang_cmd = "clang-12"
        print(f"使用LLVM 12版本的clang命令: {clang_cmd}")
    except (subprocess.CalledProcessError, FileNotFoundError):
        # 如果没有clang-12，检查是否有LLVM 20版本
        try:
            subprocess.run(["clang-20", "--version"], check=True, stdout=subprocess.PIPE, stderr=subprocess.PIPE)
            clang_cmd = "clang-20"
            print(f"使用LLVM 20版本的clang命令: {clang_cmd}")
        except (subprocess.CalledProcessError, FileNotFoundError):
            # 如果都没有，使用默认的clang
            clang_cmd = "clang"
            print(f"使用默认clang命令: {clang_cmd}")
    
    # 编译C文件为LLVM IR
    cmd = f"{clang_cmd} -S -emit-llvm -o {ll_file} {c_file}"
    result = subprocess.run(cmd, shell=True, check=False, stdout=subprocess.PIPE, stderr=subprocess.PIPE)
    
    if result.returncode != 0:
        print(f"编译失败: {result.stderr.decode('utf-8')}")
        sys.exit(1)
    
    print(f"已生成LLVM IR: {ll_file}")
    return ll_file

def _compile_const_translation_pass():
    """编译常量翻译分析工具为可执行文件"""
    try:
        current_dir = os.path.dirname(os.path.abspath(__file__))
        cpp_file = os.path.join(current_dir, "const_translation", "ConstTranslationAnalysis.cpp")
        output_dir = os.path.join(current_dir, "const_translation", "build")
        # 修改输出文件名，移除 .so 后缀
        executable_name = "const_analyzer_tool" 
        output_file = os.path.join(output_dir, executable_name)
        
        # 检查源文件是否存在
        if not os.path.exists(cpp_file):
            print(f"警告: 源文件不存在: {cpp_file}")
            print("假设 const_analyzer_tool 已经正确编译，跳过编译步骤")
            # 检查可执行文件是否存在
            if os.path.exists(output_file):
                 return output_file
            else:
                 print(f"错误: 找不到已编译的工具 {output_file}")
                 raise FileNotFoundError(f"找不到 {cpp_file} 或 {output_file}")

        # 确保输出目录存在
        if not os.path.exists(output_dir):
            os.makedirs(output_dir)
        
        # 使用正确的LLVM版本，编译为可执行文件 (移除 -shared -fPIC)
        llvm_flags = "`llvm-config-12 --cxxflags --ldflags --system-libs --libs core analysis irreader support`"
        # 添加 -g 用于调试
        cmd = f"clang++ -g -o {output_file} {cpp_file} {llvm_flags} -std=c++14" 
        print(f"执行编译命令: {cmd}")
        subprocess.run(cmd, shell=True, check=True)
        print(f"成功编译常量翻译分析工具: {output_file}")
        return output_file
    except subprocess.CalledProcessError as e:
        print(f"编译常量翻译分析工具失败: {e}")
        # 如果编译失败但文件存在，尝试使用已有的文件
        if os.path.exists(output_file):
            print(f"使用已存在的工具: {output_file}")
            return output_file
        else:
            raise
    except FileNotFoundError as e:
        print(e)
        raise

def run_analysis(ll_file, analyzer_executable_path):
    """运行独立的分析工具并返回输出结果"""
    # 创建临时文件用于捕获输出 (stderr) 和 JSON 结果
    output_log_file = f"{ll_file}.const.log"
    json_output_file = f"{ll_file}.analysis.json"
    
    # 构建运行独立分析工具的命令
    # 参数： <executable> <input_ll_file> <output_json_file>
    cmd = f"{analyzer_executable_path} {ll_file} {json_output_file}"
    print(f"执行分析工具命令: {cmd}")

    try:
        # 运行命令，将 stderr 重定向到日志文件
        result = subprocess.run(cmd, shell=True, check=True, stdout=subprocess.PIPE, stderr=subprocess.PIPE)
        
        # 将 stderr 写入日志文件 (即使成功也写入，方便查看分析过程)
        with open(output_log_file, 'wb') as log_f:
            log_f.write(result.stderr)
            
        print(f"分析工具成功执行。stderr 已写入 {output_log_file}")

        # 检查 JSON 输出文件是否存在
        if os.path.exists(json_output_file):
            print(f"找到JSON输出文件: {json_output_file}")
            with open(json_output_file, 'r', encoding='utf-8') as f:
                json_data = f.read()
            
            # (可选) 删除临时日志文件
            # try:
            #     os.remove(output_log_file)
            # except:
            #     print(f"警告: 无法删除临时日志文件: {output_log_file}")
            
            return json_data
        else:
            print(f"错误: 分析工具成功执行，但未找到预期的JSON输出文件: {json_output_file}")
            print("请检查分析工具的输出或日志文件。")
            # 打印 stderr 内容帮助调试
            print(f"--- {output_log_file} 内容 ---")
            print(result.stderr.decode('utf-8', errors='replace'))
            print(f"--- 日志结束 ---")
            return None

    except subprocess.CalledProcessError as e:
        print(f"分析工具执行失败: {e}")
        # 将 stderr 写入日志文件
        if e.stderr:
             with open(output_log_file, 'wb') as log_f:
                 log_f.write(e.stderr)
        # 打印错误日志
        if os.path.exists(output_log_file):
            with open(output_log_file, 'r', encoding='utf-8', errors='replace') as log_f:
                print(f"--- {output_log_file} 内容 ---")
                print(log_f.read())
                print(f"--- 日志结束 ---")
        else:
             print("无法读取错误日志。")
             if e.stderr:
                 print("原始 stderr:")
                 print(e.stderr.decode('utf-8', errors='replace'))

        # 在这种情况下，不回退到手动分析，因为工具本身失败了
        return None
    except Exception as e:
        print(f"运行分析时发生意外错误: {e}")
        return None

# 添加缺失的函数定义
def manual_analyze_ir(ll_file):
    """手动解析LLVM IR文件，提取全局变量信息"""
    print("执行手动解析LLVM IR...")
    
    try:
        with open(ll_file, 'r', encoding='utf-8', errors='replace') as f:
            ir_content = f.read()
        
        # 使用正则表达式查找全局变量定义
        import re
        global_vars = re.findall(r'@(\w+)\s*=\s*(dso_local\s*)?(constant|global)', ir_content)
        
        # 构建分析结果
        variables = []
        for name, _, var_type in global_vars:
            # 跳过内部字符串字面量
            if name.startswith('.str'):
                continue
                
            # 简单判断翻译类型
            translation_type = "static"
            if var_type == "constant":
                translation_type = "const"
            
            # 构建变量信息
            var_info = {
                "name": name,
                "c_definition": f"@{name} = {var_type} ...",
                "translation_type": translation_type,
                "reason": "手动解析结果，根据变量类型判断",
                "rust_code": f"pub {translation_type} {name}: [类型省略] = [初始化器省略];"
            }
            
            variables.append(var_info)
        
        print(f"手动解析找到 {len(variables)} 个全局变量")
        
        # 构建JSON数据
        analysis_result = {
            "input_file": ll_file.replace(".ll", ".c"),
            "variables": variables,
            "summary": {
                "total": len(variables),
                "const": sum(1 for v in variables if v["translation_type"] == "const"),
                "static": sum(1 for v in variables if v["translation_type"] == "static"),
                "static_mut": sum(1 for v in variables if v["translation_type"] == "static mut")
            }
        }
        
        # 将JSON数据转换为字符串
        return json.dumps(analysis_result, ensure_ascii=False, indent=2)
        
    except Exception as e:
        print(f"手动解析失败: {e}")
        return None

def analyze_file(input_file, analyzer_executable_path, output_dir, output_file=None):
    """分析单个文件并保存结果"""
    print(f"\n开始分析: {input_file}")
    
    # 确定输入文件类型并处理
    if input_file.endswith(".c"):
        ll_file = generate_c_to_ll(input_file)
    elif input_file.endswith(".ll"):
        ll_file = input_file
        # 对于.ll文件，我们需要找到对应的.c文件
        input_file = ll_file.replace(".ll", ".c")
    else:
        print(f"错误: 输入文件必须是.c或.ll文件: {input_file}")
        return
    
    # 运行分析 (传入可执行文件路径)
    print(f"使用分析工具 {analyzer_executable_path} 分析 {ll_file}")
    json_data = run_analysis(ll_file, analyzer_executable_path)
    
    if json_data is None:
        print("错误: 未找到分析结果，请检查分析器是否正确运行或查看日志")
        # 如果分析工具失败，可以选择回退到手动分析
        print("尝试手动解析LLVM IR...")
        json_data = manual_analyze_ir(ll_file)
        if json_data is None:
             print("手动解析也失败了。")
             return # 或者进行其他错误处理

    # 确定输出路径
    if output_file:
        output_path = Path(output_file)
    else:
        base_name = os.path.basename(input_file).split(".")[0]
        output_path = output_dir / f"{base_name}_analysis.json"
    
    # 写入JSON文件
    with open(output_path, "w", encoding="utf-8") as f:
        f.write(json_data)
    
    print(f"分析完成，结果已保存到 {output_path}")
    
    # 尝试解析JSON以显示摘要
    try:
        analysis_result = json.loads(json_data)
        if "summary" in analysis_result:
            summary = analysis_result["summary"]
            print(f"摘要: 共 {summary.get('total', 0)} 个变量")
            print(f"  - const: {summary.get('const', 0)}")
            print(f"  - static: {summary.get('static', 0)}")
            print(f"  - static mut: {summary.get('static_mut', 0)}")
    except json.JSONDecodeError:
        print("警告: 无法解析JSON结果以显示摘要")

def batch_analyze(input_pattern, analyzer_executable_path, output_dir):
    """批量分析多个文件"""
    # 查找所有匹配的文件
    files = glob.glob(input_pattern)
    
    if not files:
        print(f"未找到匹配的文件: {input_pattern}")
        return
    
    print(f"找到{len(files)}个文件，开始批量分析...")
    
    for file in files:
        # 传入可执行文件路径
        analyze_file(file, analyzer_executable_path, output_dir) 
    
    print(f"批量分析完成，结果保存在{output_dir}目录")

def main():
    parser = argparse.ArgumentParser(description="分析C代码中的全局变量并生成Rust翻译建议")
    parser.add_argument("--input", "-i", help="输入文件或通配符模式", default="c_code/*.c")
    parser.add_argument("--output-dir", "-o", help="输出目录", default="output")
    # 修改 plugin 参数描述
    parser.add_argument("--analyzer-tool", "-p", help="独立分析工具可执行文件路径", 
                        default="const_translation/build/const_analyzer_tool") 
    parser.add_argument("--output-file", "-f", help="输出文件名(仅用于单文件分析)")
    
    args = parser.parse_args()
    
    # 确保输出目录存在
    output_dir = Path(args.output_dir)
    output_dir.mkdir(exist_ok=True)
    print(f"将结果保存到目录: {output_dir}")
    
    # 编译/获取分析工具路径
    try:
        analyzer_executable_path = _compile_const_translation_pass()
    except Exception as e:
         print(f"无法编译或找到分析工具: {e}")
         sys.exit(1)

    # 检查是否是单文件分析
    if os.path.isfile(args.input):
        analyze_file(args.input, analyzer_executable_path, output_dir, args.output_file)
    else:
        # 批量分析
        batch_analyze(args.input, analyzer_executable_path, output_dir)

if __name__ == "__main__":
    main()