.class public Lcn/hutool/json/JSONObject;
.super Lcn/hutool/core/map/MapWrapper;
.source "JSONObject.java"

# interfaces
.implements Lcn/hutool/json/JSON;
.implements Lcn/hutool/json/JSONGetter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/hutool/core/map/MapWrapper<",
        "Ljava/lang/String;",
        "Ljava/lang/Object;",
        ">;",
        "Lcn/hutool/json/JSON;",
        "Lcn/hutool/json/JSONGetter<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field public static final DEFAULT_CAPACITY:I = 0x10

.field private static final serialVersionUID:J = -0x4952db19ef2358aL


# instance fields
.field private config:Lcn/hutool/json/JSONConfig;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/16 v0, 0x10

    const/4 v1, 0x0

    .line 51
    invoke-direct {p0, v0, v1}, Lcn/hutool/json/JSONObject;-><init>(IZ)V

    return-void
.end method

.method public constructor <init>(ILcn/hutool/json/JSONConfig;)V
    .locals 1

    .line 108
    invoke-static {}, Lcn/hutool/json/JSONConfig;->create()Lcn/hutool/json/JSONConfig;

    move-result-object v0

    invoke-static {p2, v0}, Lcn/hutool/core/util/ObjectUtil;->defaultIfNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/hutool/json/JSONConfig;

    invoke-static {p1, v0}, Lcn/hutool/json/InternalJSONUtil;->createRawMap(ILcn/hutool/json/JSONConfig;)Ljava/util/Map;

    move-result-object p1

    invoke-direct {p0, p1}, Lcn/hutool/core/map/MapWrapper;-><init>(Ljava/util/Map;)V

    .line 109
    invoke-static {}, Lcn/hutool/json/JSONConfig;->create()Lcn/hutool/json/JSONConfig;

    move-result-object p1

    invoke-static {p2, p1}, Lcn/hutool/core/util/ObjectUtil;->defaultIfNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/hutool/json/JSONConfig;

    iput-object p1, p0, Lcn/hutool/json/JSONObject;->config:Lcn/hutool/json/JSONConfig;

    return-void
.end method

.method public constructor <init>(IZ)V
    .locals 1

    const/4 v0, 0x0

    .line 72
    invoke-direct {p0, p1, v0, p2}, Lcn/hutool/json/JSONObject;-><init>(IZZ)V

    return-void
.end method

.method public constructor <init>(IZZ)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 87
    invoke-static {}, Lcn/hutool/json/JSONConfig;->create()Lcn/hutool/json/JSONConfig;

    move-result-object p3

    invoke-virtual {p3, p2}, Lcn/hutool/json/JSONConfig;->setIgnoreCase(Z)Lcn/hutool/json/JSONConfig;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcn/hutool/json/JSONObject;-><init>(ILcn/hutool/json/JSONConfig;)V

    return-void
.end method

