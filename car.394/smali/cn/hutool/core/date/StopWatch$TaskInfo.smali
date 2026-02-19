.class public final Lcn/hutool/core/date/StopWatch$TaskInfo;
.super Ljava/lang/Object;
.source "StopWatch.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/hutool/core/date/StopWatch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TaskInfo"
.end annotation


# instance fields
.field private final taskName:Ljava/lang/String;

.field private final timeNanos:J


# direct methods
.method constructor <init>(Ljava/lang/String;J)V
    .locals 0

    .line 427
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 428
    iput-object p1, p0, Lcn/hutool/core/date/StopWatch$TaskInfo;->taskName:Ljava/lang/String;

    .line 429
    iput-wide p2, p0, Lcn/hutool/core/date/StopWatch$TaskInfo;->timeNanos:J

    return-void
.end method


# virtual methods
.method public getTaskName()Ljava/lang/String;
    .locals 1

    .line 438
    iget-object v0, p0, Lcn/hutool/core/date/StopWatch$TaskInfo;->taskName:Ljava/lang/String;

    return-object v0
.end method

.method public getTime(Ljava/util/concurrent/TimeUnit;)J
    .locals 3

    .line 449
    iget-wide v0, p0, Lcn/hutool/core/date/StopWatch$TaskInfo;->timeNanos:J

    sget-object v2, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getTimeMillis()J
    .locals 2

    .line 471
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0, v0}, Lcn/hutool/core/date/StopWatch$TaskInfo;->getTime(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getTimeNanos()J
    .locals 2

    .line 460
    iget-wide v0, p0, Lcn/hutool/core/date/StopWatch$TaskInfo;->timeNanos:J

    return-wide v0
.end method

.method public getTimeSeconds()D
    .locals 2

    .line 482
    iget-wide v0, p0, Lcn/hutool/core/date/StopWatch$TaskInfo;->timeNanos:J

    invoke-static {v0, v1}, Lcn/hutool/core/date/DateUtil;->nanosToSeconds(J)D

    move-result-wide v0

    return-wide v0
.end method
