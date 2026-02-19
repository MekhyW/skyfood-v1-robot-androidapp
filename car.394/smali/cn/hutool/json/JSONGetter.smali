.class public interface abstract Lcn/hutool/json/JSONGetter;
.super Ljava/lang/Object;
.source "JSONGetter.java"

# interfaces
.implements Lcn/hutool/core/getter/OptNullBasicTypeFromObjectGetter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcn/hutool/core/getter/OptNullBasicTypeFromObjectGetter<",
        "TK;>;"
    }
.end annotation


# virtual methods
.method public get(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TK;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/hutool/core/convert/ConvertException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 219
    invoke-interface {p0, p1, p2, v0}, Lcn/hutool/json/JSONGetter;->get(Ljava/lang/Object;Ljava/lang/Class;Z)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public get(Ljava/lang/Object;Ljava/lang/Class;Z)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TK;",
            "Ljava/lang/Class<",
            "TT;>;Z)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/hutool/core/convert/ConvertException;
        }
    .end annotation

    .line 234
    invoke-interface {p0, p1}, Lcn/hutool/json/JSONGetter;->getObj(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 235
    invoke-static {p1}, Lcn/hutool/json/JSONUtil;->isNull(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 238
    :cond_0
    invoke-static {}, Lcn/hutool/json/JSONConfig;->create()Lcn/hutool/json/JSONConfig;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcn/hutool/json/JSONConfig;->setIgnoreError(Z)Lcn/hutool/json/JSONConfig;

    move-result-object p3

    invoke-static {p2, p1, p3}, Lcn/hutool/json/JSONConverter;->jsonConvert(Ljava/lang/reflect/Type;Ljava/lang/Object;Lcn/hutool/json/JSONConfig;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getBean(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TK;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 114
    invoke-interface {p0, p1}, Lcn/hutool/json/JSONGetter;->getJSONObject(Ljava/lang/Object;)Lcn/hutool/json/JSONObject;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 115
    :cond_0
    invoke-virtual {p1, p2}, Lcn/hutool/json/JSONObject;->toBean(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public getBeanList(Ljava/lang/Object;Ljava/lang/Class;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TK;",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 129
    invoke-interface {p0, p1}, Lcn/hutool/json/JSONGetter;->getJSONArray(Ljava/lang/Object;)Lcn/hutool/json/JSONArray;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 130
    :cond_0
    invoke-virtual {p1, p2}, Lcn/hutool/json/JSONArray;->toList(Ljava/lang/Class;)Ljava/util/List;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public getBytes(Ljava/lang/Object;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)[B"
        }
    .end annotation

    .line 204
    const-class v0, [B

    invoke-interface {p0, p1, v0}, Lcn/hutool/json/JSONGetter;->get(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    return-object p1
.end method

.method public abstract getConfig()Lcn/hutool/json/JSONConfig;
.end method

.method public getDate(Ljava/lang/Object;Ljava/util/Date;)Ljava/util/Date;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/util/Date;",
            ")",
            "Ljava/util/Date;"
        }
    .end annotation

    .line 136
    invoke-interface {p0, p1}, Lcn/hutool/json/JSONGetter;->getObj(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 137
    invoke-static {p1}, Lcn/hutool/json/JSONUtil;->isNull(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p2

    .line 140
    :cond_0
    instance-of v0, p1, Ljava/util/Date;

    if-eqz v0, :cond_1

    .line 141
    check-cast p1, Ljava/util/Date;

    return-object p1

    .line 142
    :cond_1
    instance-of v0, p1, Lcn/hutool/core/convert/NumberWithFormat;

    if-eqz v0, :cond_2

    .line 143
    move-object p2, p1

    check-cast p2, Lcn/hutool/core/convert/NumberWithFormat;

    const-class v0, Ljava/util/Date;

    invoke-virtual {p2, v0, p1}, Lcn/hutool/core/convert/NumberWithFormat;->convert(Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Date;

    return-object p1

    .line 146
    :cond_2
    invoke-interface {p0}, Lcn/hutool/json/JSONGetter;->getConfig()Lcn/hutool/json/JSONConfig;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcn/hutool/json/JSONGetter$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcn/hutool/json/JSONGetter$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    .line 147
    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 148
    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 149
    invoke-static {v0}, Lcn/hutool/core/util/StrUtil;->isNotBlank(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 151
    invoke-static {p1}, Lcn/hutool/core/convert/Convert;->toStr(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_3

    return-object p2

    .line 155
    :cond_3
    invoke-static {p1, v0}, Lcn/hutool/core/date/DateUtil;->parse(Ljava/lang/CharSequence;Ljava/lang/String;)Lcn/hutool/core/date/DateTime;

    move-result-object p1

    return-object p1

    .line 159
    :cond_4
    invoke-static {p1, p2}, Lcn/hutool/core/convert/Convert;->toDate(Ljava/lang/Object;Ljava/util/Date;)Ljava/util/Date;

    move-result-object p1

    return-object p1
.end method

.method public getJSONArray(Ljava/lang/Object;)Lcn/hutool/json/JSONArray;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Lcn/hutool/json/JSONArray;"
        }
    .end annotation

    .line 73
    invoke-interface {p0, p1}, Lcn/hutool/json/JSONGetter;->getObj(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 74
    invoke-static {p1}, Lcn/hutool/json/JSONUtil;->isNull(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 78
    :cond_0
    instance-of v0, p1, Lcn/hutool/json/JSON;

    if-eqz v0, :cond_1

    .line 79
    check-cast p1, Lcn/hutool/json/JSONArray;

    return-object p1

    .line 81
    :cond_1
    new-instance v0, Lcn/hutool/json/JSONArray;

    invoke-interface {p0}, Lcn/hutool/json/JSONGetter;->getConfig()Lcn/hutool/json/JSONConfig;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcn/hutool/json/JSONArray;-><init>(Ljava/lang/Object;Lcn/hutool/json/JSONConfig;)V

    return-object v0
.end method

.method public getJSONObject(Ljava/lang/Object;)Lcn/hutool/json/JSONObject;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Lcn/hutool/json/JSONObject;"
        }
    .end annotation

    .line 92
    invoke-interface {p0, p1}, Lcn/hutool/json/JSONGetter;->getObj(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 93
    invoke-static {p1}, Lcn/hutool/json/JSONUtil;->isNull(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 97
    :cond_0
    instance-of v0, p1, Lcn/hutool/json/JSON;

    if-eqz v0, :cond_1

    .line 98
    check-cast p1, Lcn/hutool/json/JSONObject;

    return-object p1

    .line 100
    :cond_1
    new-instance v0, Lcn/hutool/json/JSONObject;

    invoke-interface {p0}, Lcn/hutool/json/JSONGetter;->getConfig()Lcn/hutool/json/JSONConfig;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcn/hutool/json/JSONObject;-><init>(Ljava/lang/Object;Lcn/hutool/json/JSONConfig;)V

    return-object v0
.end method

.method public getLocalDateTime(Ljava/lang/Object;Ljava/time/LocalDateTime;)Ljava/time/LocalDateTime;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/time/LocalDateTime;",
            ")",
            "Ljava/time/LocalDateTime;"
        }
    .end annotation

    .line 172
    invoke-interface {p0, p1}, Lcn/hutool/json/JSONGetter;->getObj(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 173
    invoke-static {p1}, Lcn/hutool/json/JSONUtil;->isNull(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p2

    .line 176
    :cond_0
    instance-of v0, p1, Ljava/time/LocalDateTime;

    if-eqz v0, :cond_1

    .line 177
    check-cast p1, Ljava/time/LocalDateTime;

    return-object p1

    .line 180
    :cond_1
    invoke-interface {p0}, Lcn/hutool/json/JSONGetter;->getConfig()Lcn/hutool/json/JSONConfig;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcn/hutool/json/JSONGetter$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcn/hutool/json/JSONGetter$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    .line 181
    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 182
    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 183
    invoke-static {v0}, Lcn/hutool/core/util/StrUtil;->isNotBlank(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 185
    invoke-static {p1}, Lcn/hutool/core/convert/Convert;->toStr(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_2

    return-object p2

    .line 189
    :cond_2
    invoke-static {p1, v0}, Lcn/hutool/core/date/LocalDateTimeUtil;->parse(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/time/LocalDateTime;

    move-result-object p1

    return-object p1

    .line 193
    :cond_3
    invoke-static {p1, p2}, Lcn/hutool/core/convert/Convert;->toLocalDateTime(Ljava/lang/Object;Ljava/time/LocalDateTime;)Ljava/time/LocalDateTime;

    move-result-object p1

    return-object p1
.end method

.method public getStrEscaped(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 50
    invoke-interface {p0, p1, v0}, Lcn/hutool/json/JSONGetter;->getStrEscaped(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getStrEscaped(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 62
    invoke-interface {p0, p1, p2}, Lcn/hutool/json/JSONGetter;->getStr(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/hutool/json/JSONUtil;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public isNull(Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)Z"
        }
    .end annotation

    .line 39
    invoke-interface {p0, p1}, Lcn/hutool/json/JSONGetter;->getObj(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lcn/hutool/json/JSONUtil;->isNull(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
