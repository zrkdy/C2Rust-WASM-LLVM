import os
import shutil
import re
import subprocess
import json
import sys

# 添加当前目录到模块搜索路径，确保能找到 wat_analyzer.py
current_dir = os.path.dirname(os.path.abspath(__file__))
if current_dir not in sys.path:
    sys.path.append(current_dir)

# 尝试导入 wat_analyzer 模块
try:
    import wat_analyzer
except ImportError:
    print("警告: 无法导入 wat_analyzer 模块，WAT 提取功能将被禁用")
    wat_analyzer = None

# 配置参数
SOURCE_DIR = "./c_samples"
TARGET_DIR = "./c_code"
SOURCE_MAP_FILE = "./c_code/source_map.json"
PROJECTS_INFO_FILE = "./c_code/projects_info.json"  # 新增: 项目详细信息文件

# 定义C语言特性检测的正则表达式
C_STRUCTURES = {
    'array': r'\[\s*\d*\s*\]',  # 数组声明，如 int a[10]
    'comment': r'/\*[\s\S]*?\*/|//.*',  # 注释，包括多行和单行
    'conditional': r'if\s*\(|else|switch|case|\?.*:',  # 条件判断和三目运算
    'struct': r'struct\s+\w+',  # 结构体定义
    'float': r'\bfloat\b',  # float类型
    'int': r'\bint\b',  # int类型
    'loop': r'for\s*\(|while\s*\(|do\s*{',  # 循环结构
    'malloc': r'malloc\s*\(',  # 内存分配
    'pointer': r'\*\s*\w+|void\s*\*|\w+\s*\*',  # 指针声明
    'static': r'\bstatic\b',  # static关键字
    'double': r'\bdouble\b',  # double类型
    'union': r'\bunion\b',  # union关键字
    'function_pointer': r'\(\s*\*\s*\w+\s*\)',  # 函数指针
    'typedef': r'\btypedef\b',  # typedef关键字
    'enum': r'\benum\b',  # 枚举类型
    'bitwise': r'[&|^~](?![&|])',  # 位运算
    'file_io': r'\bfopen\b|\bfclose\b|\bfread\b|\bfwrite\b',  # 文件IO操作
    'memory': r'\bmemcpy\b|\bmemset\b|\bmemmove\b',  # 内存操作
    'string': r'\bstrlen\b|\bstrcpy\b|\bstrcat\b|\bstrcmp\b',  # 字符串操作
    'macro': r'#define\s+\w+',  # 宏定义
}

def detect_c_features(file_path):
    """检测C文件中包含的C语言特性"""
    features = {}
    try:
        with open(file_path, 'r', encoding='utf-8', errors='ignore') as f:
            content = f.read()
        
        for feature, pattern in C_STRUCTURES.items():
            try:
                if re.search(pattern, content):
                    features[feature] = True
            except re.error:
                continue
    except Exception as e:
        print(f"  >> 检测特性时出错: {e}")
    
    return list(features.keys())

def get_repo_info(file_path):
    """从原始路径获取仓库信息"""
    # 从文件路径中提取仓库名
    parts = file_path.split(os.sep)
    if 'c_samples' in parts:
        idx = parts.index('c_samples')
        if idx + 1 < len(parts):
            repo_name = parts[idx + 1]
            repo_info_path = os.path.join(SOURCE_DIR, repo_name, "repo_info.json")
            
            if os.path.exists(repo_info_path):
                try:
                    with open(repo_info_path, 'r', encoding='utf-8') as f:
                        return json.load(f)
                except Exception as e:
                    print(f"  >> 读取仓库信息失败: {e}")
    
    return None

