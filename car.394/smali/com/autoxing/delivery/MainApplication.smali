.class public Lcom/autoxing/delivery/MainApplication;
.super Landroid/app/Application;
.source "MainApplication.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/autoxing/delivery/MainApplication$ActivityLifecycleCallbacksImpl;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MainApplication"


# instance fields
.field private lastMainActivityInstance:Landroid/app/Activity;


# direct methods
.method static bridge synthetic -$$Nest$fgetlastMainActivityInstance(Lcom/autoxing/delivery/MainApplication;)Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Lcom/autoxing/delivery/MainApplication;->lastMainActivityInstance:Landroid/app/Activity;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputlastMainActivityInstance(Lcom/autoxing/delivery/MainApplication;Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lcom/autoxing/delivery/MainApplication;->lastMainActivityInstance:Landroid/app/Activity;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 6

    .line 20
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 21
    sget-object v0, Lcom/autoxing/delivery/constant/Configs;->LOG_PATH:Ljava/lang/String;

    invoke-static {v0}, Lcom/autoai/research/atools/LogUtils;->setLogPath(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 22
    invoke-static {v0, v0}, Lcom/autoai/research/atools/LogUtils;->setShowLog(ZZ)V

    .line 23
    sget-object v1, Lcom/autoxing/delivery/constant/Configs;->CRASH_LOG_PATH:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v2, v1}, Lcom/autoai/research/atools/LogUtils;->registerUncaughtExceptionHandler(Lcom/autoai/research/atools/LogUtils$ExceptionHandlerListener;Ljava/lang/String;)V

    .line 25
    invoke-static {}, Lcom/autoxing/delivery/util/Utils;->isOldRobot()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "chmod ugo+rwx /sys/kernel/debug/tracing"

    .line 27
    invoke-static {v1}, Lcom/autoxing/delivery/controller/AndroidSDKAdapter;->exec(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    aput-object v3, v4, v0

    const-string v0, "%s excute result = %s"

    .line 28
    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "MainApplication"

    invoke-static {v1, v0}, Lcom/autoai/research/atools/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    :cond_0
    invoke-static {p0}, Lcom/autoxing/delivery/controller/LogController;->getInstance(Landroid/content/Context;)Lcom/autoxing/delivery/controller/LogController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autoxing/delivery/controller/LogController;->start()V

    .line 31
    new-instance v0, Lcom/autoxing/delivery/MainApplication$ActivityLifecycleCallbacksImpl;

    invoke-direct {v0, p0, v2}, Lcom/autoxing/delivery/MainApplication$ActivityLifecycleCallbacksImpl;-><init>(Lcom/autoxing/delivery/MainApplication;Lcom/autoxing/delivery/MainApplication$ActivityLifecycleCallbacksImpl-IA;)V

    invoke-virtual {p0, v0}, Lcom/autoxing/delivery/MainApplication;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    return-void
.end method
