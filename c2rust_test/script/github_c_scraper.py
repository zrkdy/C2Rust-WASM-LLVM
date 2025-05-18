import os
import requests
import json
import time
import re
import random
import subprocess
import shutil
from urllib.parse import quote
from pathlib import Path

# 配置参数
BASE_DIR = "./c_samples"
MAX_REPOS = 500  # 增加最大处理仓库数从20到50
MAX_FILES_PER_REPO = 15  # 每个仓库最多获取的文件数从10增加到15
REQUEST_INTERVAL = 2  # 请求间隔(秒)
GITHUB_TOKEN = ""  # 如果有GitHub Token，可以放在这里增加API限制
TEMP_CLONE_DIR = "./temp_clone"  # 临时克隆目录

# C语言项目关键词列表
# 修改C语言项目关键词列表，更倾向于标准库项目
C_PROJECT_KEYWORDS = [
    "data structure", "algorithm implementation", "standard library", 
    "string manipulation", "sorting algorithm", "search algorithm",
    "linked list", "binary tree", "hash table", "queue implementation",
    "stack implementation", "math library", "utility functions"
]

# ---------------------- 初始化 ----------------------
if not os.path.exists(BASE_DIR):
    os.makedirs(BASE_DIR)

if not os.path.exists(TEMP_CLONE_DIR):
    os.makedirs(TEMP_CLONE_DIR)

# 用户代理列表，模拟不同浏览器
USER_AGENTS = [
    "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36",
    "Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:89.0) Gecko/20100101 Firefox/89.0",
    "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/14.1.1 Safari/605.1.15"
]

# ---------------------- 辅助函数 ----------------------
def get_random_user_agent():
    """获取随机用户代理"""
    return random.choice(USER_AGENTS)

def create_session():
    """创建一个持久会话"""
    session = requests.Session()
    session.headers.update({
        "User-Agent": get_random_user_agent(),
        "Accept": "text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,*/*;q=0.8",
        "Accept-Language": "en-US,en;q=0.5"
    })
    
    if GITHUB_TOKEN:
        session.headers.update({"Authorization": f"token {GITHUB_TOKEN}"})
    
    return session

def sanitize_filename(name):
    """清理文件名，移除非法字符"""
    return re.sub(r'[\\/*?:"<>|]', "_", name)

def search_github_repos(session, keyword, language="c", sort="stars", per_page=20):
    """搜索GitHub上的C语言仓库"""
    encoded_query = quote(f"{keyword} language:{language}")
    url = f"https://api.github.com/search/repositories?q={encoded_query}&sort={sort}&order=desc&per_page={per_page}"
    
    try:
        print(f"搜索关键词: {keyword}")
        response = session.get(url)
        
        # 检查API限制
        if response.status_code == 403 and 'rate limit exceeded' in response.text.lower():
            print("GitHub API 速率限制已达到，请稍后再试")
            return []
        
        # 检查其他错误
        if response.status_code != 200:
            print(f"API请求失败，状态码: {response.status_code}")
            return []
        
        data = response.json()
        repos = data.get('items', [])
        
        # 过滤掉不是C语言的仓库
        c_repos = [repo for repo in repos if repo.get('language', '').lower() == 'c']
        
        print(f"找到 {len(c_repos)} 个C语言仓库 (关键词: {keyword})")
        return c_repos
    except Exception as e:
        print(f"搜索仓库时出错: {e}")
        return []

def is_valid_c_code(file_path):
    """验证是否为有效的C代码文件"""
    # 检查文件扩展名
    if not file_path.endswith('.c'):
        return False
    
    # 检查文件大小
    file_size = os.path.getsize(file_path)
    if file_size < 100 or file_size > 500000:  # 100B到500KB之间
        return False
    
    try:
        # 读取文件内容
        with open(file_path, 'r', encoding='utf-8', errors='ignore') as f:
            content = f.read()
            
        # 计算有效指令行数
        effective_lines = 0
        in_comment = False
        lines = content.split('\n')
        
        for line in lines:
            line = line.strip()
            
            # 跳过空行
            if not line:
                continue
                
            # 处理多行注释
            if '/*' in line and '*/' in line:
                # 单行内的注释
                line = re.sub(r'/\*.*?\*/', '', line)
            elif '/*' in line:
                in_comment = True
                line = line[:line.find('/*')].strip()
            elif '*/' in line and in_comment:
                in_comment = False
                line = line[line.find('*/') + 2:].strip()
                if not line:
                    continue
            elif in_comment:
                continue
                
            # 处理单行注释
            if '//' in line:
                line = line[:line.find('//')].strip()
                if not line:
                    continue
                
            # 跳过简单的数组定义行
            if re.match(r'^"[^"]*",?$', line) or re.match(r'^[{,]?\s*"[^"]*"[,}]?$', line):
                continue
                
            # 跳过简单的枚举定义行
            if re.match(r'^\s*[A-Z_][A-Z0-9_]*\s*[,=].*$', line):
                continue
                
            # 计算有效行
            effective_lines += 1
            
        # 要求至少100行有效代码
        if effective_lines < 100:
            return False
            
        # 读取文件前1000个字符进行检查
        # C代码特征
        c_features = [
            '#include', 'int ', 'char ', 'void ', 'return', 'malloc', 'free',
            'for(', 'for (', 'while(', 'while (', 'if(', 'if ('
        ]
        
        # 检查是否包含C代码特征
        has_features = any(feature in content for feature in c_features)
        
        return has_features
    except Exception as e:
        print(f"  >> 分析文件时出错: {e}")
        return False

