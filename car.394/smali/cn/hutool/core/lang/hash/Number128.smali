.class public Lcn/hutool/core/lang/hash/Number128;
.super Ljava/lang/Number;
.source "Number128.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private highValue:J

.field private lowValue:J


# direct methods
.method public constructor <init>(JJ)V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    .line 24
    iput-wide p1, p0, Lcn/hutool/core/lang/hash/Number128;->lowValue:J

    .line 25
    iput-wide p3, p0, Lcn/hutool/core/lang/hash/Number128;->highValue:J

    return-void
.end method


# virtual methods
.method public doubleValue()D
    .locals 2

    .line 90
    invoke-virtual {p0}, Lcn/hutool/core/lang/hash/Number128;->longValue()J

    move-result-wide v0

    long-to-double v0, v0

    return-wide v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 96
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 99
    :cond_1
    check-cast p1, Lcn/hutool/core/lang/hash/Number128;

    .line 100
    iget-wide v2, p0, Lcn/hutool/core/lang/hash/Number128;->lowValue:J

    iget-wide v4, p1, Lcn/hutool/core/lang/hash/Number128;->lowValue:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    iget-wide v2, p0, Lcn/hutool/core/lang/hash/Number128;->highValue:J

    iget-wide v4, p1, Lcn/hutool/core/lang/hash/Number128;->highValue:J

    cmp-long p1, v2, v4

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public floatValue()F
    .locals 2

    .line 85
    invoke-virtual {p0}, Lcn/hutool/core/lang/hash/Number128;->longValue()J

    move-result-wide v0

    long-to-float v0, v0

    return v0
.end method

.method public getHighValue()J
    .locals 2

    .line 52
    iget-wide v0, p0, Lcn/hutool/core/lang/hash/Number128;->highValue:J

    return-wide v0
.end method

.method public getLongArray()[J
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [J

    const/4 v1, 0x0

    .line 70
    iget-wide v2, p0, Lcn/hutool/core/lang/hash/Number128;->lowValue:J

    aput-wide v2, v0, v1

    const/4 v1, 0x1

    iget-wide v2, p0, Lcn/hutool/core/lang/hash/Number128;->highValue:J

    aput-wide v2, v0, v1

    return-object v0
.end method

.method public getLowValue()J
    .locals 2

    .line 34
    iget-wide v0, p0, Lcn/hutool/core/lang/hash/Number128;->lowValue:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 105
    iget-wide v1, p0, Lcn/hutool/core/lang/hash/Number128;->lowValue:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-wide v1, p0, Lcn/hutool/core/lang/hash/Number128;->highValue:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public intValue()I
    .locals 2

    .line 75
    invoke-virtual {p0}, Lcn/hutool/core/lang/hash/Number128;->longValue()J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public longValue()J
    .locals 2

    .line 80
    iget-wide v0, p0, Lcn/hutool/core/lang/hash/Number128;->lowValue:J

    return-wide v0
.end method

.method public setHighValue(J)V
    .locals 0

    .line 61
    iput-wide p1, p0, Lcn/hutool/core/lang/hash/Number128;->highValue:J

    return-void
.end method

.method public setLowValue(J)V
    .locals 0

    .line 43
    iput-wide p1, p0, Lcn/hutool/core/lang/hash/Number128;->lowValue:J

    return-void
.end method
