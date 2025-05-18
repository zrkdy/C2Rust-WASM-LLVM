// 全局变量翻译分析器 - 分析C语言const全局变量如何翻译到Rust
#include "llvm/Pass.h"
#include "llvm/IR/Function.h"
#include "llvm/IR/Module.h"
#include "llvm/IR/Instructions.h"
#include "llvm/IR/Constants.h"
#include "llvm/IR/GlobalVariable.h"
#include "llvm/Support/raw_ostream.h"
#include "llvm/IR/PassManager.h"
#include "llvm/Passes/PassBuilder.h"
#include "llvm/Passes/PassPlugin.h"

#include <map>
#include <set>
#include <string>
#include <vector>
#include <cstdlib>
#include <cstdio>

using namespace llvm;

namespace {

// 全局变量翻译类型枚举
enum class RustTranslationType {
  CONST,       // 可以翻译为Rust const
  STATIC,      // 可以翻译为Rust static
  STATIC_MUT,  // 必须翻译为Rust static mut
};

// 翻译决策原因
enum class TranslationReason {
  SIMPLE_LITERAL,           // 简单字面量
  POINTER_TO_CONSTANT,      // 指向常量的指针
  POINTER_TO_FUNCTION,      // 函数指针
  POINTER_TO_MUTABLE,       // 指向可变数据的指针
  CONTAINS_RAW_POINTER,     // 包含裸指针
  CONTAINS_INT_TO_PTR,      // 包含整数到指针的转换
  COMPLEX_INITIALIZER,      // 复杂初始化器
  AGGREGATE_WITH_POINTERS,  // 包含指针的聚合类型
  NOT_CONST,                // 原始C代码就不是const
};

// 分析结果结构
struct AnalysisResult {
  RustTranslationType type;
  TranslationReason reason;
  std::string rustCode;
  std::string explanation;
};

class ConstTranslationAnalysis {
public:
  static bool hasRun;

  // 分析模块中的全局变量
  void analyzeGlobalVariables(Module &M) {
    hasRun = true;
    fprintf(stderr, "======== 开始分析全局变量翻译 ========\n");
    
    int constVarCount = 0;
    int nonConstVarCount = 0;
    
    // 收集分析结果
    std::vector<std::pair<GlobalVariable*, AnalysisResult>> results;
    
    // 遍历所有全局变量
    for (GlobalVariable &GV : M.globals()) {
      if (GV.hasName() && GV.getName().startswith(".str")) {
        // 跳过字符串字面量
        continue;
      }
      
      fprintf(stderr, "分析全局变量: %s\n", GV.getName().str().c_str());
      
      if (GV.isConstant()) {
        constVarCount++;
        AnalysisResult result = analyzeConstGlobalVar(GV);
        results.push_back(std::make_pair(&GV, result));
      } else {
        nonConstVarCount++;
        AnalysisResult result;
        result.type = RustTranslationType::STATIC_MUT;
        result.reason = TranslationReason::NOT_CONST;
        result.explanation = "原始C代码中不是const变量";
        result.rustCode = generateRustCode(GV, result.type);
        results.push_back(std::make_pair(&GV, result));
      }
    }
    
    // 输出分析结果
    fprintf(stderr, "\n======== 全局变量翻译分析结果 ========\n");
    fprintf(stderr, "共分析了 %d 个全局变量 (const: %d, 非const: %d)\n", 
            constVarCount + nonConstVarCount, constVarCount, nonConstVarCount);
    
    fprintf(stderr, "\n详细分析结果:\n");
    for (const auto &pair : results) {
      GlobalVariable *GV = pair.first;
      const AnalysisResult &result = pair.second;
      
      fprintf(stderr, "变量: %s\n", GV->getName().str().c_str());
      fprintf(stderr, "  C定义: ");
      GV->print(raw_fd_ostream(fileno(stderr), false));
      fprintf(stderr, "\n");
      
      fprintf(stderr, "  建议翻译为: %s\n", 
              result.type == RustTranslationType::CONST ? "const" :
              result.type == RustTranslationType::STATIC ? "static" : "static mut");
      fprintf(stderr, "  原因: %s\n", result.explanation.c_str());
      fprintf(stderr, "  建议Rust代码: %s\n\n", result.rustCode.c_str());
    }
    
    fprintf(stderr, "======== 分析完成 ========\n\n");
    fflush(stderr);
  }

private:
  // 分析const全局变量
  AnalysisResult analyzeConstGlobalVar(GlobalVariable &GV) {
    AnalysisResult result;
    
    // 获取变量类型和初始化器
    Type *type = GV.getValueType();
    Constant *initializer = GV.getInitializer();
    
    // 检查是否包含裸指针
    bool containsRawPointer = typeContainsPointer(type);
    
    // 检查初始化器
    if (containsRawPointer) {
      // 分析包含指针的初始化器
      return analyzePointerInitializer(GV, initializer);
    } else if (isa<ConstantInt>(initializer) || 
               isa<ConstantFP>(initializer) || 
               isa<ConstantDataArray>(initializer)) {
      // 简单字面量可以翻译为const
      result.type = RustTranslationType::CONST;
      result.reason = TranslationReason::SIMPLE_LITERAL;
      result.explanation = "简单字面量，可以安全地翻译为Rust const";
    } else if (isa<ConstantStruct>(initializer) || isa<ConstantArray>(initializer)) {
      // 分析聚合类型
      return analyzeAggregateInitializer(GV, initializer);
    } else {
      // 默认为复杂初始化器，使用static mut
      result.type = RustTranslationType::STATIC_MUT;
      result.reason = TranslationReason::COMPLEX_INITIALIZER;
      result.explanation = "复杂初始化器，保守地翻译为static mut";
    }
    
    result.rustCode = generateRustCode(GV, result.type);
    return result;
  }
  
