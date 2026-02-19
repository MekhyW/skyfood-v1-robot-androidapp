.class public Lcn/hutool/core/img/Img;
.super Ljava/lang/Object;
.source "Img.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private backgroundColor:Ljava/awt/Color;

.field private positionBaseCentre:Z

.field private quality:F

.field private final srcImage:Ljava/awt/image/BufferedImage;

.field private targetImage:Ljava/awt/Image;

.field private targetImageType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/awt/image/BufferedImage;)V
    .locals 1

    const/4 v0, 0x0

    .line 145
    invoke-direct {p0, p1, v0}, Lcn/hutool/core/img/Img;-><init>(Ljava/awt/image/BufferedImage;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/awt/image/BufferedImage;Ljava/lang/String;)V
    .locals 1

    .line 155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 58
    iput-boolean v0, p0, Lcn/hutool/core/img/Img;->positionBaseCentre:Z

    const/high16 v0, -0x40800000    # -1.0f

    .line 62
    iput v0, p0, Lcn/hutool/core/img/Img;->quality:F

    .line 156
    iput-object p1, p0, Lcn/hutool/core/img/Img;->srcImage:Ljava/awt/image/BufferedImage;

    if-nez p2, :cond_2

    .line 158
    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getType()I

    move-result p2

    const/4 v0, 0x2

    if-eq p2, v0, :cond_1

    .line 159
    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getType()I

    move-result p2

    const/4 v0, 0x3

    if-eq p2, v0, :cond_1

    .line 160
    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getType()I

    move-result p2

    const/4 v0, 0x6

    if-eq p2, v0, :cond_1

    .line 161
    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getType()I

    move-result p1

    const/4 p2, 0x7

    if-ne p1, p2, :cond_0

    goto :goto_0

    :cond_0
    const-string p2, "jpg"

    goto :goto_1

    :cond_1
    :goto_0
    const-string p2, "png"

    .line 168
    :cond_2
    :goto_1
    iput-object p2, p0, Lcn/hutool/core/img/Img;->targetImageType:Ljava/lang/String;

    return-void
.end method

.method private static calcRotatedSize(III)Ljava/awt/Rectangle;
    .locals 13

    if-gez p2, :cond_0

    add-int/lit16 p2, p2, 0x168

    :cond_0
    const/16 v0, 0x5a

    if-lt p2, v0, :cond_2

    .line 849
    div-int/lit8 v0, p2, 0x5a

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    move v12, p1

    move p1, p0

    move p0, v12

    .line 855
    :cond_1
    rem-int/lit8 p2, p2, 0x5a

    :cond_2
    mul-int v0, p1, p1

    mul-int v1, p0, p0

    add-int/2addr v0, v1

    int-to-double v0, v0

    .line 857
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    div-double/2addr v0, v2

    int-to-double v4, p2

    .line 858
    invoke-static {v4, v5}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v6

    div-double/2addr v6, v2

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    mul-double/2addr v6, v2

    mul-double/2addr v6, v0

    .line 859
    invoke-static {v4, v5}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    const-wide v4, 0x400921fb54442d18L    # Math.PI

    sub-double v0, v4, v0

    div-double/2addr v0, v2

    int-to-double v2, p1

    int-to-double v8, p0

    div-double v10, v2, v8

    .line 860
    invoke-static {v10, v11}, Ljava/lang/Math;->atan(D)D

    move-result-wide v10

    div-double/2addr v8, v2

    .line 861
    invoke-static {v8, v9}, Ljava/lang/Math;->atan(D)D

    move-result-wide v2

    sub-double/2addr v4, v0

    sub-double v0, v4, v10

    .line 862
    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    mul-double/2addr v0, v6

    double-to-int p2, v0

    sub-double/2addr v4, v2

    .line 863
    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    mul-double/2addr v6, v0

    double-to-int v0, v6

    mul-int/lit8 p2, p2, 0x2

    add-int/2addr p0, p2

    mul-int/lit8 v0, v0, 0x2

    add-int/2addr p1, v0

    .line 867
    new-instance p2, Ljava/awt/Rectangle;

    invoke-direct {p2, p0, p1}, Ljava/awt/Rectangle;-><init>(II)V

    return-object p2
.end method

.method private draw(Ljava/awt/image/BufferedImage;Ljava/awt/Image;Ljava/awt/Rectangle;F)Ljava/awt/image/BufferedImage;
    .locals 2

    .line 769
    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->createGraphics()Ljava/awt/Graphics2D;

    move-result-object v0

    .line 770
    invoke-static {v0, p4}, Lcn/hutool/core/img/GraphicsUtil;->setAlpha(Ljava/awt/Graphics2D;F)Ljava/awt/Graphics2D;

    .line 772
    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result p4

    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getHeight()I

    move-result v1

    invoke-direct {p0, p3, p4, v1}, Lcn/hutool/core/img/Img;->fixRectangle(Ljava/awt/Rectangle;II)Ljava/awt/Rectangle;

    .line 773
    invoke-static {v0, p2, p3}, Lcn/hutool/core/img/GraphicsUtil;->drawImg(Ljava/awt/Graphics;Ljava/awt/Image;Ljava/awt/Rectangle;)Ljava/awt/Graphics;

    .line 775
    invoke-virtual {v0}, Ljava/awt/Graphics2D;->dispose()V

    return-object p1
.end method

.method private fixRectangle(Ljava/awt/Rectangle;II)Ljava/awt/Rectangle;
    .locals 1

    .line 826
    iget-boolean v0, p0, Lcn/hutool/core/img/Img;->positionBaseCentre:Z

    if-eqz v0, :cond_0

    .line 827
    invoke-static {p1, p2, p3}, Lcn/hutool/core/img/ImgUtil;->getPointBaseCentre(Ljava/awt/Rectangle;II)Ljava/awt/Point;

    move-result-object p2

    .line 829
    iget p3, p2, Ljava/awt/Point;->x:I

    iget p2, p2, Ljava/awt/Point;->y:I

    invoke-virtual {p1, p3, p2}, Ljava/awt/Rectangle;->setLocation(II)V

    :cond_0
    return-object p1
.end method

.method public static from(Lcn/hutool/core/io/resource/Resource;)Lcn/hutool/core/img/Img;
    .locals 0

    .line 96
    invoke-interface {p0}, Lcn/hutool/core/io/resource/Resource;->getStream()Ljava/io/InputStream;

    move-result-object p0

    invoke-static {p0}, Lcn/hutool/core/img/Img;->from(Ljava/io/InputStream;)Lcn/hutool/core/img/Img;

    move-result-object p0

    return-object p0
.end method

