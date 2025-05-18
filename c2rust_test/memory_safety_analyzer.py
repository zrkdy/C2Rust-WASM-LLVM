import os
import subprocess
import json
import argparse
from pathlib import Path
from collections import defaultdict

class MemorySafetyAnalyzer:
    def __init__(self, c_llvm_dir, rust_llvm_dir, output_dir):
        self.c_llvm_dir = c_llvm_dir
        self.rust_llvm_dir = rust_llvm_dir
        self.output_dir = output_dir
        self.results = {}
        
        # 确保输出目录存在
        if not os.path.exists(output_dir):
            os.makedirs(output_dir)
        
        # 编译内存安全分析Pass
        self._compile_memory_safety_pass()
    
    def _compile_memory_safety_pass(self):
        """编译内存安全分析Pass"""
        try:
            current_dir = os.path.dirname(os.path.abspath(__file__))
            cpp_file = os.path.join(current_dir, "memory_safety", "MemorySafetyAnalysis.cpp")
            output_file = os.path.join(current_dir, "memory_safety", "MemorySafetyAnalysis.so")
            
            # 检查源文件是否存在
            if not os.path.exists(cpp_file):
                print(f"警告: 源文件不存在: {cpp_file}")
                print("假设memory_safety已经正确编译，跳过编译步骤")
                self.pass_lib = output_file
                return
            
            # 使用正确的LLVM版本
            cmd = f"clang++ -shared -fPIC -o {output_file} {cpp_file} `llvm-config-20 --cxxflags --ldflags --system-libs --libs core analysis irreader support` -std=c++17"
            print(f"执行编译命令: {cmd}")
            subprocess.run(cmd, shell=True, check=True)
            print("成功编译内存安全分析Pass")
            self.pass_lib = output_file
        except subprocess.CalledProcessError as e:
            print(f"编译内存安全分析Pass失败: {e}")
            # 如果编译失败但文件存在，尝试使用已有的文件
            if os.path.exists(output_file):
                print(f"使用已存在的Pass库: {output_file}")
                self.pass_lib = output_file
            else:
                raise
    
    def analyze_all_programs(self):
        """分析所有程序对"""
        program_pairs = self._find_program_pairs()
        
        print(f"找到 {len(program_pairs)} 对匹配的程序")
        if len(program_pairs) == 0:
            print("没有找到匹配的程序对，请检查输入目录")
            return
        
        for program_id in program_pairs:
            c_file = program_pairs[program_id]['c']
            rust_file = program_pairs[program_id]['rust']
            
            print(f"分析程序 {program_id}...")
            print(f"  C文件: {c_file}")
            print(f"  Rust文件: {rust_file}")
            self.results[program_id] = self._analyze_program_pair(program_id, c_file, rust_file)
        
        # 保存结果
        self._save_results()
        
        # 生成总体摘要报告
        self._generate_summary_report()
    
    def _find_program_pairs(self):
        """查找对应的C和Rust LLVM IR文件对"""
        program_pairs = {}
        
        # 查找C LLVM文件
        print(f"搜索C LLVM文件目录: {self.c_llvm_dir}")
        c_files_found = 0
        
        # 如果是c_code目录，则查找program_XXX子目录中的.ll文件
        if os.path.basename(self.c_llvm_dir) == "c_code":
            for root, dirs, files in os.walk(self.c_llvm_dir):
                for file in files:
                    if file.endswith('.ll'):
                        c_files_found += 1
                        # 从路径中提取program_id
                        path_parts = root.split(os.sep)
                        for part in path_parts:
                            if part.startswith("program_"):
                                program_id = part
                                if program_id not in program_pairs:
                                    program_pairs[program_id] = {}
                                program_pairs[program_id]['c'] = os.path.join(root, file)
                                break
        else:
            # 原始逻辑，直接查找.ll文件
            for root, _, files in os.walk(self.c_llvm_dir):
                for file in files:
                    if file.endswith('.ll'):
                        c_files_found += 1
                        # 使用文件名作为程序ID
                        program_id = os.path.splitext(file)[0]
                        if program_id not in program_pairs:
                            program_pairs[program_id] = {}
                        program_pairs[program_id]['c'] = os.path.join(root, file)
        
        print(f"找到 {c_files_found} 个C LLVM文件")
        
        # 查找Rust LLVM文件
        print(f"搜索Rust LLVM文件目录: {self.rust_llvm_dir}")
        rust_files_found = 0
        
        # 如果是rust_code目录，则查找program_XXX子目录中的.ll文件
        if os.path.basename(self.rust_llvm_dir) == "rust_code":
            for root, dirs, files in os.walk(self.rust_llvm_dir):
                for file in files:
                    if file.endswith('.ll'):
                        rust_files_found += 1
                        # 从路径中提取program_id
                        path_parts = root.split(os.sep)
                        for part in path_parts:
                            if part.startswith("program_"):
                                program_id = part
                                if program_id not in program_pairs:
                                    program_pairs[program_id] = {}
                                program_pairs[program_id]['rust'] = os.path.join(root, file)
                                break
        else:
            # 原始逻辑，直接查找.ll文件
            for root, _, files in os.walk(self.rust_llvm_dir):
                for file in files:
                    if file.endswith('.ll'):
                        rust_files_found += 1
                        # 使用文件名作为程序ID
                        program_id = os.path.splitext(file)[0]
                        if program_id not in program_pairs:
                            program_pairs[program_id] = {}
                        program_pairs[program_id]['rust'] = os.path.join(root, file)
        
        print(f"找到 {rust_files_found} 个Rust LLVM文件")
        
        # 只保留同时有C和Rust版本的程序
        return {k: v for k, v in program_pairs.items() if 'c' in v and 'rust' in v}
    
    def _analyze_program_pair(self, program_id, c_file, rust_file):
        """分析单个程序对"""
        # 创建程序报告目录
        report_dir = os.path.join(self.output_dir, program_id)
        if not os.path.exists(report_dir):
            os.makedirs(report_dir)
        
        # 分析C代码的内存安全问题
        c_json_file = os.path.join(report_dir, "c_memory_safety.json")
        print(f"分析C代码: {c_file}")
        c_analysis = self._run_memory_safety_analysis(c_file)
        with open(c_json_file, 'w') as f:
            json.dump(c_analysis, f, indent=2)
        print(f"C代码分析结果已保存到: {c_json_file}")
        
        # 分析Rust代码的内存安全问题
        rust_json_file = os.path.join(report_dir, "rust_memory_safety.json")
        print(f"分析Rust代码: {rust_file}")
        rust_analysis = self._run_memory_safety_analysis(rust_file)
        with open(rust_json_file, 'w') as f:
            json.dump(rust_analysis, f, indent=2)
        print(f"Rust代码分析结果已保存到: {rust_json_file}")
        
        # 比较C和Rust的内存安全问题
        comparison = self._compare_memory_safety(c_analysis, rust_analysis)
        comparison_file = os.path.join(report_dir, "memory_safety_comparison.json")
        with open(comparison_file, 'w') as f:
            json.dump(comparison, f, indent=2)
        print(f"比较结果已保存到: {comparison_file}")
        
        return {
            'c_file': c_file,
            'rust_file': rust_file,
            'c_analysis': c_analysis,
            'rust_analysis': rust_analysis,
            'comparison': comparison,
            'report_dir': report_dir
        }
    
    def _run_memory_safety_analysis(self, llvm_file):
        """运行内存安全分析并解析结果"""
        try:
            # 检查LLVM文件是否存在
            if not os.path.exists(llvm_file):
                print(f"错误: LLVM文件不存在: {llvm_file}")
                return {"error": f"LLVM文件不存在: {llvm_file}", "total_issues": 0}
            
            # 创建临时文件用于捕获stderr输出
            output_file = f"{llvm_file}.memsafety.log"
            
            # 使用正确的opt命令
            # 在Ubuntu下，尝试使用opt-20
            opt_cmd = "opt-20"
            try:
                subprocess.run([opt_cmd, "--version"], check=True, stdout=subprocess.PIPE, stderr=subprocess.PIPE)
            except (subprocess.CalledProcessError, FileNotFoundError):
                # 如果opt-20不存在，尝试使用opt
                opt_cmd = "opt"
                try:
                    subprocess.run([opt_cmd, "--version"], check=True, stdout=subprocess.PIPE, stderr=subprocess.PIPE)
                except (subprocess.CalledProcessError, FileNotFoundError):
                    print("无法找到有效的opt命令，请确保LLVM工具已安装")
                    return {"error": "无法找到有效的opt命令", "total_issues": 0}
            
            # 运行opt工具加载我们的Pass
            cmd = f"{opt_cmd} -load-pass-plugin={self.pass_lib} -passes=mem-safety -disable-output {llvm_file} 2> {output_file}"
            print(f"执行命令: {cmd}")
            
            try:
                subprocess.run(cmd, shell=True, check=True, stdout=subprocess.PIPE, stderr=subprocess.PIPE)
            except subprocess.CalledProcessError as e:
                print(f"分析命令执行失败: {e}")
                # 即使命令失败，我们仍然尝试解析输出日志
            
            # 检查日志文件是否存在
            if not os.path.exists(output_file):
                print(f"警告: 分析日志文件不存在: {output_file}")
                return {"error": "分析日志文件不存在", "total_issues": 0}
            
            # 解析输出日志
            result = self._parse_memory_safety_log(output_file)
            print(f"分析 {llvm_file} 完成，发现 {result.get('total_issues', 0)} 个问题")
            return result
        except Exception as e:
            print(f"分析 {llvm_file} 失败: {e}")
            import traceback
            traceback.print_exc()
            return {"error": f"分析失败: {str(e)}", "total_issues": 0}
    
    def _parse_memory_safety_log(self, log_file):
        """解析内存安全分析日志"""
        issues = {
            "null_dereference": [],
            "buffer_overflow": [],
            "double_free": [],
            "use_after_free": [],
            "total_issues": 0,
            "analyzed_functions": [],
            "instruction_count": 0
        }
        
        try:
            with open(log_file, 'r') as f:
                lines = f.readlines()
            
            print(f"日志文件 {log_file} 包含 {len(lines)} 行")
            if len(lines) == 0:
                print("警告: 日志文件为空")
                return issues
            
            current_function = None
            
            for line in lines:
                line = line.strip()
                
                # 提取函数名
                if "开始分析函数:" in line:
                    function_name = line.split("开始分析函数:")[1].strip()
                    current_function = function_name
                    issues["analyzed_functions"].append(function_name)
                
                # 提取指令计数
                elif "分析完成，共检查了" in line:
                    count_str = line.split("分析完成，共检查了")[1].split("条指令")[0].strip()
                    issues["instruction_count"] += int(count_str)
                
                # 提取空指针解引用
                elif "⚠️ 空指针解引用警告:" in line:
                    issues["null_dereference"].append({
                        "function": current_function,
                        "instruction": line.split("⚠️ 空指针解引用警告:")[1].strip()
                    })
                    issues["total_issues"] += 1
                
                # 提取缓冲区溢出
                elif "⚠️ 缓冲区负索引警告:" in line:
                    issues["buffer_overflow"].append({
                        "function": current_function,
                        "instruction": line.split("⚠️ 缓冲区负索引警告:")[1].strip()
                    })
                    issues["total_issues"] += 1
                
                # 提取Double-Free
                elif "⚠️ Double-Free警告:" in line:
                    # 获取下两行的信息
                    first_free_idx = lines.index(line) + 1
                    second_free_idx = first_free_idx + 1
                    
                    if first_free_idx < len(lines) and second_free_idx < len(lines):
                        first_free = lines[first_free_idx].strip()
                        second_free = lines[second_free_idx].strip()
                        
                        issues["double_free"].append({
                            "function": current_function,
                            "first_free": first_free.replace("首次释放：", "").strip(),
                            "second_free": second_free.replace("二次释放：", "").strip()
                        })
                        issues["total_issues"] += 1
                
                # 提取Use-After-Free
                elif "⚠️ Use-After-Free警告:" in line:
                    issues["use_after_free"].append({
                        "function": current_function,
                        "instruction": line.split("⚠️ Use-After-Free警告:")[1].strip()
                    })
                    issues["total_issues"] += 1
            
            # 删除临时日志文件
            os.remove(log_file)
            
            return issues
        except Exception as e:
            print(f"解析日志文件 {log_file} 失败: {e}")
            import traceback
            traceback.print_exc()
            return {"error": f"解析日志失败: {str(e)}", "total_issues": 0}
    
    def _compare_memory_safety(self, c_analysis, rust_analysis):
        """比较C和Rust代码的内存安全问题"""
        comparison = {
            "c_total_issues": c_analysis.get("total_issues", 0),
            "rust_total_issues": rust_analysis.get("total_issues", 0),
            "issue_reduction_percentage": 0,
            "issue_categories": {
                "null_dereference": {
                    "c_count": len(c_analysis.get("null_dereference", [])),
                    "rust_count": len(rust_analysis.get("null_dereference", []))
                },
                "buffer_overflow": {
                    "c_count": len(c_analysis.get("buffer_overflow", [])),
                    "rust_count": len(rust_analysis.get("buffer_overflow", []))
                },
                "double_free": {
                    "c_count": len(c_analysis.get("double_free", [])),
                    "rust_count": len(rust_analysis.get("double_free", []))
                },
                "use_after_free": {
                    "c_count": len(c_analysis.get("use_after_free", [])),
                    "rust_count": len(rust_analysis.get("use_after_free", []))
                }
            },
            "functions_analyzed": {
                "c_count": len(c_analysis.get("analyzed_functions", [])),
                "rust_count": len(rust_analysis.get("analyzed_functions", [])),
                "common_functions": []
            }
        }
        
        # 计算问题减少百分比
        c_issues = comparison["c_total_issues"]
        rust_issues = comparison["rust_total_issues"]
        
        if c_issues > 0:
            reduction = ((c_issues - rust_issues) / c_issues) * 100
            comparison["issue_reduction_percentage"] = round(reduction, 2)
        
        # 找出共同分析的函数
        c_functions = set(c_analysis.get("analyzed_functions", []))
        rust_functions = set(rust_analysis.get("analyzed_functions", []))
        common_functions = c_functions.intersection(rust_functions)
        comparison["functions_analyzed"]["common_functions"] = list(common_functions)
        
        return comparison
    
    def _save_results(self):
        """保存分析结果到JSON文件"""
        result_file = os.path.join(self.output_dir, 'memory_safety_analysis_results.json')
        with open(result_file, 'w') as f:
            # 将结果转换为可序列化的格式
            serializable_results = {}
            for program_id, result in self.results.items():
                serializable_results[program_id] = {
                    'c_file': result['c_file'],
                    'rust_file': result['rust_file'],
                    'c_issues': result['c_analysis'].get('total_issues', 0),
                    'rust_issues': result['rust_analysis'].get('total_issues', 0),
                    'issue_reduction': result['comparison'].get('issue_reduction_percentage', 0),
                    'report_dir': result['report_dir']
                }
            json.dump(serializable_results, f, indent=2)
        print(f"分析结果已保存到: {result_file}")
    
    def _generate_summary_report(self):
        """生成总体摘要报告"""
        summary = {
            "total_programs_analyzed": len(self.results),
            "total_c_issues": 0,
            "total_rust_issues": 0,
            "average_issue_reduction": 0,
            "programs_with_no_c_issues": 0,
            "programs_with_no_rust_issues": 0,
            "issue_categories": {
                "null_dereference": {"c_total": 0, "rust_total": 0},
                "buffer_overflow": {"c_total": 0, "rust_total": 0},
                "double_free": {"c_total": 0, "rust_total": 0},
                "use_after_free": {"c_total": 0, "rust_total": 0}
            }
        }
        
        # 汇总所有程序的问题
        for program_id, result in self.results.items():
            c_analysis = result['c_analysis']
            rust_analysis = result['rust_analysis']
            
            # 总问题计数
            c_issues = c_analysis.get('total_issues', 0)
            rust_issues = rust_analysis.get('total_issues', 0)
            
            summary["total_c_issues"] += c_issues
            summary["total_rust_issues"] += rust_issues
            
            # 无问题程序计数
            if c_issues == 0:
                summary["programs_with_no_c_issues"] += 1
            if rust_issues == 0:
                summary["programs_with_no_rust_issues"] += 1
            
            # 问题类别统计
            for category in summary["issue_categories"]:
                summary["issue_categories"][category]["c_total"] += len(c_analysis.get(category, []))
                summary["issue_categories"][category]["rust_total"] += len(rust_analysis.get(category, []))
        
        # 计算平均问题减少百分比
        total_reduction = 0
        programs_with_c_issues = 0
        
        for program_id, result in self.results.items():
            c_issues = result['c_analysis'].get('total_issues', 0)
            rust_issues = result['rust_analysis'].get('total_issues', 0)
            
            if c_issues > 0:
                programs_with_c_issues += 1
                reduction = ((c_issues - rust_issues) / c_issues) * 100
                total_reduction += reduction
        
        if programs_with_c_issues > 0:
            summary["average_issue_reduction"] = round(total_reduction / programs_with_c_issues, 2)
        
        # 保存摘要报告
        summary_file = os.path.join(self.output_dir, 'memory_safety_summary.json')
        with open(summary_file, 'w') as f:
            json.dump(summary, f, indent=2)
        
        print(f"摘要报告已保存到: {summary_file}")

def main():
    parser = argparse.ArgumentParser(description='分析C和Rust代码的内存安全问题')
    parser.add_argument('--c-llvm-dir', help='C LLVM IR文件目录', 
                        default=os.path.join(os.path.dirname(os.path.abspath(__file__)), 'c_code'))
    parser.add_argument('--rust-llvm-dir', help='Rust LLVM IR文件目录',
                        default=os.path.join(os.path.dirname(os.path.abspath(__file__)), 'rust_code'))
    parser.add_argument('--output-dir', help='输出目录',
                        default=os.path.join(os.path.dirname(os.path.abspath(__file__)), 'memory_safety_analysis'))
    
    args = parser.parse_args()
    
    # 打印分析路径信息
    print(f"C LLVM IR文件目录: {args.c_llvm_dir}")
    print(f"Rust LLVM IR文件目录: {args.rust_llvm_dir}")
    print(f"输出目录: {args.output_dir}")
    
    analyzer = MemorySafetyAnalyzer(
        args.c_llvm_dir,
        args.rust_llvm_dir,
        args.output_dir
    )
    
    analyzer.analyze_all_programs()

if __name__ == "__main__":
    main()