def infer_domain(repo_info, features):
    """根据仓库描述和特性推断领域"""
    if not repo_info or not repo_info.get('description'):
        return "未知"
    
    description = repo_info['description'].lower() if repo_info['description'] else ""
    
    domains = {
        "数据结构": ["data structure", "list", "tree", "queue", "stack", "hash", "graph"],
        "算法": ["algorithm", "sort", "search", "path", "optimization"],
        "系统编程": ["system", "kernel", "driver", "memory", "process", "thread"],
        "网络编程": ["network", "socket", "protocol", "http", "tcp", "udp"],
        "图形处理": ["graphic", "image", "render", "opengl", "vulkan"],
        "数学库": ["math", "calculation", "numeric", "statistic"],
        "文本处理": ["text", "string", "parser", "lexer", "compiler"],
        "工具库": ["utility", "tool", "helper", "common"],
        "嵌入式": ["embedded", "microcontroller", "arduino", "hardware"]
    }
    
    # 检查描述中是否包含特定领域的关键词
    for domain, keywords in domains.items():
        for keyword in keywords:
            if keyword in description:
                return domain
    
    # 根据特性推断
    if "file_io" in features:
        return "文件处理"
    if "string" in features and "memory" in features:
        return "文本处理"
    if "struct" in features and "pointer" in features:
        return "数据结构"
    
    return "通用C程序"

