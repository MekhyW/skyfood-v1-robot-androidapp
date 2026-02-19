.class public Lcn/hutool/core/annotation/MirrorLinkAnnotationPostProcessor;
.super Lcn/hutool/core/annotation/AbstractLinkAnnotationPostProcessor;
.source "MirrorLinkAnnotationPostProcessor.java"


# static fields
.field private static final PROCESSED_RELATION_TYPES:[Lcn/hutool/core/annotation/RelationType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Lcn/hutool/core/annotation/RelationType;

    const/4 v1, 0x0

    .line 18
    sget-object v2, Lcn/hutool/core/annotation/RelationType;->MIRROR_FOR:Lcn/hutool/core/annotation/RelationType;

    aput-object v2, v0, v1

    sput-object v0, Lcn/hutool/core/annotation/MirrorLinkAnnotationPostProcessor;->PROCESSED_RELATION_TYPES:[Lcn/hutool/core/annotation/RelationType;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Lcn/hutool/core/annotation/AbstractLinkAnnotationPostProcessor;-><init>()V

    return-void
.end method

.method private checkMirrorRelation(Lcn/hutool/core/annotation/Link;Lcn/hutool/core/annotation/AnnotationAttribute;Lcn/hutool/core/annotation/AnnotationAttribute;)V
    .locals 4

    .line 119
    invoke-virtual {p0, p2, p3, p1}, Lcn/hutool/core/annotation/MirrorLinkAnnotationPostProcessor;->checkLinkedAttributeNotNull(Lcn/hutool/core/annotation/AnnotationAttribute;Lcn/hutool/core/annotation/AnnotationAttribute;Lcn/hutool/core/annotation/Link;)V

    .line 121
    invoke-virtual {p0, p2, p3}, Lcn/hutool/core/annotation/MirrorLinkAnnotationPostProcessor;->checkAttributeType(Lcn/hutool/core/annotation/AnnotationAttribute;Lcn/hutool/core/annotation/AnnotationAttribute;)V

    const/4 p1, 0x1

    new-array v0, p1, [Lcn/hutool/core/annotation/RelationType;

    .line 123
    sget-object v1, Lcn/hutool/core/annotation/RelationType;->MIRROR_FOR:Lcn/hutool/core/annotation/RelationType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p0, p3, v0}, Lcn/hutool/core/annotation/MirrorLinkAnnotationPostProcessor;->getLinkAnnotation(Lcn/hutool/core/annotation/AnnotationAttribute;[Lcn/hutool/core/annotation/RelationType;)Lcn/hutool/core/annotation/Link;

    move-result-object v0

    .line 125
    invoke-static {v0}, Lcn/hutool/core/util/ObjectUtil;->isNotNull(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcn/hutool/core/annotation/RelationType;->MIRROR_FOR:Lcn/hutool/core/annotation/RelationType;

    invoke-interface {v0}, Lcn/hutool/core/annotation/Link;->type()Lcn/hutool/core/annotation/RelationType;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcn/hutool/core/annotation/RelationType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, p1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    .line 127
    invoke-interface {p3}, Lcn/hutool/core/annotation/AnnotationAttribute;->getAttribute()Ljava/lang/reflect/Method;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-interface {p2}, Lcn/hutool/core/annotation/AnnotationAttribute;->getAttribute()Ljava/lang/reflect/Method;

    move-result-object v2

    aput-object v2, v1, p1

    const/4 p1, 0x2

    sget-object v2, Lcn/hutool/core/annotation/RelationType;->MIRROR_FOR:Lcn/hutool/core/annotation/RelationType;

    aput-object v2, v1, p1

    const-string p1, "mirror attribute [{}] of original attribute [{}] must marked by @Link, and also @LinkType.type() must is [{}]"

    .line 124
    invoke-static {v0, p1, v1}, Lcn/hutool/core/lang/Assert;->isTrue(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 129
    invoke-virtual {p0, p2, p3}, Lcn/hutool/core/annotation/MirrorLinkAnnotationPostProcessor;->checkLinkedSelf(Lcn/hutool/core/annotation/AnnotationAttribute;Lcn/hutool/core/annotation/AnnotationAttribute;)V

    return-void
.end method

.method private checkMirrored(Lcn/hutool/core/annotation/AnnotationAttribute;Lcn/hutool/core/annotation/AnnotationAttribute;)V
    .locals 7

    .line 75
    instance-of v0, p1, Lcn/hutool/core/annotation/MirroredAnnotationAttribute;

    .line 76
    instance-of v1, p2, Lcn/hutool/core/annotation/MirroredAnnotationAttribute;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 79
    move-object v4, p1

    check-cast v4, Lcn/hutool/core/annotation/MirroredAnnotationAttribute;

    .line 80
    invoke-virtual {v4}, Lcn/hutool/core/annotation/MirroredAnnotationAttribute;->getLinked()Lcn/hutool/core/annotation/AnnotationAttribute;

    move-result-object v4

    move-object v5, p2

    check-cast v5, Lcn/hutool/core/annotation/MirroredAnnotationAttribute;

    invoke-virtual {v5}, Lcn/hutool/core/annotation/MirroredAnnotationAttribute;->getOriginal()Lcn/hutool/core/annotation/AnnotationAttribute;

    move-result-object v5

    invoke-static {v4, v5}, Lcn/hutool/core/util/ObjectUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v4, v2

    goto :goto_0

    :cond_0
    move v4, v3

    :goto_0
    if-eqz v4, :cond_1

    return-void

    :cond_1
    const-string v4, "attribute [{}] cannot mirror for [{}], because it\'s already mirrored for [{}]"

    const/4 v5, 0x3

    const/4 v6, 0x2

    if-eqz v0, :cond_3

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    new-array v0, v5, [Ljava/lang/Object;

    .line 91
    invoke-interface {p1}, Lcn/hutool/core/annotation/AnnotationAttribute;->getAttribute()Ljava/lang/reflect/Method;

    move-result-object v1

    aput-object v1, v0, v3

    invoke-interface {p2}, Lcn/hutool/core/annotation/AnnotationAttribute;->getAttribute()Ljava/lang/reflect/Method;

    move-result-object p2

    aput-object p2, v0, v2

    check-cast p1, Lcn/hutool/core/annotation/MirroredAnnotationAttribute;

    invoke-virtual {p1}, Lcn/hutool/core/annotation/MirroredAnnotationAttribute;->getLinked()Lcn/hutool/core/annotation/AnnotationAttribute;

    move-result-object p1

    aput-object p1, v0, v6

    .line 89
    invoke-static {v4, v0}, Lcn/hutool/core/text/CharSequenceUtil;->format(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_3
    :goto_1
    if-nez v0, :cond_4

    if-eqz v1, :cond_4

    new-array v0, v5, [Ljava/lang/Object;

    .line 98
    invoke-interface {p2}, Lcn/hutool/core/annotation/AnnotationAttribute;->getAttribute()Ljava/lang/reflect/Method;

    move-result-object v1

    aput-object v1, v0, v3

    invoke-interface {p1}, Lcn/hutool/core/annotation/AnnotationAttribute;->getAttribute()Ljava/lang/reflect/Method;

    move-result-object p1

    aput-object p1, v0, v2

    check-cast p2, Lcn/hutool/core/annotation/MirroredAnnotationAttribute;

    invoke-virtual {p2}, Lcn/hutool/core/annotation/MirroredAnnotationAttribute;->getLinked()Lcn/hutool/core/annotation/AnnotationAttribute;

    move-result-object p1

    aput-object p1, v0, v6

    .line 96
    invoke-static {v4, v0}, Lcn/hutool/core/text/CharSequenceUtil;->format(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_4
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    .line 105
    invoke-interface {p2}, Lcn/hutool/core/annotation/AnnotationAttribute;->getAttribute()Ljava/lang/reflect/Method;

    move-result-object v1

    aput-object v1, v0, v3

    invoke-interface {p1}, Lcn/hutool/core/annotation/AnnotationAttribute;->getAttribute()Ljava/lang/reflect/Method;

    move-result-object v1

    aput-object v1, v0, v2

    .line 106
    invoke-interface {p2}, Lcn/hutool/core/annotation/AnnotationAttribute;->getAttribute()Ljava/lang/reflect/Method;

    move-result-object v1

    aput-object v1, v0, v6

    check-cast p2, Lcn/hutool/core/annotation/MirroredAnnotationAttribute;

    invoke-virtual {p2}, Lcn/hutool/core/annotation/MirroredAnnotationAttribute;->getLinked()Lcn/hutool/core/annotation/AnnotationAttribute;

    move-result-object p2

    aput-object p2, v0, v5

    const/4 p2, 0x4

    .line 107
    invoke-interface {p1}, Lcn/hutool/core/annotation/AnnotationAttribute;->getAttribute()Ljava/lang/reflect/Method;

    move-result-object v1

    aput-object v1, v0, p2

    check-cast p1, Lcn/hutool/core/annotation/MirroredAnnotationAttribute;

    invoke-virtual {p1}, Lcn/hutool/core/annotation/MirroredAnnotationAttribute;->getLinked()Lcn/hutool/core/annotation/AnnotationAttribute;

    move-result-object p1

    const/4 p2, 0x5

    aput-object p1, v0, p2

    const-string p1, "attribute [{}] cannot mirror for [{}], because [{}] already mirrored for [{}] and  [{}] already mirrored for [{}]"

    .line 103
    invoke-static {p1, v0}, Lcn/hutool/core/text/CharSequenceUtil;->format(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 111
    :goto_2
    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method


# virtual methods
.method public order()I
    .locals 1

    const v0, -0x7fffffff

    return v0
.end method

.method protected processLinkedAttribute(Lcn/hutool/core/annotation/AnnotationSynthesizer;Lcn/hutool/core/annotation/Link;Lcn/hutool/core/annotation/SynthesizedAnnotation;Lcn/hutool/core/annotation/AnnotationAttribute;Lcn/hutool/core/annotation/SynthesizedAnnotation;Lcn/hutool/core/annotation/AnnotationAttribute;)V
    .locals 1

    .line 56
    instance-of p1, p4, Lcn/hutool/core/annotation/MirroredAnnotationAttribute;

    if-nez p1, :cond_1

    instance-of p1, p6, Lcn/hutool/core/annotation/MirroredAnnotationAttribute;

    if-eqz p1, :cond_0

    goto :goto_0

    .line 63
    :cond_0
    invoke-direct {p0, p2, p4, p6}, Lcn/hutool/core/annotation/MirrorLinkAnnotationPostProcessor;->checkMirrorRelation(Lcn/hutool/core/annotation/Link;Lcn/hutool/core/annotation/AnnotationAttribute;Lcn/hutool/core/annotation/AnnotationAttribute;)V

    .line 65
    new-instance p1, Lcn/hutool/core/annotation/MirroredAnnotationAttribute;

    invoke-direct {p1, p4, p6}, Lcn/hutool/core/annotation/MirroredAnnotationAttribute;-><init>(Lcn/hutool/core/annotation/AnnotationAttribute;Lcn/hutool/core/annotation/AnnotationAttribute;)V

    .line 66
    invoke-interface {p4}, Lcn/hutool/core/annotation/AnnotationAttribute;->getAttributeName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p3, v0, p1}, Lcn/hutool/core/annotation/SynthesizedAnnotation;->setAttribute(Ljava/lang/String;Lcn/hutool/core/annotation/AnnotationAttribute;)V

    .line 67
    new-instance p1, Lcn/hutool/core/annotation/MirroredAnnotationAttribute;

    invoke-direct {p1, p6, p4}, Lcn/hutool/core/annotation/MirroredAnnotationAttribute;-><init>(Lcn/hutool/core/annotation/AnnotationAttribute;Lcn/hutool/core/annotation/AnnotationAttribute;)V

    .line 68
    invoke-interface {p2}, Lcn/hutool/core/annotation/Link;->attribute()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p5, p2, p1}, Lcn/hutool/core/annotation/SynthesizedAnnotation;->setAttribute(Ljava/lang/String;Lcn/hutool/core/annotation/AnnotationAttribute;)V

    return-void

    .line 58
    :cond_1
    :goto_0
    invoke-direct {p0, p4, p6}, Lcn/hutool/core/annotation/MirrorLinkAnnotationPostProcessor;->checkMirrored(Lcn/hutool/core/annotation/AnnotationAttribute;Lcn/hutool/core/annotation/AnnotationAttribute;)V

    return-void
.end method

.method protected processTypes()[Lcn/hutool/core/annotation/RelationType;
    .locals 1

    .line 32
    sget-object v0, Lcn/hutool/core/annotation/MirrorLinkAnnotationPostProcessor;->PROCESSED_RELATION_TYPES:[Lcn/hutool/core/annotation/RelationType;

    return-object v0
.end method