.method public static from(Ljava/awt/Image;)Lcn/hutool/core/img/Img;
    .locals 1

    .line 136
    new-instance v0, Lcn/hutool/core/img/Img;

    invoke-static {p0}, Lcn/hutool/core/img/ImgUtil;->toBufferedImage(Ljava/awt/Image;)Ljava/awt/image/BufferedImage;

    move-result-object p0

    invoke-direct {v0, p0}, Lcn/hutool/core/img/Img;-><init>(Ljava/awt/image/BufferedImage;)V

    return-object v0
.end method

.method public static from(Ljava/io/File;)Lcn/hutool/core/img/Img;
    .locals 1

    .line 85
    new-instance v0, Lcn/hutool/core/img/Img;

    invoke-static {p0}, Lcn/hutool/core/img/ImgUtil;->read(Ljava/io/File;)Ljava/awt/image/BufferedImage;

    move-result-object p0

    invoke-direct {v0, p0}, Lcn/hutool/core/img/Img;-><init>(Ljava/awt/image/BufferedImage;)V

    return-object v0
.end method

.method public static from(Ljava/io/InputStream;)Lcn/hutool/core/img/Img;
    .locals 1

    .line 106
    new-instance v0, Lcn/hutool/core/img/Img;

    invoke-static {p0}, Lcn/hutool/core/img/ImgUtil;->read(Ljava/io/InputStream;)Ljava/awt/image/BufferedImage;

    move-result-object p0

    invoke-direct {v0, p0}, Lcn/hutool/core/img/Img;-><init>(Ljava/awt/image/BufferedImage;)V

    return-object v0
.end method

.method public static from(Ljava/net/URL;)Lcn/hutool/core/img/Img;
    .locals 1

    .line 126
    new-instance v0, Lcn/hutool/core/img/Img;

    invoke-static {p0}, Lcn/hutool/core/img/ImgUtil;->read(Ljava/net/URL;)Ljava/awt/image/BufferedImage;

    move-result-object p0

    invoke-direct {v0, p0}, Lcn/hutool/core/img/Img;-><init>(Ljava/awt/image/BufferedImage;)V

    return-object v0
.end method

.method public static from(Ljava/nio/file/Path;)Lcn/hutool/core/img/Img;
    .locals 0

    .line 75
    invoke-interface {p0}, Ljava/nio/file/Path;->toFile()Ljava/io/File;

    move-result-object p0

    invoke-static {p0}, Lcn/hutool/core/img/Img;->from(Ljava/io/File;)Lcn/hutool/core/img/Img;

    move-result-object p0

    return-object p0
.end method

.method public static from(Ljavax/imageio/stream/ImageInputStream;)Lcn/hutool/core/img/Img;
    .locals 1

    .line 116
    new-instance v0, Lcn/hutool/core/img/Img;

    invoke-static {p0}, Lcn/hutool/core/img/ImgUtil;->read(Ljavax/imageio/stream/ImageInputStream;)Ljava/awt/image/BufferedImage;

    move-result-object p0

    invoke-direct {v0, p0}, Lcn/hutool/core/img/Img;-><init>(Ljava/awt/image/BufferedImage;)V

    return-object v0
.end method

.method private getTypeInt()I
    .locals 2

    .line 788
    iget-object v0, p0, Lcn/hutool/core/img/Img;->targetImageType:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    const-string v1, "png"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x2

    return v0
.end method

.method private getValidSrcBufferedImg()Ljava/awt/image/BufferedImage;
    .locals 2

    .line 812
    invoke-direct {p0}, Lcn/hutool/core/img/Img;->getValidSrcImg()Ljava/awt/Image;

    move-result-object v0

    iget-object v1, p0, Lcn/hutool/core/img/Img;->targetImageType:Ljava/lang/String;

    invoke-static {v0, v1}, Lcn/hutool/core/img/ImgUtil;->toBufferedImage(Ljava/awt/Image;Ljava/lang/String;)Ljava/awt/image/BufferedImage;

    move-result-object v0

    return-object v0
.end method

.method private getValidSrcImg()Ljava/awt/Image;
    .locals 2

    .line 802
    iget-object v0, p0, Lcn/hutool/core/img/Img;->targetImage:Ljava/awt/Image;

    iget-object v1, p0, Lcn/hutool/core/img/Img;->srcImage:Ljava/awt/image/BufferedImage;

    invoke-static {v0, v1}, Lcn/hutool/core/util/ObjectUtil;->defaultIfNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/awt/Image;

    return-object v0
.end method


# virtual methods
.method public binary()Lcn/hutool/core/img/Img;
    .locals 2

    .line 460
    invoke-direct {p0}, Lcn/hutool/core/img/Img;->getValidSrcImg()Ljava/awt/Image;

    move-result-object v0

    const/16 v1, 0xc

    invoke-static {v0, v1}, Lcn/hutool/core/img/ImgUtil;->copyImage(Ljava/awt/Image;I)Ljava/awt/image/BufferedImage;

    move-result-object v0

    iput-object v0, p0, Lcn/hutool/core/img/Img;->targetImage:Ljava/awt/Image;

    return-object p0
.end method

.method public cut(II)Lcn/hutool/core/img/Img;
    .locals 1

    const/4 v0, -0x1

    .line 383
    invoke-virtual {p0, p1, p2, v0}, Lcn/hutool/core/img/Img;->cut(III)Lcn/hutool/core/img/Img;

    move-result-object p1

    return-object p1
.end method

.method public cut(III)Lcn/hutool/core/img/Img;
    .locals 19

    move-object/from16 v0, p0

    .line 396
    invoke-direct/range {p0 .. p0}, Lcn/hutool/core/img/Img;->getValidSrcImg()Ljava/awt/Image;

    move-result-object v1

    const/4 v2, 0x0

    .line 397
    invoke-virtual {v1, v2}, Ljava/awt/Image;->getWidth(Ljava/awt/image/ImageObserver;)I

    move-result v3

    .line 398
    invoke-virtual {v1, v2}, Ljava/awt/Image;->getHeight(Ljava/awt/image/ImageObserver;)I

    move-result v4

    const/4 v5, 0x2

    if-lez p3, :cond_0

    mul-int/lit8 v6, p3, 0x2

    goto :goto_0

    .line 401
    :cond_0
    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 402
    :goto_0
    new-instance v7, Ljava/awt/image/BufferedImage;

    invoke-direct {v7, v6, v6, v5}, Ljava/awt/image/BufferedImage;-><init>(III)V

    .line 403
    invoke-virtual {v7}, Ljava/awt/image/BufferedImage;->createGraphics()Ljava/awt/Graphics2D;

    move-result-object v8

    .line 404
    new-instance v14, Ljava/awt/geom/Ellipse2D$Double;

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    move/from16 v18, v3

    int-to-double v2, v6

    move-object v9, v14

    move-object v5, v14

    move-wide v14, v2

    move-wide/from16 v16, v2

    invoke-direct/range {v9 .. v17}, Ljava/awt/geom/Ellipse2D$Double;-><init>(DDDD)V

    invoke-virtual {v8, v5}, Ljava/awt/Graphics2D;->setClip(Ljava/awt/Shape;)V

    .line 406
    iget-boolean v2, v0, Lcn/hutool/core/img/Img;->positionBaseCentre:Z

    if-eqz v2, :cond_1

    const/4 v2, 0x2

    .line 407
    div-int/lit8 v3, v18, 0x2

    sub-int v3, p1, v3

    div-int/2addr v6, v2

    add-int/2addr v3, v6

    .line 408
    div-int/2addr v4, v2

    sub-int v2, p2, v4

    add-int/2addr v2, v6

    goto :goto_1

    :cond_1
    move/from16 v3, p1

    move/from16 v2, p2

    :goto_1
    const/4 v4, 0x0

    .line 410
    invoke-virtual {v8, v1, v3, v2, v4}, Ljava/awt/Graphics2D;->drawImage(Ljava/awt/Image;IILjava/awt/image/ImageObserver;)Z

    .line 411
    invoke-virtual {v8}, Ljava/awt/Graphics2D;->dispose()V

    .line 412
    iput-object v7, v0, Lcn/hutool/core/img/Img;->targetImage:Ljava/awt/Image;

    return-object v0
