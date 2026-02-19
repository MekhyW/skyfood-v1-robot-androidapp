.class public Lcom/autoxing/delivery/network/model/ResultData;
.super Ljava/lang/Object;
.source "ResultData.java"


# instance fields
.field private code:I

.field private data:Lcom/alibaba/fastjson/JSONObject;

.field private errText:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCode()I
    .locals 1

    .line 11
    iget v0, p0, Lcom/autoxing/delivery/network/model/ResultData;->code:I

    return v0
.end method

.method public getData()Lcom/alibaba/fastjson/JSONObject;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/autoxing/delivery/network/model/ResultData;->data:Lcom/alibaba/fastjson/JSONObject;

    return-object v0
.end method

.method public getErrText()Ljava/lang/String;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/autoxing/delivery/network/model/ResultData;->errText:Ljava/lang/String;

    return-object v0
.end method

.method public setCode(I)V
    .locals 0

    .line 15
    iput p1, p0, Lcom/autoxing/delivery/network/model/ResultData;->code:I

    return-void
.end method

.method public setData(Lcom/alibaba/fastjson/JSONObject;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lcom/autoxing/delivery/network/model/ResultData;->data:Lcom/alibaba/fastjson/JSONObject;

    return-void
.end method

.method public setErrText(Ljava/lang/String;)V
    .locals 0

    .line 23
    iput-object p1, p0, Lcom/autoxing/delivery/network/model/ResultData;->errText:Ljava/lang/String;

    return-void
.end method