  // 分析包含指针的初始化器
  AnalysisResult analyzePointerInitializer(GlobalVariable &GV, Constant *initializer) {
    AnalysisResult result;
    
    if (ConstantExpr *CE = dyn_cast<ConstantExpr>(initializer)) {
      if (CE->getOpcode() == Instruction::IntToPtr) {
        // 整数到指针的转换必须使用static mut
        result.type = RustTranslationType::STATIC_MUT;
        result.reason = TranslationReason::CONTAINS_INT_TO_PTR;
        result.explanation = "包含整数到指针的转换，必须使用static mut";
      } else if (CE->getOpcode() == Instruction::GetElementPtr) {
        // 检查GEP的基址是否是常量
        Value *ptrOp = CE->getOperand(0);
        if (GlobalVariable *targetGV = dyn_cast<GlobalVariable>(ptrOp)) {
          if (targetGV->isConstant()) {
            // 指向常量的GEP可以使用static
            result.type = RustTranslationType::STATIC;
            result.reason = TranslationReason::POINTER_TO_CONSTANT;
            result.explanation = "指向常量数据的指针，可以使用static";
          } else {
            // 指向非常量的GEP必须使用static mut
            result.type = RustTranslationType::STATIC_MUT;
            result.reason = TranslationReason::POINTER_TO_MUTABLE;
            result.explanation = "指向可变数据的指针，必须使用static mut";
          }
        } else {
          // 默认保守处理
          result.type = RustTranslationType::STATIC_MUT;
          result.reason = TranslationReason::COMPLEX_INITIALIZER;
          result.explanation = "复杂的GEP表达式，保守地翻译为static mut";
        }
      } else {
        // 其他常量表达式，保守处理
        result.type = RustTranslationType::STATIC_MUT;
        result.reason = TranslationReason::COMPLEX_INITIALIZER;
        result.explanation = "复杂的常量表达式，保守地翻译为static mut";
      }
    } else if (isa<Function>(initializer)) {
      // 函数指针可以使用const
      result.type = RustTranslationType::CONST;
      result.reason = TranslationReason::POINTER_TO_FUNCTION;
      result.explanation = "函数指针，可以安全地翻译为Rust const";
    } else if (GlobalVariable *targetGV = dyn_cast<GlobalVariable>(initializer)) {
      if (targetGV->isConstant()) {
        // 指向常量的指针可以使用static
        result.type = RustTranslationType::STATIC;
        result.reason = TranslationReason::POINTER_TO_CONSTANT;
        result.explanation = "指向常量数据的指针，可以使用static";
      } else {
        // 指向非常量的指针必须使用static mut
        result.type = RustTranslationType::STATIC_MUT;
        result.reason = TranslationReason::POINTER_TO_MUTABLE;
        result.explanation = "指向可变数据的指针，必须使用static mut";
      }
    } else {
      // 默认保守处理
      result.type = RustTranslationType::STATIC_MUT;
      result.reason = TranslationReason::CONTAINS_RAW_POINTER;
      result.explanation = "包含裸指针，保守地翻译为static mut";
    }
    
    result.rustCode = generateRustCode(GV, result.type);
    return result;
  }
  
