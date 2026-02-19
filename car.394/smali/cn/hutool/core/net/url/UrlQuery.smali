.class public Lcn/hutool/core/net/url/UrlQuery;
.super Ljava/lang/Object;
.source "UrlQuery.java"


# instance fields
.field private final isFormUrlEncoded:Z

.field private isStrict:Z

.field private final query:Lcn/hutool/core/map/TableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcn/hutool/core/map/TableMap<",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 104
    invoke-direct {p0, v0}, Lcn/hutool/core/net/url/UrlQuery;-><init>(Ljava/util/Map;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+",
            "Ljava/lang/CharSequence;",
            "*>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 123
    invoke-direct {p0, p1, v0}, Lcn/hutool/core/net/url/UrlQuery;-><init>(Ljava/util/Map;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+",
            "Ljava/lang/CharSequence;",
            "*>;Z)V"
        }
    .end annotation

    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 134
    invoke-static {p1}, Lcn/hutool/core/map/MapUtil;->isNotEmpty(Ljava/util/Map;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 135
    new-instance v0, Lcn/hutool/core/map/TableMap;

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-direct {v0, v1}, Lcn/hutool/core/map/TableMap;-><init>(I)V

    iput-object v0, p0, Lcn/hutool/core/net/url/UrlQuery;->query:Lcn/hutool/core/map/TableMap;

    .line 136
    invoke-virtual {p0, p1}, Lcn/hutool/core/net/url/UrlQuery;->addAll(Ljava/util/Map;)Lcn/hutool/core/net/url/UrlQuery;

    goto :goto_0

    .line 138
    :cond_0
    new-instance p1, Lcn/hutool/core/map/TableMap;

    const/16 v0, 0x10

    invoke-direct {p1, v0}, Lcn/hutool/core/map/TableMap;-><init>(I)V

    iput-object p1, p0, Lcn/hutool/core/net/url/UrlQuery;->query:Lcn/hutool/core/map/TableMap;

    .line 140
    :goto_0
    iput-boolean p2, p0, Lcn/hutool/core/net/url/UrlQuery;->isFormUrlEncoded:Z

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1

    const/4 v0, 0x0

    .line 114
    invoke-direct {p0, v0, p1}, Lcn/hutool/core/net/url/UrlQuery;-><init>(Ljava/util/Map;Z)V

    return-void
.end method

.method private addParam(Ljava/lang/String;Ljava/lang/String;Ljava/nio/charset/Charset;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 426
    iget-boolean v0, p0, Lcn/hutool/core/net/url/UrlQuery;->isFormUrlEncoded:Z

    invoke-static {p1, p3, v0}, Lcn/hutool/core/net/URLDecoder;->decode(Ljava/lang/String;Ljava/nio/charset/Charset;Z)Ljava/lang/String;

    move-result-object p1

    .line 427
    iget-object v0, p0, Lcn/hutool/core/net/url/UrlQuery;->query:Lcn/hutool/core/map/TableMap;

    iget-boolean v1, p0, Lcn/hutool/core/net/url/UrlQuery;->isFormUrlEncoded:Z

    invoke-static {p2, p3, v1}, Lcn/hutool/core/net/URLDecoder;->decode(Ljava/lang/String;Ljava/nio/charset/Charset;Z)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcn/hutool/core/util/StrUtil;->nullToEmpty(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcn/hutool/core/map/TableMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    .line 430
    iget-object p1, p0, Lcn/hutool/core/net/url/UrlQuery;->query:Lcn/hutool/core/map/TableMap;

    iget-boolean v0, p0, Lcn/hutool/core/net/url/UrlQuery;->isFormUrlEncoded:Z

    invoke-static {p2, p3, v0}, Lcn/hutool/core/net/URLDecoder;->decode(Ljava/lang/String;Ljava/nio/charset/Charset;Z)Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Lcn/hutool/core/map/TableMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    :goto_0
    return-void
.end method

.method private doParse(Ljava/lang/String;Ljava/nio/charset/Charset;)Lcn/hutool/core/net/url/UrlQuery;
    .locals 7

    .line 357
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v4, v1

    move v3, v2

    :goto_0
    if-ge v2, v0, :cond_4

    .line 363
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x26

    if-eq v5, v6, :cond_1

    const/16 v6, 0x3d

    if-eq v5, v6, :cond_0

    goto :goto_1

    :cond_0
    if-nez v4, :cond_3

    .line 368
    invoke-virtual {p1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    add-int/lit8 v3, v2, 0x1

    goto :goto_1

    .line 375
    :cond_1
    invoke-virtual {p1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v4, v3, p2}, Lcn/hutool/core/net/url/UrlQuery;->addParam(Ljava/lang/String;Ljava/lang/String;Ljava/nio/charset/Charset;)V

    add-int/lit8 v3, v2, 0x4

    if-ge v3, v0, :cond_2

    add-int/lit8 v4, v2, 0x1

    add-int/lit8 v5, v2, 0x5

    .line 377
    invoke-virtual {p1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    const-string v5, "amp;"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    move v2, v3

    :cond_2
    add-int/lit8 v3, v2, 0x1

    move-object v4, v1

    :cond_3
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 388
    :cond_4
    invoke-virtual {p1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v4, p1, p2}, Lcn/hutool/core/net/url/UrlQuery;->addParam(Ljava/lang/String;Ljava/lang/String;Ljava/nio/charset/Charset;)V

    return-object p0
.end method

.method public static of(Ljava/lang/String;Ljava/nio/charset/Charset;)Lcn/hutool/core/net/url/UrlQuery;
    .locals 1

    const/4 v0, 0x1

    .line 70
    invoke-static {p0, p1, v0}, Lcn/hutool/core/net/url/UrlQuery;->of(Ljava/lang/String;Ljava/nio/charset/Charset;Z)Lcn/hutool/core/net/url/UrlQuery;

    move-result-object p0

    return-object p0
.end method

.method public static of(Ljava/lang/String;Ljava/nio/charset/Charset;Z)Lcn/hutool/core/net/url/UrlQuery;
    .locals 1

    const/4 v0, 0x0

    .line 83
    invoke-static {p0, p1, p2, v0}, Lcn/hutool/core/net/url/UrlQuery;->of(Ljava/lang/String;Ljava/nio/charset/Charset;ZZ)Lcn/hutool/core/net/url/UrlQuery;

    move-result-object p0

    return-object p0
.end method

.method public static of(Ljava/lang/String;Ljava/nio/charset/Charset;ZZ)Lcn/hutool/core/net/url/UrlQuery;
    .locals 1

    .line 97
    new-instance v0, Lcn/hutool/core/net/url/UrlQuery;

    invoke-direct {v0, p3}, Lcn/hutool/core/net/url/UrlQuery;-><init>(Z)V

    invoke-virtual {v0, p0, p1, p2}, Lcn/hutool/core/net/url/UrlQuery;->parse(Ljava/lang/String;Ljava/nio/charset/Charset;Z)Lcn/hutool/core/net/url/UrlQuery;

    move-result-object p0

    return-object p0
.end method

.method public static of(Ljava/util/Map;)Lcn/hutool/core/net/url/UrlQuery;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+",
            "Ljava/lang/CharSequence;",
            "*>;)",
            "Lcn/hutool/core/net/url/UrlQuery;"
        }
    .end annotation

    .line 48
    new-instance v0, Lcn/hutool/core/net/url/UrlQuery;

    invoke-direct {v0, p0}, Lcn/hutool/core/net/url/UrlQuery;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method public static of(Ljava/util/Map;Z)Lcn/hutool/core/net/url/UrlQuery;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+",
            "Ljava/lang/CharSequence;",
            "*>;Z)",
            "Lcn/hutool/core/net/url/UrlQuery;"
        }
    .end annotation

    .line 59
    new-instance v0, Lcn/hutool/core/net/url/UrlQuery;

    invoke-direct {v0, p0, p1}, Lcn/hutool/core/net/url/UrlQuery;-><init>(Ljava/util/Map;Z)V

    return-object v0
.end method

.method private static toStr(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2

    .line 401
    instance-of v0, p0, Ljava/lang/Iterable;

    const-string v1, ","

    if-eqz v0, :cond_0

    .line 402
    check-cast p0, Ljava/lang/Iterable;

    invoke-static {p0, v1}, Lcn/hutool/core/collection/CollUtil;->join(Ljava/lang/Iterable;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 403
    :cond_0
    instance-of v0, p0, Ljava/util/Iterator;

    if-eqz v0, :cond_1

    .line 404
    check-cast p0, Ljava/util/Iterator;

    invoke-static {p0, v1}, Lcn/hutool/core/collection/IterUtil;->join(Ljava/util/Iterator;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 406
    :cond_1
    invoke-static {p0}, Lcn/hutool/core/convert/Convert;->toStr(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method


# virtual methods
.method public add(Ljava/lang/CharSequence;Ljava/lang/Object;)Lcn/hutool/core/net/url/UrlQuery;
    .locals 1

    .line 162
    iget-object v0, p0, Lcn/hutool/core/net/url/UrlQuery;->query:Lcn/hutool/core/map/TableMap;

    invoke-static {p2}, Lcn/hutool/core/net/url/UrlQuery;->toStr(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcn/hutool/core/map/TableMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public addAll(Ljava/util/Map;)Lcn/hutool/core/net/url/UrlQuery;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+",
            "Ljava/lang/CharSequence;",
            "*>;)",
            "Lcn/hutool/core/net/url/UrlQuery;"
        }
    .end annotation

    .line 173
    invoke-static {p1}, Lcn/hutool/core/map/MapUtil;->isNotEmpty(Ljava/util/Map;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 174
    new-instance v0, Lcn/hutool/core/net/url/UrlQuery$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcn/hutool/core/net/url/UrlQuery$$ExternalSyntheticLambda0;-><init>(Lcn/hutool/core/net/url/UrlQuery;)V

    invoke-interface {p1, v0}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    :cond_0
    return-object p0
.end method

.method public build(Lcn/hutool/core/codec/PercentCodec;Lcn/hutool/core/codec/PercentCodec;Ljava/nio/charset/Charset;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    .line 293
    invoke-virtual {p0, p1, p2, p3, v0}, Lcn/hutool/core/net/url/UrlQuery;->build(Lcn/hutool/core/codec/PercentCodec;Lcn/hutool/core/codec/PercentCodec;Ljava/nio/charset/Charset;Z)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public build(Lcn/hutool/core/codec/PercentCodec;Lcn/hutool/core/codec/PercentCodec;Ljava/nio/charset/Charset;Z)Ljava/lang/String;
    .locals 5

    .line 312
    iget-object v0, p0, Lcn/hutool/core/net/url/UrlQuery;->query:Lcn/hutool/core/map/TableMap;

    invoke-static {v0}, Lcn/hutool/core/map/MapUtil;->isEmpty(Ljava/util/Map;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, ""

    return-object p1

    :cond_0
    if-eqz p4, :cond_1

    const/4 p4, 0x0

    goto :goto_0

    :cond_1
    const/4 p4, 0x1

    new-array p4, p4, [C

    const/4 v0, 0x0

    const/16 v1, 0x25

    aput-char v1, p4, v0

    .line 317
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 320
    iget-object v1, p0, Lcn/hutool/core/net/url/UrlQuery;->query:Lcn/hutool/core/map/TableMap;

    invoke-virtual {v1}, Lcn/hutool/core/map/TableMap;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 321
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    if-eqz v3, :cond_2

    .line 323
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_3

    const-string v4, "&"

    .line 324
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 326
    :cond_3
    invoke-virtual {p1, v3, p3, p4}, Lcn/hutool/core/codec/PercentCodec;->encode(Ljava/lang/CharSequence;Ljava/nio/charset/Charset;[C)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 327
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    if-eqz v2, :cond_2

    const-string v3, "="

    .line 329
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2, v2, p3, p4}, Lcn/hutool/core/codec/PercentCodec;->encode(Ljava/lang/CharSequence;Ljava/nio/charset/Charset;[C)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 333
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public build(Ljava/nio/charset/Charset;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    .line 252
    invoke-virtual {p0, p1, v0}, Lcn/hutool/core/net/url/UrlQuery;->build(Ljava/nio/charset/Charset;Z)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public build(Ljava/nio/charset/Charset;Z)Ljava/lang/String;
    .locals 2

    .line 268
    iget-boolean v0, p0, Lcn/hutool/core/net/url/UrlQuery;->isFormUrlEncoded:Z

    if-eqz v0, :cond_0

    .line 269
    sget-object v0, Lcn/hutool/core/net/FormUrlencoded;->ALL:Lcn/hutool/core/codec/PercentCodec;

    sget-object v1, Lcn/hutool/core/net/FormUrlencoded;->ALL:Lcn/hutool/core/codec/PercentCodec;

    invoke-virtual {p0, v0, v1, p1, p2}, Lcn/hutool/core/net/url/UrlQuery;->build(Lcn/hutool/core/codec/PercentCodec;Lcn/hutool/core/codec/PercentCodec;Ljava/nio/charset/Charset;Z)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 272
    :cond_0
    iget-boolean v0, p0, Lcn/hutool/core/net/url/UrlQuery;->isStrict:Z

    if-eqz v0, :cond_1

    .line 273
    sget-object v0, Lcn/hutool/core/net/RFC3986;->QUERY_PARAM_NAME_STRICT:Lcn/hutool/core/codec/PercentCodec;

    sget-object v1, Lcn/hutool/core/net/RFC3986;->QUERY_PARAM_VALUE_STRICT:Lcn/hutool/core/codec/PercentCodec;

    invoke-virtual {p0, v0, v1, p1, p2}, Lcn/hutool/core/net/url/UrlQuery;->build(Lcn/hutool/core/codec/PercentCodec;Lcn/hutool/core/codec/PercentCodec;Ljava/nio/charset/Charset;Z)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 275
    :cond_1
    sget-object v0, Lcn/hutool/core/net/RFC3986;->QUERY_PARAM_NAME:Lcn/hutool/core/codec/PercentCodec;

    sget-object v1, Lcn/hutool/core/net/RFC3986;->QUERY_PARAM_VALUE:Lcn/hutool/core/codec/PercentCodec;

    invoke-virtual {p0, v0, v1, p1, p2}, Lcn/hutool/core/net/url/UrlQuery;->build(Lcn/hutool/core/codec/PercentCodec;Lcn/hutool/core/codec/PercentCodec;Ljava/nio/charset/Charset;Z)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public get(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 1

    .line 234
    iget-object v0, p0, Lcn/hutool/core/net/url/UrlQuery;->query:Lcn/hutool/core/map/TableMap;

    invoke-static {v0}, Lcn/hutool/core/map/MapUtil;->isEmpty(Ljava/util/Map;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 237
    :cond_0
    iget-object v0, p0, Lcn/hutool/core/net/url/UrlQuery;->query:Lcn/hutool/core/map/TableMap;

    invoke-virtual {v0, p1}, Lcn/hutool/core/map/TableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    return-object p1
.end method

.method public getQueryMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    .line 224
    iget-object v0, p0, Lcn/hutool/core/net/url/UrlQuery;->query:Lcn/hutool/core/map/TableMap;

    invoke-static {v0}, Lcn/hutool/core/map/MapUtil;->unmodifiable(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public parse(Ljava/lang/String;Ljava/nio/charset/Charset;)Lcn/hutool/core/net/url/UrlQuery;
    .locals 1

    const/4 v0, 0x1

    .line 187
    invoke-virtual {p0, p1, p2, v0}, Lcn/hutool/core/net/url/UrlQuery;->parse(Ljava/lang/String;Ljava/nio/charset/Charset;Z)Lcn/hutool/core/net/url/UrlQuery;

    move-result-object p1

    return-object p1
.end method

.method public parse(Ljava/lang/String;Ljava/nio/charset/Charset;Z)Lcn/hutool/core/net/url/UrlQuery;
    .locals 1

    .line 200
    invoke-static {p1}, Lcn/hutool/core/util/StrUtil;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    if-eqz p3, :cond_1

    const/16 p3, 0x3f

    .line 206
    invoke-virtual {p1, p3}, Ljava/lang/String;->indexOf(I)I

    move-result p3

    const/4 v0, -0x1

    if-le p3, v0, :cond_1

    add-int/lit8 p3, p3, 0x1

    .line 208
    invoke-static {p1, p3}, Lcn/hutool/core/util/StrUtil;->subSuf(Ljava/lang/CharSequence;I)Ljava/lang/String;

    move-result-object p1

    .line 209
    invoke-static {p1}, Lcn/hutool/core/util/StrUtil;->isBlank(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_1

    return-object p0

    .line 215
    :cond_1
    invoke-direct {p0, p1, p2}, Lcn/hutool/core/net/url/UrlQuery;->doParse(Ljava/lang/String;Ljava/nio/charset/Charset;)Lcn/hutool/core/net/url/UrlQuery;

    move-result-object p1

    return-object p1
.end method

.method public setStrict(Z)Lcn/hutool/core/net/url/UrlQuery;
    .locals 0

    .line 150
    iput-boolean p1, p0, Lcn/hutool/core/net/url/UrlQuery;->isStrict:Z

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 344
    invoke-virtual {p0, v0}, Lcn/hutool/core/net/url/UrlQuery;->build(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
