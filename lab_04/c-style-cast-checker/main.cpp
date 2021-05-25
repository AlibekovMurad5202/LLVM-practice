#include <iostream>
#include <sstream>

#include <llvm/Support/CommandLine.h>
#include <llvm/Support/Error.h>

#include <clang/ASTMatchers/ASTMatchFinder.h>
#include <clang/ASTMatchers/ASTMatchers.h>
#include <clang/Basic/Diagnostic.h>
#include <clang/Frontend/FrontendActions.h>
#include <clang/Tooling/CommonOptionsParser.h>
#include <clang/Tooling/Tooling.h>
#include <clang/Rewrite/Core/Rewriter.h>
#include <clang/Frontend/CompilerInstance.h>

using namespace clang;
using namespace clang::ast_matchers;
using namespace clang::tooling;

class CastCallBack : public MatchFinder::MatchCallback {
public:
    CastCallBack(Rewriter& rewriter) : rewriter_(rewriter) {
        // My code goes here
    };

    void run(const MatchFinder::MatchResult &Result) override {
        // My code goes here

        // Find where C-style "cast"
        const auto *CastExpr = Result.Nodes.getNodeAs<CStyleCastExpr>("cast");

        // The range of characters to replace
        auto ReplaceRange = CharSourceRange::getCharRange(CastExpr->getLParenLoc(),
                                  CastExpr->getSubExprAsWritten()->getBeginLoc());

        // For work with source files
        SourceManager &SM = *Result.SourceManager;

        // Type of expression to replace (..._cast<DestTypeString>(...)...)
        StringRef DestTypeString = Lexer::getSourceText(CharSourceRange::getTokenRange(
                                   CastExpr->getLParenLoc().getLocWithOffset(1),
                                   CastExpr->getRParenLoc().getLocWithOffset(-1)),
                                   SM, LangOptions());

        // New type of Cpp-style cast
        StringRef CastType("static_cast");

        // New cast text
        auto NewCastText = (CastType + "<" + DestTypeString + ">").str();

        // Expression without casts
        const auto* SubExpr = CastExpr->getSubExprAsWritten()->IgnoreImpCasts();

        // We don't need to add brackets, if expression is parenthesized
        if (!isa<ParenExpr>(SubExpr)) {
            // Left bracket
            NewCastText.push_back('(');

            // Find end of SubExpr (expression without casts)
            auto EndSubExpr = Lexer::getLocForEndOfToken(SubExpr->getEndLoc(), 0, SM, LangOptions());

            // Right bracket
            rewriter_.InsertText(EndSubExpr, ")");
        }

        // Finally replaced
        rewriter_.ReplaceText(ReplaceRange, NewCastText);
    }
private:
    Rewriter& rewriter_;
};

class MyASTConsumer : public ASTConsumer {
public:
    MyASTConsumer(Rewriter &rewriter) : callback_(rewriter) {
        matcher_.addMatcher(
                cStyleCastExpr(unless(isExpansionInSystemHeader())).bind("cast"), &callback_);
    }

    void HandleTranslationUnit(ASTContext &Context) override {
        matcher_.matchAST(Context);
    }

private:
    CastCallBack callback_;
    MatchFinder matcher_;
};

class CStyleCheckerFrontendAction : public ASTFrontendAction {
public:
    CStyleCheckerFrontendAction() = default;
    
    void EndSourceFileAction() override {
        rewriter_.getEditBuffer(rewriter_.getSourceMgr().getMainFileID())
            .write(llvm::outs());
    }

    std::unique_ptr<ASTConsumer> CreateASTConsumer(CompilerInstance &CI, StringRef /* file */) override {
        rewriter_.setSourceMgr(CI.getSourceManager(), CI.getLangOpts());
        return std::make_unique<MyASTConsumer>(rewriter_);
    }

private:
    Rewriter rewriter_;
};

static llvm::cl::OptionCategory CastMatcherCategory("cast-matcher options");

int main(int argc, const char **argv) {
    //auto Parser = llvm::ExitOnError()(CommonOptionsParser::create(argc, argv, CastMatcherCategory));

    CommonOptionsParser Parser(argc, argv, CastMatcherCategory);
    ClangTool Tool(Parser.getCompilations(), Parser.getSourcePathList());
    return Tool.run(newFrontendActionFactory<CStyleCheckerFrontendAction>().get());
}
