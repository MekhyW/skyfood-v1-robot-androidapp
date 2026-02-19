.class public final synthetic Lcn/hutool/core/annotation/scanner/MetaAnnotationScanner$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Ljava/lang/reflect/AnnotatedElement;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/reflect/AnnotatedElement;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/hutool/core/annotation/scanner/MetaAnnotationScanner$$ExternalSyntheticLambda1;->f$0:Ljava/lang/reflect/AnnotatedElement;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcn/hutool/core/annotation/scanner/MetaAnnotationScanner$$ExternalSyntheticLambda1;->f$0:Ljava/lang/reflect/AnnotatedElement;

    check-cast p1, Ljava/lang/annotation/Annotation;

    invoke-static {v0, p1}, Lcn/hutool/core/annotation/scanner/MetaAnnotationScanner;->lambda$getAnnotations$1(Ljava/lang/reflect/AnnotatedElement;Ljava/lang/annotation/Annotation;)Z

    move-result p1

    return p1
.end method
