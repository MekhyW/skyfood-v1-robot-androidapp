.class public Lcom/autoxing/delivery/js/model/LogInfo;
.super Ljava/lang/Object;
.source "LogInfo.java"


# instance fields
.field private extData:Lcom/alibaba/fastjson/JSONObject;

.field private level:Ljava/lang/String;

.field private logType:Ljava/lang/String;

.field private message:Ljava/lang/String;

.field private source:Ljava/lang/String;

.field private tag:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getExtData()Lcom/alibaba/fastjson/JSONObject;
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/autoxing/delivery/js/model/LogInfo;->extData:Lcom/alibaba/fastjson/JSONObject;

    return-object v0
.end method

.method public getLevel()Ljava/lang/String;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/autoxing/delivery/js/model/LogInfo;->level:Ljava/lang/String;

    return-object v0
.end method

.method public getLogType()Ljava/lang/String;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/autoxing/delivery/js/model/LogInfo;->logType:Ljava/lang/String;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/autoxing/delivery/js/model/LogInfo;->message:Ljava/lang/String;

    return-object v0
.end method

.method public getSource()Ljava/lang/String;
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/autoxing/delivery/js/model/LogInfo;->source:Ljava/lang/String;

    return-object v0
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/autoxing/delivery/js/model/LogInfo;->tag:Ljava/lang/String;

    return-object v0
.end method

.method public setExtData(Lcom/alibaba/fastjson/JSONObject;)V
    .locals 0

    .line 58
    iput-object p1, p0, Lcom/autoxing/delivery/js/model/LogInfo;->extData:Lcom/alibaba/fastjson/JSONObject;

    return-void
.end method

.method public setLevel(Ljava/lang/String;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/autoxing/delivery/js/model/LogInfo;->level:Ljava/lang/String;

    return-void
.end method

.method public setLogType(Ljava/lang/String;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/autoxing/delivery/js/model/LogInfo;->logType:Ljava/lang/String;

    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/autoxing/delivery/js/model/LogInfo;->message:Ljava/lang/String;

    return-void
.end method

.method public setSource(Ljava/lang/String;)V
    .locals 0

    .line 18
    iput-object p1, p0, Lcom/autoxing/delivery/js/model/LogInfo;->source:Ljava/lang/String;

    return-void
.end method

.method public setTag(Ljava/lang/String;)V
    .locals 0

    .line 26
    iput-object p1, p0, Lcom/autoxing/delivery/js/model/LogInfo;->tag:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 63
    iget-object v2, p0, Lcom/autoxing/delivery/js/model/LogInfo;->source:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/autoxing/delivery/js/model/LogInfo;->level:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/autoxing/delivery/js/model/LogInfo;->logType:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/autoxing/delivery/js/model/LogInfo;->message:Ljava/lang/String;

    aput-object v2, v0, v1

    iget-object v1, p0, Lcom/autoxing/delivery/js/model/LogInfo;->extData:Lcom/alibaba/fastjson/JSONObject;

    if-nez v1, :cond_0

    const-string v1, ""

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lcom/alibaba/fastjson/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    const/4 v2, 0x4

    aput-object v1, v0, v2

    const-string v1, "%s|%s|%s|%s|%s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
