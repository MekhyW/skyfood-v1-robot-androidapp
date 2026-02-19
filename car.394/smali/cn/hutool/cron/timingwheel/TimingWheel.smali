.class public Lcn/hutool/cron/timingwheel/TimingWheel;
.super Ljava/lang/Object;
.source "TimingWheel.java"


# instance fields
.field private final consumer:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Lcn/hutool/cron/timingwheel/TimerTaskList;",
            ">;"
        }
    .end annotation
.end field

.field private currentTime:J

.field private final interval:J

.field private volatile overflowWheel:Lcn/hutool/cron/timingwheel/TimingWheel;

.field private final tickMs:J

.field private final timerTaskLists:[Lcn/hutool/cron/timingwheel/TimerTaskList;

.field private final wheelSize:I


# direct methods
.method public constructor <init>(JIJLjava/util/function/Consumer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JIJ",
            "Ljava/util/function/Consumer<",
            "Lcn/hutool/cron/timingwheel/TimerTaskList;",
            ">;)V"
        }
    .end annotation

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput-wide p1, p0, Lcn/hutool/cron/timingwheel/TimingWheel;->tickMs:J

    .line 72
    iput p3, p0, Lcn/hutool/cron/timingwheel/TimingWheel;->wheelSize:I

    int-to-long v0, p3

    mul-long/2addr v0, p1

    .line 73
    iput-wide v0, p0, Lcn/hutool/cron/timingwheel/TimingWheel;->interval:J

    .line 74
    new-array p3, p3, [Lcn/hutool/cron/timingwheel/TimerTaskList;

    iput-object p3, p0, Lcn/hutool/cron/timingwheel/TimingWheel;->timerTaskLists:[Lcn/hutool/cron/timingwheel/TimerTaskList;

    .line 75
    invoke-direct {p0}, Lcn/hutool/cron/timingwheel/TimingWheel;->initTimerTaskList()V

    .line 77
    rem-long p1, p4, p1

    sub-long/2addr p4, p1

    iput-wide p4, p0, Lcn/hutool/cron/timingwheel/TimingWheel;->currentTime:J

    .line 78
    iput-object p6, p0, Lcn/hutool/cron/timingwheel/TimingWheel;->consumer:Ljava/util/function/Consumer;

    return-void
.end method

.method public constructor <init>(JILjava/util/function/Consumer;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JI",
            "Ljava/util/function/Consumer<",
            "Lcn/hutool/cron/timingwheel/TimerTaskList;",
            ">;)V"
        }
    .end annotation

    .line 59
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    move-object v0, p0

    move-wide v1, p1

    move v3, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcn/hutool/cron/timingwheel/TimingWheel;-><init>(JIJLjava/util/function/Consumer;)V

    return-void
.end method

.method private getOverflowWheel()Lcn/hutool/cron/timingwheel/TimingWheel;
    .locals 8

    .line 130
    iget-object v0, p0, Lcn/hutool/cron/timingwheel/TimingWheel;->overflowWheel:Lcn/hutool/cron/timingwheel/TimingWheel;

    if-nez v0, :cond_1

    .line 131
    monitor-enter p0

    .line 132
    :try_start_0
    iget-object v0, p0, Lcn/hutool/cron/timingwheel/TimingWheel;->overflowWheel:Lcn/hutool/cron/timingwheel/TimingWheel;

    if-nez v0, :cond_0

    .line 133
    new-instance v0, Lcn/hutool/cron/timingwheel/TimingWheel;

    iget-wide v2, p0, Lcn/hutool/cron/timingwheel/TimingWheel;->interval:J

    iget v4, p0, Lcn/hutool/cron/timingwheel/TimingWheel;->wheelSize:I

    iget-wide v5, p0, Lcn/hutool/cron/timingwheel/TimingWheel;->currentTime:J

    iget-object v7, p0, Lcn/hutool/cron/timingwheel/TimingWheel;->consumer:Ljava/util/function/Consumer;

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcn/hutool/cron/timingwheel/TimingWheel;-><init>(JIJLjava/util/function/Consumer;)V

    iput-object v0, p0, Lcn/hutool/cron/timingwheel/TimingWheel;->overflowWheel:Lcn/hutool/cron/timingwheel/TimingWheel;

    .line 135
    :cond_0
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 137
    :cond_1
    :goto_0
    iget-object v0, p0, Lcn/hutool/cron/timingwheel/TimingWheel;->overflowWheel:Lcn/hutool/cron/timingwheel/TimingWheel;

    return-object v0
.end method

.method private initTimerTaskList()V
    .locals 3

    const/4 v0, 0x0

    .line 144
    :goto_0
    iget-object v1, p0, Lcn/hutool/cron/timingwheel/TimingWheel;->timerTaskLists:[Lcn/hutool/cron/timingwheel/TimerTaskList;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 145
    new-instance v2, Lcn/hutool/cron/timingwheel/TimerTaskList;

    invoke-direct {v2}, Lcn/hutool/cron/timingwheel/TimerTaskList;-><init>()V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public addTask(Lcn/hutool/cron/timingwheel/TimerTask;)Z
    .locals 12

    .line 88
    invoke-virtual {p1}, Lcn/hutool/cron/timingwheel/TimerTask;->getDelayMs()J

    move-result-wide v0

    .line 90
    iget-wide v2, p0, Lcn/hutool/cron/timingwheel/TimingWheel;->currentTime:J

    iget-wide v4, p0, Lcn/hutool/cron/timingwheel/TimingWheel;->tickMs:J

    add-long v6, v2, v4

    cmp-long v6, v0, v6

    const/4 v7, 0x0

    if-gez v6, :cond_0

    return v7

    .line 92
    :cond_0
    iget-wide v8, p0, Lcn/hutool/cron/timingwheel/TimingWheel;->interval:J

    add-long/2addr v2, v8

    cmp-long v2, v0, v2

    const/4 v3, 0x1

    if-gez v2, :cond_1

    .line 94
    div-long v8, v0, v4

    .line 95
    iget v2, p0, Lcn/hutool/cron/timingwheel/TimingWheel;->wheelSize:I

    int-to-long v10, v2

    rem-long v10, v8, v10

    long-to-int v2, v10

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    .line 96
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v6, v7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v6, v3

    const/4 v4, 0x2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v6, v4

    const-string v0, "tickMs: {} ------index: {} ------expiration: {}"

    invoke-static {v0, v6}, Lcn/hutool/log/StaticLog;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 97
    iget-object v0, p0, Lcn/hutool/cron/timingwheel/TimingWheel;->timerTaskLists:[Lcn/hutool/cron/timingwheel/TimerTaskList;

    aget-object v0, v0, v2

    .line 98
    invoke-virtual {v0, p1}, Lcn/hutool/cron/timingwheel/TimerTaskList;->addTask(Lcn/hutool/cron/timingwheel/TimerTask;)V

    .line 99
    iget-wide v1, p0, Lcn/hutool/cron/timingwheel/TimingWheel;->tickMs:J

    mul-long/2addr v8, v1

    invoke-virtual {v0, v8, v9}, Lcn/hutool/cron/timingwheel/TimerTaskList;->setExpiration(J)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 101
    iget-object p1, p0, Lcn/hutool/cron/timingwheel/TimingWheel;->consumer:Ljava/util/function/Consumer;

    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_0

    .line 105
    :cond_1
    invoke-direct {p0}, Lcn/hutool/cron/timingwheel/TimingWheel;->getOverflowWheel()Lcn/hutool/cron/timingwheel/TimingWheel;

    move-result-object v0

    .line 106
    invoke-virtual {v0, p1}, Lcn/hutool/cron/timingwheel/TimingWheel;->addTask(Lcn/hutool/cron/timingwheel/TimerTask;)Z

    :cond_2
    :goto_0
    return v3
.end method

.method public advanceClock(J)V
    .locals 4

    .line 117
    iget-wide v0, p0, Lcn/hutool/cron/timingwheel/TimingWheel;->currentTime:J

    iget-wide v2, p0, Lcn/hutool/cron/timingwheel/TimingWheel;->tickMs:J

    add-long/2addr v0, v2

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    .line 118
    rem-long v0, p1, v2

    sub-long v0, p1, v0

    iput-wide v0, p0, Lcn/hutool/cron/timingwheel/TimingWheel;->currentTime:J

    .line 119
    iget-object v0, p0, Lcn/hutool/cron/timingwheel/TimingWheel;->overflowWheel:Lcn/hutool/cron/timingwheel/TimingWheel;

    if-eqz v0, :cond_0

    .line 121
    invoke-direct {p0}, Lcn/hutool/cron/timingwheel/TimingWheel;->getOverflowWheel()Lcn/hutool/cron/timingwheel/TimingWheel;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcn/hutool/cron/timingwheel/TimingWheel;->advanceClock(J)V

    :cond_0
    return-void
.end method
