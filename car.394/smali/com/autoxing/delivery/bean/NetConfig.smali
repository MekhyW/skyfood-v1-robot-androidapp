.class public Lcom/autoxing/delivery/bean/NetConfig;
.super Ljava/lang/Object;
.source "NetConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/autoxing/delivery/bean/NetConfig$UrlConfigBean;
    }
.end annotation


# instance fields
.field private h5_ip:Ljava/lang/String;

.field private net_mode:I

.field private offline_mode:I

.field private screen_bright:I

.field private screen_ip:Ljava/lang/String;

.field private server_mode:I

.field private url_config:Lcom/autoxing/delivery/bean/NetConfig$UrlConfigBean;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, -0x64

    .line 10
    iput v0, p0, Lcom/autoxing/delivery/bean/NetConfig;->screen_bright:I

    return-void
.end method


# virtual methods
.method public getH5_ip()Ljava/lang/String;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/autoxing/delivery/bean/NetConfig;->h5_ip:Ljava/lang/String;

    return-object v0
.end method

.method public getNet_mode()I
    .locals 1

    .line 34
    iget v0, p0, Lcom/autoxing/delivery/bean/NetConfig;->net_mode:I

    return v0
.end method

.method public getOffline_mode()I
    .locals 1

    .line 26
    iget v0, p0, Lcom/autoxing/delivery/bean/NetConfig;->offline_mode:I

    return v0
.end method

.method public getScreen_bright()I
    .locals 1

    .line 66
    iget v0, p0, Lcom/autoxing/delivery/bean/NetConfig;->screen_bright:I

    return v0
.end method

.method public getScreen_ip()Ljava/lang/String;
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/autoxing/delivery/bean/NetConfig;->screen_ip:Ljava/lang/String;

    return-object v0
.end method

.method public getServer_mode()I
    .locals 1

    .line 42
    iget v0, p0, Lcom/autoxing/delivery/bean/NetConfig;->server_mode:I

    return v0
.end method

.method public getUrl_config()Lcom/autoxing/delivery/bean/NetConfig$UrlConfigBean;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/autoxing/delivery/bean/NetConfig;->url_config:Lcom/autoxing/delivery/bean/NetConfig$UrlConfigBean;

    return-object v0
.end method

.method public setH5_ip(Ljava/lang/String;)V
    .locals 0

    .line 22
    iput-object p1, p0, Lcom/autoxing/delivery/bean/NetConfig;->h5_ip:Ljava/lang/String;

    return-void
.end method

.method public setNet_mode(I)V
    .locals 0

    .line 38
    iput p1, p0, Lcom/autoxing/delivery/bean/NetConfig;->net_mode:I

    return-void
.end method

.method public setOffline_mode(I)V
    .locals 0

    .line 30
    iput p1, p0, Lcom/autoxing/delivery/bean/NetConfig;->offline_mode:I

    return-void
.end method

.method public setScreen_bright(I)V
    .locals 0

    .line 70
    iput p1, p0, Lcom/autoxing/delivery/bean/NetConfig;->screen_bright:I

    return-void
.end method

.method public setScreen_ip(Ljava/lang/String;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/autoxing/delivery/bean/NetConfig;->screen_ip:Ljava/lang/String;

    return-void
.end method

.method public setServer_mode(I)V
    .locals 0

    .line 46
    iput p1, p0, Lcom/autoxing/delivery/bean/NetConfig;->server_mode:I

    return-void
.end method

.method public setUrl_config(Lcom/autoxing/delivery/bean/NetConfig$UrlConfigBean;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/autoxing/delivery/bean/NetConfig;->url_config:Lcom/autoxing/delivery/bean/NetConfig$UrlConfigBean;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 120
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "NetConfig{screen_ip=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/autoxing/delivery/bean/NetConfig;->screen_ip:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', screen_bright="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/autoxing/delivery/bean/NetConfig;->screen_bright:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", net_mode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/autoxing/delivery/bean/NetConfig;->net_mode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", offline_mode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/autoxing/delivery/bean/NetConfig;->offline_mode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", server_mode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/autoxing/delivery/bean/NetConfig;->server_mode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", url_config="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/autoxing/delivery/bean/NetConfig;->url_config:Lcom/autoxing/delivery/bean/NetConfig$UrlConfigBean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", h5_ip=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/autoxing/delivery/bean/NetConfig;->h5_ip:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
