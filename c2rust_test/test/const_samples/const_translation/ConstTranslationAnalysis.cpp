// 全局变量翻译分析器 - 分析C语言const全局变量如何翻译到Rust
// 使用独立可执行程序方式，避免Pass系统兼容性问题
#include "llvm/IR/LLVMContext.h"
#include "llvm/IR/Module.h"
#include "llvm/IR/GlobalVariable.h"
#include "llvm/IR/Type.h"
#include "llvm/IR/DerivedTypes.h"
#include "llvm/IRReader/IRReader.h"
#include "llvm/Support/SourceMgr.h"
#include "llvm/Support/raw_ostream.h"
#include <fstream>
#include <map>
#include <string>
#include <vector>
#include <iostream>
#include "llvm/IR/Instructions.h" // 需要包含指令头文件

using namespace llvm;

// 检查类型是否包含指针
bool typeContainsPointer(Type *type) {
    if (!type)
        return false;
        
    if (type->isPointerTy())
        return true;
        
    if (StructType *ST = dyn_cast<StructType>(type)) {
        for (unsigned i = 0; i < ST->getNumElements(); i++) {
            if (typeContainsPointer(ST->getElementType(i)))
                return true;
        }
    }
    
    if (ArrayType *AT = dyn_cast<ArrayType>(type)) {
        return typeContainsPointer(AT->getElementType());
    }
    
    return false;
}

// 新增：检查全局变量的地址是否被获取和使用（除了直接加载值）
bool isAddressTaken(GlobalVariable &GV) {
    // 遍历该全局变量的所有使用者
    for (User *U : GV.users()) {
        // 如果使用者不是一个 LoadInst（加载指令），
        // 则意味着变量的地址本身被用于其他目的（如存储、指针运算、函数参数等）
        if (!isa<LoadInst>(U)) {
            // 进一步检查：如果使用者是 ConstantExpr，我们需要看这个常量表达式最终如何被使用
            if (ConstantExpr *CE = dyn_cast<ConstantExpr>(U)) {
                 // 如果这个常量表达式的使用者中也有非LoadInst，则地址被真正使用了
                 for(User *CEU : CE->users()){
                     if (!isa<LoadInst>(CEU)){
                         return true;
                     }
                 }
                 // 如果常量表达式的所有使用者都是LoadInst，则不算地址被真正使用
                 continue; 
            }
            // 对于其他非LoadInst的使用者，直接认为地址被使用了
            return true;
        }
        // 如果使用者是 LoadInst，只表示读取变量的值，不算地址被使用
    }
    // 如果所有使用者都是 LoadInst，则地址未被获取和使用
    return false;
}


// 分析全局变量并确定其Rust翻译类型 (修改后)
std::string determineRustTranslationType(GlobalVariable &GV) {
    // 首先检查是否为 C const
    if (GV.isConstant()) {
        // 检查类型是否包含指针 或 地址是否被获取
        bool containsPtr = typeContainsPointer(GV.getValueType());
        bool addressTaken = isAddressTaken(GV);

        if (containsPtr || addressTaken) {
            // 如果包含指针 或 地址被获取，则必须使用 static 以保证稳定地址
            return "static";
        } else {
            // 如果不包含指针且地址未被获取，可以安全地翻译为 const
            return "const";
        }
    } else {
        // 非常量全局变量，翻译为 static mut
        return "static mut";
    }
}

// 获取变量翻译的原因 (修改后)
std::string getTranslationReason(const std::string &translationType, GlobalVariable &GV) {
    if (translationType == "const") {
        return "简单字面量，编译时常量且地址未被使用，可以安全地翻译为Rust const";
    } else if (translationType == "static") {
        // 需要区分是因为指针还是因为地址被获取
        bool containsPtr = typeContainsPointer(GV.getValueType());
        bool addressTaken = isAddressTaken(GV);
        std::string reason = "";
        if (containsPtr) {
            reason += "包含指针";
        }
        if (addressTaken) {
            if (!reason.empty()) reason += "且";
            reason += "地址被引用";
        }
        reason += "，需要固定地址和'static生命周期，建议使用static";
        return reason;
    } else { // static mut
        return "原始C代码中不是const变量，翻译为static mut";
    }
}

// 生成建议的Rust代码
std::string suggestRustCode(const std::string &translationType, const std::string &name) {
    return "pub " + translationType + " " + name + ": [类型省略] = [初始化器省略];";
}

