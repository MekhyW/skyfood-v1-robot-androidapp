.class public Lcn/hutool/core/img/gif/AnimatedGifEncoder;
.super Ljava/lang/Object;
.source "AnimatedGifEncoder.java"


# instance fields
.field protected background:Ljava/awt/Color;

.field protected closeStream:Z

.field protected colorDepth:I

.field protected colorTab:[B

.field protected delay:I

.field protected dispose:I

.field protected firstFrame:Z

.field protected height:I

.field protected image:Ljava/awt/image/BufferedImage;

.field protected indexedPixels:[B

.field protected out:Ljava/io/OutputStream;

.field protected palSize:I

.field protected pixels:[B

.field protected repeat:I

.field protected sample:I

.field protected sizeSet:Z

.field protected started:Z

.field protected transIndex:I

.field protected transparent:Ljava/awt/Color;

.field protected transparentExactMatch:Z

.field protected usedEntry:[Z

.field protected width:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 36
    iput-object v0, p0, Lcn/hutool/core/img/gif/AnimatedGifEncoder;->transparent:Ljava/awt/Color;

    const/4 v1, 0x0

    .line 37
    iput-boolean v1, p0, Lcn/hutool/core/img/gif/AnimatedGifEncoder;->transparentExactMatch:Z

    .line 39
    iput-object v0, p0, Lcn/hutool/core/img/gif/AnimatedGifEncoder;->background:Ljava/awt/Color;

    const/4 v0, -0x1

    .line 41
    iput v0, p0, Lcn/hutool/core/img/gif/AnimatedGifEncoder;->repeat:I

    .line 42
    iput v1, p0, Lcn/hutool/core/img/gif/AnimatedGifEncoder;->delay:I

    .line 43
    iput-boolean v1, p0, Lcn/hutool/core/img/gif/AnimatedGifEncoder;->started:Z

    const/16 v2, 0x100

    new-array v2, v2, [Z

    .line 50
    iput-object v2, p0, Lcn/hutool/core/img/gif/AnimatedGifEncoder;->usedEntry:[Z

    const/4 v2, 0x7

    .line 51
    iput v2, p0, Lcn/hutool/core/img/gif/AnimatedGifEncoder;->palSize:I

    .line 52
    iput v0, p0, Lcn/hutool/core/img/gif/AnimatedGifEncoder;->dispose:I

    .line 53
    iput-boolean v1, p0, Lcn/hutool/core/img/gif/AnimatedGifEncoder;->closeStream:Z

    const/4 v0, 0x1

    .line 54
    iput-boolean v0, p0, Lcn/hutool/core/img/gif/AnimatedGifEncoder;->firstFrame:Z

    .line 55
    iput-boolean v1, p0, Lcn/hutool/core/img/gif/AnimatedGifEncoder;->sizeSet:Z

    const/16 v0, 0xa

    .line 56
    iput v0, p0, Lcn/hutool/core/img/gif/AnimatedGifEncoder;->sample:I

    return-void
.end method


# virtual methods
.method public addFrame(Ljava/awt/image/BufferedImage;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    .line 159
    iget-boolean v1, p0, Lcn/hutool/core/img/gif/AnimatedGifEncoder;->started:Z

    if-nez v1, :cond_0

    goto :goto_0

    .line 164
    :cond_0
    :try_start_0
    iget-boolean v1, p0, Lcn/hutool/core/img/gif/AnimatedGifEncoder;->sizeSet:Z

    if-nez v1, :cond_1

    .line 166
    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getHeight()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcn/hutool/core/img/gif/AnimatedGifEncoder;->setSize(II)V

    .line 168
    :cond_1
    iput-object p1, p0, Lcn/hutool/core/img/gif/AnimatedGifEncoder;->image:Ljava/awt/image/BufferedImage;

    .line 169
    invoke-virtual {p0}, Lcn/hutool/core/img/gif/AnimatedGifEncoder;->getImagePixels()V

    .line 170
    invoke-virtual {p0}, Lcn/hutool/core/img/gif/AnimatedGifEncoder;->analyzePixels()V

    .line 171
    iget-boolean p1, p0, Lcn/hutool/core/img/gif/AnimatedGifEncoder;->firstFrame:Z

    if-eqz p1, :cond_2

    .line 172
    invoke-virtual {p0}, Lcn/hutool/core/img/gif/AnimatedGifEncoder;->writeLSD()V

    .line 173
    invoke-virtual {p0}, Lcn/hutool/core/img/gif/AnimatedGifEncoder;->writePalette()V

    .line 174
    iget p1, p0, Lcn/hutool/core/img/gif/AnimatedGifEncoder;->repeat:I

    if-ltz p1, :cond_2

    .line 176
    invoke-virtual {p0}, Lcn/hutool/core/img/gif/AnimatedGifEncoder;->writeNetscapeExt()V

    .line 179
    :cond_2
    invoke-virtual {p0}, Lcn/hutool/core/img/gif/AnimatedGifEncoder;->writeGraphicCtrlExt()V

    .line 180
    invoke-virtual {p0}, Lcn/hutool/core/img/gif/AnimatedGifEncoder;->writeImageDesc()V

    .line 181
    iget-boolean p1, p0, Lcn/hutool/core/img/gif/AnimatedGifEncoder;->firstFrame:Z

    if-nez p1, :cond_3

    .line 182
    invoke-virtual {p0}, Lcn/hutool/core/img/gif/AnimatedGifEncoder;->writePalette()V

    .line 184
    :cond_3
    invoke-virtual {p0}, Lcn/hutool/core/img/gif/AnimatedGifEncoder;->writePixels()V

    .line 185
    iput-boolean v0, p0, Lcn/hutool/core/img/gif/AnimatedGifEncoder;->firstFrame:Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    :catch_0
    :cond_4
    :goto_0
    return v0
.end method

.method protected analyzePixels()V
    .locals 8

    .line 317
    iget-object v0, p0, Lcn/hutool/core/img/gif/AnimatedGifEncoder;->pixels:[B

    array-length v0, v0

    .line 318
    div-int/lit8 v1, v0, 0x3

    .line 319
    new-array v2, v1, [B

    iput-object v2, p0, Lcn/hutool/core/img/gif/AnimatedGifEncoder;->indexedPixels:[B

    .line 320
    new-instance v2, Lcn/hutool/core/img/gif/NeuQuant;

    iget-object v3, p0, Lcn/hutool/core/img/gif/AnimatedGifEncoder;->pixels:[B

    iget v4, p0, Lcn/hutool/core/img/gif/AnimatedGifEncoder;->sample:I

    invoke-direct {v2, v3, v0, v4}, Lcn/hutool/core/img/gif/NeuQuant;-><init>([BII)V

    .line 322
    invoke-virtual {v2}, Lcn/hutool/core/img/gif/NeuQuant;->process()[B

    move-result-object v0

    iput-object v0, p0, Lcn/hutool/core/img/gif/AnimatedGifEncoder;->colorTab:[B

    const/4 v0, 0x0

    move v3, v0

    .line 324
    :goto_0
    iget-object v4, p0, Lcn/hutool/core/img/gif/AnimatedGifEncoder;->colorTab:[B

    array-length v5, v4

    if-ge v3, v5, :cond_0

    .line 325
    aget-byte v5, v4, v3

    add-int/lit8 v6, v3, 0x2

    .line 326
    aget-byte v7, v4, v6

    aput-byte v7, v4, v3

    .line 327
    aput-byte v5, v4, v6

    .line 328
    iget-object v4, p0, Lcn/hutool/core/img/gif/AnimatedGifEncoder;->usedEntry:[Z

    div-int/lit8 v5, v3, 0x3

    aput-boolean v0, v4, v5

    add-int/lit8 v3, v3, 0x3

    goto :goto_0

    :cond_0
    move v3, v0

    :goto_1
    if-ge v0, v1, :cond_1

    .line 333
    iget-object v4, p0, Lcn/hutool/core/img/gif/AnimatedGifEncoder;->pixels:[B

    add-int/lit8 v5, v3, 0x1

    aget-byte v3, v4, v3

    and-int/lit16 v3, v3, 0xff

    add-int/lit8 v6, v5, 0x1

    aget-byte v5, v4, v5

    and-int/lit16 v5, v5, 0xff

    add-int/lit8 v7, v6, 0x1

    aget-byte v4, v4, v6

    and-int/lit16 v4, v4, 0xff

    .line 334
    invoke-virtual {v2, v3, v5, v4}, Lcn/hutool/core/img/gif/NeuQuant;->map(III)I

    move-result v3

    .line 337
    iget-object v4, p0, Lcn/hutool/core/img/gif/AnimatedGifEncoder;->usedEntry:[Z

    const/4 v5, 0x1

    aput-boolean v5, v4, v3

    .line 338
    iget-object v4, p0, Lcn/hutool/core/img/gif/AnimatedGifEncoder;->indexedPixels:[B

    int-to-byte v3, v3

    aput-byte v3, v4, v0

    add-int/lit8 v0, v0, 0x1

    move v3, v7

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    .line 340
    iput-object v0, p0, Lcn/hutool/core/img/gif/AnimatedGifEncoder;->pixels:[B

    const/16 v0, 0x8

    .line 341
    iput v0, p0, Lcn/hutool/core/img/gif/AnimatedGifEncoder;->colorDepth:I

    const/4 v0, 0x7

    .line 342
    iput v0, p0, Lcn/hutool/core/img/gif/AnimatedGifEncoder;->palSize:I

    .line 344
    iget-object v0, p0, Lcn/hutool/core/img/gif/AnimatedGifEncoder;->transparent:Ljava/awt/Color;

    if-eqz v0, :cond_3

    .line 345
    iget-boolean v1, p0, Lcn/hutool/core/img/gif/AnimatedGifEncoder;->transparentExactMatch:Z

    if-eqz v1, :cond_2

    invoke-virtual {p0, v0}, Lcn/hutool/core/img/gif/AnimatedGifEncoder;->findExact(Ljava/awt/Color;)I

    move-result v0

    goto :goto_2

    :cond_2
    invoke-virtual {p0, v0}, Lcn/hutool/core/img/gif/AnimatedGifEncoder;->findClosest(Ljava/awt/Color;)I

    move-result v0

    :goto_2
    iput v0, p0, Lcn/hutool/core/img/gif/AnimatedGifEncoder;->transIndex:I

    :cond_3
    return-void
.end method

.method protected findClosest(Ljava/awt/Color;)I
    .locals 9

    .line 356
    iget-object v0, p0, Lcn/hutool/core/img/gif/AnimatedGifEncoder;->colorTab:[B

    if-nez v0, :cond_0

    const/4 p1, -0x1

    return p1

    .line 357
    :cond_0
    invoke-virtual {p1}, Ljava/awt/Color;->getRed()I

    move-result v0

    .line 358
    invoke-virtual {p1}, Ljava/awt/Color;->getGreen()I

    move-result v1

    .line 359
    invoke-virtual {p1}, Ljava/awt/Color;->getBlue()I

    move-result p1

    .line 362
    iget-object v2, p0, Lcn/hutool/core/img/gif/AnimatedGifEncoder;->colorTab:[B

    array-length v2, v2

    const/4 v3, 0x0

    const/high16 v4, 0x1000000

    move v5, v4

    move v4, v3

    :goto_0
    if-ge v3, v2, :cond_2

    .line 364
    iget-object v6, p0, Lcn/hutool/core/img/gif/AnimatedGifEncoder;->colorTab:[B

    add-int/lit8 v7, v3, 0x1

    aget-byte v3, v6, v3

    and-int/lit16 v3, v3, 0xff

    sub-int v3, v0, v3

    add-int/lit8 v8, v7, 0x1

    .line 365
    aget-byte v7, v6, v7

    and-int/lit16 v7, v7, 0xff

    sub-int v7, v1, v7

    .line 366
    aget-byte v6, v6, v8

    and-int/lit16 v6, v6, 0xff

    sub-int v6, p1, v6

    mul-int/2addr v3, v3

    mul-int/2addr v7, v7

    add-int/2addr v3, v7

    mul-int/2addr v6, v6

    add-int/2addr v3, v6

    .line 368
    div-int/lit8 v6, v8, 0x3

    .line 369
    iget-object v7, p0, Lcn/hutool/core/img/gif/AnimatedGifEncoder;->usedEntry:[Z

    aget-boolean v7, v7, v6

    if-eqz v7, :cond_1

    if-ge v3, v5, :cond_1

    move v5, v3

    move v4, v6

    :cond_1
    add-int/lit8 v3, v8, 0x1

    goto :goto_0

    :cond_2
    return v4
.end method

.method protected findExact(Ljava/awt/Color;)I
    .locals 8

    .line 397
    iget-object v0, p0, Lcn/hutool/core/img/gif/AnimatedGifEncoder;->colorTab:[B

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    .line 401
    :cond_0
    invoke-virtual {p1}, Ljava/awt/Color;->getRed()I

    move-result v0

    .line 402
    invoke-virtual {p1}, Ljava/awt/Color;->getGreen()I

    move-result v2

    .line 403
    invoke-virtual {p1}, Ljava/awt/Color;->getBlue()I

    move-result p1

    .line 404
    iget-object v3, p0, Lcn/hutool/core/img/gif/AnimatedGifEncoder;->colorTab:[B

    array-length v3, v3

    div-int/lit8 v3, v3, 0x3

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_2

    mul-int/lit8 v5, v4, 0x3

    .line 408
    iget-object v6, p0, Lcn/hutool/core/img/gif/AnimatedGifEncoder;->usedEntry:[Z

    aget-boolean v6, v6, v4

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcn/hutool/core/img/gif/AnimatedGifEncoder;->colorTab:[B

    aget-byte v7, v6, v5

    and-int/lit16 v7, v7, 0xff

    if-ne v0, v7, :cond_1

    add-int/lit8 v7, v5, 0x1

    aget-byte v7, v6, v7

    and-int/lit16 v7, v7, 0xff

    if-ne v2, v7, :cond_1

    add-int/lit8 v5, v5, 0x2

    aget-byte v5, v6, v5

    and-int/lit16 v5, v5, 0xff

    if-ne p1, v5, :cond_1

    return v4

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method public finish()Z
    .locals 4

    .line 201
    iget-boolean v0, p0, Lcn/hutool/core/img/gif/AnimatedGifEncoder;->started:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 203
    :cond_0
    iput-boolean v1, p0, Lcn/hutool/core/img/gif/AnimatedGifEncoder;->started:Z

    const/4 v0, 0x1

    .line 205
    :try_start_0
    iget-object v2, p0, Lcn/hutool/core/img/gif/AnimatedGifEncoder;->out:Ljava/io/OutputStream;

    const/16 v3, 0x3b

    invoke-virtual {v2, v3}, Ljava/io/OutputStream;->write(I)V

    .line 206
    iget-object v2, p0, Lcn/hutool/core/img/gif/AnimatedGifEncoder;->out:Ljava/io/OutputStream;

    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V

    .line 207
    iget-boolean v2, p0, Lcn/hutool/core/img/gif/AnimatedGifEncoder;->closeStream:Z

    if-eqz v2, :cond_1

    .line 208
    iget-object v2, p0, Lcn/hutool/core/img/gif/AnimatedGifEncoder;->out:Ljava/io/OutputStream;

    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    move v2, v0

    goto :goto_0

    :catch_0
    move v2, v1

    .line 215
    :goto_0
    iput v1, p0, Lcn/hutool/core/img/gif/AnimatedGifEncoder;->transIndex:I

    const/4 v3, 0x0

    .line 216
    iput-object v3, p0, Lcn/hutool/core/img/gif/AnimatedGifEncoder;->out:Ljava/io/OutputStream;

    .line 217
    iput-object v3, p0, Lcn/hutool/core/img/gif/AnimatedGifEncoder;->image:Ljava/awt/image/BufferedImage;

    .line 218
    iput-object v3, p0, Lcn/hutool/core/img/gif/AnimatedGifEncoder;->pixels:[B

    .line 219
    iput-object v3, p0, Lcn/hutool/core/img/gif/AnimatedGifEncoder;->indexedPixels:[B

    .line 220
    iput-object v3, p0, Lcn/hutool/core/img/gif/AnimatedGifEncoder;->colorTab:[B

    .line 221
    iput-boolean v1, p0, Lcn/hutool/core/img/gif/AnimatedGifEncoder;->closeStream:Z

    .line 222
    iput-boolean v0, p0, Lcn/hutool/core/img/gif/AnimatedGifEncoder;->firstFrame:Z

    return v2
.end method

.method protected getImagePixels()V
    .locals 5

    .line 419
    iget-object v0, p0, Lcn/hutool/core/img/gif/AnimatedGifEncoder;->image:Ljava/awt/image/BufferedImage;

    invoke-virtual {v0}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result v0

    .line 420
    iget-object v1, p0, Lcn/hutool/core/img/gif/AnimatedGifEncoder;->image:Ljava/awt/image/BufferedImage;

    invoke-virtual {v1}, Ljava/awt/image/BufferedImage;->getHeight()I

    move-result v1

    .line 421
    iget-object v2, p0, Lcn/hutool/core/img/gif/AnimatedGifEncoder;->image:Ljava/awt/image/BufferedImage;

    invoke-virtual {v2}, Ljava/awt/image/BufferedImage;->getType()I

    move-result v2

    .line 422
    iget v3, p0, Lcn/hutool/core/img/gif/AnimatedGifEncoder;->width:I

    const/4 v4, 0x5

    if-ne v0, v3, :cond_0

    iget v0, p0, Lcn/hutool/core/img/gif/AnimatedGifEncoder;->height:I

    if-ne v1, v0, :cond_0

    if-eq v2, v4, :cond_1

    .line 426
    :cond_0
    new-instance v0, Ljava/awt/image/BufferedImage;

    iget v1, p0, Lcn/hutool/core/img/gif/AnimatedGifEncoder;->width:I

    iget v2, p0, Lcn/hutool/core/img/gif/AnimatedGifEncoder;->height:I

    invoke-direct {v0, v1, v2, v4}, Ljava/awt/image/BufferedImage;-><init>(III)V

    .line 428
    invoke-virtual {v0}, Ljava/awt/image/BufferedImage;->createGraphics()Ljava/awt/Graphics2D;

    move-result-object v1

    .line 429
    iget-object v2, p0, Lcn/hutool/core/img/gif/AnimatedGifEncoder;->background:Ljava/awt/Color;

    invoke-virtual {v1, v2}, Ljava/awt/Graphics2D;->setColor(Ljava/awt/Color;)V

    .line 430
    iget v2, p0, Lcn/hutool/core/img/gif/AnimatedGifEncoder;->width:I

    iget v3, p0, Lcn/hutool/core/img/gif/AnimatedGifEncoder;->height:I

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v4, v2, v3}, Ljava/awt/Graphics2D;->fillRect(IIII)V

    .line 431
    iget-object v2, p0, Lcn/hutool/core/img/gif/AnimatedGifEncoder;->image:Ljava/awt/image/BufferedImage;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v4, v4, v3}, Ljava/awt/Graphics2D;->drawImage(Ljava/awt/Image;IILjava/awt/image/ImageObserver;)Z

    .line 432
    iput-object v0, p0, Lcn/hutool/core/img/gif/AnimatedGifEncoder;->image:Ljava/awt/image/BufferedImage;

    .line 434
    :cond_1
    iget-object v0, p0, Lcn/hutool/core/img/gif/AnimatedGifEncoder;->image:Ljava/awt/image/BufferedImage;

    invoke-virtual {v0}, Ljava/awt/image/BufferedImage;->getRaster()Ljava/awt/image/WritableRaster;

    move-result-object v0

    invoke-virtual {v0}, Ljava/awt/image/WritableRaster;->getDataBuffer()Ljava/awt/image/DataBuffer;

    move-result-object v0

    check-cast v0, Ljava/awt/image/DataBufferByte;

    invoke-virtual {v0}, Ljava/awt/image/DataBufferByte;->getData()[B

    move-result-object v0

    iput-object v0, p0, Lcn/hutool/core/img/gif/AnimatedGifEncoder;->pixels:[B

    return-void
.end method

.method isColorUsed(Ljava/awt/Color;)Z
    .locals 1

    .line 387
    invoke-virtual {p0, p1}, Lcn/hutool/core/img/gif/AnimatedGifEncoder;->findExact(Ljava/awt/Color;)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isStarted()Z
    .locals 1

    .line 310
    iget-boolean v0, p0, Lcn/hutool/core/img/gif/AnimatedGifEncoder;->started:Z

    return v0
.end method

.method public setBackground(Ljava/awt/Color;)V
    .locals 0

    .line 145
    iput-object p1, p0, Lcn/hutool/core/img/gif/AnimatedGifEncoder;->background:Ljava/awt/Color;

    return-void
.end method

.method public setDelay(I)V
    .locals 1

    int-to-float p1, p1

    const/high16 v0, 0x41200000    # 10.0f

    div-float/2addr p1, v0

    .line 66
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    iput p1, p0, Lcn/hutool/core/img/gif/AnimatedGifEncoder;->delay:I

    return-void
.end method

.method public setDispose(I)V
    .locals 0

    if-ltz p1, :cond_0

    .line 78
    iput p1, p0, Lcn/hutool/core/img/gif/AnimatedGifEncoder;->dispose:I

    :cond_0
    return-void
.end method

.method public setFrameRate(F)V
    .locals 1

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    const/high16 v0, 0x42c80000    # 100.0f

    div-float/2addr v0, p1

    .line 235
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result p1

    iput p1, p0, Lcn/hutool/core/img/gif/AnimatedGifEncoder;->delay:I

    :cond_0
    return-void
.end method

.method public setQuality(I)V
    .locals 1

    const/4 v0, 0x1

    if-ge p1, v0, :cond_0

    move p1, v0

    .line 251
    :cond_0
    iput p1, p0, Lcn/hutool/core/img/gif/AnimatedGifEncoder;->sample:I

    return-void
.end method

.method public setRepeat(I)V
    .locals 0

    if-ltz p1, :cond_0

    .line 92
    iput p1, p0, Lcn/hutool/core/img/gif/AnimatedGifEncoder;->repeat:I

    :cond_0
    return-void
.end method

.method public setSize(II)V
    .locals 1

    .line 263
    iget-boolean v0, p0, Lcn/hutool/core/img/gif/AnimatedGifEncoder;->started:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcn/hutool/core/img/gif/AnimatedGifEncoder;->firstFrame:Z

    if-nez v0, :cond_0

    return-void

    .line 264
    :cond_0
    iput p1, p0, Lcn/hutool/core/img/gif/AnimatedGifEncoder;->width:I

    .line 265
    iput p2, p0, Lcn/hutool/core/img/gif/AnimatedGifEncoder;->height:I

    const/4 v0, 0x1

    if-ge p1, v0, :cond_1

    const/16 p1, 0x140

    .line 266
    iput p1, p0, Lcn/hutool/core/img/gif/AnimatedGifEncoder;->width:I

    :cond_1
    if-ge p2, v0, :cond_2

    const/16 p1, 0xf0

    .line 267
    iput p1, p0, Lcn/hutool/core/img/gif/AnimatedGifEncoder;->height:I

    .line 268
    :cond_2
    iput-boolean v0, p0, Lcn/hutool/core/img/gif/AnimatedGifEncoder;->sizeSet:Z

    return-void
.end method

.method public setTransparent(Ljava/awt/Color;)V
    .locals 1

    const/4 v0, 0x0

    .line 108
    invoke-virtual {p0, p1, v0}, Lcn/hutool/core/img/gif/AnimatedGifEncoder;->setTransparent(Ljava/awt/Color;Z)V

    return-void
.end method

.method public setTransparent(Ljava/awt/Color;Z)V
    .locals 0

    .line 127
    iput-object p1, p0, Lcn/hutool/core/img/gif/AnimatedGifEncoder;->transparent:Ljava/awt/Color;

    .line 128
    iput-boolean p2, p0, Lcn/hutool/core/img/gif/AnimatedGifEncoder;->transparentExactMatch:Z

    return-void
.end method

.method public start(Ljava/io/OutputStream;)Z
    .locals 1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 281
    :cond_0
    iput-boolean v0, p0, Lcn/hutool/core/img/gif/AnimatedGifEncoder;->closeStream:Z

    .line 282
    iput-object p1, p0, Lcn/hutool/core/img/gif/AnimatedGifEncoder;->out:Ljava/io/OutputStream;

    :try_start_0
    const-string p1, "GIF89a"

    .line 284
    invoke-virtual {p0, p1}, Lcn/hutool/core/img/gif/AnimatedGifEncoder;->writeString(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    .line 288
    :catch_0
    iput-boolean v0, p0, Lcn/hutool/core/img/gif/AnimatedGifEncoder;->started:Z

    return v0
.end method

.method public start(Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    .line 300
    :try_start_0
    new-instance v1, Ljava/io/BufferedOutputStream;

    new-array v2, v0, [Ljava/lang/String;

    invoke-static {p1, v2}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object p1

    new-array v2, v0, [Ljava/nio/file/OpenOption;

    invoke-static {p1, v2}, Ljava/nio/file/Files;->newOutputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/OutputStream;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v1, p0, Lcn/hutool/core/img/gif/AnimatedGifEncoder;->out:Ljava/io/OutputStream;

    .line 301
    invoke-virtual {p0, v1}, Lcn/hutool/core/img/gif/AnimatedGifEncoder;->start(Ljava/io/OutputStream;)Z

    move-result p1

    const/4 v1, 0x1

    .line 302
    iput-boolean v1, p0, Lcn/hutool/core/img/gif/AnimatedGifEncoder;->closeStream:Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, p1

    .line 306
    :catch_0
    iput-boolean v0, p0, Lcn/hutool/core/img/gif/AnimatedGifEncoder;->started:Z

    return v0
.end method

.method protected writeGraphicCtrlExt()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 443
    iget-object v0, p0, Lcn/hutool/core/img/gif/AnimatedGifEncoder;->out:Ljava/io/OutputStream;

    const/16 v1, 0x21

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 444
    iget-object v0, p0, Lcn/hutool/core/img/gif/AnimatedGifEncoder;->out:Ljava/io/OutputStream;

    const/16 v1, 0xf9

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 445
    iget-object v0, p0, Lcn/hutool/core/img/gif/AnimatedGifEncoder;->out:Ljava/io/OutputStream;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 447
    iget-object v0, p0, Lcn/hutool/core/img/gif/AnimatedGifEncoder;->transparent:Ljava/awt/Color;

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-nez v0, :cond_0

    move v0, v2

    move v3, v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    move v3, v1

    .line 454
    :goto_0
    iget v4, p0, Lcn/hutool/core/img/gif/AnimatedGifEncoder;->dispose:I

    if-ltz v4, :cond_1

    and-int/lit8 v3, v4, 0x7

    :cond_1
    shl-int/lit8 v1, v3, 0x2

    .line 461
    iget-object v3, p0, Lcn/hutool/core/img/gif/AnimatedGifEncoder;->out:Ljava/io/OutputStream;

    or-int/2addr v1, v2

    or-int/2addr v1, v2

    or-int/2addr v0, v1

    invoke-virtual {v3, v0}, Ljava/io/OutputStream;->write(I)V

    .line 466
    iget v0, p0, Lcn/hutool/core/img/gif/AnimatedGifEncoder;->delay:I

    invoke-virtual {p0, v0}, Lcn/hutool/core/img/gif/AnimatedGifEncoder;->writeShort(I)V

    .line 467
    iget-object v0, p0, Lcn/hutool/core/img/gif/AnimatedGifEncoder;->out:Ljava/io/OutputStream;

    iget v1, p0, Lcn/hutool/core/img/gif/AnimatedGifEncoder;->transIndex:I

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 468
    iget-object v0, p0, Lcn/hutool/core/img/gif/AnimatedGifEncoder;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, v2}, Ljava/io/OutputStream;->write(I)V

    return-void
.end method

.method protected writeImageDesc()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 477
    iget-object v0, p0, Lcn/hutool/core/img/gif/AnimatedGifEncoder;->out:Ljava/io/OutputStream;

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    const/4 v0, 0x0

    .line 478
    invoke-virtual {p0, v0}, Lcn/hutool/core/img/gif/AnimatedGifEncoder;->writeShort(I)V

    .line 479
    invoke-virtual {p0, v0}, Lcn/hutool/core/img/gif/AnimatedGifEncoder;->writeShort(I)V

    .line 480
    iget v1, p0, Lcn/hutool/core/img/gif/AnimatedGifEncoder;->width:I

    invoke-virtual {p0, v1}, Lcn/hutool/core/img/gif/AnimatedGifEncoder;->writeShort(I)V

    .line 481
    iget v1, p0, Lcn/hutool/core/img/gif/AnimatedGifEncoder;->height:I

    invoke-virtual {p0, v1}, Lcn/hutool/core/img/gif/AnimatedGifEncoder;->writeShort(I)V

    .line 483
    iget-boolean v1, p0, Lcn/hutool/core/img/gif/AnimatedGifEncoder;->firstFrame:Z

    if-eqz v1, :cond_0

    .line 485
    iget-object v1, p0, Lcn/hutool/core/img/gif/AnimatedGifEncoder;->out:Ljava/io/OutputStream;

    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write(I)V

    goto :goto_0

    .line 489
    :cond_0
    iget-object v0, p0, Lcn/hutool/core/img/gif/AnimatedGifEncoder;->out:Ljava/io/OutputStream;

    iget v1, p0, Lcn/hutool/core/img/gif/AnimatedGifEncoder;->palSize:I

    or-int/lit16 v1, v1, 0x80

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    :goto_0
    return-void
.end method

.method protected writeLSD()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 504
    iget v0, p0, Lcn/hutool/core/img/gif/AnimatedGifEncoder;->width:I

    invoke-virtual {p0, v0}, Lcn/hutool/core/img/gif/AnimatedGifEncoder;->writeShort(I)V

    .line 505
    iget v0, p0, Lcn/hutool/core/img/gif/AnimatedGifEncoder;->height:I

    invoke-virtual {p0, v0}, Lcn/hutool/core/img/gif/AnimatedGifEncoder;->writeShort(I)V

    .line 508
    iget-object v0, p0, Lcn/hutool/core/img/gif/AnimatedGifEncoder;->out:Ljava/io/OutputStream;

    iget v1, p0, Lcn/hutool/core/img/gif/AnimatedGifEncoder;->palSize:I

    or-int/lit16 v1, v1, 0xf0

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 513
    iget-object v0, p0, Lcn/hutool/core/img/gif/AnimatedGifEncoder;->out:Ljava/io/OutputStream;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 514
    iget-object v0, p0, Lcn/hutool/core/img/gif/AnimatedGifEncoder;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    return-void
.end method

.method protected writeNetscapeExt()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 524
    iget-object v0, p0, Lcn/hutool/core/img/gif/AnimatedGifEncoder;->out:Ljava/io/OutputStream;

    const/16 v1, 0x21

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 525
    iget-object v0, p0, Lcn/hutool/core/img/gif/AnimatedGifEncoder;->out:Ljava/io/OutputStream;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 526
    iget-object v0, p0, Lcn/hutool/core/img/gif/AnimatedGifEncoder;->out:Ljava/io/OutputStream;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    const-string v0, "NETSCAPE2.0"

    .line 527
    invoke-virtual {p0, v0}, Lcn/hutool/core/img/gif/AnimatedGifEncoder;->writeString(Ljava/lang/String;)V

    .line 528
    iget-object v0, p0, Lcn/hutool/core/img/gif/AnimatedGifEncoder;->out:Ljava/io/OutputStream;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 529
    iget-object v0, p0, Lcn/hutool/core/img/gif/AnimatedGifEncoder;->out:Ljava/io/OutputStream;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 530
    iget v0, p0, Lcn/hutool/core/img/gif/AnimatedGifEncoder;->repeat:I

    invoke-virtual {p0, v0}, Lcn/hutool/core/img/gif/AnimatedGifEncoder;->writeShort(I)V

    .line 531
    iget-object v0, p0, Lcn/hutool/core/img/gif/AnimatedGifEncoder;->out:Ljava/io/OutputStream;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    return-void
.end method

.method protected writePalette()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 540
    iget-object v0, p0, Lcn/hutool/core/img/gif/AnimatedGifEncoder;->out:Ljava/io/OutputStream;

    iget-object v1, p0, Lcn/hutool/core/img/gif/AnimatedGifEncoder;->colorTab:[B

    array-length v2, v1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 541
    iget-object v0, p0, Lcn/hutool/core/img/gif/AnimatedGifEncoder;->colorTab:[B

    array-length v0, v0

    rsub-int v0, v0, 0x300

    move v1, v3

    :goto_0
    if-ge v1, v0, :cond_0

    .line 543
    iget-object v2, p0, Lcn/hutool/core/img/gif/AnimatedGifEncoder;->out:Ljava/io/OutputStream;

    invoke-virtual {v2, v3}, Ljava/io/OutputStream;->write(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected writePixels()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 553
    new-instance v0, Lcn/hutool/core/img/gif/LZWEncoder;

    iget v1, p0, Lcn/hutool/core/img/gif/AnimatedGifEncoder;->width:I

    iget v2, p0, Lcn/hutool/core/img/gif/AnimatedGifEncoder;->height:I

    iget-object v3, p0, Lcn/hutool/core/img/gif/AnimatedGifEncoder;->indexedPixels:[B

    iget v4, p0, Lcn/hutool/core/img/gif/AnimatedGifEncoder;->colorDepth:I

    invoke-direct {v0, v1, v2, v3, v4}, Lcn/hutool/core/img/gif/LZWEncoder;-><init>(II[BI)V

    .line 554
    iget-object v1, p0, Lcn/hutool/core/img/gif/AnimatedGifEncoder;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, v1}, Lcn/hutool/core/img/gif/LZWEncoder;->encode(Ljava/io/OutputStream;)V

    return-void
.end method

.method protected writeShort(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 564
    iget-object v0, p0, Lcn/hutool/core/img/gif/AnimatedGifEncoder;->out:Ljava/io/OutputStream;

    and-int/lit16 v1, p1, 0xff

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 565
    iget-object v0, p0, Lcn/hutool/core/img/gif/AnimatedGifEncoder;->out:Ljava/io/OutputStream;

    shr-int/lit8 p1, p1, 0x8

    and-int/lit16 p1, p1, 0xff

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    return-void
.end method

.method protected writeString(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 575
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 576
    iget-object v1, p0, Lcn/hutool/core/img/gif/AnimatedGifEncoder;->out:Ljava/io/OutputStream;

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    int-to-byte v2, v2

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
