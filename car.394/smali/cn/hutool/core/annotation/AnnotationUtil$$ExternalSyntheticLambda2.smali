.class public final synthetic Lcn/hutool/core/annotation/AnnotationUtil$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Ljava/lang/Class;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Class;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/hutool/core/annotation/AnnotationUtil$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcn/hutool/core/annotation/AnnotationUtil$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Class;

    check-cast p1, Ljava/lang/annotation/Annotation;

    invoke-static {v0, p1}, Lcn/hutool/core/annotation/AnnotationUtil;->lambda$getAllSynthesizedAnnotations$4(Ljava/lang/Class;Ljava/lang/annotation/Annotation;)Ljava/lang/annotation/Annotation;

    move-result-object p1

    return-object p1
.end method
