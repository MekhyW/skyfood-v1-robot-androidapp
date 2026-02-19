.class public final synthetic Lcn/hutool/core/annotation/GenericSynthesizedAnnotation$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Lcn/hutool/core/annotation/GenericSynthesizedAnnotation;


# direct methods
.method public synthetic constructor <init>(Lcn/hutool/core/annotation/GenericSynthesizedAnnotation;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/hutool/core/annotation/GenericSynthesizedAnnotation$$ExternalSyntheticLambda3;->f$0:Lcn/hutool/core/annotation/GenericSynthesizedAnnotation;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcn/hutool/core/annotation/GenericSynthesizedAnnotation$$ExternalSyntheticLambda3;->f$0:Lcn/hutool/core/annotation/GenericSynthesizedAnnotation;

    check-cast p1, Ljava/lang/reflect/Method;

    invoke-virtual {v0, p1}, Lcn/hutool/core/annotation/GenericSynthesizedAnnotation;->lambda$loadAttributeMethods$0$cn-hutool-core-annotation-GenericSynthesizedAnnotation(Ljava/lang/reflect/Method;)Lcn/hutool/core/annotation/AnnotationAttribute;

    move-result-object p1

    return-object p1
.end method
