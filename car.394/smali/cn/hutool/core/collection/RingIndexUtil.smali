.class public Lcn/hutool/core/collection/RingIndexUtil;
.super Ljava/lang/Object;
.source "RingIndexUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ringNextInt(ILjava/util/concurrent/atomic/AtomicInteger;)I
    .locals 3

    .line 44
    invoke-static {p1}, Lcn/hutool/core/lang/Assert;->notNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-lez p0, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    .line 45
    :goto_0
    invoke-static {v2}, Lcn/hutool/core/lang/Assert;->isTrue(Z)V

    if-gt p0, v1, :cond_1

    return v0

    .line 50
    :cond_1
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    add-int/lit8 v1, v0, 0x1

    .line 51
    rem-int/2addr v1, p0

    .line 52
    invoke-virtual {p1, v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1
.end method

.method public static ringNextIntByObj(Ljava/lang/Object;Ljava/util/concurrent/atomic/AtomicInteger;)I
    .locals 0

    .line 31
    invoke-static {p0}, Lcn/hutool/core/lang/Assert;->notNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    invoke-static {p0}, Lcn/hutool/core/collection/CollUtil;->size(Ljava/lang/Object;)I

    move-result p0

    .line 33
    invoke-static {p0, p1}, Lcn/hutool/core/collection/RingIndexUtil;->ringNextInt(ILjava/util/concurrent/atomic/AtomicInteger;)I

    move-result p0

    return p0
.end method

.method public static ringNextLong(JLjava/util/concurrent/atomic/AtomicLong;)J
    .locals 6

    .line 67
    invoke-static {p2}, Lcn/hutool/core/lang/Assert;->notNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-wide/16 v0, 0x0

    cmp-long v2, p0, v0

    if-lez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 68
    :goto_0
    invoke-static {v2}, Lcn/hutool/core/lang/Assert;->isTrue(Z)V

    const-wide/16 v2, 0x1

    cmp-long v4, p0, v2

    if-gtz v4, :cond_1

    return-wide v0

    .line 73
    :cond_1
    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    add-long v4, v0, v2

    .line 74
    rem-long/2addr v4, p0

    .line 75
    invoke-virtual {p2, v0, v1, v4, v5}, Ljava/util/concurrent/atomic/AtomicLong;->compareAndSet(JJ)Z

    move-result v0

    if-eqz v0, :cond_1

    return-wide v4
.end method
