.class public final synthetic Lcn/hutool/core/text/StrSplitter$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Z


# direct methods
.method public synthetic constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcn/hutool/core/text/StrSplitter$$ExternalSyntheticLambda1;->f$0:Z

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-boolean v0, p0, Lcn/hutool/core/text/StrSplitter$$ExternalSyntheticLambda1;->f$0:Z

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, p1}, Lcn/hutool/core/text/StrSplitter;->lambda$trimFunc$0(ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
