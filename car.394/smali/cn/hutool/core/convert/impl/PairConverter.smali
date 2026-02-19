.class public Lcn/hutool/core/convert/impl/PairConverter;
.super Lcn/hutool/core/convert/AbstractConverter;
.source "PairConverter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/hutool/core/convert/AbstractConverter<",
        "Lcn/hutool/core/lang/Pair<",
        "**>;>;"
    }
.end annotation


# instance fields
.field private final keyType:Ljava/lang/reflect/Type;

.field private final pairType:Ljava/lang/reflect/Type;

.field private final valueType:Ljava/lang/reflect/Type;


# direct methods
.method public constructor <init>(Ljava/lang/reflect/Type;)V
    .locals 1

    const/4 v0, 0x0

    .line 31
    invoke-direct {p0, p1, v0, v0}, Lcn/hutool/core/convert/impl/PairConverter;-><init>(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)V
    .locals 0

    .line 41
    invoke-direct {p0}, Lcn/hutool/core/convert/AbstractConverter;-><init>()V

    .line 42
    iput-object p1, p0, Lcn/hutool/core/convert/impl/PairConverter;->pairType:Ljava/lang/reflect/Type;

    .line 43
    iput-object p2, p0, Lcn/hutool/core/convert/impl/PairConverter;->keyType:Ljava/lang/reflect/Type;

    .line 44
    iput-object p3, p0, Lcn/hutool/core/convert/impl/PairConverter;->valueType:Ljava/lang/reflect/Type;

    return-void
.end method

.method private static mapToPair(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;Ljava/util/Map;)Lcn/hutool/core/lang/Pair;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/reflect/Type;",
            "Ljava/util/Map;",
            ")",
            "Lcn/hutool/core/lang/Pair<",
            "**>;"
        }
    .end annotation

    .line 100
    invoke-interface {p3}, Ljava/util/Map;->size()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-ne v2, v0, :cond_0

    .line 101
    invoke-interface {p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/Map$Entry;

    .line 102
    invoke-interface {p3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    .line 103
    invoke-interface {p3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p3

    goto :goto_0

    .line 104
    :cond_0
    invoke-interface {p3}, Ljava/util/Map;->size()I

    move-result v0

    if-ne v1, v0, :cond_1

    const-string v0, "key"

    .line 105
    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v3, "value"

    .line 106
    invoke-interface {p3, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    move-object p3, v0

    .line 109
    :goto_0
    invoke-static {}, Lcn/hutool/core/convert/ConverterRegistry;->getInstance()Lcn/hutool/core/convert/ConverterRegistry;

    move-result-object v3

    .line 110
    invoke-static {p0}, Lcn/hutool/core/util/TypeUtil;->getClass(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object p0

    new-array v1, v1, [Ljava/lang/Object;

    .line 111
    invoke-static {p1}, Lcn/hutool/core/util/TypeUtil;->isUnknown(Ljava/lang/reflect/Type;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v3, p1, v0}, Lcn/hutool/core/convert/ConverterRegistry;->convert(Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_1
    const/4 p1, 0x0

    aput-object v0, v1, p1

    .line 112
    invoke-static {p2}, Lcn/hutool/core/util/TypeUtil;->isUnknown(Ljava/lang/reflect/Type;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {v3, p2, p3}, Lcn/hutool/core/convert/ConverterRegistry;->convert(Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    :goto_2
    aput-object p3, v1, v2

    .line 110
    invoke-static {p0, v1}, Lcn/hutool/core/util/ReflectUtil;->newInstance(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcn/hutool/core/lang/Pair;

    return-object p0
.end method

.method private static strToMap(Ljava/lang/CharSequence;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    .line 78
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/16 v1, 0x3d

    const/4 v2, 0x0

    invoke-static {p0, v1, v2, v0}, Lcn/hutool/core/util/StrUtil;->indexOf(Ljava/lang/CharSequence;CII)I

    move-result v0

    const/4 v1, -0x1

    if-le v0, v1, :cond_0

    add-int/lit8 v1, v0, 0x1

    .line 81
    invoke-interface {p0, v2, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    invoke-interface {p0, v0, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-static {v1, p0}, Lcn/hutool/core/map/MapUtil;->of(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/HashMap;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method protected convertInternal(Ljava/lang/Object;)Lcn/hutool/core/lang/Pair;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lcn/hutool/core/lang/Pair<",
            "**>;"
        }
    .end annotation

    .line 51
    instance-of v0, p1, Ljava/util/Map$Entry;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 52
    move-object v0, p1

    check-cast v0, Ljava/util/Map$Entry;

    .line 53
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v2, v0}, Lcn/hutool/core/map/MapUtil;->of(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/HashMap;

    move-result-object v0

    goto :goto_0

    .line 54
    :cond_0
    instance-of v0, p1, Ljava/util/Map;

    if-eqz v0, :cond_1

    .line 55
    move-object v0, p1

    check-cast v0, Ljava/util/Map;

    goto :goto_0

    .line 56
    :cond_1
    instance-of v0, p1, Ljava/lang/CharSequence;

    if-eqz v0, :cond_2

    .line 57
    move-object v0, p1

    check-cast v0, Ljava/lang/CharSequence;

    .line 58
    invoke-static {v0}, Lcn/hutool/core/convert/impl/PairConverter;->strToMap(Ljava/lang/CharSequence;)Ljava/util/Map;

    move-result-object v0

    goto :goto_0

    .line 59
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcn/hutool/core/bean/BeanUtil;->isReadableBean(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-array v0, v1, [Ljava/lang/String;

    .line 60
    invoke-static {p1, v0}, Lcn/hutool/core/bean/BeanUtil;->beanToMap(Ljava/lang/Object;[Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_4

    .line 64
    iget-object p1, p0, Lcn/hutool/core/convert/impl/PairConverter;->pairType:Ljava/lang/reflect/Type;

    iget-object v1, p0, Lcn/hutool/core/convert/impl/PairConverter;->keyType:Ljava/lang/reflect/Type;

    iget-object v2, p0, Lcn/hutool/core/convert/impl/PairConverter;->valueType:Ljava/lang/reflect/Type;

    invoke-static {p1, v1, v2, v0}, Lcn/hutool/core/convert/impl/PairConverter;->mapToPair(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;Ljava/util/Map;)Lcn/hutool/core/lang/Pair;

    move-result-object p1

    return-object p1

    .line 67
    :cond_4
    new-instance v0, Lcn/hutool/core/convert/ConvertException;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x1

    aput-object p1, v2, v1

    const-string p1, "Unsupported to map from [{}] of type: {}"

    invoke-direct {v0, p1, v2}, Lcn/hutool/core/convert/ConvertException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0
.end method

.method protected bridge synthetic convertInternal(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 16
    invoke-virtual {p0, p1}, Lcn/hutool/core/convert/impl/PairConverter;->convertInternal(Ljava/lang/Object;)Lcn/hutool/core/lang/Pair;

    move-result-object p1

    return-object p1
.end method
