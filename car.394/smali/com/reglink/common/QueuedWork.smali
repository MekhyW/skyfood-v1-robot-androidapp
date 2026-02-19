.class public Lcom/reglink/common/QueuedWork;
.super Ljava/lang/Object;
.source "QueuedWork.java"


# static fields
.field private static final sPendingWorkFinishers:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private static sSingleThreadExecutor:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 15
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    sput-object v0, Lcom/reglink/common/QueuedWork;->sPendingWorkFinishers:Ljava/util/concurrent/ConcurrentLinkedQueue;

    const/4 v0, 0x0

    .line 18
    sput-object v0, Lcom/reglink/common/QueuedWork;->sSingleThreadExecutor:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static add(Ljava/lang/Runnable;)V
    .locals 1

    .line 47
    sget-object v0, Lcom/reglink/common/QueuedWork;->sPendingWorkFinishers:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static hasPendingWork()Z
    .locals 1

    .line 75
    sget-object v0, Lcom/reglink/common/QueuedWork;->sPendingWorkFinishers:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static remove(Ljava/lang/Runnable;)V
    .locals 1

    .line 51
    sget-object v0, Lcom/reglink/common/QueuedWork;->sPendingWorkFinishers:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public static singleThreadExecutor()Ljava/util/concurrent/ExecutorService;
    .locals 2

    .line 25
    const-class v0, Lcom/reglink/common/QueuedWork;

    monitor-enter v0

    .line 26
    :try_start_0
    sget-object v1, Lcom/reglink/common/QueuedWork;->sSingleThreadExecutor:Ljava/util/concurrent/ExecutorService;

    if-nez v1, :cond_0

    .line 28
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    sput-object v1, Lcom/reglink/common/QueuedWork;->sSingleThreadExecutor:Ljava/util/concurrent/ExecutorService;

    .line 30
    :cond_0
    sget-object v1, Lcom/reglink/common/QueuedWork;->sSingleThreadExecutor:Ljava/util/concurrent/ExecutorService;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 31
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static waitToFinish()V
    .locals 1

    .line 64
    :goto_0
    sget-object v0, Lcom/reglink/common/QueuedWork;->sPendingWorkFinishers:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 65
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :cond_0
    return-void
.end method