  // 分析聚合类型初始化器
  AnalysisResult analyzeAggregateInitializer(GlobalVariable &GV, Constant *initializer) {
    AnalysisResult result;
    
    // 检查聚合类型中是否包含指针
    bool containsPointers = false;
    bool containsIntToPtr = false;
    bool containsPointerToMutable = false;
    
    // 递归检查聚合类型的所有元素
    if (ConstantStruct *CS = dyn_cast<ConstantStruct>(initializer)) {
      for (unsigned i = 0; i < CS->getNumOperands(); i++) {
        Constant *element = CS->getOperand(i);
        if (element->getType()->isPointerTy()) {
          containsPointers = true;
          
          // 检查指针类型
          if (ConstantExpr *CE = dyn_cast<ConstantExpr>(element)) {
            if (CE->getOpcode() == Instruction::IntToPtr) {
              containsIntToPtr = true;
            }
          } else if (GlobalVariable *targetGV = dyn_cast<GlobalVariable>(element)) {
            if (!targetGV->isConstant()) {
              containsPointerToMutable = true;
            }
          }
        } else if (isa<ConstantStruct>(element) || isa<ConstantArray>(element)) {
          // 递归检查嵌套的聚合类型
          AnalysisResult nestedResult = analyzeAggregateInitializer(GV, element);
          if (nestedResult.type == RustTranslationType::STATIC_MUT) {
            containsPointers = true;
            if (nestedResult.reason == TranslationReason::CONTAINS_INT_TO_PTR) {
              containsIntToPtr = true;
            } else if (nestedResult.reason == TranslationReason::POINTER_TO_MUTABLE) {
              containsPointerToMutable = true;
            }
          }
        }
      }
    } else if (ConstantArray *CA = dyn_cast<ConstantArray>(initializer)) {
      for (unsigned i = 0; i < CA->getNumOperands(); i++) {
        Constant *element = CA->getOperand(i);
        if (element->getType()->isPointerTy()) {
          containsPointers = true;
          
          // 检查指针类型
          if (ConstantExpr *CE = dyn_cast<ConstantExpr>(element)) {
            if (CE->getOpcode() == Instruction::IntToPtr) {
              containsIntToPtr = true;
            }
          } else if (GlobalVariable *targetGV = dyn_cast<GlobalVariable>(element)) {
            if (!targetGV->isConstant()) {
              containsPointerToMutable = true;
            }
          }
        } else if (isa<ConstantStruct>(element) || isa<ConstantArray>(element)) {
          // 递归检查嵌套的聚合类型
          AnalysisResult nestedResult = analyzeAggregateInitializer(GV, element);
          if (nestedResult.type == RustTranslationType::STATIC_MUT) {
            containsPointers = true;
            if (nestedResult.reason == TranslationReason::CONTAINS_INT_TO_PTR) {
              containsIntToPtr = true;
            } else if (nestedResult.reason == TranslationReason::POINTER_TO_MUTABLE) {
              containsPointerToMutable = true;
            }
          }
        }
      }
    }
    
    if (containsIntToPtr) {
      // 包含整数到指针的转换必须使用static mut
      result.type = RustTranslationType::STATIC_MUT;
      result.reason = TranslationReason::CONTAINS_INT_TO_PTR;
      result.explanation = "聚合类型包含整数到指针的转换，必须使用static mut";
    } else if (containsPointerToMutable) {
      // 包含指向可变数据的指针必须使用static mut
      result.type = RustTranslationType::STATIC_MUT;
      result.reason = TranslationReason::POINTER_TO_MUTABLE;
      result.explanation = "聚合类型包含指向可变数据的指针，必须使用static mut";
    } else if (containsPointers) {
      // 包含指针但都是指向常量的，可以使用static
      result.type = RustTranslationType::STATIC;
      result.reason = TranslationReason::AGGREGATE_WITH_POINTERS;
      result.explanation = "聚合类型包含指向常量的指针，可以使用static";
    } else {
      // 不包含指针的聚合类型可以使用const
      result.type = RustTranslationType::CONST;
      result.reason = TranslationReason::SIMPLE_LITERAL;
      result.explanation = "不包含指针的聚合类型，可以安全地翻译为Rust const";
    }
    
    result.rustCode = generateRustCode(GV, result.type);
    return result;
  }
  
