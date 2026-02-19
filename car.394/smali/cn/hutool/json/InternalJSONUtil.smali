.class public final Lcn/hutool/json/InternalJSONUtil;
.super Ljava/lang/Object;
.source "InternalJSONUtil.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static createRawMap(ILcn/hutool/json/JSONConfig;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcn/hutool/json/JSONConfig;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 204
    invoke-static {}, Lcn/hutool/json/JSONConfig;->create()Lcn/hutool/json/JSONConfig;

    move-result-object p1

    .line 206
    :cond_0
    invoke-virtual {p1}, Lcn/hutool/json/JSONConfig;->getKeyComparator()Ljava/util/Comparator;

    move-result-object v0

    .line 207
    invoke-virtual {p1}, Lcn/hutool/json/JSONConfig;->isIgnoreCase()Z

    move-result p1

    if-eqz p1, :cond_2

    if-eqz v0, :cond_1

    .line 209
    new-instance p0, Lcn/hutool/core/map/CaseInsensitiveTreeMap;

    invoke-direct {p0, v0}, Lcn/hutool/core/map/CaseInsensitiveTreeMap;-><init>(Ljava/util/Comparator;)V

    goto :goto_1

    .line 211
    :cond_1
    new-instance p1, Lcn/hutool/core/map/CaseInsensitiveLinkedMap;

    invoke-direct {p1, p0}, Lcn/hutool/core/map/CaseInsensitiveLinkedMap;-><init>(I)V

    goto :goto_0

    :cond_2
    if-eqz v0, :cond_3

    .line 215
    new-instance p0, Ljava/util/TreeMap;

    invoke-direct {p0, v0}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    goto :goto_1

    .line 217
    :cond_3
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1, p0}, Ljava/util/LinkedHashMap;-><init>(I)V

    :goto_0
    move-object p0, p1

    :goto_1
    return-object p0
.end method

