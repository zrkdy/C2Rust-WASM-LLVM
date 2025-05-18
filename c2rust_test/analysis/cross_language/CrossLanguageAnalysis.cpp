// 同时支持新旧Pass系统的头文件
#include "llvm/Pass.h"
#include "llvm/IR/Function.h"
#include "llvm/IR/Module.h"
#include "llvm/IR/Instructions.h"
#include "llvm/IR/InstIterator.h"
#include "llvm/IR/Constants.h"
#include "llvm/Support/raw_ostream.h"

// 新Pass系统需要的头文件
#include "llvm/IR/PassManager.h"
#include "llvm/Passes/PassBuilder.h"
#include "llvm/Passes/PassPlugin.h"

// 避免重复包含可能导致命令行选项冲突的头文件
#include <map>
#include <set>
#include <string>
#include <cstdlib>
#include <cstdio>

using namespace llvm;

namespace {

// 核心分析逻辑，被新旧Pass系统共享
class CrossLanguageAnalyzer {
public:
  // 静态标志，用于确认是否执行了检测逻辑
  static bool hasRun;

  void analyzeCrossLanguage(Module &M) {
    hasRun = true;  // 标记已执行
    fprintf(stderr, "======== 开始跨语言分析模块: %s ========\n", M.getName().str().c_str());
    
    // 记录函数来源语言（基于命名约定或元数据）
    std::map<Function*, std::string> FunctionLanguage;
    
    // 识别函数的源语言
    identifyFunctionLanguages(M, FunctionLanguage);
    
    // 分析跨语言调用
    analyzeCrossLanguageCalls(M, FunctionLanguage);
    
    fprintf(stderr, "======== 结束跨语言分析模块: %s ========\n\n", M.getName().str().c_str());
    fflush(stderr);
  }

private:
  void identifyFunctionLanguages(Module &M, std::map<Function*, std::string> &FunctionLanguage) {
    fprintf(stderr, "识别函数语言来源...\n");
    int functionCount = 0;
    
    for (Function &F : M) {
      functionCount++;
      
      // 基于命名约定或元数据判断语言
      // 这里使用简化的判断逻辑，实际应用中可能需要更复杂的规则
      if (F.getName().startswith("rust_")) {
        FunctionLanguage[&F] = "Rust";
      } else if (F.getName().startswith("cpp_") || F.getName().startswith("_Z")) {
        FunctionLanguage[&F] = "C++";
      } else {
        FunctionLanguage[&F] = "C";
      }
      
      fprintf(stderr, "  函数 #%d: %s 识别为: %s\n", 
              functionCount, F.getName().str().c_str(), FunctionLanguage[&F].c_str());
    }
    
    fprintf(stderr, "识别完成，共检查了 %d 个函数\n", functionCount);
  }
  
  void analyzeCrossLanguageCalls(Module &M, std::map<Function*, std::string> &FunctionLanguage) {
    fprintf(stderr, "分析跨语言调用...\n");
    int callCount = 0;
    int crossLangCount = 0;
    
    for (Function &F : M) {
      if (F.isDeclaration()) continue;
      
      std::string callerLang = FunctionLanguage[&F];
      
      for (auto &BB : F) {
        for (auto &I : BB) {
          if (CallInst *CI = dyn_cast<CallInst>(&I)) {
            callCount++;
            
            Function *Called = CI->getCalledFunction();
            if (!Called || Called->isIntrinsic()) continue;
            
            std::string calleeLang = FunctionLanguage[Called];
            
            fprintf(stderr, "  调用 #%d: %s -> %s\n", 
                    callCount, F.getName().str().c_str(), Called->getName().str().c_str());
            
            if (callerLang != calleeLang) {
              crossLangCount++;
              fprintf(stderr, "    ⚠️ 跨语言调用: %s -> %s\n", 
                      callerLang.c_str(), calleeLang.c_str());
              
              // 分析参数传递
              analyzeParameterPassing(CI, callerLang, calleeLang);
            }
          }
        }
      }
    }
    
    fprintf(stderr, "分析完成，共检查了 %d 个调用，发现 %d 个跨语言调用\n", 
            callCount, crossLangCount);
  }
  
  void analyzeParameterPassing(CallInst *CI, std::string callerLang, std::string calleeLang) {
    fprintf(stderr, "    参数分析:\n");
    
    for (unsigned i = 0; i < CI->getNumArgOperands(); ++i) {
      Value *Arg = CI->getArgOperand(i);
      Type *ArgType = Arg->getType();
      
      std::string typeStr;
      raw_string_ostream rso(typeStr);
      ArgType->print(rso);
      
      fprintf(stderr, "      参数 #%d: %s", i, typeStr.c_str());
      
      // 检测指针类型参数（可能涉及所有权转移）
      if (ArgType->isPointerTy()) {
        fprintf(stderr, " (指针类型 - 潜在的所有权转移)");
        
        // 如果是从Rust到C的调用，标记潜在的安全风险
        if (callerLang == "Rust" && calleeLang == "C") {
          fprintf(stderr, " [警告: Rust->C指针传递可能违反所有权规则]");
        }
        
        // 如果是从C++到C的调用，检查是否有RAII对象
        if (callerLang == "C++" && calleeLang == "C") {
          fprintf(stderr, " [警告: C++->C指针传递可能导致资源泄漏]");
        }
      }
      
      fprintf(stderr, "\n");
    }
  }
};

bool CrossLanguageAnalyzer::hasRun = false;

// 旧Pass系统实现
struct CrossLanguageLegacyPass : public ModulePass {
  static char ID;
  CrossLanguageLegacyPass() : ModulePass(ID) {}

  bool runOnModule(Module &M) override {
    fprintf(stderr, "CrossLanguageLegacyPass::runOnModule 被调用\n");
    CrossLanguageAnalyzer analyzer;
    analyzer.analyzeCrossLanguage(M);
    return false;
  }
};

char CrossLanguageLegacyPass::ID = 0;

// 注册旧Pass - 使用不同的名称避免冲突
static RegisterPass<CrossLanguageLegacyPass> X("cross-language-legacy", "跨语言调用分析Pass (Legacy)");

// 新Pass系统实现
struct CrossLanguagePass : PassInfoMixin<CrossLanguagePass> {
  PreservedAnalyses run(Module &M, ModuleAnalysisManager &) {
    fprintf(stderr, "CrossLanguagePass::run 被调用\n");
    CrossLanguageAnalyzer analyzer;
    analyzer.analyzeCrossLanguage(M);
    return PreservedAnalyses::all();
  }
};

// 程序结束检查
class PassExecutionChecker {
public:
  ~PassExecutionChecker() {
    fprintf(stderr, "程序结束，检查Pass执行状态: %s\n", 
            CrossLanguageAnalyzer::hasRun ? "已执行" : "未执行");
  }
};

static PassExecutionChecker Checker;

} // namespace

// 新Pass系统注册 - 修改为使用静态函数避免lambda捕获问题
static bool registerPipeline(StringRef Name, ModulePassManager &MPM,
                           ArrayRef<PassBuilder::PipelineElement>) {
  if (Name == "cross-language") {
    MPM.addPass(CrossLanguagePass());
    return true;
  }
  return false;
}

// 新Pass系统注册
extern "C" LLVM_ATTRIBUTE_WEAK ::llvm::PassPluginLibraryInfo
llvmGetPassPluginInfo() {
  return {
    LLVM_PLUGIN_API_VERSION, "CrossLanguageAnalysis", LLVM_VERSION_STRING,
    [](PassBuilder &PB) {
      PB.registerPipelineParsingCallback(registerPipeline);
    }
  };
}