.class public Lcn/hutool/core/lang/Snowflake;
.super Ljava/lang/Object;
.source "Snowflake.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final DATA_CENTER_ID_BITS:J = 0x5L

.field private static final DATA_CENTER_ID_SHIFT:J = 0x11L

.field public static DEFAULT_TIME_OFFSET:J = 0x7d0L

.field public static DEFAULT_TWEPOCH:J = 0x12c148d03c1L

.field private static final MAX_DATA_CENTER_ID:J = 0x1fL

.field private static final MAX_WORKER_ID:J = 0x1fL

.field private static final SEQUENCE_BITS:J = 0xcL

.field private static final SEQUENCE_MASK:J = 0xfffL

.field private static final TIMESTAMP_LEFT_SHIFT:J = 0x16L

.field private static final WORKER_ID_BITS:J = 0x5L

.field private static final WORKER_ID_SHIFT:J = 0xcL

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final dataCenterId:J

.field private lastTimestamp:J

.field private final randomSequenceLimit:J

.field private sequence:J

.field private final timeOffset:J

.field private final twepoch:J

.field private final useSystemClock:Z

.field private final workerId:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    const-wide/16 v0, 0x1f

    .line 96
    invoke-static {v0, v1}, Lcn/hutool/core/util/IdUtil;->getDataCenterId(J)J

    move-result-wide v2

    invoke-static {v2, v3, v0, v1}, Lcn/hutool/core/util/IdUtil;->getWorkerId(JJ)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcn/hutool/core/lang/Snowflake;-><init>(J)V

    return-void
.end method

.method public constructor <init>(J)V
    .locals 2

    const-wide/16 v0, 0x1f

    .line 105
    invoke-static {v0, v1}, Lcn/hutool/core/util/IdUtil;->getDataCenterId(J)J

    move-result-wide v0

    invoke-direct {p0, p1, p2, v0, v1}, Lcn/hutool/core/lang/Snowflake;-><init>(JJ)V

    return-void
.end method

.method public constructor <init>(JJ)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    .line 115
    invoke-direct/range {v0 .. v5}, Lcn/hutool/core/lang/Snowflake;-><init>(JJZ)V

    return-void
.end method

.method public constructor <init>(JJZ)V
    .locals 7

    const/4 v1, 0x0

    move-object v0, p0

    move-wide v2, p1

    move-wide v4, p3

    move v6, p5

    .line 126
    invoke-direct/range {v0 .. v6}, Lcn/hutool/core/lang/Snowflake;-><init>(Ljava/util/Date;JJZ)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Date;JJZ)V
    .locals 9

    .line 137
    sget-wide v7, Lcn/hutool/core/lang/Snowflake;->DEFAULT_TIME_OFFSET:J

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move v6, p6

    invoke-direct/range {v0 .. v8}, Lcn/hutool/core/lang/Snowflake;-><init>(Ljava/util/Date;JJZJ)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Date;JJZJ)V
    .locals 11

    const-wide/16 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move/from16 v6, p6

    move-wide/from16 v7, p7

    .line 149
    invoke-direct/range {v0 .. v10}, Lcn/hutool/core/lang/Snowflake;-><init>(Ljava/util/Date;JJZJJ)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Date;JJZJJ)V
    .locals 9

    move-object v0, p0

    .line 162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v1, 0x0

    .line 89
    iput-wide v1, v0, Lcn/hutool/core/lang/Snowflake;->sequence:J

    const-wide/16 v1, -0x1

    .line 90
    iput-wide v1, v0, Lcn/hutool/core/lang/Snowflake;->lastTimestamp:J

    if-eqz p1, :cond_0

    .line 163
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    goto :goto_0

    :cond_0
    sget-wide v1, Lcn/hutool/core/lang/Snowflake;->DEFAULT_TWEPOCH:J

    :goto_0
    iput-wide v1, v0, Lcn/hutool/core/lang/Snowflake;->twepoch:J

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x1f

    move-wide v3, p2

    .line 164
    invoke-static/range {v3 .. v8}, Lcn/hutool/core/lang/Assert;->checkBetween(JJJ)J

    move-result-wide v1

    iput-wide v1, v0, Lcn/hutool/core/lang/Snowflake;->workerId:J

    move-wide v3, p4

    .line 165
    invoke-static/range {v3 .. v8}, Lcn/hutool/core/lang/Assert;->checkBetween(JJJ)J

    move-result-wide v1

    iput-wide v1, v0, Lcn/hutool/core/lang/Snowflake;->dataCenterId:J

    move v1, p6

    .line 166
    iput-boolean v1, v0, Lcn/hutool/core/lang/Snowflake;->useSystemClock:Z

    move-wide/from16 v1, p7

    .line 167
    iput-wide v1, v0, Lcn/hutool/core/lang/Snowflake;->timeOffset:J

    const-wide/16 v1, 0x0

    const-wide/16 v3, 0xfff

    move-wide/from16 p1, p9

    move-wide p3, v1

    move-wide p5, v3

    .line 168
    invoke-static/range {p1 .. p6}, Lcn/hutool/core/lang/Assert;->checkBetween(JJJ)J

    move-result-wide v1

    iput-wide v1, v0, Lcn/hutool/core/lang/Snowflake;->randomSequenceLimit:J

    return-void
.end method

