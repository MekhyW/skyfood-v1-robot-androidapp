.class public Lcn/hutool/core/annotation/AliasAnnotationPostProcessor;
.super Ljava/lang/Object;
.source "AliasAnnotationPostProcessor.java"

# interfaces
.implements Lcn/hutool/core/annotation/SynthesizedAnnotationPostProcessor;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic lambda$process$0(Ljava/util/Map;Lcn/hutool/core/map/ForestMap;Ljava/lang/String;Lcn/hutool/core/annotation/AnnotationAttribute;)V
    .locals 3

    .line 36
    const-class v0, Lcn/hutool/core/annotation/Alias;

    invoke-interface {p3, v0}, Lcn/hutool/core/annotation/AnnotationAttribute;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    invoke-static {v0}, Lcn/hutool/core/lang/Opt;->ofNullable(Ljava/lang/Object;)Lcn/hutool/core/lang/Opt;

    move-result-object v0

    new-instance v1, Lcn/hutool/core/annotation/AliasAnnotationPostProcessor$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcn/hutool/core/annotation/AliasAnnotationPostProcessor$$ExternalSyntheticLambda0;-><init>()V

    .line 37
    invoke-virtual {v0, v1}, Lcn/hutool/core/lang/Opt;->map(Ljava/util/function/Function;)Lcn/hutool/core/lang/Opt;

    move-result-object v0

    const/4 v1, 0x0

    .line 38
    invoke-virtual {v0, v1}, Lcn/hutool/core/lang/Opt;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 39
    invoke-static {v0}, Lcn/hutool/core/util/ObjectUtil;->isNull(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 42
    :cond_0
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcn/hutool/core/annotation/AnnotationAttribute;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const-string v2, "no method for alias: [{}]"

    .line 43
    invoke-static {p0, v2, v1}, Lcn/hutool/core/lang/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    invoke-interface {p1, v0, p0, p2, p3}, Lcn/hutool/core/map/ForestMap;->putLinkedNodes(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic lambda$process$1(Lcn/hutool/core/map/ForestMap;Ljava/util/Map;Ljava/lang/String;Lcn/hutool/core/annotation/AnnotationAttribute;)V
    .locals 5

    .line 49
    invoke-static {p2}, Lcn/hutool/core/lang/Opt;->ofNullable(Ljava/lang/Object;)Lcn/hutool/core/lang/Opt;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcn/hutool/core/annotation/AliasAnnotationPostProcessor$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcn/hutool/core/annotation/AliasAnnotationPostProcessor$$ExternalSyntheticLambda1;-><init>(Lcn/hutool/core/map/ForestMap;)V

    .line 50
    invoke-virtual {v0, v1}, Lcn/hutool/core/lang/Opt;->map(Ljava/util/function/Function;)Lcn/hutool/core/lang/Opt;

    move-result-object p0

    new-instance v0, Lcn/hutool/core/annotation/AliasAnnotationPostProcessor$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lcn/hutool/core/annotation/AliasAnnotationPostProcessor$$ExternalSyntheticLambda2;-><init>()V

    .line 51
    invoke-virtual {p0, v0}, Lcn/hutool/core/lang/Opt;->map(Ljava/util/function/Function;)Lcn/hutool/core/lang/Opt;

    move-result-object p0

    .line 52
    invoke-virtual {p0, p3}, Lcn/hutool/core/lang/Opt;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcn/hutool/core/annotation/AnnotationAttribute;

    .line 54
    invoke-static {p0}, Lcn/hutool/core/util/ObjectUtil;->isNull(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    .line 55
    invoke-interface {p3}, Lcn/hutool/core/annotation/AnnotationAttribute;->getAttributeType()Ljava/lang/Class;

    move-result-object v0

    invoke-interface {p0}, Lcn/hutool/core/annotation/AnnotationAttribute;->getAttributeType()Ljava/lang/Class;

    move-result-object v3

    invoke-static {v0, v3}, Lcn/hutool/core/util/ClassUtil;->isAssignable(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v2

    :goto_1
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    .line 57
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-interface {p3}, Lcn/hutool/core/annotation/AnnotationAttribute;->getAttributeType()Ljava/lang/Class;

    move-result-object v1

    aput-object v1, v3, v2

    const-string v1, "return type of the root alias method [{}] is inconsistent with the original [{}]"

    .line 53
    invoke-static {v0, v1, v3}, Lcn/hutool/core/lang/Assert;->isTrue(ZLjava/lang/String;[Ljava/lang/Object;)V

    if-eq p3, p0, :cond_2

    .line 60
    new-instance v0, Lcn/hutool/core/annotation/ForceAliasedAnnotationAttribute;

    invoke-direct {v0, p3, p0}, Lcn/hutool/core/annotation/ForceAliasedAnnotationAttribute;-><init>(Lcn/hutool/core/annotation/AnnotationAttribute;Lcn/hutool/core/annotation/AnnotationAttribute;)V

    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-void
.end method


# virtual methods
.method public order()I
    .locals 1

    const/high16 v0, -0x80000000

    return v0
.end method

.method public process(Lcn/hutool/core/annotation/SynthesizedAnnotation;Lcn/hutool/core/annotation/AnnotationSynthesizer;)V
    .locals 2

    .line 31
    invoke-interface {p1}, Lcn/hutool/core/annotation/SynthesizedAnnotation;->getAttributes()Ljava/util/Map;

    move-result-object p2

    .line 34
    new-instance v0, Lcn/hutool/core/map/LinkedForestMap;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcn/hutool/core/map/LinkedForestMap;-><init>(Z)V

    .line 35
    new-instance v1, Lcn/hutool/core/annotation/AliasAnnotationPostProcessor$$ExternalSyntheticLambda3;

    invoke-direct {v1, p2, v0}, Lcn/hutool/core/annotation/AliasAnnotationPostProcessor$$ExternalSyntheticLambda3;-><init>(Ljava/util/Map;Lcn/hutool/core/map/ForestMap;)V

    invoke-interface {p2, v1}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    .line 48
    new-instance v1, Lcn/hutool/core/annotation/AliasAnnotationPostProcessor$$ExternalSyntheticLambda4;

    invoke-direct {v1, v0, p2}, Lcn/hutool/core/annotation/AliasAnnotationPostProcessor$$ExternalSyntheticLambda4;-><init>(Lcn/hutool/core/map/ForestMap;Ljava/util/Map;)V

    invoke-interface {p2, v1}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    .line 63
    invoke-interface {p1, p2}, Lcn/hutool/core/annotation/SynthesizedAnnotation;->setAttributes(Ljava/util/Map;)V

    return-void
.end method
