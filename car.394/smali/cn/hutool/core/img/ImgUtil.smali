.class public Lcn/hutool/core/img/ImgUtil;
.super Ljava/lang/Object;
.source "ImgUtil.java"


# static fields
.field public static final IMAGE_TYPE_BMP:Ljava/lang/String; = "bmp"

.field public static final IMAGE_TYPE_GIF:Ljava/lang/String; = "gif"

.field public static final IMAGE_TYPE_JPEG:Ljava/lang/String; = "jpeg"

.field public static final IMAGE_TYPE_JPG:Ljava/lang/String; = "jpg"

.field public static final IMAGE_TYPE_PNG:Ljava/lang/String; = "png"

.field public static final IMAGE_TYPE_PSD:Ljava/lang/String; = "psd"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static backgroundRemoval(Ljava/awt/image/BufferedImage;Ljava/awt/Color;I)Ljava/awt/image/BufferedImage;
    .locals 0

    .line 2151
    invoke-static {p0, p1, p2}, Lcn/hutool/core/img/BackgroundRemoval;->backgroundRemoval(Ljava/awt/image/BufferedImage;Ljava/awt/Color;I)Ljava/awt/image/BufferedImage;

    move-result-object p0

    return-object p0
.end method

.method public static backgroundRemoval(Ljava/io/ByteArrayOutputStream;Ljava/awt/Color;I)Ljava/awt/image/BufferedImage;
    .locals 0

    .line 2169
    invoke-static {p0, p1, p2}, Lcn/hutool/core/img/BackgroundRemoval;->backgroundRemoval(Ljava/io/ByteArrayOutputStream;Ljava/awt/Color;I)Ljava/awt/image/BufferedImage;

    move-result-object p0

    return-object p0
.end method

.method public static backgroundRemoval(Ljava/io/File;Ljava/io/File;I)Z
    .locals 0

    .line 2114
    invoke-static {p0, p1, p2}, Lcn/hutool/core/img/BackgroundRemoval;->backgroundRemoval(Ljava/io/File;Ljava/io/File;I)Z

    move-result p0

    return p0
.end method

.method public static backgroundRemoval(Ljava/io/File;Ljava/io/File;Ljava/awt/Color;I)Z
    .locals 0

    .line 2133
    invoke-static {p0, p1, p2, p3}, Lcn/hutool/core/img/BackgroundRemoval;->backgroundRemoval(Ljava/io/File;Ljava/io/File;Ljava/awt/Color;I)Z

    move-result p0

    return p0
.end method

