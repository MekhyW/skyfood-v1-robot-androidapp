.class public final Lcom/reglink/common/AutoResetEvent;
.super Ljava/lang/Object;
.source "AutoResetEvent.java"


# instance fields
.field private condition:Ljava/util/concurrent/locks/Condition;

.field private lock_:Ljava/util/concurrent/locks/Lock;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 12
    iput-object v0, p0, Lcom/reglink/common/AutoResetEvent;->lock_:Ljava/util/concurrent/locks/Lock;

    .line 13
    iput-object v0, p0, Lcom/reglink/common/AutoResetEvent;->condition:Ljava/util/concurrent/locks/Condition;

    .line 15
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/reglink/common/AutoResetEvent;->lock_:Ljava/util/concurrent/locks/Lock;

    .line 16
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    iput-object v0, p0, Lcom/reglink/common/AutoResetEvent;->condition:Ljava/util/concurrent/locks/Condition;

    return-void
.end method


# virtual methods
.method public await()Z
    .locals 2

    .line 20
    iget-object v0, p0, Lcom/reglink/common/AutoResetEvent;->lock_:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 23
    :try_start_0
    iget-object v0, p0, Lcom/reglink/common/AutoResetEvent;->condition:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 26
    :try_start_1
    invoke-static {v0}, Lcom/reglink/common/ExceptionHandler;->handleException(Ljava/lang/Exception;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v0, 0x0

    .line 30
    :goto_0
    iget-object v1, p0, Lcom/reglink/common/AutoResetEvent;->lock_:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return v0

    :goto_1
    iget-object v1, p0, Lcom/reglink/common/AutoResetEvent;->lock_:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public await(J)Z
    .locals 2

    .line 36
    iget-object v0, p0, Lcom/reglink/common/AutoResetEvent;->lock_:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 39
    :try_start_0
    iget-object v0, p0, Lcom/reglink/common/AutoResetEvent;->condition:Ljava/util/concurrent/locks/Condition;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, p1, p2, v1}, Ljava/util/concurrent/locks/Condition;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 42
    :try_start_1
    invoke-static {p1}, Lcom/reglink/common/ExceptionHandler;->handleException(Ljava/lang/Exception;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 p1, 0x0

    .line 46
    :goto_0
    iget-object p2, p0, Lcom/reglink/common/AutoResetEvent;->lock_:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return p1

    :goto_1
    iget-object p2, p0, Lcom/reglink/common/AutoResetEvent;->lock_:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method

.method public signal()V
    .locals 2

    .line 51
    iget-object v0, p0, Lcom/reglink/common/AutoResetEvent;->lock_:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 53
    :try_start_0
    iget-object v0, p0, Lcom/reglink/common/AutoResetEvent;->condition:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signal()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    iget-object v0, p0, Lcom/reglink/common/AutoResetEvent;->lock_:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/reglink/common/AutoResetEvent;->lock_:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public signalAll()V
    .locals 2

    .line 60
    iget-object v0, p0, Lcom/reglink/common/AutoResetEvent;->lock_:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 62
    :try_start_0
    iget-object v0, p0, Lcom/reglink/common/AutoResetEvent;->condition:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signal()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    iget-object v0, p0, Lcom/reglink/common/AutoResetEvent;->lock_:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/reglink/common/AutoResetEvent;->lock_:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method
