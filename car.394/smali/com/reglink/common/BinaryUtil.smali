.class public Lcom/reglink/common/BinaryUtil;
.super Ljava/lang/Object;
.source "BinaryUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static byteToInt(B)I
    .locals 0

    and-int/lit16 p0, p0, 0xff

    return p0
.end method

.method public static readThreeByteBE([BI)J
    .locals 7

    .line 42
    aget-byte v0, p0, p1

    int-to-long v0, v0

    const-wide/16 v2, 0xff

    and-long/2addr v0, v2

    const/16 v4, 0x10

    shl-long/2addr v0, v4

    add-int/lit8 v4, p1, 0x1

    .line 43
    aget-byte v4, p0, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x8

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    add-int/lit8 p1, p1, 0x2

    .line 44
    aget-byte p0, p0, p1

    int-to-long p0, p0

    and-long/2addr p0, v2

    or-long/2addr p0, v0

    return-wide p0
.end method

.method public static readUIntBE([BI)J
    .locals 7

    .line 33
    aget-byte v0, p0, p1

    int-to-long v0, v0

    const-wide/16 v2, 0xff

    and-long/2addr v0, v2

    const/16 v4, 0x18

    shl-long/2addr v0, v4

    add-int/lit8 v4, p1, 0x1

    .line 34
    aget-byte v4, p0, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x10

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    add-int/lit8 v4, p1, 0x2

    .line 35
    aget-byte v4, p0, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x8

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    add-int/lit8 p1, p1, 0x3

    .line 36
    aget-byte p0, p0, p1

    int-to-long p0, p0

    and-long/2addr p0, v2

    or-long/2addr p0, v0

    return-wide p0
.end method

.method public static readUIntLE([BI)J
    .locals 4

    .line 70
    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    int-to-long v0, v0

    add-int/lit8 v2, p1, 0x1

    .line 71
    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    int-to-long v2, v2

    or-long/2addr v0, v2

    add-int/lit8 v2, p1, 0x2

    .line 72
    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    int-to-long v2, v2

    or-long/2addr v0, v2

    add-int/lit8 p1, p1, 0x3

    .line 73
    aget-byte p0, p0, p1

    and-int/lit16 p0, p0, 0xff

    shl-int/lit8 p0, p0, 0x18

    int-to-long p0, p0

    or-long/2addr p0, v0

    return-wide p0
.end method

.method public static readUShortBE([BI)I
    .locals 1

    add-int/lit8 v0, p1, 0x0

    .line 51
    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    or-int/lit8 v0, v0, 0x0

    add-int/lit8 p1, p1, 0x1

    .line 52
    aget-byte p0, p0, p1

    and-int/lit16 p0, p0, 0xff

    or-int/2addr p0, v0

    return p0
.end method

.method public static readUShortLE([BI)I
    .locals 1

    add-int/lit8 v0, p1, 0x1

    .line 79
    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    or-int/lit8 v0, v0, 0x0

    add-int/lit8 p1, p1, 0x0

    .line 80
    aget-byte p0, p0, p1

    and-int/lit16 p0, p0, 0xff

    or-int/2addr p0, v0

    return p0
.end method

.method public static writeThreeByteBE([BII)V
    .locals 2

    const/high16 v0, 0xff0000

    and-int/2addr v0, p2

    shr-int/lit8 v0, v0, 0x10

    int-to-byte v0, v0

    .line 24
    aput-byte v0, p0, p1

    add-int/lit8 v0, p1, 0x1

    const v1, 0xff00

    and-int/2addr v1, p2

    shr-int/lit8 v1, v1, 0x8

    int-to-byte v1, v1

    .line 25
    aput-byte v1, p0, v0

    add-int/lit8 p1, p1, 0x2

    and-int/lit16 p2, p2, 0xff

    int-to-byte p2, p2

    .line 26
    aput-byte p2, p0, p1

    return-void
.end method

.method public static writeUIntBE([BIJ)V
    .locals 4

    const-wide/32 v0, -0x1000000

    and-long/2addr v0, p2

    const/16 v2, 0x18

    shr-long/2addr v0, v2

    long-to-int v0, v0

    int-to-byte v0, v0

    .line 12
    aput-byte v0, p0, p1

    add-int/lit8 v0, p1, 0x1

    const-wide/32 v1, 0xff0000

    and-long/2addr v1, p2

    const/16 v3, 0x10

    shr-long/2addr v1, v3

    long-to-int v1, v1

    int-to-byte v1, v1

    .line 13
    aput-byte v1, p0, v0

    add-int/lit8 v0, p1, 0x2

    const-wide/32 v1, 0xff00

    and-long/2addr v1, p2

    const/16 v3, 0x8

    shr-long/2addr v1, v3

    long-to-int v1, v1

    int-to-byte v1, v1

    .line 14
    aput-byte v1, p0, v0

    add-int/lit8 p1, p1, 0x3

    const-wide/16 v0, 0xff

    and-long/2addr p2, v0

    long-to-int p2, p2

    int-to-byte p2, p2

    .line 15
    aput-byte p2, p0, p1

    return-void
.end method

.method public static writeUIntLE([BIJ)V
    .locals 4

    add-int/lit8 v0, p1, 0x3

    const-wide/32 v1, -0x1000000

    and-long/2addr v1, p2

    const/16 v3, 0x18

    shr-long/2addr v1, v3

    long-to-int v1, v1

    int-to-byte v1, v1

    .line 58
    aput-byte v1, p0, v0

    add-int/lit8 v0, p1, 0x2

    const-wide/32 v1, 0xff0000

    and-long/2addr v1, p2

    const/16 v3, 0x10

    shr-long/2addr v1, v3

    long-to-int v1, v1

    int-to-byte v1, v1

    .line 59
    aput-byte v1, p0, v0

    add-int/lit8 v0, p1, 0x1

    const-wide/32 v1, 0xff00

    and-long/2addr v1, p2

    const/16 v3, 0x8

    shr-long/2addr v1, v3

    long-to-int v1, v1

    int-to-byte v1, v1

    .line 60
    aput-byte v1, p0, v0

    add-int/lit8 p1, p1, 0x0

    const-wide/16 v0, 0xff

    and-long/2addr p2, v0

    long-to-int p2, p2

    int-to-byte p2, p2

    .line 61
    aput-byte p2, p0, p1

    return-void
.end method

.method public static writeUShortBE([BII)V
    .locals 1

    int-to-short p2, p2

    const v0, 0xff00

    and-int/2addr v0, p2

    shr-int/lit8 v0, v0, 0x8

    int-to-byte v0, v0

    .line 19
    aput-byte v0, p0, p1

    add-int/lit8 p1, p1, 0x1

    and-int/lit16 p2, p2, 0xff

    int-to-byte p2, p2

    .line 20
    aput-byte p2, p0, p1

    return-void
.end method

.method public static writeUShortLE([BII)V
    .locals 2

    int-to-short p2, p2

    add-int/lit8 v0, p1, 0x1

    const v1, 0xff00

    and-int/2addr v1, p2

    shr-int/lit8 v1, v1, 0x8

    int-to-byte v1, v1

    .line 65
    aput-byte v1, p0, v0

    add-int/lit8 p1, p1, 0x0

    and-int/lit16 p2, p2, 0xff

    int-to-byte p2, p2

    .line 66
    aput-byte p2, p0, p1

    return-void
.end method