.method public static backgroundRemoval(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 0

    .line 2096
    invoke-static {p0, p1, p2}, Lcn/hutool/core/img/BackgroundRemoval;->backgroundRemoval(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public static binary(Ljava/awt/Image;)Ljava/awt/Image;
    .locals 0

    .line 750
    invoke-static {p0}, Lcn/hutool/core/img/Img;->from(Ljava/awt/Image;)Lcn/hutool/core/img/Img;

    move-result-object p0

    invoke-virtual {p0}, Lcn/hutool/core/img/Img;->binary()Lcn/hutool/core/img/Img;

    move-result-object p0

    invoke-virtual {p0}, Lcn/hutool/core/img/Img;->getImg()Ljava/awt/Image;

    move-result-object p0

    return-object p0
.end method

.method public static binary(Ljava/awt/Image;Ljava/io/File;)V
    .locals 0

    .line 712
    invoke-static {p0}, Lcn/hutool/core/img/ImgUtil;->binary(Ljava/awt/Image;)Ljava/awt/Image;

    move-result-object p0

    invoke-static {p0, p1}, Lcn/hutool/core/img/ImgUtil;->write(Ljava/awt/Image;Ljava/io/File;)V

    return-void
.end method

.method public static binary(Ljava/awt/Image;Ljava/io/OutputStream;Ljava/lang/String;)V
    .locals 0

    .line 725
    invoke-static {p1}, Lcn/hutool/core/img/ImgUtil;->getImageOutputStream(Ljava/io/OutputStream;)Ljavax/imageio/stream/ImageOutputStream;

    move-result-object p1

    invoke-static {p0, p1, p2}, Lcn/hutool/core/img/ImgUtil;->binary(Ljava/awt/Image;Ljavax/imageio/stream/ImageOutputStream;Ljava/lang/String;)V

    return-void
.end method

.method public static binary(Ljava/awt/Image;Ljavax/imageio/stream/ImageOutputStream;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/hutool/core/io/IORuntimeException;
        }
    .end annotation

    .line 739
    invoke-static {p0}, Lcn/hutool/core/img/ImgUtil;->binary(Ljava/awt/Image;)Ljava/awt/Image;

    move-result-object p0

    invoke-static {p0, p2, p1}, Lcn/hutool/core/img/ImgUtil;->write(Ljava/awt/Image;Ljava/lang/String;Ljavax/imageio/stream/ImageOutputStream;)Z

    return-void
.end method

.method public static binary(Ljava/io/File;Ljava/io/File;)V
    .locals 0

    .line 675
    invoke-static {p0}, Lcn/hutool/core/img/ImgUtil;->read(Ljava/io/File;)Ljava/awt/image/BufferedImage;

    move-result-object p0

    invoke-static {p0, p1}, Lcn/hutool/core/img/ImgUtil;->binary(Ljava/awt/Image;Ljava/io/File;)V

    return-void
.end method

.method public static binary(Ljava/io/InputStream;Ljava/io/OutputStream;Ljava/lang/String;)V
    .locals 0

    .line 688
    invoke-static {p0}, Lcn/hutool/core/img/ImgUtil;->read(Ljava/io/InputStream;)Ljava/awt/image/BufferedImage;

    move-result-object p0

    invoke-static {p1}, Lcn/hutool/core/img/ImgUtil;->getImageOutputStream(Ljava/io/OutputStream;)Ljavax/imageio/stream/ImageOutputStream;

    move-result-object p1

    invoke-static {p0, p1, p2}, Lcn/hutool/core/img/ImgUtil;->binary(Ljava/awt/Image;Ljavax/imageio/stream/ImageOutputStream;Ljava/lang/String;)V

    return-void
.end method

.method public static binary(Ljavax/imageio/stream/ImageInputStream;Ljavax/imageio/stream/ImageOutputStream;Ljava/lang/String;)V
    .locals 0

    .line 701
    invoke-static {p0}, Lcn/hutool/core/img/ImgUtil;->read(Ljavax/imageio/stream/ImageInputStream;)Ljava/awt/image/BufferedImage;

    move-result-object p0

    invoke-static {p0, p1, p2}, Lcn/hutool/core/img/ImgUtil;->binary(Ljava/awt/Image;Ljavax/imageio/stream/ImageOutputStream;Ljava/lang/String;)V

    return-void
.end method

.method public static colorConvert(Ljava/awt/color/ColorSpace;Ljava/awt/image/BufferedImage;)Ljava/awt/image/BufferedImage;
    .locals 2

    .line 2182
    new-instance v0, Ljava/awt/image/ColorConvertOp;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Ljava/awt/image/ColorConvertOp;-><init>(Ljava/awt/color/ColorSpace;Ljava/awt/RenderingHints;)V

    invoke-static {v0, p1}, Lcn/hutool/core/img/ImgUtil;->filter(Ljava/awt/image/BufferedImageOp;Ljava/awt/image/BufferedImage;)Ljava/awt/image/BufferedImage;

    move-result-object p0

    return-object p0
.end method

.method public static compress(Ljava/io/File;Ljava/io/File;F)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/hutool/core/io/IORuntimeException;
        }
    .end annotation

    .line 1148
    invoke-static {p0}, Lcn/hutool/core/img/Img;->from(Ljava/io/File;)Lcn/hutool/core/img/Img;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcn/hutool/core/img/Img;->setQuality(F)Lcn/hutool/core/img/Img;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcn/hutool/core/img/Img;->write(Ljava/io/File;)Z

    return-void
.end method

.method public static convert(Ljava/awt/Image;Ljava/lang/String;Ljavax/imageio/stream/ImageOutputStream;Z)V
    .locals 0

    if-eqz p3, :cond_0

    const/4 p3, 0x1

    .line 577
    :try_start_0
    invoke-static {p0, p3}, Lcn/hutool/core/img/ImgUtil;->copyImage(Ljava/awt/Image;I)Ljava/awt/image/BufferedImage;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcn/hutool/core/img/ImgUtil;->toBufferedImage(Ljava/awt/Image;)Ljava/awt/image/BufferedImage;

    move-result-object p0

    :goto_0
    invoke-static {p0, p1, p2}, Ljavax/imageio/ImageIO;->write(Ljava/awt/image/RenderedImage;Ljava/lang/String;Ljavax/imageio/stream/ImageOutputStream;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 579
    new-instance p1, Lcn/hutool/core/io/IORuntimeException;

    invoke-direct {p1, p0}, Lcn/hutool/core/io/IORuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static convert(Ljava/io/File;Ljava/io/File;)V
    .locals 3

    .line 532
    invoke-static {p0}, Lcn/hutool/core/lang/Assert;->notNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 533
    invoke-static {p1}, Lcn/hutool/core/lang/Assert;->notNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 534
    invoke-virtual {p0, p1}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Src file is equals to dest file!"

    invoke-static {v0, v2, v1}, Lcn/hutool/core/lang/Assert;->isFalse(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 536
    invoke-static {p0}, Lcn/hutool/core/io/FileUtil;->extName(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    .line 537
    invoke-static {p1}, Lcn/hutool/core/io/FileUtil;->extName(Ljava/io/File;)Ljava/lang/String;

    move-result-object v1

    .line 538
    invoke-static {v0, v1}, Lcn/hutool/core/util/StrUtil;->equalsIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    .line 540
    invoke-static {p0, p1, v2}, Lcn/hutool/core/io/FileUtil;->copy(Ljava/io/File;Ljava/io/File;Z)Ljava/io/File;

    .line 545
    :cond_0
    :try_start_0
    invoke-static {p1}, Lcn/hutool/core/img/ImgUtil;->getImageOutputStream(Ljava/io/File;)Ljavax/imageio/stream/ImageOutputStream;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 546
    :try_start_1
    invoke-static {p0}, Lcn/hutool/core/img/ImgUtil;->read(Ljava/io/File;)Ljava/awt/image/BufferedImage;

    move-result-object p0

    const-string v2, "png"

    invoke-static {v2, v0}, Lcn/hutool/core/util/StrUtil;->equalsIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    invoke-static {p0, v1, p1, v0}, Lcn/hutool/core/img/ImgUtil;->convert(Ljava/awt/Image;Ljava/lang/String;Ljavax/imageio/stream/ImageOutputStream;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 548
    invoke-static {p1}, Lcn/hutool/core/io/IoUtil;->close(Ljava/io/Closeable;)V

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :catchall_1
    move-exception p0

    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Lcn/hutool/core/io/IoUtil;->close(Ljava/io/Closeable;)V

    .line 549
    throw p0
.end method

.method public static convert(Ljava/io/InputStream;Ljava/lang/String;Ljava/io/OutputStream;)V
    .locals 0

    .line 562
    invoke-static {p0}, Lcn/hutool/core/img/ImgUtil;->read(Ljava/io/InputStream;)Ljava/awt/image/BufferedImage;

    move-result-object p0

    invoke-static {p2}, Lcn/hutool/core/img/ImgUtil;->getImageOutputStream(Ljava/io/OutputStream;)Ljavax/imageio/stream/ImageOutputStream;

    move-result-object p2

    invoke-static {p0, p1, p2}, Lcn/hutool/core/img/ImgUtil;->write(Ljava/awt/Image;Ljava/lang/String;Ljavax/imageio/stream/ImageOutputStream;)Z

    return-void
.end method

.method public static copyImage(Ljava/awt/Image;I)Ljava/awt/image/BufferedImage;
    .locals 1

    const/4 v0, 0x0

    .line 1284
    invoke-static {p0, p1, v0}, Lcn/hutool/core/img/ImgUtil;->copyImage(Ljava/awt/Image;ILjava/awt/Color;)Ljava/awt/image/BufferedImage;

    move-result-object p0

    return-object p0
.end method

.method public static copyImage(Ljava/awt/Image;ILjava/awt/Color;)Ljava/awt/image/BufferedImage;
    .locals 4

    .line 1312
    new-instance v0, Ljavax/swing/ImageIcon;

    invoke-direct {v0, p0}, Ljavax/swing/ImageIcon;-><init>(Ljava/awt/Image;)V

    invoke-virtual {v0}, Ljavax/swing/ImageIcon;->getImage()Ljava/awt/Image;

    move-result-object p0

    .line 1314
    new-instance v0, Ljava/awt/image/BufferedImage;

    const/4 v1, 0x0

    .line 1315
    invoke-virtual {p0, v1}, Ljava/awt/Image;->getWidth(Ljava/awt/image/ImageObserver;)I

    move-result v2

    invoke-virtual {p0, v1}, Ljava/awt/Image;->getHeight(Ljava/awt/image/ImageObserver;)I

    move-result v3

    invoke-direct {v0, v2, v3, p1}, Ljava/awt/image/BufferedImage;-><init>(III)V

    .line 1316
    invoke-static {v0, p2}, Lcn/hutool/core/img/GraphicsUtil;->createGraphics(Ljava/awt/image/BufferedImage;Ljava/awt/Color;)Ljava/awt/Graphics2D;

    move-result-object p1

    const/4 p2, 0x0

    .line 1317
    invoke-virtual {p1, p0, p2, p2, v1}, Ljava/awt/Graphics2D;->drawImage(Ljava/awt/Image;IILjava/awt/image/ImageObserver;)Z

    .line 1318
    invoke-virtual {p1}, Ljava/awt/Graphics2D;->dispose()V

    return-object v0
.end method

.method public static createCompatibleImage(III)Ljava/awt/image/BufferedImage;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/awt/HeadlessException;
        }
    .end annotation

    .line 1333
    invoke-static {}, Ljava/awt/GraphicsEnvironment;->getLocalGraphicsEnvironment()Ljava/awt/GraphicsEnvironment;

    move-result-object v0

    .line 1334
    invoke-virtual {v0}, Ljava/awt/GraphicsEnvironment;->getDefaultScreenDevice()Ljava/awt/GraphicsDevice;

    move-result-object v0

    .line 1335
    invoke-virtual {v0}, Ljava/awt/GraphicsDevice;->getDefaultConfiguration()Ljava/awt/GraphicsConfiguration;

    move-result-object v0

    .line 1336
    invoke-virtual {v0, p0, p1, p2}, Ljava/awt/GraphicsConfiguration;->createCompatibleImage(III)Ljava/awt/image/BufferedImage;

    move-result-object p0

    return-object p0
.end method

.method public static createFont(Ljava/io/File;)Ljava/awt/Font;
    .locals 0

    .line 1502
    invoke-static {p0}, Lcn/hutool/core/img/FontUtil;->createFont(Ljava/io/File;)Ljava/awt/Font;

    move-result-object p0

    return-object p0
.end method

.method public static createFont(Ljava/io/InputStream;)Ljava/awt/Font;
    .locals 0

    .line 1514
    invoke-static {p0}, Lcn/hutool/core/img/FontUtil;->createFont(Ljava/io/InputStream;)Ljava/awt/Font;

    move-result-object p0

    return-object p0
.end method

.method public static createGraphics(Ljava/awt/image/BufferedImage;Ljava/awt/Color;)Ljava/awt/Graphics2D;
    .locals 0

    .line 1527
    invoke-static {p0, p1}, Lcn/hutool/core/img/GraphicsUtil;->createGraphics(Ljava/awt/image/BufferedImage;Ljava/awt/Color;)Ljava/awt/Graphics2D;

    move-result-object p0

    return-object p0
.end method

.method public static createImage(Ljava/lang/String;Ljava/awt/Font;Ljava/awt/Color;Ljava/awt/Color;I)Ljava/awt/image/BufferedImage;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/hutool/core/io/IORuntimeException;
        }
    .end annotation

    .line 1453
    invoke-static {p0, p1}, Lcn/hutool/core/img/ImgUtil;->getRectangle(Ljava/lang/String;Ljava/awt/Font;)Ljava/awt/geom/Rectangle2D;

    move-result-object v0

    .line 1455
    invoke-virtual {v0}, Ljava/awt/geom/Rectangle2D;->getHeight()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Math;->floor(D)D

    move-result-wide v1

    double-to-int v1, v1

    .line 1457
    invoke-virtual {v0}, Ljava/awt/geom/Rectangle2D;->getWidth()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    long-to-int v0, v2

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, 0x3

    .line 1462
    new-instance v2, Ljava/awt/image/BufferedImage;

    invoke-direct {v2, v0, v1, p4}, Ljava/awt/image/BufferedImage;-><init>(III)V

    .line 1463
    invoke-virtual {v2}, Ljava/awt/image/BufferedImage;->getGraphics()Ljava/awt/Graphics;

    move-result-object p4

    const/4 v3, 0x0

    if-eqz p2, :cond_0

    .line 1466
    invoke-virtual {p4, p2}, Ljava/awt/Graphics;->setColor(Ljava/awt/Color;)V

    .line 1467
    invoke-virtual {p4, v3, v3, v0, v1}, Ljava/awt/Graphics;->fillRect(IIII)V

    .line 1470
    :cond_0
    sget-object p2, Ljava/awt/Color;->BLACK:Ljava/awt/Color;

    invoke-static {p3, p2}, Lcn/hutool/core/util/ObjectUtil;->defaultIfNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/awt/Color;

    invoke-virtual {p4, p2}, Ljava/awt/Graphics;->setColor(Ljava/awt/Color;)V

    .line 1471
    invoke-virtual {p4, p1}, Ljava/awt/Graphics;->setFont(Ljava/awt/Font;)V

    .line 1472
    invoke-virtual {p1}, Ljava/awt/Font;->getSize()I

    move-result p1

    invoke-virtual {p4, p0, v3, p1}, Ljava/awt/Graphics;->drawString(Ljava/lang/String;II)V

    .line 1473
    invoke-virtual {p4}, Ljava/awt/Graphics;->dispose()V

    return-object v2
.end method

.method public static createImage(Ljava/lang/String;Ljava/awt/Font;Ljava/awt/Color;Ljava/awt/Color;Ljavax/imageio/stream/ImageOutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/hutool/core/io/IORuntimeException;
        }
    .end annotation

    const/4 v0, 0x2

    .line 1424
    invoke-static {p0, p1, p2, p3, v0}, Lcn/hutool/core/img/ImgUtil;->createImage(Ljava/lang/String;Ljava/awt/Font;Ljava/awt/Color;Ljava/awt/Color;I)Ljava/awt/image/BufferedImage;

    move-result-object p0

    invoke-static {p0, p4}, Lcn/hutool/core/img/ImgUtil;->writePng(Ljava/awt/Image;Ljavax/imageio/stream/ImageOutputStream;)V

    return-void
.end method

.method public static createTransparentImage(Ljava/lang/String;Ljava/awt/Font;Ljava/awt/Color;Ljavax/imageio/stream/ImageOutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/hutool/core/io/IORuntimeException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x2

    .line 1437
    invoke-static {p0, p1, v0, p2, v1}, Lcn/hutool/core/img/ImgUtil;->createImage(Ljava/lang/String;Ljava/awt/Font;Ljava/awt/Color;Ljava/awt/Color;I)Ljava/awt/image/BufferedImage;

    move-result-object p0

    invoke-static {p0, p3}, Lcn/hutool/core/img/ImgUtil;->writePng(Ljava/awt/Image;Ljavax/imageio/stream/ImageOutputStream;)V

    return-void
.end method

.method public static cut(Ljava/awt/Image;II)Ljava/awt/Image;
    .locals 1

    const/4 v0, -0x1

    .line 356
    invoke-static {p0, p1, p2, v0}, Lcn/hutool/core/img/ImgUtil;->cut(Ljava/awt/Image;III)Ljava/awt/Image;

    move-result-object p0

    return-object p0
.end method

.method public static cut(Ljava/awt/Image;III)Ljava/awt/Image;
    .locals 0

    .line 370
    invoke-static {p0}, Lcn/hutool/core/img/Img;->from(Ljava/awt/Image;)Lcn/hutool/core/img/Img;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3}, Lcn/hutool/core/img/Img;->cut(III)Lcn/hutool/core/img/Img;

    move-result-object p0

    invoke-virtual {p0}, Lcn/hutool/core/img/Img;->getImg()Ljava/awt/Image;

    move-result-object p0

    return-object p0
.end method

.method public static cut(Ljava/awt/Image;Ljava/awt/Rectangle;)Ljava/awt/Image;
    .locals 1

    .line 343
    invoke-static {p0}, Lcn/hutool/core/img/Img;->from(Ljava/awt/Image;)Lcn/hutool/core/img/Img;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcn/hutool/core/img/Img;->setPositionBaseCentre(Z)Lcn/hutool/core/img/Img;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcn/hutool/core/img/Img;->cut(Ljava/awt/Rectangle;)Lcn/hutool/core/img/Img;

    move-result-object p0

    invoke-virtual {p0}, Lcn/hutool/core/img/Img;->getImg()Ljava/awt/Image;

    move-result-object p0

    return-object p0
.end method

.method public static cut(Ljava/awt/Image;Ljava/io/File;Ljava/awt/Rectangle;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/hutool/core/io/IORuntimeException;
        }
    .end annotation

    .line 305
    invoke-static {p0, p2}, Lcn/hutool/core/img/ImgUtil;->cut(Ljava/awt/Image;Ljava/awt/Rectangle;)Ljava/awt/Image;

    move-result-object p0

    invoke-static {p0, p1}, Lcn/hutool/core/img/ImgUtil;->write(Ljava/awt/Image;Ljava/io/File;)V

    return-void
.end method

.method public static cut(Ljava/awt/Image;Ljava/io/OutputStream;Ljava/awt/Rectangle;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/hutool/core/io/IORuntimeException;
        }
    .end annotation

    .line 318
    invoke-static {p1}, Lcn/hutool/core/img/ImgUtil;->getImageOutputStream(Ljava/io/OutputStream;)Ljavax/imageio/stream/ImageOutputStream;

    move-result-object p1

    invoke-static {p0, p1, p2}, Lcn/hutool/core/img/ImgUtil;->cut(Ljava/awt/Image;Ljavax/imageio/stream/ImageOutputStream;Ljava/awt/Rectangle;)V

    return-void
.end method

.method public static cut(Ljava/awt/Image;Ljavax/imageio/stream/ImageOutputStream;Ljava/awt/Rectangle;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/hutool/core/io/IORuntimeException;
        }
    .end annotation

    .line 331
    invoke-static {p0, p2}, Lcn/hutool/core/img/ImgUtil;->cut(Ljava/awt/Image;Ljava/awt/Rectangle;)Ljava/awt/Image;

    move-result-object p0

    invoke-static {p0, p1}, Lcn/hutool/core/img/ImgUtil;->writeJpg(Ljava/awt/Image;Ljavax/imageio/stream/ImageOutputStream;)V

    return-void
.end method

.method public static cut(Ljava/io/File;Ljava/io/File;Ljava/awt/Rectangle;)V
    .locals 0

    .line 268
    invoke-static {p0}, Lcn/hutool/core/img/ImgUtil;->read(Ljava/io/File;)Ljava/awt/image/BufferedImage;

    move-result-object p0

    invoke-static {p0, p1, p2}, Lcn/hutool/core/img/ImgUtil;->cut(Ljava/awt/Image;Ljava/io/File;Ljava/awt/Rectangle;)V

    return-void
.end method

.method public static cut(Ljava/io/InputStream;Ljava/io/OutputStream;Ljava/awt/Rectangle;)V
    .locals 0

    .line 280
    invoke-static {p0}, Lcn/hutool/core/img/ImgUtil;->read(Ljava/io/InputStream;)Ljava/awt/image/BufferedImage;

    move-result-object p0

    invoke-static {p0, p1, p2}, Lcn/hutool/core/img/ImgUtil;->cut(Ljava/awt/Image;Ljava/io/OutputStream;Ljava/awt/Rectangle;)V

    return-void
.end method

.method public static cut(Ljavax/imageio/stream/ImageInputStream;Ljavax/imageio/stream/ImageOutputStream;Ljava/awt/Rectangle;)V
    .locals 0

    .line 292
    invoke-static {p0}, Lcn/hutool/core/img/ImgUtil;->read(Ljavax/imageio/stream/ImageInputStream;)Ljava/awt/image/BufferedImage;

    move-result-object p0

    invoke-static {p0, p1, p2}, Lcn/hutool/core/img/ImgUtil;->cut(Ljava/awt/Image;Ljavax/imageio/stream/ImageOutputStream;Ljava/awt/Rectangle;)V

    return-void
.end method

.method public static filter(Ljava/awt/image/ImageFilter;Ljava/awt/Image;)Ljava/awt/Image;
    .locals 2

    .line 2219
    invoke-static {}, Ljava/awt/Toolkit;->getDefaultToolkit()Ljava/awt/Toolkit;

    move-result-object v0

    new-instance v1, Ljava/awt/image/FilteredImageSource;

    .line 2220
    invoke-virtual {p1}, Ljava/awt/Image;->getSource()Ljava/awt/image/ImageProducer;

    move-result-object p1

    invoke-direct {v1, p1, p0}, Ljava/awt/image/FilteredImageSource;-><init>(Ljava/awt/image/ImageProducer;Ljava/awt/image/ImageFilter;)V

    .line 2219
    invoke-virtual {v0, v1}, Ljava/awt/Toolkit;->createImage(Ljava/awt/image/ImageProducer;)Ljava/awt/Image;

    move-result-object p0

    return-object p0
.end method

.method public static filter(Ljava/awt/image/BufferedImageOp;Ljava/awt/image/BufferedImage;)Ljava/awt/image/BufferedImage;
    .locals 1

    const/4 v0, 0x0

    .line 2207
    invoke-interface {p0, p1, v0}, Ljava/awt/image/BufferedImageOp;->filter(Ljava/awt/image/BufferedImage;Ljava/awt/image/BufferedImage;)Ljava/awt/image/BufferedImage;

    move-result-object p0

    return-object p0
.end method

.method public static flip(Ljava/awt/Image;)Ljava/awt/Image;
    .locals 0

    .line 1133
    invoke-static {p0}, Lcn/hutool/core/img/Img;->from(Ljava/awt/Image;)Lcn/hutool/core/img/Img;

    move-result-object p0

    invoke-virtual {p0}, Lcn/hutool/core/img/Img;->flip()Lcn/hutool/core/img/Img;

    move-result-object p0

    invoke-virtual {p0}, Lcn/hutool/core/img/Img;->getImg()Ljava/awt/Image;

    move-result-object p0

    return-object p0
.end method

.method public static flip(Ljava/awt/Image;Ljava/io/File;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/hutool/core/io/IORuntimeException;
        }
    .end annotation

    .line 1098
    invoke-static {p0}, Lcn/hutool/core/img/ImgUtil;->flip(Ljava/awt/Image;)Ljava/awt/Image;

    move-result-object p0

    invoke-static {p0, p1}, Lcn/hutool/core/img/ImgUtil;->write(Ljava/awt/Image;Ljava/io/File;)V

    return-void
.end method

.method public static flip(Ljava/awt/Image;Ljava/io/OutputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/hutool/core/io/IORuntimeException;
        }
    .end annotation

    .line 1110
    invoke-static {p1}, Lcn/hutool/core/img/ImgUtil;->getImageOutputStream(Ljava/io/OutputStream;)Ljavax/imageio/stream/ImageOutputStream;

    move-result-object p1

    invoke-static {p0, p1}, Lcn/hutool/core/img/ImgUtil;->flip(Ljava/awt/Image;Ljavax/imageio/stream/ImageOutputStream;)V

    return-void
.end method

.method public static flip(Ljava/awt/Image;Ljavax/imageio/stream/ImageOutputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/hutool/core/io/IORuntimeException;
        }
    .end annotation

    .line 1122
    invoke-static {p0}, Lcn/hutool/core/img/ImgUtil;->flip(Ljava/awt/Image;)Ljava/awt/Image;

    move-result-object p0

    invoke-static {p0, p1}, Lcn/hutool/core/img/ImgUtil;->writeJpg(Ljava/awt/Image;Ljavax/imageio/stream/ImageOutputStream;)V

    return-void
.end method

.method public static flip(Ljava/io/File;Ljava/io/File;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/hutool/core/io/IORuntimeException;
        }
    .end annotation

    .line 1086
    invoke-static {p0}, Lcn/hutool/core/img/ImgUtil;->read(Ljava/io/File;)Ljava/awt/image/BufferedImage;

    move-result-object p0

    invoke-static {p0, p1}, Lcn/hutool/core/img/ImgUtil;->flip(Ljava/awt/Image;Ljava/io/File;)V

    return-void
.end method

.method public static getColor(I)Ljava/awt/Color;
    .locals 0

    .line 2006
    invoke-static {p0}, Lcn/hutool/core/img/ColorUtil;->getColor(I)Ljava/awt/Color;

    move-result-object p0

    return-object p0
.end method

.method public static getColor(Ljava/lang/String;)Ljava/awt/Color;
    .locals 0

    .line 2026
    invoke-static {p0}, Lcn/hutool/core/img/ColorUtil;->getColor(Ljava/lang/String;)Ljava/awt/Color;

    move-result-object p0

    return-object p0
.end method

.method public static getImage(Ljava/net/URL;)Ljava/awt/Image;
    .locals 1

    .line 1773
    invoke-static {}, Ljava/awt/Toolkit;->getDefaultToolkit()Ljava/awt/Toolkit;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/awt/Toolkit;->getImage(Ljava/net/URL;)Ljava/awt/Image;

    move-result-object p0

    return-object p0
.end method

.method public static getImageInputStream(Ljava/io/InputStream;)Ljavax/imageio/stream/ImageInputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/hutool/core/io/IORuntimeException;
        }
    .end annotation

    .line 1910
    :try_start_0
    invoke-static {p0}, Ljavax/imageio/ImageIO;->createImageOutputStream(Ljava/lang/Object;)Ljavax/imageio/stream/ImageOutputStream;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_0

    return-object p0

    .line 1916
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Image type is not supported!"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_0
    move-exception p0

    .line 1912
    new-instance v0, Lcn/hutool/core/io/IORuntimeException;

    invoke-direct {v0, p0}, Lcn/hutool/core/io/IORuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static getImageOutputStream(Ljava/io/File;)Ljavax/imageio/stream/ImageOutputStream;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/hutool/core/io/IORuntimeException;
        }
    .end annotation

    .line 1887
    :try_start_0
    invoke-static {p0}, Ljavax/imageio/ImageIO;->createImageOutputStream(Ljava/lang/Object;)Ljavax/imageio/stream/ImageOutputStream;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_0

    return-object v0

    .line 1893
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Image type of file ["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, "] is not supported!"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_0
    move-exception p0

    .line 1889
    new-instance v0, Lcn/hutool/core/io/IORuntimeException;

    invoke-direct {v0, p0}, Lcn/hutool/core/io/IORuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static getImageOutputStream(Ljava/io/OutputStream;)Ljavax/imageio/stream/ImageOutputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/hutool/core/io/IORuntimeException;
        }
    .end annotation

    .line 1864
    :try_start_0
    invoke-static {p0}, Ljavax/imageio/ImageIO;->createImageOutputStream(Ljava/lang/Object;)Ljavax/imageio/stream/ImageOutputStream;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_0

    return-object p0

    .line 1870
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Image type is not supported!"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_0
    move-exception p0

    .line 1866
    new-instance v0, Lcn/hutool/core/io/IORuntimeException;

    invoke-direct {v0, p0}, Lcn/hutool/core/io/IORuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static varargs getMainColor(Ljava/awt/image/BufferedImage;[[I)Ljava/lang/String;
    .locals 0

    .line 2077
    invoke-static {p0, p1}, Lcn/hutool/core/img/ColorUtil;->getMainColor(Ljava/awt/image/BufferedImage;[[I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getPointBaseCentre(Ljava/awt/Rectangle;II)Ljava/awt/Point;
    .locals 3

    .line 2062
    new-instance v0, Ljava/awt/Point;

    iget v1, p0, Ljava/awt/Rectangle;->x:I

    iget v2, p0, Ljava/awt/Rectangle;->width:I

    sub-int/2addr p1, v2

    .line 2063
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    add-int/2addr v1, p1

    iget p1, p0, Ljava/awt/Rectangle;->y:I

    iget p0, p0, Ljava/awt/Rectangle;->height:I

    sub-int/2addr p2, p0

    .line 2064
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p0

    div-int/lit8 p0, p0, 0x2

    add-int/2addr p1, p0

    invoke-direct {v0, v1, p1}, Ljava/awt/Point;-><init>(II)V

    return-object v0
.end method

.method public static getReader(Ljava/lang/String;)Ljavax/imageio/ImageReader;
    .locals 1

    .line 1725
    invoke-static {p0}, Ljavax/imageio/ImageIO;->getImageReadersByFormatName(Ljava/lang/String;)Ljava/util/Iterator;

    move-result-object p0

    .line 1726
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1727
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljavax/imageio/ImageReader;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getRectangle(Ljava/lang/String;Ljava/awt/Font;)Ljava/awt/geom/Rectangle2D;
    .locals 3

    .line 1487
    new-instance v0, Ljava/awt/font/FontRenderContext;

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    .line 1488
    invoke-static {v1, v2, v1, v2}, Ljava/awt/geom/AffineTransform;->getScaleInstance(DD)Ljava/awt/geom/AffineTransform;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Ljava/awt/font/FontRenderContext;-><init>(Ljava/awt/geom/AffineTransform;ZZ)V

    .line 1487
    invoke-virtual {p1, p0, v0}, Ljava/awt/Font;->getStringBounds(Ljava/lang/String;Ljava/awt/font/FontRenderContext;)Ljava/awt/geom/Rectangle2D;

    move-result-object p0

    return-object p0
.end method

.method public static getWriter(Ljava/awt/Image;Ljava/lang/String;)Ljavax/imageio/ImageWriter;
    .locals 0

    .line 1931
    invoke-static {p0, p1}, Lcn/hutool/core/img/ImgUtil;->toBufferedImage(Ljava/awt/Image;Ljava/lang/String;)Ljava/awt/image/BufferedImage;

    move-result-object p0

    invoke-static {p0}, Ljavax/imageio/ImageTypeSpecifier;->createFromRenderedImage(Ljava/awt/image/RenderedImage;)Ljavax/imageio/ImageTypeSpecifier;

    move-result-object p0

    .line 1932
    invoke-static {p0, p1}, Ljavax/imageio/ImageIO;->getImageWriters(Ljavax/imageio/ImageTypeSpecifier;Ljava/lang/String;)Ljava/util/Iterator;

    move-result-object p0

    .line 1933
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljavax/imageio/ImageWriter;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static getWriter(Ljava/lang/String;)Ljavax/imageio/ImageWriter;
    .locals 2

    .line 1945
    invoke-static {p0}, Ljavax/imageio/ImageIO;->getImageWritersByFormatName(Ljava/lang/String;)Ljava/util/Iterator;

    move-result-object v0

    .line 1946
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1947
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/imageio/ImageWriter;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    .line 1951
    invoke-static {p0}, Ljavax/imageio/ImageIO;->getImageWritersBySuffix(Ljava/lang/String;)Ljava/util/Iterator;

    move-result-object p0

    .line 1952
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1953
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Ljavax/imageio/ImageWriter;

    :cond_1
    return-object v0
.end method

.method public static gray(Ljava/awt/Image;)Ljava/awt/Image;
    .locals 0

    .line 663
    invoke-static {p0}, Lcn/hutool/core/img/Img;->from(Ljava/awt/Image;)Lcn/hutool/core/img/Img;

    move-result-object p0

    invoke-virtual {p0}, Lcn/hutool/core/img/Img;->gray()Lcn/hutool/core/img/Img;

    move-result-object p0

    invoke-virtual {p0}, Lcn/hutool/core/img/Img;->getImg()Ljava/awt/Image;

    move-result-object p0

    return-object p0
.end method

.method public static gray(Ljava/awt/Image;Ljava/io/File;)V
    .locals 0

    .line 627
    invoke-static {p0}, Lcn/hutool/core/img/ImgUtil;->gray(Ljava/awt/Image;)Ljava/awt/Image;

    move-result-object p0

    invoke-static {p0, p1}, Lcn/hutool/core/img/ImgUtil;->write(Ljava/awt/Image;Ljava/io/File;)V

    return-void
.end method

.method public static gray(Ljava/awt/Image;Ljava/io/OutputStream;)V
    .locals 0

    .line 639
    invoke-static {p1}, Lcn/hutool/core/img/ImgUtil;->getImageOutputStream(Ljava/io/OutputStream;)Ljavax/imageio/stream/ImageOutputStream;

    move-result-object p1

    invoke-static {p0, p1}, Lcn/hutool/core/img/ImgUtil;->gray(Ljava/awt/Image;Ljavax/imageio/stream/ImageOutputStream;)V

    return-void
.end method

.method public static gray(Ljava/awt/Image;Ljavax/imageio/stream/ImageOutputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/hutool/core/io/IORuntimeException;
        }
    .end annotation

    .line 652
    invoke-static {p0}, Lcn/hutool/core/img/ImgUtil;->gray(Ljava/awt/Image;)Ljava/awt/Image;

    move-result-object p0

    invoke-static {p0, p1}, Lcn/hutool/core/img/ImgUtil;->writeJpg(Ljava/awt/Image;Ljavax/imageio/stream/ImageOutputStream;)V

    return-void
.end method

.method public static gray(Ljava/io/File;Ljava/io/File;)V
    .locals 0

    .line 592
    invoke-static {p0}, Lcn/hutool/core/img/ImgUtil;->read(Ljava/io/File;)Ljava/awt/image/BufferedImage;

    move-result-object p0

    invoke-static {p0, p1}, Lcn/hutool/core/img/ImgUtil;->gray(Ljava/awt/Image;Ljava/io/File;)V

    return-void
.end method

.method public static gray(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 0

    .line 604
    invoke-static {p0}, Lcn/hutool/core/img/ImgUtil;->read(Ljava/io/InputStream;)Ljava/awt/image/BufferedImage;

    move-result-object p0

    invoke-static {p1}, Lcn/hutool/core/img/ImgUtil;->getImageOutputStream(Ljava/io/OutputStream;)Ljavax/imageio/stream/ImageOutputStream;

    move-result-object p1

    invoke-static {p0, p1}, Lcn/hutool/core/img/ImgUtil;->gray(Ljava/awt/Image;Ljavax/imageio/stream/ImageOutputStream;)V

    return-void
.end method

.method public static gray(Ljavax/imageio/stream/ImageInputStream;Ljavax/imageio/stream/ImageOutputStream;)V
    .locals 0

    .line 616
    invoke-static {p0}, Lcn/hutool/core/img/ImgUtil;->read(Ljavax/imageio/stream/ImageInputStream;)Ljava/awt/image/BufferedImage;

    move-result-object p0

    invoke-static {p0, p1}, Lcn/hutool/core/img/ImgUtil;->gray(Ljava/awt/Image;Ljavax/imageio/stream/ImageOutputStream;)V

    return-void
.end method

.method public static hexToColor(Ljava/lang/String;)Ljava/awt/Color;
    .locals 0

    .line 1994
    invoke-static {p0}, Lcn/hutool/core/img/ColorUtil;->hexToColor(Ljava/lang/String;)Ljava/awt/Color;

    move-result-object p0

    return-object p0
.end method

.method public static pressImage(Ljava/awt/Image;Ljava/awt/Image;IIF)Ljava/awt/Image;
    .locals 0

    .line 986
    invoke-static {p0}, Lcn/hutool/core/img/Img;->from(Ljava/awt/Image;)Lcn/hutool/core/img/Img;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcn/hutool/core/img/Img;->pressImage(Ljava/awt/Image;IIF)Lcn/hutool/core/img/Img;

    move-result-object p0

    invoke-virtual {p0}, Lcn/hutool/core/img/Img;->getImg()Ljava/awt/Image;

    move-result-object p0

    return-object p0
.end method

.method public static pressImage(Ljava/awt/Image;Ljava/awt/Image;Ljava/awt/Rectangle;F)Ljava/awt/Image;
    .locals 0

    .line 1001
    invoke-static {p0}, Lcn/hutool/core/img/Img;->from(Ljava/awt/Image;)Lcn/hutool/core/img/Img;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3}, Lcn/hutool/core/img/Img;->pressImage(Ljava/awt/Image;Ljava/awt/Rectangle;F)Lcn/hutool/core/img/Img;

    move-result-object p0

    invoke-virtual {p0}, Lcn/hutool/core/img/Img;->getImg()Ljava/awt/Image;

    move-result-object p0

    return-object p0
.end method

.method public static pressImage(Ljava/awt/Image;Ljava/io/File;Ljava/awt/Image;IIF)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/hutool/core/io/IORuntimeException;
        }
    .end annotation

    .line 938
    invoke-static {p0, p2, p3, p4, p5}, Lcn/hutool/core/img/ImgUtil;->pressImage(Ljava/awt/Image;Ljava/awt/Image;IIF)Ljava/awt/Image;

    move-result-object p0

    invoke-static {p0, p1}, Lcn/hutool/core/img/ImgUtil;->write(Ljava/awt/Image;Ljava/io/File;)V

    return-void
.end method

.method public static pressImage(Ljava/awt/Image;Ljava/io/OutputStream;Ljava/awt/Image;IIF)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/hutool/core/io/IORuntimeException;
        }
    .end annotation

    .line 955
    invoke-static {p1}, Lcn/hutool/core/img/ImgUtil;->getImageOutputStream(Ljava/io/OutputStream;)Ljavax/imageio/stream/ImageOutputStream;

    move-result-object v1

    move-object v0, p0

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-static/range {v0 .. v5}, Lcn/hutool/core/img/ImgUtil;->pressImage(Ljava/awt/Image;Ljavax/imageio/stream/ImageOutputStream;Ljava/awt/Image;IIF)V

    return-void
.end method

.method public static pressImage(Ljava/awt/Image;Ljavax/imageio/stream/ImageOutputStream;Ljava/awt/Image;IIF)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/hutool/core/io/IORuntimeException;
        }
    .end annotation

    .line 971
    invoke-static {p0, p2, p3, p4, p5}, Lcn/hutool/core/img/ImgUtil;->pressImage(Ljava/awt/Image;Ljava/awt/Image;IIF)Ljava/awt/Image;

    move-result-object p0

    invoke-static {p0, p1}, Lcn/hutool/core/img/ImgUtil;->writeJpg(Ljava/awt/Image;Ljavax/imageio/stream/ImageOutputStream;)V

    return-void
.end method

.method public static pressImage(Ljava/io/File;Ljava/io/File;Ljava/awt/Image;IIF)V
    .locals 6

    .line 890
    invoke-static {p0}, Lcn/hutool/core/img/ImgUtil;->read(Ljava/io/File;)Ljava/awt/image/BufferedImage;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-static/range {v0 .. v5}, Lcn/hutool/core/img/ImgUtil;->pressImage(Ljava/awt/Image;Ljava/io/File;Ljava/awt/Image;IIF)V

    return-void
.end method

.method public static pressImage(Ljava/io/InputStream;Ljava/io/OutputStream;Ljava/awt/Image;IIF)V
    .locals 6

    .line 905
    invoke-static {p0}, Lcn/hutool/core/img/ImgUtil;->read(Ljava/io/InputStream;)Ljava/awt/image/BufferedImage;

    move-result-object v0

    invoke-static {p1}, Lcn/hutool/core/img/ImgUtil;->getImageOutputStream(Ljava/io/OutputStream;)Ljavax/imageio/stream/ImageOutputStream;

    move-result-object v1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-static/range {v0 .. v5}, Lcn/hutool/core/img/ImgUtil;->pressImage(Ljava/awt/Image;Ljavax/imageio/stream/ImageOutputStream;Ljava/awt/Image;IIF)V

    return-void
.end method

.method public static pressImage(Ljavax/imageio/stream/ImageInputStream;Ljavax/imageio/stream/ImageOutputStream;Ljava/awt/Image;IIF)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/hutool/core/io/IORuntimeException;
        }
    .end annotation

    .line 921
    invoke-static {p0}, Lcn/hutool/core/img/ImgUtil;->read(Ljavax/imageio/stream/ImageInputStream;)Ljava/awt/image/BufferedImage;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-static/range {v0 .. v5}, Lcn/hutool/core/img/ImgUtil;->pressImage(Ljava/awt/Image;Ljavax/imageio/stream/ImageOutputStream;Ljava/awt/Image;IIF)V

    return-void
.end method

.method public static pressText(Ljava/awt/Image;Ljava/lang/String;Ljava/awt/Color;Ljava/awt/Font;IIF)Ljava/awt/Image;
    .locals 7

    .line 876
    invoke-static {p0}, Lcn/hutool/core/img/Img;->from(Ljava/awt/Image;)Lcn/hutool/core/img/Img;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lcn/hutool/core/img/Img;->pressText(Ljava/lang/String;Ljava/awt/Color;Ljava/awt/Font;IIF)Lcn/hutool/core/img/Img;

    move-result-object p0

    invoke-virtual {p0}, Lcn/hutool/core/img/Img;->getImg()Ljava/awt/Image;

    move-result-object p0

    return-object p0
.end method

.method public static pressText(Ljava/awt/Image;Ljava/io/File;Ljava/lang/String;Ljava/awt/Color;Ljava/awt/Font;IIF)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/hutool/core/io/IORuntimeException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move v4, p5

    move v5, p6

    move v6, p7

    .line 821
    invoke-static/range {v0 .. v6}, Lcn/hutool/core/img/ImgUtil;->pressText(Ljava/awt/Image;Ljava/lang/String;Ljava/awt/Color;Ljava/awt/Font;IIF)Ljava/awt/Image;

    move-result-object p0

    invoke-static {p0, p1}, Lcn/hutool/core/img/ImgUtil;->write(Ljava/awt/Image;Ljava/io/File;)V

    return-void
.end method

.method public static pressText(Ljava/awt/Image;Ljava/io/OutputStream;Ljava/lang/String;Ljava/awt/Color;Ljava/awt/Font;IIF)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/hutool/core/io/IORuntimeException;
        }
    .end annotation

    .line 840
    invoke-static {p1}, Lcn/hutool/core/img/ImgUtil;->getImageOutputStream(Ljava/io/OutputStream;)Ljavax/imageio/stream/ImageOutputStream;

    move-result-object v1

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    move v7, p7

    invoke-static/range {v0 .. v7}, Lcn/hutool/core/img/ImgUtil;->pressText(Ljava/awt/Image;Ljavax/imageio/stream/ImageOutputStream;Ljava/lang/String;Ljava/awt/Color;Ljava/awt/Font;IIF)V

    return-void
