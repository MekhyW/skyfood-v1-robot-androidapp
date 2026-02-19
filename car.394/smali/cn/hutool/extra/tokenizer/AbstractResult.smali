.class public abstract Lcn/hutool/extra/tokenizer/AbstractResult;
.super Lcn/hutool/core/collection/ComputeIter;
.source "AbstractResult.java"

# interfaces
.implements Lcn/hutool/extra/tokenizer/Result;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/hutool/core/collection/ComputeIter<",
        "Lcn/hutool/extra/tokenizer/Word;",
        ">;",
        "Lcn/hutool/extra/tokenizer/Result;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Lcn/hutool/core/collection/ComputeIter;-><init>()V

    return-void
.end method


# virtual methods
.method protected computeNext()Lcn/hutool/extra/tokenizer/Word;
    .locals 1

    .line 24
    invoke-virtual {p0}, Lcn/hutool/extra/tokenizer/AbstractResult;->nextWord()Lcn/hutool/extra/tokenizer/Word;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic computeNext()Ljava/lang/Object;
    .locals 1

    .line 14
    invoke-virtual {p0}, Lcn/hutool/extra/tokenizer/AbstractResult;->computeNext()Lcn/hutool/extra/tokenizer/Word;

    move-result-object v0

    return-object v0
.end method

.method protected abstract nextWord()Lcn/hutool/extra/tokenizer/Word;
.end method