.method private genTime()J
    .locals 2

    .line 278
    iget-boolean v0, p0, Lcn/hutool/core/lang/Snowflake;->useSystemClock:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcn/hutool/core/date/SystemClock;->now()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    :goto_0
    return-wide v0
.end method

.method private tilNextMillis(J)J
    .locals 4

    .line 259
    invoke-direct {p0}, Lcn/hutool/core/lang/Snowflake;->genTime()J

    move-result-wide v0

    :goto_0
    cmp-long v2, v0, p1

    if-nez v2, :cond_0

    .line 262
    invoke-direct {p0}, Lcn/hutool/core/lang/Snowflake;->genTime()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    if-ltz v2, :cond_1

    return-wide v0

    .line 266
    :cond_1
    new-instance v2, Ljava/lang/IllegalStateException;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    sub-long/2addr p1, v0

    .line 267
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const/4 p2, 0x0

    aput-object p1, v3, p2

    const-string p1, "Clock moved backwards. Refusing to generate id for {}ms"

    invoke-static {p1, v3}, Lcn/hutool/core/util/StrUtil;->format(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method


# virtual methods
.method public getDataCenterId(J)J
    .locals 2

    const/16 v0, 0x11

    shr-long/2addr p1, v0

    const-wide/16 v0, 0x1f

    and-long/2addr p1, v0

    return-wide p1
.end method

.method public getGenerateDateTime(J)J
    .locals 2

    const/16 v0, 0x16

    shr-long/2addr p1, v0

    const-wide v0, 0x1ffffffffffL

    and-long/2addr p1, v0

    .line 198
    iget-wide v0, p0, Lcn/hutool/core/lang/Snowflake;->twepoch:J

    add-long/2addr p1, v0

    return-wide p1
.end method

.method public getWorkerId(J)J
    .locals 2

    const/16 v0, 0xc

    shr-long/2addr p1, v0

    const-wide/16 v0, 0x1f

    and-long/2addr p1, v0

    return-wide p1
.end method

.method public declared-synchronized nextId()J
    .locals 11

    monitor-enter p0

    .line 207
    :try_start_0
    invoke-direct {p0}, Lcn/hutool/core/lang/Snowflake;->genTime()J

    move-result-wide v0

    .line 208
    iget-wide v2, p0, Lcn/hutool/core/lang/Snowflake;->lastTimestamp:J

    cmp-long v4, v0, v2

    if-gez v4, :cond_1

    sub-long v4, v2, v0

    .line 209
    iget-wide v6, p0, Lcn/hutool/core/lang/Snowflake;->timeOffset:J

    cmp-long v4, v4, v6

    if-gez v4, :cond_0

    move-wide v0, v2

    goto :goto_0

    .line 214
    :cond_0
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Clock moved backwards. Refusing to generate id for {}ms"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    iget-wide v5, p0, Lcn/hutool/core/lang/Snowflake;->lastTimestamp:J

    sub-long/2addr v5, v0

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, v4, v1

    invoke-static {v3, v4}, Lcn/hutool/core/util/StrUtil;->format(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    :goto_0
    cmp-long v4, v0, v2

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x1

    if-nez v4, :cond_3

    .line 219
    iget-wide v9, p0, Lcn/hutool/core/lang/Snowflake;->sequence:J

    add-long/2addr v9, v7

    const-wide/16 v7, 0xfff

    and-long/2addr v7, v9

    cmp-long v4, v7, v5

    if-nez v4, :cond_2

    .line 221
    invoke-direct {p0, v2, v3}, Lcn/hutool/core/lang/Snowflake;->tilNextMillis(J)J

    move-result-wide v0

    .line 223
    :cond_2
    iput-wide v7, p0, Lcn/hutool/core/lang/Snowflake;->sequence:J

    goto :goto_1

    .line 226
    :cond_3
    iget-wide v2, p0, Lcn/hutool/core/lang/Snowflake;->randomSequenceLimit:J

    cmp-long v4, v2, v7

    if-lez v4, :cond_4

    .line 227
    invoke-static {v2, v3}, Lcn/hutool/core/util/RandomUtil;->randomLong(J)J

    move-result-wide v2

    iput-wide v2, p0, Lcn/hutool/core/lang/Snowflake;->sequence:J

    goto :goto_1

    .line 229
    :cond_4
    iput-wide v5, p0, Lcn/hutool/core/lang/Snowflake;->sequence:J

    .line 233
    :goto_1
    iput-wide v0, p0, Lcn/hutool/core/lang/Snowflake;->lastTimestamp:J

    .line 235
    iget-wide v2, p0, Lcn/hutool/core/lang/Snowflake;->twepoch:J

    sub-long/2addr v0, v2

    const/16 v2, 0x16

    shl-long/2addr v0, v2

    iget-wide v2, p0, Lcn/hutool/core/lang/Snowflake;->dataCenterId:J

    const/16 v4, 0x11

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    iget-wide v2, p0, Lcn/hutool/core/lang/Snowflake;->workerId:J

    const/16 v4, 0xc

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    iget-wide v2, p0, Lcn/hutool/core/lang/Snowflake;->sequence:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    or-long/2addr v0, v2

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public nextIdStr()Ljava/lang/String;
    .locals 2

    .line 247
    invoke-virtual {p0}, Lcn/hutool/core/lang/Snowflake;->nextId()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
