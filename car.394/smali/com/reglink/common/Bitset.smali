.class public Lcom/reglink/common/Bitset;
.super Ljava/lang/Object;
.source "Bitset.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static hiByte(I)I
    .locals 0

    and-int/lit16 p0, p0, 0xf0

    shr-int/lit8 p0, p0, 0x4

    return p0
.end method

.method public static isHiByteEqu(II)Z
    .locals 0

    and-int/lit16 p0, p0, 0xf0

    shr-int/lit8 p0, p0, 0x4

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isLoByteEqu(II)Z
    .locals 0

    and-int/lit8 p0, p0, 0xf

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isSet(II)Z
    .locals 1

    const/4 v0, 0x1

    shl-int p1, v0, p1

    and-int/2addr p0, p1

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static loByte(I)I
    .locals 0

    and-int/lit8 p0, p0, 0xf

    return p0
.end method

.method public static set(II)I
    .locals 1

    const/4 v0, 0x1

    shl-int p1, v0, p1

    or-int/2addr p0, p1

    return p0
.end method

.method public static set(IIZ)I
    .locals 0

    if-eqz p2, :cond_0

    .line 23
    invoke-static {p0, p1}, Lcom/reglink/common/Bitset;->set(II)I

    move-result p0

    return p0

    .line 24
    :cond_0
    invoke-static {p0, p1}, Lcom/reglink/common/Bitset;->unset(II)I

    move-result p0

    return p0
.end method

.method public static unset(II)I
    .locals 1

    const/4 v0, 0x1

    shl-int p1, v0, p1

    not-int p1, p1

    and-int/2addr p0, p1

    return p0
.end method
