.class public final synthetic Lcn/hutool/extra/tokenizer/engine/TokenizerFactory$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcn/hutool/core/lang/func/Func0;
.implements Ljava/io/Serializable;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 1

    invoke-static {}, Lcn/hutool/extra/tokenizer/engine/TokenizerFactory;->create()Lcn/hutool/extra/tokenizer/TokenizerEngine;

    move-result-object v0

    return-object v0
.end method
