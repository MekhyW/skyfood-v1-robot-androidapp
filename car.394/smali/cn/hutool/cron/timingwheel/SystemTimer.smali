.class public Lcn/hutool/cron/timingwheel/SystemTimer;
.super Ljava/lang/Object;
.source "SystemTimer.java"


# instance fields
.field private bossThreadPool:Ljava/util/concurrent/ExecutorService;

.field private final delayQueue:Ljava/util/concurrent/DelayQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/DelayQueue<",
            "Lcn/hutool/cron/timingwheel/TimerTaskList;",
            ">;"
        }
    .end annotation
.end field

.field private delayQueueTimeout:J

.field private volatile isRunning:Z

.field private final timeWheel:Lcn/hutool/cron/timingwheel/TimingWheel;


# direct methods
.method public static synthetic $r8$lambda$KLvOOfgHDCX98NnXtkMsV2RZLVo(Ljava/util/concurrent/DelayQueue;Ljava/util/concurrent/Delayed;)Z
    .locals 0

    invoke-virtual {p0, p1}, Ljava/util/concurrent/DelayQueue;->offer(Ljava/util/concurrent/Delayed;)Z

    move-result p0

    return p0
.end method

.method public constructor <init>()V
    .locals 5

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Ljava/util/concurrent/DelayQueue;

    invoke-direct {v0}, Ljava/util/concurrent/DelayQueue;-><init>()V

    iput-object v0, p0, Lcn/hutool/cron/timingwheel/SystemTimer;->delayQueue:Ljava/util/concurrent/DelayQueue;

    const-wide/16 v1, 0x64

    .line 28
    iput-wide v1, p0, Lcn/hutool/cron/timingwheel/SystemTimer;->delayQueueTimeout:J

    .line 40
    new-instance v1, Lcn/hutool/cron/timingwheel/TimingWheel;

    new-instance v2, Lcn/hutool/cron/timingwheel/SystemTimer$$ExternalSyntheticLambda1;

    invoke-direct {v2, v0}, Lcn/hutool/cron/timingwheel/SystemTimer$$ExternalSyntheticLambda1;-><init>(Ljava/util/concurrent/DelayQueue;)V

    const-wide/16 v3, 0x1

    const/16 v0, 0x14

    invoke-direct {v1, v3, v4, v0, v2}, Lcn/hutool/cron/timingwheel/TimingWheel;-><init>(JILjava/util/function/Consumer;)V

    iput-object v1, p0, Lcn/hutool/cron/timingwheel/SystemTimer;->timeWheel:Lcn/hutool/cron/timingwheel/TimingWheel;

    return-void
.end method

.method private advanceClock()Z
    .locals 5

    .line 97
    iget-boolean v0, p0, Lcn/hutool/cron/timingwheel/SystemTimer;->isRunning:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 101
    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcn/hutool/cron/timingwheel/SystemTimer;->poll()Lcn/hutool/cron/timingwheel/TimerTaskList;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 104
    iget-object v2, p0, Lcn/hutool/cron/timingwheel/SystemTimer;->timeWheel:Lcn/hutool/cron/timingwheel/TimingWheel;

    invoke-virtual {v0}, Lcn/hutool/cron/timingwheel/TimerTaskList;->getExpire()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcn/hutool/cron/timingwheel/TimingWheel;->advanceClock(J)V

    .line 106
    new-instance v2, Lcn/hutool/cron/timingwheel/SystemTimer$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0}, Lcn/hutool/cron/timingwheel/SystemTimer$$ExternalSyntheticLambda2;-><init>(Lcn/hutool/cron/timingwheel/SystemTimer;)V

    invoke-virtual {v0, v2}, Lcn/hutool/cron/timingwheel/TimerTaskList;->flush(Ljava/util/function/Consumer;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    const/4 v0, 0x1

    return v0

    :catch_0
    return v1
.end method

.method private poll()Lcn/hutool/cron/timingwheel/TimerTaskList;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 120
    iget-wide v0, p0, Lcn/hutool/cron/timingwheel/SystemTimer;->delayQueueTimeout:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    iget-object v2, p0, Lcn/hutool/cron/timingwheel/SystemTimer;->delayQueue:Ljava/util/concurrent/DelayQueue;

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 121
    invoke-virtual {v2, v0, v1, v3}, Ljava/util/concurrent/DelayQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/Delayed;

    move-result-object v0

    check-cast v0, Lcn/hutool/cron/timingwheel/TimerTaskList;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcn/hutool/cron/timingwheel/SystemTimer;->delayQueue:Ljava/util/concurrent/DelayQueue;

    .line 122
    invoke-virtual {v0}, Ljava/util/concurrent/DelayQueue;->poll()Ljava/util/concurrent/Delayed;

    move-result-object v0

    check-cast v0, Lcn/hutool/cron/timingwheel/TimerTaskList;

    :goto_0
    return-object v0
.end method


# virtual methods
.method public addTask(Lcn/hutool/cron/timingwheel/TimerTask;)V
    .locals 1

    .line 86
    iget-object v0, p0, Lcn/hutool/cron/timingwheel/SystemTimer;->timeWheel:Lcn/hutool/cron/timingwheel/TimingWheel;

    invoke-virtual {v0, p1}, Lcn/hutool/cron/timingwheel/TimingWheel;->addTask(Lcn/hutool/cron/timingwheel/TimerTask;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 87
    invoke-virtual {p1}, Lcn/hutool/cron/timingwheel/TimerTask;->getTask()Ljava/lang/Runnable;

    move-result-object p1

    invoke-static {p1}, Lcn/hutool/core/thread/ThreadUtil;->execAsync(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    :cond_0
    return-void
.end method

.method synthetic lambda$start$0$cn-hutool-cron-timingwheel-SystemTimer()V
    .locals 1

    .line 63
    :cond_0
    invoke-direct {p0}, Lcn/hutool/cron/timingwheel/SystemTimer;->advanceClock()Z

    move-result v0

    if-nez v0, :cond_0

    return-void
.end method

.method public setDelayQueueTimeout(J)Lcn/hutool/cron/timingwheel/SystemTimer;
    .locals 0

    .line 49
    iput-wide p1, p0, Lcn/hutool/cron/timingwheel/SystemTimer;->delayQueueTimeout:J

    return-object p0
.end method

.method public start()Lcn/hutool/cron/timingwheel/SystemTimer;
    .locals 2

    .line 59
    invoke-static {}, Lcn/hutool/core/thread/ThreadUtil;->newSingleExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcn/hutool/cron/timingwheel/SystemTimer;->bossThreadPool:Ljava/util/concurrent/ExecutorService;

    const/4 v0, 0x1

    .line 60
    iput-boolean v0, p0, Lcn/hutool/cron/timingwheel/SystemTimer;->isRunning:Z

    .line 61
    iget-object v0, p0, Lcn/hutool/cron/timingwheel/SystemTimer;->bossThreadPool:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcn/hutool/cron/timingwheel/SystemTimer$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcn/hutool/cron/timingwheel/SystemTimer$$ExternalSyntheticLambda0;-><init>(Lcn/hutool/cron/timingwheel/SystemTimer;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-object p0
.end method

.method public stop()V
    .locals 1

    const/4 v0, 0x0

    .line 75
    iput-boolean v0, p0, Lcn/hutool/cron/timingwheel/SystemTimer;->isRunning:Z

    .line 76
    iget-object v0, p0, Lcn/hutool/cron/timingwheel/SystemTimer;->bossThreadPool:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    return-void
.end method
