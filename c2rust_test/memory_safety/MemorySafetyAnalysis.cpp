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

#include <map>
#include <set>
#include <string>
#include <cstdlib>
#include <cstdio>

using namespace llvm;

namespace {
// 统一配置参数获取
bool getEnvFlag(const char* name) {
  if (const char* env = getenv(name))
    return std::string(env) != "0";
  return false;
}

// 核心分析逻辑，被新旧Pass系统共享
class MemorySafetyAnalysis {
public:
  // 静态标志，用于确认是否执行了检测逻辑
  static bool hasRun;

  void detectMemoryIssues(Function &F) {
    hasRun = true;  // 标记已执行
    fprintf(stderr, "======== 开始分析函数: %s ========\n", F.getName().str().c_str());
    
    std::set<Value*> freedPtrs;
    std::map<Value*, Instruction*> freeRecords;

    fprintf(stderr, "正在扫描指令...\n");
    int instructionCount = 0;
    bool foundAnyIssue = false;
    
    for (auto &I : instructions(F)) {
      instructionCount++;
      fprintf(stderr, "  分析指令 #%d: ", instructionCount);
      std::string instStr;
      raw_string_ostream rso(instStr);
      I.print(rso);
      fprintf(stderr, "%s\n", instStr.c_str());
      
      // 检查各种内存安全问题
      if (checkNullDeref(I))
        foundAnyIssue = true;
      
      if (checkBufferOverflow(I))
        foundAnyIssue = true;
      
      if (processFreeCalls(I, freedPtrs, freeRecords))
        foundAnyIssue = true;
      
      if (checkUseAfterFree(I, freedPtrs))
        foundAnyIssue = true;
    }
    
    fprintf(stderr, "分析完成，共检查了 %d 条指令\n", instructionCount);
    
    if (!foundAnyIssue) {
      fprintf(stderr, "✅ 未检测到任何内存安全问题\n");
    } else {
      fprintf(stderr, "⚠️ 检测到内存安全问题，请查看上述警告\n");
    }
    
    fprintf(stderr, "======== 结束分析函数: %s ========\n\n", F.getName().str().c_str());
    fflush(stderr);
  }

private:
  bool checkNullDeref(Instruction &I) {
    if (getEnvFlag("MEMSAFETY_SKIP_NULL"))
      return false;
    if (auto *LI = dyn_cast<LoadInst>(&I)) {
      if (isa<ConstantPointerNull>(LI->getPointerOperand())) {
        fprintf(stderr, "    ⚠️ 空指针解引用警告: ");
        std::string instStr;
        raw_string_ostream rso(instStr);
        I.print(rso);
        fprintf(stderr, "%s\n", instStr.c_str());
        return true;
      }
    }
    return false;
  }

  bool checkBufferOverflow(Instruction &I) {
    if (getEnvFlag("MEMSAFETY_SKIP_OVERFLOW"))
      return false;
    bool foundIssue = false;
    if (auto *GEP = dyn_cast<GetElementPtrInst>(&I)) {
      fprintf(stderr, "    分析GEP指令索引...\n");
      for (unsigned i = 0; i < GEP->getNumIndices(); i++) {
        Value *IdxValue = GEP->getOperand(i + 1);
        std::string idxStr;
        raw_string_ostream rso(idxStr);
        IdxValue->print(rso);
        fprintf(stderr, "      索引 #%d: %s\n", i, idxStr.c_str());
        
        if (auto *CI = dyn_cast<ConstantInt>(IdxValue)) {
          if (CI->getSExtValue() < 0) {
            fprintf(stderr, "    ⚠️ 缓冲区负索引警告: ");
            std::string instStr;
            raw_string_ostream rso2(instStr);
            I.print(rso2);
            fprintf(stderr, "%s\n", instStr.c_str());
            foundIssue = true;
          }
        }
      }
    }
    return foundIssue;
  }

  bool processFreeCalls(Instruction &I, std::set<Value*> &freedPtrs,
                          std::map<Value*, Instruction*> &freeRecords) {
    bool foundIssue = false;
    if (auto *CI = dyn_cast<CallInst>(&I)) {
      Function *fn = CI->getCalledFunction();
      if (fn && fn->getName() == "free" && CI->arg_size() > 0) {
        Value *ptr = CI->getArgOperand(0);
        std::string ptrStr;
        raw_string_ostream rso(ptrStr);
        ptr->print(rso);
        fprintf(stderr, "    检测到free()调用，参数: %s\n", ptrStr.c_str());
        
        // Double-free检测
        if (freeRecords.count(ptr)) {
          fprintf(stderr, "    ⚠️ Double-Free警告:\n      首次释放：");
          std::string firstFreeStr;
          raw_string_ostream rso1(firstFreeStr);
          freeRecords[ptr]->print(rso1);
          fprintf(stderr, "%s\n      二次释放：", firstFreeStr.c_str());
          
          std::string secondFreeStr;
          raw_string_ostream rso2(secondFreeStr);
          I.print(rso2);
          fprintf(stderr, "%s\n", secondFreeStr.c_str());
          foundIssue = true;
        }
        freeRecords[ptr] = &I;
        freedPtrs.insert(ptr);
      }
    }
    return foundIssue;
  }

