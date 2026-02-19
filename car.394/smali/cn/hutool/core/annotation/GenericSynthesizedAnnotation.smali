.class public Lcn/hutool/core/annotation/GenericSynthesizedAnnotation;
.super Ljava/lang/Object;
.source "GenericSynthesizedAnnotation.java"

# interfaces
.implements Lcn/hutool/core/annotation/SynthesizedAnnotation;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        "T::",
        "Ljava/lang/annotation/Annotation;",
        ">",
        "Ljava/lang/Object;",
        "Lcn/hutool/core/annotation/SynthesizedAnnotation;"
    }
.end annotation


# instance fields
.field private final annotation:Ljava/lang/annotation/Annotation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final attributeMethodCaches:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcn/hutool/core/annotation/AnnotationAttribute;",
            ">;"
        }
    .end annotation
.end field

.field private final horizontalDistance:I

.field private final root:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TR;"
        }
    .end annotation
.end field

.field private final verticalDistance:I


# direct methods
.method public static synthetic $r8$lambda$jpcLOQ8cQshoXiWHXAifvXiiquQ(Ljava/lang/reflect/Method;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected constructor <init>(Ljava/lang/Object;Ljava/lang/annotation/Annotation;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;TT;II)V"
        }
    .end annotation

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcn/hutool/core/annotation/GenericSynthesizedAnnotation;->root:Ljava/lang/Object;

    .line 41
    iput-object p2, p0, Lcn/hutool/core/annotation/GenericSynthesizedAnnotation;->annotation:Ljava/lang/annotation/Annotation;

    .line 42
    iput p3, p0, Lcn/hutool/core/annotation/GenericSynthesizedAnnotation;->verticalDistance:I

    .line 43
    iput p4, p0, Lcn/hutool/core/annotation/GenericSynthesizedAnnotation;->horizontalDistance:I

    .line 44
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcn/hutool/core/annotation/GenericSynthesizedAnnotation;->attributeMethodCaches:Ljava/util/Map;

    .line 45
    invoke-virtual {p0}, Lcn/hutool/core/annotation/GenericSynthesizedAnnotation;->loadAttributeMethods()Ljava/util/Map;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-void
.end method

