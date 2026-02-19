.class public Lcn/hutool/core/annotation/AliasLinkAnnotationPostProcessor;
.super Lcn/hutool/core/annotation/AbstractLinkAnnotationPostProcessor;
.source "AliasLinkAnnotationPostProcessor.java"


# static fields
.field private static final PROCESSED_RELATION_TYPES:[Lcn/hutool/core/annotation/RelationType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Lcn/hutool/core/annotation/RelationType;

    const/4 v1, 0x0

    .line 23
    sget-object v2, Lcn/hutool/core/annotation/RelationType;->ALIAS_FOR:Lcn/hutool/core/annotation/RelationType;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcn/hutool/core/annotation/RelationType;->FORCE_ALIAS_FOR:Lcn/hutool/core/annotation/RelationType;

    aput-object v2, v0, v1

    sput-object v0, Lcn/hutool/core/annotation/AliasLinkAnnotationPostProcessor;->PROCESSED_RELATION_TYPES:[Lcn/hutool/core/annotation/RelationType;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Lcn/hutool/core/annotation/AbstractLinkAnnotationPostProcessor;-><init>()V

    return-void
.end method

.method private checkAliasRelation(Lcn/hutool/core/annotation/Link;Lcn/hutool/core/annotation/AnnotationAttribute;Lcn/hutool/core/annotation/AnnotationAttribute;)V
    .locals 0

    .line 101
    invoke-virtual {p0, p2, p3, p1}, Lcn/hutool/core/annotation/AliasLinkAnnotationPostProcessor;->checkLinkedAttributeNotNull(Lcn/hutool/core/annotation/AnnotationAttribute;Lcn/hutool/core/annotation/AnnotationAttribute;Lcn/hutool/core/annotation/Link;)V

    .line 102
    invoke-virtual {p0, p2, p3}, Lcn/hutool/core/annotation/AliasLinkAnnotationPostProcessor;->checkAttributeType(Lcn/hutool/core/annotation/AnnotationAttribute;Lcn/hutool/core/annotation/AnnotationAttribute;)V

    .line 103
    invoke-direct {p0, p2, p3}, Lcn/hutool/core/annotation/AliasLinkAnnotationPostProcessor;->checkCircularDependency(Lcn/hutool/core/annotation/AnnotationAttribute;Lcn/hutool/core/annotation/AnnotationAttribute;)V

    return-void
.end method

.method private checkCircularDependency(Lcn/hutool/core/annotation/AnnotationAttribute;Lcn/hutool/core/annotation/AnnotationAttribute;)V
    .locals 6

    .line 110
    invoke-virtual {p0, p1, p2}, Lcn/hutool/core/annotation/AliasLinkAnnotationPostProcessor;->checkLinkedSelf(Lcn/hutool/core/annotation/AnnotationAttribute;Lcn/hutool/core/annotation/AnnotationAttribute;)V

    const/4 v0, 0x2

    new-array v1, v0, [Lcn/hutool/core/annotation/RelationType;

    .line 111
    sget-object v2, Lcn/hutool/core/annotation/RelationType;->ALIAS_FOR:Lcn/hutool/core/annotation/RelationType;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lcn/hutool/core/annotation/RelationType;->FORCE_ALIAS_FOR:Lcn/hutool/core/annotation/RelationType;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    invoke-virtual {p0, p2, v1}, Lcn/hutool/core/annotation/AliasLinkAnnotationPostProcessor;->getLinkAnnotation(Lcn/hutool/core/annotation/AnnotationAttribute;[Lcn/hutool/core/annotation/RelationType;)Lcn/hutool/core/annotation/Link;

    move-result-object v1

    .line 112
    invoke-static {v1}, Lcn/hutool/core/util/ObjectUtil;->isNull(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    .line 115
    :cond_0
    invoke-interface {p2}, Lcn/hutool/core/annotation/AnnotationAttribute;->getAnnotationType()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcn/hutool/core/annotation/AliasLinkAnnotationPostProcessor;->getLinkedAnnotationType(Lcn/hutool/core/annotation/Link;Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v2

    .line 116
    invoke-interface {p1}, Lcn/hutool/core/annotation/AnnotationAttribute;->getAnnotationType()Ljava/lang/Class;

    move-result-object v5

    invoke-static {v2, v5}, Lcn/hutool/core/util/ObjectUtil;->notEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    return-void

    .line 120
    :cond_1
    invoke-interface {v1}, Lcn/hutool/core/annotation/Link;->attribute()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lcn/hutool/core/annotation/AnnotationAttribute;->getAttributeName()Ljava/lang/String;

    move-result-object v2

    new-array v0, v0, [Ljava/lang/Object;

    .line 122
    invoke-interface {p2}, Lcn/hutool/core/annotation/AnnotationAttribute;->getAttribute()Ljava/lang/reflect/Method;

    move-result-object p2

    aput-object p2, v0, v3

    invoke-interface {p1}, Lcn/hutool/core/annotation/AnnotationAttribute;->getAttribute()Ljava/lang/reflect/Method;

    move-result-object p1

    aput-object p1, v0, v4

    const-string p1, "circular reference between the alias attribute [{}] and the original attribute [{}]"

    .line 119
    invoke-static {v1, v2, p1, v0}, Lcn/hutool/core/lang/Assert;->notEquals(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic lambda$null$1(Ljava/util/function/BinaryOperator;Lcn/hutool/core/annotation/AnnotationAttribute;Lcn/hutool/core/annotation/AnnotationAttribute;)Lcn/hutool/core/annotation/AnnotationAttribute;
    .locals 0

    .line 94
    invoke-interface {p0, p2, p1}, Ljava/util/function/BinaryOperator;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcn/hutool/core/annotation/AnnotationAttribute;

    return-object p0
.end method

.method static synthetic lambda$processAttribute$2(Lcn/hutool/core/annotation/AnnotationAttribute;Ljava/util/function/BinaryOperator;Lcn/hutool/core/annotation/AnnotationAttribute;Lcn/hutool/core/annotation/SynthesizedAnnotation;)V
    .locals 1

    .line 94
    invoke-interface {p0}, Lcn/hutool/core/annotation/AnnotationAttribute;->getAttributeName()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Lcn/hutool/core/annotation/AliasLinkAnnotationPostProcessor$$ExternalSyntheticLambda3;

    invoke-direct {v0, p1, p2}, Lcn/hutool/core/annotation/AliasLinkAnnotationPostProcessor$$ExternalSyntheticLambda3;-><init>(Ljava/util/function/BinaryOperator;Lcn/hutool/core/annotation/AnnotationAttribute;)V

    invoke-interface {p3, p0, v0}, Lcn/hutool/core/annotation/SynthesizedAnnotation;->replaceAttribute(Ljava/lang/String;Ljava/util/function/UnaryOperator;)V

    return-void
.end method

.method private processAttribute(Lcn/hutool/core/annotation/AnnotationSynthesizer;Lcn/hutool/core/annotation/AnnotationAttribute;Lcn/hutool/core/annotation/AnnotationAttribute;Ljava/util/function/BinaryOperator;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/hutool/core/annotation/AnnotationSynthesizer;",
            "Lcn/hutool/core/annotation/AnnotationAttribute;",
            "Lcn/hutool/core/annotation/AnnotationAttribute;",
            "Ljava/util/function/BinaryOperator<",
            "Lcn/hutool/core/annotation/AnnotationAttribute;",
            ">;)V"
        }
    .end annotation

    .line 92
    invoke-interface {p3}, Lcn/hutool/core/annotation/AnnotationAttribute;->getAnnotationType()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcn/hutool/core/lang/Opt;->ofNullable(Ljava/lang/Object;)Lcn/hutool/core/lang/Opt;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcn/hutool/core/annotation/AliasLinkAnnotationPostProcessor$$ExternalSyntheticLambda1;

    invoke-direct {v1, p1}, Lcn/hutool/core/annotation/AliasLinkAnnotationPostProcessor$$ExternalSyntheticLambda1;-><init>(Lcn/hutool/core/annotation/AnnotationSynthesizer;)V

    .line 93
    invoke-virtual {v0, v1}, Lcn/hutool/core/lang/Opt;->map(Ljava/util/function/Function;)Lcn/hutool/core/lang/Opt;

    move-result-object p1

    new-instance v0, Lcn/hutool/core/annotation/AliasLinkAnnotationPostProcessor$$ExternalSyntheticLambda2;

    invoke-direct {v0, p3, p4, p2}, Lcn/hutool/core/annotation/AliasLinkAnnotationPostProcessor$$ExternalSyntheticLambda2;-><init>(Lcn/hutool/core/annotation/AnnotationAttribute;Ljava/util/function/BinaryOperator;Lcn/hutool/core/annotation/AnnotationAttribute;)V

    .line 94
    invoke-virtual {p1, v0}, Lcn/hutool/core/lang/Opt;->ifPresent(Ljava/util/function/Consumer;)Lcn/hutool/core/lang/Opt;

    return-void
.end method

.method private wrappingLinkedAttribute(Lcn/hutool/core/annotation/AnnotationSynthesizer;Lcn/hutool/core/annotation/AnnotationAttribute;Lcn/hutool/core/annotation/AnnotationAttribute;Ljava/util/function/BinaryOperator;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/hutool/core/annotation/AnnotationSynthesizer;",
            "Lcn/hutool/core/annotation/AnnotationAttribute;",
            "Lcn/hutool/core/annotation/AnnotationAttribute;",
            "Ljava/util/function/BinaryOperator<",
            "Lcn/hutool/core/annotation/AnnotationAttribute;",
            ">;)V"
        }
    .end annotation

    .line 75
    invoke-interface {p3}, Lcn/hutool/core/annotation/AnnotationAttribute;->isWrapped()Z

    move-result v0

    if-nez v0, :cond_0

    .line 76
    invoke-direct {p0, p1, p2, p3, p4}, Lcn/hutool/core/annotation/AliasLinkAnnotationPostProcessor;->processAttribute(Lcn/hutool/core/annotation/AnnotationSynthesizer;Lcn/hutool/core/annotation/AnnotationAttribute;Lcn/hutool/core/annotation/AnnotationAttribute;Ljava/util/function/BinaryOperator;)V

    return-void

    .line 80
    :cond_0
    check-cast p3, Lcn/hutool/core/annotation/AbstractWrappedAnnotationAttribute;

    .line 81
    invoke-virtual {p3}, Lcn/hutool/core/annotation/AbstractWrappedAnnotationAttribute;->getAllLinkedNonWrappedAttributes()Ljava/util/Collection;

    move-result-object p3

    new-instance v0, Lcn/hutool/core/annotation/AliasLinkAnnotationPostProcessor$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1, p2, p4}, Lcn/hutool/core/annotation/AliasLinkAnnotationPostProcessor$$ExternalSyntheticLambda0;-><init>(Lcn/hutool/core/annotation/AliasLinkAnnotationPostProcessor;Lcn/hutool/core/annotation/AnnotationSynthesizer;Lcn/hutool/core/annotation/AnnotationAttribute;Ljava/util/function/BinaryOperator;)V

    invoke-interface {p3, v0}, Ljava/util/Collection;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method


# virtual methods
.method synthetic lambda$wrappingLinkedAttribute$0$cn-hutool-core-annotation-AliasLinkAnnotationPostProcessor(Lcn/hutool/core/annotation/AnnotationSynthesizer;Lcn/hutool/core/annotation/AnnotationAttribute;Ljava/util/function/BinaryOperator;Lcn/hutool/core/annotation/AnnotationAttribute;)V
    .locals 0

    .line 82
    invoke-direct {p0, p1, p2, p4, p3}, Lcn/hutool/core/annotation/AliasLinkAnnotationPostProcessor;->processAttribute(Lcn/hutool/core/annotation/AnnotationSynthesizer;Lcn/hutool/core/annotation/AnnotationAttribute;Lcn/hutool/core/annotation/AnnotationAttribute;Ljava/util/function/BinaryOperator;)V

    return-void
.end method

.method public order()I
    .locals 1

    const v0, -0x7ffffffe

    return v0
.end method

.method protected processLinkedAttribute(Lcn/hutool/core/annotation/AnnotationSynthesizer;Lcn/hutool/core/annotation/Link;Lcn/hutool/core/annotation/SynthesizedAnnotation;Lcn/hutool/core/annotation/AnnotationAttribute;Lcn/hutool/core/annotation/SynthesizedAnnotation;Lcn/hutool/core/annotation/AnnotationAttribute;)V
    .locals 0

    .line 59
    invoke-direct {p0, p2, p4, p6}, Lcn/hutool/core/annotation/AliasLinkAnnotationPostProcessor;->checkAliasRelation(Lcn/hutool/core/annotation/Link;Lcn/hutool/core/annotation/AnnotationAttribute;Lcn/hutool/core/annotation/AnnotationAttribute;)V

    .line 61
    sget-object p3, Lcn/hutool/core/annotation/RelationType;->ALIAS_FOR:Lcn/hutool/core/annotation/RelationType;

    invoke-interface {p2}, Lcn/hutool/core/annotation/Link;->type()Lcn/hutool/core/annotation/RelationType;

    move-result-object p2

    invoke-virtual {p3, p2}, Lcn/hutool/core/annotation/RelationType;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 62
    new-instance p2, Lcn/hutool/core/annotation/AliasLinkAnnotationPostProcessor$$ExternalSyntheticLambda4;

    invoke-direct {p2}, Lcn/hutool/core/annotation/AliasLinkAnnotationPostProcessor$$ExternalSyntheticLambda4;-><init>()V

    invoke-direct {p0, p1, p4, p6, p2}, Lcn/hutool/core/annotation/AliasLinkAnnotationPostProcessor;->wrappingLinkedAttribute(Lcn/hutool/core/annotation/AnnotationSynthesizer;Lcn/hutool/core/annotation/AnnotationAttribute;Lcn/hutool/core/annotation/AnnotationAttribute;Ljava/util/function/BinaryOperator;)V

    return-void

    .line 66
    :cond_0
    new-instance p2, Lcn/hutool/core/annotation/AliasLinkAnnotationPostProcessor$$ExternalSyntheticLambda5;

    invoke-direct {p2}, Lcn/hutool/core/annotation/AliasLinkAnnotationPostProcessor$$ExternalSyntheticLambda5;-><init>()V

    invoke-direct {p0, p1, p4, p6, p2}, Lcn/hutool/core/annotation/AliasLinkAnnotationPostProcessor;->wrappingLinkedAttribute(Lcn/hutool/core/annotation/AnnotationSynthesizer;Lcn/hutool/core/annotation/AnnotationAttribute;Lcn/hutool/core/annotation/AnnotationAttribute;Ljava/util/function/BinaryOperator;)V

    return-void
.end method

.method protected processTypes()[Lcn/hutool/core/annotation/RelationType;
    .locals 1

    .line 37
    sget-object v0, Lcn/hutool/core/annotation/AliasLinkAnnotationPostProcessor;->PROCESSED_RELATION_TYPES:[Lcn/hutool/core/annotation/RelationType;

    return-object v0
.end method