def is_interesting_c_file(file_path):
    """判断C文件是否有研究价值"""
    # 排除测试文件和示例文件
    if re.search(r'(test|example|sample|demo)\.(c|h)$', file_path.lower()):
        return False
    
    try:
        # 读取文件内容
        with open(file_path, 'r', encoding='utf-8', errors='ignore') as f:
            content = f.read()
        
        # 检查是否包含有趣的特性
        interesting_features = [
            # 内存管理
            'malloc', 'free', 'calloc', 'realloc',
            # 指针操作
            'void *', 'char *', 'int *', '->',
            # 结构体和联合体
            'struct', 'union', 'typedef',
            # 文件操作
            'fopen', 'fclose', 'fread', 'fwrite',
            # 系统调用
            'syscall', 'ioctl', 'mmap',
            # 并发
            'pthread', 'mutex', 'semaphore',
            # 网络
            'socket', 'bind', 'listen', 'accept',
            # 算法和数据结构
            'sort', 'search', 'tree', 'list', 'queue', 'stack'
        ]
        
        # 新增: 检查特定C语言结构
        c_structures = {
            'array': r'\[\s*\d*\s*\]',  # 数组声明，如 int a[10]
            'comment': r'/\*[\s\S]*?\*/|//.*',  # 注释，包括多行和单行
            'conditional': r'if\s*\(|else|switch|case|\?.*:',  # 条件判断和三目运算 - 修复了这里的问题
            'struct': r'struct\s+\w+',  # 结构体定义
            'float': r'\bfloat\b',  # float类型
            'int': r'\bint\b',  # int类型
            'loop': r'for\s*\(|while\s*\(|do\s*{',  # 循环结构
            'malloc': r'malloc\s*\(',  # 内存分配
            'pointer': r'\*\s*\w+|void\s*\*|\w+\s*\*',  # 指针声明
            'static': r'\bstatic\b',  # static关键字
            'double': r'\bdouble\b',  # double类型
            'union': r'\bunion\b'  # union关键字
        }
        
        # 计算文件中包含的C结构数量
        structure_count = 0
        structure_found = {}
        for structure, pattern in c_structures.items():
            try:
                if re.search(pattern, content):
                    structure_count += 1
                    structure_found[structure] = True
            except re.error as e:
                print(f"  >> 正则表达式错误 ({structure}): {e}")
                continue
        
        # 要求至少包含3种指定的C语言结构
        MIN_STRUCTURES = 3
        has_enough_structures = structure_count >= MIN_STRUCTURES
        
        if has_enough_structures:
            print(f"  >> 找到的C结构: {', '.join(structure_found.keys())}")
        
        # 同时满足原有特性检查和新增的结构检查
        return any(feature in content for feature in interesting_features) and has_enough_structures
    except Exception as e:
        print(f"  >> 分析文件时出错: {e}")
        return False

def clone_repo(repo_url, repo_name):
    """克隆GitHub仓库"""
    clone_path = os.path.join(TEMP_CLONE_DIR, repo_name)
    
    # 如果目录已存在，先删除
    if os.path.exists(clone_path):
        shutil.rmtree(clone_path)
    
    try:
        print(f"克隆仓库: {repo_url}")
        # 使用--depth=1只克隆最新的提交，节省时间和空间
        subprocess.run(["git", "clone", "--depth=1", repo_url, clone_path], 
                      check=True, stdout=subprocess.PIPE, stderr=subprocess.PIPE)
        return clone_path
    except subprocess.CalledProcessError as e:
        print(f"克隆仓库失败: {e}")
        return None
    except Exception as e:
        print(f"克隆仓库时出错: {e}")
        return None

def is_standard_library_only(file_path):
    """检查C文件是否只依赖标准库"""
    # C99标准库头文件列表
    standard_headers = [
        'stdio.h', 'stdlib.h', 'string.h', 'math.h', 'ctype.h', 
        'time.h', 'assert.h', 'limits.h', 'float.h', 'stddef.h',
        'signal.h', 'setjmp.h', 'stdarg.h', 'locale.h', 'errno.h',
        'stdbool.h', 'complex.h', 'inttypes.h', 'stdalign.h', 'stdint.h',
        'stdnoreturn.h', 'uchar.h', 'iso646.h', 'wchar.h', 'wctype.h'
    ]
    
    try:
        with open(file_path, 'r', encoding='utf-8', errors='ignore') as f:
            content = f.read()
        
        # 提取所有#include语句
        includes = re.findall(r'#include\s+[<"]([^>"]+)[>"]', content)
        
        # 检查是否只包含标准库头文件
        for include in includes:
            if include not in standard_headers:
                return False
        
        return True
    except:
        return False