.end method

.method public cut(Ljava/awt/Rectangle;)Lcn/hutool/core/img/Img;
    .locals 5

    .line 366
    invoke-direct {p0}, Lcn/hutool/core/img/Img;->getValidSrcImg()Ljava/awt/Image;

    move-result-object v0

    const/4 v1, 0x0

    .line 367
    invoke-virtual {v0, v1}, Ljava/awt/Image;->getWidth(Ljava/awt/image/ImageObserver;)I

    move-result v2

    invoke-virtual {v0, v1}, Ljava/awt/Image;->getHeight(Ljava/awt/image/ImageObserver;)I

    move-result v1

    invoke-direct {p0, p1, v2, v1}, Lcn/hutool/core/img/Img;->fixRectangle(Ljava/awt/Rectangle;II)Ljava/awt/Rectangle;

    .line 369
    new-instance v1, Ljava/awt/image/CropImageFilter;

    iget v2, p1, Ljava/awt/Rectangle;->x:I

    iget v3, p1, Ljava/awt/Rectangle;->y:I

    iget v4, p1, Ljava/awt/Rectangle;->width:I

    iget p1, p1, Ljava/awt/Rectangle;->height:I

    invoke-direct {v1, v2, v3, v4, p1}, Ljava/awt/image/CropImageFilter;-><init>(IIII)V

    .line 370
    invoke-static {v1, v0}, Lcn/hutool/core/img/ImgUtil;->filter(Ljava/awt/image/ImageFilter;Ljava/awt/Image;)Ljava/awt/Image;

    move-result-object p1

    iput-object p1, p0, Lcn/hutool/core/img/Img;->targetImage:Ljava/awt/Image;

    return-object p0
.end method

.method public flip()Lcn/hutool/core/img/Img;
    .locals 13

    .line 638
    invoke-direct {p0}, Lcn/hutool/core/img/Img;->getValidSrcImg()Ljava/awt/Image;

    move-result-object v1

    const/4 v0, 0x0

    .line 639
    invoke-virtual {v1, v0}, Ljava/awt/Image;->getWidth(Ljava/awt/image/ImageObserver;)I

    move-result v6

    .line 640
    invoke-virtual {v1, v0}, Ljava/awt/Image;->getHeight(Ljava/awt/image/ImageObserver;)I

    move-result v9

    .line 641
    new-instance v11, Ljava/awt/image/BufferedImage;

    invoke-direct {p0}, Lcn/hutool/core/img/Img;->getTypeInt()I

    move-result v0

    invoke-direct {v11, v6, v9, v0}, Ljava/awt/image/BufferedImage;-><init>(III)V

    .line 642
    invoke-virtual {v11}, Ljava/awt/image/BufferedImage;->createGraphics()Ljava/awt/Graphics2D;

    move-result-object v12

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    move-object v0, v12

    move v4, v6

    move v5, v9

    .line 643
    invoke-virtual/range {v0 .. v10}, Ljava/awt/Graphics2D;->drawImage(Ljava/awt/Image;IIIIIIIILjava/awt/image/ImageObserver;)Z

    .line 644
    invoke-virtual {v12}, Ljava/awt/Graphics2D;->dispose()V

    .line 646
    iput-object v11, p0, Lcn/hutool/core/img/Img;->targetImage:Ljava/awt/Image;

    return-object p0
.end method

.method public getImg()Ljava/awt/Image;
    .locals 1

    .line 697
    invoke-direct {p0}, Lcn/hutool/core/img/Img;->getValidSrcImg()Ljava/awt/Image;

    move-result-object v0

    return-object v0
.end method

.method public gray()Lcn/hutool/core/img/Img;
    .locals 2

    const/16 v0, 0x3eb

    .line 450
    invoke-static {v0}, Ljava/awt/color/ColorSpace;->getInstance(I)Ljava/awt/color/ColorSpace;

    move-result-object v0

    invoke-direct {p0}, Lcn/hutool/core/img/Img;->getValidSrcBufferedImg()Ljava/awt/image/BufferedImage;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/hutool/core/img/ImgUtil;->colorConvert(Ljava/awt/color/ColorSpace;Ljava/awt/image/BufferedImage;)Ljava/awt/image/BufferedImage;

    move-result-object v0

    iput-object v0, p0, Lcn/hutool/core/img/Img;->targetImage:Ljava/awt/Image;

    return-object p0
.end method

.method public pressImage(Ljava/awt/Image;IIF)Lcn/hutool/core/img/Img;
    .locals 3

    const/4 v0, 0x0

    .line 585
    invoke-virtual {p1, v0}, Ljava/awt/Image;->getWidth(Ljava/awt/image/ImageObserver;)I

    move-result v1

    .line 586
    invoke-virtual {p1, v0}, Ljava/awt/Image;->getHeight(Ljava/awt/image/ImageObserver;)I

    move-result v0

    .line 587
    new-instance v2, Ljava/awt/Rectangle;

    invoke-direct {v2, p2, p3, v1, v0}, Ljava/awt/Rectangle;-><init>(IIII)V

    invoke-virtual {p0, p1, v2, p4}, Lcn/hutool/core/img/Img;->pressImage(Ljava/awt/Image;Ljava/awt/Rectangle;F)Lcn/hutool/core/img/Img;

    move-result-object p1

    return-object p1
.end method

