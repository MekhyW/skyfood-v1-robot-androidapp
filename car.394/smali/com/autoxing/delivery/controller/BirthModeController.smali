.class public Lcom/autoxing/delivery/controller/BirthModeController;
.super Ljava/lang/Object;
.source "BirthModeController.java"


# static fields
.field private static INSTANCE:Lcom/autoxing/delivery/controller/BirthModeController;


# instance fields
.field private executorService:Ljava/util/concurrent/ExecutorService;

.field private mBirthManager:Lcom/autoxing/delivery/websocket/MyWSManager;

.field private mFilePath:Ljava/io/File;

.field private mOnTransFileListener:Lcom/autoxing/delivery/websocket/TransFileTask$OnTransFileListener;

.field private mRobotId:Ljava/lang/String;

.field private myWSListener:Lcom/autoxing/delivery/websocket/MyWSListener;


# direct methods
.method static bridge synthetic -$$Nest$fgetexecutorService(Lcom/autoxing/delivery/controller/BirthModeController;)Ljava/util/concurrent/ExecutorService;
    .locals 0

    iget-object p0, p0, Lcom/autoxing/delivery/controller/BirthModeController;->executorService:Ljava/util/concurrent/ExecutorService;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmBirthManager(Lcom/autoxing/delivery/controller/BirthModeController;)Lcom/autoxing/delivery/websocket/MyWSManager;
    .locals 0

    iget-object p0, p0, Lcom/autoxing/delivery/controller/BirthModeController;->mBirthManager:Lcom/autoxing/delivery/websocket/MyWSManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmFilePath(Lcom/autoxing/delivery/controller/BirthModeController;)Ljava/io/File;
    .locals 0

    iget-object p0, p0, Lcom/autoxing/delivery/controller/BirthModeController;->mFilePath:Ljava/io/File;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmOnTransFileListener(Lcom/autoxing/delivery/controller/BirthModeController;)Lcom/autoxing/delivery/websocket/TransFileTask$OnTransFileListener;
    .locals 0

    iget-object p0, p0, Lcom/autoxing/delivery/controller/BirthModeController;->mOnTransFileListener:Lcom/autoxing/delivery/websocket/TransFileTask$OnTransFileListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputexecutorService(Lcom/autoxing/delivery/controller/BirthModeController;Ljava/util/concurrent/ExecutorService;)V
    .locals 0

    iput-object p1, p0, Lcom/autoxing/delivery/controller/BirthModeController;->executorService:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Lcom/autoxing/delivery/controller/BirthModeController$1;

    invoke-direct {v0, p0}, Lcom/autoxing/delivery/controller/BirthModeController$1;-><init>(Lcom/autoxing/delivery/controller/BirthModeController;)V

    iput-object v0, p0, Lcom/autoxing/delivery/controller/BirthModeController;->mOnTransFileListener:Lcom/autoxing/delivery/websocket/TransFileTask$OnTransFileListener;

    .line 64
    new-instance v0, Lcom/autoxing/delivery/controller/BirthModeController$2;

    invoke-direct {v0, p0}, Lcom/autoxing/delivery/controller/BirthModeController$2;-><init>(Lcom/autoxing/delivery/controller/BirthModeController;)V

    iput-object v0, p0, Lcom/autoxing/delivery/controller/BirthModeController;->myWSListener:Lcom/autoxing/delivery/websocket/MyWSListener;

    return-void
.end method

.method public static getInstance()Lcom/autoxing/delivery/controller/BirthModeController;
    .locals 2

    .line 22
    sget-object v0, Lcom/autoxing/delivery/controller/BirthModeController;->INSTANCE:Lcom/autoxing/delivery/controller/BirthModeController;

    if-nez v0, :cond_1

    .line 23
    const-class v0, Lcom/autoxing/delivery/controller/BirthModeController;

    monitor-enter v0

    .line 24
    :try_start_0
    sget-object v1, Lcom/autoxing/delivery/controller/BirthModeController;->INSTANCE:Lcom/autoxing/delivery/controller/BirthModeController;

    if-nez v1, :cond_0

    .line 25
    new-instance v1, Lcom/autoxing/delivery/controller/BirthModeController;

    invoke-direct {v1}, Lcom/autoxing/delivery/controller/BirthModeController;-><init>()V

    sput-object v1, Lcom/autoxing/delivery/controller/BirthModeController;->INSTANCE:Lcom/autoxing/delivery/controller/BirthModeController;

    .line 27
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 29
    :cond_1
    :goto_0
    sget-object v0, Lcom/autoxing/delivery/controller/BirthModeController;->INSTANCE:Lcom/autoxing/delivery/controller/BirthModeController;

    return-object v0
