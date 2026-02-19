.class public Lcn/hutool/json/ObjectMapper;
.super Ljava/lang/Object;
.source "ObjectMapper.java"


# instance fields
.field private final source:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p1, p0, Lcn/hutool/json/ObjectMapper;->source:Ljava/lang/Object;

    return-void
.end method

.method private static mapFromBean(Ljava/lang/Object;Lcn/hutool/json/JSONObject;)V
    .locals 1

    .line 264
    invoke-virtual {p1}, Lcn/hutool/json/JSONObject;->getConfig()Lcn/hutool/json/JSONConfig;

    move-result-object v0

    invoke-static {v0}, Lcn/hutool/json/InternalJSONUtil;->toCopyOptions(Lcn/hutool/json/JSONConfig;)Lcn/hutool/core/bean/copier/CopyOptions;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcn/hutool/core/bean/BeanUtil;->beanToMap(Ljava/lang/Object;Ljava/util/Map;Lcn/hutool/core/bean/copier/CopyOptions;)Ljava/util/Map;

    return-void
.end method

.method private static mapFromResourceBundle(Ljava/util/ResourceBundle;Lcn/hutool/json/JSONObject;Lcn/hutool/core/lang/Filter;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ResourceBundle;",
            "Lcn/hutool/json/JSONObject;",
            "Lcn/hutool/core/lang/Filter<",
            "Lcn/hutool/core/lang/mutable/MutablePair<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;)V"
        }
    .end annotation

    .line 196
    invoke-virtual {p0}, Ljava/util/ResourceBundle;->getKeys()Ljava/util/Enumeration;

    move-result-object v0

    .line 197
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 198
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 200
    invoke-virtual {p0, v1}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v1, v2, p2}, Lcn/hutool/json/InternalJSONUtil;->propertyPut(Lcn/hutool/json/JSONObject;Ljava/lang/Object;Ljava/lang/Object;Lcn/hutool/core/lang/Filter;)Lcn/hutool/json/JSONObject;

    goto :goto_0

    :cond_1
    return-void
.end method

