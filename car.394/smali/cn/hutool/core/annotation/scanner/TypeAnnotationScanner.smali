.class public Lcn/hutool/core/annotation/scanner/TypeAnnotationScanner;
.super Lcn/hutool/core/annotation/scanner/AbstractTypeAnnotationScanner;
.source "TypeAnnotationScanner.java"

# interfaces
.implements Lcn/hutool/core/annotation/scanner/AnnotationScanner;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/hutool/core/annotation/scanner/TypeAnnotationScanner$JdkProxyClassConverter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/hutool/core/annotation/scanner/AbstractTypeAnnotationScanner<",
        "Lcn/hutool/core/annotation/scanner/TypeAnnotationScanner;",
        ">;",
        "Lcn/hutool/core/annotation/scanner/AnnotationScanner;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 35
    new-instance v0, Lcn/hutool/core/annotation/scanner/TypeAnnotationScanner$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcn/hutool/core/annotation/scanner/TypeAnnotationScanner$$ExternalSyntheticLambda0;-><init>()V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Class;

    invoke-static {v1}, Lcn/hutool/core/collection/CollUtil;->newLinkedHashSet([Ljava/lang/Object;)Ljava/util/LinkedHashSet;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {p0, v2, v2, v0, v1}, Lcn/hutool/core/annotation/scanner/TypeAnnotationScanner;-><init>(ZZLjava/util/function/Predicate;Ljava/util/Set;)V

    return-void
.end method

.method public constructor <init>(ZZLjava/util/function/Predicate;Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ",
            "Ljava/util/function/Predicate<",
            "Ljava/lang/Class<",
            "*>;>;",
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "*>;>;)V"
        }
    .end annotation

    .line 28
    invoke-direct {p0, p1, p2, p3, p4}, Lcn/hutool/core/annotation/scanner/AbstractTypeAnnotationScanner;-><init>(ZZLjava/util/function/Predicate;Ljava/util/Set;)V

    return-void
.end method

.method static synthetic lambda$new$0(Ljava/lang/Class;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method protected getAnnotationsFromTargetClass(Ljava/lang/reflect/AnnotatedElement;ILjava/lang/Class;)[Ljava/lang/annotation/Annotation;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/AnnotatedElement;",
            "I",
            "Ljava/lang/Class<",
            "*>;)[",
            "Ljava/lang/annotation/Annotation;"
        }
    .end annotation

    .line 70
    invoke-virtual {p3}, Ljava/lang/Class;->getAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object p1

    return-object p1
.end method

.method protected getClassFormAnnotatedElement(Ljava/lang/reflect/AnnotatedElement;)Ljava/lang/Class;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/AnnotatedElement;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 57
    check-cast p1, Ljava/lang/Class;

    return-object p1
.end method

.method public bridge synthetic setIncludeInterfaces(Z)Lcn/hutool/core/annotation/scanner/AbstractTypeAnnotationScanner;
    .locals 0

    .line 17
    invoke-virtual {p0, p1}, Lcn/hutool/core/annotation/scanner/TypeAnnotationScanner;->setIncludeInterfaces(Z)Lcn/hutool/core/annotation/scanner/TypeAnnotationScanner;

    move-result-object p1

    return-object p1
.end method

.method public setIncludeInterfaces(Z)Lcn/hutool/core/annotation/scanner/TypeAnnotationScanner;
    .locals 0

    .line 92
    invoke-super {p0, p1}, Lcn/hutool/core/annotation/scanner/AbstractTypeAnnotationScanner;->setIncludeInterfaces(Z)Lcn/hutool/core/annotation/scanner/AbstractTypeAnnotationScanner;

    move-result-object p1

    check-cast p1, Lcn/hutool/core/annotation/scanner/TypeAnnotationScanner;

    return-object p1
.end method

.method public bridge synthetic setIncludeSuperClass(Z)Lcn/hutool/core/annotation/scanner/AbstractTypeAnnotationScanner;
    .locals 0

    .line 17
    invoke-virtual {p0, p1}, Lcn/hutool/core/annotation/scanner/TypeAnnotationScanner;->setIncludeSuperClass(Z)Lcn/hutool/core/annotation/scanner/TypeAnnotationScanner;

    move-result-object p1

    return-object p1
.end method

.method public setIncludeSuperClass(Z)Lcn/hutool/core/annotation/scanner/TypeAnnotationScanner;
    .locals 0

    .line 81
    invoke-super {p0, p1}, Lcn/hutool/core/annotation/scanner/AbstractTypeAnnotationScanner;->setIncludeSuperClass(Z)Lcn/hutool/core/annotation/scanner/AbstractTypeAnnotationScanner;

    move-result-object p1

    check-cast p1, Lcn/hutool/core/annotation/scanner/TypeAnnotationScanner;

    return-object p1
.end method

.method public support(Ljava/lang/reflect/AnnotatedElement;)Z
    .locals 0

    .line 46
    instance-of p1, p1, Ljava/lang/Class;

    return p1
.end method