.method static defaultIgnoreNullValue(Ljava/lang/Object;)Z
    .locals 1

    .line 174
    instance-of v0, p0, Ljava/lang/CharSequence;

    if-nez v0, :cond_0

    instance-of v0, p0, Lcn/hutool/json/JSONTokener;

    if-nez v0, :cond_0

    instance-of p0, p0, Ljava/util/Map;

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static propertyPut(Lcn/hutool/json/JSONObject;Ljava/lang/Object;Ljava/lang/Object;Lcn/hutool/core/lang/Filter;)Lcn/hutool/json/JSONObject;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/hutool/json/JSONObject;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Lcn/hutool/core/lang/Filter<",
            "Lcn/hutool/core/lang/mutable/MutablePair<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;)",
            "Lcn/hutool/json/JSONObject;"
        }
    .end annotation

    .line 144
    invoke-static {p1}, Lcn/hutool/core/convert/Convert;->toStr(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0x2e

    invoke-static {p1, v0}, Lcn/hutool/core/util/StrUtil;->splitToArray(Ljava/lang/CharSequence;C)[Ljava/lang/String;

    move-result-object p1

    .line 145
    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    move-object v2, p0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 148
    aget-object v3, p1, v1

    .line 149
    invoke-virtual {v2, v3}, Lcn/hutool/json/JSONObject;->getJSONObject(Ljava/lang/Object;)Lcn/hutool/json/JSONObject;

    move-result-object v4

    if-nez v4, :cond_0

    .line 151
    new-instance v4, Lcn/hutool/json/JSONObject;

    invoke-virtual {v2}, Lcn/hutool/json/JSONObject;->getConfig()Lcn/hutool/json/JSONConfig;

    move-result-object v5

    invoke-direct {v4, v5}, Lcn/hutool/json/JSONObject;-><init>(Lcn/hutool/json/JSONConfig;)V

    .line 152
    invoke-virtual {v2}, Lcn/hutool/json/JSONObject;->getConfig()Lcn/hutool/json/JSONConfig;

    move-result-object v5

    invoke-virtual {v5}, Lcn/hutool/json/JSONConfig;->isCheckDuplicate()Z

    move-result v5

    invoke-virtual {v2, v3, v4, p3, v5}, Lcn/hutool/json/JSONObject;->set(Ljava/lang/String;Ljava/lang/Object;Lcn/hutool/core/lang/Filter;Z)Lcn/hutool/json/JSONObject;

    :cond_0
    move-object v2, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 156
    :cond_1
    aget-object p1, p1, v0

    invoke-virtual {v2}, Lcn/hutool/json/JSONObject;->getConfig()Lcn/hutool/json/JSONConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcn/hutool/json/JSONConfig;->isCheckDuplicate()Z

    move-result v0

    invoke-virtual {v2, p1, p2, p3, v0}, Lcn/hutool/json/JSONObject;->set(Ljava/lang/String;Ljava/lang/Object;Lcn/hutool/core/lang/Filter;Z)Lcn/hutool/json/JSONObject;

    return-object p0
.end method

.method public static stringToValue(Ljava/lang/String;)Ljava/lang/Object;
    .locals 5

    .line 96
    invoke-static {p0}, Lcn/hutool/core/util/StrUtil;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    const-string v0, "null"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "true"

    .line 101
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 102
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0

    :cond_1
    const-string v0, "false"

    .line 104
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 105
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0

    :cond_2
    const/4 v0, 0x0

    .line 109
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x30

    if-lt v1, v2, :cond_3

    const/16 v2, 0x39

    if-le v1, v2, :cond_4

    :cond_3
    const/16 v2, 0x2d

    if-ne v1, v2, :cond_7

    :cond_4
    const/4 v1, 0x2

    :try_start_0
    new-array v1, v1, [Ljava/lang/CharSequence;

    const-string v2, "."

    aput-object v2, v1, v0

    const-string v0, "e"

    const/4 v2, 0x1

    aput-object v0, v1, v2

    .line 112
    invoke-static {p0, v1}, Lcn/hutool/core/util/StrUtil;->containsAnyIgnoreCase(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 114
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, p0}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 116
    :cond_5
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 117
    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    long-to-int v2, v0

    int-to-long v3, v2

    cmp-long v3, v0, v3

    if-nez v3, :cond_6

    .line 119
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    .line 121
    :cond_6
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_7
    return-object p0

    .line 97
    :cond_8
    :goto_0
    sget-object p0, Lcn/hutool/json/JSONNull;->NULL:Lcn/hutool/json/JSONNull;

    return-object p0
.end method

.method static testValidity(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/hutool/json/JSONException;
        }
    .end annotation

    .line 40
    invoke-static {p0}, Lcn/hutool/core/util/ObjectUtil;->isValidIfNumber(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 41
    :cond_0
    new-instance p0, Lcn/hutool/json/JSONException;

    const-string v0, "JSON does not allow non-finite numbers."

    invoke-direct {p0, v0}, Lcn/hutool/json/JSONException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static toCopyOptions(Lcn/hutool/json/JSONConfig;)Lcn/hutool/core/bean/copier/CopyOptions;
    .locals 2

    .line 187
    invoke-static {}, Lcn/hutool/core/bean/copier/CopyOptions;->create()Lcn/hutool/core/bean/copier/CopyOptions;

    move-result-object v0

    .line 188
    invoke-virtual {p0}, Lcn/hutool/json/JSONConfig;->isIgnoreCase()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcn/hutool/core/bean/copier/CopyOptions;->setIgnoreCase(Z)Lcn/hutool/core/bean/copier/CopyOptions;

    move-result-object v0

    .line 189
    invoke-virtual {p0}, Lcn/hutool/json/JSONConfig;->isIgnoreError()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcn/hutool/core/bean/copier/CopyOptions;->setIgnoreError(Z)Lcn/hutool/core/bean/copier/CopyOptions;

    move-result-object v0

    .line 190
    invoke-virtual {p0}, Lcn/hutool/json/JSONConfig;->isIgnoreNullValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcn/hutool/core/bean/copier/CopyOptions;->setIgnoreNullValue(Z)Lcn/hutool/core/bean/copier/CopyOptions;

    move-result-object v0

    .line 191
    invoke-virtual {p0}, Lcn/hutool/json/JSONConfig;->isTransientSupport()Z

    move-result p0

    invoke-virtual {v0, p0}, Lcn/hutool/core/bean/copier/CopyOptions;->setTransientSupport(Z)Lcn/hutool/core/bean/copier/CopyOptions;

    move-result-object p0

    return-object p0
.end method

.method static valueToString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/hutool/json/JSONException;
        }
    .end annotation

    if-eqz p0, :cond_8

    .line 62
    instance-of v0, p0, Lcn/hutool/json/JSONNull;

    if-eqz v0, :cond_0

    goto :goto_1

    .line 65
    :cond_0
    instance-of v0, p0, Lcn/hutool/json/JSONString;

    if-eqz v0, :cond_1

    .line 67
    :try_start_0
    check-cast p0, Lcn/hutool/json/JSONString;

    invoke-interface {p0}, Lcn/hutool/json/JSONString;->toJSONString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 69
    new-instance v0, Lcn/hutool/json/JSONException;

    invoke-direct {v0, p0}, Lcn/hutool/json/JSONException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 71
    :cond_1
    instance-of v0, p0, Ljava/lang/Number;

    if-eqz v0, :cond_2

    .line 72
    check-cast p0, Ljava/lang/Number;

    invoke-static {p0}, Lcn/hutool/core/util/NumberUtil;->toStr(Ljava/lang/Number;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 73
    :cond_2
    instance-of v0, p0, Ljava/lang/Boolean;

    if-nez v0, :cond_7

    instance-of v0, p0, Lcn/hutool/json/JSONObject;

    if-nez v0, :cond_7

    instance-of v0, p0, Lcn/hutool/json/JSONArray;

    if-eqz v0, :cond_3

    goto :goto_0

    .line 75
    :cond_3
    instance-of v0, p0, Ljava/util/Map;

    if-eqz v0, :cond_4

    .line 76
    check-cast p0, Ljava/util/Map;

    .line 77
    new-instance v0, Lcn/hutool/json/JSONObject;

    invoke-direct {v0, p0}, Lcn/hutool/json/JSONObject;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcn/hutool/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 78
    :cond_4
    instance-of v0, p0, Ljava/util/Collection;

    if-eqz v0, :cond_5

    .line 79
    check-cast p0, Ljava/util/Collection;

    .line 80
    new-instance v0, Lcn/hutool/json/JSONArray;

    invoke-direct {v0, p0}, Lcn/hutool/json/JSONArray;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcn/hutool/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 81
    :cond_5
    invoke-static {p0}, Lcn/hutool/core/util/ArrayUtil;->isArray(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 82
    new-instance v0, Lcn/hutool/json/JSONArray;

    invoke-direct {v0, p0}, Lcn/hutool/json/JSONArray;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcn/hutool/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 84
    :cond_6
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcn/hutool/json/JSONUtil;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 74
    :cond_7
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 63
    :cond_8
    :goto_1
    sget-object p0, Lcn/hutool/json/JSONNull;->NULL:Lcn/hutool/json/JSONNull;

    invoke-virtual {p0}, Lcn/hutool/json/JSONNull;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
