.class public Lcom/reglink/parcel/RlBuffer;
.super Ljava/lang/Object;
.source "RlBuffer.java"


# instance fields
.field private bigEndian:Z

.field protected bytes:[B


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 11
    iput-boolean v0, p0, Lcom/reglink/parcel/RlBuffer;->bigEndian:Z

    return-void
.end method

.method private checkBounds(II)V
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/reglink/parcel/RlBuffer;->bytes:[B

    add-int/2addr p2, p1

    invoke-static {v0, p1, p2}, Lcom/reglink/common/ByteArrayHelper;->checkStartAndEnd([BII)V

    return-void
.end method


# virtual methods
.method public allocate(I)V
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/reglink/parcel/RlBuffer;->bytes:[B

    if-eqz v0, :cond_0

    array-length v0, v0

    if-ge v0, p1, :cond_1

    .line 22
    :cond_0
    new-array p1, p1, [B

    iput-object p1, p0, Lcom/reglink/parcel/RlBuffer;->bytes:[B

    :cond_1
    return-void
.end method

.method public cap()I
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/reglink/parcel/RlBuffer;->bytes:[B

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 27
    :cond_0
    array-length v0, v0

    return v0
.end method

.method public copy()[B
    .locals 2

    .line 63
    iget-object v0, p0, Lcom/reglink/parcel/RlBuffer;->bytes:[B

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const/4 v1, 0x0

    .line 64
    array-length v0, v0

    invoke-virtual {p0, v1, v0}, Lcom/reglink/parcel/RlBuffer;->slice(II)[B

    move-result-object v0

    return-object v0
.end method

.method public getSignedByte(I)I
    .locals 1

    const/4 v0, 0x1

    .line 39
    invoke-direct {p0, p1, v0}, Lcom/reglink/parcel/RlBuffer;->checkBounds(II)V

    .line 40
    iget-object v0, p0, Lcom/reglink/parcel/RlBuffer;->bytes:[B

    aget-byte p1, v0, p1

    return p1
.end method

.method public getUByte(I)I
    .locals 1

    const/4 v0, 0x1

    .line 34
    invoke-direct {p0, p1, v0}, Lcom/reglink/parcel/RlBuffer;->checkBounds(II)V

    .line 35
    iget-object v0, p0, Lcom/reglink/parcel/RlBuffer;->bytes:[B

    aget-byte p1, v0, p1

    and-int/lit16 p1, p1, 0xff

    return p1
.end method

.method public getUInt(I)J
    .locals 2

    const/4 v0, 0x4

    .line 53
    invoke-direct {p0, p1, v0}, Lcom/reglink/parcel/RlBuffer;->checkBounds(II)V

    .line 54
    iget-boolean v0, p0, Lcom/reglink/parcel/RlBuffer;->bigEndian:Z

    if-eqz v0, :cond_0

    .line 55
    iget-object v0, p0, Lcom/reglink/parcel/RlBuffer;->bytes:[B

    invoke-static {v0, p1}, Lcom/reglink/common/BinaryUtil;->readUIntBE([BI)J

    move-result-wide v0

    return-wide v0

    .line 57
    :cond_0
    iget-object v0, p0, Lcom/reglink/parcel/RlBuffer;->bytes:[B

    invoke-static {v0, p1}, Lcom/reglink/common/BinaryUtil;->readUIntLE([BI)J

    move-result-wide v0

    return-wide v0
.end method

.method public getUShort(I)I
    .locals 1

    const/4 v0, 0x2

    .line 44
    invoke-direct {p0, p1, v0}, Lcom/reglink/parcel/RlBuffer;->checkBounds(II)V

    .line 45
    iget-boolean v0, p0, Lcom/reglink/parcel/RlBuffer;->bigEndian:Z

    if-eqz v0, :cond_0

    .line 46
    iget-object v0, p0, Lcom/reglink/parcel/RlBuffer;->bytes:[B

    invoke-static {v0, p1}, Lcom/reglink/common/BinaryUtil;->readUShortBE([BI)I

    move-result p1

    return p1

    .line 48
    :cond_0
    iget-object v0, p0, Lcom/reglink/parcel/RlBuffer;->bytes:[B

    invoke-static {v0, p1}, Lcom/reglink/common/BinaryUtil;->readUShortLE([BI)I

    move-result p1

    return p1
.end method

.method protected initBytes([B)V
    .locals 2

    const/4 v0, 0x0

    .line 13
    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/reglink/parcel/RlBuffer;->initBytes([BII)V

    return-void
.end method

.method protected initBytes([BII)V
    .locals 2

    .line 16
    invoke-virtual {p0, p3}, Lcom/reglink/parcel/RlBuffer;->allocate(I)V

    .line 17
    iget-object v0, p0, Lcom/reglink/parcel/RlBuffer;->bytes:[B

    const/4 v1, 0x0

    invoke-static {p1, p2, v0, v1, p3}, Lcom/reglink/common/ByteArrayHelper;->bytesCopy([BI[BII)V

    return-void
.end method

.method public isBigEndian()Z
    .locals 1

    .line 76
    iget-boolean v0, p0, Lcom/reglink/parcel/RlBuffer;->bigEndian:Z

    return v0
.end method

.method public isLittleEndian()Z
    .locals 1

    .line 80
    invoke-virtual {p0}, Lcom/reglink/parcel/RlBuffer;->isBigEndian()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public setBigEndian()V
    .locals 1

    const/4 v0, 0x1

    .line 84
    iput-boolean v0, p0, Lcom/reglink/parcel/RlBuffer;->bigEndian:Z

    return-void
.end method

.method public setLittleEndian()V
    .locals 1

    const/4 v0, 0x0

    .line 88
    iput-boolean v0, p0, Lcom/reglink/parcel/RlBuffer;->bigEndian:Z

    return-void
.end method

.method public slice(II)[B
    .locals 3

    .line 68
    iget-object v0, p0, Lcom/reglink/parcel/RlBuffer;->bytes:[B

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 69
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/reglink/parcel/RlBuffer;->checkBounds(II)V

    .line 70
    new-array v0, p2, [B

    .line 71
    iget-object v1, p0, Lcom/reglink/parcel/RlBuffer;->bytes:[B

    const/4 v2, 0x0

    invoke-static {v1, p1, v0, v2, p2}, Lcom/reglink/common/ByteArrayHelper;->bytesCopy([BI[BII)V

    return-object v0
.end method