def organize_c_files():
    """将c_samples目录下的.c文件整理到c_code目录中，每个程序放入单独的编号文件夹，并生成LLVM IR、WASM和WAT"""
    
    # 确保目标目录存在
    if not os.path.exists(TARGET_DIR):
        os.makedirs(TARGET_DIR)
    
    # 查找所有.c文件
    c_files = []
    for root, _, files in os.walk(SOURCE_DIR):
        for file in files:
            if file.endswith('.c'):
                c_files.append(os.path.join(root, file))
    
    print(f"找到 {len(c_files)} 个C文件")
    
    # 按文件名排序
    c_files.sort()
    
    # 成功处理的文件计数
    success_count = 0
    
    # 创建源文件映射
    source_map = {}
    
    # 创建项目详细信息
    projects_info = {}
    
    # 为每个文件创建单独的目录
    for i, file_path in enumerate(c_files, 1):
        # 获取文件名
        file_name = os.path.basename(file_path)
        base_name = os.path.splitext(file_name)[0]
        
        # 创建临时目录用于测试编译
        temp_dir = os.path.join(TARGET_DIR, "temp_compile")
        os.makedirs(temp_dir, exist_ok=True)
        temp_file = os.path.join(temp_dir, file_name)
        temp_ll = os.path.join(temp_dir, f"{base_name}.ll")
        
        # 复制文件到临时目录
        shutil.copy2(file_path, temp_file)
        
        # 检查文件是否只依赖标准库
        try:
            with open(file_path, 'r', encoding='utf-8', errors='ignore') as f:
                content = f.read()
            
            # 提取所有#include语句
            includes = re.findall(r'#include\s+[<"]([^>"]+)[>"]', content)
            
            # C99标准库头文件列表
            standard_headers = [
                'stdio.h', 'stdlib.h', 'string.h', 'math.h', 'ctype.h', 
                'time.h', 'assert.h', 'limits.h', 'float.h', 'stddef.h',
                'signal.h', 'setjmp.h', 'stdarg.h', 'locale.h', 'errno.h',
                'stdbool.h', 'complex.h', 'inttypes.h', 'stdalign.h', 'stdint.h',
                'stdnoreturn.h', 'uchar.h', 'iso646.h', 'wchar.h', 'wctype.h'
            ]
            
            # 检查是否只包含标准库头文件
            has_non_standard = False
            for include in includes:
                if include not in standard_headers:
                    has_non_standard = True
                    print(f"  >> 跳过: {file_name} (依赖非标准库: {include})")
                    break
            
            if has_non_standard:
                continue
            
        except Exception as e:
            print(f"  >> 分析文件失败: {e}")
            continue
        
        # 尝试生成LLVM IR
        try:
            print(f"[{i}/{len(c_files)}] 测试编译: {file_name}")
            
            # 使用标准编译选项
            compile_cmd = [
                "clang-20", 
                "-O0",                   # 禁用优化
                "-S", "-emit-llvm", 
                "-fno-strict-aliasing",  # 放宽别名规则
                "-w",                    # 禁用所有警告
                "-D_GNU_SOURCE",         # 定义GNU源
                "-DNDEBUG",              # 定义NDEBUG
                "-std=c99",              # 使用C99标准
                temp_file, 
                "-o", temp_ll
            ]
            
            # 添加包含路径
            compile_cmd.extend(["-I", os.path.dirname(file_path)])
            
            result = subprocess.run(
                compile_cmd,
                check=True,
                stdout=subprocess.PIPE,
                stderr=subprocess.PIPE,
                timeout=30
            )
            
            # 如果编译成功，则创建正式目录并复制文件
            success_count += 1
            target_folder = os.path.join(TARGET_DIR, f"program_{success_count:03d}")
            os.makedirs(target_folder, exist_ok=True)
            
            # 统一命名C文件
            standard_c_name = f"program_{success_count:03d}.c"
            target_file = os.path.join(target_folder, standard_c_name)
            shutil.copy2(file_path, target_file)
            
            # 复制生成的LLVM IR文件
            standard_ll_name = f"program_{success_count:03d}.ll"
            target_ll = os.path.join(target_folder, standard_ll_name)
            shutil.copy2(temp_ll, target_ll)
            
            # 检测C语言特性
            c_features = detect_c_features(file_path)
            
            # 获取仓库信息
            repo_info = get_repo_info(file_path)
            
            # 推断领域
            domain = infer_domain(repo_info, c_features)
            
            # 记录项目详细信息
            program_id = f"program_{success_count:03d}"
            projects_info[program_id] = {
                "项目名": repo_info.get("name", "未知") if repo_info else "未知",
                "Stars": repo_info.get("stars", 0) if repo_info else 0,
                "领域": domain,
                "C语言特性": c_features,
                "仓库链接": repo_info.get("url", "") if repo_info else "",
                "描述": repo_info.get("description", "") if repo_info else "",
                "原始文件名": file_name,  # 添加原始文件名
                "原始文件路径": file_path  # 添加原始文件路径
            }
            
            # 记录源文件信息
            source_map[program_id] = {
                "original_path": file_path,
                "original_name": file_name,
                "original_base_name": base_name,
                "standard_name": standard_c_name,
                "includes": includes,
                "c_features": c_features
            }
            
            print(f"  >> 成功处理: {file_name} -> {target_folder}/{standard_c_name}")
            print(f"  >> 检测到的C语言特性: {', '.join(c_features)}")
            
        except Exception as e:
            print(f"  >> 编译失败，跳过: {file_name}")
            print(f"  >> 错误: {str(e)}")
        
        # 清理临时目录
        shutil.rmtree(temp_dir, ignore_errors=True)
    
    # 保存源文件映射到JSON文件
    with open(SOURCE_MAP_FILE, 'w', encoding='utf-8') as f:
        json.dump(source_map, f, indent=2, ensure_ascii=False)
    
    # 保存项目详细信息到JSON文件
    with open(PROJECTS_INFO_FILE, 'w', encoding='utf-8') as f:
        json.dump(projects_info, f, indent=2, ensure_ascii=False)
    
    print(f"\n整理完成！成功处理 {success_count}/{len(c_files)} 个文件")
    print(f"源文件映射已保存到: {SOURCE_MAP_FILE}")
    print(f"项目详细信息已保存到: {PROJECTS_INFO_FILE}")
    
    # 输出详细的文件来源信息
    print("\n处理成功的文件详细信息:")
    for program_id, info in sorted(source_map.items()):
        print(f"  {program_id}: 来自 {info['original_path']}")

if __name__ == "__main__":
    organize_c_files()