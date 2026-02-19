.class public Lcom/autoxing/delivery/sdk/RegApi;
.super Ljava/lang/Object;
.source "RegApi.java"

# interfaces
.implements Lcom/autoxing/delivery/sdk/SdkInterface;


# static fields
.field private static final TAG:Ljava/lang/String; = "RegApi"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public exec(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    const-string v0, "%s=%s"

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const-string v4, "execCmd = %s"

    .line 18
    invoke-static {v4, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "RegApi"

    invoke-static {v4, v2}, Lcom/autoai/research/atools/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, ""

    const/4 v5, 0x2

    .line 21
    :try_start_0
    invoke-static {}, Lcom/reglink/common/ReglinkNativeService;->getInstance()Lcom/reglink/common/ReglinkNativeService;

    move-result-object v6

    invoke-virtual {v6, p1}, Lcom/reglink/common/ReglinkNativeService;->exec(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    new-array v6, v5, [Ljava/lang/Object;

    aput-object p1, v6, v3

    aput-object v2, v6, v1

    .line 22
    invoke-static {v0, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/autoai/research/atools/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v6

    .line 24
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p1, v5, v3

    aput-object v6, v5, v1

    .line 25
    invoke-static {v0, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Lcom/autoai/research/atools/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-object v2
.end method

.method public getAudioVolume(Landroid/content/Context;)[I
    .locals 4

    .line 43
    :try_start_0
    invoke-static {}, Lcom/reglink/common/ServiceManager;->getDroidService()Lcom/reglink/services/IDroidService;

    move-result-object p1

    const-string v0, "Media"

    .line 44
    invoke-interface {p1, v0}, Lcom/reglink/services/IDroidService;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/reglink/services/IMediaService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/reglink/services/IMediaService;

    move-result-object p1

    const/4 v0, 0x3

    new-array v0, v0, [I

    .line 45
    invoke-interface {p1}, Lcom/reglink/services/IMediaService;->getVolume()I

    move-result v1

    const/4 v2, 0x0

    aput v1, v0, v2

    invoke-interface {p1}, Lcom/reglink/services/IMediaService;->getVolumeMax()I

    move-result v1

    const/4 v3, 0x1

    aput v1, v0, v3

    invoke-interface {p1}, Lcom/reglink/services/IMediaService;->isMuted()Z

    move-result p1

    if-eqz p1, :cond_0

    move v2, v3

    :cond_0
    const/4 p1, 0x2

    aput v2, v0, p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p1

    .line 47
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, 0x0

    return-object p1
.end method

.method public onReboot()V
    .locals 0

    return-void
.end method

.method public sendKeepCameraPowerMsg()V
    .locals 2

    .line 69
    :try_start_0
    invoke-static {}, Lcom/reglink/common/ServiceManager;->getDroidService()Lcom/reglink/services/IDroidService;

    move-result-object v0

    const-string v1, "Message"

    .line 70
    invoke-interface {v0, v1}, Lcom/reglink/services/IDroidService;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/reglink/services/IMessageService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/reglink/services/IMessageService;

    move-result-object v0

    const/16 v1, 0x1b

    .line 71
    invoke-static {v1}, Lcom/reglink/parcel/Message;->obtain(I)Lcom/reglink/parcel/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/reglink/services/IMessageService;->sendMessage(Lcom/reglink/parcel/Message;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 73
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public setAudioVolume(Landroid/content/Context;I)V
    .locals 1

    .line 55
    :try_start_0
    invoke-static {}, Lcom/reglink/common/ServiceManager;->getDroidService()Lcom/reglink/services/IDroidService;

    move-result-object p1

    const-string v0, "Media"

    .line 56
    invoke-interface {p1, v0}, Lcom/reglink/services/IDroidService;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/reglink/services/IMediaService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/reglink/services/IMediaService;

    move-result-object p1

    .line 57
    invoke-interface {p1}, Lcom/reglink/services/IMediaService;->isMuted()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 58
    invoke-interface {p1, v0}, Lcom/reglink/services/IMediaService;->mute(Z)V

    .line 60
    :cond_0
    invoke-interface {p1, p2}, Lcom/reglink/services/IMediaService;->setVolume(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 62
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public setNetworkMode(Z)V
    .locals 0

    return-void
.end method

.method public writeTo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 33
    :try_start_0
    invoke-static {}, Lcom/reglink/common/ReglinkNativeService;->getInstance()Lcom/reglink/common/ReglinkNativeService;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/reglink/common/ReglinkNativeService;->writeTo(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    invoke-static {}, Lcom/reglink/common/ReglinkNativeService;->getInstance()Lcom/reglink/common/ReglinkNativeService;

    move-result-object p1

    invoke-virtual {p1}, Lcom/reglink/common/ReglinkNativeService;->fsync()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 36
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
