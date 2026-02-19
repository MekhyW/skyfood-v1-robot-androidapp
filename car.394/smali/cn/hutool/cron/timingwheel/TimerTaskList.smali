.class public Lcn/hutool/cron/timingwheel/TimerTaskList;
.super Ljava/lang/Object;
.source "TimerTaskList.java"

# interfaces
.implements Ljava/util/concurrent/Delayed;


# instance fields
.field private final expire:Ljava/util/concurrent/atomic/AtomicLong;

.field private final root:Lcn/hutool/cron/timingwheel/TimerTask;


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, -0x1

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lcn/hutool/cron/timingwheel/TimerTaskList;->expire:Ljava/util/concurrent/atomic/AtomicLong;

    .line 31
    new-instance v0, Lcn/hutool/cron/timingwheel/TimerTask;

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, Lcn/hutool/cron/timingwheel/TimerTask;-><init>(Ljava/lang/Runnable;J)V

    iput-object v0, p0, Lcn/hutool/cron/timingwheel/TimerTaskList;->root:Lcn/hutool/cron/timingwheel/TimerTask;

    .line 32
    iput-object v0, v0, Lcn/hutool/cron/timingwheel/TimerTask;->prev:Lcn/hutool/cron/timingwheel/TimerTask;

    .line 33
    iput-object v0, v0, Lcn/hutool/cron/timingwheel/TimerTask;->next:Lcn/hutool/cron/timingwheel/TimerTask;

    return-void
.end method


# virtual methods
.method public addTask(Lcn/hutool/cron/timingwheel/TimerTask;)V
    .locals 2

    .line 60
    monitor-enter p0

    .line 61
    :try_start_0
    iget-object v0, p1, Lcn/hutool/cron/timingwheel/TimerTask;->timerTaskList:Lcn/hutool/cron/timingwheel/TimerTaskList;

    if-nez v0, :cond_0

    .line 62
    iput-object p0, p1, Lcn/hutool/cron/timingwheel/TimerTask;->timerTaskList:Lcn/hutool/cron/timingwheel/TimerTaskList;

    .line 63
    iget-object v0, p0, Lcn/hutool/cron/timingwheel/TimerTaskList;->root:Lcn/hutool/cron/timingwheel/TimerTask;

    iget-object v0, v0, Lcn/hutool/cron/timingwheel/TimerTask;->prev:Lcn/hutool/cron/timingwheel/TimerTask;

    .line 64
    iget-object v1, p0, Lcn/hutool/cron/timingwheel/TimerTaskList;->root:Lcn/hutool/cron/timingwheel/TimerTask;

    iput-object v1, p1, Lcn/hutool/cron/timingwheel/TimerTask;->next:Lcn/hutool/cron/timingwheel/TimerTask;

    .line 65
    iput-object v0, p1, Lcn/hutool/cron/timingwheel/TimerTask;->prev:Lcn/hutool/cron/timingwheel/TimerTask;

    .line 66
    iput-object p1, v0, Lcn/hutool/cron/timingwheel/TimerTask;->next:Lcn/hutool/cron/timingwheel/TimerTask;

    .line 67
    iget-object v0, p0, Lcn/hutool/cron/timingwheel/TimerTaskList;->root:Lcn/hutool/cron/timingwheel/TimerTask;

    iput-object p1, v0, Lcn/hutool/cron/timingwheel/TimerTask;->prev:Lcn/hutool/cron/timingwheel/TimerTask;

    .line 69
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 13
    check-cast p1, Ljava/util/concurrent/Delayed;

    invoke-virtual {p0, p1}, Lcn/hutool/cron/timingwheel/TimerTaskList;->compareTo(Ljava/util/concurrent/Delayed;)I

    move-result p1

    return p1
.end method

