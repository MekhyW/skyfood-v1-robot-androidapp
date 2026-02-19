.class public Lcn/hutool/json/JSONSupport;
.super Ljava/lang/Object;
.source "JSONSupport.java"

# interfaces
.implements Lcn/hutool/json/JSONString;
.implements Lcn/hutool/json/JSONBeanParser;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcn/hutool/json/JSONString;",
        "Lcn/hutool/json/JSONBeanParser<",
        "Lcn/hutool/json/JSON;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public parse(Lcn/hutool/json/JSON;)V
    .locals 2

    .line 29
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcn/hutool/json/JSONConverter;->jsonToBean(Ljava/lang/reflect/Type;Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/hutool/json/JSONSupport;

    new-array v0, v1, [Ljava/lang/String;

    .line 30
    invoke-static {p1, p0, v0}, Lcn/hutool/core/bean/BeanUtil;->copyProperties(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic parse(Ljava/lang/Object;)V
    .locals 0

    .line 11
    check-cast p1, Lcn/hutool/json/JSON;

    invoke-virtual {p0, p1}, Lcn/hutool/json/JSONSupport;->parse(Lcn/hutool/json/JSON;)V

    return-void
.end method

.method public parse(Ljava/lang/String;)V
    .locals 1

    .line 19
    new-instance v0, Lcn/hutool/json/JSONObject;

    invoke-direct {v0, p1}, Lcn/hutool/json/JSONObject;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcn/hutool/json/JSONSupport;->parse(Lcn/hutool/json/JSON;)V

    return-void
.end method

.method public toJSON()Lcn/hutool/json/JSONObject;
    .locals 1

    .line 37
    new-instance v0, Lcn/hutool/json/JSONObject;

    invoke-direct {v0, p0}, Lcn/hutool/json/JSONObject;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public toJSONString()Ljava/lang/String;
    .locals 1

    .line 42
    invoke-virtual {p0}, Lcn/hutool/json/JSONSupport;->toJSON()Lcn/hutool/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lcn/hutool/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toPrettyString()Ljava/lang/String;
    .locals 1

    .line 51
    invoke-virtual {p0}, Lcn/hutool/json/JSONSupport;->toJSON()Lcn/hutool/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lcn/hutool/json/JSONObject;->toStringPretty()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 56
    invoke-virtual {p0}, Lcn/hutool/json/JSONSupport;->toJSONString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