.end method

.method public static pressText(Ljava/awt/Image;Ljavax/imageio/stream/ImageOutputStream;Ljava/lang/String;Ljava/awt/Color;Ljava/awt/Font;IIF)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/hutool/core/io/IORuntimeException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move v4, p5

    move v5, p6

    move v6, p7

    .line 858
    invoke-static/range {v0 .. v6}, Lcn/hutool/core/img/ImgUtil;->pressText(Ljava/awt/Image;Ljava/lang/String;Ljava/awt/Color;Ljava/awt/Font;IIF)Ljava/awt/Image;

    move-result-object p0

    invoke-static {p0, p1}, Lcn/hutool/core/img/ImgUtil;->writeJpg(Ljava/awt/Image;Ljavax/imageio/stream/ImageOutputStream;)V

    return-void
.end method

.method public static pressText(Ljava/io/File;Ljava/io/File;Ljava/lang/String;Ljava/awt/Color;Ljava/awt/Font;IIF)V
    .locals 8

    .line 768
    invoke-static {p0}, Lcn/hutool/core/img/ImgUtil;->read(Ljava/io/File;)Ljava/awt/image/BufferedImage;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    move v7, p7

    invoke-static/range {v0 .. v7}, Lcn/hutool/core/img/ImgUtil;->pressText(Ljava/awt/Image;Ljava/io/File;Ljava/lang/String;Ljava/awt/Color;Ljava/awt/Font;IIF)V

    return-void
