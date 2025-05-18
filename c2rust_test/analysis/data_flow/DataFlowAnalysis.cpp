// dataflow_pass.cpp
// 仅使用旧 Pass 系统

// 旧 Pass 系统头文件
#include "llvm/Pass.h"
#include "llvm/IR/Function.h"
#include "llvm/IR/Module.h"
#include "llvm/IR/Instructions.h"
#include "llvm/IR/InstIterator.h"
#include "llvm/Support/raw_ostream.h"
#include "llvm/PassSupport.h"
#include "llvm/Transforms/IPO/PassManagerBuilder.h"
#include "llvm/IR/LegacyPassManager.h"

#include <map>
#include <set>

using namespace llvm;

namespace {

// 数据流分析器
class DataFlowAnalyzer {
public:
  static bool hasRunAnalysis;

  static void analyzeFunction(Function &F) {
    hasRunAnalysis = true;
    errs() << "\n===== 数据流分析开始: " << F.getName() << " =====\n";
    
    // 定义-使用关系映射
    std::map<Value*, std::set<Instruction*>> defUseChain;
    
    // 第一遍收集所有使用点
    for (auto &I : instructions(F)) {
      for (Use &U : I.operands()) {
        Value *V = U.get();
        if (isa<Instruction>(V) || isa<Argument>(V)) {
          defUseChain[V].insert(&I);
        }
      }
    }
    
    // 第二遍分析输出
    unsigned instCount = 0;
    for (auto &BB : F) {
      errs() << "\n■ 基本块: " << BB.getName() << "\n";
      instCount = 0;
      
      for (auto &I : BB) {
        ++instCount;
        errs() << "\n指令 #" << instCount << ": " << I;
        
        // 输入依赖分析
        errs() << "\n  输入依赖:";
        bool hasInput = false;
        for (auto &U : I.operands()) {
          if (auto *defInst = dyn_cast<Instruction>(U.get())) {
            errs() << "\n    ← " << *defInst;
            hasInput = true;
          }
        }
        if (!hasInput)
          errs() << " 无";

        // 输出依赖分析
        errs() << "\n  输出依赖:";
        if (defUseChain.count(&I)) {
          for (auto *userInst : defUseChain[&I])
            errs() << "\n    → " << *userInst;
        } else {
          errs() << " 无";
        }
      }
    }
    
    errs() << "\n\n===== 分析完成，共处理 " << instCount << " 条指令 =====\n";
  }
};

bool DataFlowAnalyzer::hasRunAnalysis = false;

// 旧 Pass 系统实现
struct DataFlowLegacyPass : public ModulePass {
  static char ID;
  DataFlowLegacyPass() : ModulePass(ID) {}

  bool runOnModule(Module &M) override {
    errs() << "DataFlowLegacyPass::runOnModule 被调用\n";
    for (Function &F : M) {
      if (!F.isDeclaration())
        DataFlowAnalyzer::analyzeFunction(F);
    }
    return false;
  }
};

char DataFlowLegacyPass::ID = 0;

// 注册旧式Pass - 使用更明确的注册方式
static RegisterPass<DataFlowLegacyPass> X("dataflow", "数据流分析Pass", 
                                         false /* Only looks at CFG */,
                                         false /* Analysis Pass */);

// 添加静态初始化函数，确保Pass被正确注册
static void registerDataFlowPass(const PassManagerBuilder &, legacy::PassManagerBase &PM) {
  PM.add(new DataFlowLegacyPass());
}

static RegisterStandardPasses RegisterMyPass(PassManagerBuilder::EP_EarlyAsPossible,
                                           registerDataFlowPass);

// 程序结束检查
struct PassVerifier {
  ~PassVerifier() {
    errs() << "Pass执行状态: " 
           << (DataFlowAnalyzer::hasRunAnalysis ? "成功" : "失败") << "\n";
  }
};

static PassVerifier Checker;

} // namespace
