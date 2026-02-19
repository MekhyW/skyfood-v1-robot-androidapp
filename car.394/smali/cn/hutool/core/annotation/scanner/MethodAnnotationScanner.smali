.class public Lcn/hutool/core/annotation/scanner/MethodAnnotationScanner;
.super Lcn/hutool/core/annotation/scanner/AbstractTypeAnnotationScanner;
.source "MethodAnnotationScanner.java"

# interfaces
.implements Lcn/hutool/core/annotation/scanner/AnnotationScanner;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/hutool/core/annotation/scanner/AbstractTypeAnnotationScanner<",
        "Lcn/hutool/core/annotation/scanner/MethodAnnotationScanner;",
        ">;",
        "Lcn/hutool/core/annotation/scanner/AnnotationScanner;"
    }
.end annotation


# direct methods
.method public static synthetic $r8$lambda$LmjjMqFbXMD-50_28HgRPCnIobY([Ljava/lang/Object;)Ljava/util/stream/Stream;
    .locals 0

    invoke-static {p0}, Ljava/util/stream/Stream;->of([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 26
    invoke-direct {p0, v0}, Lcn/hutool/core/annotation/scanner/MethodAnnotationScanner;-><init>(Z)V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 2

    .line 35
    new-instance v0, Lcn/hutool/core/annotation/scanner/MethodAnnotationScanner$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcn/hutool/core/annotation/scanner/MethodAnnotationScanner$$ExternalSyntheticLambda0;-><init>()V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Class;

    invoke-static {v1}, Lcn/hutool/core/collection/CollUtil;->newLinkedHashSet([Ljava/lang/Object;)Ljava/util/LinkedHashSet;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcn/hutool/core/annotation/scanner/MethodAnnotationScanner;-><init>(ZLjava/util/function/Predicate;Ljava/util/Set;)V

    return-void
.end method

.method public constructor <init>(ZLjava/util/function/Predicate;Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/function/Predicate<",
            "Ljava/lang/Class<",
            "*>;>;",
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "*>;>;)V"
        }
    .end annotation

    .line 46
    invoke-direct {p0, p1, p1, p2, p3}, Lcn/hutool/core/annotation/scanner/AbstractTypeAnnotationScanner;-><init>(ZZLjava/util/function/Predicate;Ljava/util/Set;)V

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

    .line 58
    invoke-direct {p0, p1, p2, p3, p4}, Lcn/hutool/core/annotation/scanner/AbstractTypeAnnotationScanner;-><init>(ZZLjava/util/function/Predicate;Ljava/util/Set;)V

    return-void
.end method

.method private hasSameSignature(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)Z
    .locals 5

    .line 119
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/hutool/core/util/StrUtil;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 122
    :cond_0
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v0

    .line 123
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v2

    .line 124
    array-length v3, v0

    array-length v4, v2

    if-eq v3, v4, :cond_1

    return v1

    .line 127
    :cond_1
    invoke-static {v0, v2}, Lcn/hutool/core/util/ArrayUtil;->containsAll([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    return v1

    .line 130
    :cond_2
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object p1

    invoke-static {p2, p1}, Lcn/hutool/core/util/ClassUtil;->isAssignable(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result p1

    return p1
.end method

.method static synthetic lambda$getAnnotationsFromTargetClass$1(Ljava/lang/reflect/Method;)Z
    .locals 0

    .line 96
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->isBridge()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method static synthetic lambda$getAnnotationsFromTargetClass$3(I)[Ljava/lang/annotation/Annotation;
    .locals 0

    .line 100
    new-array p0, p0, [Ljava/lang/annotation/Annotation;

    return-object p0
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

    .line 94
    check-cast p1, Ljava/lang/reflect/Method;

    .line 95
    invoke-static {p3}, Lcn/hutool/core/util/ClassUtil;->getDeclaredMethods(Ljava/lang/Class;)[Ljava/lang/reflect/Method;

    move-result-object p2

    invoke-static {p2}, Ljava/util/stream/Stream;->of([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p2

    new-instance p3, Lcn/hutool/core/annotation/scanner/MethodAnnotationScanner$$ExternalSyntheticLambda1;

    invoke-direct {p3}, Lcn/hutool/core/annotation/scanner/MethodAnnotationScanner$$ExternalSyntheticLambda1;-><init>()V

    .line 96
    invoke-interface {p2, p3}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p2

    new-instance p3, Lcn/hutool/core/annotation/scanner/MethodAnnotationScanner$$ExternalSyntheticLambda2;

    invoke-direct {p3, p0, p1}, Lcn/hutool/core/annotation/scanner/MethodAnnotationScanner$$ExternalSyntheticLambda2;-><init>(Lcn/hutool/core/annotation/scanner/MethodAnnotationScanner;Ljava/lang/reflect/Method;)V

    .line 97
    invoke-interface {p2, p3}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance p2, Lcn/hutool/core/annotation/scanner/MethodAnnotationScanner$$ExternalSyntheticLambda3;

    invoke-direct {p2}, Lcn/hutool/core/annotation/scanner/MethodAnnotationScanner$$ExternalSyntheticLambda3;-><init>()V

    .line 98
    invoke-interface {p1, p2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance p2, Lcn/hutool/core/annotation/scanner/MethodAnnotationScanner$$ExternalSyntheticLambda4;

    invoke-direct {p2}, Lcn/hutool/core/annotation/scanner/MethodAnnotationScanner$$ExternalSyntheticLambda4;-><init>()V

    .line 99
    invoke-interface {p1, p2}, Ljava/util/stream/Stream;->flatMap(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance p2, Lcn/hutool/core/annotation/scanner/MethodAnnotationScanner$$ExternalSyntheticLambda5;

    invoke-direct {p2}, Lcn/hutool/core/annotation/scanner/MethodAnnotationScanner$$ExternalSyntheticLambda5;-><init>()V

    .line 100
    invoke-interface {p1, p2}, Ljava/util/stream/Stream;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/annotation/Annotation;

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

    .line 81
    check-cast p1, Ljava/lang/reflect/Method;

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object p1

    return-object p1
.end method

.method synthetic lambda$getAnnotationsFromTargetClass$2$cn-hutool-core-annotation-scanner-MethodAnnotationScanner(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)Z
    .locals 0

    .line 97
    invoke-direct {p0, p1, p2}, Lcn/hutool/core/annotation/scanner/MethodAnnotationScanner;->hasSameSignature(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)Z

    move-result p1

    return p1
.end method

.method public setScanSameSignatureMethod(Z)Lcn/hutool/core/annotation/scanner/MethodAnnotationScanner;
    .locals 0

    .line 110
    invoke-virtual {p0, p1}, Lcn/hutool/core/annotation/scanner/MethodAnnotationScanner;->setIncludeInterfaces(Z)Lcn/hutool/core/annotation/scanner/AbstractTypeAnnotationScanner;

    .line 111
    invoke-virtual {p0, p1}, Lcn/hutool/core/annotation/scanner/MethodAnnotationScanner;->setIncludeSuperClass(Z)Lcn/hutool/core/annotation/scanner/AbstractTypeAnnotationScanner;

    return-object p0
.end method

.method public support(Ljava/lang/reflect/AnnotatedElement;)Z
    .locals 0

    .line 69
    instance-of p1, p1, Ljava/lang/reflect/Method;

    return p1
.end method
