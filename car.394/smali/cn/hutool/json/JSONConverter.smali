.class public Lcn/hutool/json/JSONConverter;
.super Ljava/lang/Object;
.source "JSONConverter.java"

# interfaces
.implements Lcn/hutool/core/convert/Converter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcn/hutool/core/convert/Converter<",
        "Lcn/hutool/json/JSON;",
        ">;"
    }
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 32
    invoke-static {}, Lcn/hutool/core/convert/ConverterRegistry;->getInstance()Lcn/hutool/core/convert/ConverterRegistry;

    move-result-object v0

    .line 33
    const-class v1, Lcn/hutool/json/JSON;

    const-class v2, Lcn/hutool/json/JSONConverter;

    invoke-virtual {v0, v1, v2}, Lcn/hutool/core/convert/ConverterRegistry;->putCustom(Ljava/lang/reflect/Type;Ljava/lang/Class;)Lcn/hutool/core/convert/ConverterRegistry;

    .line 34
    const-class v1, Lcn/hutool/json/JSONObject;

    invoke-virtual {v0, v1, v2}, Lcn/hutool/core/convert/ConverterRegistry;->putCustom(Ljava/lang/reflect/Type;Ljava/lang/Class;)Lcn/hutool/core/convert/ConverterRegistry;

    .line 35
    const-class v1, Lcn/hutool/json/JSONArray;

    invoke-virtual {v0, v1, v2}, Lcn/hutool/core/convert/ConverterRegistry;->putCustom(Ljava/lang/reflect/Type;Ljava/lang/Class;)Lcn/hutool/core/convert/ConverterRegistry;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static jsonConvert(Ljava/lang/reflect/Type;Ljava/lang/Object;Lcn/hutool/json/JSONConfig;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Object;",
            "Lcn/hutool/json/JSONConfig;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/hutool/core/convert/ConvertException;
        }
    .end annotation

    .line 75
    invoke-static {p1}, Lcn/hutool/json/JSONUtil;->isNull(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 80
    :cond_0
    instance-of v0, p0, Ljava/lang/Class;

    if-eqz v0, :cond_3

    .line 81
    move-object v0, p0

    check-cast v0, Ljava/lang/Class;

    .line 82
    const-class v1, Lcn/hutool/json/JSONBeanParser;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 84
    invoke-static {v0}, Lcn/hutool/core/util/ReflectUtil;->newInstanceIfPossible(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcn/hutool/json/JSONBeanParser;

    if-eqz p2, :cond_1

    .line 88
    invoke-interface {p2, p1}, Lcn/hutool/json/JSONBeanParser;->parse(Ljava/lang/Object;)V

    return-object p2

    .line 86
    :cond_1
    new-instance p1, Lcn/hutool/core/convert/ConvertException;

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p0, p2, v0

    const-string p0, "Can not instance [{}]"

    invoke-direct {p1, p0, p2}, Lcn/hutool/core/convert/ConvertException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p1

    .line 90
    :cond_2
    const-class v0, [B

    if-ne p0, v0, :cond_3

    instance-of v0, p1, Ljava/lang/CharSequence;

    if-eqz v0, :cond_3

    .line 92
    check-cast p1, Ljava/lang/CharSequence;

    invoke-static {p1}, Lcn/hutool/core/codec/Base64;->decode(Ljava/lang/CharSequence;)[B

    move-result-object p0

    return-object p0

    .line 96
    :cond_3
    invoke-virtual {p2}, Lcn/hutool/json/JSONConfig;->isIgnoreError()Z

    move-result p2

    invoke-static {p0, p1, p2}, Lcn/hutool/json/JSONConverter;->jsonToBean(Ljava/lang/reflect/Type;Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method protected static jsonToBean(Ljava/lang/reflect/Type;Ljava/lang/Object;Z)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Object;",
            "Z)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/hutool/core/convert/ConvertException;
        }
    .end annotation

    .line 112
    invoke-static {p1}, Lcn/hutool/json/JSONUtil;->isNull(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 116
    :cond_0
    instance-of v0, p1, Lcn/hutool/json/JSON;

    if-eqz v0, :cond_2

    .line 117
    invoke-static {p0}, Lcn/hutool/json/serialize/GlobalSerializeMapping;->getDeserializer(Ljava/lang/reflect/Type;)Lcn/hutool/json/serialize/JSONDeserializer;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 120
    check-cast p1, Lcn/hutool/json/JSON;

    invoke-interface {v0, p1}, Lcn/hutool/json/serialize/JSONDeserializer;->deserialize(Lcn/hutool/json/JSON;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 125
    :cond_1
    instance-of v0, p1, Lcn/hutool/json/JSONGetter;

    if-eqz v0, :cond_2

    instance-of v0, p0, Ljava/lang/Class;

    if-eqz v0, :cond_2

    const-class v0, Ljava/util/Map$Entry;

    move-object v2, p0

    check-cast v2, Ljava/lang/Class;

    .line 128
    invoke-virtual {v0, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 129
    invoke-static {v2}, Lcn/hutool/core/bean/BeanUtil;->hasSetter(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 131
    move-object v0, p1

    check-cast v0, Lcn/hutool/json/JSONGetter;

    invoke-interface {v0}, Lcn/hutool/json/JSONGetter;->getConfig()Lcn/hutool/json/JSONConfig;

    move-result-object v0

    .line 132
    new-instance v2, Lcn/hutool/core/convert/impl/BeanConverter;

    .line 133
    invoke-static {v0}, Lcn/hutool/json/InternalJSONUtil;->toCopyOptions(Lcn/hutool/json/JSONConfig;)Lcn/hutool/core/bean/copier/CopyOptions;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcn/hutool/core/bean/copier/CopyOptions;->setIgnoreError(Z)Lcn/hutool/core/bean/copier/CopyOptions;

    move-result-object v0

    invoke-direct {v2, p0, v0}, Lcn/hutool/core/convert/impl/BeanConverter;-><init>(Ljava/lang/reflect/Type;Lcn/hutool/core/bean/copier/CopyOptions;)V

    .line 134
    invoke-interface {v2, p1, v1, p2}, Lcn/hutool/core/convert/Converter;->convertWithCheck(Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 138
    :cond_2
    invoke-static {p0, p1, v1, p2}, Lcn/hutool/core/convert/Convert;->convertWithCheck(Ljava/lang/reflect/Type;Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_4

    if-nez p2, :cond_4

    .line 141
    invoke-static {p1}, Lcn/hutool/core/util/StrUtil;->isBlankIfStr(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    return-object v1

    .line 147
    :cond_3
    new-instance p2, Lcn/hutool/core/convert/ConvertException;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {p0}, Lcn/hutool/core/util/TypeUtil;->getClass(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object p1

    invoke-static {p1, p0}, Lcn/hutool/core/util/ObjectUtil;->defaultIfNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    const/4 p1, 0x1

    aput-object p0, v0, p1

    const-string p0, "Can not convert {} to type {}"

    invoke-direct {p2, p0, v0}, Lcn/hutool/core/convert/ConvertException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p2

    :cond_4
    return-object v0
.end method

.method protected static toArray(Lcn/hutool/json/JSONArray;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/hutool/json/JSONArray;",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 46
    new-instance v0, Lcn/hutool/core/convert/impl/ArrayConverter;

    invoke-direct {v0, p1}, Lcn/hutool/core/convert/impl/ArrayConverter;-><init>(Ljava/lang/Class;)V

    const/4 p1, 0x0

    invoke-virtual {v0, p0, p1}, Lcn/hutool/core/convert/impl/ArrayConverter;->convert(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method protected static toList(Lcn/hutool/json/JSONArray;Ljava/lang/Class;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcn/hutool/json/JSONArray;",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 58
    invoke-static {p1, p0}, Lcn/hutool/core/convert/Convert;->toList(Ljava/lang/Class;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public convert(Ljava/lang/Object;Lcn/hutool/json/JSON;)Lcn/hutool/json/JSON;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 155
    invoke-static {p1}, Lcn/hutool/json/JSONUtil;->parse(Ljava/lang/Object;)Lcn/hutool/json/JSON;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic convert(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 28
    check-cast p2, Lcn/hutool/json/JSON;

    invoke-virtual {p0, p1, p2}, Lcn/hutool/json/JSONConverter;->convert(Ljava/lang/Object;Lcn/hutool/json/JSON;)Lcn/hutool/json/JSON;

    move-result-object p1

    return-object p1
.end method