.end method


# virtual methods
.method public setRobotId(Ljava/lang/String;)V
    .locals 0

    .line 104
    iput-object p1, p0, Lcom/autoxing/delivery/controller/BirthModeController;->mRobotId:Ljava/lang/String;

    return-void
.end method

.method public start(Ljava/lang/String;)V
    .locals 4

    .line 80
    iget-object v0, p0, Lcom/autoxing/delivery/controller/BirthModeController;->mRobotId:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "88"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 81
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/autoxing/delivery/constant/Configs;->videoPath:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const-string p1, "v%s.mp4"

    invoke-static {p1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/autoxing/delivery/controller/BirthModeController;->mFilePath:Ljava/io/File;

    .line 82
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 83
    new-instance p1, Lcom/autoxing/delivery/websocket/MyWSManager;

    invoke-direct {p1}, Lcom/autoxing/delivery/websocket/MyWSManager;-><init>()V

    iput-object p1, p0, Lcom/autoxing/delivery/controller/BirthModeController;->mBirthManager:Lcom/autoxing/delivery/websocket/MyWSManager;

    .line 84
    iget-object v0, p0, Lcom/autoxing/delivery/controller/BirthModeController;->myWSListener:Lcom/autoxing/delivery/websocket/MyWSListener;

    invoke-virtual {p1, v0}, Lcom/autoxing/delivery/websocket/MyWSManager;->setListener(Lcom/autoxing/delivery/websocket/MyWSListener;)V

    .line 85
    iget-object p1, p0, Lcom/autoxing/delivery/controller/BirthModeController;->mBirthManager:Lcom/autoxing/delivery/websocket/MyWSManager;

    invoke-virtual {p1}, Lcom/autoxing/delivery/websocket/MyWSManager;->start()V

    :cond_0
    return-void
.end method

.method public startLocal(Ljava/lang/String;)V
    .locals 2

    .line 108
    iget-object v0, p0, Lcom/autoxing/delivery/controller/BirthModeController;->mRobotId:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "88"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 109
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/autoxing/delivery/controller/BirthModeController;->mFilePath:Ljava/io/File;

    .line 110
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 111
    new-instance p1, Lcom/autoxing/delivery/websocket/MyWSManager;

    invoke-direct {p1}, Lcom/autoxing/delivery/websocket/MyWSManager;-><init>()V

    iput-object p1, p0, Lcom/autoxing/delivery/controller/BirthModeController;->mBirthManager:Lcom/autoxing/delivery/websocket/MyWSManager;

    .line 112
    iget-object v0, p0, Lcom/autoxing/delivery/controller/BirthModeController;->myWSListener:Lcom/autoxing/delivery/websocket/MyWSListener;

    invoke-virtual {p1, v0}, Lcom/autoxing/delivery/websocket/MyWSManager;->setListener(Lcom/autoxing/delivery/websocket/MyWSListener;)V

    .line 113
    iget-object p1, p0, Lcom/autoxing/delivery/controller/BirthModeController;->mBirthManager:Lcom/autoxing/delivery/websocket/MyWSManager;

    invoke-virtual {p1}, Lcom/autoxing/delivery/websocket/MyWSManager;->start()V

    :cond_0
    return-void
.end method

.method public stop()V
    .locals 2

    .line 91
    iget-object v0, p0, Lcom/autoxing/delivery/controller/BirthModeController;->mBirthManager:Lcom/autoxing/delivery/websocket/MyWSManager;

    if-eqz v0, :cond_0

    .line 92
    invoke-static {}, Lcom/autoxing/delivery/websocket/DataHandler;->stopTemp()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autoxing/delivery/websocket/MyWSManager;->sendData(Ljava/lang/String;)V

    const-wide/16 v0, 0xbb8

    .line 94
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 96
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 98
    :goto_0
    iget-object v0, p0, Lcom/autoxing/delivery/controller/BirthModeController;->mBirthManager:Lcom/autoxing/delivery/websocket/MyWSManager;

    invoke-virtual {v0}, Lcom/autoxing/delivery/websocket/MyWSManager;->stop()V

    const/4 v0, 0x0

    .line 99
    iput-object v0, p0, Lcom/autoxing/delivery/controller/BirthModeController;->mBirthManager:Lcom/autoxing/delivery/websocket/MyWSManager;

    :cond_0
    return-void
.end method
