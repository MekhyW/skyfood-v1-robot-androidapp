.class public final Lcom/autoai/research/jtools/security/CRCUtils;
.super Ljava/lang/Object;
.source "CRCUtils.java"


# static fields
.field private static final CRCSEED:I = 0x810

.field private static final MASK:I = 0x1


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static calcCRC([BII)I
    .locals 0

    add-int/2addr p2, p1

    .line 107
    invoke-static {p0, p1, p2}, Lcom/autoai/research/jtools/security/CRCUtils;->getRemain([BII)I

    move-result p0

    return p0
.end method

.method private static getBytesByindex([BII)[B
    .locals 3

    sub-int/2addr p2, p1

    add-int/lit8 p2, p2, 0x1

    .line 84
    new-array v0, p2, [B

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_0

    add-int v2, p1, v1

    .line 87
    aget-byte v2, p0, v2

    aput-byte v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private static getRemain([BII)I
    .locals 5

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge p1, p2, :cond_2

    .line 58
    aget-byte v2, p0, p1

    move v3, v0

    :goto_1
    const/16 v4, 0x8

    if-ge v3, v4, :cond_1

    xor-int v4, v2, v1

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_0

    xor-int/lit16 v1, v1, 0x810

    shr-int/lit8 v1, v1, 0x1

    const v4, 0x8000

    or-int/2addr v1, v4

    goto :goto_2

    :cond_0
    shr-int/lit8 v1, v1, 0x1

    :goto_2
    shr-int/lit8 v2, v2, 0x1

    int-to-byte v2, v2

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method public static isPassCRC([BI)Z
    .locals 4

    .line 121
    array-length v0, p0

    sub-int/2addr v0, p1

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lcom/autoai/research/jtools/security/CRCUtils;->calcCRC([BII)I

    move-result v0

    .line 124
    array-length v2, p0

    sub-int/2addr v2, p1

    array-length p1, p0

    const/4 v3, 0x1

    sub-int/2addr p1, v3

    invoke-static {p0, v2, p1}, Lcom/autoai/research/jtools/security/CRCUtils;->getBytesByindex([BII)[B

    move-result-object p0

    invoke-static {p0}, Lcom/autoai/research/jtools/security/CRCUtils;->toInt([B)I

    move-result p0

    if-ne v0, p0, :cond_0

    move v1, v3

    :cond_0
    return v1
.end method

.method public static setParamCRC([B)[B
    .locals 4

    .line 43
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lcom/autoai/research/jtools/security/CRCUtils;->getRemain([BII)I

    move-result v0

    const/4 v2, 0x2

    new-array v2, v2, [B

    shr-int/lit8 v3, v0, 0x8

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v2, v1

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    const/4 v3, 0x1

    aput-byte v0, v2, v3

    new-array v0, v3, [[B

    aput-object v2, v0, v1

    .line 50
    invoke-static {p0, v0}, Lcom/autoai/research/jtools/math/NumberUtils;->concatArray([B[[B)[B

    move-result-object p0

    return-object p0
.end method

.method private static toInt([B)I
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x4

    .line 138
    invoke-static {p0, v0, v1}, Lcom/autoai/research/jtools/security/CRCUtils;->toInt([BII)I

    move-result p0

    return p0
.end method

.method private static toInt([BII)I
    .locals 4

    const/4 v0, 0x0

    .line 152
    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    const/4 v1, 0x4

    .line 153
    invoke-static {p2, v1}, Ljava/lang/Math;->min(II)I

    move-result p2

    move v1, v0

    :goto_0
    if-ge v0, p2, :cond_0

    add-int v2, v0, p1

    .line 154
    array-length v3, p0

    if-ge v2, v3, :cond_0

    shl-int/lit8 v1, v1, 0x8

    .line 157
    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v1
.end method