// 变量分析结果结构
struct VariableAnalysis {
    std::string name;
    std::string c_definition;
    std::string translation_type;
    std::string reason;
    std::string rust_code;
};

// 分析LLVM IR文件并输出分析结果
int main(int argc, char **argv) {
    if (argc < 3) {
        std::cerr << "用法: " << argv[0] << " <LLVM IR文件> <输出JSON文件>\n";
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
    
    // 输出分析开始标记
    std::cerr << "======== 开始分析全局变量翻译 ========\n";
    
    // 收集分析结果
    std::vector<VariableAnalysis> variables;
    int constCount = 0;
    int staticCount = 0;
    int staticMutCount = 0;
    
    // 遍历所有全局变量
    for (GlobalVariable &GV : M->globals()) {
        // 跳过内部字符串字面量
        if (GV.hasName() && GV.getName().startswith(".str")) {
            continue;
        }
        
        std::string name = GV.getName().str();
        std::cerr << "变量: " << name << "\n";
        
        // 获取C定义
        std::string defStr;
        raw_string_ostream rso(defStr);
        GV.print(rso);
        std::cerr << "  C定义: " << defStr << "\n";
        
        // 确定翻译类型
        std::string translationType = determineRustTranslationType(GV);
        std::cerr << "  建议翻译为: " << translationType << "\n";
        
        // 获取翻译原因
        std::string reason = getTranslationReason(translationType, GV);
        std::cerr << "  原因: " << reason << "\n";
        
        // 生成建议的Rust代码
        std::string rustCode = suggestRustCode(translationType, name);
        std::cerr << "  建议Rust代码: " << rustCode << "\n\n";
        
        // 统计不同类型的变量数量
        if (translationType == "const") {
            constCount++;
        } else if (translationType == "static") {
            staticCount++;
        } else {
            staticMutCount++;
        }
        
        // 创建分析结果
        VariableAnalysis var;
        var.name = name;
        var.c_definition = defStr;
        var.translation_type = translationType;
        var.reason = reason;
        var.rust_code = rustCode;
        
        variables.push_back(std::move(var));
    }
    
    // 输出统计信息
    std::cerr << "共分析了 " << variables.size() << " 个全局变量 "
              << "(const: " << constCount 
              << ", static: " << staticCount 
              << ", static mut: " << staticMutCount << ")\n";
    std::cerr << "======== 分析完成 ========\n\n";
    
    // 写入JSON文件
    std::error_code EC;
    raw_fd_ostream OS(argv[2], EC);
    if (EC) {
        std::cerr << "无法打开输出文件: " << EC.message() << "\n";
        return 1;
    }
    
    // 手动构建JSON格式
    OS << "{\n";
    OS << "  \"input_file\": \"" << argv[1] << "\",\n";
    
    // 输出变量数组
    OS << "  \"variables\": [\n";
    for (size_t i = 0; i < variables.size(); ++i) {
        const auto &var = variables[i];
        OS << "    {\n";
        OS << "      \"name\": \"" << var.name << "\",\n";
        
        // 处理C定义中的特殊字符
        std::string escaped_def = var.c_definition;
        size_t pos = 0;
        while ((pos = escaped_def.find("\"", pos)) != std::string::npos) {
            escaped_def.replace(pos, 1, "\\\"");
            pos += 2;
        }
        pos = 0;
        while ((pos = escaped_def.find("\n", pos)) != std::string::npos) {
            escaped_def.replace(pos, 1, "\\n");
            pos += 2;
        }
        
        OS << "      \"c_definition\": \"" << escaped_def << "\",\n";
        OS << "      \"translation_type\": \"" << var.translation_type << "\",\n";
        OS << "      \"reason\": \"" << var.reason << "\",\n";
        OS << "      \"rust_code\": \"" << var.rust_code << "\"\n";
        OS << "    }";
        if (i < variables.size() - 1) {
            OS << ",";
        }
        OS << "\n";
    }
    OS << "  ],\n";
    
    // 输出摘要
    OS << "  \"summary\": {\n";
    OS << "    \"total\": " << variables.size() << ",\n";
    OS << "    \"const\": " << constCount << ",\n";
    OS << "    \"static\": " << staticCount << ",\n";
    OS << "    \"static_mut\": " << staticMutCount << "\n";
    OS << "  }\n";
    OS << "}\n";
    
    OS.close();
    
    return 0;
}