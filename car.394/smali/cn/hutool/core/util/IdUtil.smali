.class public Lcn/hutool/core/util/IdUtil;
.super Ljava/lang/Object;
.source "IdUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createSnowflake(JJ)Lcn/hutool/core/lang/Snowflake;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 114
    new-instance v0, Lcn/hutool/core/lang/Snowflake;

    invoke-direct {v0, p0, p1, p2, p3}, Lcn/hutool/core/lang/Snowflake;-><init>(JJ)V

    return-object v0
.end method

.method public static fastSimpleUUID()Ljava/lang/String;
    .locals 2

    .line 64
    invoke-static {}, Lcn/hutool/core/lang/UUID;->fastUUID()Lcn/hutool/core/lang/UUID;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcn/hutool/core/lang/UUID;->toString(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static fastUUID()Ljava/lang/String;
    .locals 1

    .line 54
    invoke-static {}, Lcn/hutool/core/lang/UUID;->fastUUID()Lcn/hutool/core/lang/UUID;

    move-result-object v0

    invoke-virtual {v0}, Lcn/hutool/core/lang/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDataCenterId(J)J
    .locals 8

    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-lez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    const-string v3, "maxDatacenterId must be > 0"

    new-array v2, v2, [Ljava/lang/Object;

    .line 207
    invoke-static {v0, v3, v2}, Lcn/hutool/core/lang/Assert;->isTrue(ZLjava/lang/String;[Ljava/lang/Object;)V

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v0, p0, v2

    const-wide/16 v2, 0x1

    if-nez v0, :cond_1

    sub-long/2addr p0, v2

    .line 214
    :cond_1
    :try_start_0
    invoke-static {}, Lcn/hutool/core/net/NetUtil;->getLocalHardwareAddress()[B

    move-result-object v0
    :try_end_0
    .catch Lcn/hutool/core/exceptions/UtilException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_2

    .line 219
    array-length v4, v0

    add-int/lit8 v4, v4, -0x2

    aget-byte v4, v0, v4

    int-to-long v4, v4

    const-wide/16 v6, 0xff

    and-long/2addr v4, v6

    array-length v6, v0

    sub-int/2addr v6, v1

    aget-byte v0, v0, v6

    int-to-long v0, v0

    const/16 v6, 0x8

    shl-long/2addr v0, v6

    const-wide/32 v6, 0xff00

    and-long/2addr v0, v6

    or-long/2addr v0, v4

    const/4 v4, 0x6

    shr-long/2addr v0, v4

    add-long/2addr p0, v2

    .line 221
    rem-long v2, v0, p0

    :cond_2
    return-wide v2
.end method

.method public static getSnowflake()Lcn/hutool/core/lang/Snowflake;
    .locals 2

    .line 192
    const-class v0, Lcn/hutool/core/lang/Snowflake;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcn/hutool/core/lang/Singleton;->get(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/hutool/core/lang/Snowflake;

    return-object v0
.end method

.method public static getSnowflake(J)Lcn/hutool/core/lang/Snowflake;
    .locals 3

    .line 167
    const-class v0, Lcn/hutool/core/lang/Snowflake;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    aput-object p0, v1, v2

    invoke-static {v0, v1}, Lcn/hutool/core/lang/Singleton;->get(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcn/hutool/core/lang/Snowflake;

    return-object p0
.end method

.method public static getSnowflake(JJ)Lcn/hutool/core/lang/Snowflake;
    .locals 3

    .line 141
    const-class v0, Lcn/hutool/core/lang/Snowflake;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    aput-object p0, v1, v2

    const/4 p0, 0x1

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v1, p0

    invoke-static {v0, v1}, Lcn/hutool/core/lang/Singleton;->get(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcn/hutool/core/lang/Snowflake;

    return-object p0
.end method

.method public static getSnowflakeNextId()J
    .locals 2

    .line 285
    invoke-static {}, Lcn/hutool/core/util/IdUtil;->getSnowflake()Lcn/hutool/core/lang/Snowflake;

    move-result-object v0

    invoke-virtual {v0}, Lcn/hutool/core/lang/Snowflake;->nextId()J

    move-result-wide v0

    return-wide v0
.end method

.method public static getSnowflakeNextIdStr()Ljava/lang/String;
    .locals 1

    .line 296
    invoke-static {}, Lcn/hutool/core/util/IdUtil;->getSnowflake()Lcn/hutool/core/lang/Snowflake;

    move-result-object v0

    invoke-virtual {v0}, Lcn/hutool/core/lang/Snowflake;->nextIdStr()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getWorkerId(JJ)J
    .locals 2

    .line 241
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 242
    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 244
    :try_start_0
    invoke-static {}, Lcn/hutool/core/util/RuntimeUtil;->getPid()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Lcn/hutool/core/exceptions/UtilException; {:try_start_0 .. :try_end_0} :catch_0

    .line 251
    :catch_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    const p1, 0xffff

    and-int/2addr p0, p1

    int-to-long p0, p0

    const-wide/16 v0, 0x1

    add-long/2addr p2, v0

    rem-long/2addr p0, p2

    return-wide p0
.end method

.method public static nanoId()Ljava/lang/String;
    .locals 1

    .line 263
    invoke-static {}, Lcn/hutool/core/lang/id/NanoId;->randomNanoId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static nanoId(I)Ljava/lang/String;
    .locals 0

    .line 274
    invoke-static {p0}, Lcn/hutool/core/lang/id/NanoId;->randomNanoId(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static objectId()Ljava/lang/String;
    .locals 1

    .line 83
    invoke-static {}, Lcn/hutool/core/lang/ObjectId;->next()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static randomUUID()Ljava/lang/String;
    .locals 1

    .line 35
    invoke-static {}, Lcn/hutool/core/lang/UUID;->randomUUID()Lcn/hutool/core/lang/UUID;

    move-result-object v0

    invoke-virtual {v0}, Lcn/hutool/core/lang/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static simpleUUID()Ljava/lang/String;
    .locals 2

    .line 44
    invoke-static {}, Lcn/hutool/core/lang/UUID;->randomUUID()Lcn/hutool/core/lang/UUID;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcn/hutool/core/lang/UUID;->toString(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
