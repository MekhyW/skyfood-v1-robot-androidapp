.class public Lcom/autoxing/delivery/controller/WifiController;
.super Ljava/lang/Object;
.source "WifiController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/autoxing/delivery/controller/WifiController$NetCheckTask;
    }
.end annotation


# static fields
.field private static INSTANCE:Lcom/autoxing/delivery/controller/WifiController; = null

.field private static final TAG:Ljava/lang/String; = "WifiController"


# instance fields
.field private isPageFinished:Z

.field private isRunning:Z

.field private lastNetStatus:I

.field private mListener:Lcom/autoxing/delivery/controller/OnWifiListener;


# direct methods
.method static bridge synthetic -$$Nest$fgetisPageFinished(Lcom/autoxing/delivery/controller/WifiController;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/autoxing/delivery/controller/WifiController;->isPageFinished:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetisRunning(Lcom/autoxing/delivery/controller/WifiController;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/autoxing/delivery/controller/WifiController;->isRunning:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetlastNetStatus(Lcom/autoxing/delivery/controller/WifiController;)I
    .locals 0

    iget p0, p0, Lcom/autoxing/delivery/controller/WifiController;->lastNetStatus:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmListener(Lcom/autoxing/delivery/controller/WifiController;)Lcom/autoxing/delivery/controller/OnWifiListener;
    .locals 0

    iget-object p0, p0, Lcom/autoxing/delivery/controller/WifiController;->mListener:Lcom/autoxing/delivery/controller/OnWifiListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputlastNetStatus(Lcom/autoxing/delivery/controller/WifiController;I)V
    .locals 0

    iput p1, p0, Lcom/autoxing/delivery/controller/WifiController;->lastNetStatus:I

    return-void
.end method

.method static bridge synthetic -$$Nest$msleep(Lcom/autoxing/delivery/controller/WifiController;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/autoxing/delivery/controller/WifiController;->sleep(I)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 66
    iput p1, p0, Lcom/autoxing/delivery/controller/WifiController;->lastNetStatus:I

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/autoxing/delivery/controller/WifiController;
    .locals 2

    .line 20
    sget-object v0, Lcom/autoxing/delivery/controller/WifiController;->INSTANCE:Lcom/autoxing/delivery/controller/WifiController;

    if-nez v0, :cond_1

    .line 21
    const-class v0, Lcom/autoxing/delivery/controller/WifiController;

    monitor-enter v0

    .line 22
    :try_start_0
    sget-object v1, Lcom/autoxing/delivery/controller/WifiController;->INSTANCE:Lcom/autoxing/delivery/controller/WifiController;

    if-nez v1, :cond_0

    .line 23
    new-instance v1, Lcom/autoxing/delivery/controller/WifiController;

    invoke-direct {v1, p0}, Lcom/autoxing/delivery/controller/WifiController;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/autoxing/delivery/controller/WifiController;->INSTANCE:Lcom/autoxing/delivery/controller/WifiController;

    .line 25
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 27
    :cond_1
    :goto_0
    sget-object p0, Lcom/autoxing/delivery/controller/WifiController;->INSTANCE:Lcom/autoxing/delivery/controller/WifiController;

    return-object p0
.end method

.method private getSsidKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "Wifi_"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const-string p1, "%s%s"

    .line 49
    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private sleep(I)V
    .locals 2

    mul-int/lit16 p1, p1, 0x3e8

    int-to-long v0, p1

    .line 108
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 110
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method


# virtual methods
.method public forget(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string v1, "forget ssid = %s"

    .line 58
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "WifiController"

    invoke-static {v1, v0}, Lcom/autoai/research/atools/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "launcher/config.properties"

    .line 59
    invoke-direct {p0, p1}, Lcom/autoxing/delivery/controller/WifiController;->getSsidKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/autoxing/delivery/util/ConfigUtils;->remove(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public getNetStatus()I
    .locals 1

    .line 63
    iget v0, p0, Lcom/autoxing/delivery/controller/WifiController;->lastNetStatus:I

    return v0
.end method

.method public onPageFinish()V
    .locals 2

    const/4 v0, 0x1

    .line 73
    iput-boolean v0, p0, Lcom/autoxing/delivery/controller/WifiController;->isPageFinished:Z

    .line 74
    iget-object v0, p0, Lcom/autoxing/delivery/controller/WifiController;->mListener:Lcom/autoxing/delivery/controller/OnWifiListener;

    if-eqz v0, :cond_0

    .line 75
    iget v1, p0, Lcom/autoxing/delivery/controller/WifiController;->lastNetStatus:I

    invoke-interface {v0, v1}, Lcom/autoxing/delivery/controller/OnWifiListener;->onNetChanged(I)V

    :cond_0
    return-void
.end method

.method public onPageStart()V
    .locals 1

    const/4 v0, 0x0

    .line 69
    iput-boolean v0, p0, Lcom/autoxing/delivery/controller/WifiController;->isPageFinished:Z

    return-void
.end method

.method public start(Lcom/autoxing/delivery/controller/OnWifiListener;)V
    .locals 2

    const-string v0, "WifiController"

    const-string v1, "start"

    .line 31
    invoke-static {v0, v1}, Lcom/autoai/research/atools/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    iget-boolean v0, p0, Lcom/autoxing/delivery/controller/WifiController;->isRunning:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 35
    iput-boolean v0, p0, Lcom/autoxing/delivery/controller/WifiController;->isRunning:Z

    .line 36
    iput-object p1, p0, Lcom/autoxing/delivery/controller/WifiController;->mListener:Lcom/autoxing/delivery/controller/OnWifiListener;

    .line 37
    new-instance p1, Ljava/lang/Thread;

    new-instance v0, Lcom/autoxing/delivery/controller/WifiController$NetCheckTask;

    invoke-direct {v0, p0}, Lcom/autoxing/delivery/controller/WifiController$NetCheckTask;-><init>(Lcom/autoxing/delivery/controller/WifiController;)V

    const-string v1, "netCheckTask"

    invoke-direct {p1, v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public stop()V
    .locals 2

    const-string v0, "WifiController"

    const-string v1, "stop"

    .line 41
    invoke-static {v0, v1}, Lcom/autoai/research/atools/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    iget-boolean v0, p0, Lcom/autoxing/delivery/controller/WifiController;->isRunning:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 45
    iput-boolean v0, p0, Lcom/autoxing/delivery/controller/WifiController;->isRunning:Z

    return-void
.end method

.method public storeWifiInfo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    const-string v1, "storeWifiInfo ssid = %s,password=%s"

    .line 53
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "WifiController"

    invoke-static {v1, v0}, Lcom/autoai/research/atools/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "launcher/config.properties"

    .line 54
    invoke-direct {p0, p1}, Lcom/autoxing/delivery/controller/WifiController;->getSsidKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, p2}, Lcom/autoxing/delivery/util/ConfigUtils;->save(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
