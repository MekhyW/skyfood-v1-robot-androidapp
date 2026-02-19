.class public Lcom/reglink/common/RlThreadHandler;
.super Landroid/os/HandlerThread;
.source "RlThreadHandler.java"


# static fields
.field private static sharedInstance:Lcom/reglink/common/RlThreadHandler;

.field private static staticHandler:Landroid/os/Handler;


# instance fields
.field private callback:Landroid/os/Handler$Callback;

.field private handler_:Landroid/os/Handler;


# direct methods
.method private constructor <init>()V
    .locals 1

    const-string v0, "UiWorkHandler"

    .line 19
    invoke-direct {p0, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static declared-synchronized getSharedHandler()Landroid/os/Handler;
    .locals 3

    const-class v0, Lcom/reglink/common/RlThreadHandler;

    monitor-enter v0

    .line 23
    :try_start_0
    sget-object v1, Lcom/reglink/common/RlThreadHandler;->staticHandler:Landroid/os/Handler;

    if-nez v1, :cond_1

    .line 24
    sget-object v1, Lcom/reglink/common/RlThreadHandler;->sharedInstance:Lcom/reglink/common/RlThreadHandler;

    if-nez v1, :cond_0

    .line 25
    new-instance v1, Lcom/reglink/common/RlThreadHandler;

    invoke-direct {v1}, Lcom/reglink/common/RlThreadHandler;-><init>()V

    sput-object v1, Lcom/reglink/common/RlThreadHandler;->sharedInstance:Lcom/reglink/common/RlThreadHandler;

    .line 26
    invoke-virtual {v1}, Lcom/reglink/common/RlThreadHandler;->start()V

    .line 28
    :cond_0
    new-instance v1, Landroid/os/Handler;

    sget-object v2, Lcom/reglink/common/RlThreadHandler;->sharedInstance:Lcom/reglink/common/RlThreadHandler;

    invoke-virtual {v2}, Lcom/reglink/common/RlThreadHandler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v1, Lcom/reglink/common/RlThreadHandler;->staticHandler:Landroid/os/Handler;

    .line 30
    :cond_1
    sget-object v1, Lcom/reglink/common/RlThreadHandler;->staticHandler:Landroid/os/Handler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized getSharedLooper()Landroid/os/Looper;
    .locals 2

    const-class v0, Lcom/reglink/common/RlThreadHandler;

    monitor-enter v0

    .line 33
    :try_start_0
    invoke-static {}, Lcom/reglink/common/RlThreadHandler;->getSharedHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static newHandler()Landroid/os/Handler;
    .locals 1

    const/4 v0, 0x0

    .line 58
    invoke-static {v0}, Lcom/reglink/common/RlThreadHandler;->newHandler(Landroid/os/Handler$Callback;)Landroid/os/Handler;

    move-result-object v0

    return-object v0
.end method

.method public static newHandler(Landroid/os/Handler$Callback;)Landroid/os/Handler;
    .locals 1

    .line 51
    new-instance v0, Lcom/reglink/common/RlThreadHandler;

    invoke-direct {v0}, Lcom/reglink/common/RlThreadHandler;-><init>()V

    .line 52
    invoke-virtual {v0, p0}, Lcom/reglink/common/RlThreadHandler;->setCallback(Landroid/os/Handler$Callback;)V

    .line 53
    invoke-virtual {v0}, Lcom/reglink/common/RlThreadHandler;->start()V

    .line 54
    invoke-virtual {v0}, Lcom/reglink/common/RlThreadHandler;->getHandler()Landroid/os/Handler;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getHandler()Landroid/os/Handler;
    .locals 3

    .line 37
    iget-object v0, p0, Lcom/reglink/common/RlThreadHandler;->handler_:Landroid/os/Handler;

    if-nez v0, :cond_1

    .line 38
    iget-object v0, p0, Lcom/reglink/common/RlThreadHandler;->callback:Landroid/os/Handler$Callback;

    if-eqz v0, :cond_0

    .line 39
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/reglink/common/RlThreadHandler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    iget-object v2, p0, Lcom/reglink/common/RlThreadHandler;->callback:Landroid/os/Handler$Callback;

    invoke-direct {v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/reglink/common/RlThreadHandler;->handler_:Landroid/os/Handler;

    goto :goto_0

    .line 41
    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/reglink/common/RlThreadHandler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/reglink/common/RlThreadHandler;->handler_:Landroid/os/Handler;

    .line 43
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/reglink/common/RlThreadHandler;->handler_:Landroid/os/Handler;

    return-object v0
.end method

.method setCallback(Landroid/os/Handler$Callback;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/reglink/common/RlThreadHandler;->callback:Landroid/os/Handler$Callback;

    return-void
.end method
