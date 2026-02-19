.class public Lcn/hutool/core/annotation/GenericSynthesizedAggregateAnnotation;
.super Lcn/hutool/core/annotation/AbstractAnnotationSynthesizer;
.source "GenericSynthesizedAggregateAnnotation.java"

# interfaces
.implements Lcn/hutool/core/annotation/SynthesizedAggregateAnnotation;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/hutool/core/annotation/GenericSynthesizedAggregateAnnotation$MetaAnnotation;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/hutool/core/annotation/AbstractAnnotationSynthesizer<",
        "Ljava/util/List<",
        "Ljava/lang/annotation/Annotation;",
        ">;>;",
        "Lcn/hutool/core/annotation/SynthesizedAggregateAnnotation;"
    }
.end annotation


# instance fields
.field private final attributeProcessor:Lcn/hutool/core/annotation/SynthesizedAnnotationAttributeProcessor;

.field private final horizontalDistance:I

.field private final root:Ljava/lang/Object;

.field private final verticalDistance:I


# direct methods
.method public static synthetic $r8$lambda$nJEg5sNrYwqz6RyqMS4PSgp0BMg(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method constructor <init>(Ljava/lang/Object;IILjava/util/List;Lcn/hutool/core/annotation/SynthesizedAnnotationSelector;Lcn/hutool/core/annotation/SynthesizedAnnotationAttributeProcessor;Ljava/util/Collection;Lcn/hutool/core/annotation/scanner/AnnotationScanner;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "II",
            "Ljava/util/List<",
            "Ljava/lang/annotation/Annotation;",
            ">;",
            "Lcn/hutool/core/annotation/SynthesizedAnnotationSelector;",
            "Lcn/hutool/core/annotation/SynthesizedAnnotationAttributeProcessor;",
            "Ljava/util/Collection<",
            "Lcn/hutool/core/annotation/SynthesizedAnnotationPostProcessor;",
            ">;",
            "Lcn/hutool/core/annotation/scanner/AnnotationScanner;",
            ")V"
        }
    .end annotation

    .line 151
    invoke-direct {p0, p4, p5, p7, p8}, Lcn/hutool/core/annotation/AbstractAnnotationSynthesizer;-><init>(Ljava/lang/Object;Lcn/hutool/core/annotation/SynthesizedAnnotationSelector;Ljava/util/Collection;Lcn/hutool/core/annotation/scanner/AnnotationScanner;)V

    const/4 p4, 0x0

    new-array p4, p4, [Ljava/lang/Object;

    const-string p5, "attributeProcessor must not null"

    .line 152
    invoke-static {p6, p5, p4}, Lcn/hutool/core/lang/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    invoke-static {p1, p0}, Lcn/hutool/core/util/ObjectUtil;->defaultIfNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcn/hutool/core/annotation/GenericSynthesizedAggregateAnnotation;->root:Ljava/lang/Object;

    .line 155
    iput p2, p0, Lcn/hutool/core/annotation/GenericSynthesizedAggregateAnnotation;->verticalDistance:I

    .line 156
    iput p3, p0, Lcn/hutool/core/annotation/GenericSynthesizedAggregateAnnotation;->horizontalDistance:I

    .line 157
    iput-object p6, p0, Lcn/hutool/core/annotation/GenericSynthesizedAggregateAnnotation;->attributeProcessor:Lcn/hutool/core/annotation/SynthesizedAnnotationAttributeProcessor;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Lcn/hutool/core/annotation/SynthesizedAnnotationSelector;Lcn/hutool/core/annotation/SynthesizedAnnotationAttributeProcessor;Ljava/util/Collection;Lcn/hutool/core/annotation/scanner/AnnotationScanner;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/annotation/Annotation;",
            ">;",
            "Lcn/hutool/core/annotation/SynthesizedAnnotationSelector;",
            "Lcn/hutool/core/annotation/SynthesizedAnnotationAttributeProcessor;",
            "Ljava/util/Collection<",
            "Lcn/hutool/core/annotation/SynthesizedAnnotationPostProcessor;",
            ">;",
            "Lcn/hutool/core/annotation/scanner/AnnotationScanner;",
            ")V"
        }
    .end annotation

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    move-object v8, p5

    .line 126
    invoke-direct/range {v0 .. v8}, Lcn/hutool/core/annotation/GenericSynthesizedAggregateAnnotation;-><init>(Ljava/lang/Object;IILjava/util/List;Lcn/hutool/core/annotation/SynthesizedAnnotationSelector;Lcn/hutool/core/annotation/SynthesizedAnnotationAttributeProcessor;Ljava/util/Collection;Lcn/hutool/core/annotation/scanner/AnnotationScanner;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Lcn/hutool/core/annotation/scanner/AnnotationScanner;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/annotation/Annotation;",
            ">;",
            "Lcn/hutool/core/annotation/scanner/AnnotationScanner;",
            ")V"
        }
    .end annotation

    .line 99
    sget-object v2, Lcn/hutool/core/annotation/SynthesizedAnnotationSelector;->NEAREST_AND_OLDEST_PRIORITY:Lcn/hutool/core/annotation/SynthesizedAnnotationSelector;

    new-instance v3, Lcn/hutool/core/annotation/CacheableSynthesizedAnnotationAttributeProcessor;

    invoke-direct {v3}, Lcn/hutool/core/annotation/CacheableSynthesizedAnnotationAttributeProcessor;-><init>()V

    const/4 v0, 0x3

    new-array v0, v0, [Lcn/hutool/core/annotation/SynthesizedAnnotationPostProcessor;

    const/4 v1, 0x0

    sget-object v4, Lcn/hutool/core/annotation/SynthesizedAnnotationPostProcessor;->ALIAS_ANNOTATION_POST_PROCESSOR:Lcn/hutool/core/annotation/AliasAnnotationPostProcessor;

    aput-object v4, v0, v1

    const/4 v1, 0x1

    sget-object v4, Lcn/hutool/core/annotation/SynthesizedAnnotationPostProcessor;->MIRROR_LINK_ANNOTATION_POST_PROCESSOR:Lcn/hutool/core/annotation/MirrorLinkAnnotationPostProcessor;

    aput-object v4, v0, v1

    const/4 v1, 0x2

    sget-object v4, Lcn/hutool/core/annotation/SynthesizedAnnotationPostProcessor;->ALIAS_LINK_ANNOTATION_POST_PROCESSOR:Lcn/hutool/core/annotation/AliasLinkAnnotationPostProcessor;

    aput-object v4, v0, v1

    .line 102
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    move-object v0, p0

    move-object v1, p1

    move-object v5, p2

    .line 99
    invoke-direct/range {v0 .. v5}, Lcn/hutool/core/annotation/GenericSynthesizedAggregateAnnotation;-><init>(Ljava/util/List;Lcn/hutool/core/annotation/SynthesizedAnnotationSelector;Lcn/hutool/core/annotation/SynthesizedAnnotationAttributeProcessor;Ljava/util/Collection;Lcn/hutool/core/annotation/scanner/AnnotationScanner;)V

    return-void
.end method

.method public varargs constructor <init>([Ljava/lang/annotation/Annotation;)V
    .locals 1

    .line 87
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    new-instance v0, Lcn/hutool/core/annotation/scanner/MetaAnnotationScanner;

    invoke-direct {v0}, Lcn/hutool/core/annotation/scanner/MetaAnnotationScanner;-><init>()V

    invoke-direct {p0, p1, v0}, Lcn/hutool/core/annotation/GenericSynthesizedAggregateAnnotation;-><init>(Ljava/util/List;Lcn/hutool/core/annotation/scanner/AnnotationScanner;)V

    return-void
.end method

.method static synthetic lambda$getAnnotations$1(I)[Ljava/lang/annotation/Annotation;
    .locals 0

    .line 282
    new-array p0, p0, [Ljava/lang/annotation/Annotation;

    return-object p0
.end method


# virtual methods
.method public getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/annotation/Annotation;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 255
    invoke-static {p1}, Lcn/hutool/core/lang/Opt;->ofNullable(Ljava/lang/Object;)Lcn/hutool/core/lang/Opt;

    move-result-object v0

    iget-object v1, p0, Lcn/hutool/core/annotation/GenericSynthesizedAggregateAnnotation;->synthesizedAnnotationMap:Ljava/util/Map;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lcn/hutool/core/annotation/GenericSynthesizedAggregateAnnotation$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1}, Lcn/hutool/core/annotation/GenericSynthesizedAggregateAnnotation$$ExternalSyntheticLambda0;-><init>(Ljava/util/Map;)V

    .line 256
    invoke-virtual {v0, v2}, Lcn/hutool/core/lang/Opt;->map(Ljava/util/function/Function;)Lcn/hutool/core/lang/Opt;

    move-result-object v0

    new-instance v1, Lcn/hutool/core/annotation/GenericSynthesizedAggregateAnnotation$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lcn/hutool/core/annotation/GenericSynthesizedAggregateAnnotation$$ExternalSyntheticLambda1;-><init>()V

    .line 257
    invoke-virtual {v0, v1}, Lcn/hutool/core/lang/Opt;->map(Ljava/util/function/Function;)Lcn/hutool/core/lang/Opt;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcn/hutool/core/annotation/GenericSynthesizedAggregateAnnotation$$ExternalSyntheticLambda2;

    invoke-direct {v1, p1}, Lcn/hutool/core/annotation/GenericSynthesizedAggregateAnnotation$$ExternalSyntheticLambda2;-><init>(Ljava/lang/Class;)V

    .line 258
    invoke-virtual {v0, v1}, Lcn/hutool/core/lang/Opt;->map(Ljava/util/function/Function;)Lcn/hutool/core/lang/Opt;

    move-result-object p1

    const/4 v0, 0x0

    .line 259
    invoke-virtual {p1, v0}, Lcn/hutool/core/lang/Opt;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/annotation/Annotation;

    return-object p1
.end method

.method public getAnnotationAttributeProcessor()Lcn/hutool/core/annotation/SynthesizedAnnotationAttributeProcessor;
    .locals 1

    .line 230
    iget-object v0, p0, Lcn/hutool/core/annotation/GenericSynthesizedAggregateAnnotation;->attributeProcessor:Lcn/hutool/core/annotation/SynthesizedAnnotationAttributeProcessor;

    return-object v0
.end method

.method public getAnnotations()[Ljava/lang/annotation/Annotation;
    .locals 2

    .line 280
    iget-object v0, p0, Lcn/hutool/core/annotation/GenericSynthesizedAggregateAnnotation;->synthesizedAnnotationMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcn/hutool/core/annotation/GenericSynthesizedAggregateAnnotation$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lcn/hutool/core/annotation/GenericSynthesizedAggregateAnnotation$$ExternalSyntheticLambda1;-><init>()V

    .line 281
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcn/hutool/core/annotation/GenericSynthesizedAggregateAnnotation$$ExternalSyntheticLambda4;

    invoke-direct {v1}, Lcn/hutool/core/annotation/GenericSynthesizedAggregateAnnotation$$ExternalSyntheticLambda4;-><init>()V

    .line 282
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/annotation/Annotation;

    return-object v0
.end method

.method public getAttributeValue(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 243
    iget-object v0, p0, Lcn/hutool/core/annotation/GenericSynthesizedAggregateAnnotation;->attributeProcessor:Lcn/hutool/core/annotation/SynthesizedAnnotationAttributeProcessor;

    iget-object v1, p0, Lcn/hutool/core/annotation/GenericSynthesizedAggregateAnnotation;->synthesizedAnnotationMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v0, p1, p2, v1}, Lcn/hutool/core/annotation/SynthesizedAnnotationAttributeProcessor;->getAttributeValue(Ljava/lang/String;Ljava/lang/Class;Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getHorizontalDistance()I
    .locals 1

    .line 187
    iget v0, p0, Lcn/hutool/core/annotation/GenericSynthesizedAggregateAnnotation;->horizontalDistance:I

    return v0
.end method

.method public getRoot()Ljava/lang/Object;
    .locals 1

    .line 167
    iget-object v0, p0, Lcn/hutool/core/annotation/GenericSynthesizedAggregateAnnotation;->root:Ljava/lang/Object;

    return-object v0
.end method

.method public getVerticalDistance()I
    .locals 1

    .line 177
    iget v0, p0, Lcn/hutool/core/annotation/GenericSynthesizedAggregateAnnotation;->verticalDistance:I

    return v0
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

    .line 270
    iget-object v0, p0, Lcn/hutool/core/annotation/GenericSynthesizedAggregateAnnotation;->synthesizedAnnotationMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method synthetic lambda$loadAnnotations$0$cn-hutool-core-annotation-GenericSynthesizedAggregateAnnotation(Ljava/util/Map;Ljava/lang/annotation/Annotation;Ljava/lang/Integer;Ljava/lang/annotation/Annotation;)V
    .locals 3

    .line 209
    invoke-interface {p4}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/hutool/core/annotation/SynthesizedAnnotation;

    .line 210
    new-instance v1, Lcn/hutool/core/annotation/GenericSynthesizedAggregateAnnotation$MetaAnnotation;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    add-int/lit8 p3, p3, 0x1

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v2

    invoke-direct {v1, p2, p4, p3, v2}, Lcn/hutool/core/annotation/GenericSynthesizedAggregateAnnotation$MetaAnnotation;-><init>(Ljava/lang/annotation/Annotation;Ljava/lang/annotation/Annotation;II)V

    .line 211
    invoke-static {v0}, Lcn/hutool/core/util/ObjectUtil;->isNull(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 212
    invoke-interface {p4}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object p2

    invoke-interface {p1, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 214
    :cond_0
    invoke-interface {p4}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object p2

    iget-object p3, p0, Lcn/hutool/core/annotation/GenericSynthesizedAggregateAnnotation;->annotationSelector:Lcn/hutool/core/annotation/SynthesizedAnnotationSelector;

    invoke-interface {p3, v0, v1}, Lcn/hutool/core/annotation/SynthesizedAnnotationSelector;->choose(Lcn/hutool/core/annotation/SynthesizedAnnotation;Lcn/hutool/core/annotation/SynthesizedAnnotation;)Lcn/hutool/core/annotation/SynthesizedAnnotation;

    move-result-object p3

    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void
.end method

.method protected loadAnnotations()Ljava/util/Map;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;",
            "Lcn/hutool/core/annotation/SynthesizedAnnotation;",
            ">;"
        }
    .end annotation

    .line 195
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    .line 198
    :goto_0
    iget-object v3, p0, Lcn/hutool/core/annotation/GenericSynthesizedAggregateAnnotation;->source:Ljava/lang/Object;

    check-cast v3, Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 199
    iget-object v3, p0, Lcn/hutool/core/annotation/GenericSynthesizedAggregateAnnotation;->source:Ljava/lang/Object;

    check-cast v3, Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/annotation/Annotation;

    .line 200
    invoke-static {v3}, Lcn/hutool/core/annotation/AnnotationUtil;->isSynthesizedAnnotation(Ljava/lang/annotation/Annotation;)Z

    move-result v4

    const-string v5, "source [{}] has been synthesized"

    new-array v6, v1, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lcn/hutool/core/lang/Assert;->isFalse(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 201
    invoke-interface {v3}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v4

    new-instance v5, Lcn/hutool/core/annotation/GenericSynthesizedAggregateAnnotation$MetaAnnotation;

    invoke-direct {v5, v3, v3, v1, v2}, Lcn/hutool/core/annotation/GenericSynthesizedAggregateAnnotation$MetaAnnotation;-><init>(Ljava/lang/annotation/Annotation;Ljava/lang/annotation/Annotation;II)V

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    iget-object v4, p0, Lcn/hutool/core/annotation/GenericSynthesizedAggregateAnnotation;->annotationScanner:Lcn/hutool/core/annotation/scanner/AnnotationScanner;

    .line 203
    invoke-interface {v3}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v5

    invoke-interface {v4, v5}, Lcn/hutool/core/annotation/scanner/AnnotationScanner;->support(Ljava/lang/reflect/AnnotatedElement;)Z

    move-result v4

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, p0, Lcn/hutool/core/annotation/GenericSynthesizedAggregateAnnotation;->annotationScanner:Lcn/hutool/core/annotation/scanner/AnnotationScanner;

    aput-object v6, v5, v1

    .line 205
    invoke-interface {v3}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v6

    const/4 v7, 0x1

    aput-object v6, v5, v7

    const-string v6, "annotation scanner [{}] cannot support scan [{}]"

    .line 202
    invoke-static {v4, v6, v5}, Lcn/hutool/core/lang/Assert;->isTrue(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 207
    iget-object v4, p0, Lcn/hutool/core/annotation/GenericSynthesizedAggregateAnnotation;->annotationScanner:Lcn/hutool/core/annotation/scanner/AnnotationScanner;

    new-instance v5, Lcn/hutool/core/annotation/GenericSynthesizedAggregateAnnotation$$ExternalSyntheticLambda3;

    invoke-direct {v5, p0, v0, v3}, Lcn/hutool/core/annotation/GenericSynthesizedAggregateAnnotation$$ExternalSyntheticLambda3;-><init>(Lcn/hutool/core/annotation/GenericSynthesizedAggregateAnnotation;Ljava/util/Map;Ljava/lang/annotation/Annotation;)V

    .line 217
    invoke-interface {v3}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v3

    const/4 v6, 0x0

    .line 207
    invoke-interface {v4, v5, v3, v6}, Lcn/hutool/core/annotation/scanner/AnnotationScanner;->scan(Ljava/util/function/BiConsumer;Ljava/lang/reflect/AnnotatedElement;Ljava/util/function/Predicate;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public synthesize(Ljava/lang/Class;Lcn/hutool/core/annotation/SynthesizedAnnotation;)Ljava/lang/annotation/Annotation;
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

    .line 294
    invoke-static {p1, p0, p2}, Lcn/hutool/core/annotation/SynthesizedAnnotationProxy;->create(Ljava/lang/Class;Lcn/hutool/core/annotation/AnnotationAttributeValueProvider;Lcn/hutool/core/annotation/SynthesizedAnnotation;)Ljava/lang/annotation/Annotation;

    move-result-object p1

    return-object p1
.end method