.method public constructor <init>(Lcn/hutool/json/JSONConfig;)V
    .locals 1

    const/16 v0, 0x10

    .line 97
    invoke-direct {p0, v0, p1}, Lcn/hutool/json/JSONObject;-><init>(ILcn/hutool/json/JSONConfig;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/hutool/json/JSONException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 263
    invoke-static {}, Lcn/hutool/json/JSONConfig;->create()Lcn/hutool/json/JSONConfig;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcn/hutool/json/JSONObject;-><init>(Ljava/lang/Object;Lcn/hutool/json/JSONConfig;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1

    .line 125
    invoke-static {p1}, Lcn/hutool/json/InternalJSONUtil;->defaultIgnoreNullValue(Ljava/lang/Object;)Z

    move-result v0

    invoke-direct {p0, p1, v0}, Lcn/hutool/json/JSONObject;-><init>(Ljava/lang/Object;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Lcn/hutool/json/JSONConfig;)V
    .locals 1

    const/4 v0, 0x0

    .line 187
    invoke-direct {p0, p1, p2, v0}, Lcn/hutool/json/JSONObject;-><init>(Ljava/lang/Object;Lcn/hutool/json/JSONConfig;Lcn/hutool/core/lang/Filter;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Lcn/hutool/json/JSONConfig;Lcn/hutool/core/lang/Filter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lcn/hutool/json/JSONConfig;",
            "Lcn/hutool/core/lang/Filter<",
            "Lcn/hutool/core/lang/mutable/MutablePair<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;)V"
        }
    .end annotation

    const/16 v0, 0x10

    .line 209
    invoke-direct {p0, v0, p2}, Lcn/hutool/json/JSONObject;-><init>(ILcn/hutool/json/JSONConfig;)V

    .line 210
    invoke-static {p1}, Lcn/hutool/json/ObjectMapper;->of(Ljava/lang/Object;)Lcn/hutool/json/ObjectMapper;

    move-result-object p1

    invoke-virtual {p1, p0, p3}, Lcn/hutool/json/ObjectMapper;->map(Lcn/hutool/json/JSONObject;Lcn/hutool/core/lang/Filter;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Z)V
    .locals 1

    .line 142
    invoke-static {}, Lcn/hutool/json/JSONConfig;->create()Lcn/hutool/json/JSONConfig;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcn/hutool/json/JSONConfig;->setIgnoreNullValue(Z)Lcn/hutool/json/JSONConfig;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcn/hutool/json/JSONObject;-><init>(Ljava/lang/Object;Lcn/hutool/json/JSONConfig;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;ZZ)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 163
    invoke-static {}, Lcn/hutool/json/JSONConfig;->create()Lcn/hutool/json/JSONConfig;

    move-result-object p3

    instance-of v0, p1, Lcn/hutool/core/map/CaseInsensitiveMap;

    .line 164
    invoke-virtual {p3, v0}, Lcn/hutool/json/JSONConfig;->setIgnoreCase(Z)Lcn/hutool/json/JSONConfig;

    move-result-object p3

    .line 165
    invoke-virtual {p3, p2}, Lcn/hutool/json/JSONConfig;->setIgnoreNullValue(Z)Lcn/hutool/json/JSONConfig;

    move-result-object p2

    .line 163
    invoke-direct {p0, p1, p2}, Lcn/hutool/json/JSONObject;-><init>(Ljava/lang/Object;Lcn/hutool/json/JSONConfig;)V

    return-void
.end method

.method public varargs constructor <init>(Ljava/lang/Object;[Ljava/lang/String;)V
    .locals 6

    .line 228
    invoke-direct {p0}, Lcn/hutool/json/JSONObject;-><init>()V

    .line 229
    invoke-static {p2}, Lcn/hutool/core/util/ArrayUtil;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 230
    invoke-static {p1}, Lcn/hutool/json/ObjectMapper;->of(Ljava/lang/Object;)Lcn/hutool/json/ObjectMapper;

    move-result-object p1

    invoke-virtual {p1, p0, v1}, Lcn/hutool/json/ObjectMapper;->map(Lcn/hutool/json/JSONObject;Lcn/hutool/core/lang/Filter;)V

    return-void

    .line 234
    :cond_0
    instance-of v0, p1, Ljava/util/Map;

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 236
    array-length v0, p2

    :goto_0
    if-ge v2, v0, :cond_2

    aget-object v3, p2, v2

    .line 237
    move-object v4, p1

    check-cast v4, Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 238
    invoke-virtual {p0}, Lcn/hutool/json/JSONObject;->getConfig()Lcn/hutool/json/JSONConfig;

    move-result-object v5

    invoke-virtual {v5}, Lcn/hutool/json/JSONConfig;->isCheckDuplicate()Z

    move-result v5

    invoke-virtual {p0, v3, v4, v1, v5}, Lcn/hutool/json/JSONObject;->set(Ljava/lang/String;Ljava/lang/Object;Lcn/hutool/core/lang/Filter;Z)Lcn/hutool/json/JSONObject;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 241
    :cond_1
    array-length v0, p2

    :goto_1
    if-ge v2, v0, :cond_2

    aget-object v1, p2, v2

    .line 243
    :try_start_0
    invoke-static {p1, v1}, Lcn/hutool/core/util/ReflectUtil;->getFieldValue(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v1, v3}, Lcn/hutool/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lcn/hutool/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1

    const/16 v0, 0x10

    .line 61
    invoke-direct {p0, v0, p1}, Lcn/hutool/json/JSONObject;-><init>(IZ)V

    return-void
.end method

.method static synthetic lambda$write$0(Lcn/hutool/json/serialize/JSONWriter;Lcn/hutool/core/lang/Filter;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .line 565
    new-instance v0, Lcn/hutool/core/lang/mutable/MutablePair;

    invoke-direct {v0, p2, p3}, Lcn/hutool/core/lang/mutable/MutablePair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v0, p1}, Lcn/hutool/json/serialize/JSONWriter;->writeField(Lcn/hutool/core/lang/mutable/MutablePair;Lcn/hutool/core/lang/Filter;)Lcn/hutool/json/serialize/JSONWriter;

    return-void
.end method


# virtual methods
.method public accumulate(Ljava/lang/String;Ljava/lang/Object;)Lcn/hutool/json/JSONObject;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/hutool/json/JSONException;
        }
    .end annotation

    .line 456
    invoke-static {p2}, Lcn/hutool/json/InternalJSONUtil;->testValidity(Ljava/lang/Object;)Ljava/lang/Object;

    .line 457
    invoke-virtual {p0, p1}, Lcn/hutool/json/JSONObject;->getObj(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 459
    invoke-virtual {p0, p1, p2}, Lcn/hutool/json/JSONObject;->set(Ljava/lang/String;Ljava/lang/Object;)Lcn/hutool/json/JSONObject;

    goto :goto_0

    .line 460
    :cond_0
    instance-of v1, v0, Lcn/hutool/json/JSONArray;

    if-eqz v1, :cond_1

    .line 461
    check-cast v0, Lcn/hutool/json/JSONArray;

    invoke-virtual {v0, p2}, Lcn/hutool/json/JSONArray;->set(Ljava/lang/Object;)Lcn/hutool/json/JSONArray;

    goto :goto_0

    .line 463
    :cond_1
    iget-object v1, p0, Lcn/hutool/json/JSONObject;->config:Lcn/hutool/json/JSONConfig;

    invoke-static {v1}, Lcn/hutool/json/JSONUtil;->createArray(Lcn/hutool/json/JSONConfig;)Lcn/hutool/json/JSONArray;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcn/hutool/json/JSONArray;->set(Ljava/lang/Object;)Lcn/hutool/json/JSONArray;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcn/hutool/json/JSONArray;->set(Ljava/lang/Object;)Lcn/hutool/json/JSONArray;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcn/hutool/json/JSONObject;->set(Ljava/lang/String;Ljava/lang/Object;)Lcn/hutool/json/JSONObject;

    :goto_0
    return-object p0
.end method

.method public append(Ljava/lang/String;Ljava/lang/Object;)Lcn/hutool/json/JSONObject;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/hutool/json/JSONException;
        }
    .end annotation

    .line 477
    invoke-static {p2}, Lcn/hutool/json/InternalJSONUtil;->testValidity(Ljava/lang/Object;)Ljava/lang/Object;

    .line 478
    invoke-virtual {p0, p1}, Lcn/hutool/json/JSONObject;->getObj(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 480
    new-instance v0, Lcn/hutool/json/JSONArray;

    iget-object v1, p0, Lcn/hutool/json/JSONObject;->config:Lcn/hutool/json/JSONConfig;

    invoke-direct {v0, v1}, Lcn/hutool/json/JSONArray;-><init>(Lcn/hutool/json/JSONConfig;)V

    invoke-virtual {v0, p2}, Lcn/hutool/json/JSONArray;->set(Ljava/lang/Object;)Lcn/hutool/json/JSONArray;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcn/hutool/json/JSONObject;->set(Ljava/lang/String;Ljava/lang/Object;)Lcn/hutool/json/JSONObject;

    goto :goto_0

    .line 481
    :cond_0
    instance-of v1, v0, Lcn/hutool/json/JSONArray;

    if-eqz v1, :cond_1

    .line 482
    check-cast v0, Lcn/hutool/json/JSONArray;

    invoke-virtual {v0, p2}, Lcn/hutool/json/JSONArray;->set(Ljava/lang/Object;)Lcn/hutool/json/JSONArray;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcn/hutool/json/JSONObject;->set(Ljava/lang/String;Ljava/lang/Object;)Lcn/hutool/json/JSONObject;

    :goto_0
    return-object p0

    .line 484
    :cond_1
    new-instance p2, Lcn/hutool/json/JSONException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "JSONObject ["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "] is not a JSONArray."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcn/hutool/json/JSONException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public bridge synthetic clone()Lcn/hutool/core/map/MapWrapper;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 32
    invoke-virtual {p0}, Lcn/hutool/json/JSONObject;->clone()Lcn/hutool/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcn/hutool/json/JSONObject;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 573
    invoke-super {p0}, Lcn/hutool/core/map/MapWrapper;->clone()Lcn/hutool/core/map/MapWrapper;

    move-result-object v0

    check-cast v0, Lcn/hutool/json/JSONObject;

    .line 574
    iget-object v1, p0, Lcn/hutool/json/JSONObject;->config:Lcn/hutool/json/JSONConfig;

    iput-object v1, v0, Lcn/hutool/json/JSONObject;->config:Lcn/hutool/json/JSONConfig;

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 32
    invoke-virtual {p0}, Lcn/hutool/json/JSONObject;->clone()Lcn/hutool/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public getByPath(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    .line 315
    invoke-static {p1}, Lcn/hutool/core/bean/BeanPath;->create(Ljava/lang/String;)Lcn/hutool/core/bean/BeanPath;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcn/hutool/core/bean/BeanPath;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getByPath(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 320
    invoke-virtual {p0, p1}, Lcn/hutool/json/JSONObject;->getByPath(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0}, Lcn/hutool/json/JSONObject;->getConfig()Lcn/hutool/json/JSONConfig;

    move-result-object v0

    invoke-static {p2, p1, v0}, Lcn/hutool/json/JSONConverter;->jsonConvert(Ljava/lang/reflect/Type;Ljava/lang/Object;Lcn/hutool/json/JSONConfig;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getConfig()Lcn/hutool/json/JSONConfig;
    .locals 1

    .line 270
    iget-object v0, p0, Lcn/hutool/json/JSONObject;->config:Lcn/hutool/json/JSONConfig;

    return-object v0
.end method

.method public bridge synthetic getObj(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 32
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcn/hutool/json/JSONObject;->getObj(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getObj(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 310
    invoke-virtual {p0, p1, p2}, Lcn/hutool/json/JSONObject;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public increment(Ljava/lang/String;)Lcn/hutool/json/JSONObject;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/hutool/json/JSONException;
        }
    .end annotation

    .line 497
    invoke-virtual {p0, p1}, Lcn/hutool/json/JSONObject;->getObj(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 499
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcn/hutool/json/JSONObject;->set(Ljava/lang/String;Ljava/lang/Object;)Lcn/hutool/json/JSONObject;

    goto/16 :goto_0

    .line 500
    :cond_0
    instance-of v2, v0, Ljava/math/BigInteger;

    if-eqz v2, :cond_1

    .line 501
    check-cast v0, Ljava/math/BigInteger;

    sget-object v1, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcn/hutool/json/JSONObject;->set(Ljava/lang/String;Ljava/lang/Object;)Lcn/hutool/json/JSONObject;

    goto :goto_0

    .line 502
    :cond_1
    instance-of v2, v0, Ljava/math/BigDecimal;

    if-eqz v2, :cond_2

    .line 503
    check-cast v0, Ljava/math/BigDecimal;

    sget-object v1, Ljava/math/BigDecimal;->ONE:Ljava/math/BigDecimal;

    invoke-virtual {v0, v1}, Ljava/math/BigDecimal;->add(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcn/hutool/json/JSONObject;->set(Ljava/lang/String;Ljava/lang/Object;)Lcn/hutool/json/JSONObject;

    goto :goto_0

    .line 504
    :cond_2
    instance-of v2, v0, Ljava/lang/Integer;

    if-eqz v2, :cond_3

    .line 505
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcn/hutool/json/JSONObject;->set(Ljava/lang/String;Ljava/lang/Object;)Lcn/hutool/json/JSONObject;

    goto :goto_0

    .line 506
    :cond_3
    instance-of v1, v0, Ljava/lang/Long;

    if-eqz v1, :cond_4

    .line 507
    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcn/hutool/json/JSONObject;->set(Ljava/lang/String;Ljava/lang/Object;)Lcn/hutool/json/JSONObject;

    goto :goto_0

    .line 508
    :cond_4
    instance-of v1, v0, Ljava/lang/Double;

    if-eqz v1, :cond_5

    .line 509
    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcn/hutool/json/JSONObject;->set(Ljava/lang/String;Ljava/lang/Object;)Lcn/hutool/json/JSONObject;

    goto :goto_0

    .line 510
    :cond_5
    instance-of v1, v0, Ljava/lang/Float;

    if-eqz v1, :cond_6

    .line 511
    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    add-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcn/hutool/json/JSONObject;->set(Ljava/lang/String;Ljava/lang/Object;)Lcn/hutool/json/JSONObject;

    :goto_0
    return-object p0

    .line 513
    :cond_6
    new-instance v0, Lcn/hutool/json/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unable to increment ["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcn/hutool/json/JSONUtil;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "]."

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcn/hutool/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public put(Ljava/lang/String;Ljava/lang/Object;)Lcn/hutool/json/JSONObject;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/hutool/json/JSONException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 340
    invoke-virtual {p0, p1, p2}, Lcn/hutool/json/JSONObject;->set(Ljava/lang/String;Ljava/lang/Object;)Lcn/hutool/json/JSONObject;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 32
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcn/hutool/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcn/hutool/json/JSONObject;

    move-result-object p1

    return-object p1
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+",
            "Ljava/lang/String;",
            "*>;)V"
        }
    .end annotation

    .line 441
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 442
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcn/hutool/json/JSONObject;->set(Ljava/lang/String;Ljava/lang/Object;)Lcn/hutool/json/JSONObject;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public putByPath(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 325
    invoke-static {p1}, Lcn/hutool/core/bean/BeanPath;->create(Ljava/lang/String;)Lcn/hutool/core/bean/BeanPath;

    move-result-object p1

    invoke-virtual {p1, p0, p2}, Lcn/hutool/core/bean/BeanPath;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public putOnce(Ljava/lang/String;Ljava/lang/Object;)Lcn/hutool/json/JSONObject;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/hutool/json/JSONException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 407
    invoke-virtual {p0, p1, p2, v0}, Lcn/hutool/json/JSONObject;->setOnce(Ljava/lang/String;Ljava/lang/Object;Lcn/hutool/core/lang/Filter;)Lcn/hutool/json/JSONObject;

    move-result-object p1

    return-object p1
.end method

.method public putOpt(Ljava/lang/String;Ljava/lang/Object;)Lcn/hutool/json/JSONObject;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/hutool/json/JSONException;
        }
    .end annotation

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 434
    invoke-virtual {p0, p1, p2}, Lcn/hutool/json/JSONObject;->set(Ljava/lang/String;Ljava/lang/Object;)Lcn/hutool/json/JSONObject;

    :cond_0
    return-object p0
.end method

.method public set(Ljava/lang/String;Ljava/lang/Object;)Lcn/hutool/json/JSONObject;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/hutool/json/JSONException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 352
    invoke-virtual {p0, p1, p2, v0, v1}, Lcn/hutool/json/JSONObject;->set(Ljava/lang/String;Ljava/lang/Object;Lcn/hutool/core/lang/Filter;Z)Lcn/hutool/json/JSONObject;

    move-result-object p1

    return-object p1
.end method

.method public set(Ljava/lang/String;Ljava/lang/Object;Lcn/hutool/core/lang/Filter;Z)Lcn/hutool/json/JSONObject;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Lcn/hutool/core/lang/Filter<",
            "Lcn/hutool/core/lang/mutable/MutablePair<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;Z)",
            "Lcn/hutool/json/JSONObject;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/hutool/json/JSONException;
        }
    .end annotation

    if-nez p1, :cond_0

    return-object p0

    :cond_0
    if-eqz p3, :cond_2

    .line 373
    new-instance v0, Lcn/hutool/core/lang/mutable/MutablePair;

    invoke-direct {v0, p1, p2}, Lcn/hutool/core/lang/mutable/MutablePair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 374
    invoke-interface {p3, v0}, Lcn/hutool/core/lang/Filter;->accept(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 376
    invoke-virtual {v0}, Lcn/hutool/core/lang/mutable/MutablePair;->getKey()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 377
    invoke-virtual {v0}, Lcn/hutool/core/lang/mutable/MutablePair;->getValue()Ljava/lang/Object;

    move-result-object p2

    goto :goto_0

    :cond_1
    return-object p0

    .line 384
    :cond_2
    :goto_0
    iget-object p3, p0, Lcn/hutool/json/JSONObject;->config:Lcn/hutool/json/JSONConfig;

    invoke-virtual {p3}, Lcn/hutool/json/JSONConfig;->isIgnoreNullValue()Z

    move-result p3

    .line 385
    invoke-static {p2}, Lcn/hutool/core/util/ObjectUtil;->isNull(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    if-eqz p3, :cond_3

    .line 387
    invoke-virtual {p0, p1}, Lcn/hutool/json/JSONObject;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_3
    if-eqz p4, :cond_5

    .line 389
    invoke-virtual {p0, p1}, Lcn/hutool/json/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_4

    goto :goto_1

    .line 390
    :cond_4
    new-instance p2, Lcn/hutool/json/JSONException;

    const/4 p3, 0x1

    new-array p3, p3, [Ljava/lang/Object;

    const/4 p4, 0x0

    aput-object p1, p3, p4

    const-string p1, "Duplicate key \"{}\""

    invoke-direct {p2, p1, p3}, Lcn/hutool/json/JSONException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p2

    .line 393
    :cond_5
    :goto_1
    invoke-static {p2}, Lcn/hutool/json/InternalJSONUtil;->testValidity(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    iget-object p3, p0, Lcn/hutool/json/JSONObject;->config:Lcn/hutool/json/JSONConfig;

    invoke-static {p2, p3}, Lcn/hutool/json/JSONUtil;->wrap(Ljava/lang/Object;Lcn/hutool/json/JSONConfig;)Ljava/lang/Object;

    move-result-object p2

    invoke-super {p0, p1, p2}, Lcn/hutool/core/map/MapWrapper;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2
    return-object p0
.end method

.method public setDateFormat(Ljava/lang/String;)Lcn/hutool/json/JSONObject;
    .locals 1

    .line 282
    iget-object v0, p0, Lcn/hutool/json/JSONObject;->config:Lcn/hutool/json/JSONConfig;

    invoke-virtual {v0, p1}, Lcn/hutool/json/JSONConfig;->setDateFormat(Ljava/lang/String;)Lcn/hutool/json/JSONConfig;

    return-object p0
.end method

.method public setOnce(Ljava/lang/String;Ljava/lang/Object;Lcn/hutool/core/lang/Filter;)Lcn/hutool/json/JSONObject;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Lcn/hutool/core/lang/Filter<",
            "Lcn/hutool/core/lang/mutable/MutablePair<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;)",
            "Lcn/hutool/json/JSONObject;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/hutool/json/JSONException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 421
    invoke-virtual {p0, p1, p2, p3, v0}, Lcn/hutool/json/JSONObject;->set(Ljava/lang/String;Ljava/lang/Object;Lcn/hutool/core/lang/Filter;Z)Lcn/hutool/json/JSONObject;

    move-result-object p1

    return-object p1
.end method

.method public toJSONArray(Ljava/util/Collection;)Lcn/hutool/json/JSONArray;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)",
            "Lcn/hutool/json/JSONArray;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/hutool/json/JSONException;
        }
    .end annotation

    .line 294
    invoke-static {p1}, Lcn/hutool/core/collection/CollectionUtil;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 297
    :cond_0
    new-instance v0, Lcn/hutool/json/JSONArray;

    iget-object v1, p0, Lcn/hutool/json/JSONObject;->config:Lcn/hutool/json/JSONConfig;

    invoke-direct {v0, v1}, Lcn/hutool/json/JSONArray;-><init>(Lcn/hutool/json/JSONConfig;)V

    .line 299
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 300
    invoke-virtual {p0, v1}, Lcn/hutool/json/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 302
    invoke-virtual {v0, v1}, Lcn/hutool/json/JSONArray;->set(Ljava/lang/Object;)Lcn/hutool/json/JSONArray;

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public toJSONString(ILcn/hutool/core/lang/Filter;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcn/hutool/core/lang/Filter<",
            "Lcn/hutool/core/lang/mutable/MutablePair<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 539
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 540
    invoke-virtual {v0}, Ljava/io/StringWriter;->getBuffer()Ljava/lang/StringBuffer;

    move-result-object v1

    monitor-enter v1

    const/4 v2, 0x0

    .line 541
    :try_start_0
    invoke-virtual {p0, v0, p1, v2, p2}, Lcn/hutool/json/JSONObject;->write(Ljava/io/Writer;IILcn/hutool/core/lang/Filter;)Ljava/io/Writer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    monitor-exit v1

    return-object p1

    :catchall_0
    move-exception p1

    .line 542
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 526
    invoke-virtual {p0, v0}, Lcn/hutool/json/JSONObject;->toJSONString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public write(Ljava/io/Writer;II)Ljava/io/Writer;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/hutool/json/JSONException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 547
    invoke-virtual {p0, p1, p2, p3, v0}, Lcn/hutool/json/JSONObject;->write(Ljava/io/Writer;IILcn/hutool/core/lang/Filter;)Ljava/io/Writer;

    move-result-object p1

    return-object p1
.end method

.method public write(Ljava/io/Writer;IILcn/hutool/core/lang/Filter;)Ljava/io/Writer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/Writer;",
            "II",
            "Lcn/hutool/core/lang/Filter<",
            "Lcn/hutool/core/lang/mutable/MutablePair<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;>;)",
            "Ljava/io/Writer;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/hutool/json/JSONException;
        }
    .end annotation

    .line 563
    iget-object v0, p0, Lcn/hutool/json/JSONObject;->config:Lcn/hutool/json/JSONConfig;

    invoke-static {p1, p2, p3, v0}, Lcn/hutool/json/serialize/JSONWriter;->of(Ljava/io/Writer;IILcn/hutool/json/JSONConfig;)Lcn/hutool/json/serialize/JSONWriter;

    move-result-object p2

    .line 564
    invoke-virtual {p2}, Lcn/hutool/json/serialize/JSONWriter;->beginObj()Lcn/hutool/json/serialize/JSONWriter;

    move-result-object p2

    .line 565
    new-instance p3, Lcn/hutool/json/JSONObject$$ExternalSyntheticLambda0;

    invoke-direct {p3, p2, p4}, Lcn/hutool/json/JSONObject$$ExternalSyntheticLambda0;-><init>(Lcn/hutool/json/serialize/JSONWriter;Lcn/hutool/core/lang/Filter;)V

    invoke-virtual {p0, p3}, Lcn/hutool/json/JSONObject;->forEach(Ljava/util/function/BiConsumer;)V

    .line 566
    invoke-virtual {p2}, Lcn/hutool/json/serialize/JSONWriter;->end()Lcn/hutool/json/serialize/JSONWriter;

    return-object p1
.end method