.end method

.method public static pressText(Ljava/io/InputStream;Ljava/io/OutputStream;Ljava/lang/String;Ljava/awt/Color;Ljava/awt/Font;IIF)V
    .locals 8

    .line 785
    invoke-static {p0}, Lcn/hutool/core/img/ImgUtil;->read(Ljava/io/InputStream;)Ljava/awt/image/BufferedImage;

    move-result-object v0

    invoke-static {p1}, Lcn/hutool/core/img/ImgUtil;->getImageOutputStream(Ljava/io/OutputStream;)Ljavax/imageio/stream/ImageOutputStream;

    move-result-object v1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    move v7, p7

    invoke-static/range {v0 .. v7}, Lcn/hutool/core/img/ImgUtil;->pressText(Ljava/awt/Image;Ljavax/imageio/stream/ImageOutputStream;Ljava/lang/String;Ljava/awt/Color;Ljava/awt/Font;IIF)V

    return-void
.end method

.method public static pressText(Ljavax/imageio/stream/ImageInputStream;Ljavax/imageio/stream/ImageOutputStream;Ljava/lang/String;Ljava/awt/Color;Ljava/awt/Font;IIF)V
    .locals 8

    .line 802
    invoke-static {p0}, Lcn/hutool/core/img/ImgUtil;->read(Ljavax/imageio/stream/ImageInputStream;)Ljava/awt/image/BufferedImage;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    move v7, p7

    invoke-static/range {v0 .. v7}, Lcn/hutool/core/img/ImgUtil;->pressText(Ljava/awt/Image;Ljavax/imageio/stream/ImageOutputStream;Ljava/lang/String;Ljava/awt/Color;Ljava/awt/Font;IIF)V

    return-void
