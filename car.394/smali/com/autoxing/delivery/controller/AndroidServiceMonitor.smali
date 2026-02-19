.class public Lcom/autoxing/delivery/controller/AndroidServiceMonitor;
.super Ljava/lang/Object;
.source "AndroidServiceMonitor.java"


# static fields
.field private static INSTANCE:Lcom/autoxing/delivery/controller/AndroidServiceMonitor; = null

.field private static final TAG:Ljava/lang/String; = "AndroidServiceMonitor"

.field private static final mainActivityName:Ljava/lang/String; = "com.autoxing.android.service.MainActivity"

.field private static final packName:Ljava/lang/String; = "com.autoxing.android.service"


# instance fields
.field private mContext:Landroid/content/Context;

.field private timer:Ljava/util/Timer;

.field private timerTask:Ljava/util/TimerTask;


# direct methods
.method static bridge synthetic -$$Nest$mlaunchAndroidService(Lcom/autoxing/delivery/controller/AndroidServiceMonitor;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/autoxing/delivery/controller/AndroidServiceMonitor;->launchAndroidService(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 40
    iput-object v0, p0, Lcom/autoxing/delivery/controller/AndroidServiceMonitor;->timer:Ljava/util/Timer;

    .line 41
    iput-object v0, p0, Lcom/autoxing/delivery/controller/AndroidServiceMonitor;->timerTask:Ljava/util/TimerTask;

    .line 18
    iput-object p1, p0, Lcom/autoxing/delivery/controller/AndroidServiceMonitor;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/autoxing/delivery/controller/AndroidServiceMonitor;
    .locals 2

    .line 21
    sget-object v0, Lcom/autoxing/delivery/controller/AndroidServiceMonitor;->INSTANCE:Lcom/autoxing/delivery/controller/AndroidServiceMonitor;

    if-nez v0, :cond_1

    .line 22
    const-class v0, Lcom/autoxing/delivery/controller/AndroidServiceMonitor;

    monitor-enter v0

    .line 23
    :try_start_0
    sget-object v1, Lcom/autoxing/delivery/controller/AndroidServiceMonitor;->INSTANCE:Lcom/autoxing/delivery/controller/AndroidServiceMonitor;

    if-nez v1, :cond_0

    .line 24
    new-instance v1, Lcom/autoxing/delivery/controller/AndroidServiceMonitor;

    invoke-direct {v1, p0}, Lcom/autoxing/delivery/controller/AndroidServiceMonitor;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/autoxing/delivery/controller/AndroidServiceMonitor;->INSTANCE:Lcom/autoxing/delivery/controller/AndroidServiceMonitor;

    .line 26
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 28
    :cond_1
    :goto_0
    sget-object p0, Lcom/autoxing/delivery/controller/AndroidServiceMonitor;->INSTANCE:Lcom/autoxing/delivery/controller/AndroidServiceMonitor;

    return-object p0
.end method

.method private launchAndroidService(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    :try_start_0
    const-string v0, "AndroidServiceMonitor"

    const-string v1, "launchAndroidService"

    .line 79
    invoke-static {v0, v1}, Lcom/autoai/research/atools/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const/high16 v1, 0x10000000

    .line 81
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 82
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 83
    iget-object p1, p0, Lcom/autoxing/delivery/controller/AndroidServiceMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 85
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private startHeart()V
    .locals 7

    const-string v0, "AndroidServiceMonitor"

    const-string v1, "startHeart"

    .line 43
    invoke-static {v0, v1}, Lcom/autoai/research/atools/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    new-instance v0, Lcom/autoxing/delivery/controller/AndroidServiceMonitor$1;

    invoke-direct {v0, p0}, Lcom/autoxing/delivery/controller/AndroidServiceMonitor$1;-><init>(Lcom/autoxing/delivery/controller/AndroidServiceMonitor;)V

    iput-object v0, p0, Lcom/autoxing/delivery/controller/AndroidServiceMonitor;->timerTask:Ljava/util/TimerTask;

    .line 52
    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    iput-object v1, p0, Lcom/autoxing/delivery/controller/AndroidServiceMonitor;->timer:Ljava/util/Timer;

    .line 53
    iget-object v2, p0, Lcom/autoxing/delivery/controller/AndroidServiceMonitor;->timerTask:Ljava/util/TimerTask;

    const-wide/16 v3, 0x2710

    const-wide/16 v5, 0x2710

    invoke-virtual/range {v1 .. v6}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    return-void
.end method

.method private stopHeart()V
    .locals 2

    const-string v0, "AndroidServiceMonitor"

    const-string v1, "stopHeart"

    .line 57
    invoke-static {v0, v1}, Lcom/autoai/research/atools/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 59
    :try_start_0
    iget-object v1, p0, Lcom/autoxing/delivery/controller/AndroidServiceMonitor;->timerTask:Ljava/util/TimerTask;

    if-eqz v1, :cond_0

    .line 60
    invoke-virtual {v1}, Ljava/util/TimerTask;->cancel()Z

    .line 61
    iput-object v0, p0, Lcom/autoxing/delivery/controller/AndroidServiceMonitor;->timerTask:Ljava/util/TimerTask;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 64
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 68
    :cond_0
    :goto_0
    :try_start_1
    iget-object v1, p0, Lcom/autoxing/delivery/controller/AndroidServiceMonitor;->timer:Ljava/util/Timer;

    if-eqz v1, :cond_1

    .line 69
    invoke-virtual {v1}, Ljava/util/Timer;->cancel()V

    .line 70
    iput-object v0, p0, Lcom/autoxing/delivery/controller/AndroidServiceMonitor;->timer:Ljava/util/Timer;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 73
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_1
    return-void
.end method


# virtual methods
.method public start()V
    .locals 0

    .line 32
    invoke-direct {p0}, Lcom/autoxing/delivery/controller/AndroidServiceMonitor;->startHeart()V

    return-void
.end method

.method public stop()V
    .locals 0

    .line 36
    invoke-direct {p0}, Lcom/autoxing/delivery/controller/AndroidServiceMonitor;->stopHeart()V

    return-void
.end method
