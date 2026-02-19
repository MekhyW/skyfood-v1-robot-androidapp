.class public Lcn/hutool/core/annotation/scanner/GenericAnnotationScanner;
.super Ljava/lang/Object;
.source "GenericAnnotationScanner.java"

# interfaces
.implements Lcn/hutool/core/annotation/scanner/AnnotationScanner;


# instance fields
.field private final elementScanner:Lcn/hutool/core/annotation/scanner/AnnotationScanner;

.field private final metaScanner:Lcn/hutool/core/annotation/scanner/AnnotationScanner;

.field private final methodScanner:Lcn/hutool/core/annotation/scanner/AnnotationScanner;

.field private final typeScanner:Lcn/hutool/core/annotation/scanner/AnnotationScanner;


# direct methods
.method public constructor <init>(ZZZ)V
    .locals 2

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 82
    new-instance p1, Lcn/hutool/core/annotation/scanner/MetaAnnotationScanner;

    invoke-direct {p1}, Lcn/hutool/core/annotation/scanner/MetaAnnotationScanner;-><init>()V

    goto :goto_0

    :cond_0
    new-instance p1, Lcn/hutool/core/annotation/scanner/EmptyAnnotationScanner;

    invoke-direct {p1}, Lcn/hutool/core/annotation/scanner/EmptyAnnotationScanner;-><init>()V

    :goto_0
    iput-object p1, p0, Lcn/hutool/core/annotation/scanner/GenericAnnotationScanner;->metaScanner:Lcn/hutool/core/annotation/scanner/AnnotationScanner;

    .line 83
    new-instance p1, Lcn/hutool/core/annotation/scanner/TypeAnnotationScanner;

    new-instance v0, Lcn/hutool/core/annotation/scanner/GenericAnnotationScanner$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lcn/hutool/core/annotation/scanner/GenericAnnotationScanner$$ExternalSyntheticLambda2;-><init>()V

    .line 84
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {p1, p2, p3, v0, v1}, Lcn/hutool/core/annotation/scanner/TypeAnnotationScanner;-><init>(ZZLjava/util/function/Predicate;Ljava/util/Set;)V

    iput-object p1, p0, Lcn/hutool/core/annotation/scanner/GenericAnnotationScanner;->typeScanner:Lcn/hutool/core/annotation/scanner/AnnotationScanner;

    .line 86
    new-instance p1, Lcn/hutool/core/annotation/scanner/MethodAnnotationScanner;

    new-instance v0, Lcn/hutool/core/annotation/scanner/GenericAnnotationScanner$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Lcn/hutool/core/annotation/scanner/GenericAnnotationScanner$$ExternalSyntheticLambda3;-><init>()V

    .line 87
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {p1, p2, p3, v0, v1}, Lcn/hutool/core/annotation/scanner/MethodAnnotationScanner;-><init>(ZZLjava/util/function/Predicate;Ljava/util/Set;)V

    iput-object p1, p0, Lcn/hutool/core/annotation/scanner/GenericAnnotationScanner;->methodScanner:Lcn/hutool/core/annotation/scanner/AnnotationScanner;

    .line 89
    new-instance p1, Lcn/hutool/core/annotation/scanner/ElementAnnotationScanner;

    invoke-direct {p1}, Lcn/hutool/core/annotation/scanner/ElementAnnotationScanner;-><init>()V

    iput-object p1, p0, Lcn/hutool/core/annotation/scanner/GenericAnnotationScanner;->elementScanner:Lcn/hutool/core/annotation/scanner/AnnotationScanner;

    return-void
.end method