.end method

.method public static randomColor()Ljava/awt/Color;
    .locals 1

    .line 2037
    invoke-static {}, Lcn/hutool/core/img/ColorUtil;->randomColor()Ljava/awt/Color;

    move-result-object v0

    return-object v0
.end method

.method public static randomColor(Ljava/util/Random;)Ljava/awt/Color;
    .locals 0

    .line 2049
    invoke-static {p0}, Lcn/hutool/core/img/ColorUtil;->randomColor(Ljava/util/Random;)Ljava/awt/Color;

    move-result-object p0

    return-object p0
.end method

.method public static read(Lcn/hutool/core/io/resource/Resource;)Ljava/awt/image/BufferedImage;
    .locals 0

    .line 1784
    invoke-interface {p0}, Lcn/hutool/core/io/resource/Resource;->getStream()Ljava/io/InputStream;

    move-result-object p0

    invoke-static {p0}, Lcn/hutool/core/img/ImgUtil;->read(Ljava/io/InputStream;)Ljava/awt/image/BufferedImage;

    move-result-object p0

    return-object p0
.end method

.method public static read(Ljava/io/File;)Ljava/awt/image/BufferedImage;
    .locals 3

    .line 1753
    :try_start_0
    invoke-static {p0}, Ljavax/imageio/ImageIO;->read(Ljava/io/File;)Ljava/awt/image/BufferedImage;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_0

    return-object v0

    .line 1759
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Image type of file ["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, "] is not supported!"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_0
    move-exception p0

    .line 1755
    new-instance v0, Lcn/hutool/core/io/IORuntimeException;

    invoke-direct {v0, p0}, Lcn/hutool/core/io/IORuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static read(Ljava/io/InputStream;)Ljava/awt/image/BufferedImage;
    .locals 1

    .line 1797
    :try_start_0
    invoke-static {p0}, Ljavax/imageio/ImageIO;->read(Ljava/io/InputStream;)Ljava/awt/image/BufferedImage;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_0

    return-object p0

    .line 1803
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Image type is not supported!"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_0
    move-exception p0

    .line 1799
    new-instance v0, Lcn/hutool/core/io/IORuntimeException;

    invoke-direct {v0, p0}, Lcn/hutool/core/io/IORuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static read(Ljava/lang/String;)Ljava/awt/image/BufferedImage;
    .locals 0

    .line 1740
    invoke-static {p0}, Lcn/hutool/core/io/FileUtil;->file(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    invoke-static {p0}, Lcn/hutool/core/img/ImgUtil;->read(Ljava/io/File;)Ljava/awt/image/BufferedImage;

    move-result-object p0

    return-object p0
.end method

.method public static read(Ljava/net/URL;)Ljava/awt/image/BufferedImage;
    .locals 3

    .line 1841
    :try_start_0
    invoke-static {p0}, Ljavax/imageio/ImageIO;->read(Ljava/net/URL;)Ljava/awt/image/BufferedImage;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_0

    return-object v0

    .line 1847
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Image type of ["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, "] is not supported!"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_0
    move-exception p0

    .line 1843
    new-instance v0, Lcn/hutool/core/io/IORuntimeException;

    invoke-direct {v0, p0}, Lcn/hutool/core/io/IORuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static read(Ljavax/imageio/stream/ImageInputStream;)Ljava/awt/image/BufferedImage;
    .locals 1

    .line 1819
    :try_start_0
    invoke-static {p0}, Ljavax/imageio/ImageIO;->read(Ljavax/imageio/stream/ImageInputStream;)Ljava/awt/image/BufferedImage;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_0

    return-object p0

    .line 1825
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Image type is not supported!"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_0
    move-exception p0

    .line 1821
    new-instance v0, Lcn/hutool/core/io/IORuntimeException;

    invoke-direct {v0, p0}, Lcn/hutool/core/io/IORuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static rotate(Ljava/awt/Image;I)Ljava/awt/Image;
    .locals 0

    .line 1072
    invoke-static {p0}, Lcn/hutool/core/img/Img;->from(Ljava/awt/Image;)Lcn/hutool/core/img/Img;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcn/hutool/core/img/Img;->rotate(I)Lcn/hutool/core/img/Img;

    move-result-object p0

    invoke-virtual {p0}, Lcn/hutool/core/img/Img;->getImg()Ljava/awt/Image;

    move-result-object p0

    return-object p0
.end method

.method public static rotate(Ljava/awt/Image;ILjava/io/File;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/hutool/core/io/IORuntimeException;
        }
    .end annotation

    .line 1031
    invoke-static {p0, p1}, Lcn/hutool/core/img/ImgUtil;->rotate(Ljava/awt/Image;I)Ljava/awt/Image;

    move-result-object p0

    invoke-static {p0, p2}, Lcn/hutool/core/img/ImgUtil;->write(Ljava/awt/Image;Ljava/io/File;)V

    return-void
.end method

.method public static rotate(Ljava/awt/Image;ILjava/io/OutputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/hutool/core/io/IORuntimeException;
        }
    .end annotation

    .line 1045
    invoke-static {p0, p1}, Lcn/hutool/core/img/ImgUtil;->rotate(Ljava/awt/Image;I)Ljava/awt/Image;

    move-result-object p0

    invoke-static {p2}, Lcn/hutool/core/img/ImgUtil;->getImageOutputStream(Ljava/io/OutputStream;)Ljavax/imageio/stream/ImageOutputStream;

    move-result-object p1

    invoke-static {p0, p1}, Lcn/hutool/core/img/ImgUtil;->writeJpg(Ljava/awt/Image;Ljavax/imageio/stream/ImageOutputStream;)V

    return-void
.end method

.method public static rotate(Ljava/awt/Image;ILjavax/imageio/stream/ImageOutputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/hutool/core/io/IORuntimeException;
        }
    .end annotation

    .line 1059
    invoke-static {p0, p1}, Lcn/hutool/core/img/ImgUtil;->rotate(Ljava/awt/Image;I)Ljava/awt/Image;

    move-result-object p0

    invoke-static {p0, p2}, Lcn/hutool/core/img/ImgUtil;->writeJpg(Ljava/awt/Image;Ljavax/imageio/stream/ImageOutputStream;)V

    return-void
.end method

.method public static rotate(Ljava/io/File;ILjava/io/File;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/hutool/core/io/IORuntimeException;
        }
    .end annotation

    .line 1017
    invoke-static {p0}, Lcn/hutool/core/img/ImgUtil;->read(Ljava/io/File;)Ljava/awt/image/BufferedImage;

    move-result-object p0

    invoke-static {p0, p1, p2}, Lcn/hutool/core/img/ImgUtil;->rotate(Ljava/awt/Image;ILjava/io/File;)V

    return-void
.end method

.method public static scale(Ljava/awt/Image;F)Ljava/awt/Image;
    .locals 0

    .line 163
    invoke-static {p0}, Lcn/hutool/core/img/Img;->from(Ljava/awt/Image;)Lcn/hutool/core/img/Img;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcn/hutool/core/img/Img;->scale(F)Lcn/hutool/core/img/Img;

    move-result-object p0

    invoke-virtual {p0}, Lcn/hutool/core/img/Img;->getImg()Ljava/awt/Image;

    move-result-object p0

    return-object p0
.end method

.method public static scale(Ljava/awt/Image;II)Ljava/awt/Image;
    .locals 0

    .line 177
    invoke-static {p0}, Lcn/hutool/core/img/Img;->from(Ljava/awt/Image;)Lcn/hutool/core/img/Img;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcn/hutool/core/img/Img;->scale(II)Lcn/hutool/core/img/Img;

    move-result-object p0

    invoke-virtual {p0}, Lcn/hutool/core/img/Img;->getImg()Ljava/awt/Image;

    move-result-object p0

    return-object p0
.end method

.method public static scale(Ljava/awt/Image;IILjava/awt/Color;)Ljava/awt/Image;
    .locals 0

    .line 254
    invoke-static {p0}, Lcn/hutool/core/img/Img;->from(Ljava/awt/Image;)Lcn/hutool/core/img/Img;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3}, Lcn/hutool/core/img/Img;->scale(IILjava/awt/Color;)Lcn/hutool/core/img/Img;

    move-result-object p0

    invoke-virtual {p0}, Lcn/hutool/core/img/Img;->getImg()Ljava/awt/Image;

    move-result-object p0

    return-object p0