.method public pressImage(Ljava/awt/Image;Ljava/awt/Rectangle;F)Lcn/hutool/core/img/Img;
    .locals 2

    .line 600
    invoke-direct {p0}, Lcn/hutool/core/img/Img;->getValidSrcImg()Ljava/awt/Image;

    move-result-object v0

    .line 602
    iget-object v1, p0, Lcn/hutool/core/img/Img;->targetImageType:Ljava/lang/String;

    invoke-static {v0, v1}, Lcn/hutool/core/img/ImgUtil;->toBufferedImage(Ljava/awt/Image;Ljava/lang/String;)Ljava/awt/image/BufferedImage;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2, p3}, Lcn/hutool/core/img/Img;->draw(Ljava/awt/image/BufferedImage;Ljava/awt/Image;Ljava/awt/Rectangle;F)Ljava/awt/image/BufferedImage;

    move-result-object p1

    iput-object p1, p0, Lcn/hutool/core/img/Img;->targetImage:Ljava/awt/Image;

    return-object p0
.end method

.method public pressText(Ljava/lang/String;Ljava/awt/Color;Ljava/awt/Font;IIF)Lcn/hutool/core/img/Img;
    .locals 6

    .line 477
    new-instance v4, Ljava/awt/Point;

    invoke-direct {v4, p4, p5}, Ljava/awt/Point;-><init>(II)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, p6

    invoke-virtual/range {v0 .. v5}, Lcn/hutool/core/img/Img;->pressText(Ljava/lang/String;Ljava/awt/Color;Ljava/awt/Font;Ljava/awt/Point;F)Lcn/hutool/core/img/Img;

    move-result-object p1

    return-object p1
.end method

.method public pressText(Ljava/lang/String;Ljava/awt/Color;Ljava/awt/Font;Ljava/awt/Point;F)Lcn/hutool/core/img/Img;
    .locals 5

    .line 492
    invoke-direct {p0}, Lcn/hutool/core/img/Img;->getValidSrcImg()Ljava/awt/Image;

    move-result-object v0

    iget-object v1, p0, Lcn/hutool/core/img/Img;->targetImageType:Ljava/lang/String;

    invoke-static {v0, v1}, Lcn/hutool/core/img/ImgUtil;->toBufferedImage(Ljava/awt/Image;Ljava/lang/String;)Ljava/awt/image/BufferedImage;

    move-result-object v0

    if-nez p3, :cond_0

    .line 496
    invoke-virtual {v0}, Ljava/awt/image/BufferedImage;->getHeight()I

    move-result p3

    int-to-double v1, p3

    const-wide/high16 v3, 0x3fe8000000000000L    # 0.75

    mul-double/2addr v1, v3

    double-to-int p3, v1

    invoke-static {p3}, Lcn/hutool/core/img/FontUtil;->createSansSerifFont(I)Ljava/awt/Font;

    move-result-object p3

    .line 499
    :cond_0
    invoke-virtual {v0}, Ljava/awt/image/BufferedImage;->createGraphics()Ljava/awt/Graphics2D;

    move-result-object v1

    const/16 v2, 0xa

    .line 501
    invoke-static {v2, p5}, Ljava/awt/AlphaComposite;->getInstance(IF)Ljava/awt/AlphaComposite;

    move-result-object p5

    invoke-virtual {v1, p5}, Ljava/awt/Graphics2D;->setComposite(Ljava/awt/Composite;)V

    .line 504
    iget-boolean p5, p0, Lcn/hutool/core/img/Img;->positionBaseCentre:Z

    if-eqz p5, :cond_1

    .line 506
    new-instance p5, Ljava/awt/Rectangle;

    iget v2, p4, Ljava/awt/Point;->x:I

    iget p4, p4, Ljava/awt/Point;->y:I

    .line 507
    invoke-virtual {v0}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Ljava/awt/image/BufferedImage;->getHeight()I

    move-result v4

    invoke-direct {p5, v2, p4, v3, v4}, Ljava/awt/Rectangle;-><init>(IIII)V

    .line 506
    invoke-static {v1, p1, p3, p2, p5}, Lcn/hutool/core/img/GraphicsUtil;->drawString(Ljava/awt/Graphics;Ljava/lang/String;Ljava/awt/Font;Ljava/awt/Color;Ljava/awt/Rectangle;)Ljava/awt/Graphics;

    goto :goto_0

    .line 510
    :cond_1
    invoke-static {v1, p1, p3, p2, p4}, Lcn/hutool/core/img/GraphicsUtil;->drawString(Ljava/awt/Graphics;Ljava/lang/String;Ljava/awt/Font;Ljava/awt/Color;Ljava/awt/Point;)Ljava/awt/Graphics;

    .line 514
    :goto_0
    invoke-virtual {v1}, Ljava/awt/Graphics2D;->dispose()V

    .line 515
    iput-object v0, p0, Lcn/hutool/core/img/Img;->targetImage:Ljava/awt/Image;

    return-object p0
.end method

