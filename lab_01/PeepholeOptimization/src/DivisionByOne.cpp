#include "llvm/Pass.h"
#include "llvm/IR/Function.h"
#include "llvm/IR/Constants.h"
#include "llvm/IR/InstIterator.h"
#include "llvm/Support/raw_ostream.h"

#include "llvm/IR/LegacyPassManager.h"
#include "llvm/Transforms/IPO/PassManagerBuilder.h"

using namespace llvm;

namespace {

struct DivisionByOne : public FunctionPass {
    static char ID;
    DivisionByOne() : FunctionPass(ID) {}

    bool runOnFunction(Function& function) override {
        errs() << "**** [PEEPHOLE OPTIMIZATION] DIVISION BY ONE ****\n";
        errs() << "**** Function: " << function.getName() << '\n';

        bool changed = false;
        for (auto ii = inst_begin(function), ie = inst_end(function); ii != ie;) {
            auto instruction = &*ii;
            ++ii;

            if (!isTrivialDiv(instruction)) {
                continue;
            }

            if (!instruction->use_empty()) {
                replaceWithArgument(instruction);
            }

            instruction->eraseFromParent();
            changed = true;
        }

        return changed;
    }

private:
    bool isTrivialDiv(Instruction const* instruction) const {
        return isBinaryDiv(instruction) && isRightOne(instruction);
    }

    bool isBinaryDiv(Instruction const* instruction) const {
        return instruction->getOpcode() == Instruction::SDiv && instruction->getNumOperands() == 2;
    }
    
    bool isRightOne(Instruction const* instruction) const {
        return isOne(instruction->getOperand(1));
    }

    bool isOne(Value const* operand) const {
        auto const constant = dyn_cast<ConstantInt>(operand);
        return constant && constant->isOne();
    }

    void replaceWithArgument(Instruction* instruction) const {
        auto const& lhs = instruction->getOperand(0);
        instruction->replaceAllUsesWith(lhs);
    }
};

}

char DivisionByOne::ID = 0;
static RegisterPass<DivisionByOne> pass(
    "DivisionByOne",
    "Peephole Optimization Pass (Division By One)",
    false,
    false
);

static RegisterStandardPasses std_pass(
    PassManagerBuilder::EP_EarlyAsPossible,
    [](const PassManagerBuilder& builder, legacy::PassManagerBase& manager) { manager.add(new DivisionByOne()); }
);