.method static synthetic lambda$getAttributeValue$2(Ljava/lang/Class;Lcn/hutool/core/annotation/AnnotationAttribute;)Z
    .locals 0

    .line 193
    invoke-interface {p1}, Lcn/hutool/core/annotation/AnnotationAttribute;->getAttributeType()Ljava/lang/Class;

    move-result-object p1

    invoke-static {p0, p1}, Lcn/hutool/core/util/ClassUtil;->isAssignable(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result p0

    return p0
.end method

.method static synthetic lambda$hasAttribute$1(Ljava/lang/Class;Lcn/hutool/core/annotation/AnnotationAttribute;)Z
    .locals 0

    .line 79
    invoke-interface {p1}, Lcn/hutool/core/annotation/AnnotationAttribute;->getAttributeType()Ljava/lang/Class;

    move-result-object p1

    invoke-static {p0, p1}, Lcn/hutool/core/util/ClassUtil;->isAssignable(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public annotationType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;"
        }
    .end annotation

    .line 180
    iget-object v0, p0, Lcn/hutool/core/annotation/GenericSynthesizedAnnotation;->annotation:Ljava/lang/annotation/Annotation;

    invoke-interface {v0}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public getAnnotation()Ljava/lang/annotation/Annotation;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 148
    iget-object v0, p0, Lcn/hutool/core/annotation/GenericSynthesizedAnnotation;->annotation:Ljava/lang/annotation/Annotation;

    return-object v0
.end method

.method public getAttributeValue(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .line 126
    iget-object v0, p0, Lcn/hutool/core/annotation/GenericSynthesizedAnnotation;->attributeMethodCaches:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lcn/hutool/core/lang/Opt;->ofNullable(Ljava/lang/Object;)Lcn/hutool/core/lang/Opt;

    move-result-object p1

    new-instance v0, Lcn/hutool/core/annotation/GenericSynthesizedAnnotation$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcn/hutool/core/annotation/GenericSynthesizedAnnotation$$ExternalSyntheticLambda0;-><init>()V

    .line 127
    invoke-virtual {p1, v0}, Lcn/hutool/core/lang/Opt;->map(Ljava/util/function/Function;)Lcn/hutool/core/lang/Opt;

    move-result-object p1

    .line 128
    invoke-virtual {p1}, Lcn/hutool/core/lang/Opt;->get()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getAttributeValue(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 192
    iget-object v0, p0, Lcn/hutool/core/annotation/GenericSynthesizedAnnotation;->attributeMethodCaches:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lcn/hutool/core/lang/Opt;->ofNullable(Ljava/lang/Object;)Lcn/hutool/core/lang/Opt;

    move-result-object p1

    new-instance v0, Lcn/hutool/core/annotation/GenericSynthesizedAnnotation$$ExternalSyntheticLambda5;

    invoke-direct {v0, p2}, Lcn/hutool/core/annotation/GenericSynthesizedAnnotation$$ExternalSyntheticLambda5;-><init>(Ljava/lang/Class;)V

    .line 193
    invoke-virtual {p1, v0}, Lcn/hutool/core/lang/Opt;->filter(Ljava/util/function/Predicate;)Lcn/hutool/core/lang/Opt;

    move-result-object p1

    new-instance p2, Lcn/hutool/core/annotation/GenericSynthesizedAnnotation$$ExternalSyntheticLambda0;

    invoke-direct {p2}, Lcn/hutool/core/annotation/GenericSynthesizedAnnotation$$ExternalSyntheticLambda0;-><init>()V

    .line 194
    invoke-virtual {p1, p2}, Lcn/hutool/core/lang/Opt;->map(Ljava/util/function/Function;)Lcn/hutool/core/lang/Opt;

    move-result-object p1

    .line 195
    invoke-virtual {p1}, Lcn/hutool/core/lang/Opt;->get()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getAttributes()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcn/hutool/core/annotation/AnnotationAttribute;",
            ">;"
        }
    .end annotation

    .line 90
    iget-object v0, p0, Lcn/hutool/core/annotation/GenericSynthesizedAnnotation;->attributeMethodCaches:Ljava/util/Map;

    return-object v0
.end method

.method public getHorizontalDistance()I
    .locals 1

    .line 170
    iget v0, p0, Lcn/hutool/core/annotation/GenericSynthesizedAnnotation;->horizontalDistance:I

    return v0
.end method

.method public getRoot()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TR;"
        }
    .end annotation

    .line 138
    iget-object v0, p0, Lcn/hutool/core/annotation/GenericSynthesizedAnnotation;->root:Ljava/lang/Object;

    return-object v0
.end method

.method public getVerticalDistance()I
    .locals 1

    .line 159
    iget v0, p0, Lcn/hutool/core/annotation/GenericSynthesizedAnnotation;->verticalDistance:I

    return v0
.end method

.method public hasAttribute(Ljava/lang/String;)Z
    .locals 1

    .line 66
    iget-object v0, p0, Lcn/hutool/core/annotation/GenericSynthesizedAnnotation;->attributeMethodCaches:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hasAttribute(Ljava/lang/String;Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 78
    iget-object v0, p0, Lcn/hutool/core/annotation/GenericSynthesizedAnnotation;->attributeMethodCaches:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lcn/hutool/core/lang/Opt;->ofNullable(Ljava/lang/Object;)Lcn/hutool/core/lang/Opt;

    move-result-object p1

    new-instance v0, Lcn/hutool/core/annotation/GenericSynthesizedAnnotation$$ExternalSyntheticLambda4;

    invoke-direct {v0, p2}, Lcn/hutool/core/annotation/GenericSynthesizedAnnotation$$ExternalSyntheticLambda4;-><init>(Ljava/lang/Class;)V

    .line 79
    invoke-virtual {p1, v0}, Lcn/hutool/core/lang/Opt;->filter(Ljava/util/function/Predicate;)Lcn/hutool/core/lang/Opt;

    move-result-object p1

    .line 80
    invoke-virtual {p1}, Lcn/hutool/core/lang/Opt;->isPresent()Z

    move-result p1

    return p1
.end method

.method synthetic lambda$loadAttributeMethods$0$cn-hutool-core-annotation-GenericSynthesizedAnnotation(Ljava/lang/reflect/Method;)Lcn/hutool/core/annotation/AnnotationAttribute;
    .locals 2

    .line 56
    new-instance v0, Lcn/hutool/core/annotation/CacheableAnnotationAttribute;

    iget-object v1, p0, Lcn/hutool/core/annotation/GenericSynthesizedAnnotation;->annotation:Ljava/lang/annotation/Annotation;

    invoke-direct {v0, v1, p1}, Lcn/hutool/core/annotation/CacheableAnnotationAttribute;-><init>(Ljava/lang/annotation/Annotation;Ljava/lang/reflect/Method;)V

    return-object v0
.end method

.method protected loadAttributeMethods()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcn/hutool/core/annotation/AnnotationAttribute;",
            ">;"
        }
    .end annotation

    .line 54
    iget-object v0, p0, Lcn/hutool/core/annotation/GenericSynthesizedAnnotation;->annotation:Ljava/lang/annotation/Annotation;

    invoke-interface {v0}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcn/hutool/core/util/ClassUtil;->getDeclaredMethods(Ljava/lang/Class;)[Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-static {v0}, Ljava/util/stream/Stream;->of([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcn/hutool/core/annotation/GenericSynthesizedAnnotation$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lcn/hutool/core/annotation/GenericSynthesizedAnnotation$$ExternalSyntheticLambda1;-><init>()V

    .line 55
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcn/hutool/core/annotation/GenericSynthesizedAnnotation$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Lcn/hutool/core/annotation/GenericSynthesizedAnnotation$$ExternalSyntheticLambda2;-><init>()V

    new-instance v2, Lcn/hutool/core/annotation/GenericSynthesizedAnnotation$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0}, Lcn/hutool/core/annotation/GenericSynthesizedAnnotation$$ExternalSyntheticLambda3;-><init>(Lcn/hutool/core/annotation/GenericSynthesizedAnnotation;)V

    .line 56
    invoke-static {v1, v2}, Ljava/util/stream/Collectors;->toMap(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    return-object v0
.end method

.method public replaceAttribute(Ljava/lang/String;Ljava/util/function/UnaryOperator;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/function/UnaryOperator<",
            "Lcn/hutool/core/annotation/AnnotationAttribute;",
            ">;)V"
        }
    .end annotation

    .line 112
    iget-object v0, p0, Lcn/hutool/core/annotation/GenericSynthesizedAnnotation;->attributeMethodCaches:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/hutool/core/annotation/AnnotationAttribute;

    .line 113
    invoke-static {v0}, Lcn/hutool/core/util/ObjectUtil;->isNotNull(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 114
    iget-object v1, p0, Lcn/hutool/core/annotation/GenericSynthesizedAnnotation;->attributeMethodCaches:Ljava/util/Map;

    invoke-interface {p2, v0}, Ljava/util/function/UnaryOperator;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public setAttribute(Ljava/lang/String;Lcn/hutool/core/annotation/AnnotationAttribute;)V
    .locals 1

    .line 101
    iget-object v0, p0, Lcn/hutool/core/annotation/GenericSynthesizedAnnotation;->attributeMethodCaches:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
