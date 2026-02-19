.class public Lcn/hutool/core/net/Ipv4Util;
.super Ljava/lang/Object;
.source "Ipv4Util.java"


# static fields
.field public static final IP_MASK_MAX:I = 0x20

.field public static final IP_MASK_SPLIT_MARK:Ljava/lang/String; = "/"

.field public static final IP_SPLIT_MARK:Ljava/lang/String; = "-"

.field public static final LOCAL_IP:Ljava/lang/String; = "127.0.0.1"


# direct methods
.method public static synthetic $r8$lambda$a0wdELtZe6YGHNknyzs5wkPK7Cg(Ljava/lang/String;)I
    .locals 0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static countByIpRange(Ljava/lang/String;Ljava/lang/String;)I
    .locals 10

    .line 304
    invoke-static {p1}, Lcn/hutool/core/net/Ipv4Util;->ipv4ToLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 305
    invoke-static {p0}, Lcn/hutool/core/net/Ipv4Util;->ipv4ToLong(Ljava/lang/String;)J

    move-result-wide v2

    cmp-long v0, v2, v0

    if-gtz v0, :cond_1

    const/16 v0, 0x2e

    .line 310
    invoke-static {p0, v0}, Lcn/hutool/core/util/StrUtil;->split(Ljava/lang/CharSequence;C)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v1, Lcn/hutool/core/net/Ipv4Util$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcn/hutool/core/net/Ipv4Util$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {p0, v1}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object p0

    .line 311
    invoke-static {p1, v0}, Lcn/hutool/core/util/StrUtil;->split(Ljava/lang/CharSequence;C)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lcn/hutool/core/net/Ipv4Util$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcn/hutool/core/net/Ipv4Util$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object p1

    .line 312
    array-length v0, p0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    move v2, v1

    :goto_0
    if-ltz v0, :cond_0

    int-to-double v2, v2

    .line 313
    aget v4, p1, v0

    aget v5, p0, v0

    sub-int/2addr v4, v5

    int-to-double v4, v4

    array-length v6, p0

    sub-int/2addr v6, v0

    sub-int/2addr v6, v1

    int-to-double v6, v6

    const-wide/high16 v8, 0x4070000000000000L    # 256.0

    invoke-static {v8, v9, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    double-to-int v2, v2

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return v2

    .line 307
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "to IP must be greater than from IP!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static countByMaskBit(IZ)I
    .locals 4

    const/16 v0, 0x20

    if-nez p1, :cond_1

    if-lez p0, :cond_0

    if-lt p0, v0, :cond_1

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    sub-int/2addr v0, p0

    int-to-double v0, v0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    .line 261
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-int p0, v0

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    add-int/lit8 p0, p0, -0x2

    :goto_0
    return p0
.end method

.method public static formatIpBlock(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-static {p1}, Lcn/hutool/core/net/Ipv4Util;->getMaskBitByMask(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getBeginIpLong(Ljava/lang/String;I)Ljava/lang/Long;
    .locals 2

    .line 219
    invoke-static {p0}, Lcn/hutool/core/net/Ipv4Util;->ipv4ToLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {p1}, Lcn/hutool/core/net/Ipv4Util;->getMaskByMaskBit(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcn/hutool/core/net/Ipv4Util;->ipv4ToLong(Ljava/lang/String;)J

    move-result-wide p0

    and-long/2addr p0, v0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method public static getBeginIpStr(Ljava/lang/String;I)Ljava/lang/String;
    .locals 0

    .line 208
    invoke-static {p0, p1}, Lcn/hutool/core/net/Ipv4Util;->getBeginIpLong(Ljava/lang/String;I)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    invoke-static {p0, p1}, Lcn/hutool/core/net/Ipv4Util;->longToIpv4(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getEndIpLong(Ljava/lang/String;I)Ljava/lang/Long;
    .locals 2

    .line 380
    invoke-static {p0, p1}, Lcn/hutool/core/net/Ipv4Util;->getBeginIpLong(Ljava/lang/String;I)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 381
    invoke-static {p1}, Lcn/hutool/core/net/Ipv4Util;->getMaskByMaskBit(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcn/hutool/core/net/Ipv4Util;->ipv4ToLong(Ljava/lang/String;)J

    move-result-wide p0

    not-long p0, p0

    add-long/2addr v0, p0

    .line 380
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method public static getEndIpStr(Ljava/lang/String;I)Ljava/lang/String;
    .locals 0

    .line 230
    invoke-static {p0, p1}, Lcn/hutool/core/net/Ipv4Util;->getEndIpLong(Ljava/lang/String;I)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    invoke-static {p0, p1}, Lcn/hutool/core/net/Ipv4Util;->longToIpv4(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getMaskBitByMask(Ljava/lang/String;)I
    .locals 3

    .line 241
    invoke-static {p0}, Lcn/hutool/core/net/MaskBit;->getMaskBit(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 245
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    .line 243
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid netmask "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getMaskByIpRange(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .line 283
    invoke-static {p1}, Lcn/hutool/core/net/Ipv4Util;->ipv4ToLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 284
    invoke-static {p0}, Lcn/hutool/core/net/Ipv4Util;->ipv4ToLong(Ljava/lang/String;)J

    move-result-wide v2

    cmp-long v0, v2, v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-gez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    const-string v3, "to IP must be greater than from IP!"

    new-array v4, v2, [Ljava/lang/Object;

    .line 285
    invoke-static {v0, v3, v4}, Lcn/hutool/core/lang/Assert;->isTrue(ZLjava/lang/String;[Ljava/lang/Object;)V

    const/16 v0, 0x2e

    .line 287
    invoke-static {p0, v0}, Lcn/hutool/core/util/StrUtil;->splitToArray(Ljava/lang/CharSequence;C)[Ljava/lang/String;

    move-result-object p0

    .line 288
    invoke-static {p1, v0}, Lcn/hutool/core/util/StrUtil;->splitToArray(Ljava/lang/CharSequence;C)[Ljava/lang/String;

    move-result-object p1

    .line 289
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move v4, v2

    .line 290
    :goto_1
    array-length v5, p1

    if-ge v4, v5, :cond_1

    .line 291
    aget-object v5, p1, v4

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    rsub-int v5, v5, 0xff

    aget-object v6, p0, v4

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    add-int/2addr v5, v6

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 293
    :cond_1
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    sub-int/2addr p0, v1

    invoke-virtual {v3, v2, p0}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getMaskByMaskBit(I)Ljava/lang/String;
    .locals 0

    .line 272
    invoke-static {p0}, Lcn/hutool/core/net/MaskBit;->get(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static ipv4ToLong(Ljava/lang/String;)J
    .locals 2

    .line 179
    sget-object v0, Lcn/hutool/core/lang/PatternPool;->IPV4:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 180
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 181
    invoke-static {p0}, Lcn/hutool/core/net/Ipv4Util;->matchAddress(Ljava/util/regex/Matcher;)J

    move-result-wide v0

    return-wide v0

    .line 186
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid IPv4 address!"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static ipv4ToLong(Ljava/lang/String;J)J
    .locals 1

    .line 196
    invoke-static {p0}, Lcn/hutool/core/lang/Validator;->isIpv4(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcn/hutool/core/net/Ipv4Util;->ipv4ToLong(Ljava/lang/String;)J

    move-result-wide p1

    :cond_0
    return-wide p1
.end method

.method private static isInner(JJJ)Z
    .locals 0

    cmp-long p2, p0, p2

    if-ltz p2, :cond_0

    cmp-long p0, p0, p4

    if-gtz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isInnerIP(Ljava/lang/String;)Z
    .locals 16

    .line 354
    invoke-static/range {p0 .. p0}, Lcn/hutool/core/net/Ipv4Util;->ipv4ToLong(Ljava/lang/String;)J

    move-result-wide v6

    const-string v0, "10.0.0.0"

    .line 356
    invoke-static {v0}, Lcn/hutool/core/net/Ipv4Util;->ipv4ToLong(Ljava/lang/String;)J

    move-result-wide v2

    const-string v0, "10.255.255.255"

    .line 357
    invoke-static {v0}, Lcn/hutool/core/net/Ipv4Util;->ipv4ToLong(Ljava/lang/String;)J

    move-result-wide v4

    const-string v0, "172.16.0.0"

    .line 359
    invoke-static {v0}, Lcn/hutool/core/net/Ipv4Util;->ipv4ToLong(Ljava/lang/String;)J

    move-result-wide v8

    const-string v0, "172.31.255.255"

    .line 360
    invoke-static {v0}, Lcn/hutool/core/net/Ipv4Util;->ipv4ToLong(Ljava/lang/String;)J

    move-result-wide v10

    const-string v0, "192.168.0.0"

    .line 362
    invoke-static {v0}, Lcn/hutool/core/net/Ipv4Util;->ipv4ToLong(Ljava/lang/String;)J

    move-result-wide v12

    const-string v0, "192.168.255.255"

    .line 363
    invoke-static {v0}, Lcn/hutool/core/net/Ipv4Util;->ipv4ToLong(Ljava/lang/String;)J

    move-result-wide v14

    move-wide v0, v6

    .line 365
    invoke-static/range {v0 .. v5}, Lcn/hutool/core/net/Ipv4Util;->isInner(JJJ)Z

    move-result v0

    if-nez v0, :cond_1

    move-wide v0, v6

    move-wide v2, v8

    move-wide v4, v10

    invoke-static/range {v0 .. v5}, Lcn/hutool/core/net/Ipv4Util;->isInner(JJJ)Z

    move-result v0

    if-nez v0, :cond_1

    move-wide v0, v6

    move-wide v2, v12

    move-wide v4, v14

    invoke-static/range {v0 .. v5}, Lcn/hutool/core/net/Ipv4Util;->isInner(JJJ)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "127.0.0.1"

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static isMaskBitValid(I)Z
    .locals 0

    .line 335
    invoke-static {p0}, Lcn/hutool/core/net/MaskBit;->get(I)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isMaskValid(Ljava/lang/String;)Z
    .locals 0

    .line 325
    invoke-static {p0}, Lcn/hutool/core/net/MaskBit;->getMaskBit(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static list(Ljava/lang/String;IZ)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IZ)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/16 v0, 0x20

    if-ne p1, v0, :cond_1

    .line 85
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    if-eqz p2, :cond_0

    .line 87
    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-object p1

    .line 92
    :cond_1
    invoke-static {p0, p1}, Lcn/hutool/core/net/Ipv4Util;->getBeginIpStr(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 93
    invoke-static {p0, p1}, Lcn/hutool/core/net/Ipv4Util;->getEndIpStr(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    if-eqz p2, :cond_2

    .line 95
    invoke-static {v0, p0}, Lcn/hutool/core/net/Ipv4Util;->list(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_2
    const/16 p1, 0x2e

    .line 98
    invoke-virtual {v0, p1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result p2

    add-int/lit8 p2, p2, 0x1

    .line 99
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0, p2}, Lcn/hutool/core/util/StrUtil;->subPre(Ljava/lang/CharSequence;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 100
    invoke-static {v0, p2}, Lcn/hutool/core/util/StrUtil;->subSuf(Ljava/lang/CharSequence;I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    add-int/lit8 p2, p2, 0x1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 101
    invoke-virtual {p0, p1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    .line 102
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0, p1}, Lcn/hutool/core/util/StrUtil;->subPre(Ljava/lang/CharSequence;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 103
    invoke-static {p0, p1}, Lcn/hutool/core/util/StrUtil;->subSuf(Ljava/lang/CharSequence;I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 104
    invoke-static {p2, p0}, Lcn/hutool/core/net/Ipv4Util;->list(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static list(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 116
    invoke-static/range {p0 .. p1}, Lcn/hutool/core/net/Ipv4Util;->countByIpRange(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x2e

    move-object/from16 v2, p0

    .line 117
    invoke-static {v2, v1}, Lcn/hutool/core/util/StrUtil;->splitToArray(Ljava/lang/CharSequence;C)[Ljava/lang/String;

    move-result-object v2

    const-class v3, [I

    invoke-static {v3, v2}, Lcn/hutool/core/convert/Convert;->convert(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    move-object/from16 v4, p1

    .line 118
    invoke-static {v4, v1}, Lcn/hutool/core/util/StrUtil;->splitToArray(Ljava/lang/CharSequence;C)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcn/hutool/core/convert/Convert;->convert(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    .line 120
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v0, 0x0

    .line 126
    aget v4, v1, v0

    .line 127
    aget v5, v2, v0

    const/4 v6, 0x1

    move v7, v6

    move v8, v7

    move v9, v8

    :goto_0
    if-gt v5, v4, :cond_c

    if-ne v5, v4, :cond_0

    move v10, v6

    goto :goto_1

    :cond_0
    move v10, v0

    :goto_1
    const/16 v11, 0xff

    if-eqz v10, :cond_1

    .line 130
    aget v12, v1, v6

    goto :goto_2

    :cond_1
    move v12, v11

    :goto_2
    if-eqz v7, :cond_2

    .line 131
    aget v7, v2, v6

    goto :goto_3

    :cond_2
    move v7, v0

    :goto_3
    if-gt v7, v12, :cond_b

    if-eqz v10, :cond_3

    if-ne v7, v12, :cond_3

    move v13, v6

    goto :goto_4

    :cond_3
    move v13, v0

    :goto_4
    const/4 v14, 0x2

    if-eqz v13, :cond_4

    .line 134
    aget v15, v1, v14

    goto :goto_5

    :cond_4
    move v15, v11

    :goto_5
    if-eqz v8, :cond_5

    .line 135
    aget v8, v2, v14

    goto :goto_6

    :cond_5
    move v8, v0

    :goto_6
    if-gt v8, v15, :cond_a

    if-eqz v13, :cond_6

    if-ne v8, v15, :cond_6

    move v14, v6

    goto :goto_7

    :cond_6
    move v14, v0

    :goto_7
    const/16 v16, 0x3

    if-eqz v14, :cond_7

    .line 138
    aget v14, v1, v16

    goto :goto_8

    :cond_7
    move v14, v11

    :goto_8
    if-eqz v9, :cond_8

    .line 139
    aget v9, v2, v16

    goto :goto_9

    :cond_8
    move v9, v0

    :goto_9
    if-gt v9, v14, :cond_9

    .line 140
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, "."

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v9, v9, 0x1

    const/4 v0, 0x0

    const/4 v6, 0x1

    goto :goto_9

    :cond_9
    add-int/lit8 v8, v8, 0x1

    const/4 v0, 0x0

    const/4 v6, 0x1

    const/4 v9, 0x0

    goto :goto_6

    :cond_a
    add-int/lit8 v7, v7, 0x1

    const/4 v0, 0x0

    const/4 v6, 0x1

    const/4 v8, 0x0

    goto :goto_3

    :cond_b
    add-int/lit8 v5, v5, 0x1

    const/4 v0, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    goto/16 :goto_0

    :cond_c
    return-object v3
.end method

.method public static list(Ljava/lang/String;Z)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "-"

    .line 62
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    .line 64
    invoke-static {p0, v0}, Lcn/hutool/core/util/StrUtil;->splitToArray(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object p0

    .line 65
    aget-object p1, p0, v3

    aget-object p0, p0, v2

    invoke-static {p1, p0}, Lcn/hutool/core/net/Ipv4Util;->list(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    const-string v0, "/"

    .line 66
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 68
    invoke-static {p0, v0}, Lcn/hutool/core/util/StrUtil;->splitToArray(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object p0

    .line 69
    aget-object v0, p0, v3

    aget-object p0, p0, v2

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    invoke-static {v0, p0, p1}, Lcn/hutool/core/net/Ipv4Util;->list(Ljava/lang/String;IZ)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_1
    new-array p1, v2, [Ljava/lang/String;

    aput-object p0, p1, v3

    .line 71
    invoke-static {p1}, Lcn/hutool/core/collection/ListUtil;->toList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public static longToIpv4(J)Ljava/lang/String;
    .locals 7

    .line 158
    invoke-static {}, Lcn/hutool/core/util/StrUtil;->builder()Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x18

    shr-long v1, p0, v1

    const-wide/16 v3, 0xff

    and-long/2addr v1, v3

    .line 160
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v1, 0x2e

    .line 161
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v2, 0x10

    shr-long v5, p0, v2

    and-long/2addr v5, v3

    .line 163
    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 164
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v2, 0x8

    shr-long v5, p0, v2

    and-long/2addr v5, v3

    .line 165
    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 166
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    and-long/2addr p0, v3

    .line 167
    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 168
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static matchAddress(Ljava/util/regex/Matcher;)J
    .locals 6

    const-wide/16 v0, 0x0

    const/4 v2, 0x1

    :goto_0
    const/4 v3, 0x4

    if-gt v2, v3, :cond_0

    .line 393
    invoke-virtual {p0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    rsub-int/lit8 v5, v2, 0x4

    mul-int/lit8 v5, v5, 0x8

    shl-long/2addr v3, v5

    or-long/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-wide v0
.end method
