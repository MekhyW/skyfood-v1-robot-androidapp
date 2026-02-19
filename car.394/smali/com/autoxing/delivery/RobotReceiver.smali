.class public Lcom/autoxing/delivery/RobotReceiver;
.super Landroid/content/BroadcastReceiver;
.source "RobotReceiver.java"


# static fields
.field private static final ACTION_BOOT:Ljava/lang/String; = "android.intent.action.BOOT_COMPLETED"

.field private static final TAG:Ljava/lang/String; = "BootBroadcastReceiver"


# instance fields
.field private executorService:Ljava/util/concurrent/ExecutorService;

.field private wifiAutoConnectTask:Lcom/autoxing/delivery/task/WifiAutoConnectTask;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 20
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onReceive=>"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BootBroadcastReceiver"

    invoke-static {v1, v0}, Lcom/autoai/research/atools/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    const-string v0, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 23
    iget-object p2, p0, Lcom/autoxing/delivery/RobotReceiver;->wifiAutoConnectTask:Lcom/autoxing/delivery/task/WifiAutoConnectTask;

    if-nez p2, :cond_0

    .line 24
    new-instance p2, Lcom/autoxing/delivery/task/WifiAutoConnectTask;

    invoke-direct {p2, p1}, Lcom/autoxing/delivery/task/WifiAutoConnectTask;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/autoxing/delivery/RobotReceiver;->wifiAutoConnectTask:Lcom/autoxing/delivery/task/WifiAutoConnectTask;

    .line 27
    :cond_0
    iget-object p1, p0, Lcom/autoxing/delivery/RobotReceiver;->wifiAutoConnectTask:Lcom/autoxing/delivery/task/WifiAutoConnectTask;

    invoke-virtual {p1}, Lcom/autoxing/delivery/task/WifiAutoConnectTask;->isRunning()Z

    move-result p1

    if-nez p1, :cond_2

    .line 28
    iget-object p1, p0, Lcom/autoxing/delivery/RobotReceiver;->executorService:Ljava/util/concurrent/ExecutorService;

    if-nez p1, :cond_1

    .line 29
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    iput-object p1, p0, Lcom/autoxing/delivery/RobotReceiver;->executorService:Ljava/util/concurrent/ExecutorService;

    .line 31
    :cond_1
    iget-object p1, p0, Lcom/autoxing/delivery/RobotReceiver;->executorService:Ljava/util/concurrent/ExecutorService;

    iget-object p2, p0, Lcom/autoxing/delivery/RobotReceiver;->wifiAutoConnectTask:Lcom/autoxing/delivery/task/WifiAutoConnectTask;

    invoke-interface {p1, p2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    :cond_2
    return-void
.end method
