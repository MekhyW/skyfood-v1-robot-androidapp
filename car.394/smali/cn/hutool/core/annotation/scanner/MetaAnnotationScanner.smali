.class public Lcn/hutool/core/annotation/scanner/MetaAnnotationScanner;
.super Ljava/lang/Object;
.source "MetaAnnotationScanner.java"

# interfaces
.implements Lcn/hutool/core/annotation/scanner/AnnotationScanner;


# instance fields
.field private final includeSupperMetaAnnotation:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    .line 43
    invoke-direct {p0, v0}, Lcn/hutool/core/annotation/scanner/MetaAnnotationScanner;-><init>(Z)V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-boolean p1, p0, Lcn/hutool/core/annotation/scanner/MetaAnnotationScanner;->includeSupperMetaAnnotation:Z

    return-void
.end method

.method static synthetic lambda$getAnnotations$0(Ljava/util/List;Ljava/lang/Integer;Ljava/lang/annotation/Annotation;)V
    .locals 0

    .line 67
    invoke-interface {p0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method static synthetic lambda$getAnnotations$1(Ljava/lang/reflect/AnnotatedElement;Ljava/lang/annotation/Annotation;)Z
    .locals 0

    .line 68
    invoke-static {p1, p0}, Lcn/hutool/core/util/ObjectUtil;->notEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method static synthetic lambda$null$2(Ljava/lang/annotation/Annotation;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method static synthetic lambda$scan$3(Ljava/util/function/Predicate;)Ljava/util/function/Predicate;
    .locals 0

    .line 83
    new-instance p0, Lcn/hutool/core/annotation/scanner/MetaAnnotationScanner$$ExternalSyntheticLambda6;

    invoke-direct {p0}, Lcn/hutool/core/annotation/scanner/MetaAnnotationScanner$$ExternalSyntheticLambda6;-><init>()V

    return-object p0
.end method

.method static synthetic lambda$scan$4(Ljava/lang/annotation/Annotation;)Z
    .locals 0

    .line 91
    invoke-interface {p0}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object p0

    invoke-static {p0}, Lcn/hutool/core/annotation/AnnotationUtil;->isJdkMetaAnnotation(Ljava/lang/Class;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method static synthetic lambda$scan$5(Ljava/util/Set;Ljava/lang/Class;)Z
    .locals 0

    .line 100
    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
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

    .line 65
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 66
    new-instance v1, Lcn/hutool/core/annotation/scanner/MetaAnnotationScanner$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0}, Lcn/hutool/core/annotation/scanner/MetaAnnotationScanner$$ExternalSyntheticLambda0;-><init>(Ljava/util/List;)V

    new-instance v2, Lcn/hutool/core/annotation/scanner/MetaAnnotationScanner$$ExternalSyntheticLambda1;

    invoke-direct {v2, p1}, Lcn/hutool/core/annotation/scanner/MetaAnnotationScanner$$ExternalSyntheticLambda1;-><init>(Ljava/lang/reflect/AnnotatedElement;)V

    invoke-virtual {p0, v1, p1, v2}, Lcn/hutool/core/annotation/scanner/MetaAnnotationScanner;->scan(Ljava/util/function/BiConsumer;Ljava/lang/reflect/AnnotatedElement;Ljava/util/function/Predicate;)V

    return-object v0
.end method

.method public scan(Ljava/util/function/BiConsumer;Ljava/lang/reflect/AnnotatedElement;Ljava/util/function/Predicate;)V
    .locals 8
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

    .line 83
    new-instance v0, Lcn/hutool/core/annotation/scanner/MetaAnnotationScanner$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lcn/hutool/core/annotation/scanner/MetaAnnotationScanner$$ExternalSyntheticLambda2;-><init>()V

    invoke-static {p3, v0}, Lcn/hutool/core/util/ObjectUtil;->defaultIfNull(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/function/Predicate;

    .line 84
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/util/List;

    new-array v1, v1, [Ljava/lang/Class;

    .line 85
    check-cast p2, Ljava/lang/Class;

    const/4 v3, 0x0

    aput-object p2, v1, v3

    invoke-static {v1}, Lcn/hutool/core/collection/CollUtil;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object p2

    aput-object p2, v2, v3

    invoke-static {v2}, Lcn/hutool/core/collection/CollUtil;->newLinkedList([Ljava/lang/Object;)Ljava/util/LinkedList;

    move-result-object p2

    .line 88
    :cond_0
    invoke-interface {p2}, Ljava/util/Deque;->removeFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 89
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Class;

    .line 90
    invoke-virtual {v2}, Ljava/lang/Class;->getAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v4

    invoke-static {v4}, Ljava/util/stream/Stream;->of([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v4

    new-instance v5, Lcn/hutool/core/annotation/scanner/MetaAnnotationScanner$$ExternalSyntheticLambda3;

    invoke-direct {v5}, Lcn/hutool/core/annotation/scanner/MetaAnnotationScanner$$ExternalSyntheticLambda3;-><init>()V

    .line 91
    invoke-interface {v4, v5}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v4

    .line 92
    invoke-interface {v4, p3}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v4

    .line 93
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 94
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/annotation/Annotation;

    .line 95
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {p1, v7, v6}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    .line 97
    :cond_2
    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 98
    invoke-interface {v4}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v4, Lcn/hutool/core/annotation/scanner/MetaAnnotationScanner$$ExternalSyntheticLambda4;

    invoke-direct {v4}, Lcn/hutool/core/annotation/scanner/MetaAnnotationScanner$$ExternalSyntheticLambda4;-><init>()V

    .line 99
    invoke-interface {v2, v4}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v4, Lcn/hutool/core/annotation/scanner/MetaAnnotationScanner$$ExternalSyntheticLambda5;

    invoke-direct {v4, v0}, Lcn/hutool/core/annotation/scanner/MetaAnnotationScanner$$ExternalSyntheticLambda5;-><init>(Ljava/util/Set;)V

    .line 100
    invoke-interface {v2, v4}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v2

    .line 101
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 102
    invoke-static {v2}, Lcn/hutool/core/collection/CollUtil;->isNotEmpty(Ljava/util/Collection;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 103
    invoke-interface {p2, v2}, Ljava/util/Deque;->addLast(Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    add-int/lit8 v3, v3, 0x1

    .line 107
    iget-boolean v1, p0, Lcn/hutool/core/annotation/scanner/MetaAnnotationScanner;->includeSupperMetaAnnotation:Z

    if-eqz v1, :cond_4

    invoke-interface {p2}, Ljava/util/Deque;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_4
    return-void
.end method

.method public support(Ljava/lang/reflect/AnnotatedElement;)Z
    .locals 1

    .line 54
    instance-of v0, p1, Ljava/lang/Class;

    if-eqz v0, :cond_0

    const-class v0, Ljava/lang/annotation/Annotation;

    check-cast p1, Ljava/lang/Class;

    invoke-static {v0, p1}, Lcn/hutool/core/util/ClassUtil;->isAssignable(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