.end method

.method public static scale(Ljava/awt/Image;Ljava/io/File;F)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/hutool/core/io/IORuntimeException;
        }
    .end annotation

    .line 123
    invoke-static {p0}, Lcn/hutool/core/img/Img;->from(Ljava/awt/Image;)Lcn/hutool/core/img/Img;

    move-result-object p0

    invoke-static {p1}, Lcn/hutool/core/io/FileUtil;->extName(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcn/hutool/core/img/Img;->setTargetImageType(Ljava/lang/String;)Lcn/hutool/core/img/Img;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcn/hutool/core/img/Img;->scale(F)Lcn/hutool/core/img/Img;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcn/hutool/core/img/Img;->write(Ljava/io/File;)Z

    return-void
.end method

.method public static scale(Ljava/awt/Image;Ljava/io/OutputStream;F)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/hutool/core/io/IORuntimeException;
        }
    .end annotation

    .line 137
    invoke-static {p1}, Lcn/hutool/core/img/ImgUtil;->getImageOutputStream(Ljava/io/OutputStream;)Ljavax/imageio/stream/ImageOutputStream;

    move-result-object p1

    invoke-static {p0, p1, p2}, Lcn/hutool/core/img/ImgUtil;->scale(Ljava/awt/Image;Ljavax/imageio/stream/ImageOutputStream;F)V

    return-void
.end method

.method public static scale(Ljava/awt/Image;Ljavax/imageio/stream/ImageOutputStream;F)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/hutool/core/io/IORuntimeException;
        }
    .end annotation

    .line 151
    invoke-static {p0, p2}, Lcn/hutool/core/img/ImgUtil;->scale(Ljava/awt/Image;F)Ljava/awt/Image;

    move-result-object p0

    invoke-static {p0, p1}, Lcn/hutool/core/img/ImgUtil;->writeJpg(Ljava/awt/Image;Ljavax/imageio/stream/ImageOutputStream;)V

    return-void
.end method

.method public static scale(Ljava/awt/Image;Ljavax/imageio/stream/ImageOutputStream;IILjava/awt/Color;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/hutool/core/io/IORuntimeException;
        }
    .end annotation

    .line 240
    invoke-static {p0, p2, p3, p4}, Lcn/hutool/core/img/ImgUtil;->scale(Ljava/awt/Image;IILjava/awt/Color;)Ljava/awt/Image;

    move-result-object p0

    invoke-static {p0, p1}, Lcn/hutool/core/img/ImgUtil;->writeJpg(Ljava/awt/Image;Ljavax/imageio/stream/ImageOutputStream;)V

    return-void
.end method

.method public static scale(Ljava/io/File;Ljava/io/File;F)V
    .locals 0

    .line 83
    invoke-static {p0}, Lcn/hutool/core/img/ImgUtil;->read(Ljava/io/File;)Ljava/awt/image/BufferedImage;

    move-result-object p0

    invoke-static {p0, p1, p2}, Lcn/hutool/core/img/ImgUtil;->scale(Ljava/awt/Image;Ljava/io/File;F)V

    return-void
.end method

