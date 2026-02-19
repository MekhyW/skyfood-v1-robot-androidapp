.class public Lcn/hutool/core/annotation/AnnotationUtil;
.super Ljava/lang/Object;
.source "AnnotationUtil.java"


# static fields
.field static final META_ANNOTATIONS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$KiJ3F1E89kuR0Bx78Vmfd5Bliwc(Ljava/lang/Object;)Z
    .locals 0

    invoke-static {p0}, Ljava/util/Objects;->nonNull(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    .line 35
    const-class v2, Ljava/lang/annotation/Target;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-class v2, Ljava/lang/annotation/Retention;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-class v2, Ljava/lang/annotation/Inherited;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-class v2, Ljava/lang/annotation/Documented;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-class v2, Ljava/lang/SuppressWarnings;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-class v2, Ljava/lang/Override;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-class v2, Ljava/lang/Deprecated;

    aput-object v2, v0, v1

    invoke-static {v0}, Lcn/hutool/core/collection/CollUtil;->newHashSet([Ljava/lang/Object;)Ljava/util/HashSet;

    move-result-object v0

    sput-object v0, Lcn/hutool/core/annotation/AnnotationUtil;->META_ANNOTATIONS:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static varargs aggregatingFromAnnotation([Ljava/lang/annotation/Annotation;)Lcn/hutool/core/annotation/SynthesizedAggregateAnnotation;
    .locals 2

    .line 556
    new-instance v0, Lcn/hutool/core/annotation/GenericSynthesizedAggregateAnnotation;

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    sget-object v1, Lcn/hutool/core/annotation/scanner/AnnotationScanner;->NOTHING:Lcn/hutool/core/annotation/scanner/AnnotationScanner;

    invoke-direct {v0, p0, v1}, Lcn/hutool/core/annotation/GenericSynthesizedAggregateAnnotation;-><init>(Ljava/util/List;Lcn/hutool/core/annotation/scanner/AnnotationScanner;)V

    return-object v0
.end method

.method public static varargs aggregatingFromAnnotationWithMeta([Ljava/lang/annotation/Annotation;)Lcn/hutool/core/annotation/SynthesizedAggregateAnnotation;
    .locals 2

    .line 566
    new-instance v0, Lcn/hutool/core/annotation/GenericSynthesizedAggregateAnnotation;

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    sget-object v1, Lcn/hutool/core/annotation/scanner/AnnotationScanner;->DIRECTLY_AND_META_ANNOTATION:Lcn/hutool/core/annotation/scanner/AnnotationScanner;

    invoke-direct {v0, p0, v1}, Lcn/hutool/core/annotation/GenericSynthesizedAggregateAnnotation;-><init>(Ljava/util/List;Lcn/hutool/core/annotation/scanner/AnnotationScanner;)V

    return-object v0
.end method

.method public static getAllSynthesizedAnnotations(Ljava/lang/reflect/AnnotatedElement;Ljava/lang/Class;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/annotation/Annotation;",
            ">(",
            "Ljava/lang/reflect/AnnotatedElement;",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 542
    sget-object v0, Lcn/hutool/core/annotation/scanner/AnnotationScanner;->DIRECTLY:Lcn/hutool/core/annotation/scanner/AnnotationScanner;

    .line 543
    invoke-interface {v0, p0}, Lcn/hutool/core/annotation/scanner/AnnotationScanner;->getAnnotationsIfSupport(Ljava/lang/reflect/AnnotatedElement;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcn/hutool/core/annotation/AnnotationUtil$$ExternalSyntheticLambda2;

    invoke-direct {v0, p1}, Lcn/hutool/core/annotation/AnnotationUtil$$ExternalSyntheticLambda2;-><init>(Ljava/lang/Class;)V

    .line 544
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p1, Lcn/hutool/core/annotation/AnnotationUtil$$ExternalSyntheticLambda1;

    invoke-direct {p1}, Lcn/hutool/core/annotation/AnnotationUtil$$ExternalSyntheticLambda1;-><init>()V

    .line 545
    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    .line 546
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method public static getAnnotation(Ljava/lang/reflect/AnnotatedElement;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Ljava/lang/annotation/Annotation;",
            ">(",
            "Ljava/lang/reflect/AnnotatedElement;",
            "Ljava/lang/Class<",
            "TA;>;)TA;"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 180
    :cond_0
    invoke-static {p0}, Lcn/hutool/core/annotation/AnnotationUtil;->toCombination(Ljava/lang/reflect/AnnotatedElement;)Lcn/hutool/core/annotation/CombinationAnnotationElement;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcn/hutool/core/annotation/CombinationAnnotationElement;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static getAnnotationAlias(Ljava/lang/reflect/AnnotatedElement;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/annotation/Annotation;",
            ">(",
            "Ljava/lang/reflect/AnnotatedElement;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 459
    invoke-static {p0, p1}, Lcn/hutool/core/annotation/AnnotationUtil;->getAnnotation(Ljava/lang/reflect/AnnotatedElement;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/annotation/Annotation;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    .line 463
    invoke-static {v0}, Lcn/hutool/core/annotation/AnnotationUtil;->aggregatingFromAnnotation([Ljava/lang/annotation/Annotation;)Lcn/hutool/core/annotation/SynthesizedAggregateAnnotation;

    move-result-object p0

    invoke-interface {p0, p1}, Lcn/hutool/core/annotation/SynthesizedAggregateAnnotation;->synthesize(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p0

    return-object p0
.end method

.method public static getAnnotationValue(Ljava/lang/reflect/AnnotatedElement;Lcn/hutool/core/lang/func/Func1;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Ljava/lang/annotation/Annotation;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/reflect/AnnotatedElement;",
            "Lcn/hutool/core/lang/func/Func1<",
            "TA;TR;>;)TR;"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 249
    :cond_0
    invoke-static {p1}, Lcn/hutool/core/lang/func/LambdaUtil;->resolve(Lcn/hutool/core/lang/func/Func1;)Ljava/lang/invoke/SerializedLambda;

    move-result-object p1

    .line 250
    invoke-virtual {p1}, Ljava/lang/invoke/SerializedLambda;->getInstantiatedMethodType()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x3b

    .line 251
    invoke-static {v0, v1}, Lcn/hutool/core/util/StrUtil;->indexOf(Ljava/lang/CharSequence;C)I

    move-result v1

    const/4 v2, 0x2

    invoke-static {v0, v2, v1}, Lcn/hutool/core/util/StrUtil;->sub(Ljava/lang/CharSequence;II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/hutool/core/util/ClassUtil;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 252
    invoke-virtual {p1}, Ljava/lang/invoke/SerializedLambda;->getImplMethodName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, v0, p1}, Lcn/hutool/core/annotation/AnnotationUtil;->getAnnotationValue(Ljava/lang/reflect/AnnotatedElement;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static getAnnotationValue(Ljava/lang/reflect/AnnotatedElement;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/reflect/AnnotatedElement;",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/hutool/core/exceptions/UtilException;
        }
    .end annotation

    const-string v0, "value"

    .line 206
    invoke-static {p0, p1, v0}, Lcn/hutool/core/annotation/AnnotationUtil;->getAnnotationValue(Ljava/lang/reflect/AnnotatedElement;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static getAnnotationValue(Ljava/lang/reflect/AnnotatedElement;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/reflect/AnnotatedElement;",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/hutool/core/exceptions/UtilException;
        }
    .end annotation

    .line 221
    invoke-static {p0, p1}, Lcn/hutool/core/annotation/AnnotationUtil;->getAnnotation(Ljava/lang/reflect/AnnotatedElement;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p0

    const/4 p1, 0x0

    if-nez p0, :cond_0

    return-object p1

    :cond_0
    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    .line 226
    invoke-static {p0, p2, v1}, Lcn/hutool/core/util/ReflectUtil;->getMethodOfObj(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/reflect/Method;

    move-result-object p2

    if-nez p2, :cond_1

    return-object p1

    :cond_1
    new-array p1, v0, [Ljava/lang/Object;

    .line 230
    invoke-static {p0, p2, p1}, Lcn/hutool/core/util/ReflectUtil;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static getAnnotationValueMap(Ljava/lang/reflect/AnnotatedElement;Ljava/lang/Class;)Ljava/util/Map;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/AnnotatedElement;",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/hutool/core/exceptions/UtilException;
        }
    .end annotation

    .line 266
    invoke-static {p0, p1}, Lcn/hutool/core/annotation/AnnotationUtil;->getAnnotation(Ljava/lang/reflect/AnnotatedElement;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 271
    :cond_0
    new-instance v0, Lcn/hutool/core/annotation/AnnotationUtil$$ExternalSyntheticLambda4;

    invoke-direct {v0}, Lcn/hutool/core/annotation/AnnotationUtil$$ExternalSyntheticLambda4;-><init>()V

    invoke-static {p1, v0}, Lcn/hutool/core/util/ReflectUtil;->getMethods(Ljava/lang/Class;Lcn/hutool/core/lang/Filter;)[Ljava/lang/reflect/Method;

    move-result-object p1

    .line 283
    new-instance v0, Ljava/util/HashMap;

    array-length v1, p1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2}, Ljava/util/HashMap;-><init>(IF)V

    .line 284
    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, p1, v3

    .line 285
    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v5

    new-array v6, v2, [Ljava/lang/Object;

    invoke-static {p0, v4, v6}, Lcn/hutool/core/util/ReflectUtil;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static getAnnotations(Ljava/lang/reflect/AnnotatedElement;ZLjava/lang/Class;)[Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/reflect/AnnotatedElement;",
            "Z",
            "Ljava/lang/Class<",
            "TT;>;)[TT;"
        }
    .end annotation

    .line 132
    new-instance v0, Lcn/hutool/core/annotation/AnnotationUtil$$ExternalSyntheticLambda3;

    invoke-direct {v0, p2}, Lcn/hutool/core/annotation/AnnotationUtil$$ExternalSyntheticLambda3;-><init>(Ljava/lang/Class;)V

    invoke-static {p0, p1, v0}, Lcn/hutool/core/annotation/AnnotationUtil;->getAnnotations(Ljava/lang/reflect/AnnotatedElement;ZLjava/util/function/Predicate;)[Ljava/lang/annotation/Annotation;

    move-result-object p0

    .line 135
    array-length p1, p0

    invoke-static {p2, p1}, Lcn/hutool/core/util/ArrayUtil;->newArray(Ljava/lang/Class;I)[Ljava/lang/Object;

    move-result-object p1

    const/4 p2, 0x0

    .line 136
    :goto_0
    array-length v0, p0

    if-ge p2, v0, :cond_0

    .line 138
    aget-object v0, p0, p2

    aput-object v0, p1, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-object p1
.end method

.method public static getAnnotations(Ljava/lang/reflect/AnnotatedElement;Z)[Ljava/lang/annotation/Annotation;
    .locals 2

    const/4 v0, 0x0

    .line 105
    move-object v1, v0

    check-cast v1, Ljava/util/function/Predicate;

    invoke-static {p0, p1, v0}, Lcn/hutool/core/annotation/AnnotationUtil;->getAnnotations(Ljava/lang/reflect/AnnotatedElement;ZLjava/util/function/Predicate;)[Ljava/lang/annotation/Annotation;

    move-result-object p0

    return-object p0
.end method

.method public static getAnnotations(Ljava/lang/reflect/AnnotatedElement;ZLjava/util/function/Predicate;)[Ljava/lang/annotation/Annotation;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/AnnotatedElement;",
            "Z",
            "Ljava/util/function/Predicate<",
            "Ljava/lang/annotation/Annotation;",
            ">;)[",
            "Ljava/lang/annotation/Annotation;"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    if-eqz p1, :cond_2

    if-nez p2, :cond_1

    .line 159
    invoke-static {p0}, Lcn/hutool/core/annotation/AnnotationUtil;->toCombination(Ljava/lang/reflect/AnnotatedElement;)Lcn/hutool/core/annotation/CombinationAnnotationElement;

    move-result-object p0

    invoke-virtual {p0}, Lcn/hutool/core/annotation/CombinationAnnotationElement;->getAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object p0

    return-object p0

    .line 161
    :cond_1
    invoke-static {p0, p2}, Lcn/hutool/core/annotation/CombinationAnnotationElement;->of(Ljava/lang/reflect/AnnotatedElement;Ljava/util/function/Predicate;)Lcn/hutool/core/annotation/CombinationAnnotationElement;

    move-result-object p0

    invoke-virtual {p0}, Lcn/hutool/core/annotation/CombinationAnnotationElement;->getAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object p0

    return-object p0

    .line 164
    :cond_2
    invoke-interface {p0}, Ljava/lang/reflect/AnnotatedElement;->getAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object p0

    if-nez p2, :cond_3

    return-object p0

    .line 168
    :cond_3
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Lcn/hutool/core/annotation/AnnotationUtil$$ExternalSyntheticLambda5;

    invoke-direct {p1, p2}, Lcn/hutool/core/annotation/AnnotationUtil$$ExternalSyntheticLambda5;-><init>(Ljava/util/function/Predicate;)V

    invoke-static {p0, p1}, Lcn/hutool/core/util/ArrayUtil;->filter([Ljava/lang/Object;Lcn/hutool/core/lang/Filter;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/annotation/Annotation;

    return-object p0
.end method

.method public static getCombinationAnnotations(Ljava/lang/reflect/AnnotatedElement;Ljava/lang/Class;)[Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/reflect/AnnotatedElement;",
            "Ljava/lang/Class<",
            "TT;>;)[TT;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 118
    invoke-static {p0, v0, p1}, Lcn/hutool/core/annotation/AnnotationUtil;->getAnnotations(Ljava/lang/reflect/AnnotatedElement;ZLjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static getRetentionPolicy(Ljava/lang/Class;)Ljava/lang/annotation/RetentionPolicy;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;)",
            "Ljava/lang/annotation/RetentionPolicy;"
        }
    .end annotation

    .line 297
    const-class v0, Ljava/lang/annotation/Retention;

    invoke-virtual {p0, v0}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p0

    check-cast p0, Ljava/lang/annotation/Retention;

    if-nez p0, :cond_0

    .line 299
    sget-object p0, Ljava/lang/annotation/RetentionPolicy;->CLASS:Ljava/lang/annotation/RetentionPolicy;

    return-object p0

    .line 301
    :cond_0
    invoke-interface {p0}, Ljava/lang/annotation/Retention;->value()Ljava/lang/annotation/RetentionPolicy;

    move-result-object p0

    return-object p0
.end method

.method public static varargs getSynthesizedAnnotation(Ljava/lang/Class;[Ljava/lang/annotation/Annotation;)Ljava/lang/annotation/Annotation;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/annotation/Annotation;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;[",
            "Ljava/lang/annotation/Annotation;",
            ")TT;"
        }
    .end annotation

    .line 477
    invoke-static {p1}, Lcn/hutool/core/lang/Opt;->ofNullable(Ljava/lang/Object;)Lcn/hutool/core/lang/Opt;

    move-result-object p1

    new-instance v0, Lcn/hutool/core/annotation/AnnotationUtil$$ExternalSyntheticLambda6;

    invoke-direct {v0}, Lcn/hutool/core/annotation/AnnotationUtil$$ExternalSyntheticLambda6;-><init>()V

    .line 478
    invoke-virtual {p1, v0}, Lcn/hutool/core/lang/Opt;->filter(Ljava/util/function/Predicate;)Lcn/hutool/core/lang/Opt;

    move-result-object p1

    new-instance v0, Lcn/hutool/core/annotation/AnnotationUtil$$ExternalSyntheticLambda7;

    invoke-direct {v0}, Lcn/hutool/core/annotation/AnnotationUtil$$ExternalSyntheticLambda7;-><init>()V

    .line 479
    invoke-virtual {p1, v0}, Lcn/hutool/core/lang/Opt;->map(Ljava/util/function/Function;)Lcn/hutool/core/lang/Opt;

    move-result-object p1

    new-instance v0, Lcn/hutool/core/annotation/AnnotationUtil$$ExternalSyntheticLambda8;

    invoke-direct {v0, p0}, Lcn/hutool/core/annotation/AnnotationUtil$$ExternalSyntheticLambda8;-><init>(Ljava/lang/Class;)V

    .line 480
    invoke-virtual {p1, v0}, Lcn/hutool/core/lang/Opt;->map(Ljava/util/function/Function;)Lcn/hutool/core/lang/Opt;

    move-result-object p0

    .line 481
    invoke-virtual {p0}, Lcn/hutool/core/lang/Opt;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/annotation/Annotation;

    return-object p0
.end method

.method public static getSynthesizedAnnotation(Ljava/lang/reflect/AnnotatedElement;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/annotation/Annotation;",
            ">(",
            "Ljava/lang/reflect/AnnotatedElement;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 507
    invoke-interface {p0, p1}, Ljava/lang/reflect/AnnotatedElement;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    .line 508
    invoke-static {v0}, Lcn/hutool/core/util/ObjectUtil;->isNotNull(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 511
    :cond_0
    sget-object v0, Lcn/hutool/core/annotation/scanner/AnnotationScanner;->DIRECTLY:Lcn/hutool/core/annotation/scanner/AnnotationScanner;

    .line 512
    invoke-interface {v0, p0}, Lcn/hutool/core/annotation/scanner/AnnotationScanner;->getAnnotationsIfSupport(Ljava/lang/reflect/AnnotatedElement;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcn/hutool/core/annotation/AnnotationUtil$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Lcn/hutool/core/annotation/AnnotationUtil$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Class;)V

    .line 513
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p1, Lcn/hutool/core/annotation/AnnotationUtil$$ExternalSyntheticLambda1;

    invoke-direct {p1}, Lcn/hutool/core/annotation/AnnotationUtil$$ExternalSyntheticLambda1;-><init>()V

    .line 514
    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    .line 515
    invoke-interface {p0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object p0

    const/4 p1, 0x0

    .line 516
    invoke-virtual {p0, p1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/annotation/Annotation;

    return-object p0
.end method

.method public static getTargetType(Ljava/lang/Class;)[Ljava/lang/annotation/ElementType;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;)[",
            "Ljava/lang/annotation/ElementType;"
        }
    .end annotation

    .line 311
    const-class v0, Ljava/lang/annotation/Target;

    invoke-virtual {p0, v0}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p0

    check-cast p0, Ljava/lang/annotation/Target;

    if-nez p0, :cond_0

    const/16 p0, 0x8

    new-array p0, p0, [Ljava/lang/annotation/ElementType;

    const/4 v0, 0x0

    .line 313
    sget-object v1, Ljava/lang/annotation/ElementType;->TYPE:Ljava/lang/annotation/ElementType;

    aput-object v1, p0, v0

    const/4 v0, 0x1

    sget-object v1, Ljava/lang/annotation/ElementType;->FIELD:Ljava/lang/annotation/ElementType;

    aput-object v1, p0, v0

    const/4 v0, 0x2

    sget-object v1, Ljava/lang/annotation/ElementType;->METHOD:Ljava/lang/annotation/ElementType;

    aput-object v1, p0, v0

    const/4 v0, 0x3

    sget-object v1, Ljava/lang/annotation/ElementType;->PARAMETER:Ljava/lang/annotation/ElementType;

    aput-object v1, p0, v0

    const/4 v0, 0x4

    sget-object v1, Ljava/lang/annotation/ElementType;->CONSTRUCTOR:Ljava/lang/annotation/ElementType;

    aput-object v1, p0, v0

    const/4 v0, 0x5

    sget-object v1, Ljava/lang/annotation/ElementType;->LOCAL_VARIABLE:Ljava/lang/annotation/ElementType;

    aput-object v1, p0, v0

    const/4 v0, 0x6

    sget-object v1, Ljava/lang/annotation/ElementType;->ANNOTATION_TYPE:Ljava/lang/annotation/ElementType;

    aput-object v1, p0, v0

    const/4 v0, 0x7

    sget-object v1, Ljava/lang/annotation/ElementType;->PACKAGE:Ljava/lang/annotation/ElementType;

    aput-object v1, p0, v0

    return-object p0

    .line 323
    :cond_0
    invoke-interface {p0}, Ljava/lang/annotation/Target;->value()[Ljava/lang/annotation/ElementType;

    move-result-object p0

    return-object p0
.end method

.method public static hasAnnotation(Ljava/lang/reflect/AnnotatedElement;Ljava/lang/Class;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/AnnotatedElement;",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;)Z"
        }
    .end annotation

    .line 192
    invoke-static {p0, p1}, Lcn/hutool/core/annotation/AnnotationUtil;->getAnnotation(Ljava/lang/reflect/AnnotatedElement;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static isAttributeMethod(Ljava/lang/reflect/Method;)Z
    .locals 1

    .line 576
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getParameterCount()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object p0

    sget-object v0, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isDocumented(Ljava/lang/Class;)Z
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

    .line 333
    const-class v0, Ljava/lang/annotation/Documented;

    invoke-virtual {p0, v0}, Ljava/lang/Class;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result p0

    return p0
.end method

.method public static isInherited(Ljava/lang/Class;)Z
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

    .line 343
    const-class v0, Ljava/lang/annotation/Inherited;

    invoke-virtual {p0, v0}, Ljava/lang/Class;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result p0

    return p0
.end method

.method public static isJdkMetaAnnotation(Ljava/lang/Class;)Z
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

    .line 61
    sget-object v0, Lcn/hutool/core/annotation/AnnotationUtil;->META_ANNOTATIONS:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static isNotJdkMateAnnotation(Ljava/lang/Class;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;)Z"
        }
    .end annotation

    .line 81
    invoke-static {p0}, Lcn/hutool/core/annotation/AnnotationUtil;->isJdkMetaAnnotation(Ljava/lang/Class;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static isSynthesizedAnnotation(Ljava/lang/annotation/Annotation;)Z
    .locals 0

    .line 446
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-static {p0}, Lcn/hutool/core/annotation/SynthesizedAnnotationProxy;->isProxyAnnotation(Ljava/lang/Class;)Z

    move-result p0

    return p0
.end method

.method static synthetic lambda$getAllSynthesizedAnnotations$4(Ljava/lang/Class;Ljava/lang/annotation/Annotation;)Ljava/lang/annotation/Annotation;
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/annotation/Annotation;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 544
    invoke-static {p0, v0}, Lcn/hutool/core/annotation/AnnotationUtil;->getSynthesizedAnnotation(Ljava/lang/Class;[Ljava/lang/annotation/Annotation;)Ljava/lang/annotation/Annotation;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$getAnnotationValueMap$1(Ljava/lang/reflect/Method;)Z
    .locals 2

    .line 272
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcn/hutool/core/util/ArrayUtil;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 274
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p0

    const-string v0, "hashCode"

    .line 276
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "toString"

    .line 277
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "annotationType"

    .line 278
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method static synthetic lambda$getAnnotations$0(Ljava/lang/Class;Ljava/lang/annotation/Annotation;)Z
    .locals 0

    if-eqz p0, :cond_1

    .line 133
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method static synthetic lambda$getSynthesizedAnnotation$2(Ljava/lang/Class;Lcn/hutool/core/annotation/SynthesizedAggregateAnnotation;)Ljava/lang/annotation/Annotation;
    .locals 0

    .line 480
    invoke-interface {p1, p0}, Lcn/hutool/core/annotation/SynthesizedAggregateAnnotation;->synthesize(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$getSynthesizedAnnotation$3(Ljava/lang/Class;Ljava/lang/annotation/Annotation;)Ljava/lang/annotation/Annotation;
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/annotation/Annotation;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 513
    invoke-static {p0, v0}, Lcn/hutool/core/annotation/AnnotationUtil;->getSynthesizedAnnotation(Ljava/lang/Class;[Ljava/lang/annotation/Annotation;)Ljava/lang/annotation/Annotation;

    move-result-object p0

    return-object p0
.end method

.method public static scanClass(Ljava/lang/Class;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/util/List<",
            "Ljava/lang/annotation/Annotation;",
            ">;"
        }
    .end annotation

    .line 393
    sget-object v0, Lcn/hutool/core/annotation/scanner/AnnotationScanner;->TYPE_HIERARCHY:Lcn/hutool/core/annotation/scanner/AnnotationScanner;

    invoke-interface {v0, p0}, Lcn/hutool/core/annotation/scanner/AnnotationScanner;->getAnnotationsIfSupport(Ljava/lang/reflect/AnnotatedElement;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static scanMetaAnnotation(Ljava/lang/Class;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/annotation/Annotation;",
            ">;"
        }
    .end annotation

    .line 364
    sget-object v0, Lcn/hutool/core/annotation/scanner/AnnotationScanner;->DIRECTLY_AND_META_ANNOTATION:Lcn/hutool/core/annotation/scanner/AnnotationScanner;

    invoke-interface {v0, p0}, Lcn/hutool/core/annotation/scanner/AnnotationScanner;->getAnnotationsIfSupport(Ljava/lang/reflect/AnnotatedElement;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static scanMethod(Ljava/lang/reflect/Method;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Method;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/annotation/Annotation;",
            ">;"
        }
    .end annotation

    .line 421
    sget-object v0, Lcn/hutool/core/annotation/scanner/AnnotationScanner;->TYPE_HIERARCHY:Lcn/hutool/core/annotation/scanner/AnnotationScanner;

    invoke-interface {v0, p0}, Lcn/hutool/core/annotation/scanner/AnnotationScanner;->getAnnotationsIfSupport(Ljava/lang/reflect/AnnotatedElement;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static setValue(Ljava/lang/annotation/Annotation;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .line 434
    invoke-static {p0}, Ljava/lang/reflect/Proxy;->getInvocationHandler(Ljava/lang/Object;)Ljava/lang/reflect/InvocationHandler;

    move-result-object p0

    const-string v0, "memberValues"

    invoke-static {p0, v0}, Lcn/hutool/core/util/ReflectUtil;->getFieldValue(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    .line 435
    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static toCombination(Ljava/lang/reflect/AnnotatedElement;)Lcn/hutool/core/annotation/CombinationAnnotationElement;
    .locals 1

    .line 91
    instance-of v0, p0, Lcn/hutool/core/annotation/CombinationAnnotationElement;

    if-eqz v0, :cond_0

    .line 92
    check-cast p0, Lcn/hutool/core/annotation/CombinationAnnotationElement;

    return-object p0

    .line 94
    :cond_0
    new-instance v0, Lcn/hutool/core/annotation/CombinationAnnotationElement;

    invoke-direct {v0, p0}, Lcn/hutool/core/annotation/CombinationAnnotationElement;-><init>(Ljava/lang/reflect/AnnotatedElement;)V

    return-object v0
.end method
