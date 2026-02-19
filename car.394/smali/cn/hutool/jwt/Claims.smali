.class public Lcn/hutool/jwt/Claims;
.super Ljava/lang/Object;
.source "Claims.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final CONFIG:Lcn/hutool/json/JSONConfig;

.field private claimJSON:Lcn/hutool/json/JSONObject;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    invoke-static {}, Lcn/hutool/json/JSONConfig;->create()Lcn/hutool/json/JSONConfig;

    move-result-object v0

    const-string v1, "#sss"

    invoke-virtual {v0, v1}, Lcn/hutool/json/JSONConfig;->setDateFormat(Ljava/lang/String;)Lcn/hutool/json/JSONConfig;

    move-result-object v0

    iput-object v0, p0, Lcn/hutool/jwt/Claims;->CONFIG:Lcn/hutool/json/JSONConfig;

    return-void
.end method

.method private init()V
    .locals 2

    .line 96
    iget-object v0, p0, Lcn/hutool/jwt/Claims;->claimJSON:Lcn/hutool/json/JSONObject;

    if-nez v0, :cond_0

    .line 97
    new-instance v0, Lcn/hutool/json/JSONObject;

    iget-object v1, p0, Lcn/hutool/jwt/Claims;->CONFIG:Lcn/hutool/json/JSONConfig;

    invoke-direct {v0, v1}, Lcn/hutool/json/JSONObject;-><init>(Lcn/hutool/json/JSONConfig;)V

    iput-object v0, p0, Lcn/hutool/jwt/Claims;->claimJSON:Lcn/hutool/json/JSONObject;

    :cond_0
    return-void
.end method


# virtual methods
.method public getClaim(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .line 65
    invoke-direct {p0}, Lcn/hutool/jwt/Claims;->init()V

    .line 66
    iget-object v0, p0, Lcn/hutool/jwt/Claims;->claimJSON:Lcn/hutool/json/JSONObject;

    invoke-virtual {v0, p1}, Lcn/hutool/json/JSONObject;->getObj(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getClaimsJson()Lcn/hutool/json/JSONObject;
    .locals 1

    .line 75
    invoke-direct {p0}, Lcn/hutool/jwt/Claims;->init()V

    .line 76
    iget-object v0, p0, Lcn/hutool/jwt/Claims;->claimJSON:Lcn/hutool/json/JSONObject;

    return-object v0
.end method

.method public parse(Ljava/lang/String;Ljava/nio/charset/Charset;)V
    .locals 0

    .line 86
    invoke-static {p1, p2}, Lcn/hutool/core/codec/Base64;->decodeStr(Ljava/lang/CharSequence;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcn/hutool/jwt/Claims;->CONFIG:Lcn/hutool/json/JSONConfig;

    invoke-static {p1, p2}, Lcn/hutool/json/JSONUtil;->parseObj(Ljava/lang/Object;Lcn/hutool/json/JSONConfig;)Lcn/hutool/json/JSONObject;

    move-result-object p1

    iput-object p1, p0, Lcn/hutool/jwt/Claims;->claimJSON:Lcn/hutool/json/JSONObject;

    return-void
.end method

.method protected putAll(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;)V"
        }
    .end annotation

    .line 51
    invoke-static {p1}, Lcn/hutool/core/map/MapUtil;->isNotEmpty(Ljava/util/Map;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 52
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

    .line 53
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcn/hutool/jwt/Claims;->setClaim(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected setClaim(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    .line 36
    invoke-direct {p0}, Lcn/hutool/jwt/Claims;->init()V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Name must be not null!"

    .line 37
    invoke-static {p1, v1, v0}, Lcn/hutool/core/lang/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    if-nez p2, :cond_0

    .line 39
    iget-object p2, p0, Lcn/hutool/jwt/Claims;->claimJSON:Lcn/hutool/json/JSONObject;

    invoke-virtual {p2, p1}, Lcn/hutool/json/JSONObject;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 42
    :cond_0
    iget-object v0, p0, Lcn/hutool/jwt/Claims;->claimJSON:Lcn/hutool/json/JSONObject;

    invoke-virtual {v0, p1, p2}, Lcn/hutool/json/JSONObject;->set(Ljava/lang/String;Ljava/lang/Object;)Lcn/hutool/json/JSONObject;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 91
    invoke-direct {p0}, Lcn/hutool/jwt/Claims;->init()V

    .line 92
    iget-object v0, p0, Lcn/hutool/jwt/Claims;->claimJSON:Lcn/hutool/json/JSONObject;

    invoke-virtual {v0}, Lcn/hutool/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