.method public pressTextFull(Ljava/lang/String;Ljava/awt/Color;Ljava/awt/Font;IIF)Lcn/hutool/core/img/Img;
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 534
    invoke-direct/range {p0 .. p0}, Lcn/hutool/core/img/Img;->getValidSrcImg()Ljava/awt/Image;

    move-result-object v3

    iget-object v4, v0, Lcn/hutool/core/img/Img;->targetImageType:Ljava/lang/String;

    invoke-static {v3, v4}, Lcn/hutool/core/img/ImgUtil;->toBufferedImage(Ljava/awt/Image;Ljava/lang/String;)Ljava/awt/image/BufferedImage;

    move-result-object v3

    if-nez p3, :cond_0

    .line 538
    invoke-virtual {v3}, Ljava/awt/image/BufferedImage;->getHeight()I

    move-result v4

    int-to-double v4, v4

    const-wide/high16 v6, 0x3fe8000000000000L    # 0.75

    mul-double/2addr v4, v6

    double-to-int v4, v4

    invoke-static {v4}, Lcn/hutool/core/img/FontUtil;->createSansSerifFont(I)Ljava/awt/Font;

    move-result-object v4

    goto :goto_0

    :cond_0
    move-object/from16 v4, p3

    .line 540
    :goto_0
    invoke-virtual {v3}, Ljava/awt/image/BufferedImage;->getHeight()I

    move-result v5

    .line 541
    invoke-virtual {v3}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result v6

    .line 544
    invoke-virtual {v3}, Ljava/awt/image/BufferedImage;->createGraphics()Ljava/awt/Graphics2D;

    move-result-object v14

    .line 545
    invoke-virtual {v14, v2}, Ljava/awt/Graphics2D;->setColor(Ljava/awt/Color;)V

    move/from16 v7, p5

    int-to-double v7, v7

    .line 547
    invoke-static {v7, v8}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v8

    shr-int/lit8 v7, v6, 0x1

    int-to-double v10, v7

    shr-int/lit8 v7, v5, 0x1

    int-to-double v12, v7

    move-object v7, v14

    invoke-virtual/range {v7 .. v13}, Ljava/awt/Graphics2D;->rotate(DDD)V

    const/16 v7, 0xa

    move/from16 v8, p6

    .line 548
    invoke-static {v7, v8}, Ljava/awt/AlphaComposite;->getInstance(IF)Ljava/awt/AlphaComposite;

    move-result-object v7

    invoke-virtual {v14, v7}, Ljava/awt/Graphics2D;->setComposite(Ljava/awt/Composite;)V

    .line 553
    :try_start_0
    invoke-virtual {v14, v4}, Ljava/awt/Graphics2D;->getFontMetrics(Ljava/awt/Font;)Ljava/awt/FontMetrics;

    move-result-object v7

    invoke-static {v7, v1}, Lcn/hutool/core/img/FontUtil;->getDimension(Ljava/awt/FontMetrics;Ljava/lang/String;)Ljava/awt/Dimension;

    move-result-object v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 556
    :catch_0
    new-instance v7, Ljava/awt/Dimension;

    div-int/lit8 v8, v6, 0x3

    div-int/lit8 v9, v5, 0x3

    invoke-direct {v7, v8, v9}, Ljava/awt/Dimension;-><init>(II)V

    .line 558
    :goto_1
    iget v8, v7, Ljava/awt/Dimension;->height:I

    mul-int v8, v8, p4

    neg-int v9, v5

    shr-int/lit8 v9, v9, 0x1

    :goto_2
    int-to-double v10, v9

    int-to-double v12, v5

    const-wide/high16 v15, 0x3ff8000000000000L    # 1.5

    mul-double/2addr v12, v15

    cmpg-double v10, v10, v12

    if-gez v10, :cond_2

    neg-int v10, v6

    shr-int/lit8 v10, v10, 0x1

    :goto_3
    int-to-double v11, v10

    move-object v13, v7

    move/from16 p3, v8

    int-to-double v7, v6

    mul-double/2addr v7, v15

    cmpg-double v7, v11, v7

    if-gez v7, :cond_1

    .line 564
    new-instance v7, Ljava/awt/Point;

    invoke-direct {v7, v10, v9}, Ljava/awt/Point;-><init>(II)V

    invoke-static {v14, v1, v4, v2, v7}, Lcn/hutool/core/img/GraphicsUtil;->drawString(Ljava/awt/Graphics;Ljava/lang/String;Ljava/awt/Font;Ljava/awt/Color;Ljava/awt/Point;)Ljava/awt/Graphics;

    move-object v7, v13

    .line 565
    iget v8, v7, Ljava/awt/Dimension;->width:I

    add-int/2addr v10, v8

    move/from16 v8, p3

    goto :goto_3

    :cond_1
    move-object v7, v13

    add-int v9, v9, p3

    move/from16 v8, p3

    goto :goto_2

    .line 569
    :cond_2
    invoke-virtual {v14}, Ljava/awt/Graphics2D;->dispose()V

    .line 571
    iput-object v3, v0, Lcn/hutool/core/img/Img;->targetImage:Ljava/awt/Image;

    return-object v0
.end method

.method public rotate(I)Lcn/hutool/core/img/Img;
    .locals 18

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 615
    invoke-direct/range {p0 .. p0}, Lcn/hutool/core/img/Img;->getValidSrcImg()Ljava/awt/Image;

    move-result-object v2

    const/4 v3, 0x0

    .line 616
    invoke-virtual {v2, v3}, Ljava/awt/Image;->getWidth(Ljava/awt/image/ImageObserver;)I

    move-result v4

    .line 617
    invoke-virtual {v2, v3}, Ljava/awt/Image;->getHeight(Ljava/awt/image/ImageObserver;)I

    move-result v5

    .line 618
    invoke-static {v4, v5, v1}, Lcn/hutool/core/img/Img;->calcRotatedSize(III)Ljava/awt/Rectangle;

    move-result-object v6

    .line 619
    new-instance v7, Ljava/awt/image/BufferedImage;

    iget v8, v6, Ljava/awt/Rectangle;->width:I

    iget v9, v6, Ljava/awt/Rectangle;->height:I

    invoke-direct/range {p0 .. p0}, Lcn/hutool/core/img/Img;->getTypeInt()I

    move-result v10

    invoke-direct {v7, v8, v9, v10}, Ljava/awt/image/BufferedImage;-><init>(III)V

    .line 620
    invoke-virtual {v7}, Ljava/awt/image/BufferedImage;->createGraphics()Ljava/awt/Graphics2D;

    move-result-object v8

    .line 622
    sget-object v9, Ljava/awt/RenderingHints;->KEY_INTERPOLATION:Ljava/awt/RenderingHints$Key;

    sget-object v10, Ljava/awt/RenderingHints;->VALUE_INTERPOLATION_BILINEAR:Ljava/lang/Object;

    invoke-virtual {v8, v9, v10}, Ljava/awt/Graphics2D;->setRenderingHint(Ljava/awt/RenderingHints$Key;Ljava/lang/Object;)V

    .line 624
    iget v9, v6, Ljava/awt/Rectangle;->width:I

    sub-int/2addr v9, v4

    int-to-double v9, v9

    const-wide/high16 v11, 0x4000000000000000L    # 2.0

    div-double/2addr v9, v11

    iget v6, v6, Ljava/awt/Rectangle;->height:I

    sub-int/2addr v6, v5

    int-to-double v13, v6

    div-double/2addr v13, v11

    invoke-virtual {v8, v9, v10, v13, v14}, Ljava/awt/Graphics2D;->translate(DD)V

    int-to-double v9, v1

    .line 625
    invoke-static {v9, v10}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v9

    int-to-double v13, v4

    div-double v14, v13, v11

    int-to-double v4, v5

    div-double v16, v4, v11

    move-object v11, v8

    move-wide v12, v9

    invoke-virtual/range {v11 .. v17}, Ljava/awt/Graphics2D;->rotate(DDD)V

    const/4 v1, 0x0

    .line 626
    invoke-virtual {v8, v2, v1, v1, v3}, Ljava/awt/Graphics2D;->drawImage(Ljava/awt/Image;IILjava/awt/image/ImageObserver;)Z

    .line 627
    invoke-virtual {v8}, Ljava/awt/Graphics2D;->dispose()V

    .line 628
    iput-object v7, v0, Lcn/hutool/core/img/Img;->targetImage:Ljava/awt/Image;

    return-object v0
.end method

