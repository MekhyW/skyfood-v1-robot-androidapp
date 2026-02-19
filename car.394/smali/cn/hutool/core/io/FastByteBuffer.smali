.class public Lcn/hutool/core/io/FastByteBuffer;
.super Ljava/lang/Object;
.source "FastByteBuffer.java"


# instance fields
.field private buffers:[[B

.field private buffersCount:I

.field private currentBuffer:[B

.field private currentBufferIndex:I

.field private final minChunkLen:I

.field private offset:I

.field private size:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/16 v0, 0x400

    .line 43
    invoke-direct {p0, v0}, Lcn/hutool/core/io/FastByteBuffer;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x10

    new-array v0, v0, [[B

    .line 15
    iput-object v0, p0, Lcn/hutool/core/io/FastByteBuffer;->buffers:[[B

    const/4 v0, -0x1

    .line 23
    iput v0, p0, Lcn/hutool/core/io/FastByteBuffer;->currentBufferIndex:I

    if-gtz p1, :cond_0

    const/16 p1, 0x400

    .line 50
    :cond_0
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    iput p1, p0, Lcn/hutool/core/io/FastByteBuffer;->minChunkLen:I

    return-void
.end method

.method private needNewBuffer(I)V
    .locals 3

    .line 59
    iget v0, p0, Lcn/hutool/core/io/FastByteBuffer;->size:I

    sub-int/2addr p1, v0

    .line 60
    iget v0, p0, Lcn/hutool/core/io/FastByteBuffer;->minChunkLen:I

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 62
    iget v0, p0, Lcn/hutool/core/io/FastByteBuffer;->currentBufferIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcn/hutool/core/io/FastByteBuffer;->currentBufferIndex:I

    .line 63
    new-array p1, p1, [B

    iput-object p1, p0, Lcn/hutool/core/io/FastByteBuffer;->currentBuffer:[B

    const/4 p1, 0x0

    .line 64
    iput p1, p0, Lcn/hutool/core/io/FastByteBuffer;->offset:I

    .line 67
    iget-object v1, p0, Lcn/hutool/core/io/FastByteBuffer;->buffers:[[B

    array-length v2, v1

    if-lt v0, v2, :cond_0

    .line 68
    array-length v0, v1

    shl-int/lit8 v0, v0, 0x1

    .line 69
    new-array v0, v0, [[B

    .line 70
    array-length v2, v1

    invoke-static {v1, p1, v0, p1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 71
    iput-object v0, p0, Lcn/hutool/core/io/FastByteBuffer;->buffers:[[B

    .line 73
    :cond_0
    iget-object p1, p0, Lcn/hutool/core/io/FastByteBuffer;->buffers:[[B

    iget v0, p0, Lcn/hutool/core/io/FastByteBuffer;->currentBufferIndex:I

    iget-object v1, p0, Lcn/hutool/core/io/FastByteBuffer;->currentBuffer:[B

    aput-object v1, p1, v0

    .line 74
    iget p1, p0, Lcn/hutool/core/io/FastByteBuffer;->buffersCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcn/hutool/core/io/FastByteBuffer;->buffersCount:I

    return-void
.end method


# virtual methods
.method public append(B)Lcn/hutool/core/io/FastByteBuffer;
    .locals 2

    .line 139
    iget-object v0, p0, Lcn/hutool/core/io/FastByteBuffer;->currentBuffer:[B

    if-eqz v0, :cond_0

    iget v1, p0, Lcn/hutool/core/io/FastByteBuffer;->offset:I

    array-length v0, v0

    if-ne v1, v0, :cond_1

    .line 140
    :cond_0
    iget v0, p0, Lcn/hutool/core/io/FastByteBuffer;->size:I

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcn/hutool/core/io/FastByteBuffer;->needNewBuffer(I)V

    .line 143
    :cond_1
    iget-object v0, p0, Lcn/hutool/core/io/FastByteBuffer;->currentBuffer:[B

    iget v1, p0, Lcn/hutool/core/io/FastByteBuffer;->offset:I

    aput-byte p1, v0, v1

    add-int/lit8 v1, v1, 0x1

    .line 144
    iput v1, p0, Lcn/hutool/core/io/FastByteBuffer;->offset:I

    .line 145
    iget p1, p0, Lcn/hutool/core/io/FastByteBuffer;->size:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcn/hutool/core/io/FastByteBuffer;->size:I

    return-object p0
.end method

.method public append(Lcn/hutool/core/io/FastByteBuffer;)Lcn/hutool/core/io/FastByteBuffer;
    .locals 3

    .line 157
    iget v0, p1, Lcn/hutool/core/io/FastByteBuffer;->size:I

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    .line 160
    :goto_0
    iget v2, p1, Lcn/hutool/core/io/FastByteBuffer;->currentBufferIndex:I

    if-ge v1, v2, :cond_1

    .line 161
    iget-object v2, p1, Lcn/hutool/core/io/FastByteBuffer;->buffers:[[B

    aget-object v2, v2, v1

    invoke-virtual {p0, v2}, Lcn/hutool/core/io/FastByteBuffer;->append([B)Lcn/hutool/core/io/FastByteBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 163
    :cond_1
    iget-object v1, p1, Lcn/hutool/core/io/FastByteBuffer;->currentBuffer:[B

    iget p1, p1, Lcn/hutool/core/io/FastByteBuffer;->offset:I

    invoke-virtual {p0, v1, v0, p1}, Lcn/hutool/core/io/FastByteBuffer;->append([BII)Lcn/hutool/core/io/FastByteBuffer;

    return-object p0
.end method

.method public append([B)Lcn/hutool/core/io/FastByteBuffer;
    .locals 2

    const/4 v0, 0x0

    .line 129
    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcn/hutool/core/io/FastByteBuffer;->append([BII)Lcn/hutool/core/io/FastByteBuffer;

    move-result-object p1

    return-object p1
.end method

.method public append([BII)Lcn/hutool/core/io/FastByteBuffer;
    .locals 5

    add-int v0, p2, p3

    if-ltz p2, :cond_3

    if-ltz p3, :cond_3

    .line 87
    array-length p2, p1

    if-gt v0, p2, :cond_3

    if-nez p3, :cond_0

    return-object p0

    .line 93
    :cond_0
    iget p2, p0, Lcn/hutool/core/io/FastByteBuffer;->size:I

    add-int/2addr p2, p3

    .line 96
    iget-object v1, p0, Lcn/hutool/core/io/FastByteBuffer;->currentBuffer:[B

    if-eqz v1, :cond_1

    .line 98
    array-length v1, v1

    iget v2, p0, Lcn/hutool/core/io/FastByteBuffer;->offset:I

    sub-int/2addr v1, v2

    invoke-static {p3, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    sub-int v2, v0, p3

    .line 99
    iget-object v3, p0, Lcn/hutool/core/io/FastByteBuffer;->currentBuffer:[B

    iget v4, p0, Lcn/hutool/core/io/FastByteBuffer;->offset:I

    invoke-static {p1, v2, v3, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sub-int/2addr p3, v1

    .line 101
    iget v2, p0, Lcn/hutool/core/io/FastByteBuffer;->offset:I

    add-int/2addr v2, v1

    iput v2, p0, Lcn/hutool/core/io/FastByteBuffer;->offset:I

    .line 102
    iget v2, p0, Lcn/hutool/core/io/FastByteBuffer;->size:I

    add-int/2addr v2, v1

    iput v2, p0, Lcn/hutool/core/io/FastByteBuffer;->size:I

    :cond_1
    if-lez p3, :cond_2

    .line 108
    invoke-direct {p0, p2}, Lcn/hutool/core/io/FastByteBuffer;->needNewBuffer(I)V

    .line 112
    iget-object p2, p0, Lcn/hutool/core/io/FastByteBuffer;->currentBuffer:[B

    array-length p2, p2

    iget v1, p0, Lcn/hutool/core/io/FastByteBuffer;->offset:I

    sub-int/2addr p2, v1

    invoke-static {p3, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    sub-int/2addr v0, p3

    .line 113
    iget-object p3, p0, Lcn/hutool/core/io/FastByteBuffer;->currentBuffer:[B

    iget v1, p0, Lcn/hutool/core/io/FastByteBuffer;->offset:I

    invoke-static {p1, v0, p3, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 114
    iget p1, p0, Lcn/hutool/core/io/FastByteBuffer;->offset:I

    add-int/2addr p1, p2

    iput p1, p0, Lcn/hutool/core/io/FastByteBuffer;->offset:I

    .line 115
    iget p1, p0, Lcn/hutool/core/io/FastByteBuffer;->size:I

    add-int/2addr p1, p2

    iput p1, p0, Lcn/hutool/core/io/FastByteBuffer;->size:I

    :cond_2
    return-object p0

    .line 88
    :cond_3
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method public array(I)[B
    .locals 1

    .line 195
    iget-object v0, p0, Lcn/hutool/core/io/FastByteBuffer;->buffers:[[B

    aget-object p1, v0, p1

    return-object p1
.end method

.method public get(I)B
    .locals 3

    .line 274
    iget v0, p0, Lcn/hutool/core/io/FastByteBuffer;->size:I

    if-ge p1, v0, :cond_1

    if-ltz p1, :cond_1

    const/4 v0, 0x0

    .line 279
    :goto_0
    iget-object v1, p0, Lcn/hutool/core/io/FastByteBuffer;->buffers:[[B

    aget-object v1, v1, v0

    .line 280
    array-length v2, v1

    if-ge p1, v2, :cond_0

    .line 281
    aget-byte p1, v1, p1

    return p1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 284
    array-length v1, v1

    sub-int/2addr p1, v1

    goto :goto_0

    .line 275
    :cond_1
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method public index()I
    .locals 1

    .line 181
    iget v0, p0, Lcn/hutool/core/io/FastByteBuffer;->currentBufferIndex:I

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 172
    iget v0, p0, Lcn/hutool/core/io/FastByteBuffer;->size:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public offset()I
    .locals 1

    .line 185
    iget v0, p0, Lcn/hutool/core/io/FastByteBuffer;->offset:I

    return v0
.end method

.method public reset()V
    .locals 2

    const/4 v0, 0x0

    .line 199
    iput v0, p0, Lcn/hutool/core/io/FastByteBuffer;->size:I

    .line 200
    iput v0, p0, Lcn/hutool/core/io/FastByteBuffer;->offset:I

    const/4 v1, -0x1

    .line 201
    iput v1, p0, Lcn/hutool/core/io/FastByteBuffer;->currentBufferIndex:I

    const/4 v1, 0x0

    .line 202
    iput-object v1, p0, Lcn/hutool/core/io/FastByteBuffer;->currentBuffer:[B

    .line 203
    iput v0, p0, Lcn/hutool/core/io/FastByteBuffer;->buffersCount:I

    return-void
.end method

.method public size()I
    .locals 1

    .line 168
    iget v0, p0, Lcn/hutool/core/io/FastByteBuffer;->size:I

    return v0
.end method

.method public toArray()[B
    .locals 6

    .line 213
    iget v0, p0, Lcn/hutool/core/io/FastByteBuffer;->size:I

    new-array v0, v0, [B

    .line 215
    iget v1, p0, Lcn/hutool/core/io/FastByteBuffer;->currentBufferIndex:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    return-object v0

    :cond_0
    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    .line 219
    :goto_0
    iget v4, p0, Lcn/hutool/core/io/FastByteBuffer;->currentBufferIndex:I

    if-ge v2, v4, :cond_1

    .line 220
    iget-object v4, p0, Lcn/hutool/core/io/FastByteBuffer;->buffers:[[B

    aget-object v4, v4, v2

    array-length v5, v4

    .line 221
    invoke-static {v4, v1, v0, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v3, v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 225
    :cond_1
    iget-object v2, p0, Lcn/hutool/core/io/FastByteBuffer;->buffers:[[B

    aget-object v2, v2, v4

    iget v4, p0, Lcn/hutool/core/io/FastByteBuffer;->offset:I

    invoke-static {v2, v1, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public toArray(II)[B
    .locals 6

    .line 240
    new-array v0, p2, [B

    if-nez p2, :cond_0

    return-object v0

    :cond_0
    const/4 v1, 0x0

    move v2, v1

    .line 247
    :goto_0
    iget-object v3, p0, Lcn/hutool/core/io/FastByteBuffer;->buffers:[[B

    aget-object v3, v3, v2

    array-length v4, v3

    if-lt p1, v4, :cond_1

    .line 248
    array-length v3, v3

    sub-int/2addr p1, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    move v3, v1

    .line 252
    :goto_1
    iget v4, p0, Lcn/hutool/core/io/FastByteBuffer;->buffersCount:I

    if-ge v2, v4, :cond_3

    .line 253
    iget-object v4, p0, Lcn/hutool/core/io/FastByteBuffer;->buffers:[[B

    aget-object v4, v4, v2

    .line 254
    array-length v5, v4

    sub-int/2addr v5, p1

    invoke-static {v5, p2}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 255
    invoke-static {v4, p1, v0, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v3, v5

    sub-int/2addr p2, v5

    if-nez p2, :cond_2

    goto :goto_2

    :cond_2
    add-int/lit8 v2, v2, 0x1

    move p1, v1

    goto :goto_1

    :cond_3
    :goto_2
    return-object v0
.end method