.method public compareTo(Ljava/util/concurrent/Delayed;)I
    .locals 4

    .line 111
    instance-of v0, p1, Lcn/hutool/cron/timingwheel/TimerTaskList;

    if-eqz v0, :cond_0

    .line 112
    iget-object v0, p0, Lcn/hutool/cron/timingwheel/TimerTaskList;->expire:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    check-cast p1, Lcn/hutool/cron/timingwheel/TimerTaskList;

    iget-object p1, p1, Lcn/hutool/cron/timingwheel/TimerTaskList;->expire:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Long;->compare(JJ)I

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public declared-synchronized flush(Ljava/util/function/Consumer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Lcn/hutool/cron/timingwheel/TimerTask;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    .line 95
    :try_start_0
    iget-object v0, p0, Lcn/hutool/cron/timingwheel/TimerTaskList;->root:Lcn/hutool/cron/timingwheel/TimerTask;

    iget-object v0, v0, Lcn/hutool/cron/timingwheel/TimerTask;->next:Lcn/hutool/cron/timingwheel/TimerTask;

    .line 96
    :goto_0
    iget-object v1, p0, Lcn/hutool/cron/timingwheel/TimerTaskList;->root:Lcn/hutool/cron/timingwheel/TimerTask;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 97
    invoke-virtual {p0, v0}, Lcn/hutool/cron/timingwheel/TimerTaskList;->removeTask(Lcn/hutool/cron/timingwheel/TimerTask;)V

    .line 98
    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 99
    iget-object v0, p0, Lcn/hutool/cron/timingwheel/TimerTaskList;->root:Lcn/hutool/cron/timingwheel/TimerTask;

    iget-object v0, v0, Lcn/hutool/cron/timingwheel/TimerTask;->next:Lcn/hutool/cron/timingwheel/TimerTask;

    goto :goto_0

    .line 101
    :cond_0
    iget-object p1, p0, Lcn/hutool/cron/timingwheel/TimerTaskList;->expire:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v0, -0x1

    invoke-virtual {p1, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 102
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public getDelay(Ljava/util/concurrent/TimeUnit;)J
    .locals 4

    .line 106
    iget-object v0, p0, Lcn/hutool/cron/timingwheel/TimerTaskList;->expire:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v0, v2

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public getExpire()J
    .locals 2

    .line 51
    iget-object v0, p0, Lcn/hutool/cron/timingwheel/TimerTaskList;->expire:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    return-wide v0
.end method

.method public removeTask(Lcn/hutool/cron/timingwheel/TimerTask;)V
    .locals 2

    .line 78
    monitor-enter p0

    .line 79
    :try_start_0
    iget-object v0, p1, Lcn/hutool/cron/timingwheel/TimerTask;->timerTaskList:Lcn/hutool/cron/timingwheel/TimerTaskList;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p1, Lcn/hutool/cron/timingwheel/TimerTask;->next:Lcn/hutool/cron/timingwheel/TimerTask;

    iget-object v1, p1, Lcn/hutool/cron/timingwheel/TimerTask;->prev:Lcn/hutool/cron/timingwheel/TimerTask;

    iput-object v1, v0, Lcn/hutool/cron/timingwheel/TimerTask;->prev:Lcn/hutool/cron/timingwheel/TimerTask;

    .line 81
    iget-object v0, p1, Lcn/hutool/cron/timingwheel/TimerTask;->prev:Lcn/hutool/cron/timingwheel/TimerTask;

    iget-object v1, p1, Lcn/hutool/cron/timingwheel/TimerTask;->next:Lcn/hutool/cron/timingwheel/TimerTask;

    iput-object v1, v0, Lcn/hutool/cron/timingwheel/TimerTask;->next:Lcn/hutool/cron/timingwheel/TimerTask;

    const/4 v0, 0x0

    .line 82
    iput-object v0, p1, Lcn/hutool/cron/timingwheel/TimerTask;->timerTaskList:Lcn/hutool/cron/timingwheel/TimerTaskList;

    .line 83
    iput-object v0, p1, Lcn/hutool/cron/timingwheel/TimerTask;->next:Lcn/hutool/cron/timingwheel/TimerTask;

    .line 84
    iput-object v0, p1, Lcn/hutool/cron/timingwheel/TimerTask;->prev:Lcn/hutool/cron/timingwheel/TimerTask;

    .line 86
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setExpiration(J)Z
    .locals 2

    .line 43
    iget-object v0, p0, Lcn/hutool/cron/timingwheel/TimerTaskList;->expire:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/atomic/AtomicLong;->getAndSet(J)J

    move-result-wide v0

    cmp-long p1, v0, p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
