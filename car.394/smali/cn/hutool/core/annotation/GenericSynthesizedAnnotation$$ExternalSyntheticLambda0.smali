.class public final synthetic Lcn/hutool/core/annotation/GenericSynthesizedAnnotation$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcn/hutool/core/annotation/AnnotationAttribute;

    invoke-interface {p1}, Lcn/hutool/core/annotation/AnnotationAttribute;->getValue()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