  // 检查类型是否包含指针
  bool typeContainsPointer(Type *type) {
    if (type->isPointerTy()) {
      return true;
    } else if (StructType *ST = dyn_cast<StructType>(type)) {
      for (unsigned i = 0; i < ST->getNumElements(); i++) {
        if (typeContainsPointer(ST->getElementType(i))) {
          return true;
        }
      }
    } else if (ArrayType *AT = dyn_cast<ArrayType>(type)) {
      return typeContainsPointer(AT->getElementType());
    }
    return false;
  }
  
  // 生成建议的Rust代码
  std::string generateRustCode(GlobalVariable &GV, RustTranslationType type) {
    std::string name = GV.getName().str();
    std::string typeStr;
    
    // 简化类型字符串生成
    if (GV.getValueType()->isIntegerTy()) {
      typeStr = "libc::c_int";
    } else if (GV.getValueType()->isFloatingPointTy()) {
      typeStr = "libc::c_double";
    } else if (GV.getValueType()->isPointerTy()) {
      if (GV.getValueType()->getPointerElementType()->isIntegerTy(8)) {
        typeStr = "*const libc::c_char";
      } else {
        typeStr = "*const libc::c_void";
      }
    } else {
      typeStr = "[类型转换省略]";
    }
    
    // 简化初始化器字符串生成
    std::string initStr = "[初始化器省略]";
    
    // 根据翻译类型生成代码
    switch (type) {
      case RustTranslationType::CONST:
        return "pub const " + name + ": " + typeStr + " = " + initStr + ";";
      case RustTranslationType::STATIC:
        return "pub static " + name + ": " + typeStr + " = " + initStr + ";";
      case RustTranslationType::STATIC_MUT:
        return "pub static mut " + name + ": " + typeStr + " = " + initStr + ";";
      default:
        return "// 无法生成代码";
    }
  }
};

// 初始化静态变量
bool ConstTranslationAnalysis::hasRun = false;

// 定义模块级Pass
struct ConstTranslationModulePass : PassInfoMixin<ConstTranslationModulePass> {
  PreservedAnalyses run(Module &M, ModuleAnalysisManager &) {
    fprintf(stderr, "ConstTranslationModulePass::run 被调用\n");
    ConstTranslationAnalysis analysis;
    analysis.analyzeGlobalVariables(M);
    return PreservedAnalyses::none();
  }
};

} // end anonymous namespace

// 新Pass系统注册
extern "C" LLVM_ATTRIBUTE_WEAK ::llvm::PassPluginLibraryInfo
llvmGetPassPluginInfo() {
  fprintf(stderr, "ConstTranslation: llvmGetPassPluginInfo 被调用\n");
  return {
    LLVM_PLUGIN_API_VERSION, "ConstTranslation", LLVM_VERSION_STRING,
    [](PassBuilder &PB) {
      fprintf(stderr, "ConstTranslation: 注册Pass回调\n");
      PB.registerPipelineParsingCallback(
        [](StringRef Name, ModulePassManager &MPM,
           ArrayRef<PassBuilder::PipelineElement>) {
          if (Name == "const-translation") {
            fprintf(stderr, "添加ConstTranslationModulePass到管道\n");
            MPM.addPass(ConstTranslationModulePass());
            return true;
          }
          return false;
        }
      );
    }
  };
}

// 在程序结束时检查Pass执行状态
class PassExecutionChecker {
public:
  ~PassExecutionChecker() {
    fprintf(stderr, "程序结束，检查Pass执行状态: %s\n",
            ConstTranslationAnalysis::hasRun ? "已执行" : "未执行");
  }
};

static PassExecutionChecker checker;