  bool checkUseAfterFree(Instruction &I, std::set<Value*> &freedPtrs) {
    // 跳过检查的条件
    if (getEnvFlag("MEMSAFETY_SKIP_UAF"))
      return false;
    
    // 跳过free指令本身，避免将free操作误判为UAF
    if (auto *CI = dyn_cast<CallInst>(&I)) {
      Function *fn = CI->getCalledFunction();
      if (fn && fn->getName() == "free")
        return false;
    }
    
    // 只检查可能导致UAF的指令类型
    if (isa<LoadInst>(&I) || isa<StoreInst>(&I) || 
        isa<GetElementPtrInst>(&I) || isa<AtomicRMWInst>(&I) || 
        isa<AtomicCmpXchgInst>(&I)) {
      
      // 对于Load指令，检查指针操作数
      if (auto *LI = dyn_cast<LoadInst>(&I)) {
        Value *ptr = LI->getPointerOperand();
        if (freedPtrs.count(ptr)) {
          fprintf(stderr, "    ⚠️ Use-After-Free警告: ");
          std::string instStr;
          raw_string_ostream rso(instStr);
          I.print(rso);
          fprintf(stderr, "%s\n", instStr.c_str());
          return true;
        }
      }
      // 对于Store指令，检查目标地址
      else if (auto *SI = dyn_cast<StoreInst>(&I)) {
        Value *ptr = SI->getPointerOperand();
        if (freedPtrs.count(ptr)) {
          fprintf(stderr, "    ⚠️ Use-After-Free警告: ");
          std::string instStr;
          raw_string_ostream rso(instStr);
          I.print(rso);
          fprintf(stderr, "%s\n", instStr.c_str());
          return true;
        }
      }
      // 对于GEP指令，检查基址指针
      else if (auto *GEP = dyn_cast<GetElementPtrInst>(&I)) {
        Value *ptr = GEP->getPointerOperand();
        if (freedPtrs.count(ptr)) {
          fprintf(stderr, "    ⚠️ Use-After-Free警告: ");
          std::string instStr;
          raw_string_ostream rso(instStr);
          I.print(rso);
          fprintf(stderr, "%s\n", instStr.c_str());
          return true;
        }
      }
      // 对于原子操作，检查指针操作数
      else if (auto *ARMW = dyn_cast<AtomicRMWInst>(&I)) {
        Value *ptr = ARMW->getPointerOperand();
        if (freedPtrs.count(ptr)) {
          fprintf(stderr, "    ⚠️ Use-After-Free警告: ");
          std::string instStr;
          raw_string_ostream rso(instStr);
          I.print(rso);
          fprintf(stderr, "%s\n", instStr.c_str());
          return true;
        }
      }
      else if (auto *ACXI = dyn_cast<AtomicCmpXchgInst>(&I)) {
        Value *ptr = ACXI->getPointerOperand();
        if (freedPtrs.count(ptr)) {
          fprintf(stderr, "    ⚠️ Use-After-Free警告: ");
          std::string instStr;
          raw_string_ostream rso(instStr);
          I.print(rso);
          fprintf(stderr, "%s\n", instStr.c_str());
          return true;
        }
      }
    }
    
    // 检查函数调用中的指针参数
    if (auto *CI = dyn_cast<CallInst>(&I)) {
      for (unsigned i = 0; i < CI->arg_size(); i++) {
        Value *arg = CI->getArgOperand(i);
        // 只检查指针类型的参数
        if (arg->getType()->isPointerTy() && freedPtrs.count(arg)) {
          fprintf(stderr, "    ⚠️ Use-After-Free警告 (函数参数): ");
          std::string instStr;
          raw_string_ostream rso(instStr);
          I.print(rso);
          fprintf(stderr, "%s\n", instStr.c_str());
          return true;
        }
      }
    }
    
    return false;
  }
};

// 初始化静态变量
bool MemorySafetyAnalysis::hasRun = false;

// 定义模块级Pass，遍历模块中所有具有函数体的函数
struct MemorySafetyModulePass : PassInfoMixin<MemorySafetyModulePass> {
  PreservedAnalyses run(Module &M, ModuleAnalysisManager &) {
    fprintf(stderr, "MemorySafetyModulePass::run 被调用\n");
    for (Function &F : M) {
      if (!F.isDeclaration()) {
        MemorySafetyAnalysis analysis;
        analysis.detectMemoryIssues(F);
      }
    }
    return PreservedAnalyses::none();
  }
};

} // end anonymous namespace

// 新Pass系统注册为模块Pass
extern "C" LLVM_ATTRIBUTE_WEAK ::llvm::PassPluginLibraryInfo
llvmGetPassPluginInfo() {
  fprintf(stderr, "llvmGetPassPluginInfo 被调用\n");
  return {
    LLVM_PLUGIN_API_VERSION, "MemorySafety", LLVM_VERSION_STRING,
    [](PassBuilder &PB) {
      fprintf(stderr, "注册Pass回调\n");
      PB.registerPipelineParsingCallback(
        [](StringRef Name, ModulePassManager &MPM,
           ArrayRef<PassBuilder::PipelineElement>) {
          if (Name == "mem-safety") {
            fprintf(stderr, "添加MemorySafetyModulePass到管道\n");
            MPM.addPass(MemorySafetyModulePass());
            return true;
          }
          return false;
        }
      );
      PB.registerAnalysisRegistrationCallback(
        [](FunctionAnalysisManager &FAM) {
          fprintf(stderr, "注册分析管理器回调\n");
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
            MemorySafetyAnalysis::hasRun ? "已执行" : "未执行");
  }
};

static PassExecutionChecker checker;
