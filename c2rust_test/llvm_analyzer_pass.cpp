#include "llvm/IR/LLVMContext.h"
#include "llvm/IR/Module.h"
#include "llvm/IR/Instructions.h"  // 添加这行以包含 CallInst 的定义
#include "llvm/IRReader/IRReader.h"
#include "llvm/Support/SourceMgr.h"
#include "llvm/Support/raw_ostream.h"
#include "llvm/Support/JSON.h"
#include <fstream>
#include <map>
#include <string>
#include <vector>

using namespace llvm;

// 分析LLVM IR文件并输出JSON格式的统计信息
int main(int argc, char **argv) {
    if (argc < 3) {
        errs() << "用法: " << argv[0] << " <LLVM IR文件> <输出JSON文件>\n";
        return 1;
    }

    // 初始化LLVM
    LLVMContext Context;
    SMDiagnostic Err;
    
    // 解析LLVM IR文件
    std::unique_ptr<Module> M = parseIRFile(argv[1], Err, Context);
    if (!M) {
        Err.print(argv[0], errs());
        return 1;
    }
    
    // 收集统计信息
    std::map<std::string, int> stats;
    std::vector<std::string> functions;
    std::vector<std::pair<std::string, std::string>> calls;
    
    // 基本统计
    stats["function_count"] = 0;
    stats["basic_block_count"] = 0;
    stats["instruction_count"] = 0;
    
    // 指令类型统计
    std::map<std::string, int> instruction_counts;
    
    // 遍历所有函数
    for (const Function &F : *M) {
        stats["function_count"]++;
        functions.push_back(F.getName().str());
        
        // 遍历基本块
        for (const BasicBlock &BB : F) {
            stats["basic_block_count"]++;
            
            // 遍历指令
            for (const Instruction &I : BB) {
                stats["instruction_count"]++;
                std::string opcode = I.getOpcodeName();
                instruction_counts[opcode]++;
                
                // 检查调用指令
                if (const CallInst *CI = dyn_cast<CallInst>(&I)) {
                    if (CI->getCalledFunction()) {
                        std::string callee = CI->getCalledFunction()->getName().str();
                        calls.push_back(std::make_pair(F.getName().str(), callee));
                    }
                }
            }
        }
    }
    
    // 将指令计数添加到统计信息
    std::vector<std::string> instruction_types = {
        "alloca", "load", "store", "getelementptr", "call", "ret",
        "br", "switch", "phi", "select", "icmp", "fcmp",
        "add", "sub", "mul", "div"
    };
    
    for (const auto &instr : instruction_types) {
        stats[instr + "_count"] = instruction_counts[instr];
    }
    
    // 控制流分析
    stats["branch_count"] = instruction_counts["br"] + instruction_counts["switch"];
    
    // 内存操作分析
    stats["memory_ops"] = instruction_counts["load"] + 
                          instruction_counts["store"] + 
                          instruction_counts["alloca"];
    
    // 创建JSON输出
    json::Object result;
    json::Object stats_obj;
    
    for (const auto &stat : stats) {
        stats_obj[stat.first] = stat.second;
    }
    
    // 添加函数列表
    json::Array functions_array;
    for (const auto &func : functions) {
        functions_array.push_back(func);
    }
    
    // 添加调用关系
    json::Array calls_array;
    for (const auto &call : calls) {
        json::Object call_obj;
        call_obj["caller"] = call.first;
        call_obj["callee"] = call.second;
        calls_array.push_back(std::move(call_obj));
    }
    
    // 构建调用图
    json::Object call_graph;
    call_graph["functions"] = std::move(functions_array);
    call_graph["calls"] = std::move(calls_array);
    
    stats_obj["call_graph"] = std::move(call_graph);
    result["static_analysis"] = std::move(stats_obj);
    
    // 写入JSON文件
    std::error_code EC;
    raw_fd_ostream OS(argv[2], EC);
    if (EC) {
        errs() << "无法打开输出文件: " << EC.message() << "\n";
        return 1;
    }
    
    OS << json::Value(std::move(result));
    OS.close();
    
    return 0;
}