.method private mapFromStr(Ljava/lang/CharSequence;Lcn/hutool/json/JSONArray;Lcn/hutool/core/lang/Filter;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Lcn/hutool/json/JSONArray;",
            "Lcn/hutool/core/lang/Filter<",
            "Lcn/hutool/core/lang/mutable/Mutable<",
            "Ljava/lang/Object;",
            ">;>;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 231
    new-instance v0, Lcn/hutool/json/JSONTokener;

    invoke-static {p1}, Lcn/hutool/core/util/StrUtil;->trim(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lcn/hutool/json/JSONArray;->getConfig()Lcn/hutool/json/JSONConfig;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcn/hutool/json/JSONTokener;-><init>(Ljava/lang/CharSequence;Lcn/hutool/json/JSONConfig;)V

    invoke-static {v0, p2, p3}, Lcn/hutool/json/ObjectMapper;->mapFromTokener(Lcn/hutool/json/JSONTokener;Lcn/hutool/json/JSONArray;Lcn/hutool/core/lang/Filter;)V

    :cond_0
    return-void
.end method

.method private static mapFromStr(Ljava/lang/CharSequence;Lcn/hutool/json/JSONObject;Lcn/hutool/core/lang/Filter;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Lcn/hutool/json/JSONObject;",
            "Lcn/hutool/core/lang/Filter<",
            "Lcn/hutool/core/lang/mutable/MutablePair<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;)V"
        }
    .end annotation

    .line 213
    invoke-static {p0}, Lcn/hutool/core/util/StrUtil;->trim(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x3c

    .line 214
    invoke-static {v0, v1}, Lcn/hutool/core/util/StrUtil;->startWith(Ljava/lang/CharSequence;C)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p0, 0x0

    .line 216
    invoke-static {p1, v0, p0}, Lcn/hutool/json/XML;->toJSONObject(Lcn/hutool/json/JSONObject;Ljava/lang/String;Z)Lcn/hutool/json/JSONObject;

    return-void

    .line 219
    :cond_0
    new-instance v0, Lcn/hutool/json/JSONTokener;

    invoke-static {p0}, Lcn/hutool/core/util/StrUtil;->trim(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Lcn/hutool/json/JSONObject;->getConfig()Lcn/hutool/json/JSONConfig;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcn/hutool/json/JSONTokener;-><init>(Ljava/lang/CharSequence;Lcn/hutool/json/JSONConfig;)V

    invoke-static {v0, p1, p2}, Lcn/hutool/json/ObjectMapper;->mapFromTokener(Lcn/hutool/json/JSONTokener;Lcn/hutool/json/JSONObject;Lcn/hutool/core/lang/Filter;)V

    return-void
.end method

.method private static mapFromTokener(Lcn/hutool/json/JSONTokener;Lcn/hutool/json/JSONArray;Lcn/hutool/core/lang/Filter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/hutool/json/JSONTokener;",
            "Lcn/hutool/json/JSONArray;",
            "Lcn/hutool/core/lang/Filter<",
            "Lcn/hutool/core/lang/mutable/Mutable<",
            "Ljava/lang/Object;",
            ">;>;)V"
        }
    .end annotation

    .line 254
    invoke-static {p0}, Lcn/hutool/json/JSONParser;->of(Lcn/hutool/json/JSONTokener;)Lcn/hutool/json/JSONParser;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcn/hutool/json/JSONParser;->parseTo(Lcn/hutool/json/JSONArray;Lcn/hutool/core/lang/Filter;)V

    return-void
.end method

.method private static mapFromTokener(Lcn/hutool/json/JSONTokener;Lcn/hutool/json/JSONObject;Lcn/hutool/core/lang/Filter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/hutool/json/JSONTokener;",
            "Lcn/hutool/json/JSONObject;",
            "Lcn/hutool/core/lang/Filter<",
            "Lcn/hutool/core/lang/mutable/MutablePair<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;)V"
        }
    .end annotation

    .line 243
    invoke-static {p0}, Lcn/hutool/json/JSONParser;->of(Lcn/hutool/json/JSONTokener;)Lcn/hutool/json/JSONParser;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcn/hutool/json/JSONParser;->parseTo(Lcn/hutool/json/JSONObject;Lcn/hutool/core/lang/Filter;)V

    return-void
.end method

.method public static of(Ljava/lang/Object;)Lcn/hutool/json/ObjectMapper;
    .locals 1

    .line 49
    new-instance v0, Lcn/hutool/json/ObjectMapper;

    invoke-direct {v0, p0}, Lcn/hutool/json/ObjectMapper;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public map(Lcn/hutool/json/JSONArray;Lcn/hutool/core/lang/Filter;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/hutool/json/JSONArray;",
            "Lcn/hutool/core/lang/Filter<",
            "Lcn/hutool/core/lang/mutable/Mutable<",
            "Ljava/lang/Object;",
            ">;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/hutool/json/JSONException;
        }
    .end annotation

    .line 129
    iget-object v0, p0, Lcn/hutool/json/ObjectMapper;->source:Ljava/lang/Object;

    if-nez v0, :cond_0

    return-void

    .line 134
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lcn/hutool/json/serialize/GlobalSerializeMapping;->getSerializer(Ljava/lang/reflect/Type;)Lcn/hutool/json/serialize/JSONSerializer;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 135
    const-class v2, Lcn/hutool/json/JSONArray;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-static {v3}, Lcn/hutool/core/util/TypeUtil;->getTypeArgument(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 137
    invoke-interface {v1, p1, v0}, Lcn/hutool/json/serialize/JSONSerializer;->serialize(Lcn/hutool/json/JSON;Ljava/lang/Object;)V

    goto/16 :goto_3

    .line 138
    :cond_1
    instance-of v1, v0, Ljava/lang/CharSequence;

    if-eqz v1, :cond_2

    .line 140
    check-cast v0, Ljava/lang/CharSequence;

    invoke-direct {p0, v0, p1, p2}, Lcn/hutool/json/ObjectMapper;->mapFromStr(Ljava/lang/CharSequence;Lcn/hutool/json/JSONArray;Lcn/hutool/core/lang/Filter;)V

    goto/16 :goto_3

    .line 141
    :cond_2
    instance-of v1, v0, Ljava/io/Reader;

    if-eqz v1, :cond_3

    .line 142
    new-instance v1, Lcn/hutool/json/JSONTokener;

    check-cast v0, Ljava/io/Reader;

    invoke-virtual {p1}, Lcn/hutool/json/JSONArray;->getConfig()Lcn/hutool/json/JSONConfig;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcn/hutool/json/JSONTokener;-><init>(Ljava/io/Reader;Lcn/hutool/json/JSONConfig;)V

    invoke-static {v1, p1, p2}, Lcn/hutool/json/ObjectMapper;->mapFromTokener(Lcn/hutool/json/JSONTokener;Lcn/hutool/json/JSONArray;Lcn/hutool/core/lang/Filter;)V

    goto/16 :goto_3

    .line 143
    :cond_3
    instance-of v1, v0, Ljava/io/InputStream;

    if-eqz v1, :cond_4

    .line 144
    new-instance v1, Lcn/hutool/json/JSONTokener;

    check-cast v0, Ljava/io/InputStream;

    invoke-virtual {p1}, Lcn/hutool/json/JSONArray;->getConfig()Lcn/hutool/json/JSONConfig;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcn/hutool/json/JSONTokener;-><init>(Ljava/io/InputStream;Lcn/hutool/json/JSONConfig;)V

    invoke-static {v1, p1, p2}, Lcn/hutool/json/ObjectMapper;->mapFromTokener(Lcn/hutool/json/JSONTokener;Lcn/hutool/json/JSONArray;Lcn/hutool/core/lang/Filter;)V

    goto/16 :goto_3

    .line 145
    :cond_4
    instance-of v1, v0, [B

    if-eqz v1, :cond_6

    .line 146
    check-cast v0, [B

    check-cast v0, [B

    .line 148
    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-le v1, v3, :cond_5

    const/16 v1, 0x5b

    aget-byte v4, v0, v2

    if-ne v1, v4, :cond_5

    array-length v1, v0

    sub-int/2addr v1, v3

    aget-byte v1, v0, v1

    const/16 v3, 0x5d

    if-ne v3, v1, :cond_5

    .line 149
    new-instance v1, Lcn/hutool/json/JSONTokener;

    invoke-static {v0}, Lcn/hutool/core/io/IoUtil;->toStream([B)Ljava/io/ByteArrayInputStream;

    move-result-object v0

    invoke-virtual {p1}, Lcn/hutool/json/JSONArray;->getConfig()Lcn/hutool/json/JSONConfig;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcn/hutool/json/JSONTokener;-><init>(Ljava/io/InputStream;Lcn/hutool/json/JSONConfig;)V

    invoke-static {v1, p1, p2}, Lcn/hutool/json/ObjectMapper;->mapFromTokener(Lcn/hutool/json/JSONTokener;Lcn/hutool/json/JSONArray;Lcn/hutool/core/lang/Filter;)V

    goto :goto_3

    .line 153
    :cond_5
    array-length p2, v0

    :goto_0
    if-ge v2, p2, :cond_b

    aget-byte v1, v0, v2

    .line 154
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcn/hutool/json/JSONArray;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 157
    :cond_6
    instance-of v1, v0, Lcn/hutool/json/JSONTokener;

    if-eqz v1, :cond_7

    .line 158
    check-cast v0, Lcn/hutool/json/JSONTokener;

    invoke-static {v0, p1, p2}, Lcn/hutool/json/ObjectMapper;->mapFromTokener(Lcn/hutool/json/JSONTokener;Lcn/hutool/json/JSONArray;Lcn/hutool/core/lang/Filter;)V

    goto :goto_3

    .line 161
    :cond_7
    invoke-static {v0}, Lcn/hutool/core/util/ArrayUtil;->isArray(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 162
    new-instance v1, Lcn/hutool/core/collection/ArrayIter;

    invoke-direct {v1, v0}, Lcn/hutool/core/collection/ArrayIter;-><init>(Ljava/lang/Object;)V

    goto :goto_1

    .line 163
    :cond_8
    instance-of v1, v0, Ljava/util/Iterator;

    if-eqz v1, :cond_9

    .line 164
    move-object v1, v0

    check-cast v1, Ljava/util/Iterator;

    goto :goto_1

    .line 165
    :cond_9
    instance-of v1, v0, Ljava/lang/Iterable;

    if-eqz v1, :cond_c

    .line 166
    move-object v1, v0

    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 175
    :goto_1
    invoke-virtual {p1}, Lcn/hutool/json/JSONArray;->getConfig()Lcn/hutool/json/JSONConfig;

    move-result-object v2

    .line 177
    :cond_a
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 178
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    if-eq v3, v0, :cond_a

    .line 181
    invoke-static {v3, v2}, Lcn/hutool/json/JSONUtil;->wrap(Ljava/lang/Object;Lcn/hutool/json/JSONConfig;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1, v3, p2}, Lcn/hutool/json/JSONArray;->addRaw(Ljava/lang/Object;Lcn/hutool/core/lang/Filter;)Z

    goto :goto_2

    :cond_b
    :goto_3
    return-void

    .line 168
    :cond_c
    invoke-virtual {p1}, Lcn/hutool/json/JSONArray;->getConfig()Lcn/hutool/json/JSONConfig;

    move-result-object p1

    invoke-virtual {p1}, Lcn/hutool/json/JSONConfig;->isIgnoreError()Z

    move-result p1

    if-eqz p1, :cond_d

    return-void

    .line 169
    :cond_d
    new-instance p1, Lcn/hutool/json/JSONException;

    const-string p2, "JSONArray initial value should be a string or collection or array."

    invoke-direct {p1, p2}, Lcn/hutool/json/JSONException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public map(Lcn/hutool/json/JSONObject;Lcn/hutool/core/lang/Filter;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/hutool/json/JSONObject;",
            "Lcn/hutool/core/lang/Filter<",
            "Lcn/hutool/core/lang/mutable/MutablePair<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;)V"
        }
    .end annotation

    .line 71
    iget-object v0, p0, Lcn/hutool/json/ObjectMapper;->source:Ljava/lang/Object;

    if-nez v0, :cond_0

    return-void

    .line 77
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lcn/hutool/json/serialize/GlobalSerializeMapping;->getSerializer(Ljava/lang/reflect/Type;)Lcn/hutool/json/serialize/JSONSerializer;

    move-result-object v1

    .line 78
    instance-of v2, v1, Lcn/hutool/json/serialize/JSONObjectSerializer;

    if-eqz v2, :cond_1

    .line 79
    invoke-interface {v1, p1, v0}, Lcn/hutool/json/serialize/JSONSerializer;->serialize(Lcn/hutool/json/JSON;Ljava/lang/Object;)V

    return-void

    .line 83
    :cond_1
    instance-of v1, v0, Lcn/hutool/json/JSONArray;

    if-nez v1, :cond_b

    .line 88
    instance-of v1, v0, Ljava/util/Map;

    if-eqz v1, :cond_2

    .line 90
    check-cast v0, Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 91
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lcn/hutool/core/convert/Convert;->toStr(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1}, Lcn/hutool/json/JSONObject;->getConfig()Lcn/hutool/json/JSONConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcn/hutool/json/JSONConfig;->isCheckDuplicate()Z

    move-result v3

    invoke-virtual {p1, v2, v1, p2, v3}, Lcn/hutool/json/JSONObject;->set(Ljava/lang/String;Ljava/lang/Object;Lcn/hutool/core/lang/Filter;Z)Lcn/hutool/json/JSONObject;

    goto :goto_0

    .line 93
    :cond_2
    instance-of v1, v0, Ljava/util/Map$Entry;

    if-eqz v1, :cond_3

    .line 94
    check-cast v0, Ljava/util/Map$Entry;

    .line 95
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcn/hutool/core/convert/Convert;->toStr(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1}, Lcn/hutool/json/JSONObject;->getConfig()Lcn/hutool/json/JSONConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcn/hutool/json/JSONConfig;->isCheckDuplicate()Z

    move-result v2

    invoke-virtual {p1, v1, v0, p2, v2}, Lcn/hutool/json/JSONObject;->set(Ljava/lang/String;Ljava/lang/Object;Lcn/hutool/core/lang/Filter;Z)Lcn/hutool/json/JSONObject;

    goto/16 :goto_1

    .line 96
    :cond_3
    instance-of v1, v0, Ljava/lang/CharSequence;

    if-eqz v1, :cond_4

    .line 98
    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0, p1, p2}, Lcn/hutool/json/ObjectMapper;->mapFromStr(Ljava/lang/CharSequence;Lcn/hutool/json/JSONObject;Lcn/hutool/core/lang/Filter;)V

    goto :goto_1

    .line 99
    :cond_4
    instance-of v1, v0, Ljava/io/Reader;

    if-eqz v1, :cond_5

    .line 100
    new-instance v1, Lcn/hutool/json/JSONTokener;

    check-cast v0, Ljava/io/Reader;

    invoke-virtual {p1}, Lcn/hutool/json/JSONObject;->getConfig()Lcn/hutool/json/JSONConfig;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcn/hutool/json/JSONTokener;-><init>(Ljava/io/Reader;Lcn/hutool/json/JSONConfig;)V

    invoke-static {v1, p1, p2}, Lcn/hutool/json/ObjectMapper;->mapFromTokener(Lcn/hutool/json/JSONTokener;Lcn/hutool/json/JSONObject;Lcn/hutool/core/lang/Filter;)V

    goto :goto_1

    .line 101
    :cond_5
    instance-of v1, v0, Ljava/io/InputStream;

    if-eqz v1, :cond_6

    .line 102
    new-instance v1, Lcn/hutool/json/JSONTokener;

    check-cast v0, Ljava/io/InputStream;

    invoke-virtual {p1}, Lcn/hutool/json/JSONObject;->getConfig()Lcn/hutool/json/JSONConfig;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcn/hutool/json/JSONTokener;-><init>(Ljava/io/InputStream;Lcn/hutool/json/JSONConfig;)V

    invoke-static {v1, p1, p2}, Lcn/hutool/json/ObjectMapper;->mapFromTokener(Lcn/hutool/json/JSONTokener;Lcn/hutool/json/JSONObject;Lcn/hutool/core/lang/Filter;)V

    goto :goto_1

    .line 103
    :cond_6
    instance-of v1, v0, [B

    if-eqz v1, :cond_7

    .line 104
    new-instance v1, Lcn/hutool/json/JSONTokener;

    check-cast v0, [B

    check-cast v0, [B

    invoke-static {v0}, Lcn/hutool/core/io/IoUtil;->toStream([B)Ljava/io/ByteArrayInputStream;

    move-result-object v0

    invoke-virtual {p1}, Lcn/hutool/json/JSONObject;->getConfig()Lcn/hutool/json/JSONConfig;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcn/hutool/json/JSONTokener;-><init>(Ljava/io/InputStream;Lcn/hutool/json/JSONConfig;)V

    invoke-static {v1, p1, p2}, Lcn/hutool/json/ObjectMapper;->mapFromTokener(Lcn/hutool/json/JSONTokener;Lcn/hutool/json/JSONObject;Lcn/hutool/core/lang/Filter;)V

    goto :goto_1

    .line 105
    :cond_7
    instance-of v1, v0, Lcn/hutool/json/JSONTokener;

    if-eqz v1, :cond_8

    .line 107
    check-cast v0, Lcn/hutool/json/JSONTokener;

    invoke-static {v0, p1, p2}, Lcn/hutool/json/ObjectMapper;->mapFromTokener(Lcn/hutool/json/JSONTokener;Lcn/hutool/json/JSONObject;Lcn/hutool/core/lang/Filter;)V

    goto :goto_1

    .line 108
    :cond_8
    instance-of v1, v0, Ljava/util/ResourceBundle;

    if-eqz v1, :cond_9

    .line 110
    check-cast v0, Ljava/util/ResourceBundle;

    invoke-static {v0, p1, p2}, Lcn/hutool/json/ObjectMapper;->mapFromResourceBundle(Ljava/util/ResourceBundle;Lcn/hutool/json/JSONObject;Lcn/hutool/core/lang/Filter;)V

    goto :goto_1

    .line 111
    :cond_9
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-static {p2}, Lcn/hutool/core/bean/BeanUtil;->isReadableBean(Ljava/lang/Class;)Z

    move-result p2

    if-eqz p2, :cond_a

    .line 114
    invoke-static {v0, p1}, Lcn/hutool/json/ObjectMapper;->mapFromBean(Ljava/lang/Object;Lcn/hutool/json/JSONObject;)V

    :cond_a
    :goto_1
    return-void

    .line 85
    :cond_b
    new-instance p1, Lcn/hutool/json/JSONException;

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    aput-object v0, p2, v1

    const-string v0, "Unsupported type [{}] to JSONObject!"

    invoke-direct {p1, v0, p2}, Lcn/hutool/json/JSONException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p1
.end method
