.class public final synthetic Lcn/hutool/core/annotation/SynthesizedAnnotationProxy$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/BiFunction;


# instance fields
.field public final synthetic f$0:Lcn/hutool/core/annotation/SynthesizedAnnotationProxy;


# direct methods
.method public synthetic constructor <init>(Lcn/hutool/core/annotation/SynthesizedAnnotationProxy;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/hutool/core/annotation/SynthesizedAnnotationProxy$$ExternalSyntheticLambda3;->f$0:Lcn/hutool/core/annotation/SynthesizedAnnotationProxy;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcn/hutool/core/annotation/SynthesizedAnnotationProxy$$ExternalSyntheticLambda3;->f$0:Lcn/hutool/core/annotation/SynthesizedAnnotationProxy;

    check-cast p1, Ljava/lang/reflect/Method;

    check-cast p2, [Ljava/lang/Object;

    invoke-virtual {v0, p1, p2}, Lcn/hutool/core/annotation/SynthesizedAnnotationProxy;->lambda$loadMethods$11$cn-hutool-core-annotation-SynthesizedAnnotationProxy(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