def find_c_files(directory, max_files=10):
    """在目录中查找C文件"""
    c_files = []
    
    # 排除的目录
    exclude_dirs = ['test', 'tests', 'example', 'examples', 'doc', 'docs', '.git']
    
    for root, dirs, files in os.walk(directory):
        # 跳过排除的目录
        dirs[:] = [d for d in dirs if d.lower() not in exclude_dirs]
        
        for file in files:
            if len(c_files) >= max_files:
                break
                
            if file.endswith('.c'):
                file_path = os.path.join(root, file)
                
                # 检查文件是否有效、有研究价值，并且只依赖标准库
                if (is_valid_c_code(file_path) and 
                    is_interesting_c_file(file_path) and
                    is_standard_library_only(file_path)):
                    c_files.append(file_path)
        
        if len(c_files) >= max_files:
            break
    
    return c_files

def copy_c_files(c_files, repo_name, output_dir):
    """复制C文件到输出目录"""
    repo_dir = os.path.join(output_dir, sanitize_filename(repo_name))
    os.makedirs(repo_dir, exist_ok=True)
    
    copied_count = 0
    for file_path in c_files:
        # 获取相对路径
        clone_dir = os.path.join(TEMP_CLONE_DIR, repo_name)
        rel_path = os.path.relpath(file_path, clone_dir)
        
        # 创建目标目录
        target_dir = os.path.dirname(os.path.join(repo_dir, rel_path))
        os.makedirs(target_dir, exist_ok=True)
        
        # 复制文件
        target_path = os.path.join(repo_dir, rel_path)
        shutil.copy2(file_path, target_path)
        
        copied_count += 1
        print(f"  >> 已保存: {rel_path}")
    
    return copied_count

def save_repo_info(repo, output_dir):
    """保存仓库信息"""
    repo_name = repo['name']
    repo_dir = os.path.join(output_dir, sanitize_filename(repo_name))
    os.makedirs(repo_dir, exist_ok=True)
    
    with open(os.path.join(repo_dir, "repo_info.json"), "w", encoding="utf-8") as f:
        json.dump({
            'name': repo['name'],
            'full_name': repo['full_name'],
            'description': repo['description'],
            'url': repo['html_url'],
            'stars': repo['stargazers_count'],
            'forks': repo['forks_count'],
            'created_at': repo['created_at'],
            'updated_at': repo['updated_at']
        }, f, indent=2)

# ---------------------- 主流程 ----------------------
def main():
    print(f"开始从GitHub爬取C语言项目代码，保存到 {BASE_DIR}")
    
    # 创建会话
    session = create_session()
    
    # 随机选择关键词
    random.shuffle(C_PROJECT_KEYWORDS)
    selected_keywords = C_PROJECT_KEYWORDS[:min(8, len(C_PROJECT_KEYWORDS))]  # 增加关键词数量从5到8
    
    all_repos = []
    for keyword in selected_keywords:
        repos = search_github_repos(session, keyword)
        all_repos.extend(repos)
        
        if len(all_repos) >= MAX_REPOS:
            all_repos = all_repos[:MAX_REPOS]
            break
            
        # 避免请求过于频繁
        time.sleep(random.uniform(1.0, 2.0))
    
    if not all_repos:
        print("未找到合适的GitHub仓库，退出程序")
        return
    
    # 按星数排序
    all_repos.sort(key=lambda x: x['stargazers_count'], reverse=True)
    all_repos = all_repos[:MAX_REPOS]
    
    print(f"找到 {len(all_repos)} 个C语言仓库")
    
    total_files = 0
    for idx, repo in enumerate(all_repos, 1):
        repo_name = repo['name']
        repo_url = repo['html_url']
        stars = repo['stargazers_count']
        
        print(f"\n[{idx}/{len(all_repos)}] 处理仓库: {repo_name} (Stars: {stars})")
        print(f"  >> URL: {repo_url}")
        
        # 克隆仓库
        clone_path = clone_repo(repo_url, repo_name)
        if not clone_path:
            print(f"  >> 跳过仓库: {repo_name}")
            continue
        
        # 查找C文件
        c_files = find_c_files(clone_path, MAX_FILES_PER_REPO)
        
        # 保存仓库信息
        save_repo_info(repo, BASE_DIR)
        
        # 复制C文件
        copied = copy_c_files(c_files, repo_name, BASE_DIR)
        total_files += copied
        
        print(f"  >> 已下载 {copied} 个C文件")
        
        # 清理克隆的仓库
        shutil.rmtree(clone_path, ignore_errors=True)
        
        # 随机化请求间隔，避免被检测为爬虫
        sleep_time = random.uniform(REQUEST_INTERVAL, REQUEST_INTERVAL * 1.5)
        print(f"  >> 等待 {sleep_time:.2f} 秒...")
        time.sleep(sleep_time)
    
    # 清理临时目录
    shutil.rmtree(TEMP_CLONE_DIR, ignore_errors=True)
    
    print(f"\n爬取完成！共下载 {total_files} 个C文件，来自 {len(all_repos)} 个仓库")

if __name__ == "__main__":
    main()