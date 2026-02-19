.class public Lcn/hutool/core/annotation/scanner/ElementAnnotationScanner;
.super Ljava/lang/Object;
.source "ElementAnnotationScanner.java"

# interfaces
.implements Lcn/hutool/core/annotation/scanner/AnnotationScanner;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
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

    .line 38
    new-instance p0, Lcn/hutool/core/annotation/scanner/ElementAnnotationScanner$$ExternalSyntheticLambda2;

    invoke-direct {p0}, Lcn/hutool/core/annotation/scanner/ElementAnnotationScanner$$ExternalSyntheticLambda2;-><init>()V

    return-object p0
.end method

.method static synthetic lambda$scan$2(Ljava/util/function/BiConsumer;Ljava/lang/annotation/Annotation;)V
    .locals 1

    const/4 v0, 0x0

    .line 41
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0, p1}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public scan(Ljava/util/function/BiConsumer;Ljava/lang/reflect/AnnotatedElement;Ljava/util/function/Predicate;)V
    .locals 1
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

    .line 38
    new-instance v0, Lcn/hutool/core/annotation/scanner/ElementAnnotationScanner$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcn/hutool/core/annotation/scanner/ElementAnnotationScanner$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {p3, v0}, Lcn/hutool/core/util/ObjectUtil;->defaultIfNull(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/function/Predicate;

    .line 39
    invoke-interface {p2}, Ljava/lang/reflect/AnnotatedElement;->getAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object p2

    invoke-static {p2}, Ljava/util/stream/Stream;->of([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p2

    .line 40
    invoke-interface {p2, p3}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p2

    new-instance p3, Lcn/hutool/core/annotation/scanner/ElementAnnotationScanner$$ExternalSyntheticLambda1;

    invoke-direct {p3, p1}, Lcn/hutool/core/annotation/scanner/ElementAnnotationScanner$$ExternalSyntheticLambda1;-><init>(Ljava/util/function/BiConsumer;)V

    .line 41
    invoke-interface {p2, p3}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public support(Ljava/lang/reflect/AnnotatedElement;)Z
    .locals 0

    .line 26
    invoke-static {p1}, Lcn/hutool/core/util/ObjectUtil;->isNotNull(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
