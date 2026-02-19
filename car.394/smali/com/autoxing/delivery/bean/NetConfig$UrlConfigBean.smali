.class public Lcom/autoxing/delivery/bean/NetConfig$UrlConfigBean;
.super Ljava/lang/Object;
.source "NetConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/autoxing/delivery/bean/NetConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UrlConfigBean"
.end annotation


# instance fields
.field private api_url:Ljava/lang/String;

.field private mobile_url:Ljava/lang/String;

.field private ws_url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getApi_url()Ljava/lang/String;
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/autoxing/delivery/bean/NetConfig$UrlConfigBean;->api_url:Ljava/lang/String;

    return-object v0
.end method

.method public getMobile_url()Ljava/lang/String;
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/autoxing/delivery/bean/NetConfig$UrlConfigBean;->mobile_url:Ljava/lang/String;

    return-object v0
.end method

.method public getWs_url()Ljava/lang/String;
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/autoxing/delivery/bean/NetConfig$UrlConfigBean;->ws_url:Ljava/lang/String;

    return-object v0
.end method

.method public setApi_url(Ljava/lang/String;)V
    .locals 0

    .line 89
    iput-object p1, p0, Lcom/autoxing/delivery/bean/NetConfig$UrlConfigBean;->api_url:Ljava/lang/String;

    return-void
.end method

.method public setMobile_url(Ljava/lang/String;)V
    .locals 0

    .line 105
    iput-object p1, p0, Lcom/autoxing/delivery/bean/NetConfig$UrlConfigBean;->mobile_url:Ljava/lang/String;

    return-void
.end method

.method public setWs_url(Ljava/lang/String;)V
    .locals 0

    .line 97
    iput-object p1, p0, Lcom/autoxing/delivery/bean/NetConfig$UrlConfigBean;->ws_url:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 110
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "UrlConfigBean{api_url=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/autoxing/delivery/bean/NetConfig$UrlConfigBean;->api_url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', ws_url=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/autoxing/delivery/bean/NetConfig$UrlConfigBean;->ws_url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', mobile_url=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/autoxing/delivery/bean/NetConfig$UrlConfigBean;->mobile_url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
