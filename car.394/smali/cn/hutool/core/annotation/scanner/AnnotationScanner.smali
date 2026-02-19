.class public interface abstract Lcn/hutool/core/annotation/scanner/AnnotationScanner;
.super Ljava/lang/Object;
.source "AnnotationScanner.java"


# static fields
.field public static final DIRECTLY:Lcn/hutool/core/annotation/scanner/AnnotationScanner;

.field public static final DIRECTLY_AND_META_ANNOTATION:Lcn/hutool/core/annotation/scanner/AnnotationScanner;

.field public static final INTERFACE:Lcn/hutool/core/annotation/scanner/AnnotationScanner;

.field public static final INTERFACE_AND_META_ANNOTATION:Lcn/hutool/core/annotation/scanner/AnnotationScanner;

.field public static final NOTHING:Lcn/hutool/core/annotation/scanner/AnnotationScanner;

.field public static final SUPERCLASS:Lcn/hutool/core/annotation/scanner/AnnotationScanner;

.field public static final SUPERCLASS_AND_META_ANNOTATION:Lcn/hutool/core/annotation/scanner/AnnotationScanner;

.field public static final TYPE_HIERARCHY:Lcn/hutool/core/annotation/scanner/AnnotationScanner;

.field public static final TYPE_HIERARCHY_AND_META_ANNOTATION:Lcn/hutool/core/annotation/scanner/AnnotationScanner;


# direct methods
.method public static synthetic $r8$lambda$PRiLfU600GauecnnfoXHdr50XCg()Ljava/util/List;
    .locals 1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 53
    new-instance v0, Lcn/hutool/core/annotation/scanner/EmptyAnnotationScanner;

    invoke-direct {v0}, Lcn/hutool/core/annotation/scanner/EmptyAnnotationScanner;-><init>()V

    sput-object v0, Lcn/hutool/core/annotation/scanner/AnnotationScanner;->NOTHING:Lcn/hutool/core/annotation/scanner/AnnotationScanner;

    .line 58
    new-instance v0, Lcn/hutool/core/annotation/scanner/GenericAnnotationScanner;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1}, Lcn/hutool/core/annotation/scanner/GenericAnnotationScanner;-><init>(ZZZ)V

    sput-object v0, Lcn/hutool/core/annotation/scanner/AnnotationScanner;->DIRECTLY:Lcn/hutool/core/annotation/scanner/AnnotationScanner;

    .line 63
    new-instance v0, Lcn/hutool/core/annotation/scanner/GenericAnnotationScanner;

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1, v1}, Lcn/hutool/core/annotation/scanner/GenericAnnotationScanner;-><init>(ZZZ)V

    sput-object v0, Lcn/hutool/core/annotation/scanner/AnnotationScanner;->DIRECTLY_AND_META_ANNOTATION:Lcn/hutool/core/annotation/scanner/AnnotationScanner;

    .line 68
    new-instance v0, Lcn/hutool/core/annotation/scanner/GenericAnnotationScanner;

    invoke-direct {v0, v1, v2, v1}, Lcn/hutool/core/annotation/scanner/GenericAnnotationScanner;-><init>(ZZZ)V

    sput-object v0, Lcn/hutool/core/annotation/scanner/AnnotationScanner;->SUPERCLASS:Lcn/hutool/core/annotation/scanner/AnnotationScanner;

    .line 73
    new-instance v0, Lcn/hutool/core/annotation/scanner/GenericAnnotationScanner;

    invoke-direct {v0, v2, v2, v1}, Lcn/hutool/core/annotation/scanner/GenericAnnotationScanner;-><init>(ZZZ)V

    sput-object v0, Lcn/hutool/core/annotation/scanner/AnnotationScanner;->SUPERCLASS_AND_META_ANNOTATION:Lcn/hutool/core/annotation/scanner/AnnotationScanner;

    .line 78
    new-instance v0, Lcn/hutool/core/annotation/scanner/GenericAnnotationScanner;

    invoke-direct {v0, v1, v1, v2}, Lcn/hutool/core/annotation/scanner/GenericAnnotationScanner;-><init>(ZZZ)V

    sput-object v0, Lcn/hutool/core/annotation/scanner/AnnotationScanner;->INTERFACE:Lcn/hutool/core/annotation/scanner/AnnotationScanner;

    .line 83
    new-instance v0, Lcn/hutool/core/annotation/scanner/GenericAnnotationScanner;

    invoke-direct {v0, v2, v1, v2}, Lcn/hutool/core/annotation/scanner/GenericAnnotationScanner;-><init>(ZZZ)V

    sput-object v0, Lcn/hutool/core/annotation/scanner/AnnotationScanner;->INTERFACE_AND_META_ANNOTATION:Lcn/hutool/core/annotation/scanner/AnnotationScanner;

    .line 88
    new-instance v0, Lcn/hutool/core/annotation/scanner/GenericAnnotationScanner;

    invoke-direct {v0, v1, v2, v2}, Lcn/hutool/core/annotation/scanner/GenericAnnotationScanner;-><init>(ZZZ)V

    sput-object v0, Lcn/hutool/core/annotation/scanner/AnnotationScanner;->TYPE_HIERARCHY:Lcn/hutool/core/annotation/scanner/AnnotationScanner;

    .line 93
    new-instance v0, Lcn/hutool/core/annotation/scanner/GenericAnnotationScanner;

    invoke-direct {v0, v2, v2, v2}, Lcn/hutool/core/annotation/scanner/GenericAnnotationScanner;-><init>(ZZZ)V

    sput-object v0, Lcn/hutool/core/annotation/scanner/AnnotationScanner;->TYPE_HIERARCHY_AND_META_ANNOTATION:Lcn/hutool/core/annotation/scanner/AnnotationScanner;

    return-void
