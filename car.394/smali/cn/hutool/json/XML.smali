.class public Lcn/hutool/json/XML;
.super Ljava/lang/Object;
.source "XML.java"


# static fields
.field public static final AMP:Ljava/lang/Character;

.field public static final APOS:Ljava/lang/Character;

.field public static final BANG:Ljava/lang/Character;

.field public static final EQ:Ljava/lang/Character;

.field public static final GT:Ljava/lang/Character;

.field public static final LT:Ljava/lang/Character;

.field public static final QUEST:Ljava/lang/Character;

.field public static final QUOT:Ljava/lang/Character;

.field public static final SLASH:Ljava/lang/Character;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x26

    .line 19
    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    sput-object v0, Lcn/hutool/json/XML;->AMP:Ljava/lang/Character;

    const/16 v0, 0x27

    .line 24
    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    sput-object v0, Lcn/hutool/json/XML;->APOS:Ljava/lang/Character;

    const/16 v0, 0x21

    .line 29
    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    sput-object v0, Lcn/hutool/json/XML;->BANG:Ljava/lang/Character;

    const/16 v0, 0x3d

    .line 34
    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    sput-object v0, Lcn/hutool/json/XML;->EQ:Ljava/lang/Character;

    const/16 v0, 0x3e

    .line 39
    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    sput-object v0, Lcn/hutool/json/XML;->GT:Ljava/lang/Character;

    const/16 v0, 0x3c

    .line 44
    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    sput-object v0, Lcn/hutool/json/XML;->LT:Ljava/lang/Character;

    const/16 v0, 0x3f

    .line 49
    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    sput-object v0, Lcn/hutool/json/XML;->QUEST:Ljava/lang/Character;

    const/16 v0, 0x22

    .line 54
    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    sput-object v0, Lcn/hutool/json/XML;->QUOT:Ljava/lang/Character;

    const/16 v0, 0x2f

    .line 59
    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    sput-object v0, Lcn/hutool/json/XML;->SLASH:Ljava/lang/Character;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static toJSONObject(Lcn/hutool/json/JSONObject;Ljava/lang/String;Z)Lcn/hutool/json/JSONObject;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/hutool/json/JSONException;
        }
    .end annotation

    .line 101
    invoke-static {p0, p1, p2}, Lcn/hutool/json/xml/JSONXMLParser;->parseJSONObject(Lcn/hutool/json/JSONObject;Ljava/lang/String;Z)V

    return-object p0
.end method

.method public static toJSONObject(Ljava/lang/String;)Lcn/hutool/json/JSONObject;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/hutool/json/JSONException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 71
    invoke-static {p0, v0}, Lcn/hutool/json/XML;->toJSONObject(Ljava/lang/String;Z)Lcn/hutool/json/JSONObject;

    move-result-object p0

    return-object p0
.end method

.method public static toJSONObject(Ljava/lang/String;Z)Lcn/hutool/json/JSONObject;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/hutool/json/JSONException;
        }
    .end annotation

    .line 86
    new-instance v0, Lcn/hutool/json/JSONObject;

    invoke-direct {v0}, Lcn/hutool/json/JSONObject;-><init>()V

    invoke-static {v0, p0, p1}, Lcn/hutool/json/XML;->toJSONObject(Lcn/hutool/json/JSONObject;Ljava/lang/String;Z)Lcn/hutool/json/JSONObject;

    move-result-object p0

    return-object p0
.end method

.method public static toXml(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/hutool/json/JSONException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 113
    invoke-static {p0, v0}, Lcn/hutool/json/XML;->toXml(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static toXml(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/hutool/json/JSONException;
        }
    .end annotation

    const-string v0, "content"

    .line 125
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcn/hutool/json/XML;->toXml(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static varargs toXml(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/hutool/json/JSONException;
        }
    .end annotation

    .line 138
    invoke-static {p0, p1, p2}, Lcn/hutool/json/xml/JSONXMLSerializer;->toXml(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
