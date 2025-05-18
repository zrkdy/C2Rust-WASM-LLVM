import os
import json
import subprocess
import shutil
from pathlib import Path

# 配置参数
# 使用绝对路径
C_CODE_DIR = os.path.abspath("./c_code")
RUST_CODE_DIR = os.path.abspath("./rust_code")
TEMP_DIR = os.path.abspath("./temp_c2rust")

def ensure_directory(directory):
    """确保目录存在"""
    if not os.path.exists(directory):
        os.makedirs(directory)

def create_compile_commands(program_dir, output_dir):
    """为程序目录中的所有C文件创建compile_commands.json"""
    # 查找所有C文件
    c_files = []
    for file in os.listdir(program_dir):
        if file.endswith('.c'):
            c_files.append(os.path.join(program_dir, file))
    
    if not c_files:
        return None
    
    # 使用绝对路径
    compile_commands = []
    for c_file_path in c_files:
        abs_c_file_path = os.path.abspath(c_file_path)
        file_name = os.path.basename(abs_c_file_path)
        directory = os.path.dirname(abs_c_file_path)
        
        # 使用C99标准
        compile_command = {
            "directory": directory,
            "command": f"clang -c {file_name} -std=c99",
            "file": abs_c_file_path
        }
        
        compile_commands.append(compile_command)
    
    json_path = os.path.join(output_dir, "compile_commands.json")
    with open(json_path, 'w') as f:
        json.dump(compile_commands, f, indent=2)
    
    return json_path

def convert_c_to_rust(program_dir):
    """将单个C程序目录转换为Rust"""
    program_name = os.path.basename(program_dir)
    print(f"\n处理项目: {program_name}")
    
    # 创建对应的Rust输出目录
    rust_output_dir = os.path.join(RUST_CODE_DIR, program_name)
    ensure_directory(rust_output_dir)
    
    # 创建临时工作目录
    temp_work_dir = os.path.join(TEMP_DIR, program_name)
    ensure_directory(temp_work_dir)
    
    # 复制所有文件到临时目录
    for file in os.listdir(program_dir):
        src_path = os.path.join(program_dir, file)
        dst_path = os.path.join(temp_work_dir, file)
        if os.path.isfile(src_path):
            shutil.copy2(src_path, dst_path)
    
    # 为所有C文件创建compile_commands.json
    json_path = create_compile_commands(temp_work_dir, temp_work_dir)
    
    if not json_path:
        print(f"  >> 警告: {program_name} 中没有找到C文件")
        return False
    
    print(f"  >> 已创建编译命令: {json_path}")
    
    # 运行c2rust transpile
    try:
        print(f"  >> 正在转换: {program_name}")
        result = subprocess.run(
            ["c2rust", "transpile", "--emit-modules", "--overwrite-existing", json_path],
            cwd=temp_work_dir,
            check=True,
            stdout=subprocess.PIPE,
            stderr=subprocess.PIPE,
            text=True,
            timeout=180  # 3分钟超时
        )
        
        # 检查是否生成了Rust文件
        rust_files = [f for f in os.listdir(temp_work_dir) if f.endswith('.rs')]
        if rust_files:
            print(f"  >> 成功生成Rust文件: {', '.join(rust_files)}")
            
            # 复制Rust文件到输出目录
            for rust_file in rust_files:
                src_path = os.path.join(temp_work_dir, rust_file)
                dst_path = os.path.join(rust_output_dir, rust_file)
                shutil.copy2(src_path, dst_path)
            
            # 创建增强版的Cargo.toml
            create_enhanced_cargo_toml(rust_output_dir, program_name)
            
            return True
        else:
            print(f"  >> 警告: 未找到生成的Rust文件")
            return False
            
    except subprocess.CalledProcessError as e:
        print(f"  >> 错误: C2Rust转换失败")
        print(f"  >> 错误信息: {e.stderr}")
        return False
    except subprocess.TimeoutExpired:
        print(f"  >> 错误: C2Rust转换超时")
        return False
    except Exception as e:
        print(f"  >> 错误: {str(e)}")
        return False

def create_enhanced_cargo_toml(rust_dir, project_name):
    """创建增强版的Cargo.toml文件，包含更多依赖"""
    cargo_content = f"""[package]
name = "{project_name}"
version = "0.1.0"
edition = "2021"

[dependencies]
libc = "0.2"
c2rust-bitfields = "0.3"  # 支持C位域
once_cell = "1.8"         # 用于静态初始化
"""
    
    cargo_path = os.path.join(rust_dir, "Cargo.toml")
    with open(cargo_path, 'w') as f:
        f.write(cargo_content)
    
    print(f"  >> 已创建增强版Cargo.toml: {cargo_path}")

def main():
    """主函数"""
    print("开始将C代码转换为Rust...")
    
    # 确保目录存在
    ensure_directory(RUST_CODE_DIR)
    ensure_directory(TEMP_DIR)
    
    # 获取所有程序目录
    program_dirs = []
    for item in os.listdir(C_CODE_DIR):
        item_path = os.path.join(C_CODE_DIR, item)
        if os.path.isdir(item_path) and item.startswith("program_"):
            program_dirs.append(item_path)
    
    program_dirs.sort()  # 确保按顺序处理
    
    if not program_dirs:
        print("未找到任何程序目录")
        return
    
    print(f"找到 {len(program_dirs)} 个程序目录")
    
    # 转换每个程序
    success_count = 0
    for program_dir in program_dirs:
        if convert_c_to_rust(program_dir):
            success_count += 1
    
    # 清理临时目录
    shutil.rmtree(TEMP_DIR, ignore_errors=True)
    
    print(f"\n转换完成! 成功转换 {success_count}/{len(program_dirs)} 个程序")

if __name__ == "__main__":
    main()