.class public Lcn/hutool/core/annotation/CombinationAnnotationElement;
.super Ljava/lang/Object;
.source "CombinationAnnotationElement.java"

# interfaces
.implements Ljava/lang/reflect/AnnotatedElement;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private annotationMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;",
            "Ljava/lang/annotation/Annotation;",
            ">;"
        }
    .end annotation
.end field

.field private declaredAnnotationMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;",
            "Ljava/lang/annotation/Annotation;",
            ">;"
        }
    .end annotation
.end field

.field private final predicate:Ljava/util/function/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Predicate<",
            "Ljava/lang/annotation/Annotation;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/reflect/AnnotatedElement;)V
    .locals 1

    const/4 v0, 0x0

    .line 55
    invoke-direct {p0, p1, v0}, Lcn/hutool/core/annotation/CombinationAnnotationElement;-><init>(Ljava/lang/reflect/AnnotatedElement;Ljava/util/function/Predicate;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/reflect/AnnotatedElement;Ljava/util/function/Predicate;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/AnnotatedElement;",
            "Ljava/util/function/Predicate<",
            "Ljava/lang/annotation/Annotation;",
            ">;)V"
        }
    .end annotation

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-object p2, p0, Lcn/hutool/core/annotation/CombinationAnnotationElement;->predicate:Ljava/util/function/Predicate;

    .line 67
    invoke-direct {p0, p1}, Lcn/hutool/core/annotation/CombinationAnnotationElement;->init(Ljava/lang/reflect/AnnotatedElement;)V

    return-void
.end method

.method private init(Ljava/lang/reflect/AnnotatedElement;)V
    .locals 2

    .line 100
    invoke-interface {p1}, Ljava/lang/reflect/AnnotatedElement;->getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v0

    .line 101
    new-instance v1, Lcn/hutool/core/map/TableMap;

    invoke-direct {v1}, Lcn/hutool/core/map/TableMap;-><init>()V

    iput-object v1, p0, Lcn/hutool/core/annotation/CombinationAnnotationElement;->declaredAnnotationMap:Ljava/util/Map;

    .line 102
    invoke-direct {p0, v0}, Lcn/hutool/core/annotation/CombinationAnnotationElement;->parseDeclared([Ljava/lang/annotation/Annotation;)V

    .line 104
    invoke-interface {p1}, Ljava/lang/reflect/AnnotatedElement;->getAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object p1

    .line 105
    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 106
    iget-object p1, p0, Lcn/hutool/core/annotation/CombinationAnnotationElement;->declaredAnnotationMap:Ljava/util/Map;

    iput-object p1, p0, Lcn/hutool/core/annotation/CombinationAnnotationElement;->annotationMap:Ljava/util/Map;

    goto :goto_0

    .line 108
    :cond_0
    new-instance v0, Lcn/hutool/core/map/TableMap;

    invoke-direct {v0}, Lcn/hutool/core/map/TableMap;-><init>()V

    iput-object v0, p0, Lcn/hutool/core/annotation/CombinationAnnotationElement;->annotationMap:Ljava/util/Map;

    .line 109
    invoke-direct {p0, p1}, Lcn/hutool/core/annotation/CombinationAnnotationElement;->parse([Ljava/lang/annotation/Annotation;)V

    :goto_0
    return-void
.end method

.method public static of(Ljava/lang/reflect/AnnotatedElement;Ljava/util/function/Predicate;)Lcn/hutool/core/annotation/CombinationAnnotationElement;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/AnnotatedElement;",
            "Ljava/util/function/Predicate<",
            "Ljava/lang/annotation/Annotation;",
            ">;)",
            "Lcn/hutool/core/annotation/CombinationAnnotationElement;"
        }
    .end annotation

    .line 33
    new-instance v0, Lcn/hutool/core/annotation/CombinationAnnotationElement;

    invoke-direct {v0, p0, p1}, Lcn/hutool/core/annotation/CombinationAnnotationElement;-><init>(Ljava/lang/reflect/AnnotatedElement;Ljava/util/function/Predicate;)V

    return-object v0
.end method

.method private parse([Ljava/lang/annotation/Annotation;)V
    .locals 5

    .line 142
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    aget-object v2, p1, v1

    .line 143
    invoke-interface {v2}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v3

    .line 145
    invoke-static {v3}, Lcn/hutool/core/annotation/AnnotationUtil;->isNotJdkMateAnnotation(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcn/hutool/core/annotation/CombinationAnnotationElement;->declaredAnnotationMap:Ljava/util/Map;

    .line 146
    invoke-interface {v4, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 147
    invoke-direct {p0, v2}, Lcn/hutool/core/annotation/CombinationAnnotationElement;->test(Ljava/lang/annotation/Annotation;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 148
    iget-object v4, p0, Lcn/hutool/core/annotation/CombinationAnnotationElement;->annotationMap:Ljava/util/Map;

    invoke-interface {v4, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    :cond_0
    invoke-virtual {v3}, Ljava/lang/Class;->getAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v2

    invoke-direct {p0, v2}, Lcn/hutool/core/annotation/CombinationAnnotationElement;->parse([Ljava/lang/annotation/Annotation;)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private parseDeclared([Ljava/lang/annotation/Annotation;)V
    .locals 5

    .line 121
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    aget-object v2, p1, v1

    .line 122
    invoke-interface {v2}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v3

    .line 124
    invoke-static {v3}, Lcn/hutool/core/annotation/AnnotationUtil;->isNotJdkMateAnnotation(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcn/hutool/core/annotation/CombinationAnnotationElement;->declaredAnnotationMap:Ljava/util/Map;

    .line 125
    invoke-interface {v4, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 126
    invoke-direct {p0, v2}, Lcn/hutool/core/annotation/CombinationAnnotationElement;->test(Ljava/lang/annotation/Annotation;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 127
    iget-object v4, p0, Lcn/hutool/core/annotation/CombinationAnnotationElement;->declaredAnnotationMap:Ljava/util/Map;

    invoke-interface {v4, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    :cond_0
    invoke-virtual {v3}, Ljava/lang/Class;->getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v2

    invoke-direct {p0, v2}, Lcn/hutool/core/annotation/CombinationAnnotationElement;->parseDeclared([Ljava/lang/annotation/Annotation;)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private test(Ljava/lang/annotation/Annotation;)Z
    .locals 1

    .line 163
    iget-object v0, p0, Lcn/hutool/core/annotation/CombinationAnnotationElement;->predicate:Ljava/util/function/Predicate;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method


# virtual methods
.method public getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/annotation/Annotation;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 78
    iget-object v0, p0, Lcn/hutool/core/annotation/CombinationAnnotationElement;->annotationMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/annotation/Annotation;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    :cond_0
    return-object p1
.end method

.method public getAnnotations()[Ljava/lang/annotation/Annotation;
    .locals 2

    .line 84
    iget-object v0, p0, Lcn/hutool/core/annotation/CombinationAnnotationElement;->annotationMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/annotation/Annotation;

    .line 85
    invoke-interface {v0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/annotation/Annotation;

    return-object v0
.end method

.method public getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;
    .locals 2

    .line 90
    iget-object v0, p0, Lcn/hutool/core/annotation/CombinationAnnotationElement;->declaredAnnotationMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/annotation/Annotation;

    .line 91
    invoke-interface {v0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/annotation/Annotation;

    return-object v0
.end method

.method public isAnnotationPresent(Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;)Z"
        }
    .end annotation

    .line 72
    iget-object v0, p0, Lcn/hutool/core/annotation/CombinationAnnotationElement;->annotationMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
