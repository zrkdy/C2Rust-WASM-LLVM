import os
import re
import subprocess
import json
import networkx as nx
import matplotlib.pyplot as plt
import numpy as np
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
    
    def analyze_all_programs(self):
        """分析所有程序对"""
        program_pairs = self._find_program_pairs()
        
        for program_id in program_pairs:
            c_file = program_pairs[program_id]['c']
            rust_file = program_pairs[program_id]['rust']
            
            print(f"分析程序 {program_id}...")
            self.results[program_id] = self._analyze_program_pair(program_id, c_file, rust_file)
        
    
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
        
        # 不再生成CFG目录和文件
        # 只生成调用图
        self._generate_call_graph(c_file, rust_file, report_dir)
        
        return {
            'c_file': c_file,
            'rust_file': rust_file,
            'report_dir': report_dir
        }
    
    def _generate_llvm_cfg(self, llvm_file, cfg_dir, title_prefix):
        """使用LLVM工具生成控制流图"""
        try:
            # 使用opt-20生成dot文件
            opt_cmd = f"opt-20 -passes=dot-cfg {llvm_file} -disable-output"
            subprocess.run(opt_cmd, shell=True, stderr=subprocess.PIPE, text=True, errors='replace')
            
            # LLVM生成的dot文件可能在当前目录
            dot_files = [f for f in os.listdir('.') if f.endswith('.dot') and 'cfg' in f]
            
            if not dot_files:
                # 尝试旧版语法
                opt_cmd = f"opt-20 -dot-cfg {llvm_file} -disable-output"
                subprocess.run(opt_cmd, shell=True, stderr=subprocess.PIPE, text=True, errors='replace')
                dot_files = [f for f in os.listdir('.') if f.endswith('.dot') and 'cfg' in f]
            
            for dot_file in dot_files:
                # 提取函数名
                func_name = dot_file.replace('.dot', '').split('.')[-1]
                
                # 读取原始dot文件内容
                with open(dot_file, 'r', errors='replace') as f:
                    dot_content = f.read()
                
                # 修改标题
                dot_content = dot_content.replace("CFG for", f"{title_prefix} CFG for")
                
                # 写入新的dot文件
                new_dot_file = os.path.join(cfg_dir, dot_file)
                with open(new_dot_file, 'w') as f:
                    f.write(dot_content)
                
                # 使用dot生成png文件
                png_file = os.path.join(cfg_dir, f"{func_name}.png")
                dot_cmd = f"dot -Tpng {new_dot_file} -o {png_file}"
                subprocess.run(dot_cmd, shell=True, check=True)
                
                # 删除原始dot文件
                os.remove(dot_file)
                
                print(f"成功生成CFG: {png_file}")
            
            if not dot_files:
                print(f"警告: 未能为 {llvm_file} 生成任何CFG dot文件")
        
        except subprocess.CalledProcessError as e:
            print(f"警告: 执行命令失败: {e}")
            # 继续执行，不中断程序
        except Exception as e:
            print(f"警告: 生成CFG时发生异常: {e}")
            # 继续执行，不中断程序
        
        # 确保清理所有可能生成的dot文件
        for dot_file in [f for f in os.listdir('.') if f.endswith('.dot')]:
            try:
                os.remove(dot_file)
                print(f"已删除dot文件: {dot_file}")
            except Exception as e:
                print(f"警告: 无法删除dot文件 {dot_file}: {e}")

    def _generate_llvm_callgraph(self, llvm_file, dot_file, png_file, title):
        """使用LLVM工具生成调用图"""
        try:
            # 使用新的传递管理器语法
            opt_cmd = f"opt-20 -passes=dot-callgraph {llvm_file} -disable-output"
            subprocess.run(opt_cmd, shell=True, stderr=subprocess.PIPE, text=True, errors='replace')
            
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
                with open(expected_dot_path, 'r', errors='replace') as f:
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
                with open(generated_dot, 'r', errors='replace') as f:
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
            
            # 如果没有找到dot文件，尝试旧版语法
            print(f"警告: 未找到生成的callgraph.dot文件，尝试旧版语法")
            opt_cmd = f"opt-20 -dot-callgraph {llvm_file} -disable-output"
            subprocess.run(opt_cmd, shell=True, stderr=subprocess.PIPE, text=True, errors='replace')
            
            # 再次检查当前目录
            dot_files = [f for f in os.listdir('.') if f.endswith('.dot') and 'callgraph' in f]
            
            if dot_files:
                generated_dot = dot_files[0]
                print(f"找到生成的dot文件: {generated_dot}")
                
                # 读取原始dot文件内容
                with open(generated_dot, 'r', errors='replace') as f:
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
            
            print(f"警告: opt未能生成callgraph.dot文件")
            
        except subprocess.CalledProcessError as e:
            print(f"警告: 执行命令失败: {e}")
        except Exception as e:
            print(f"警告: 生成调用图时发生异常: {e}")
        
        # 确保清理所有可能生成的dot文件
        for dot_file in [f for f in os.listdir('.') if f.endswith('.dot')]:
            try:
                os.remove(dot_file)
                print(f"已删除dot文件: {dot_file}")
            except Exception as e:
                print(f"警告: 无法删除dot文件 {dot_file}: {e}")

    def _generate_call_graph(self, c_file, rust_file, report_dir):
        """生成调用图"""
        # 生成C代码的调用图
        c_dot_file = os.path.join(report_dir, 'c_callgraph.dot')
        c_png_file = os.path.join(report_dir, 'c_call_graph.png')
        self._generate_llvm_callgraph(c_file, c_dot_file, c_png_file, 'C Code Call Graph')
        
        # 生成Rust代码的调用图
        rust_dot_file = os.path.join(report_dir, 'rust_callgraph.dot')
        rust_png_file = os.path.join(report_dir, 'rust_call_graph.png')
        self._generate_llvm_callgraph(rust_file, rust_dot_file, rust_png_file, 'Rust Code Call Graph')
    
def main():
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