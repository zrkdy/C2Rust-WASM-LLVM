import os
import subprocess
import tempfile
import shutil
from pathlib import Path
import glob

# 配置参数
RUST_CODE_DIR = "./rust_code"

def create_temp_project(rust_file_path):
    """为单个Rust文件创建临时Cargo项目"""
    # 创建临时目录
    temp_dir = tempfile.mkdtemp()
    
    # 获取文件名
    rust_file = Path(rust_file_path)
    file_name = rust_file.stem
    
    # 创建src目录
    src_dir = os.path.join(temp_dir, "src")
    os.makedirs(src_dir)
    
    # 读取原始Rust文件内容
    with open(rust_file_path, 'r', encoding='utf-8', errors='ignore') as f:
        rust_content = f.read()
    
    # 创建lib.rs文件用于生成LLVM IR
    lib_file = os.path.join(src_dir, "lib.rs")
    with open(lib_file, "w", encoding='utf-8') as f:
        # 添加更多编译属性来减少生成的代码量
        f.write("""#![allow(dead_code)]
#![allow(unused_variables)]
#![allow(non_snake_case)]
#![allow(non_camel_case_types)]
#![allow(unused_assignments)]
#![allow(unused_mut)]
#![allow(unreachable_code)]
#![allow(unused_imports)]
#![allow(overflowing_literals)]
#![allow(unused_parens)]
#![allow(unused_comparisons)]
#![allow(unconditional_recursion)]
#![allow(unused_unsafe)]
#![allow(path_statements)]
#![allow(unused_must_use)]

""")
        f.write(rust_content)
    
    # 创建Cargo.toml，添加配置以减少生成的代码
    cargo_toml = os.path.join(temp_dir, "Cargo.toml")
    with open(cargo_toml, "w", encoding='utf-8') as f:
        f.write(f"""[package]
name = "{file_name}"
version = "0.1.0"
edition = "2021"

[lib]
name = "{file_name}"
path = "src/lib.rs"
crate-type = ["staticlib"]

[dependencies]
libc = "0.2"

[profile.dev]
debug = false
overflow-checks = false
panic = "abort"
codegen-units = 1
""")
    
    return temp_dir

def generate_llvm_ir(rust_file_path, ll_file_path):
    """专门用于生成LLVM IR文件"""
    print(f"  >> 生成LLVM IR...")
    temp_project_dir = create_temp_project(rust_file_path)
    print(f"  >> 创建临时项目: {temp_project_dir}")
    
    try:
        # 使用cargo rustc生成LLVM IR，禁用优化
        print(f"  >> 尝试使用cargo rustc生成LLVM IR (禁用优化)...")
        result = subprocess.run(
            ["cargo", "rustc", "--", 
             "--emit=llvm-ir", 
             "-C", "opt-level=0",          # 禁用优化
             "-C", "debuginfo=0",          # 禁用调试信息
             "-C", "prefer-dynamic=no",    # 避免动态链接
             "-C", "embed-bitcode=no",     # 不嵌入bitcode
             "-C", "codegen-units=1",      # 单一代码生成单元
             "-C", "metadata=0",           # 最小化元数据
            ],
            cwd=temp_project_dir,
            check=True,
            stdout=subprocess.PIPE,
            stderr=subprocess.PIPE,
            text=True
        )
        
        # 查找生成的LLVM IR文件
        target_dir = os.path.join(temp_project_dir, "target", "debug", "deps")
        if os.path.exists(target_dir):
            ll_files = glob.glob(os.path.join(target_dir, "*.ll"))
            
            if ll_files:
                # 复制第一个找到的.ll文件到目标位置
                shutil.copy2(ll_files[0], ll_file_path)
                print(f"  >> 成功生成LLVM IR: {ll_file_path}")
                return True
        
        print(f"  >> 警告: 未找到生成的LLVM IR文件")
        return False
    
    except subprocess.CalledProcessError as e:
        print(f"  >> LLVM IR生成失败: {e.stderr if hasattr(e, 'stderr') else str(e)}")
        return False
    finally:
        # 清理临时目录
        shutil.rmtree(temp_project_dir, ignore_errors=True)

def convert_rust_to_llvm(rust_file_path):
    """将单个Rust文件转换为LLVM IR"""
    try:
        # 获取文件路径信息
        rust_file = Path(rust_file_path)
        file_dir = rust_file.parent
        file_name = rust_file.stem
        ll_file_path = file_dir / f"{file_name}.ll"
        
        print(f"正在处理: {rust_file_path}")
        
        # 生成LLVM IR
        llvm_success = generate_llvm_ir(rust_file_path, ll_file_path)
        
        return llvm_success
    
    except Exception as e:
        print(f"  >> 错误: {str(e)}")
        return False

def process_all_rust_files():
    """处理rust_code目录下的所有Rust文件"""
    # 查找所有.rs文件
    rust_files = []
    for root, _, files in os.walk(RUST_CODE_DIR):
        for file in files:
            if file.endswith('.rs') and not file == "lib.rs" and not file == "Cargo.toml":
                rust_files.append(os.path.join(root, file))
    
    if not rust_files:
        print("未找到任何Rust文件")
        return
    
    print(f"找到 {len(rust_files)} 个Rust文件")
    
    # 转换每个文件
    success_count = 0
    for rust_file in rust_files:
        if convert_rust_to_llvm(rust_file):
            success_count += 1
    
    print(f"\n转换完成! 成功转换 {success_count}/{len(rust_files)} 个文件")

if __name__ == "__main__":
    process_all_rust_files()