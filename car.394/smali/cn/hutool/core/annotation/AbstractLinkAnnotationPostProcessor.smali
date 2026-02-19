.class public abstract Lcn/hutool/core/annotation/AbstractLinkAnnotationPostProcessor;
.super Ljava/lang/Object;
.source "AbstractLinkAnnotationPostProcessor.java"

# interfaces
.implements Lcn/hutool/core/annotation/SynthesizedAnnotationPostProcessor;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic lambda$getLinkAnnotation$1(Lcn/hutool/core/annotation/AnnotationAttribute;Lcn/hutool/core/annotation/AnnotationAttribute;)Lcn/hutool/core/annotation/Link;
    .locals 0

    .line 91
    invoke-interface {p0}, Lcn/hutool/core/annotation/AnnotationAttribute;->getAttribute()Ljava/lang/reflect/Method;

    move-result-object p0

    const-class p1, Lcn/hutool/core/annotation/Link;

    invoke-static {p0, p1}, Lcn/hutool/core/annotation/AnnotationUtil;->getSynthesizedAnnotation(Ljava/lang/reflect/AnnotatedElement;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p0

    check-cast p0, Lcn/hutool/core/annotation/Link;

    return-object p0
.end method

.method static synthetic lambda$getLinkAnnotation$2([Lcn/hutool/core/annotation/RelationType;Lcn/hutool/core/annotation/Link;)Z
    .locals 0

    .line 92
    invoke-interface {p1}, Lcn/hutool/core/annotation/Link;->type()Lcn/hutool/core/annotation/RelationType;

    move-result-object p1

    invoke-static {p0, p1}, Lcn/hutool/core/util/ArrayUtil;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method protected checkAttributeType(Lcn/hutool/core/annotation/AnnotationAttribute;Lcn/hutool/core/annotation/AnnotationAttribute;)V
    .locals 4

    .line 132
    invoke-interface {p1}, Lcn/hutool/core/annotation/AnnotationAttribute;->getAttributeType()Ljava/lang/Class;

    move-result-object v0

    invoke-interface {p2}, Lcn/hutool/core/annotation/AnnotationAttribute;->getAttributeType()Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 134
    invoke-interface {p1}, Lcn/hutool/core/annotation/AnnotationAttribute;->getAttribute()Ljava/lang/reflect/Method;

    move-result-object p1

    aput-object p1, v2, v3

    const/4 p1, 0x1

    invoke-interface {p2}, Lcn/hutool/core/annotation/AnnotationAttribute;->getAttribute()Ljava/lang/reflect/Method;

    move-result-object p2

    aput-object p2, v2, p1

    const-string p1, "return type of the linked attribute [{}] is inconsistent with the original [{}]"

    .line 131
    invoke-static {v0, v1, p1, v2}, Lcn/hutool/core/lang/Assert;->equals(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method protected checkLinkedAttributeNotNull(Lcn/hutool/core/annotation/AnnotationAttribute;Lcn/hutool/core/annotation/AnnotationAttribute;Lcn/hutool/core/annotation/Link;)V
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 158
    invoke-interface {p1}, Lcn/hutool/core/annotation/AnnotationAttribute;->getAttribute()Ljava/lang/reflect/Method;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-interface {p3}, Lcn/hutool/core/annotation/Link;->attribute()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 159
    invoke-interface {p1}, Lcn/hutool/core/annotation/AnnotationAttribute;->getAnnotationType()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p0, p3, p1}, Lcn/hutool/core/annotation/AbstractLinkAnnotationPostProcessor;->getLinkedAnnotationType(Lcn/hutool/core/annotation/Link;Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p1

    const/4 p3, 0x2

    aput-object p1, v0, p3

    const-string p1, "cannot find linked attribute [{}] of original [{}] in [{}]"

    .line 157
    invoke-static {p2, p1, v0}, Lcn/hutool/core/lang/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method protected checkLinkedSelf(Lcn/hutool/core/annotation/AnnotationAttribute;Lcn/hutool/core/annotation/AnnotationAttribute;)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p1, p2, :cond_1

    .line 145
    invoke-interface {p1}, Lcn/hutool/core/annotation/AnnotationAttribute;->getAttribute()Ljava/lang/reflect/Method;

    move-result-object v2

    invoke-interface {p2}, Lcn/hutool/core/annotation/AnnotationAttribute;->getAttribute()Ljava/lang/reflect/Method;

    move-result-object p2

    invoke-static {v2, p2}, Lcn/hutool/core/util/ObjectUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    move p2, v0

    goto :goto_1

    :cond_1
    :goto_0
    move p2, v1

    :goto_1
    new-array v1, v1, [Ljava/lang/Object;

    .line 146
    invoke-interface {p1}, Lcn/hutool/core/annotation/AnnotationAttribute;->getAttribute()Ljava/lang/reflect/Method;

    move-result-object p1

    aput-object p1, v1, v0

    const-string p1, "cannot link self [{}]"

    invoke-static {p2, p1, v1}, Lcn/hutool/core/lang/Assert;->isFalse(ZLjava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method protected varargs getLinkAnnotation(Lcn/hutool/core/annotation/AnnotationAttribute;[Lcn/hutool/core/annotation/RelationType;)Lcn/hutool/core/annotation/Link;
    .locals 2

    .line 90
    invoke-static {p1}, Lcn/hutool/core/lang/Opt;->ofNullable(Ljava/lang/Object;)Lcn/hutool/core/lang/Opt;

    move-result-object v0

    new-instance v1, Lcn/hutool/core/annotation/AbstractLinkAnnotationPostProcessor$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1}, Lcn/hutool/core/annotation/AbstractLinkAnnotationPostProcessor$$ExternalSyntheticLambda0;-><init>(Lcn/hutool/core/annotation/AnnotationAttribute;)V

    .line 91
    invoke-virtual {v0, v1}, Lcn/hutool/core/lang/Opt;->map(Ljava/util/function/Function;)Lcn/hutool/core/lang/Opt;

    move-result-object p1

    new-instance v0, Lcn/hutool/core/annotation/AbstractLinkAnnotationPostProcessor$$ExternalSyntheticLambda1;

    invoke-direct {v0, p2}, Lcn/hutool/core/annotation/AbstractLinkAnnotationPostProcessor$$ExternalSyntheticLambda1;-><init>([Lcn/hutool/core/annotation/RelationType;)V

    .line 92
    invoke-virtual {p1, v0}, Lcn/hutool/core/lang/Opt;->filter(Ljava/util/function/Predicate;)Lcn/hutool/core/lang/Opt;

    move-result-object p1

    .line 93
    invoke-virtual {p1}, Lcn/hutool/core/lang/Opt;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/hutool/core/annotation/Link;

    return-object p1
.end method

.method protected getLinkedAnnotation(Lcn/hutool/core/annotation/Link;Lcn/hutool/core/annotation/AnnotationSynthesizer;Ljava/lang/Class;)Lcn/hutool/core/annotation/SynthesizedAnnotation;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/hutool/core/annotation/Link;",
            "Lcn/hutool/core/annotation/AnnotationSynthesizer;",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;)",
            "Lcn/hutool/core/annotation/SynthesizedAnnotation;"
        }
    .end annotation

    .line 105
    invoke-virtual {p0, p1, p3}, Lcn/hutool/core/annotation/AbstractLinkAnnotationPostProcessor;->getLinkedAnnotationType(Lcn/hutool/core/annotation/Link;Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p1

    .line 106
    invoke-interface {p2, p1}, Lcn/hutool/core/annotation/AnnotationSynthesizer;->getSynthesizedAnnotation(Ljava/lang/Class;)Lcn/hutool/core/annotation/SynthesizedAnnotation;

    move-result-object p1

    return-object p1
.end method

.method protected getLinkedAnnotationType(Lcn/hutool/core/annotation/Link;Ljava/lang/Class;)Ljava/lang/Class;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/hutool/core/annotation/Link;",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 118
    invoke-interface {p1}, Lcn/hutool/core/annotation/Link;->annotation()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/lang/annotation/Annotation;

    invoke-static {v0, v1}, Lcn/hutool/core/util/ObjectUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 119
    :cond_0
    invoke-interface {p1}, Lcn/hutool/core/annotation/Link;->annotation()Ljava/lang/Class;

    move-result-object p2

    :goto_0
    return-object p2
.end method

.method synthetic lambda$process$0$cn-hutool-core-annotation-AbstractLinkAnnotationPostProcessor(Lcn/hutool/core/annotation/AnnotationSynthesizer;Lcn/hutool/core/annotation/SynthesizedAnnotation;Ljava/lang/String;Lcn/hutool/core/annotation/AnnotationAttribute;)V
    .locals 8

    .line 36
    invoke-virtual {p0}, Lcn/hutool/core/annotation/AbstractLinkAnnotationPostProcessor;->processTypes()[Lcn/hutool/core/annotation/RelationType;

    move-result-object v0

    invoke-virtual {p0, p4, v0}, Lcn/hutool/core/annotation/AbstractLinkAnnotationPostProcessor;->getLinkAnnotation(Lcn/hutool/core/annotation/AnnotationAttribute;[Lcn/hutool/core/annotation/RelationType;)Lcn/hutool/core/annotation/Link;

    move-result-object v3

    .line 37
    invoke-static {v3}, Lcn/hutool/core/util/ObjectUtil;->isNull(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_0

    return-void

    .line 41
    :cond_0
    invoke-interface {p2}, Lcn/hutool/core/annotation/SynthesizedAnnotation;->annotationType()Ljava/lang/Class;

    move-result-object p4

    invoke-virtual {p0, v3, p1, p4}, Lcn/hutool/core/annotation/AbstractLinkAnnotationPostProcessor;->getLinkedAnnotation(Lcn/hutool/core/annotation/Link;Lcn/hutool/core/annotation/AnnotationSynthesizer;Ljava/lang/Class;)Lcn/hutool/core/annotation/SynthesizedAnnotation;

    move-result-object v6

    .line 42
    invoke-static {v6}, Lcn/hutool/core/util/ObjectUtil;->isNull(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_1

    return-void

    .line 45
    :cond_1
    invoke-interface {v6}, Lcn/hutool/core/annotation/SynthesizedAnnotation;->getAttributes()Ljava/util/Map;

    move-result-object p4

    invoke-interface {v3}, Lcn/hutool/core/annotation/Link;->attribute()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    move-object v7, p4

    check-cast v7, Lcn/hutool/core/annotation/AnnotationAttribute;

    .line 49
    invoke-interface {p2}, Lcn/hutool/core/annotation/SynthesizedAnnotation;->getAttributes()Ljava/util/Map;

    move-result-object p4

    invoke-interface {p4, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    move-object v5, p3

    check-cast v5, Lcn/hutool/core/annotation/AnnotationAttribute;

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    .line 47
    invoke-virtual/range {v1 .. v7}, Lcn/hutool/core/annotation/AbstractLinkAnnotationPostProcessor;->processLinkedAttribute(Lcn/hutool/core/annotation/AnnotationSynthesizer;Lcn/hutool/core/annotation/Link;Lcn/hutool/core/annotation/SynthesizedAnnotation;Lcn/hutool/core/annotation/AnnotationAttribute;Lcn/hutool/core/annotation/SynthesizedAnnotation;Lcn/hutool/core/annotation/AnnotationAttribute;)V

    return-void
.end method

.method public process(Lcn/hutool/core/annotation/SynthesizedAnnotation;Lcn/hutool/core/annotation/AnnotationSynthesizer;)V
    .locals 2

    .line 33
    new-instance v0, Ljava/util/HashMap;

    invoke-interface {p1}, Lcn/hutool/core/annotation/SynthesizedAnnotation;->getAttributes()Ljava/util/Map;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 34
    new-instance v1, Lcn/hutool/core/annotation/AbstractLinkAnnotationPostProcessor$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p2, p1}, Lcn/hutool/core/annotation/AbstractLinkAnnotationPostProcessor$$ExternalSyntheticLambda2;-><init>(Lcn/hutool/core/annotation/AbstractLinkAnnotationPostProcessor;Lcn/hutool/core/annotation/AnnotationSynthesizer;Lcn/hutool/core/annotation/SynthesizedAnnotation;)V

    invoke-interface {v0, v1}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    return-void
.end method

.method protected abstract processLinkedAttribute(Lcn/hutool/core/annotation/AnnotationSynthesizer;Lcn/hutool/core/annotation/Link;Lcn/hutool/core/annotation/SynthesizedAnnotation;Lcn/hutool/core/annotation/AnnotationAttribute;Lcn/hutool/core/annotation/SynthesizedAnnotation;Lcn/hutool/core/annotation/AnnotationAttribute;)V
.end method

.method protected abstract processTypes()[Lcn/hutool/core/annotation/RelationType;
.end method
