.class public Lcn/hutool/core/annotation/SynthesizedAnnotationProxy;
.super Ljava/lang/Object;
.source "SynthesizedAnnotationProxy.java"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/hutool/core/annotation/SynthesizedAnnotationProxy$SyntheticProxyAnnotation;
    }
.end annotation


# instance fields
.field private final annotation:Lcn/hutool/core/annotation/SynthesizedAnnotation;

.field private final annotationAttributeValueProvider:Lcn/hutool/core/annotation/AnnotationAttributeValueProvider;

.field private final methods:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/function/BiFunction<",
            "Ljava/lang/reflect/Method;",
            "[",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcn/hutool/core/annotation/AnnotationAttributeValueProvider;Lcn/hutool/core/annotation/SynthesizedAnnotation;)V
    .locals 3

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "annotationAttributeValueProvider must not null"

    .line 86
    invoke-static {p1, v2, v1}, Lcn/hutool/core/lang/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "annotation must not null"

    new-array v0, v0, [Ljava/lang/Object;

    .line 87
    invoke-static {p2, v1, v0}, Lcn/hutool/core/lang/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    iput-object p1, p0, Lcn/hutool/core/annotation/SynthesizedAnnotationProxy;->annotationAttributeValueProvider:Lcn/hutool/core/annotation/AnnotationAttributeValueProvider;

    .line 89
    iput-object p2, p0, Lcn/hutool/core/annotation/SynthesizedAnnotationProxy;->annotation:Lcn/hutool/core/annotation/SynthesizedAnnotation;

    .line 90
    new-instance p1, Ljava/util/HashMap;

    const/16 p2, 0x9

    invoke-direct {p1, p2}, Ljava/util/HashMap;-><init>(I)V

    iput-object p1, p0, Lcn/hutool/core/annotation/SynthesizedAnnotationProxy;->methods:Ljava/util/Map;

    .line 91
    invoke-virtual {p0}, Lcn/hutool/core/annotation/SynthesizedAnnotationProxy;->loadMethods()V

    return-void
.end method

.method public static create(Ljava/lang/Class;Lcn/hutool/core/annotation/AnnotationAttributeValueProvider;Lcn/hutool/core/annotation/SynthesizedAnnotation;)Ljava/lang/annotation/Annotation;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/annotation/Annotation;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lcn/hutool/core/annotation/AnnotationAttributeValueProvider;",
            "Lcn/hutool/core/annotation/SynthesizedAnnotation;",
            ")TT;"
        }
    .end annotation

    .line 48
    invoke-static {p2}, Lcn/hutool/core/util/ObjectUtil;->isNull(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 51
    :cond_0
    new-instance v0, Lcn/hutool/core/annotation/SynthesizedAnnotationProxy;

    invoke-direct {v0, p1, p2}, Lcn/hutool/core/annotation/SynthesizedAnnotationProxy;-><init>(Lcn/hutool/core/annotation/AnnotationAttributeValueProvider;Lcn/hutool/core/annotation/SynthesizedAnnotation;)V

    .line 52
    invoke-static {p2}, Lcn/hutool/core/util/ObjectUtil;->isNull(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    return-object v1

    .line 56
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p1

    const/4 p2, 0x2

    new-array p2, p2, [Ljava/lang/Class;

    const/4 v1, 0x0

    aput-object p0, p2, v1

    const/4 p0, 0x1

    const-class v1, Lcn/hutool/core/annotation/SynthesizedAnnotationProxy$SyntheticProxyAnnotation;

    aput-object v1, p2, p0

    .line 55
    invoke-static {p1, p2, v0}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/annotation/Annotation;

    return-object p0
.end method

.method public static create(Ljava/lang/Class;Lcn/hutool/core/annotation/SynthesizedAnnotation;)Ljava/lang/annotation/Annotation;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/annotation/Annotation;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lcn/hutool/core/annotation/SynthesizedAnnotation;",
            ")TT;"
        }
    .end annotation

    .line 72
    invoke-static {p0, p1, p1}, Lcn/hutool/core/annotation/SynthesizedAnnotationProxy;->create(Ljava/lang/Class;Lcn/hutool/core/annotation/AnnotationAttributeValueProvider;Lcn/hutool/core/annotation/SynthesizedAnnotation;)Ljava/lang/annotation/Annotation;

    move-result-object p0

    return-object p0
.end method

.method public static isProxyAnnotation(Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 82
    const-class v0, Lcn/hutool/core/annotation/SynthesizedAnnotationProxy$SyntheticProxyAnnotation;

    invoke-static {v0, p0}, Lcn/hutool/core/util/ClassUtil;->isAssignable(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result p0

    return p0
.end method

.method static synthetic lambda$invoke$0(Ljava/lang/reflect/Method;[Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;
    .locals 0

    .line 97
    invoke-interface {p2, p0, p1}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$loadMethods$10(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 113
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "proxied annotation can not reset attributes"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private proxyAttributeValue(Ljava/lang/reflect/Method;)Ljava/lang/Object;
    .locals 2

    .line 141
    iget-object v0, p0, Lcn/hutool/core/annotation/SynthesizedAnnotationProxy;->annotationAttributeValueProvider:Lcn/hutool/core/annotation/AnnotationAttributeValueProvider;

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lcn/hutool/core/annotation/AnnotationAttributeValueProvider;->getAttributeValue(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method private proxyGetSynthesizedAnnotation()Ljava/lang/Object;
    .locals 1

    .line 137
    iget-object v0, p0, Lcn/hutool/core/annotation/SynthesizedAnnotationProxy;->annotation:Lcn/hutool/core/annotation/SynthesizedAnnotation;

    return-object v0
.end method

.method private proxyHashCode()I
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 133
    iget-object v2, p0, Lcn/hutool/core/annotation/SynthesizedAnnotationProxy;->annotationAttributeValueProvider:Lcn/hutool/core/annotation/AnnotationAttributeValueProvider;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcn/hutool/core/annotation/SynthesizedAnnotationProxy;->annotation:Lcn/hutool/core/annotation/SynthesizedAnnotation;

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method private proxyToString()Ljava/lang/String;
    .locals 4

    .line 123
    iget-object v0, p0, Lcn/hutool/core/annotation/SynthesizedAnnotationProxy;->annotation:Lcn/hutool/core/annotation/SynthesizedAnnotation;

    invoke-interface {v0}, Lcn/hutool/core/annotation/SynthesizedAnnotation;->getAnnotation()Ljava/lang/annotation/Annotation;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcn/hutool/core/util/ClassUtil;->getDeclaredMethods(Ljava/lang/Class;)[Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-static {v0}, Ljava/util/stream/Stream;->of([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcn/hutool/core/annotation/GenericSynthesizedAnnotation$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lcn/hutool/core/annotation/GenericSynthesizedAnnotation$$ExternalSyntheticLambda1;-><init>()V

    .line 124
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcn/hutool/core/annotation/SynthesizedAnnotationProxy$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0}, Lcn/hutool/core/annotation/SynthesizedAnnotationProxy$$ExternalSyntheticLambda6;-><init>(Lcn/hutool/core/annotation/SynthesizedAnnotationProxy;)V

    .line 125
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    const-string v1, ", "

    .line 128
    invoke-static {v1}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    .line 129
    iget-object v2, p0, Lcn/hutool/core/annotation/SynthesizedAnnotationProxy;->annotation:Lcn/hutool/core/annotation/SynthesizedAnnotation;

    invoke-interface {v2}, Lcn/hutool/core/annotation/SynthesizedAnnotation;->annotationType()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    aput-object v0, v1, v2

    const-string v0, "@{}({})"

    invoke-static {v0, v1}, Lcn/hutool/core/text/CharSequenceUtil;->format(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 96
    iget-object p1, p0, Lcn/hutool/core/annotation/SynthesizedAnnotationProxy;->methods:Ljava/util/Map;

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lcn/hutool/core/lang/Opt;->ofNullable(Ljava/lang/Object;)Lcn/hutool/core/lang/Opt;

    move-result-object p1

    new-instance v0, Lcn/hutool/core/annotation/SynthesizedAnnotationProxy$$ExternalSyntheticLambda4;

    invoke-direct {v0, p2, p3}, Lcn/hutool/core/annotation/SynthesizedAnnotationProxy$$ExternalSyntheticLambda4;-><init>(Ljava/lang/reflect/Method;[Ljava/lang/Object;)V

    .line 97
    invoke-virtual {p1, v0}, Lcn/hutool/core/lang/Opt;->map(Ljava/util/function/Function;)Lcn/hutool/core/lang/Opt;

    move-result-object p1

    new-instance v0, Lcn/hutool/core/annotation/SynthesizedAnnotationProxy$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0, p2, p3}, Lcn/hutool/core/annotation/SynthesizedAnnotationProxy$$ExternalSyntheticLambda5;-><init>(Lcn/hutool/core/annotation/SynthesizedAnnotationProxy;Ljava/lang/reflect/Method;[Ljava/lang/Object;)V

    .line 98
    invoke-virtual {p1, v0}, Lcn/hutool/core/lang/Opt;->orElseGet(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method synthetic lambda$invoke$1$cn-hutool-core-annotation-SynthesizedAnnotationProxy(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 98
    invoke-static {p0, p1, p2}, Lcn/hutool/core/util/ReflectUtil;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method synthetic lambda$loadMethods$11$cn-hutool-core-annotation-SynthesizedAnnotationProxy(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 115
    iget-object p1, p0, Lcn/hutool/core/annotation/SynthesizedAnnotationProxy;->annotation:Lcn/hutool/core/annotation/SynthesizedAnnotation;

    const/4 v0, 0x0

    aget-object p2, p2, v0

    check-cast p2, Ljava/lang/String;

    invoke-interface {p1, p2}, Lcn/hutool/core/annotation/SynthesizedAnnotation;->getAttributeValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method synthetic lambda$loadMethods$12$cn-hutool-core-annotation-SynthesizedAnnotationProxy(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 116
    iget-object p1, p0, Lcn/hutool/core/annotation/SynthesizedAnnotationProxy;->annotation:Lcn/hutool/core/annotation/SynthesizedAnnotation;

    invoke-interface {p1}, Lcn/hutool/core/annotation/SynthesizedAnnotation;->annotationType()Ljava/lang/Class;

    move-result-object p1

    return-object p1
.end method

.method synthetic lambda$loadMethods$13$cn-hutool-core-annotation-SynthesizedAnnotationProxy(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 118
    invoke-direct {p0, p1}, Lcn/hutool/core/annotation/SynthesizedAnnotationProxy;->proxyAttributeValue(Ljava/lang/reflect/Method;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method synthetic lambda$loadMethods$2$cn-hutool-core-annotation-SynthesizedAnnotationProxy(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 104
    invoke-direct {p0}, Lcn/hutool/core/annotation/SynthesizedAnnotationProxy;->proxyToString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method synthetic lambda$loadMethods$3$cn-hutool-core-annotation-SynthesizedAnnotationProxy(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 105
    invoke-direct {p0}, Lcn/hutool/core/annotation/SynthesizedAnnotationProxy;->proxyHashCode()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method synthetic lambda$loadMethods$4$cn-hutool-core-annotation-SynthesizedAnnotationProxy(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 106
    invoke-direct {p0}, Lcn/hutool/core/annotation/SynthesizedAnnotationProxy;->proxyGetSynthesizedAnnotation()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method synthetic lambda$loadMethods$5$cn-hutool-core-annotation-SynthesizedAnnotationProxy(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 107
    iget-object p1, p0, Lcn/hutool/core/annotation/SynthesizedAnnotationProxy;->annotation:Lcn/hutool/core/annotation/SynthesizedAnnotation;

    invoke-interface {p1}, Lcn/hutool/core/annotation/SynthesizedAnnotation;->getRoot()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method synthetic lambda$loadMethods$6$cn-hutool-core-annotation-SynthesizedAnnotationProxy(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 108
    iget-object p1, p0, Lcn/hutool/core/annotation/SynthesizedAnnotationProxy;->annotation:Lcn/hutool/core/annotation/SynthesizedAnnotation;

    invoke-interface {p1}, Lcn/hutool/core/annotation/SynthesizedAnnotation;->getVerticalDistance()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method synthetic lambda$loadMethods$7$cn-hutool-core-annotation-SynthesizedAnnotationProxy(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 109
    iget-object p1, p0, Lcn/hutool/core/annotation/SynthesizedAnnotationProxy;->annotation:Lcn/hutool/core/annotation/SynthesizedAnnotation;

    invoke-interface {p1}, Lcn/hutool/core/annotation/SynthesizedAnnotation;->getHorizontalDistance()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method synthetic lambda$loadMethods$8$cn-hutool-core-annotation-SynthesizedAnnotationProxy(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 110
    iget-object p1, p0, Lcn/hutool/core/annotation/SynthesizedAnnotationProxy;->annotation:Lcn/hutool/core/annotation/SynthesizedAnnotation;

    const/4 v0, 0x0

    aget-object v0, p2, v0

    check-cast v0, Ljava/lang/String;

    const/4 v1, 0x1

    aget-object p2, p2, v1

    check-cast p2, Ljava/lang/Class;

    invoke-interface {p1, v0, p2}, Lcn/hutool/core/annotation/SynthesizedAnnotation;->hasAttribute(Ljava/lang/String;Ljava/lang/Class;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method synthetic lambda$loadMethods$9$cn-hutool-core-annotation-SynthesizedAnnotationProxy(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 111
    iget-object p1, p0, Lcn/hutool/core/annotation/SynthesizedAnnotationProxy;->annotation:Lcn/hutool/core/annotation/SynthesizedAnnotation;

    invoke-interface {p1}, Lcn/hutool/core/annotation/SynthesizedAnnotation;->getAttributes()Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method synthetic lambda$proxyToString$14$cn-hutool-core-annotation-SynthesizedAnnotationProxy(Ljava/lang/reflect/Method;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 126
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-direct {p0, p1}, Lcn/hutool/core/annotation/SynthesizedAnnotationProxy;->proxyAttributeValue(Ljava/lang/reflect/Method;)Ljava/lang/Object;

    move-result-object p1

    aput-object p1, v0, v1

    const-string p1, "{}={}"

    .line 125
    invoke-static {p1, v0}, Lcn/hutool/core/text/CharSequenceUtil;->format(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method loadMethods()V
    .locals 6

    .line 104
    iget-object v0, p0, Lcn/hutool/core/annotation/SynthesizedAnnotationProxy;->methods:Ljava/util/Map;

    new-instance v1, Lcn/hutool/core/annotation/SynthesizedAnnotationProxy$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0}, Lcn/hutool/core/annotation/SynthesizedAnnotationProxy$$ExternalSyntheticLambda7;-><init>(Lcn/hutool/core/annotation/SynthesizedAnnotationProxy;)V

    const-string v2, "toString"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    iget-object v0, p0, Lcn/hutool/core/annotation/SynthesizedAnnotationProxy;->methods:Ljava/util/Map;

    new-instance v1, Lcn/hutool/core/annotation/SynthesizedAnnotationProxy$$ExternalSyntheticLambda10;

    invoke-direct {v1, p0}, Lcn/hutool/core/annotation/SynthesizedAnnotationProxy$$ExternalSyntheticLambda10;-><init>(Lcn/hutool/core/annotation/SynthesizedAnnotationProxy;)V

    const-string v2, "hashCode"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    iget-object v0, p0, Lcn/hutool/core/annotation/SynthesizedAnnotationProxy;->methods:Ljava/util/Map;

    new-instance v1, Lcn/hutool/core/annotation/SynthesizedAnnotationProxy$$ExternalSyntheticLambda11;

    invoke-direct {v1, p0}, Lcn/hutool/core/annotation/SynthesizedAnnotationProxy$$ExternalSyntheticLambda11;-><init>(Lcn/hutool/core/annotation/SynthesizedAnnotationProxy;)V

    const-string v2, "getSynthesizedAnnotation"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    iget-object v0, p0, Lcn/hutool/core/annotation/SynthesizedAnnotationProxy;->methods:Ljava/util/Map;

    new-instance v1, Lcn/hutool/core/annotation/SynthesizedAnnotationProxy$$ExternalSyntheticLambda12;

    invoke-direct {v1, p0}, Lcn/hutool/core/annotation/SynthesizedAnnotationProxy$$ExternalSyntheticLambda12;-><init>(Lcn/hutool/core/annotation/SynthesizedAnnotationProxy;)V

    const-string v2, "getRoot"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    iget-object v0, p0, Lcn/hutool/core/annotation/SynthesizedAnnotationProxy;->methods:Ljava/util/Map;

    new-instance v1, Lcn/hutool/core/annotation/SynthesizedAnnotationProxy$$ExternalSyntheticLambda13;

    invoke-direct {v1, p0}, Lcn/hutool/core/annotation/SynthesizedAnnotationProxy$$ExternalSyntheticLambda13;-><init>(Lcn/hutool/core/annotation/SynthesizedAnnotationProxy;)V

    const-string v2, "getVerticalDistance"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    iget-object v0, p0, Lcn/hutool/core/annotation/SynthesizedAnnotationProxy;->methods:Ljava/util/Map;

    new-instance v1, Lcn/hutool/core/annotation/SynthesizedAnnotationProxy$$ExternalSyntheticLambda14;

    invoke-direct {v1, p0}, Lcn/hutool/core/annotation/SynthesizedAnnotationProxy$$ExternalSyntheticLambda14;-><init>(Lcn/hutool/core/annotation/SynthesizedAnnotationProxy;)V

    const-string v2, "getHorizontalDistance"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    iget-object v0, p0, Lcn/hutool/core/annotation/SynthesizedAnnotationProxy;->methods:Ljava/util/Map;

    new-instance v1, Lcn/hutool/core/annotation/SynthesizedAnnotationProxy$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcn/hutool/core/annotation/SynthesizedAnnotationProxy$$ExternalSyntheticLambda0;-><init>(Lcn/hutool/core/annotation/SynthesizedAnnotationProxy;)V

    const-string v2, "hasAttribute"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    iget-object v0, p0, Lcn/hutool/core/annotation/SynthesizedAnnotationProxy;->methods:Ljava/util/Map;

    new-instance v1, Lcn/hutool/core/annotation/SynthesizedAnnotationProxy$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcn/hutool/core/annotation/SynthesizedAnnotationProxy$$ExternalSyntheticLambda1;-><init>(Lcn/hutool/core/annotation/SynthesizedAnnotationProxy;)V

    const-string v2, "getAttributes"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    iget-object v0, p0, Lcn/hutool/core/annotation/SynthesizedAnnotationProxy;->methods:Ljava/util/Map;

    new-instance v1, Lcn/hutool/core/annotation/SynthesizedAnnotationProxy$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Lcn/hutool/core/annotation/SynthesizedAnnotationProxy$$ExternalSyntheticLambda2;-><init>()V

    const-string v2, "setAttribute"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    iget-object v0, p0, Lcn/hutool/core/annotation/SynthesizedAnnotationProxy;->methods:Ljava/util/Map;

    new-instance v1, Lcn/hutool/core/annotation/SynthesizedAnnotationProxy$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcn/hutool/core/annotation/SynthesizedAnnotationProxy$$ExternalSyntheticLambda3;-><init>(Lcn/hutool/core/annotation/SynthesizedAnnotationProxy;)V

    const-string v2, "getAttributeValue"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    iget-object v0, p0, Lcn/hutool/core/annotation/SynthesizedAnnotationProxy;->methods:Ljava/util/Map;

    new-instance v1, Lcn/hutool/core/annotation/SynthesizedAnnotationProxy$$ExternalSyntheticLambda8;

    invoke-direct {v1, p0}, Lcn/hutool/core/annotation/SynthesizedAnnotationProxy$$ExternalSyntheticLambda8;-><init>(Lcn/hutool/core/annotation/SynthesizedAnnotationProxy;)V

    const-string v2, "annotationType"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    iget-object v0, p0, Lcn/hutool/core/annotation/SynthesizedAnnotationProxy;->annotation:Lcn/hutool/core/annotation/SynthesizedAnnotation;

    invoke-interface {v0}, Lcn/hutool/core/annotation/SynthesizedAnnotation;->getAnnotation()Ljava/lang/annotation/Annotation;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcn/hutool/core/util/ClassUtil;->getDeclaredMethods(Ljava/lang/Class;)[Ljava/lang/reflect/Method;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 118
    iget-object v4, p0, Lcn/hutool/core/annotation/SynthesizedAnnotationProxy;->methods:Ljava/util/Map;

    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v3

    new-instance v5, Lcn/hutool/core/annotation/SynthesizedAnnotationProxy$$ExternalSyntheticLambda9;

    invoke-direct {v5, p0}, Lcn/hutool/core/annotation/SynthesizedAnnotationProxy$$ExternalSyntheticLambda9;-><init>(Lcn/hutool/core/annotation/SynthesizedAnnotationProxy;)V

    invoke-interface {v4, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