.end method

.method public static synthetic lambda$getAnnotations$3(Ljava/util/List;Ljava/lang/Integer;Ljava/lang/annotation/Annotation;)V
    .locals 0

    .line 152
    invoke-interface {p0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static synthetic lambda$null$4(Ljava/lang/annotation/Annotation;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public static synthetic lambda$scan$5(Ljava/util/function/Predicate;)Ljava/util/function/Predicate;
    .locals 0

    .line 177
    new-instance p0, Lcn/hutool/core/annotation/scanner/AnnotationScanner$$ExternalSyntheticLambda7;

    invoke-direct {p0}, Lcn/hutool/core/annotation/scanner/AnnotationScanner$$ExternalSyntheticLambda7;-><init>()V

    return-object p0
.end method

.method public static synthetic lambda$scanByAllSupported$2(Ljava/lang/reflect/AnnotatedElement;Lcn/hutool/core/annotation/scanner/AnnotationScanner;)Ljava/util/List;
    .locals 0

    .line 127
    invoke-interface {p1, p0}, Lcn/hutool/core/annotation/scanner/AnnotationScanner;->getAnnotationsIfSupport(Ljava/lang/reflect/AnnotatedElement;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$scanByAnySupported$0(Ljava/lang/reflect/AnnotatedElement;Lcn/hutool/core/annotation/scanner/AnnotationScanner;)Z
    .locals 0

    .line 109
    invoke-interface {p1, p0}, Lcn/hutool/core/annotation/scanner/AnnotationScanner;->support(Ljava/lang/reflect/AnnotatedElement;)Z

    move-result p0

    return p0
.end method

.method public static synthetic lambda$scanByAnySupported$1(Ljava/lang/reflect/AnnotatedElement;Lcn/hutool/core/annotation/scanner/AnnotationScanner;)Ljava/util/List;
    .locals 0

    .line 111
    invoke-interface {p1, p0}, Lcn/hutool/core/annotation/scanner/AnnotationScanner;->getAnnotations(Ljava/lang/reflect/AnnotatedElement;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static varargs scanByAllSupported(Ljava/lang/reflect/AnnotatedElement;[Lcn/hutool/core/annotation/scanner/AnnotationScanner;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/AnnotatedElement;",
            "[",
            "Lcn/hutool/core/annotation/scanner/AnnotationScanner;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/annotation/Annotation;",
            ">;"
        }
    .end annotation

    .line 123
    invoke-static {p0}, Lcn/hutool/core/util/ObjectUtil;->isNull(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcn/hutool/core/util/ArrayUtil;->isNotEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 124
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 126
    :cond_0
    invoke-static {p1}, Ljava/util/stream/Stream;->of([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lcn/hutool/core/annotation/scanner/AnnotationScanner$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0}, Lcn/hutool/core/annotation/scanner/AnnotationScanner$$ExternalSyntheticLambda4;-><init>(Ljava/lang/reflect/AnnotatedElement;)V

    .line 127
    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p1, Lcn/hutool/core/annotation/scanner/AnnotationScanner$$ExternalSyntheticLambda5;

    invoke-direct {p1}, Lcn/hutool/core/annotation/scanner/AnnotationScanner$$ExternalSyntheticLambda5;-><init>()V

    .line 128
    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->flatMap(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    .line 129
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method public static varargs scanByAnySupported(Ljava/lang/reflect/AnnotatedElement;[Lcn/hutool/core/annotation/scanner/AnnotationScanner;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/AnnotatedElement;",
            "[",
            "Lcn/hutool/core/annotation/scanner/AnnotationScanner;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/annotation/Annotation;",
            ">;"
        }
    .end annotation

    .line 105
    invoke-static {p0}, Lcn/hutool/core/util/ObjectUtil;->isNull(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcn/hutool/core/util/ArrayUtil;->isNotEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 106
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 108
    :cond_0
    invoke-static {p1}, Ljava/util/stream/Stream;->of([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lcn/hutool/core/annotation/scanner/AnnotationScanner$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcn/hutool/core/annotation/scanner/AnnotationScanner$$ExternalSyntheticLambda1;-><init>(Ljava/lang/reflect/AnnotatedElement;)V

    .line 109
    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    .line 110
    invoke-interface {p1}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object p1

    new-instance v0, Lcn/hutool/core/annotation/scanner/AnnotationScanner$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcn/hutool/core/annotation/scanner/AnnotationScanner$$ExternalSyntheticLambda2;-><init>(Ljava/lang/reflect/AnnotatedElement;)V

    .line 111
    invoke-virtual {p1, v0}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    new-instance p1, Lcn/hutool/core/annotation/scanner/AnnotationScanner$$ExternalSyntheticLambda3;

    invoke-direct {p1}, Lcn/hutool/core/annotation/scanner/AnnotationScanner$$ExternalSyntheticLambda3;-><init>()V

    .line 112
    invoke-virtual {p0, p1}, Ljava/util/Optional;->orElseGet(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public getAnnotations(Ljava/lang/reflect/AnnotatedElement;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/AnnotatedElement;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/annotation/Annotation;",
            ">;"
        }
    .end annotation

    .line 151
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 152
    new-instance v1, Lcn/hutool/core/annotation/scanner/AnnotationScanner$$ExternalSyntheticLambda6;

    invoke-direct {v1, v0}, Lcn/hutool/core/annotation/scanner/AnnotationScanner$$ExternalSyntheticLambda6;-><init>(Ljava/util/List;)V

    const/4 v2, 0x0

    invoke-interface {p0, v1, p1, v2}, Lcn/hutool/core/annotation/scanner/AnnotationScanner;->scan(Ljava/util/function/BiConsumer;Ljava/lang/reflect/AnnotatedElement;Ljava/util/function/Predicate;)V

    return-object v0
.end method

.method public getAnnotationsIfSupport(Ljava/lang/reflect/AnnotatedElement;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/AnnotatedElement;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/annotation/Annotation;",
            ">;"
        }
    .end annotation

    .line 165
    invoke-interface {p0, p1}, Lcn/hutool/core/annotation/scanner/AnnotationScanner;->support(Ljava/lang/reflect/AnnotatedElement;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0, p1}, Lcn/hutool/core/annotation/scanner/AnnotationScanner;->getAnnotations(Ljava/lang/reflect/AnnotatedElement;)Ljava/util/List;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    :goto_0
    return-object p1
.end method

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

    .line 177
    new-instance v0, Lcn/hutool/core/annotation/scanner/AnnotationScanner$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcn/hutool/core/annotation/scanner/AnnotationScanner$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {p3, v0}, Lcn/hutool/core/util/ObjectUtil;->defaultIfNull(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/function/Predicate;

    .line 178
    invoke-interface {p2}, Ljava/lang/reflect/AnnotatedElement;->getAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object p2

    array-length v0, p2

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p2, v2

    .line 179
    invoke-interface {v3}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v4

    invoke-static {v4}, Lcn/hutool/core/annotation/AnnotationUtil;->isNotJdkMateAnnotation(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {p3, v3}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 180
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {p1, v4, v3}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public scanIfSupport(Ljava/util/function/BiConsumer;Ljava/lang/reflect/AnnotatedElement;Ljava/util/function/Predicate;)V
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

    .line 193
    invoke-interface {p0, p2}, Lcn/hutool/core/annotation/scanner/AnnotationScanner;->support(Ljava/lang/reflect/AnnotatedElement;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 194
    invoke-interface {p0, p1, p2, p3}, Lcn/hutool/core/annotation/scanner/AnnotationScanner;->scan(Ljava/util/function/BiConsumer;Ljava/lang/reflect/AnnotatedElement;Ljava/util/function/Predicate;)V

    :cond_0
    return-void
.end method

.method public support(Ljava/lang/reflect/AnnotatedElement;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