.method public round(D)Lcn/hutool/core/img/Img;
    .locals 19

    move-object/from16 v0, p0

    .line 424
    invoke-direct/range {p0 .. p0}, Lcn/hutool/core/img/Img;->getValidSrcImg()Ljava/awt/Image;

    move-result-object v1

    const/4 v2, 0x0

    .line 425
    invoke-virtual {v1, v2}, Ljava/awt/Image;->getWidth(Ljava/awt/image/ImageObserver;)I

    move-result v3

    .line 426
    invoke-virtual {v1, v2}, Ljava/awt/Image;->getHeight(Ljava/awt/image/ImageObserver;)I

    move-result v4

    .line 429
    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v5

    int-to-float v5, v5

    move-wide/from16 v6, p1

    invoke-static {v6, v7, v5}, Lcn/hutool/core/util/NumberUtil;->mul(DF)D

    move-result-wide v17

    .line 431
    new-instance v5, Ljava/awt/image/BufferedImage;

    const/4 v6, 0x2

    invoke-direct {v5, v3, v4, v6}, Ljava/awt/image/BufferedImage;-><init>(III)V

    .line 432
    invoke-virtual {v5}, Ljava/awt/image/BufferedImage;->createGraphics()Ljava/awt/Graphics2D;

    move-result-object v15

    .line 433
    sget-object v6, Ljava/awt/AlphaComposite;->Src:Ljava/awt/AlphaComposite;

    invoke-virtual {v15, v6}, Ljava/awt/Graphics2D;->setComposite(Ljava/awt/Composite;)V

    .line 435
    sget-object v6, Ljava/awt/RenderingHints;->KEY_ANTIALIASING:Ljava/awt/RenderingHints$Key;

    sget-object v7, Ljava/awt/RenderingHints;->VALUE_ANTIALIAS_ON:Ljava/lang/Object;

    invoke-virtual {v15, v6, v7}, Ljava/awt/Graphics2D;->setRenderingHint(Ljava/awt/RenderingHints$Key;Ljava/lang/Object;)V

    .line 436
    new-instance v13, Ljava/awt/geom/RoundRectangle2D$Double;

    const-wide/16 v7, 0x0

    const-wide/16 v9, 0x0

    int-to-double v11, v3

    int-to-double v3, v4

    move-object v6, v13

    move-object v2, v13

    move-wide v13, v3

    move-object v3, v15

    move-wide/from16 v15, v17

    invoke-direct/range {v6 .. v18}, Ljava/awt/geom/RoundRectangle2D$Double;-><init>(DDDDDD)V

    invoke-virtual {v3, v2}, Ljava/awt/Graphics2D;->fill(Ljava/awt/Shape;)V

    .line 437
    sget-object v2, Ljava/awt/AlphaComposite;->SrcAtop:Ljava/awt/AlphaComposite;

    invoke-virtual {v3, v2}, Ljava/awt/Graphics2D;->setComposite(Ljava/awt/Composite;)V

    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 438
    invoke-virtual {v3, v1, v2, v2, v4}, Ljava/awt/Graphics2D;->drawImage(Ljava/awt/Image;IILjava/awt/image/ImageObserver;)Z

    .line 439
    invoke-virtual {v3}, Ljava/awt/Graphics2D;->dispose()V

    .line 440
    iput-object v5, v0, Lcn/hutool/core/img/Img;->targetImage:Ljava/awt/Image;

    return-object v0
.end method