.method static synthetic lambda$new$0(Ljava/lang/Class;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method static synthetic lambda$new$1(Ljava/lang/Class;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method static synthetic lambda$null$2(Ljava/lang/annotation/Annotation;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method static synthetic lambda$scan$3(Ljava/util/function/Predicate;)Ljava/util/function/Predicate;
    .locals 0

    .line 101
    new-instance p0, Lcn/hutool/core/annotation/scanner/GenericAnnotationScanner$$ExternalSyntheticLambda0;

    invoke-direct {p0}, Lcn/hutool/core/annotation/scanner/GenericAnnotationScanner$$ExternalSyntheticLambda0;-><init>()V

    return-object p0
.end method

.method static synthetic lambda$scanElements$4(Ljava/util/function/Predicate;Lcn/hutool/core/map/multi/ListValueMap;Ljava/lang/Integer;Ljava/lang/annotation/Annotation;)V
    .locals 0

    .line 135
    invoke-interface {p0, p3}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 136
    invoke-virtual {p1, p2, p3}, Lcn/hutool/core/map/multi/ListValueMap;->putValue(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private scanElements(Lcn/hutool/core/annotation/scanner/AnnotationScanner;Ljava/util/function/BiConsumer;Ljava/lang/reflect/AnnotatedElement;Ljava/util/function/Predicate;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/hutool/core/annotation/scanner/AnnotationScanner;",
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

    .line 133
    new-instance v0, Lcn/hutool/core/map/multi/ListValueMap;

    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-direct {v0, v1}, Lcn/hutool/core/map/multi/ListValueMap;-><init>(Ljava/util/Map;)V

    .line 134
    new-instance v1, Lcn/hutool/core/annotation/scanner/GenericAnnotationScanner$$ExternalSyntheticLambda4;

    invoke-direct {v1, p4, v0}, Lcn/hutool/core/annotation/scanner/GenericAnnotationScanner$$ExternalSyntheticLambda4;-><init>(Ljava/util/function/Predicate;Lcn/hutool/core/map/multi/ListValueMap;)V

    invoke-interface {p1, v1, p3, p4}, Lcn/hutool/core/annotation/scanner/AnnotationScanner;->scan(Ljava/util/function/BiConsumer;Ljava/lang/reflect/AnnotatedElement;Ljava/util/function/Predicate;)V

    .line 141
    new-instance p1, Lcn/hutool/core/annotation/scanner/GenericAnnotationScanner$$ExternalSyntheticLambda5;

    invoke-direct {p1, p0, p2, p4}, Lcn/hutool/core/annotation/scanner/GenericAnnotationScanner$$ExternalSyntheticLambda5;-><init>(Lcn/hutool/core/annotation/scanner/GenericAnnotationScanner;Ljava/util/function/BiConsumer;Ljava/util/function/Predicate;)V

    invoke-virtual {v0, p1}, Lcn/hutool/core/map/multi/ListValueMap;->forEach(Ljava/util/function/BiConsumer;)V

    return-void
.end method


# virtual methods
.method synthetic lambda$null$5$cn-hutool-core-annotation-scanner-GenericAnnotationScanner(Ljava/util/function/BiConsumer;Ljava/lang/Integer;Ljava/util/function/Predicate;Ljava/lang/annotation/Annotation;)V
    .locals 0

    .line 143
    invoke-interface {p1, p2, p4}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 144
    iget-object p2, p0, Lcn/hutool/core/annotation/scanner/GenericAnnotationScanner;->metaScanner:Lcn/hutool/core/annotation/scanner/AnnotationScanner;

    invoke-interface {p4}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object p4

    invoke-interface {p2, p1, p4, p3}, Lcn/hutool/core/annotation/scanner/AnnotationScanner;->scan(Ljava/util/function/BiConsumer;Ljava/lang/reflect/AnnotatedElement;Ljava/util/function/Predicate;)V

    return-void
.end method

.method synthetic lambda$scanElements$6$cn-hutool-core-annotation-scanner-GenericAnnotationScanner(Ljava/util/function/BiConsumer;Ljava/util/function/Predicate;Ljava/lang/Integer;Ljava/util/List;)V
    .locals 1

    .line 142
    new-instance v0, Lcn/hutool/core/annotation/scanner/GenericAnnotationScanner$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1, p3, p2}, Lcn/hutool/core/annotation/scanner/GenericAnnotationScanner$$ExternalSyntheticLambda1;-><init>(Lcn/hutool/core/annotation/scanner/GenericAnnotationScanner;Ljava/util/function/BiConsumer;Ljava/lang/Integer;Ljava/util/function/Predicate;)V

    invoke-interface {p4, v0}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

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

    .line 101
    new-instance v0, Lcn/hutool/core/annotation/scanner/GenericAnnotationScanner$$ExternalSyntheticLambda6;

    invoke-direct {v0}, Lcn/hutool/core/annotation/scanner/GenericAnnotationScanner$$ExternalSyntheticLambda6;-><init>()V

    invoke-static {p3, v0}, Lcn/hutool/core/util/ObjectUtil;->defaultIfNull(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/function/Predicate;

    .line 102
    invoke-static {p2}, Lcn/hutool/core/util/ObjectUtil;->isNull(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 106
    :cond_0
    instance-of v0, p2, Ljava/lang/Class;

    if-eqz v0, :cond_1

    .line 107
    iget-object v0, p0, Lcn/hutool/core/annotation/scanner/GenericAnnotationScanner;->typeScanner:Lcn/hutool/core/annotation/scanner/AnnotationScanner;

    invoke-direct {p0, v0, p1, p2, p3}, Lcn/hutool/core/annotation/scanner/GenericAnnotationScanner;->scanElements(Lcn/hutool/core/annotation/scanner/AnnotationScanner;Ljava/util/function/BiConsumer;Ljava/lang/reflect/AnnotatedElement;Ljava/util/function/Predicate;)V

    goto :goto_0

    .line 110
    :cond_1
    instance-of v0, p2, Ljava/lang/reflect/Method;

    if-eqz v0, :cond_2

    .line 111
    iget-object v0, p0, Lcn/hutool/core/annotation/scanner/GenericAnnotationScanner;->methodScanner:Lcn/hutool/core/annotation/scanner/AnnotationScanner;

    invoke-direct {p0, v0, p1, p2, p3}, Lcn/hutool/core/annotation/scanner/GenericAnnotationScanner;->scanElements(Lcn/hutool/core/annotation/scanner/AnnotationScanner;Ljava/util/function/BiConsumer;Ljava/lang/reflect/AnnotatedElement;Ljava/util/function/Predicate;)V

    goto :goto_0

    .line 115
    :cond_2
    iget-object v0, p0, Lcn/hutool/core/annotation/scanner/GenericAnnotationScanner;->elementScanner:Lcn/hutool/core/annotation/scanner/AnnotationScanner;

    invoke-direct {p0, v0, p1, p2, p3}, Lcn/hutool/core/annotation/scanner/GenericAnnotationScanner;->scanElements(Lcn/hutool/core/annotation/scanner/AnnotationScanner;Ljava/util/function/BiConsumer;Ljava/lang/reflect/AnnotatedElement;Ljava/util/function/Predicate;)V

    :goto_0
    return-void
.end method

.method public support(Ljava/lang/reflect/AnnotatedElement;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method
