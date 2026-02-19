.class public Lcom/reglink/common/ByteArrayHelper;
.super Ljava/lang/Object;
.source "ByteArrayHelper.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bytesCopy([BI[BII)V
    .locals 0

    .line 13
    invoke-static {p0, p1, p2, p3, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public static checkStartAndEnd([BII)V
    .locals 0

    if-eqz p0, :cond_2

    if-gt p1, p2, :cond_1

    if-ltz p1, :cond_0

    .line 21
    array-length p0, p0

    if-gt p2, p0, :cond_0

    return-void

    .line 22
    :cond_0
    new-instance p0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {p0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw p0

    .line 19
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    .line 17
    :cond_2
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "array is null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static indexNullString([BII)I
    .locals 1

    .line 78
    invoke-static {p0, p1, p2}, Lcom/reglink/common/ByteArrayHelper;->checkStartAndEnd([BII)V

    :goto_0
    if-ge p1, p2, :cond_1

    .line 80
    aget-byte v0, p0, p1

    if-nez v0, :cond_0

    return p1

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public static indexOf([BIB)I
    .locals 3

    .line 49
    array-length v0, p0

    const/4 v1, 0x1

    new-array v1, v1, [B

    const/4 v2, 0x0

    aput-byte p2, v1, v2

    invoke-static {p0, p1, v0, v1}, Lcom/reglink/common/ByteArrayHelper;->indexOf([BII[B)I

    move-result p0

    return p0
.end method

.method public static indexOf([BIIB)I
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [B

    const/4 v1, 0x0

    aput-byte p3, v0, v1

    .line 52
    invoke-static {p0, p1, p2, v0}, Lcom/reglink/common/ByteArrayHelper;->indexOf([BII[B)I

    move-result p0

    return p0
.end method

.method public static indexOf([BIILjava/lang/String;)I
    .locals 0

    .line 46
    invoke-virtual {p3}, Ljava/lang/String;->getBytes()[B

    move-result-object p3

    invoke-static {p0, p1, p2, p3}, Lcom/reglink/common/ByteArrayHelper;->indexOf([BII[B)I

    move-result p0

    return p0
.end method

.method public static indexOf([BII[B)I
    .locals 5

    .line 27
    invoke-static {p0, p1, p2}, Lcom/reglink/common/ByteArrayHelper;->checkStartAndEnd([BII)V

    .line 28
    array-length v0, p3

    :goto_0
    const/4 v1, -0x1

    if-ge p1, p2, :cond_4

    sub-int v2, p2, p1

    if-ge v2, v0, :cond_0

    return v1

    :cond_0
    const/4 v1, 0x0

    move v2, v1

    :goto_1
    if-ge v2, v0, :cond_2

    .line 33
    aget-byte v3, p3, v2

    add-int v4, p1, v2

    aget-byte v4, p0, v4

    if-eq v3, v4, :cond_1

    goto :goto_2

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    const/4 v1, 0x1

    :goto_2
    if-eqz v1, :cond_3

    return p1

    :cond_3
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_4
    return v1
.end method

.method public static indexOf([BI[B)I
    .locals 1

    .line 55
    array-length v0, p0

    invoke-static {p0, p1, v0, p2}, Lcom/reglink/common/ByteArrayHelper;->indexOf([BII[B)I

    move-result p0

    return p0
.end method

.method public static indexOf([B[B)I
    .locals 2

    const/4 v0, 0x0

    .line 43
    array-length v1, p0

    invoke-static {p0, v0, v1, p1}, Lcom/reglink/common/ByteArrayHelper;->indexOf([BII[B)I

    move-result p0

    return p0
.end method

.method public static slice([BII)[B
    .locals 2

    .line 63
    invoke-static {p0, p1, p2}, Lcom/reglink/common/ByteArrayHelper;->checkStartAndEnd([BII)V

    sub-int/2addr p2, p1

    .line 64
    new-array v0, p2, [B

    const/4 v1, 0x0

    .line 65
    invoke-static {p0, p1, v0, v1, p2}, Lcom/reglink/common/ByteArrayHelper;->bytesCopy([BI[BII)V

    return-object v0
.end method

.method public static sliceWithSize([BII)[B
    .locals 0

    add-int/2addr p2, p1

    .line 59
    invoke-static {p0, p1, p2}, Lcom/reglink/common/ByteArrayHelper;->slice([BII)[B

    move-result-object p0

    return-object p0
.end method

.method public static subString([BII)Ljava/lang/String;
    .locals 1

    .line 70
    invoke-static {p0, p1, p2}, Lcom/reglink/common/ByteArrayHelper;->checkStartAndEnd([BII)V

    .line 71
    new-instance v0, Ljava/lang/String;

    sub-int/2addr p2, p1

    invoke-direct {v0, p0, p1, p2}, Ljava/lang/String;-><init>([BII)V

    return-object v0
.end method

.method public static subStringCount([BII)Ljava/lang/String;
    .locals 0

    add-int/2addr p2, p1

    .line 74
    invoke-static {p0, p1, p2}, Lcom/reglink/common/ByteArrayHelper;->subString([BII)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static toCString([B)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    .line 86
    array-length v1, p0

    invoke-static {p0, v0, v1}, Lcom/reglink/common/ByteArrayHelper;->toCString([BII)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static toCString([BII)Ljava/lang/String;
    .locals 1

    .line 91
    invoke-static {p0, p1, p2}, Lcom/reglink/common/ByteArrayHelper;->indexNullString([BII)I

    move-result p2

    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    .line 93
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0, p1, p2}, Ljava/lang/String;-><init>([BII)V

    return-object v0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method
