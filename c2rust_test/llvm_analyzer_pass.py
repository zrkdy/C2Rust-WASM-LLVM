import os
import subprocess
import json
import matplotlib.pyplot as plt
import numpy as np
from pathlib import Path
from collections import defaultdict

class LLVMPassAnalyzer:
    def __init__(self, c_llvm_dir, rust_llvm_dir, output_dir):
        self.c_llvm_dir = c_llvm_dir
        self.rust_llvm_dir = rust_llvm_dir
        self.output_dir = output_dir
        self.results = {}
        
        # 确保输出目录存在
        if not os.path.exists(output_dir):
            os.makedirs(output_dir)
        
        # 编译 C++ 分析器
        self._compile_cpp_analyzer()
    
    def _compile_cpp_analyzer(self):
        """编译 C++ 分析器程序"""
        try:
            cmd = "clang++ -o llvm_analyzer_pass llvm_analyzer_pass.cpp `llvm-config-20 --cxxflags --ldflags --system-libs --libs core analysis irreader support` -std=c++17"
            subprocess.run(cmd, shell=True, check=True)
            print("成功编译 C++ 分析器")
        except subprocess.CalledProcessError as e:
            print(f"编译 C++ 分析器失败: {e}")
            raise
    
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
        # 创建程序报告目录
        report_dir = os.path.join(self.output_dir, program_id)
        if not os.path.exists(report_dir):
            os.makedirs(report_dir)
        
        # 使用 C++ 分析器分析 C 代码
        c_json_file = os.path.join(report_dir, "c_analysis.json")
        self._run_cpp_analyzer(c_file, c_json_file)
        
        # 使用 C++ 分析器分析 Rust 代码
        rust_json_file = os.path.join(report_dir, "rust_analysis.json")
        self._run_cpp_analyzer(rust_file, rust_json_file)
        
        # 生成比较分析图表
        self._generate_comparison_charts(c_json_file, rust_json_file, report_dir)
        
        return {
            'c_file': c_file,
            'rust_file': rust_file,
            'c_json': c_json_file,
            'rust_json': rust_json_file,
            'report_dir': report_dir
        }
    
    def _run_cpp_analyzer(self, llvm_file, output_json):
        """运行 C++ 分析器并保存结果"""
        try:
            cmd = f"./llvm_analyzer_pass {llvm_file} {output_json}"
            subprocess.run(cmd, shell=True, check=True)
            print(f"成功分析 {llvm_file} 并保存结果到 {output_json}")
        except subprocess.CalledProcessError as e:
            print(f"分析 {llvm_file} 失败: {e}")
            # 创建一个空的 JSON 文件，以便程序可以继续运行
            with open(output_json, 'w') as f:
                json.dump({"error": f"分析失败: {str(e)}"}, f)
    
    def _generate_comparison_charts(self, c_json_file, rust_json_file, report_dir):
        """生成比较分析图表"""
        try:
            # 加载JSON数据
            with open(c_json_file, 'r') as f:
                c_data = json.load(f)
            
            with open(rust_json_file, 'r') as f:
                rust_data = json.load(f)
            
            # 检查是否有错误
            if 'error' in c_data or 'error' in rust_data:
                print(f"警告: 无法生成比较图表，JSON数据包含错误")
                return
            
            # 提取静态分析数据
            c_stats = c_data.get('static_analysis', {})
            rust_stats = rust_data.get('static_analysis', {})
            
            # 生成指令分布图
            self._generate_instruction_distribution_chart(c_stats, rust_stats, report_dir)
            
            # 生成内存操作和控制流比较图
            self._generate_memory_branch_comparison(c_stats, rust_stats, report_dir)
            
            # 生成函数调用图比较
            self._generate_call_graph_stats(c_stats, rust_stats, report_dir)
            
        except Exception as e:
            print(f"生成比较图表时出错: {e}")
    
    def _generate_instruction_distribution_chart(self, c_stats, rust_stats, report_dir):
        """生成指令分布图"""
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
        
        ax.set_ylabel('count')
        ax.set_title('Comparison of Instruction Distribution')
        ax.set_xticks(x)
        ax.set_xticklabels(instruction_types, rotation=45)
        ax.legend()
        
        plt.tight_layout()
        plt.savefig(os.path.join(report_dir, 'instruction_distribution.png'))
        plt.close()
        
        print(f"已生成指令分布图: {os.path.join(report_dir, 'instruction_distribution.png')}")
    
    def _generate_memory_branch_comparison(self, c_stats, rust_stats, report_dir):
        """生成内存操作和控制流比较图"""
        categories = ['function_count', 'basic_block_count', 'instruction_count', 'memory_ops', 'branch_count']
        category_labels = ['function count', 'basicblock count', 'instruction count', 'memmory op count', 'branch count']
        
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
            categories = ['funtion count', 'calling edges count', 'invocation complexity']
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
        result_file = os.path.join(self.output_dir, 'cpp_analysis_results.json')
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
            'mem oprations', 
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
    # 首先执行 llvm_analyzer_cfg.py
    try:
        print("正在执行 llvm_analyzer_cfg.py...")
        subprocess.run(["python3", "llvm_analyzer_cfg.py"], check=True)
        print("llvm_analyzer_cfg.py 执行完成")
    except subprocess.CalledProcessError as e:
        print(f"执行 llvm_analyzer_cfg.py 失败: {e}")
        # 继续执行后续步骤，不中断程序
    
    # 使用相对路径，适用于Ubuntu环境
    c_llvm_dir = "./c_code"
    rust_llvm_dir = "./rust_code"
    output_dir = "./analysis_result_pass"
    
    # 确保目录存在
    for dir_path in [c_llvm_dir, rust_llvm_dir, output_dir]:
        if not os.path.exists(dir_path):
            os.makedirs(dir_path)
    
    analyzer = LLVMPassAnalyzer(c_llvm_dir, rust_llvm_dir, output_dir)
    analyzer.analyze_all_programs()
    
    print(f"分析完成，结果保存在 {output_dir}")

if __name__ == "__main__":
    main()