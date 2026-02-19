.class public Lcn/hutool/core/annotation/scanner/FieldAnnotationScanner;
.super Ljava/lang/Object;
.source "FieldAnnotationScanner.java"

# interfaces
.implements Lcn/hutool/core/annotation/scanner/AnnotationScanner;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic lambda$null$0(Ljava/lang/annotation/Annotation;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method static synthetic lambda$scan$1(Ljava/util/function/Predicate;)Ljava/util/function/Predicate;
    .locals 0

    .line 39
    new-instance p0, Lcn/hutool/core/annotation/scanner/FieldAnnotationScanner$$ExternalSyntheticLambda0;

    invoke-direct {p0}, Lcn/hutool/core/annotation/scanner/FieldAnnotationScanner$$ExternalSyntheticLambda0;-><init>()V

    return-object p0
.end method


# virtual methods
.method public scan(Ljava/util/function/BiConsumer;Ljava/lang/reflect/AnnotatedElement;Ljava/util/function/Predicate;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiConsumer<",
            "Ljava/lang/Integer;",
            "Ljava/lang/annotation/Annotation;",
            ">;",
            "Ljava/lang/reflect/AnnotatedElement;",
            "Ljava/util/function/Predicate<",
            "Ljava/lang/annotation/Annotation;",
            ">;)V"
        }
    .end annotation

    .line 39
    new-instance v0, Lcn/hutool/core/annotation/scanner/FieldAnnotationScanner$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcn/hutool/core/annotation/scanner/FieldAnnotationScanner$$ExternalSyntheticLambda1;-><init>()V

    invoke-static {p3, v0}, Lcn/hutool/core/util/ObjectUtil;->defaultIfNull(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/function/Predicate;

    .line 40
    invoke-interface {p2}, Ljava/lang/reflect/AnnotatedElement;->getAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object p2

    array-length v0, p2

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p2, v2

    .line 41
    invoke-interface {v3}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v4

    invoke-static {v4}, Lcn/hutool/core/annotation/AnnotationUtil;->isNotJdkMateAnnotation(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {p3, v3}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 42
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {p1, v4, v3}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public support(Ljava/lang/reflect/AnnotatedElement;)Z
    .locals 0

    .line 27
    instance-of p1, p1, Ljava/lang/reflect/Field;

    return p1
.end method