.method public scale(F)Lcn/hutool/core/img/Img;
    .locals 4

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    neg-float p1, p1

    .line 245
    :cond_0
    invoke-direct {p0}, Lcn/hutool/core/img/Img;->getValidSrcImg()Ljava/awt/Image;

    move-result-object v0

    const-string v1, "png"

    .line 248
    iget-object v2, p0, Lcn/hutool/core/img/Img;->targetImageType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 250
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-static {p1}, Lcn/hutool/core/util/NumberUtil;->toDouble(Ljava/lang/Number;)D

    move-result-wide v1

    .line 251
    invoke-static {v1, v2, v1, v2}, Ljava/awt/geom/AffineTransform;->getScaleInstance(DD)Ljava/awt/geom/AffineTransform;

    move-result-object p1

    iget-object v1, p0, Lcn/hutool/core/img/Img;->targetImageType:Ljava/lang/String;

    .line 252
    invoke-static {v0, v1}, Lcn/hutool/core/img/ImgUtil;->toBufferedImage(Ljava/awt/Image;Ljava/lang/String;)Ljava/awt/image/BufferedImage;

    move-result-object v0

    .line 251
    invoke-static {p1, v0}, Lcn/hutool/core/img/ImgUtil;->transform(Ljava/awt/geom/AffineTransform;Ljava/awt/image/BufferedImage;)Ljava/awt/image/BufferedImage;

    move-result-object p1

    iput-object p1, p0, Lcn/hutool/core/img/Img;->targetImage:Ljava/awt/Image;

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 255
    invoke-virtual {v0, v1}, Ljava/awt/Image;->getWidth(Ljava/awt/image/ImageObserver;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v2, v3}, Lcn/hutool/core/util/NumberUtil;->mul(Ljava/lang/Number;Ljava/lang/Number;)Ljava/math/BigDecimal;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigDecimal;->intValue()I

    move-result v2

    .line 257
    invoke-virtual {v0, v1}, Ljava/awt/Image;->getHeight(Ljava/awt/image/ImageObserver;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-static {v0, p1}, Lcn/hutool/core/util/NumberUtil;->mul(Ljava/lang/Number;Ljava/lang/Number;)Ljava/math/BigDecimal;

    move-result-object p1

    invoke-virtual {p1}, Ljava/math/BigDecimal;->intValue()I

    move-result p1

    .line 258
    invoke-virtual {p0, v2, p1}, Lcn/hutool/core/img/Img;->scale(II)Lcn/hutool/core/img/Img;

    :goto_0
    return-object p0
.end method

.method public scale(II)Lcn/hutool/core/img/Img;
    .locals 1

    const/4 v0, 0x4

    .line 272
    invoke-virtual {p0, p1, p2, v0}, Lcn/hutool/core/img/Img;->scale(III)Lcn/hutool/core/img/Img;

    move-result-object p1

    return-object p1
.end method

.method public scale(III)Lcn/hutool/core/img/Img;
    .locals 5

    .line 286
    invoke-direct {p0}, Lcn/hutool/core/img/Img;->getValidSrcImg()Ljava/awt/Image;

    move-result-object v0

    const/4 v1, 0x0

    .line 288
    invoke-virtual {v0, v1}, Ljava/awt/Image;->getHeight(Ljava/awt/image/ImageObserver;)I

    move-result v2

    .line 289
    invoke-virtual {v0, v1}, Ljava/awt/Image;->getWidth(Ljava/awt/image/ImageObserver;)I

    move-result v1

    if-ne v2, p2, :cond_0

    if-ne v1, p1, :cond_0

    .line 292
    iput-object v0, p0, Lcn/hutool/core/img/Img;->targetImage:Ljava/awt/Image;

    return-object p0

    :cond_0
    const-string v3, "png"

    .line 296
    iget-object v4, p0, Lcn/hutool/core/img/Img;->targetImageType:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    int-to-float p1, p1

    int-to-float p3, v1

    .line 298
    invoke-static {p1, p3}, Lcn/hutool/core/util/NumberUtil;->div(FF)D

    move-result-wide v3

    int-to-float p1, p2

    int-to-float p2, v2

    .line 299
    invoke-static {p1, p2}, Lcn/hutool/core/util/NumberUtil;->div(FF)D

    move-result-wide p1

    .line 300
    invoke-static {v3, v4, p1, p2}, Ljava/awt/geom/AffineTransform;->getScaleInstance(DD)Ljava/awt/geom/AffineTransform;

    move-result-object p1

    iget-object p2, p0, Lcn/hutool/core/img/Img;->targetImageType:Ljava/lang/String;

    .line 301
    invoke-static {v0, p2}, Lcn/hutool/core/img/ImgUtil;->toBufferedImage(Ljava/awt/Image;Ljava/lang/String;)Ljava/awt/image/BufferedImage;

    move-result-object p2

    .line 300
    invoke-static {p1, p2}, Lcn/hutool/core/img/ImgUtil;->transform(Ljava/awt/geom/AffineTransform;Ljava/awt/image/BufferedImage;)Ljava/awt/image/BufferedImage;

    move-result-object p1

    iput-object p1, p0, Lcn/hutool/core/img/Img;->targetImage:Ljava/awt/Image;

    goto :goto_0

    .line 303
    :cond_1
    invoke-virtual {v0, p1, p2, p3}, Ljava/awt/Image;->getScaledInstance(III)Ljava/awt/Image;

    move-result-object p1

    iput-object p1, p0, Lcn/hutool/core/img/Img;->targetImage:Ljava/awt/Image;

    :goto_0
    return-object p0
.end method

.method public scale(IILjava/awt/Color;)Lcn/hutool/core/img/Img;
    .locals 10

    .line 319
    invoke-direct {p0}, Lcn/hutool/core/img/Img;->getValidSrcImg()Ljava/awt/Image;

    move-result-object v0

    const/4 v1, 0x0

    .line 320
    invoke-virtual {v0, v1}, Ljava/awt/Image;->getHeight(Ljava/awt/image/ImageObserver;)I

    move-result v2

    .line 321
    invoke-virtual {v0, v1}, Ljava/awt/Image;->getWidth(Ljava/awt/image/ImageObserver;)I

    move-result v0

    int-to-float v3, p2

    int-to-float v4, v2

    .line 322
    invoke-static {v3, v4}, Lcn/hutool/core/util/NumberUtil;->div(FF)D

    move-result-wide v3

    int-to-float v5, p1

    int-to-float v6, v0

    .line 323
    invoke-static {v5, v6}, Lcn/hutool/core/util/NumberUtil;->div(FF)D

    move-result-wide v5

    .line 326
    invoke-static {v3, v4, v5, v6}, Lcn/hutool/core/util/NumberUtil;->equals(DD)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 328
    invoke-virtual {p0, p1, p2}, Lcn/hutool/core/img/Img;->scale(II)Lcn/hutool/core/img/Img;

    goto :goto_0

    :cond_0
    cmpg-double v7, v5, v3

    if-gez v7, :cond_1

    int-to-double v2, v2

    mul-double/2addr v2, v5

    double-to-int v0, v2

    .line 331
    invoke-virtual {p0, p1, v0}, Lcn/hutool/core/img/Img;->scale(II)Lcn/hutool/core/img/Img;

    goto :goto_0

    :cond_1
    int-to-double v5, v0

    mul-double/2addr v5, v3

    double-to-int v0, v5

    .line 334
    invoke-virtual {p0, v0, p2}, Lcn/hutool/core/img/Img;->scale(II)Lcn/hutool/core/img/Img;

    .line 338
    :goto_0
    invoke-direct {p0}, Lcn/hutool/core/img/Img;->getValidSrcImg()Ljava/awt/Image;

    move-result-object v3

    .line 339
    invoke-virtual {v3, v1}, Ljava/awt/Image;->getHeight(Ljava/awt/image/ImageObserver;)I

    move-result v7

    .line 340
    invoke-virtual {v3, v1}, Ljava/awt/Image;->getWidth(Ljava/awt/image/ImageObserver;)I

    move-result v6

    .line 342
    new-instance v0, Ljava/awt/image/BufferedImage;

    invoke-direct {p0}, Lcn/hutool/core/img/Img;->getTypeInt()I

    move-result v1

    invoke-direct {v0, p1, p2, v1}, Ljava/awt/image/BufferedImage;-><init>(III)V

    .line 343
    invoke-virtual {v0}, Ljava/awt/image/BufferedImage;->createGraphics()Ljava/awt/Graphics2D;

    move-result-object v1

    if-eqz p3, :cond_2

    .line 347
    invoke-virtual {v1, p3}, Ljava/awt/Graphics2D;->setBackground(Ljava/awt/Color;)V

    const/4 v2, 0x0

    .line 348
    invoke-virtual {v1, v2, v2, p1, p2}, Ljava/awt/Graphics2D;->clearRect(IIII)V

    :cond_2
    sub-int/2addr p1, v6

    .line 352
    div-int/lit8 v4, p1, 0x2

    sub-int/2addr p2, v7

    div-int/lit8 v5, p2, 0x2

    const/4 v9, 0x0

    move-object v2, v1

    move-object v8, p3

    invoke-virtual/range {v2 .. v9}, Ljava/awt/Graphics2D;->drawImage(Ljava/awt/Image;IIIILjava/awt/Color;Ljava/awt/image/ImageObserver;)Z

    .line 354
    invoke-virtual {v1}, Ljava/awt/Graphics2D;->dispose()V

    .line 355
    iput-object v0, p0, Lcn/hutool/core/img/Img;->targetImage:Ljava/awt/Image;

    return-object p0
.end method

.method public setBackgroundColor(Ljava/awt/Color;)Lcn/hutool/core/img/Img;
    .locals 0

    .line 230
    iput-object p1, p0, Lcn/hutool/core/img/Img;->backgroundColor:Ljava/awt/Color;

    return-object p0
.end method

.method public setPositionBaseCentre(Z)Lcn/hutool/core/img/Img;
    .locals 0

    .line 192
    iput-boolean p1, p0, Lcn/hutool/core/img/Img;->positionBaseCentre:Z

    return-object p0
.end method

.method public setQuality(D)Lcn/hutool/core/img/Img;
    .locals 0

    double-to-float p1, p1

    .line 204
    invoke-virtual {p0, p1}, Lcn/hutool/core/img/Img;->setQuality(F)Lcn/hutool/core/img/Img;

    move-result-object p1

    return-object p1
.end method

.method public setQuality(F)Lcn/hutool/core/img/Img;
    .locals 2

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    const/high16 v1, 0x3f800000    # 1.0f

    if-lez v0, :cond_0

    cmpg-float v0, p1, v1

    if-gez v0, :cond_0

    .line 216
    iput p1, p0, Lcn/hutool/core/img/Img;->quality:F

    goto :goto_0

    .line 218
    :cond_0
    iput v1, p0, Lcn/hutool/core/img/Img;->quality:F

    :goto_0
    return-object p0
.end method

.method public setTargetImageType(Ljava/lang/String;)Lcn/hutool/core/img/Img;
    .locals 0

    .line 180
    iput-object p1, p0, Lcn/hutool/core/img/Img;->targetImageType:Ljava/lang/String;

    return-object p0
.end method

.method public stroke(Ljava/awt/Color;F)Lcn/hutool/core/img/Img;
    .locals 1

    .line 659
    new-instance v0, Ljava/awt/BasicStroke;

    invoke-direct {v0, p2}, Ljava/awt/BasicStroke;-><init>(F)V

    invoke-virtual {p0, p1, v0}, Lcn/hutool/core/img/Img;->stroke(Ljava/awt/Color;Ljava/awt/Stroke;)Lcn/hutool/core/img/Img;

    move-result-object p1

    return-object p1
.end method

.method public stroke(Ljava/awt/Color;Ljava/awt/Stroke;)Lcn/hutool/core/img/Img;
    .locals 5

    .line 671
    invoke-direct {p0}, Lcn/hutool/core/img/Img;->getValidSrcImg()Ljava/awt/Image;

    move-result-object v0

    iget-object v1, p0, Lcn/hutool/core/img/Img;->targetImageType:Ljava/lang/String;

    invoke-static {v0, v1}, Lcn/hutool/core/img/ImgUtil;->toBufferedImage(Ljava/awt/Image;Ljava/lang/String;)Ljava/awt/image/BufferedImage;

    move-result-object v0

    const/4 v1, 0x0

    .line 672
    invoke-virtual {v0, v1}, Ljava/awt/image/BufferedImage;->getWidth(Ljava/awt/image/ImageObserver;)I

    move-result v2

    .line 673
    invoke-virtual {v0, v1}, Ljava/awt/image/BufferedImage;->getHeight(Ljava/awt/image/ImageObserver;)I

    move-result v1

    .line 674
    invoke-virtual {v0}, Ljava/awt/image/BufferedImage;->createGraphics()Ljava/awt/Graphics2D;

    move-result-object v3

    .line 676
    sget-object v4, Ljava/awt/Color;->BLACK:Ljava/awt/Color;

    invoke-static {p1, v4}, Lcn/hutool/core/util/ObjectUtil;->defaultIfNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/awt/Color;

    invoke-virtual {v3, p1}, Ljava/awt/Graphics2D;->setColor(Ljava/awt/Color;)V

    if-eqz p2, :cond_0

    .line 678
    invoke-virtual {v3, p2}, Ljava/awt/Graphics2D;->setStroke(Ljava/awt/Stroke;)V

    :cond_0
    add-int/lit8 v2, v2, -0x1

    add-int/lit8 v1, v1, -0x1

    const/4 p1, 0x0

    .line 681
    invoke-virtual {v3, p1, p1, v2, v1}, Ljava/awt/Graphics2D;->drawRect(IIII)V

    .line 683
    invoke-virtual {v3}, Ljava/awt/Graphics2D;->dispose()V

    .line 684
    iput-object v0, p0, Lcn/hutool/core/img/Img;->targetImage:Ljava/awt/Image;

    return-object p0
.end method

.method public write(Ljava/io/File;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/hutool/core/io/IORuntimeException;
        }
    .end annotation

    .line 738
    invoke-static {p1}, Lcn/hutool/core/io/FileUtil;->extName(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    .line 739
    invoke-static {v0}, Lcn/hutool/core/util/StrUtil;->isNotBlank(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 740
    iput-object v0, p0, Lcn/hutool/core/img/Img;->targetImageType:Ljava/lang/String;

    .line 743
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 745
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 750
    :cond_1
    :try_start_0
    invoke-static {p1}, Lcn/hutool/core/img/ImgUtil;->getImageOutputStream(Ljava/io/File;)Ljavax/imageio/stream/ImageOutputStream;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 751
    :try_start_1
    invoke-virtual {p0, p1}, Lcn/hutool/core/img/Img;->write(Ljavax/imageio/stream/ImageOutputStream;)Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 753
    invoke-static {p1}, Lcn/hutool/core/io/IoUtil;->close(Ljava/io/Closeable;)V

    return v0

    :catchall_0
    move-exception v0

    goto :goto_0

    :catchall_1
    move-exception v0

    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Lcn/hutool/core/io/IoUtil;->close(Ljava/io/Closeable;)V

    .line 754
    throw v0
.end method

.method public write(Ljava/io/OutputStream;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/hutool/core/io/IORuntimeException;
        }
    .end annotation

    .line 709
    invoke-static {p1}, Lcn/hutool/core/img/ImgUtil;->getImageOutputStream(Ljava/io/OutputStream;)Ljavax/imageio/stream/ImageOutputStream;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcn/hutool/core/img/Img;->write(Ljavax/imageio/stream/ImageOutputStream;)Z

    move-result p1

    return p1
.end method

.method public write(Ljavax/imageio/stream/ImageOutputStream;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/hutool/core/io/IORuntimeException;
        }
    .end annotation

    .line 721
    iget-object v0, p0, Lcn/hutool/core/img/Img;->targetImageType:Ljava/lang/String;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "Target image type is blank !"

    invoke-static {v0, v3, v2}, Lcn/hutool/core/lang/Assert;->notBlank(Ljava/lang/CharSequence;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/CharSequence;

    const-string v0, "Target output stream is null !"

    new-array v2, v1, [Ljava/lang/Object;

    .line 722
    invoke-static {p1, v0, v2}, Lcn/hutool/core/lang/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 724
    iget-object v0, p0, Lcn/hutool/core/img/Img;->targetImage:Ljava/awt/Image;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcn/hutool/core/img/Img;->srcImage:Ljava/awt/image/BufferedImage;

    :cond_0
    const-string v2, "Target image is null !"

    new-array v1, v1, [Ljava/lang/Object;

    .line 725
    invoke-static {v0, v2, v1}, Lcn/hutool/core/lang/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 727
    iget-object v1, p0, Lcn/hutool/core/img/Img;->targetImageType:Ljava/lang/String;

    iget v2, p0, Lcn/hutool/core/img/Img;->quality:F

    iget-object v3, p0, Lcn/hutool/core/img/Img;->backgroundColor:Ljava/awt/Color;

    invoke-static {v0, v1, p1, v2, v3}, Lcn/hutool/core/img/ImgUtil;->write(Ljava/awt/Image;Ljava/lang/String;Ljavax/imageio/stream/ImageOutputStream;FLjava/awt/Color;)Z

    move-result p1

    return p1
.end method
