.class public Lcn/hutool/core/math/MathUtil;
.super Ljava/lang/Object;
.source "MathUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static arrangementCount(I)J
    .locals 2

    .line 33
    invoke-static {p0}, Lcn/hutool/core/math/Arrangement;->count(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public static arrangementCount(II)J
    .locals 0

    .line 23
    invoke-static {p0, p1}, Lcn/hutool/core/math/Arrangement;->count(II)J

    move-result-wide p0

    return-wide p0
.end method

.method public static arrangementSelect([Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 54
    new-instance v0, Lcn/hutool/core/math/Arrangement;

    invoke-direct {v0, p0}, Lcn/hutool/core/math/Arrangement;-><init>([Ljava/lang/String;)V

    invoke-virtual {v0}, Lcn/hutool/core/math/Arrangement;->select()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static arrangementSelect([Ljava/lang/String;I)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 44
    new-instance v0, Lcn/hutool/core/math/Arrangement;

    invoke-direct {v0, p0}, Lcn/hutool/core/math/Arrangement;-><init>([Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcn/hutool/core/math/Arrangement;->select(I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static centToYuan(J)D
    .locals 4

    const-wide/16 v0, 0x64

    .line 99
    div-long v2, p0, v0

    .line 100
    rem-long/2addr p0, v0

    long-to-int p0, p0

    .line 101
    new-instance p1, Lcn/hutool/core/math/Money;

    invoke-direct {p1, v2, v3, p0}, Lcn/hutool/core/math/Money;-><init>(JI)V

    invoke-virtual {p1}, Lcn/hutool/core/math/Money;->getAmount()Ljava/math/BigDecimal;

    move-result-object p0

    invoke-virtual {p0}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide p0

    return-wide p0
.end method

.method public static combinationCount(II)J
    .locals 0

    .line 66
    invoke-static {p0, p1}, Lcn/hutool/core/math/Combination;->count(II)J

    move-result-wide p0

    return-wide p0
.end method

.method public static combinationSelect([Ljava/lang/String;I)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 77
    new-instance v0, Lcn/hutool/core/math/Combination;

    invoke-direct {v0, p0}, Lcn/hutool/core/math/Combination;-><init>([Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcn/hutool/core/math/Combination;->select(I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static yuanToCent(D)J
    .locals 1

    .line 88
    new-instance v0, Lcn/hutool/core/math/Money;

    invoke-direct {v0, p0, p1}, Lcn/hutool/core/math/Money;-><init>(D)V

    invoke-virtual {v0}, Lcn/hutool/core/math/Money;->getCent()J

    move-result-wide p0

    return-wide p0
.end method