.method public static scale(Ljava/io/File;Ljava/io/File;IILjava/awt/Color;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/hutool/core/io/IORuntimeException;
        }
    .end annotation

    .line 192
    invoke-static {p0}, Lcn/hutool/core/img/Img;->from(Ljava/io/File;)Lcn/hutool/core/img/Img;

    move-result-object p0

    .line 193
    invoke-static {p1}, Lcn/hutool/core/io/FileUtil;->extName(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcn/hutool/core/img/Img;->setTargetImageType(Ljava/lang/String;)Lcn/hutool/core/img/Img;

    move-result-object p0

    .line 194
    invoke-virtual {p0, p2, p3, p4}, Lcn/hutool/core/img/Img;->scale(IILjava/awt/Color;)Lcn/hutool/core/img/Img;

    move-result-object p0

    .line 195
    invoke-virtual {p0, p1}, Lcn/hutool/core/img/Img;->write(Ljava/io/File;)Z

    return-void
.end method

.method public static scale(Ljava/io/InputStream;Ljava/io/OutputStream;F)V
    .locals 0

    .line 96
    invoke-static {p0}, Lcn/hutool/core/img/ImgUtil;->read(Ljava/io/InputStream;)Ljava/awt/image/BufferedImage;

    move-result-object p0

    invoke-static {p0, p1, p2}, Lcn/hutool/core/img/ImgUtil;->scale(Ljava/awt/Image;Ljava/io/OutputStream;F)V

    return-void
.end method

.method public static scale(Ljava/io/InputStream;Ljava/io/OutputStream;IILjava/awt/Color;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/hutool/core/io/IORuntimeException;
        }
    .end annotation

    .line 210
    invoke-static {p0}, Lcn/hutool/core/img/ImgUtil;->read(Ljava/io/InputStream;)Ljava/awt/image/BufferedImage;

    move-result-object p0

    invoke-static {p1}, Lcn/hutool/core/img/ImgUtil;->getImageOutputStream(Ljava/io/OutputStream;)Ljavax/imageio/stream/ImageOutputStream;

    move-result-object p1

    invoke-static {p0, p1, p2, p3, p4}, Lcn/hutool/core/img/ImgUtil;->scale(Ljava/awt/Image;Ljavax/imageio/stream/ImageOutputStream;IILjava/awt/Color;)V

    return-void
.end method

.method public static scale(Ljavax/imageio/stream/ImageInputStream;Ljavax/imageio/stream/ImageOutputStream;F)V
    .locals 0

    .line 109
    invoke-static {p0}, Lcn/hutool/core/img/ImgUtil;->read(Ljavax/imageio/stream/ImageInputStream;)Ljava/awt/image/BufferedImage;

    move-result-object p0

    invoke-static {p0, p1, p2}, Lcn/hutool/core/img/ImgUtil;->scale(Ljava/awt/Image;Ljavax/imageio/stream/ImageOutputStream;F)V

    return-void
.end method

.method public static scale(Ljavax/imageio/stream/ImageInputStream;Ljavax/imageio/stream/ImageOutputStream;IILjava/awt/Color;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/hutool/core/io/IORuntimeException;
        }
    .end annotation

    .line 225
    invoke-static {p0}, Lcn/hutool/core/img/ImgUtil;->read(Ljavax/imageio/stream/ImageInputStream;)Ljava/awt/image/BufferedImage;

    move-result-object p0

    invoke-static {p0, p1, p2, p3, p4}, Lcn/hutool/core/img/ImgUtil;->scale(Ljava/awt/Image;Ljavax/imageio/stream/ImageOutputStream;IILjava/awt/Color;)V

    return-void
.end method

.method public static slice(Ljava/awt/Image;Ljava/io/File;II)V
    .locals 8

    if-gtz p2, :cond_0

    const/16 p2, 0xc8

    :cond_0
    if-gtz p3, :cond_1

    const/16 p3, 0x96

    :cond_1
    const/4 v0, 0x0

    .line 400
    invoke-virtual {p0, v0}, Ljava/awt/Image;->getWidth(Ljava/awt/image/ImageObserver;)I

    move-result v1

    .line 401
    invoke-virtual {p0, v0}, Ljava/awt/Image;->getHeight(Ljava/awt/image/ImageObserver;)I

    move-result v0

    if-ge v1, p2, :cond_2

    move p2, v1

    :cond_2
    if-ge v0, p3, :cond_3

    move p3, v0

    .line 413
    :cond_3
    rem-int v2, v1, p2

    if-nez v2, :cond_4

    .line 414
    div-int/2addr v1, p2

    goto :goto_0

    :cond_4
    int-to-double v1, v1

    int-to-double v3, p2

    div-double/2addr v1, v3

    .line 416
    invoke-static {v1, v2}, Ljava/lang/Math;->floor(D)D

    move-result-wide v1

    double-to-int v1, v1

    add-int/lit8 v1, v1, 0x1

    .line 418
    :goto_0
    rem-int v2, v0, p3

    if-nez v2, :cond_5

    .line 419
    div-int/2addr v0, p3

    goto :goto_1

    :cond_5
    int-to-double v2, v0

    int-to-double v4, p3

    div-double/2addr v2, v4

    .line 421
    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int v0, v2

    add-int/lit8 v0, v0, 0x1

    :goto_1
    const/4 v2, 0x0

    move v3, v2

    :goto_2
    if-ge v3, v0, :cond_7

    move v4, v2

    :goto_3
    if-ge v4, v1, :cond_6

    .line 429
    new-instance v5, Ljava/awt/Rectangle;

    mul-int v6, v4, p2

    mul-int v7, v3, p3

    invoke-direct {v5, v6, v7, p2, p3}, Ljava/awt/Rectangle;-><init>(IIII)V

    invoke-static {p0, v5}, Lcn/hutool/core/img/ImgUtil;->cut(Ljava/awt/Image;Ljava/awt/Rectangle;)Ljava/awt/Image;

    move-result-object v5

    .line 431
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "_r"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "_c"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".jpg"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {p1, v6}, Lcn/hutool/core/io/FileUtil;->file(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v6

    invoke-static {v5, v6}, Lcn/hutool/core/img/ImgUtil;->write(Ljava/awt/Image;Ljava/io/File;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_7
    return-void
.end method

.method public static slice(Ljava/io/File;Ljava/io/File;II)V
    .locals 0

    .line 382
    invoke-static {p0}, Lcn/hutool/core/img/ImgUtil;->read(Ljava/io/File;)Ljava/awt/image/BufferedImage;

    move-result-object p0

    invoke-static {p0, p1, p2, p3}, Lcn/hutool/core/img/ImgUtil;->slice(Ljava/awt/Image;Ljava/io/File;II)V

    return-void
.end method

.method public static sliceByRowsAndCols(Ljava/awt/Image;Ljava/io/File;II)V
    .locals 1

    const-string v0, "jpeg"

    .line 474
    invoke-static {p0, p1, v0, p2, p3}, Lcn/hutool/core/img/ImgUtil;->sliceByRowsAndCols(Ljava/awt/Image;Ljava/io/File;Ljava/lang/String;II)V

    return-void
.end method

.method public static sliceByRowsAndCols(Ljava/awt/Image;Ljava/io/File;Ljava/lang/String;II)V
    .locals 9

    .line 488
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 489
    invoke-static {p1}, Lcn/hutool/core/io/FileUtil;->mkdir(Ljava/io/File;)Ljava/io/File;

    goto :goto_0

    .line 490
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_7

    :goto_0
    const/16 v0, 0x14

    const/4 v1, 0x2

    if-lez p3, :cond_1

    if-le p3, v0, :cond_2

    :cond_1
    move p3, v1

    :cond_2
    if-lez p4, :cond_3

    if-le p4, v0, :cond_4

    :cond_3
    move p4, v1

    .line 502
    :cond_4
    :try_start_0
    invoke-static {p0}, Lcn/hutool/core/img/ImgUtil;->toBufferedImage(Ljava/awt/Image;)Ljava/awt/image/BufferedImage;

    move-result-object p0

    .line 503
    invoke-virtual {p0}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result v0

    .line 504
    invoke-virtual {p0}, Ljava/awt/image/BufferedImage;->getHeight()I

    move-result v1

    .line 506
    invoke-static {v0, p4}, Lcn/hutool/core/util/NumberUtil;->partValue(II)I

    move-result v0

    .line 507
    invoke-static {v1, p3}, Lcn/hutool/core/util/NumberUtil;->partValue(II)I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_1
    if-ge v3, p3, :cond_6

    move v4, v2

    :goto_2
    if-ge v4, p4, :cond_5

    .line 513
    new-instance v5, Ljava/awt/Rectangle;

    mul-int v6, v4, v0

    mul-int v7, v3, v1

    invoke-direct {v5, v6, v7, v0, v1}, Ljava/awt/Rectangle;-><init>(IIII)V

    invoke-static {p0, v5}, Lcn/hutool/core/img/ImgUtil;->cut(Ljava/awt/Image;Ljava/awt/Rectangle;)Ljava/awt/Image;

    move-result-object v5

    .line 515
    invoke-static {v5}, Lcn/hutool/core/img/ImgUtil;->toRenderedImage(Ljava/awt/Image;)Ljava/awt/image/RenderedImage;

    move-result-object v5

    new-instance v6, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "_r"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "_c"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, p1, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v5, p2, v6}, Ljavax/imageio/ImageIO;->write(Ljava/awt/image/RenderedImage;Ljava/lang/String;Ljava/io/File;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_6
    return-void

    :catch_0
    move-exception p0

    .line 519
    new-instance p1, Lcn/hutool/core/io/IORuntimeException;

    invoke-direct {p1, p0}, Lcn/hutool/core/io/IORuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    .line 491
    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Destination Dir must be a Directory !"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static sliceByRowsAndCols(Ljava/io/File;Ljava/io/File;II)V
    .locals 1

    const-string v0, "jpeg"

    .line 445
    invoke-static {p0, p1, v0, p2, p3}, Lcn/hutool/core/img/ImgUtil;->sliceByRowsAndCols(Ljava/io/File;Ljava/io/File;Ljava/lang/String;II)V

    return-void
.end method

.method public static sliceByRowsAndCols(Ljava/io/File;Ljava/io/File;Ljava/lang/String;II)V
    .locals 0

    .line 459
    :try_start_0
    invoke-static {p0}, Ljavax/imageio/ImageIO;->read(Ljava/io/File;)Ljava/awt/image/BufferedImage;

    move-result-object p0

    invoke-static {p0, p1, p2, p3, p4}, Lcn/hutool/core/img/ImgUtil;->sliceByRowsAndCols(Ljava/awt/Image;Ljava/io/File;Ljava/lang/String;II)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 461
    new-instance p1, Lcn/hutool/core/io/IORuntimeException;

    invoke-direct {p1, p0}, Lcn/hutool/core/io/IORuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static toBase64(Ljava/awt/Image;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1396
    invoke-static {p0, p1}, Lcn/hutool/core/img/ImgUtil;->toBytes(Ljava/awt/Image;Ljava/lang/String;)[B

    move-result-object p0

    invoke-static {p0}, Lcn/hutool/core/codec/Base64;->encode([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static toBase64DataUri(Ljava/awt/Image;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1382
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "image/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "base64"

    .line 1384
    invoke-static {p0, p1}, Lcn/hutool/core/img/ImgUtil;->toBase64(Ljava/awt/Image;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1382
    invoke-static {v0, v1, p0}, Lcn/hutool/core/util/URLUtil;->getDataUri(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static toBufferedImage(Ljava/awt/Image;)Ljava/awt/image/BufferedImage;
    .locals 1

    .line 1177
    instance-of v0, p0, Ljava/awt/image/BufferedImage;

    if-eqz v0, :cond_0

    .line 1178
    check-cast p0, Ljava/awt/image/BufferedImage;

    return-object p0

    :cond_0
    const/4 v0, 0x1

    .line 1181
    invoke-static {p0, v0}, Lcn/hutool/core/img/ImgUtil;->copyImage(Ljava/awt/Image;I)Ljava/awt/image/BufferedImage;

    move-result-object p0

    return-object p0
.end method

.method public static toBufferedImage(Ljava/awt/Image;I)Ljava/awt/image/BufferedImage;
    .locals 2

    .line 1227
    instance-of v0, p0, Ljava/awt/image/BufferedImage;

    if-eqz v0, :cond_1

    .line 1228
    move-object v0, p0

    check-cast v0, Ljava/awt/image/BufferedImage;

    .line 1229
    invoke-virtual {v0}, Ljava/awt/image/BufferedImage;->getType()I

    move-result v1

    if-eq p1, v1, :cond_0

    .line 1230
    invoke-static {p0, p1}, Lcn/hutool/core/img/ImgUtil;->copyImage(Ljava/awt/Image;I)Ljava/awt/image/BufferedImage;

    move-result-object v0

    :cond_0
    return-object v0

    .line 1235
    :cond_1
    invoke-static {p0, p1}, Lcn/hutool/core/img/ImgUtil;->copyImage(Ljava/awt/Image;I)Ljava/awt/image/BufferedImage;

    move-result-object p0

    return-object p0
.end method

.method public static toBufferedImage(Ljava/awt/Image;ILjava/awt/Color;)Ljava/awt/image/BufferedImage;
    .locals 2

    .line 1251
    instance-of v0, p0, Ljava/awt/image/BufferedImage;

    if-eqz v0, :cond_1

    .line 1252
    move-object v0, p0

    check-cast v0, Ljava/awt/image/BufferedImage;

    .line 1253
    invoke-virtual {v0}, Ljava/awt/image/BufferedImage;->getType()I

    move-result v1

    if-eq p1, v1, :cond_0

    .line 1254
    invoke-static {p0, p1, p2}, Lcn/hutool/core/img/ImgUtil;->copyImage(Ljava/awt/Image;ILjava/awt/Color;)Ljava/awt/image/BufferedImage;

    move-result-object v0

    :cond_0
    return-object v0

    .line 1259
    :cond_1
    invoke-static {p0, p1, p2}, Lcn/hutool/core/img/ImgUtil;->copyImage(Ljava/awt/Image;ILjava/awt/Color;)Ljava/awt/image/BufferedImage;

    move-result-object p0

    return-object p0
.end method

.method public static toBufferedImage(Ljava/awt/Image;Ljava/lang/String;)Ljava/awt/image/BufferedImage;
    .locals 1

    const/4 v0, 0x0

    .line 1195
    invoke-static {p0, p1, v0}, Lcn/hutool/core/img/ImgUtil;->toBufferedImage(Ljava/awt/Image;Ljava/lang/String;Ljava/awt/Color;)Ljava/awt/image/BufferedImage;

    move-result-object p0

    return-object p0
.end method

.method public static toBufferedImage(Ljava/awt/Image;Ljava/lang/String;Ljava/awt/Color;)Ljava/awt/image/BufferedImage;
    .locals 1

    const-string v0, "png"

    .line 1210
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 1213
    :goto_0
    invoke-static {p0, p1, p2}, Lcn/hutool/core/img/ImgUtil;->toBufferedImage(Ljava/awt/Image;ILjava/awt/Color;)Ljava/awt/image/BufferedImage;

    move-result-object p0

    return-object p0
.end method

.method public static toBytes(Ljava/awt/Image;Ljava/lang/String;)[B
    .locals 1

    .line 1408
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1409
    invoke-static {p0, p1, v0}, Lcn/hutool/core/img/ImgUtil;->write(Ljava/awt/Image;Ljava/lang/String;Ljava/io/OutputStream;)V

    .line 1410
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0
.end method

.method public static toHex(III)Ljava/lang/String;
    .locals 0

    .line 1983
    invoke-static {p0, p1, p2}, Lcn/hutool/core/img/ColorUtil;->toHex(III)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static toHex(Ljava/awt/Color;)Ljava/lang/String;
    .locals 0

    .line 1970
    invoke-static {p0}, Lcn/hutool/core/img/ColorUtil;->toHex(Ljava/awt/Color;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static toImage(Ljava/lang/String;)Ljava/awt/image/BufferedImage;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/hutool/core/io/IORuntimeException;
        }
    .end annotation

    .line 1347
    invoke-static {p0}, Lcn/hutool/core/codec/Base64;->decode(Ljava/lang/CharSequence;)[B

    move-result-object p0

    invoke-static {p0}, Lcn/hutool/core/img/ImgUtil;->toImage([B)Ljava/awt/image/BufferedImage;

    move-result-object p0

    return-object p0
.end method

.method public static toImage([B)Ljava/awt/image/BufferedImage;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/hutool/core/io/IORuntimeException;
        }
    .end annotation

    .line 1358
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-static {v0}, Lcn/hutool/core/img/ImgUtil;->read(Ljava/io/InputStream;)Ljava/awt/image/BufferedImage;

    move-result-object p0

    return-object p0
.end method

.method public static toRenderedImage(Ljava/awt/Image;)Ljava/awt/image/RenderedImage;
    .locals 1

    .line 1162
    instance-of v0, p0, Ljava/awt/image/RenderedImage;

    if-eqz v0, :cond_0

    .line 1163
    check-cast p0, Ljava/awt/image/RenderedImage;

    return-object p0

    :cond_0
    const/4 v0, 0x1

    .line 1166
    invoke-static {p0, v0}, Lcn/hutool/core/img/ImgUtil;->copyImage(Ljava/awt/Image;I)Ljava/awt/image/BufferedImage;

    move-result-object p0

    return-object p0
.end method

.method public static toStream(Ljava/awt/Image;Ljava/lang/String;)Ljava/io/ByteArrayInputStream;
    .locals 0

    .line 1370
    invoke-static {p0, p1}, Lcn/hutool/core/img/ImgUtil;->toBytes(Ljava/awt/Image;Ljava/lang/String;)[B

    move-result-object p0

    invoke-static {p0}, Lcn/hutool/core/io/IoUtil;->toStream([B)Ljava/io/ByteArrayInputStream;

    move-result-object p0

    return-object p0
.end method

.method public static transform(Ljava/awt/geom/AffineTransform;Ljava/awt/image/BufferedImage;)Ljava/awt/image/BufferedImage;
    .locals 2

    .line 2195
    new-instance v0, Ljava/awt/image/AffineTransformOp;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Ljava/awt/image/AffineTransformOp;-><init>(Ljava/awt/geom/AffineTransform;Ljava/awt/RenderingHints;)V

    invoke-static {v0, p1}, Lcn/hutool/core/img/ImgUtil;->filter(Ljava/awt/image/BufferedImageOp;Ljava/awt/image/BufferedImage;)Ljava/awt/image/BufferedImage;

    move-result-object p0

    return-object p0
.end method

.method public static write(Ljava/awt/Image;Ljava/io/File;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/hutool/core/io/IORuntimeException;
        }
    .end annotation

    .line 1664
    invoke-static {p1}, Lcn/hutool/core/io/FileUtil;->touch(Ljava/io/File;)Ljava/io/File;

    .line 1667
    :try_start_0
    invoke-static {p1}, Lcn/hutool/core/img/ImgUtil;->getImageOutputStream(Ljava/io/File;)Ljavax/imageio/stream/ImageOutputStream;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1668
    :try_start_1
    invoke-static {p1}, Lcn/hutool/core/io/FileUtil;->extName(Ljava/io/File;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v0}, Lcn/hutool/core/img/ImgUtil;->write(Ljava/awt/Image;Ljava/lang/String;Ljavax/imageio/stream/ImageOutputStream;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1670
    invoke-static {v0}, Lcn/hutool/core/io/IoUtil;->close(Ljava/io/Closeable;)V

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :catchall_1
    move-exception p0

    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcn/hutool/core/io/IoUtil;->close(Ljava/io/Closeable;)V

    .line 1671
    throw p0
.end method

.method public static write(Ljava/awt/Image;Ljava/lang/String;Ljava/io/OutputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/hutool/core/io/IORuntimeException;
        }
    .end annotation

    .line 1600
    invoke-static {p2}, Lcn/hutool/core/img/ImgUtil;->getImageOutputStream(Ljava/io/OutputStream;)Ljavax/imageio/stream/ImageOutputStream;

    move-result-object p2

    invoke-static {p0, p1, p2}, Lcn/hutool/core/img/ImgUtil;->write(Ljava/awt/Image;Ljava/lang/String;Ljavax/imageio/stream/ImageOutputStream;)Z

    return-void
.end method

.method public static write(Ljavax/imageio/stream/ImageInputStream;Ljava/lang/String;Ljavax/imageio/stream/ImageOutputStream;)V
    .locals 0

    .line 1586
    invoke-static {p0}, Lcn/hutool/core/img/ImgUtil;->read(Ljavax/imageio/stream/ImageInputStream;)Ljava/awt/image/BufferedImage;

    move-result-object p0

    invoke-static {p0, p1, p2}, Lcn/hutool/core/img/ImgUtil;->write(Ljava/awt/Image;Ljava/lang/String;Ljavax/imageio/stream/ImageOutputStream;)Z

    return-void
.end method

.method public static write(Ljava/awt/Image;Ljava/lang/String;Ljavax/imageio/stream/ImageOutputStream;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/hutool/core/io/IORuntimeException;
        }
    .end annotation

    const/high16 v0, 0x3f800000    # 1.0f

    .line 1615
    invoke-static {p0, p1, p2, v0}, Lcn/hutool/core/img/ImgUtil;->write(Ljava/awt/Image;Ljava/lang/String;Ljavax/imageio/stream/ImageOutputStream;F)Z

    move-result p0

    return p0
.end method

.method public static write(Ljava/awt/Image;Ljava/lang/String;Ljavax/imageio/stream/ImageOutputStream;F)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/hutool/core/io/IORuntimeException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1630
    invoke-static {p0, p1, p2, p3, v0}, Lcn/hutool/core/img/ImgUtil;->write(Ljava/awt/Image;Ljava/lang/String;Ljavax/imageio/stream/ImageOutputStream;FLjava/awt/Color;)Z

    move-result p0

    return p0
.end method

.method public static write(Ljava/awt/Image;Ljava/lang/String;Ljavax/imageio/stream/ImageOutputStream;FLjava/awt/Color;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/hutool/core/io/IORuntimeException;
        }
    .end annotation

    .line 1646
    invoke-static {p1}, Lcn/hutool/core/util/StrUtil;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "jpg"

    .line 1650
    :cond_0
    invoke-static {p0, p1, p4}, Lcn/hutool/core/img/ImgUtil;->toBufferedImage(Ljava/awt/Image;Ljava/lang/String;Ljava/awt/Color;)Ljava/awt/image/BufferedImage;

    move-result-object p0

    .line 1651
    invoke-static {p0, p1}, Lcn/hutool/core/img/ImgUtil;->getWriter(Ljava/awt/Image;Ljava/lang/String;)Ljavax/imageio/ImageWriter;

    move-result-object p1

    .line 1652
    invoke-static {p0, p1, p2, p3}, Lcn/hutool/core/img/ImgUtil;->write(Ljava/awt/Image;Ljavax/imageio/ImageWriter;Ljavax/imageio/stream/ImageOutputStream;F)Z

    move-result p0

    return p0
.end method

.method public static write(Ljava/awt/Image;Ljavax/imageio/ImageWriter;Ljavax/imageio/stream/ImageOutputStream;F)Z
    .locals 4

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return p0

    .line 1689
    :cond_0
    invoke-virtual {p1, p2}, Ljavax/imageio/ImageWriter;->setOutput(Ljava/lang/Object;)V

    .line 1690
    invoke-static {p0}, Lcn/hutool/core/img/ImgUtil;->toRenderedImage(Ljava/awt/Image;)Ljava/awt/image/RenderedImage;

    move-result-object p0

    const/4 v0, 0x0

    cmpl-float v0, p3, v0

    const/4 v1, 0x0

    if-lez v0, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, p3, v0

    if-gez v0, :cond_1

    .line 1694
    invoke-virtual {p1}, Ljavax/imageio/ImageWriter;->getDefaultWriteParam()Ljavax/imageio/ImageWriteParam;

    move-result-object v0

    .line 1695
    invoke-virtual {v0}, Ljavax/imageio/ImageWriteParam;->canWriteCompressed()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x2

    .line 1696
    invoke-virtual {v0, v2}, Ljavax/imageio/ImageWriteParam;->setCompressionMode(I)V

    .line 1697
    invoke-virtual {v0, p3}, Ljavax/imageio/ImageWriteParam;->setCompressionQuality(F)V

    .line 1698
    invoke-interface {p0}, Ljava/awt/image/RenderedImage;->getColorModel()Ljava/awt/image/ColorModel;

    move-result-object p3

    .line 1699
    new-instance v2, Ljavax/imageio/ImageTypeSpecifier;

    const/16 v3, 0x10

    invoke-virtual {p3, v3, v3}, Ljava/awt/image/ColorModel;->createCompatibleSampleModel(II)Ljava/awt/image/SampleModel;

    move-result-object v3

    invoke-direct {v2, p3, v3}, Ljavax/imageio/ImageTypeSpecifier;-><init>(Ljava/awt/image/ColorModel;Ljava/awt/image/SampleModel;)V

    invoke-virtual {v0, v2}, Ljavax/imageio/ImageWriteParam;->setDestinationType(Ljavax/imageio/ImageTypeSpecifier;)V

    goto :goto_0

    :cond_1
    move-object v0, v1

    :cond_2
    :goto_0
    if-eqz v0, :cond_3

    .line 1705
    :try_start_0
    new-instance p3, Ljavax/imageio/IIOImage;

    invoke-direct {p3, p0, v1, v1}, Ljavax/imageio/IIOImage;-><init>(Ljava/awt/image/RenderedImage;Ljava/util/List;Ljavax/imageio/metadata/IIOMetadata;)V

    invoke-virtual {p1, v1, p3, v0}, Ljavax/imageio/ImageWriter;->write(Ljavax/imageio/metadata/IIOMetadata;Ljavax/imageio/IIOImage;Ljavax/imageio/ImageWriteParam;)V

    goto :goto_1

    .line 1707
    :cond_3
    invoke-virtual {p1, p0}, Ljavax/imageio/ImageWriter;->write(Ljava/awt/image/RenderedImage;)V

    .line 1709
    :goto_1
    invoke-interface {p2}, Ljavax/imageio/stream/ImageOutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1713
    invoke-virtual {p1}, Ljavax/imageio/ImageWriter;->dispose()V

    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_0
    move-exception p0

    .line 1711
    :try_start_1
    new-instance p2, Lcn/hutool/core/io/IORuntimeException;

    invoke-direct {p2, p0}, Lcn/hutool/core/io/IORuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1713
    :goto_2
    invoke-virtual {p1}, Ljavax/imageio/ImageWriter;->dispose()V

    .line 1714
    throw p0
.end method

.method public static writeJpg(Ljava/awt/Image;Ljava/io/OutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/hutool/core/io/IORuntimeException;
        }
    .end annotation

    const-string v0, "jpg"

    .line 1561
    invoke-static {p0, v0, p1}, Lcn/hutool/core/img/ImgUtil;->write(Ljava/awt/Image;Ljava/lang/String;Ljava/io/OutputStream;)V

    return-void
.end method

.method public static writeJpg(Ljava/awt/Image;Ljavax/imageio/stream/ImageOutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/hutool/core/io/IORuntimeException;
        }
    .end annotation

    const-string v0, "jpg"

    .line 1538
    invoke-static {p0, v0, p1}, Lcn/hutool/core/img/ImgUtil;->write(Ljava/awt/Image;Ljava/lang/String;Ljavax/imageio/stream/ImageOutputStream;)Z

    return-void
.end method

.method public static writePng(Ljava/awt/Image;Ljava/io/OutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/hutool/core/io/IORuntimeException;
        }
    .end annotation

    const-string v0, "png"

    .line 1573
    invoke-static {p0, v0, p1}, Lcn/hutool/core/img/ImgUtil;->write(Ljava/awt/Image;Ljava/lang/String;Ljava/io/OutputStream;)V

    return-void
.end method

.method public static writePng(Ljava/awt/Image;Ljavax/imageio/stream/ImageOutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/hutool/core/io/IORuntimeException;
        }
    .end annotation

    const-string v0, "png"

    .line 1549
    invoke-static {p0, v0, p1}, Lcn/hutool/core/img/ImgUtil;->write(Ljava/awt/Image;Ljava/lang/String;Ljavax/imageio/stream/ImageOutputStream;)Z

    return-void
.end method
