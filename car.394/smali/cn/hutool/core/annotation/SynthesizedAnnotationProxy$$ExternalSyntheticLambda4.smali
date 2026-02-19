.class public final synthetic Lcn/hutool/core/annotation/SynthesizedAnnotationProxy$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Ljava/lang/reflect/Method;

.field public final synthetic f$1:[Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/reflect/Method;[Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/hutool/core/annotation/SynthesizedAnnotationProxy$$ExternalSyntheticLambda4;->f$0:Ljava/lang/reflect/Method;

    iput-object p2, p0, Lcn/hutool/core/annotation/SynthesizedAnnotationProxy$$ExternalSyntheticLambda4;->f$1:[Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcn/hutool/core/annotation/SynthesizedAnnotationProxy$$ExternalSyntheticLambda4;->f$0:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lcn/hutool/core/annotation/SynthesizedAnnotationProxy$$ExternalSyntheticLambda4;->f$1:[Ljava/lang/Object;

    check-cast p1, Ljava/util/function/BiFunction;

    invoke-static {v0, v1, p1}, Lcn/hutool/core/annotation/SynthesizedAnnotationProxy;->lambda$invoke$0(Ljava/lang/reflect/Method;[Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
