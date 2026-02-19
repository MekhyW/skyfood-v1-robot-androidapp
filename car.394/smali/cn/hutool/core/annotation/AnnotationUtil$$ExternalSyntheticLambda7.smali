.class public final synthetic Lcn/hutool/core/annotation/AnnotationUtil$$ExternalSyntheticLambda7;
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

    check-cast p1, [Ljava/lang/annotation/Annotation;

    invoke-static {p1}, Lcn/hutool/core/annotation/AnnotationUtil;->aggregatingFromAnnotationWithMeta([Ljava/lang/annotation/Annotation;)Lcn/hutool/core/annotation/SynthesizedAggregateAnnotation;

    move-result-object p1

    return-object p1
.end method
