import os
import re
import subprocess
import json
import networkx as nx
import matplotlib.pyplot as plt
import numpy as np
from collections import defaultdict, Counter

class LLVMAnalyzer:
    def __init__(self, c_llvm_dir, rust_llvm_dir, output_dir):
        self.c_llvm_dir = c_llvm_dir
        self.rust_llvm_dir = rust_llvm_dir
        self.output_dir = output_dir
        self.results = {}
        
        # 确保输出目录存在
        if not os.path.exists(output_dir):
            os.makedirs(output_dir)
    
    def analyze_all_programs(self):
        """分析所有程序对"""
        program_pairs = self._find_program_pairs()
        
        for program_id in program_pairs:
            c_file = program_pairs[program_id]['c']
            rust_file = program_pairs[program_id]['rust']
            
            print(f"分析程序 {program_id}...")
            self.results[program_id] = self._analyze_program_pair(program_id, c_file, rust_file)
        
        # 保存结果
        self._save_results()
        self._generate_reports()
    
    def _find_program_pairs(self):
        """查找对应的C和Rust LLVM IR文件对"""
        program_pairs = {}
        
        # 查找C LLVM文件
        for root, _, files in os.walk(self.c_llvm_dir):
            for file in files:
                if file.endswith('.ll'):
                    # 使用文件名作为程序ID，不再依赖program_XX格式
                    program_id = os.path.splitext(file)[0]
                    if program_id not in program_pairs:
                        program_pairs[program_id] = {}
                    program_pairs[program_id]['c'] = os.path.join(root, file)
        
        # 查找Rust LLVM文件
        for root, _, files in os.walk(self.rust_llvm_dir):
            for file in files:
                if file.endswith('.ll'):
                    # 使用文件名作为程序ID，不再依赖program_XX格式
                    program_id = os.path.splitext(file)[0]
                    if program_id not in program_pairs:
                        program_pairs[program_id] = {}
                    program_pairs[program_id]['rust'] = os.path.join(root, file)
        
        # 只保留同时有C和Rust版本的程序
        return {k: v for k, v in program_pairs.items() if 'c' in v and 'rust' in v}
    
    def _analyze_program_pair(self, program_id, c_file, rust_file):
        """分析单个程序对"""
        result = {
            'static_analysis': self._perform_static_analysis(c_file, rust_file),
            'dynamic_analysis': self._perform_dynamic_analysis(program_id),
            'c_file': c_file,  # 保存原始LLVM文件路径
            'rust_file': rust_file  # 保存原始LLVM文件路径
        }
        return result
    
    def _perform_static_analysis(self, c_file, rust_file):
        """执行静态分析"""
        c_stats = self._analyze_llvm_file(c_file)
        rust_stats = self._analyze_llvm_file(rust_file)
        
        # 计算比率和差异
        comparison = {}
        for key in c_stats:
            if isinstance(c_stats[key], (int, float)) and c_stats[key] > 0:
                comparison[f"{key}_ratio"] = rust_stats.get(key, 0) / c_stats[key]
                # 只对数值类型计算差异
                comparison[f"{key}_diff"] = rust_stats.get(key, 0) - c_stats[key]
            elif key == 'call_graph' or not isinstance(c_stats[key], (int, float)):
                # 跳过非数值类型的统计数据
                continue
            else:
                # 处理数值为0的情况
                comparison[f"{key}_ratio"] = 0 if rust_stats.get(key, 0) == 0 else float('inf')
                comparison[f"{key}_diff"] = rust_stats.get(key, 0) - c_stats[key]
        
        return {
            'c': c_stats,
            'rust': rust_stats,
            'comparison': comparison
        }
    
    def _perform_dynamic_analysis(self, program_id):
        """执行动态分析（需要实际运行程序）"""
        # 这部分需要编译并运行程序，可能需要额外的工作
        # 此处仅返回占位符
        return {
            'placeholder': 'Dynamic analysis results would go here',
            'program_id': program_id
        }
    
    def _save_results(self):
        """保存分析结果到JSON文件"""
        result_file = os.path.join(self.output_dir, 'analysis_results.json')
        with open(result_file, 'w') as f:
            json.dump(self.results, f, indent=2)
        print(f"分析结果已保存到 {result_file}")
    
    def _generate_reports(self):
        """生成可视化报告"""
        # 为每个程序生成报告
        for program_id, result in self.results.items():
            # 修复输出目录路径，避免重复的program_前缀
            report_dir = os.path.join(self.output_dir, program_id)
            os.makedirs(report_dir, exist_ok=True)
            
            # 生成调用图
            self._generate_call_graph_visualization(result, report_dir)
            
            # 生成指令分布图
            self._generate_instruction_distribution_chart(result, report_dir)
        
        # 生成总体摘要报告
        self._generate_summary_report()
    
    def _generate_instruction_distribution_chart(self, result, report_dir):
        """生成指令分布图"""
        c_stats = result['static_analysis']['c']
        rust_stats = result['static_analysis']['rust']
        
        instruction_types = [
            'alloca', 'load', 'store', 'getelementptr', 'call', 'ret',
            'br', 'switch', 'phi', 'select', 'icmp', 'fcmp',
            'add', 'sub', 'mul', 'div'
        ]
        
        c_values = [c_stats.get(f'{instr}_count', 0) for instr in instruction_types]
        rust_values = [rust_stats.get(f'{instr}_count', 0) for instr in instruction_types]
        
        x = np.arange(len(instruction_types))
        width = 0.35
        
        fig, ax = plt.subplots(figsize=(12, 8))
        ax.bar(x - width/2, c_values, width, label='C')
        ax.bar(x + width/2, rust_values, width, label='Rust')
        
        ax.set_ylabel('Count')
        ax.set_title('Instruction Distribution')
        ax.set_xticks(x)
        ax.set_xticklabels(instruction_types, rotation=45)
        ax.legend()
        
        plt.tight_layout()
        plt.savefig(os.path.join(report_dir, 'instruction_distribution.png'))
        plt.close()
    
    def _generate_summary_report(self):
        """生成总体摘要报告"""
        summary = {
            'program_count': len(self.results),
            'averages': {
                'instruction_ratio': [],
                'function_ratio': [],
                'memory_ops_ratio': [],
                'branch_ratio': []
            }
        }
        
        for program_id, result in self.results.items():
            static = result['static_analysis']
            comparison = static['comparison']
            
            summary['averages']['instruction_ratio'].append(comparison.get('instruction_count_ratio', 1))
            summary['averages']['function_ratio'].append(comparison.get('function_count_ratio', 1))
            summary['averages']['memory_ops_ratio'].append(comparison.get('memory_ops_ratio', 1))
            summary['averages']['branch_ratio'].append(comparison.get('branch_count_ratio', 1))
        
        # 计算平均值
        for key in summary['averages']:
            values = summary['averages'][key]
            if values:
                summary['averages'][key] = sum(values) / len(values)
        
        # 保存摘要
        summary_file = os.path.join(self.output_dir, 'summary.json')
        with open(summary_file, 'w') as f:
            json.dump(summary, f, indent=2)
        
        # 生成图表
        self._generate_summary_charts(summary)
    
    def _generate_summary_charts(self, summary):
        """生成摘要图表"""
        metrics = list(summary['averages'].keys())
        values = [summary['averages'][m] for m in metrics]
        
        # 检查是否有有效数据
        if not values or all(not isinstance(v, (int, float)) for v in values):
            print("警告：没有足够的数据生成图表")
            return
        
        plt.figure(figsize=(10, 6))
        plt.bar(metrics, values)
        plt.axhline(y=1, color='r', linestyle='-')
        plt.ylabel('Rust/C Ratio')
        plt.title('Average Metrics Comparison (Rust/C)')
        plt.savefig(os.path.join(self.output_dir, 'summary_metrics.png'))
        plt.close()
    
    def _analyze_llvm_file(self, llvm_file):
        """分析单个LLVM IR文件"""
        with open(llvm_file, 'r', encoding='utf-8', errors='ignore') as f:
            content = f.read()
        
        stats = {}
        
        # 基本统计
        stats['total_lines'] = len(content.splitlines())
        stats['instruction_count'] = len(re.findall(r'^\s+%[\w\d\.]+\s+=', content, re.MULTILINE))
        stats['function_count'] = len(re.findall(r'define\s+.*\s+@[\w\d\.]+\(', content))
        stats['basic_block_count'] = len(re.findall(r'^[\w\d\.]+:', content, re.MULTILINE))
        
        # 指令类型统计
        instruction_types = [
            'alloca', 'load', 'store', 'getelementptr', 'call', 'ret',
            'br', 'switch', 'phi', 'select', 'icmp', 'fcmp',
            'add', 'sub', 'mul', 'div', 'and', 'or', 'xor'
        ]
        
        for instr in instruction_types:
            stats[f'{instr}_count'] = len(re.findall(rf'\s+{instr}\s+', content))
        
        # 控制流分析
        stats['branch_count'] = stats['br_count'] + stats['switch_count']
        stats['conditional_branch_count'] = len(re.findall(r'\s+br\s+i1\s+', content))
        
        # 内存操作分析
        stats['memory_ops'] = stats['load_count'] + stats['store_count'] + stats['alloca_count']
        
        # 函数调用分析
        stats['direct_call_count'] = len(re.findall(r'\s+call\s+.*@[\w\d\.]+\(', content))
        stats['indirect_call_count'] = stats['call_count'] - stats['direct_call_count']
        
        # 构建函数调用图
        stats['call_graph'] = self._build_call_graph(content)
        
        return stats
    
    def _build_call_graph(self, content):
        """构建函数调用图"""
        # 提取所有函数定义 - 使用更精确的正则表达式
        functions = re.findall(r'define\s+[^@]*\s+@([\w\d\.]+)\(', content)
        functions = list(set(functions))  # 去重
        
        # 创建函数名到行号的映射，用于更准确地确定调用者
        function_line_map = {}
        current_function = None
        for i, line in enumerate(content.splitlines()):
            func_def = re.search(r'define\s+[^@]*\s+@([\w\d\.]+)\(', line)
            if func_def:
                current_function = func_def.group(1)
                function_line_map[i] = current_function
            elif line.strip() == '}' and current_function:
                current_function = None
        
        # 提取函数调用
        calls = []
        caller = None
        for i, line in enumerate(content.splitlines()):
            # 确定当前行所属的函数
            if i in function_line_map:
                caller = function_line_map[i]
            
            # 如果当前行不在任何函数内，尝试通过向前查找确定所属函数
            if caller is None:
                for j in sorted(function_line_map.keys(), reverse=True):
                    if j < i:
                        caller = function_line_map[j]
                        break
            
            # 提取调用
            if 'call' in line and caller:
                callee_match = re.search(r'\s+call\s+[^@]*@([\w\d\.]+)\(', line)
                if callee_match:
                    callee = callee_match.group(1)
                    if callee in functions:  # 只添加调用内部函数的边
                        calls.append((caller, callee))
        
        # 计算每个函数的调用次数和被调用次数
        call_counts = defaultdict(int)
        called_counts = defaultdict(int)
        for caller, callee in calls:
            call_counts[caller] += 1
            called_counts[callee] += 1
        
        return {
            'functions': functions,
            'calls': calls,
            'complexity': len(calls) / max(len(functions), 1),  # 调用复杂度
            'call_counts': dict(call_counts),  # 每个函数调用其他函数的次数
            'called_counts': dict(called_counts),  # 每个函数被调用的次数
            'leaf_functions': [f for f in functions if f not in call_counts],  # 叶子函数（不调用其他函数）
            'root_functions': [f for f in functions if f not in called_counts]  # 根函数（不被其他函数调用）
        }
    
    def _generate_call_graph_visualization(self, result, report_dir):
        """生成调用图可视化"""
        c_file = result.get('c_file', '')
        rust_file = result.get('rust_file', '')
        
        # 使用LLVM工具生成C调用图
        if c_file and os.path.exists(c_file):
            c_dot_file = os.path.join(report_dir, 'c_callgraph.dot')
            c_png_file = os.path.join(report_dir, 'c_call_graph.png')
            self._generate_llvm_callgraph(c_file, c_dot_file, c_png_file, 'C Code Call Graph')
        else:
            # 如果没有原始文件路径，使用我们自己的方法
            c_call_graph = result['static_analysis']['c']['call_graph']
            self._generate_single_call_graph(
                c_call_graph,
                os.path.join(report_dir, 'c_call_graph.png'),
                'C Code Call Graph',
                'lightblue'
            )
            
            # 生成简化版调用图
            self._generate_simplified_call_graph(
                c_call_graph,
                os.path.join(report_dir, 'c_call_graph_simplified.png'),
                'C Code Call Graph (Simplified)',
                'lightblue'
            )
        
        # 使用LLVM工具生成Rust调用图
        if rust_file and os.path.exists(rust_file):
            rust_dot_file = os.path.join(report_dir, 'rust_callgraph.dot')
            rust_png_file = os.path.join(report_dir, 'rust_call_graph.png')
            self._generate_llvm_callgraph(rust_file, rust_dot_file, rust_png_file, 'Rust Code Call Graph')
        else:
            # 如果没有原始文件路径，使用我们自己的方法
            rust_call_graph = result['static_analysis']['rust']['call_graph']
            self._generate_single_call_graph(
                rust_call_graph,
                os.path.join(report_dir, 'rust_call_graph.png'),
                'Rust Code Call Graph',
                'lightgreen'
            )
            
            # 生成简化版调用图
            self._generate_simplified_call_graph(
                rust_call_graph,
                os.path.join(report_dir, 'rust_call_graph_simplified.png'),
                'Rust Code Call Graph (Simplified)',
                'lightgreen'
            )
        
        # 使用我们自己的方法生成比较报告
        c_call_graph = result['static_analysis']['c']['call_graph']
        rust_call_graph = result['static_analysis']['rust']['call_graph']
        self._generate_call_graph_comparison(c_call_graph, rust_call_graph, report_dir)
    
    def _generate_llvm_callgraph(self, llvm_file, dot_file, png_file, title):
        """使用LLVM工具生成调用图"""
        try:
            # 使用新的传递管理器语法
            opt_cmd = f"opt-20 -passes=dot-callgraph {llvm_file} -disable-output"
            subprocess.run(opt_cmd, shell=True, check=True)
            
            # LLVM 20生成的dot文件可能在LLVM文件所在目录，检查多个可能的位置
            # 1. 检查当前目录
            dot_files = [f for f in os.listdir('.') if f.endswith('.dot') and 'callgraph' in f]
            
            # 2. 检查LLVM文件所在目录
            llvm_dir = os.path.dirname(llvm_file)
            expected_dot = f"{os.path.basename(llvm_file)}.callgraph.dot"
            expected_dot_path = os.path.join(llvm_dir, expected_dot)
            
            if os.path.exists(expected_dot_path):
                print(f"找到生成的dot文件: {expected_dot_path}")
                
                # 读取原始dot文件内容
                with open(expected_dot_path, 'r') as f:
                    dot_content = f.read()
                
                # 修改标题
                dot_content = dot_content.replace("Call graph", title)
                
                # 写入新的dot文件
                with open(dot_file, 'w') as f:
                    f.write(dot_content)
                
                # 删除原始dot文件
                os.remove(expected_dot_path)
                
                # 使用dot生成png文件
                dot_cmd = f"dot -Tpng {dot_file} -o {png_file}"
                subprocess.run(dot_cmd, shell=True, check=True)
                
                print(f"成功生成调用图: {png_file}")
                return
            elif dot_files:
                # 使用找到的第一个dot文件
                generated_dot = dot_files[0]
                print(f"找到生成的dot文件: {generated_dot}")
                
                # 读取原始dot文件内容
                with open(generated_dot, 'r') as f:
                    dot_content = f.read()
                
                # 修改标题
                dot_content = dot_content.replace("Call graph", title)
                
                # 写入新的dot文件
                with open(dot_file, 'w') as f:
                    f.write(dot_content)
                
                # 删除原始dot文件
                os.remove(generated_dot)
                
                # 使用dot生成png文件
                dot_cmd = f"dot -Tpng {dot_file} -o {png_file}"
                subprocess.run(dot_cmd, shell=True, check=True)
                
                print(f"成功生成调用图: {png_file}")
                return
            else:
                print(f"警告: opt未能生成callgraph.dot文件")
            
            # 如果没有找到dot文件，使用自定义方法生成调用图
            program_id = os.path.basename(os.path.dirname(llvm_file))
            if "c_call_graph.png" in png_file:
                self._generate_single_call_graph(
                    self.results[program_id]['static_analysis']['c']['call_graph'],
                    png_file,
                    title,
                    'lightblue'
                )
            else:
                self._generate_single_call_graph(
                    self.results[program_id]['static_analysis']['rust']['call_graph'],
                    png_file,
                    title,
                    'lightgreen'
                )
            
        except subprocess.CalledProcessError as e:
            print(f"错误: 执行命令失败: {e}")
            print(f"使用自定义方法生成调用图")
            program_id = os.path.basename(os.path.dirname(llvm_file))
            if "c_call_graph.png" in png_file:
                self._generate_single_call_graph(
                    self.results[program_id]['static_analysis']['c']['call_graph'],
                    png_file,
                    title,
                    'lightblue'
                )
            else:
                self._generate_single_call_graph(
                    self.results[program_id]['static_analysis']['rust']['call_graph'],
                    png_file,
                    title,
                    'lightgreen'
                )
        except Exception as e:
            print(f"错误: 生成调用图时发生异常: {e}")
            print(f"使用自定义方法生成调用图")
            program_id = os.path.basename(os.path.dirname(llvm_file))
            if "c_call_graph.png" in png_file:
                self._generate_single_call_graph(
                    self.results[program_id]['static_analysis']['c']['call_graph'],
                    png_file,
                    title,
                    'lightblue'
                )
            else:
                self._generate_single_call_graph(
                    self.results[program_id]['static_analysis']['rust']['call_graph'],
                    png_file,
                    title,
                    'lightgreen'
                )
        
        # 生成简化版调用图（只显示重要节点）
        # self._generate_simplified_call_graph(
        #     c_call_graph,
        #     os.path.join(report_dir, 'c_call_graph_simplified.png'),
        #     'C Code Call Graph (Simplified)',
        #     'lightblue'
        # )
        # 
        # # 生成简化版调用图（只显示重要节点）
        # self._generate_simplified_call_graph(
        #     rust_call_graph,
        #     os.path.join(report_dir, 'rust_call_graph_simplified.png'),
        #     'Rust Code Call Graph (Simplified)',
        #     'lightgreen'
        # )
        # 
        # # 生成调用图比较报告
        # self._generate_call_graph_comparison(c_call_graph, rust_call_graph, report_dir)
    
    def _generate_single_call_graph(self, call_graph, output_path, title, node_color):
        """生成单个调用图"""
        G = nx.DiGraph()
        
        # 添加节点和边
        G.add_nodes_from(call_graph['functions'])
        G.add_edges_from(call_graph['calls'])
        
        # 计算节点大小（基于被调用次数）
        called_counts = call_graph.get('called_counts', {})
        node_sizes = [1000 + (called_counts.get(node, 0) * 200) for node in G.nodes()]
        
        # 使用更好的布局算法
        if len(G.nodes()) > 20:
            pos = nx.spring_layout(G, k=0.3, iterations=50)
        else:
            pos = nx.kamada_kawai_layout(G)
        
        plt.figure(figsize=(14, 10))
        
        # 绘制节点
        nx.draw_networkx_nodes(G, pos, node_color=node_color, 
                              node_size=node_sizes, alpha=0.8)
        
        # 绘制边
        nx.draw_networkx_edges(G, pos, edge_color='gray', arrows=True, 
                              arrowsize=15, width=1.5, alpha=0.7)
        
        # 绘制标签
        nx.draw_networkx_labels(G, pos, font_size=10, font_family='sans-serif')
        
        plt.title(title)
        plt.axis('off')
        plt.tight_layout()
        plt.savefig(output_path, dpi=300)
        plt.close()
    
    def _generate_simplified_call_graph(self, call_graph, output_path, title, node_color):
        """生成简化版调用图（只显示重要节点）"""
        # 计算重要性分数
        called_counts = call_graph.get('called_counts', {})
        call_counts = call_graph.get('call_counts', {})
        
        # 重要性 = 被调用次数 + 调用其他函数次数
        importance = {
            node: called_counts.get(node, 0) + call_counts.get(node, 0)
            for node in call_graph['functions']
        }
        
        # 选择重要节点（重要性排名前N或重要性大于阈值）
        threshold = 1  # 至少被调用一次或调用其他函数一次
        important_nodes = [node for node, score in importance.items() if score > threshold]
        
        # 如果重要节点太多，只保留前15个
        if len(important_nodes) > 15:
            important_nodes = sorted(importance.items(), key=lambda x: x[1], reverse=True)[:15]
            important_nodes = [node for node, _ in important_nodes]
        
        # 创建新图而不是子图
        G = nx.DiGraph()
        G.add_nodes_from(important_nodes)
        
        # 添加边
        for caller, callee in call_graph['calls']:
            if caller in important_nodes and callee in important_nodes:
                G.add_edge(caller, callee)
        
        # 如果图为空，添加一个提示节点
        if len(G.nodes()) == 0:
            G.add_node("No important functions found")
            node_sizes = [1000]
        else:
            # 计算节点大小
            node_sizes = [1000 + (called_counts.get(node, 0) * 300) for node in G.nodes()]
        
        # 使用更好的布局算法，添加错误处理以应对scipy缺失的情况
        try:
            if len(G.nodes()) > 1:  # 至少需要两个节点才能使用kamada_kawai_layout
                pos = nx.kamada_kawai_layout(G)
            else:
                pos = nx.spring_layout(G, k=0.3, iterations=50)
        except ImportError:
            # 如果scipy不可用，回退到不需要scipy的布局算法
            print(f"警告: scipy模块未安装，使用spring_layout作为备选")
            pos = nx.spring_layout(G, k=0.3, iterations=50)
        
        plt.figure(figsize=(12, 8))
        
        # 绘制节点
        nx.draw_networkx_nodes(G, pos, node_color=node_color, 
                              node_size=node_sizes, alpha=0.8)
        
        # 绘制边
        nx.draw_networkx_edges(G, pos, edge_color='gray', arrows=True, 
                              arrowsize=20, width=2, alpha=0.7)
        
        # 绘制标签
        nx.draw_networkx_labels(G, pos, font_size=12, font_family='sans-serif')
        
        plt.title(title)
        plt.axis('off')
        plt.tight_layout()
        plt.savefig(output_path, dpi=300)
        plt.close()
    
    def _generate_call_graph_comparison(self, c_call_graph, rust_call_graph, report_dir):
        """生成调用图比较报告"""
        comparison = {
            'function_count': {
                'c': len(c_call_graph['functions']),
                'rust': len(rust_call_graph['functions']),
                'ratio': len(rust_call_graph['functions']) / max(len(c_call_graph['functions']), 1)
            },
            'call_count': {
                'c': len(c_call_graph['calls']),
                'rust': len(rust_call_graph['calls']),
                'ratio': len(rust_call_graph['calls']) / max(len(c_call_graph['calls']), 1)
            },
            'complexity': {
                'c': c_call_graph['complexity'],
                'rust': rust_call_graph['complexity'],
                'ratio': rust_call_graph['complexity'] / max(c_call_graph['complexity'], 0.001)
            },
            'leaf_functions': {
                'c': len(c_call_graph.get('leaf_functions', [])),
                'rust': len(rust_call_graph.get('leaf_functions', [])),
                'ratio': len(rust_call_graph.get('leaf_functions', [])) / max(len(c_call_graph.get('leaf_functions', [])), 1)
            },
            'root_functions': {
                'c': len(c_call_graph.get('root_functions', [])),
                'rust': len(rust_call_graph.get('root_functions', [])),
                'ratio': len(rust_call_graph.get('root_functions', [])) / max(len(c_call_graph.get('root_functions', [])), 1)
            }
        }
        
        # 保存比较结果
        with open(os.path.join(report_dir, 'call_graph_comparison.json'), 'w') as f:
            json.dump(comparison, f, indent=2)
        
        # 生成比较图表
        metrics = list(comparison.keys())
        c_values = [comparison[m]['c'] for m in metrics]
        rust_values = [comparison[m]['rust'] for m in metrics]
        
        x = np.arange(len(metrics))
        width = 0.35
        
        fig, ax = plt.subplots(figsize=(12, 8))
        ax.bar(x - width/2, c_values, width, label='C')
        ax.bar(x + width/2, rust_values, width, label='Rust')
        
        ax.set_ylabel('Count')
        ax.set_title('Call Graph Metrics Comparison')
        ax.set_xticks(x)
        ax.set_xticklabels(metrics, rotation=45)
        ax.legend()
        
        plt.tight_layout()
        plt.savefig(os.path.join(report_dir, 'call_graph_comparison.png'))
        plt.close()
        
        # 生成比率图表
        ratio_values = [comparison[m]['ratio'] for m in metrics]
        
        plt.figure(figsize=(10, 6))
        plt.bar(metrics, ratio_values)
        plt.axhline(y=1, color='r', linestyle='-')
        plt.ylabel('Rust/C Ratio')
        plt.title('Call Graph Metrics Ratio (Rust/C)')
        plt.xticks(rotation=45)
        plt.tight_layout()
        plt.savefig(os.path.join(report_dir, 'call_graph_ratio.png'))
        plt.close()

def main():
    # 使用相对路径，适用于Ubuntu环境
    c_llvm_dir = "./c_code"
    rust_llvm_dir = "./rust_code"
    output_dir = "./analysis_results"
    
    # 确保目录存在
    for dir_path in [c_llvm_dir, rust_llvm_dir, output_dir]:
        if not os.path.exists(dir_path):
            os.makedirs(dir_path)
    
    analyzer = LLVMAnalyzer(c_llvm_dir, rust_llvm_dir, output_dir)
    analyzer.analyze_all_programs()
    
    print(f"分析完成，结果保存在 {output_dir}")

if __name__ == "__main__":
    main()