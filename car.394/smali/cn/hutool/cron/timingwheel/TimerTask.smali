.class public Lcn/hutool/cron/timingwheel/TimerTask;
.super Ljava/lang/Object;
.source "TimerTask.java"


# instance fields
.field private final delayMs:J

.field public desc:Ljava/lang/String;

.field protected next:Lcn/hutool/cron/timingwheel/TimerTask;

.field protected prev:Lcn/hutool/cron/timingwheel/TimerTask;

.field private final task:Ljava/lang/Runnable;

.field protected timerTaskList:Lcn/hutool/cron/timingwheel/TimerTaskList;


# direct methods
.method public constructor <init>(Ljava/lang/Runnable;J)V
    .locals 2

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    add-long/2addr v0, p2

    iput-wide v0, p0, Lcn/hutool/cron/timingwheel/TimerTask;->delayMs:J

    .line 48
    iput-object p1, p0, Lcn/hutool/cron/timingwheel/TimerTask;->task:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public getDelayMs()J
    .locals 2

    .line 65
    iget-wide v0, p0, Lcn/hutool/cron/timingwheel/TimerTask;->delayMs:J

    return-wide v0
.end method

.method public getTask()Ljava/lang/Runnable;
    .locals 1

    .line 57
    iget-object v0, p0, Lcn/hutool/cron/timingwheel/TimerTask;->task:Ljava/lang/Runnable;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 70
    iget-object v0, p0, Lcn/hutool/cron/timingwheel/TimerTask;->desc:Ljava/lang/String;

    return-object v0
.end method
