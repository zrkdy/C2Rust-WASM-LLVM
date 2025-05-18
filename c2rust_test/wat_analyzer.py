import os
import subprocess
import json
import re
import matplotlib.pyplot as plt
import numpy as np
from pathlib import Path
from collections import defaultdict

class WATPassAnalyzer:
    def __init__(self, c_wat_dir, rust_wat_dir, output_dir):
        self.c_wat_dir = c_wat_dir
        self.rust_wat_dir = rust_wat_dir
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
        
        # 生成总体摘要报告
        self._generate_summary_report()
    
    def _find_program_pairs(self):
        """查找对应的C和Rust WAT文件对"""
        program_pairs = {}
        
        # 查找C WAT文件
        for root, _, files in os.walk(self.c_wat_dir):
            for file in files:
                if file.endswith('.wat'):
                    # 使用文件名作为程序ID
                    program_id = os.path.splitext(file)[0]
                    if program_id not in program_pairs:
                        program_pairs[program_id] = {}
                    program_pairs[program_id]['c'] = os.path.join(root, file)
        
        # 查找Rust WAT文件
        for root, _, files in os.walk(self.rust_wat_dir):
            for file in files:
                if file.endswith('.wat'):
                    # 使用文件名作为程序ID
                    program_id = os.path.splitext(file)[0]
                    if program_id not in program_pairs:
                        program_pairs[program_id] = {}
                    program_pairs[program_id]['rust'] = os.path.join(root, file)
        
        # 只保留同时有C和Rust版本的程序
        return {k: v for k, v in program_pairs.items() if 'c' in v and 'rust' in v}
    
    def _analyze_program_pair(self, program_id, c_file, rust_file):
        """分析单个程序对"""
        # 创建程序报告目录
        report_dir = os.path.join(self.output_dir, program_id)
        if not os.path.exists(report_dir):
            os.makedirs(report_dir)
        
        # 分析 C 代码生成的 WAT
        c_json_file = os.path.join(report_dir, "c_analysis.json")
        c_stats = self._analyze_wat_file(c_file)
        with open(c_json_file, 'w') as f:
            json.dump({"static_analysis": c_stats}, f, indent=2)
        
        # 分析 Rust 代码生成的 WAT
        rust_json_file = os.path.join(report_dir, "rust_analysis.json")
        rust_stats = self._analyze_wat_file(rust_file)
        with open(rust_json_file, 'w') as f:
            json.dump({"static_analysis": rust_stats}, f, indent=2)
        
        # 生成比较分析图表
        self._generate_comparison_charts(c_stats, rust_stats, report_dir)
        
        return {
            'c_file': c_file,
            'rust_file': rust_file,
            'c_json': c_json_file,
            'rust_json': rust_json_file,
            'report_dir': report_dir
        }
    
    def _analyze_wat_file(self, wat_file):
        """分析WAT文件并返回统计信息"""
        try:
            print(f"分析WAT文件: {wat_file}")
            
            # 读取WAT文件内容
            with open(wat_file, 'r', encoding='utf-8', errors='ignore') as f:
                content = f.read()
            
            # 统计信息
            stats = {
                "function_count": 0,
                "basic_block_count": 0,
                "instruction_count": 0,
                "memory_ops": 0,
                "branch_count": 0
            }
            
            # 指令类型计数
            instruction_counts = defaultdict(int)
            
            # 函数列表和调用关系
            functions = []
            calls = []
            
            # 解析函数
            func_pattern = r'\(func\s+(\$[^\s\)]+|)\s*'
            func_matches = re.finditer(func_pattern, content)
            
            for match in func_matches:
                func_name = match.group(1) if match.group(1) else f"func_{stats['function_count']}"
                stats["function_count"] += 1
                functions.append(func_name)
                
                # 查找函数体 - 改进的函数体提取
                start_pos = match.end()
                # 找到匹配的右括号
                depth = 1
                end_pos = start_pos
                for i in range(start_pos, len(content)):
                    if content[i] == '(':
                        depth += 1
                    elif content[i] == ')':
                        depth -= 1
                        if depth == 0:
                            end_pos = i
                            break
                
                func_body = content[start_pos:end_pos]
                
                # 计算基本块数量 (简化版，以br和br_if指令为分界)
                blocks = len(re.findall(r'\bblock\b', func_body))
                loops = len(re.findall(r'\bloop\b', func_body))
                ifs = len(re.findall(r'\bif\b', func_body))
                stats["basic_block_count"] += max(1, blocks + loops + ifs)
                
                # 改进的指令识别 - 更全面的模式
                # 1. 带类型前缀的指令 (i32.add, f64.mul 等)
                typed_instructions = re.findall(r'\b(i32|i64|f32|f64|v128|memory|local|global)\.([\w_\.]+)', func_body)
                
                # 2. 不带类型前缀的指令 (call, br, br_if 等)
                standalone_pattern = r'\b(call|return|block|loop|if|else|end|br|br_if|br_table|drop|select|unreachable|nop|memory\.size|memory\.grow)\b'
                standalone_instructions = re.findall(standalone_pattern, func_body)
                
                # 3. 特殊格式的指令 (如 i32.const 123)
                const_instructions = re.findall(r'\b(i32|i64|f32|f64)\.const\s+[^\s\)]+', func_body)
                
                # 计算总指令数
                total_instructions = len(typed_instructions) + len(standalone_instructions) + len(const_instructions)
                stats["instruction_count"] += total_instructions
                
                # 统计各类指令
                for type_prefix, instr_type in typed_instructions:
                    # 提取指令基本名称 (例如从 i32.add 提取 add)
                    base_instr = instr_type.split('.')[-1]  # 处理可能的多级点号
                    instruction_counts[base_instr] += 1
                    
                    # 内存操作
                    if base_instr in ['load', 'store', 'size', 'grow']:
                        stats["memory_ops"] += 1
                
                # 统计独立指令
                for instr in standalone_instructions:
                    # 处理特殊情况如 memory.size
                    if '.' in instr:
                        base_instr = instr.split('.')[-1]
                        instruction_counts[base_instr] += 1
                        
                        # 内存操作
                        if base_instr in ['size', 'grow']:
                            stats["memory_ops"] += 1
                    else:
                        instruction_counts[instr] += 1
                    
                    # 分支操作 - 修复：将这段代码移到循环内部
                    if instr in ['br', 'br_if', 'br_table', 'if', 'else']:
                        stats["branch_count"] += 1
                
                # 统计常量指令
                for const_instr in const_instructions:
                    instruction_counts['const'] += 1
                
                # 查找调用指令 - 改进调用指令识别
                call_matches = re.finditer(r'call\s+(\$[^\s\)]+|\d+)', func_body)
                for call_match in call_matches:
                    callee = call_match.group(1)
                    calls.append({"caller": func_name, "callee": callee})
            
            # 将指令计数添加到统计信息
            # 扩展指令类型列表，包含更多WebAssembly指令
            instruction_types = [
                # 内存操作
                'load', 'store', 'size', 'grow',
                # 局部变量操作
                'get', 'set', 'tee',
                # 控制流
                'call', 'call_indirect', 'return', 'br', 'br_if', 'br_table', 
                'if', 'else', 'loop', 'block', 'end',
                # 栈操作
                'drop', 'select', 'const',
                # 比较操作
                'eq', 'ne', 'lt', 'gt', 'le', 'ge', 'eqz',
                # 算术操作
                'add', 'sub', 'mul', 'div', 'rem', 'and', 'or', 'xor', 'shl', 'shr',
                'rotl', 'rotr', 'clz', 'ctz', 'popcnt',
                # 转换操作
                'wrap', 'extend', 'trunc', 'convert', 'demote', 'promote', 'reinterpret'
            ]
            
            for instr in instruction_types:
                stats[f"{instr}_count"] = instruction_counts[instr]
            
            # 添加调用图信息
            call_graph = {
                "functions": functions,
                "calls": calls
            }
            stats["call_graph"] = call_graph
            
            return stats
            
        except Exception as e:
            print(f"分析WAT文件失败: {e}")
            import traceback
            traceback.print_exc()
            return {"error": str(e)}

    # 以下方法需要移动到类内部并正确缩进
    def _generate_comparison_charts(self, c_stats, rust_stats, report_dir):
        """生成比较分析图表"""
        try:
            # 检查是否有错误
            if 'error' in c_stats or 'error' in rust_stats:
                print(f"警告: 无法生成比较图表，数据包含错误")
                return
            
            # 生成指令分布图
            self._generate_instruction_distribution_chart(c_stats, rust_stats, report_dir)
            
            # 生成内存操作和控制流比较图
            self._generate_memory_branch_comparison(c_stats, rust_stats, report_dir)
            
            # 生成函数调用图比较
            self._generate_call_graph_stats(c_stats, rust_stats, report_dir)
            
        except Exception as e:
            print(f"生成比较图表时出错: {e}")
            import traceback
            traceback.print_exc()

    def _generate_instruction_distribution_chart(self, c_stats, rust_stats, report_dir):
        """生成指令分布图"""
        # 扩展指令类型列表，包含更多常见的WebAssembly指令
        instruction_types = [
            # 内存操作
            'load', 'store', 
            # 局部变量操作
            'get', 'set', 'tee',
            # 控制流
            'call', 'return', 'br', 'br_if', 'if', 'else', 'loop', 'block',
            # 栈操作
            'drop', 'select',
            # 比较操作
            'eq', 'ne', 'lt', 'gt', 'le', 'ge', 'eqz',
            # 算术操作
            'add', 'sub', 'mul', 'div'
        ]
        
        # 过滤掉两个统计中都为0的指令类型
        filtered_types = []
        for instr in instruction_types:
            c_count = c_stats.get(f'{instr}_count', 0)
            rust_count = rust_stats.get(f'{instr}_count', 0)
            if c_count > 0 or rust_count > 0:
                filtered_types.append(instr)
        
        # 如果没有有效指令，添加一个默认指令避免图表生成错误
        if not filtered_types:
            filtered_types = ['instruction']
            c_stats['instruction_count'] = c_stats.get('instruction_count', 0)
            rust_stats['instruction_count'] = rust_stats.get('instruction_count', 0)
        
        c_values = [c_stats.get(f'{instr}_count', 0) for instr in filtered_types]
        rust_values = [rust_stats.get(f'{instr}_count', 0) for instr in filtered_types]
        
        x = np.arange(len(filtered_types))
        width = 0.35
        
        fig, ax = plt.subplots(figsize=(max(12, len(filtered_types) * 0.8), 8))
        ax.bar(x - width/2, c_values, width, label='C')
        ax.bar(x + width/2, rust_values, width, label='Rust')
        
        ax.set_ylabel('count')
        ax.set_title('Comparison of Instruction Distribution')
        ax.set_xticks(x)
        ax.set_xticklabels(filtered_types, rotation=45)
        ax.legend()
        
        plt.tight_layout()
        plt.savefig(os.path.join(report_dir, 'instruction_distribution.png'))
        plt.close()
        
        print(f"已生成指令分布图: {os.path.join(report_dir, 'instruction_distribution.png')}")
    
    def _generate_memory_branch_comparison(self, c_stats, rust_stats, report_dir):
        """生成内存操作和控制流比较图"""
        categories = ['function_count', 'basic_block_count', 'instruction_count', 'memory_ops', 'branch_count']
        category_labels = ['function count', 'basicblock count', 'instruction count', 'memory op count', 'branch count']
        
        c_values = [c_stats.get(cat, 0) for cat in categories]
        rust_values = [rust_stats.get(cat, 0) for cat in categories]
        
        # 计算比率
        ratios = [rust_val / c_val if c_val > 0 else 0 for rust_val, c_val in zip(rust_values, c_values)]
        
        # 绘制比较图
        x = np.arange(len(categories))
        width = 0.35
        
        fig, ax = plt.subplots(figsize=(10, 6))
        ax.bar(x - width/2, c_values, width, label='C')
        ax.bar(x + width/2, rust_values, width, label='Rust')
        
        ax.set_ylabel('count')
        ax.set_title('Comparison of basic statistics')
        ax.set_xticks(x)
        ax.set_xticklabels(category_labels)
        ax.legend()
        
        plt.tight_layout()
        plt.savefig(os.path.join(report_dir, 'basic_stats_comparison.png'))
        plt.close()
        
        # 绘制比率图
        fig, ax = plt.subplots(figsize=(10, 6))
        ax.bar(x, ratios, width=0.6)
        ax.axhline(y=1, color='r', linestyle='-')
        
        ax.set_ylabel('Rust/C ratio')
        ax.set_title('Rust vs C Code Ratio Comparison')
        ax.set_xticks(x)
        ax.set_xticklabels(category_labels)
        
        plt.tight_layout()
        plt.savefig(os.path.join(report_dir, 'ratio_comparison.png'))
        plt.close()
        
        print(f"已生成基本统计对比图: {os.path.join(report_dir, 'basic_stats_comparison.png')}")
        print(f"已生成比率对比图: {os.path.join(report_dir, 'ratio_comparison.png')}")
    
    def _generate_call_graph_stats(self, c_stats, rust_stats, report_dir):
        """生成函数调用图统计分析"""
        try:
            c_call_graph = c_stats.get('call_graph', {})
            rust_call_graph = rust_stats.get('call_graph', {})
            
            c_functions = c_call_graph.get('functions', [])
            rust_functions = rust_call_graph.get('functions', [])
            
            c_calls = c_call_graph.get('calls', [])
            rust_calls = rust_call_graph.get('calls', [])
            
            # 计算调用复杂度
            c_complexity = len(c_calls) / max(len(c_functions), 1)
            rust_complexity = len(rust_calls) / max(len(rust_functions), 1)
            
            # 绘制函数数量和调用边数量对比
            categories = ['function count', 'calling edges count', 'invocation complexity']
            c_values = [len(c_functions), len(c_calls), c_complexity]
            rust_values = [len(rust_functions), len(rust_calls), rust_complexity]
            
            x = np.arange(len(categories))
            width = 0.35
            
            fig, ax = plt.subplots(figsize=(10, 6))
            ax.bar(x - width/2, c_values, width, label='C')
            ax.bar(x + width/2, rust_values, width, label='Rust')
            
            ax.set_ylabel('count')
            ax.set_title('Comparison of call graph statistics')
            ax.set_xticks(x)
            ax.set_xticklabels(categories)
            ax.legend()
            
            plt.tight_layout()
            plt.savefig(os.path.join(report_dir, 'call_graph_stats.png'))
            plt.close()
            
            print(f"已生成调用图统计对比: {os.path.join(report_dir, 'call_graph_stats.png')}")
            
        except Exception as e:
            print(f"生成调用图统计时出错: {e}")
    
    def _save_results(self):
        """保存分析结果到JSON文件"""
        result_file = os.path.join(self.output_dir, 'wat_analysis_results.json')
        with open(result_file, 'w') as f:
            # 将结果转换为可序列化的格式
            serializable_results = {}
            for program_id, result in self.results.items():
                serializable_results[program_id] = {
                    'c_file': result['c_file'],
                    'rust_file': result['rust_file'],
                    'c_json': result['c_json'],
                    'rust_json': result['rust_json'],
                    'report_dir': result['report_dir']
                }
            json.dump(serializable_results, f, indent=2)
        print(f"分析结果已保存到 {result_file}")

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
            try:
                # 加载JSON数据
                with open(result['c_json'], 'r') as f:
                    c_data = json.load(f)
                
                with open(result['rust_json'], 'r') as f:
                    rust_data = json.load(f)
                
                # 检查是否有错误
                if 'error' in c_data or 'error' in rust_data:
                    continue
                
                # 提取静态分析数据
                c_stats = c_data.get('static_analysis', {})
                rust_stats = rust_data.get('static_analysis', {})
                
                # 计算比率
                if c_stats.get('instruction_count', 0) > 0:
                    summary['averages']['instruction_ratio'].append(
                        rust_stats.get('instruction_count', 0) / c_stats.get('instruction_count', 1)
                    )
                if c_stats.get('function_count', 0) > 0:
                    summary['averages']['function_ratio'].append(
                        rust_stats.get('function_count', 0) / c_stats.get('function_count', 1)
                    )
                if c_stats.get('memory_ops', 0) > 0:
                    summary['averages']['memory_ops_ratio'].append(
                        rust_stats.get('memory_ops', 0) / c_stats.get('memory_ops', 1)
                    )
                if c_stats.get('branch_count', 0) > 0:
                    summary['averages']['branch_ratio'].append(
                        rust_stats.get('branch_count', 0) / c_stats.get('branch_count', 1)
                    )
                
            except Exception as e:
                print(f"处理程序 {program_id} 的摘要数据时出错: {e}")
        
        # 计算平均值
        for key in summary['averages']:
            values = summary['averages'][key]
            if values:
                summary['averages'][key] = sum(values) / len(values)
            else:
                summary['averages'][key] = 0
        
        # 保存摘要
        summary_file = os.path.join(self.output_dir, 'summary.json')
        with open(summary_file, 'w') as f:
            json.dump(summary, f, indent=2)
        
        # 生成图表
        self._generate_summary_charts(summary)
        
        print(f"已生成摘要报告: {summary_file}")

    def _generate_summary_charts(self, summary):
        """生成摘要图表"""
        metrics = list(summary['averages'].keys())
        values = [summary['averages'][m] for m in metrics]
        
        # 美化指标名称
        metric_labels = [
            'instructions', 
            'functions', 
            'memory operations', 
            'branch'
        ]
        
        # 检查是否有有效数据
        if not values or all(not isinstance(v, (int, float)) for v in values):
            print("警告：没有足够的数据生成图表")
            return
        
        plt.figure(figsize=(10, 6))
        bars = plt.bar(metric_labels, values)
        plt.axhline(y=1, color='r', linestyle='-')
        plt.ylabel('Rust/C ratio')
        plt.title('Comparison of average indicators (Rust/C)')
        
        # 在柱状图上添加数值标签
        for bar in bars:
            height = bar.get_height()
            plt.text(bar.get_x() + bar.get_width()/2., height,
                    f'{height:.2f}',
                    ha='center', va='bottom')
        
        plt.tight_layout()
        plt.savefig(os.path.join(self.output_dir, 'summary_metrics.png'))
        plt.close()
        
        print(f"已生成摘要图表: {os.path.join(self.output_dir, 'summary_metrics.png')}")



def main():
    # 使用相对路径，适用于Ubuntu环境
    c_wat_dir = "./c_code"
    rust_wat_dir = "./rust_code"
    output_dir = "./analysis_result_wat"
    
    # 确保目录存在
    for dir_path in [c_wat_dir, rust_wat_dir, output_dir]:
        if not os.path.exists(dir_path):
            os.makedirs(dir_path)
    
    analyzer = WATPassAnalyzer(c_wat_dir, rust_wat_dir, output_dir)
    analyzer.analyze_all_programs()
    
    print(f"分析完成，结果保存在 {output_dir}")

if __name__ == "__main__":
    main()