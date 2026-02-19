.class public Lcn/hutool/extra/qrcode/QrCodeUtil;
.super Ljava/lang/Object;
.source "QrCodeUtil.java"


# static fields
.field public static final QR_TYPE_SVG:Ljava/lang/String; = "svg"

.field public static final QR_TYPE_TXT:Ljava/lang/String; = "txt"

.field private static final ansiColors:Lcn/hutool/core/lang/ansi/AnsiColors;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 43
    new-instance v0, Lcn/hutool/core/lang/ansi/AnsiColors;

    sget-object v1, Lcn/hutool/core/lang/ansi/AnsiColors$BitDepth;->EIGHT:Lcn/hutool/core/lang/ansi/AnsiColors$BitDepth;

    invoke-direct {v0, v1}, Lcn/hutool/core/lang/ansi/AnsiColors;-><init>(Lcn/hutool/core/lang/ansi/AnsiColors$BitDepth;)V

    sput-object v0, Lcn/hutool/extra/qrcode/QrCodeUtil;->ansiColors:Lcn/hutool/core/lang/ansi/AnsiColors;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static _decode(Lcom/google/zxing/MultiFormatReader;Lcom/google/zxing/Binarizer;)Lcom/google/zxing/Result;
    .locals 1

    .line 710
    :try_start_0
    new-instance v0, Lcom/google/zxing/BinaryBitmap;

    invoke-direct {v0, p1}, Lcom/google/zxing/BinaryBitmap;-><init>(Lcom/google/zxing/Binarizer;)V

    invoke-virtual {p0, v0}, Lcom/google/zxing/MultiFormatReader;->decodeWithState(Lcom/google/zxing/BinaryBitmap;)Lcom/google/zxing/Result;

    move-result-object p0
    :try_end_0
    .catch Lcom/google/zxing/NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static buildHints(ZZ)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ)",
            "Ljava/util/Map<",
            "Lcom/google/zxing/DecodeHintType;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 687
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 688
    sget-object v1, Lcom/google/zxing/DecodeHintType;->CHARACTER_SET:Lcom/google/zxing/DecodeHintType;

    const-string v2, "UTF-8"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x1

    .line 692
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    if-eqz p0, :cond_0

    sget-object p0, Lcom/google/zxing/DecodeHintType;->TRY_HARDER:Lcom/google/zxing/DecodeHintType;

    invoke-virtual {v0, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    if-eqz p1, :cond_1

    .line 696
    sget-object p0, Lcom/google/zxing/DecodeHintType;->PURE_BARCODE:Lcom/google/zxing/DecodeHintType;

    invoke-virtual {v0, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method public static decode(Ljava/awt/Image;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 482
    invoke-static {p0, v0, v1}, Lcn/hutool/extra/qrcode/QrCodeUtil;->decode(Ljava/awt/Image;ZZ)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static decode(Ljava/awt/Image;Ljava/util/Map;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/awt/Image;",
            "Ljava/util/Map<",
            "Lcom/google/zxing/DecodeHintType;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 511
    new-instance v0, Lcom/google/zxing/MultiFormatReader;

    invoke-direct {v0}, Lcom/google/zxing/MultiFormatReader;-><init>()V

    .line 512
    invoke-virtual {v0, p1}, Lcom/google/zxing/MultiFormatReader;->setHints(Ljava/util/Map;)V

    .line 514
    new-instance p1, Lcn/hutool/extra/qrcode/BufferedImageLuminanceSource;

    invoke-static {p0}, Lcn/hutool/core/img/ImgUtil;->toBufferedImage(Ljava/awt/Image;)Ljava/awt/image/BufferedImage;

    move-result-object p0

    invoke-direct {p1, p0}, Lcn/hutool/extra/qrcode/BufferedImageLuminanceSource;-><init>(Ljava/awt/image/BufferedImage;)V

    .line 516
    new-instance p0, Lcom/google/zxing/common/HybridBinarizer;

    invoke-direct {p0, p1}, Lcom/google/zxing/common/HybridBinarizer;-><init>(Lcom/google/zxing/LuminanceSource;)V

    invoke-static {v0, p0}, Lcn/hutool/extra/qrcode/QrCodeUtil;->_decode(Lcom/google/zxing/MultiFormatReader;Lcom/google/zxing/Binarizer;)Lcom/google/zxing/Result;

    move-result-object p0

    if-nez p0, :cond_0

    .line 518
    new-instance p0, Lcom/google/zxing/common/GlobalHistogramBinarizer;

    invoke-direct {p0, p1}, Lcom/google/zxing/common/GlobalHistogramBinarizer;-><init>(Lcom/google/zxing/LuminanceSource;)V

    invoke-static {v0, p0}, Lcn/hutool/extra/qrcode/QrCodeUtil;->_decode(Lcom/google/zxing/MultiFormatReader;Lcom/google/zxing/Binarizer;)Lcom/google/zxing/Result;

    move-result-object p0

    :cond_0
    if-eqz p0, :cond_1

    .line 521
    invoke-virtual {p0}, Lcom/google/zxing/Result;->getText()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static decode(Ljava/awt/Image;ZZ)Ljava/lang/String;
    .locals 0

    .line 497
    invoke-static {p1, p2}, Lcn/hutool/extra/qrcode/QrCodeUtil;->buildHints(ZZ)Ljava/util/Map;

    move-result-object p1

    invoke-static {p0, p1}, Lcn/hutool/extra/qrcode/QrCodeUtil;->decode(Ljava/awt/Image;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static decode(Ljava/io/File;)Ljava/lang/String;
    .locals 0

    .line 472
    invoke-static {p0}, Lcn/hutool/core/img/ImgUtil;->read(Ljava/io/File;)Ljava/awt/image/BufferedImage;

    move-result-object p0

    invoke-static {p0}, Lcn/hutool/extra/qrcode/QrCodeUtil;->decode(Ljava/awt/Image;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static decode(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 0

    .line 462
    invoke-static {p0}, Lcn/hutool/core/img/ImgUtil;->read(Ljava/io/InputStream;)Ljava/awt/image/BufferedImage;

    move-result-object p0

    invoke-static {p0}, Lcn/hutool/extra/qrcode/QrCodeUtil;->decode(Ljava/awt/Image;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static encode(Ljava/lang/String;II)Lcom/google/zxing/common/BitMatrix;
    .locals 1

    .line 399
    sget-object v0, Lcom/google/zxing/BarcodeFormat;->QR_CODE:Lcom/google/zxing/BarcodeFormat;

    invoke-static {p0, v0, p1, p2}, Lcn/hutool/extra/qrcode/QrCodeUtil;->encode(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;II)Lcom/google/zxing/common/BitMatrix;

    move-result-object p0

    return-object p0
.end method

.method public static encode(Ljava/lang/String;Lcn/hutool/extra/qrcode/QrConfig;)Lcom/google/zxing/common/BitMatrix;
    .locals 1

    .line 411
    sget-object v0, Lcom/google/zxing/BarcodeFormat;->QR_CODE:Lcom/google/zxing/BarcodeFormat;

    invoke-static {p0, v0, p1}, Lcn/hutool/extra/qrcode/QrCodeUtil;->encode(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;Lcn/hutool/extra/qrcode/QrConfig;)Lcom/google/zxing/common/BitMatrix;

    move-result-object p0

    return-object p0
.end method

.method public static encode(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;II)Lcom/google/zxing/common/BitMatrix;
    .locals 1

    .line 424
    new-instance v0, Lcn/hutool/extra/qrcode/QrConfig;

    invoke-direct {v0, p2, p3}, Lcn/hutool/extra/qrcode/QrConfig;-><init>(II)V

    invoke-static {p0, p1, v0}, Lcn/hutool/extra/qrcode/QrCodeUtil;->encode(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;Lcn/hutool/extra/qrcode/QrConfig;)Lcom/google/zxing/common/BitMatrix;

    move-result-object p0

    return-object p0
.end method

.method public static encode(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;Lcn/hutool/extra/qrcode/QrConfig;)Lcom/google/zxing/common/BitMatrix;
    .locals 6

    .line 437
    new-instance v0, Lcom/google/zxing/MultiFormatWriter;

    invoke-direct {v0}, Lcom/google/zxing/MultiFormatWriter;-><init>()V

    if-nez p2, :cond_0

    .line 440
    new-instance p2, Lcn/hutool/extra/qrcode/QrConfig;

    invoke-direct {p2}, Lcn/hutool/extra/qrcode/QrConfig;-><init>()V

    .line 445
    :cond_0
    :try_start_0
    iget v3, p2, Lcn/hutool/extra/qrcode/QrConfig;->width:I

    iget v4, p2, Lcn/hutool/extra/qrcode/QrConfig;->height:I

    invoke-virtual {p2, p1}, Lcn/hutool/extra/qrcode/QrConfig;->toHints(Lcom/google/zxing/BarcodeFormat;)Ljava/util/HashMap;

    move-result-object v5

    move-object v1, p0

    move-object v2, p1

    invoke-virtual/range {v0 .. v5}, Lcom/google/zxing/MultiFormatWriter;->encode(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;IILjava/util/Map;)Lcom/google/zxing/common/BitMatrix;

    move-result-object p0
    :try_end_0
    .catch Lcom/google/zxing/WriterException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 447
    new-instance p1, Lcn/hutool/extra/qrcode/QrCodeException;

    invoke-direct {p1, p0}, Lcn/hutool/extra/qrcode/QrCodeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static generate(Ljava/lang/String;II)Ljava/awt/image/BufferedImage;
    .locals 1

    .line 322
    new-instance v0, Lcn/hutool/extra/qrcode/QrConfig;

    invoke-direct {v0, p1, p2}, Lcn/hutool/extra/qrcode/QrConfig;-><init>(II)V

    invoke-static {p0, v0}, Lcn/hutool/extra/qrcode/QrCodeUtil;->generate(Ljava/lang/String;Lcn/hutool/extra/qrcode/QrConfig;)Ljava/awt/image/BufferedImage;

    move-result-object p0

    return-object p0
.end method

.method public static generate(Ljava/lang/String;Lcn/hutool/extra/qrcode/QrConfig;)Ljava/awt/image/BufferedImage;
    .locals 1

    .line 347
    sget-object v0, Lcom/google/zxing/BarcodeFormat;->QR_CODE:Lcom/google/zxing/BarcodeFormat;

    invoke-static {p0, v0, p1}, Lcn/hutool/extra/qrcode/QrCodeUtil;->generate(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;Lcn/hutool/extra/qrcode/QrConfig;)Ljava/awt/image/BufferedImage;

    move-result-object p0

    return-object p0
.end method

.method public static generate(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;II)Ljava/awt/image/BufferedImage;
    .locals 1

    .line 335
    new-instance v0, Lcn/hutool/extra/qrcode/QrConfig;

    invoke-direct {v0, p2, p3}, Lcn/hutool/extra/qrcode/QrConfig;-><init>(II)V

    invoke-static {p0, p1, v0}, Lcn/hutool/extra/qrcode/QrCodeUtil;->generate(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;Lcn/hutool/extra/qrcode/QrConfig;)Ljava/awt/image/BufferedImage;

    move-result-object p0

    return-object p0
.end method

.method public static generate(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;Lcn/hutool/extra/qrcode/QrConfig;)Ljava/awt/image/BufferedImage;
    .locals 4

    .line 361
    invoke-static {p0, p1, p2}, Lcn/hutool/extra/qrcode/QrCodeUtil;->encode(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;Lcn/hutool/extra/qrcode/QrConfig;)Lcom/google/zxing/common/BitMatrix;

    move-result-object p0

    .line 362
    iget-object v0, p2, Lcn/hutool/extra/qrcode/QrConfig;->foreColor:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    iget-object v0, p2, Lcn/hutool/extra/qrcode/QrConfig;->foreColor:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    :cond_0
    sget-object v0, Ljava/awt/Color;->BLACK:Ljava/awt/Color;

    invoke-virtual {v0}, Ljava/awt/Color;->getRGB()I

    move-result v0

    :goto_0
    iget-object v1, p2, Lcn/hutool/extra/qrcode/QrConfig;->backColor:Ljava/lang/Integer;

    invoke-static {p0, v0, v1}, Lcn/hutool/extra/qrcode/QrCodeUtil;->toImage(Lcom/google/zxing/common/BitMatrix;ILjava/lang/Integer;)Ljava/awt/image/BufferedImage;

    move-result-object p0

    .line 363
    iget-object v0, p2, Lcn/hutool/extra/qrcode/QrConfig;->img:Ljava/awt/Image;

    if-eqz v0, :cond_2

    .line 364
    sget-object v1, Lcom/google/zxing/BarcodeFormat;->QR_CODE:Lcom/google/zxing/BarcodeFormat;

    if-ne v1, p1, :cond_2

    .line 366
    invoke-virtual {p0}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result p1

    .line 367
    invoke-virtual {p0}, Ljava/awt/image/BufferedImage;->getHeight()I

    move-result v1

    const/4 v2, 0x0

    if-ge p1, v1, :cond_1

    .line 372
    iget p2, p2, Lcn/hutool/extra/qrcode/QrConfig;->ratio:I

    div-int/2addr p1, p2

    .line 373
    invoke-virtual {v0, v2}, Ljava/awt/Image;->getHeight(Ljava/awt/image/ImageObserver;)I

    move-result p2

    mul-int/2addr p2, p1

    invoke-virtual {v0, v2}, Ljava/awt/Image;->getWidth(Ljava/awt/image/ImageObserver;)I

    move-result v1

    div-int/2addr p2, v1

    goto :goto_1

    .line 375
    :cond_1
    iget p1, p2, Lcn/hutool/extra/qrcode/QrConfig;->ratio:I

    div-int p2, v1, p1

    .line 376
    invoke-virtual {v0, v2}, Ljava/awt/Image;->getWidth(Ljava/awt/image/ImageObserver;)I

    move-result p1

    mul-int/2addr p1, p2

    invoke-virtual {v0, v2}, Ljava/awt/Image;->getHeight(Ljava/awt/image/ImageObserver;)I

    move-result v1

    div-int/2addr p1, v1

    .line 379
    :goto_1
    invoke-static {p0}, Lcn/hutool/core/img/Img;->from(Ljava/awt/Image;)Lcn/hutool/core/img/Img;

    move-result-object v1

    .line 380
    invoke-static {v0}, Lcn/hutool/core/img/Img;->from(Ljava/awt/Image;)Lcn/hutool/core/img/Img;

    move-result-object v0

    const-wide v2, 0x3fd3333333333333L    # 0.3

    invoke-virtual {v0, v2, v3}, Lcn/hutool/core/img/Img;->round(D)Lcn/hutool/core/img/Img;

    move-result-object v0

    invoke-virtual {v0}, Lcn/hutool/core/img/Img;->getImg()Ljava/awt/Image;

    move-result-object v0

    new-instance v2, Ljava/awt/Rectangle;

    invoke-direct {v2, p1, p2}, Ljava/awt/Rectangle;-><init>(II)V

    const/high16 p1, 0x3f800000    # 1.0f

    .line 379
    invoke-virtual {v1, v0, v2, p1}, Lcn/hutool/core/img/Img;->pressImage(Ljava/awt/Image;Ljava/awt/Rectangle;F)Lcn/hutool/core/img/Img;

    :cond_2
    return-object p0
.end method

.method public static generate(Ljava/lang/String;IILjava/io/File;)Ljava/io/File;
    .locals 2

    .line 214
    invoke-static {p3}, Lcn/hutool/core/io/FileUtil;->extName(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    .line 215
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    const-string v1, "svg"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "txt"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 225
    invoke-static {p0, p1, p2}, Lcn/hutool/extra/qrcode/QrCodeUtil;->generate(Ljava/lang/String;II)Ljava/awt/image/BufferedImage;

    move-result-object p0

    .line 226
    invoke-static {p0, p3}, Lcn/hutool/core/img/ImgUtil;->write(Ljava/awt/Image;Ljava/io/File;)V

    goto :goto_0

    .line 221
    :cond_0
    new-instance v0, Lcn/hutool/extra/qrcode/QrConfig;

    invoke-direct {v0, p1, p2}, Lcn/hutool/extra/qrcode/QrConfig;-><init>(II)V

    invoke-static {p0, v0}, Lcn/hutool/extra/qrcode/QrCodeUtil;->generateAsAsciiArt(Ljava/lang/String;Lcn/hutool/extra/qrcode/QrConfig;)Ljava/lang/String;

    move-result-object p0

    .line 222
    sget-object p1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-static {p0, p3, p1}, Lcn/hutool/core/io/FileUtil;->writeString(Ljava/lang/String;Ljava/io/File;Ljava/nio/charset/Charset;)Ljava/io/File;

    goto :goto_0

    .line 217
    :cond_1
    new-instance v0, Lcn/hutool/extra/qrcode/QrConfig;

    invoke-direct {v0, p1, p2}, Lcn/hutool/extra/qrcode/QrConfig;-><init>(II)V

    invoke-static {p0, v0}, Lcn/hutool/extra/qrcode/QrCodeUtil;->generateAsSvg(Ljava/lang/String;Lcn/hutool/extra/qrcode/QrConfig;)Ljava/lang/String;

    move-result-object p0

    .line 218
    sget-object p1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-static {p0, p3, p1}, Lcn/hutool/core/io/FileUtil;->writeString(Ljava/lang/String;Ljava/io/File;Ljava/nio/charset/Charset;)Ljava/io/File;

    :goto_0
    return-object p3
.end method

.method public static generate(Ljava/lang/String;Lcn/hutool/extra/qrcode/QrConfig;Ljava/io/File;)Ljava/io/File;
    .locals 2

    .line 243
    invoke-static {p2}, Lcn/hutool/core/io/FileUtil;->extName(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    .line 244
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    const-string v1, "svg"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "txt"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 254
    invoke-static {p0, p1}, Lcn/hutool/extra/qrcode/QrCodeUtil;->generate(Ljava/lang/String;Lcn/hutool/extra/qrcode/QrConfig;)Ljava/awt/image/BufferedImage;

    move-result-object p0

    .line 255
    invoke-static {p0, p2}, Lcn/hutool/core/img/ImgUtil;->write(Ljava/awt/Image;Ljava/io/File;)V

    goto :goto_0

    .line 250
    :cond_0
    invoke-static {p0, p1}, Lcn/hutool/extra/qrcode/QrCodeUtil;->generateAsAsciiArt(Ljava/lang/String;Lcn/hutool/extra/qrcode/QrConfig;)Ljava/lang/String;

    move-result-object p0

    .line 251
    sget-object p1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-static {p0, p2, p1}, Lcn/hutool/core/io/FileUtil;->writeString(Ljava/lang/String;Ljava/io/File;Ljava/nio/charset/Charset;)Ljava/io/File;

    goto :goto_0

    .line 246
    :cond_1
    invoke-static {p0, p1}, Lcn/hutool/extra/qrcode/QrCodeUtil;->generateAsSvg(Ljava/lang/String;Lcn/hutool/extra/qrcode/QrConfig;)Ljava/lang/String;

    move-result-object p0

    .line 247
    sget-object p1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-static {p0, p2, p1}, Lcn/hutool/core/io/FileUtil;->writeString(Ljava/lang/String;Ljava/io/File;Ljava/nio/charset/Charset;)Ljava/io/File;

    :goto_0
    return-object p2
.end method

.method public static generate(Ljava/lang/String;IILjava/lang/String;Ljava/io/OutputStream;)V
    .locals 3

    .line 271
    invoke-virtual {p3}, Ljava/lang/String;->hashCode()I

    const-string v0, "svg"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    const-string v0, "txt"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 281
    invoke-static {p0, p1, p2}, Lcn/hutool/extra/qrcode/QrCodeUtil;->generate(Ljava/lang/String;II)Ljava/awt/image/BufferedImage;

    move-result-object p0

    .line 282
    invoke-static {p0, p3, p4}, Lcn/hutool/core/img/ImgUtil;->write(Ljava/awt/Image;Ljava/lang/String;Ljava/io/OutputStream;)V

    goto :goto_0

    .line 277
    :cond_0
    new-instance p3, Lcn/hutool/extra/qrcode/QrConfig;

    invoke-direct {p3, p1, p2}, Lcn/hutool/extra/qrcode/QrConfig;-><init>(II)V

    invoke-static {p0, p3}, Lcn/hutool/extra/qrcode/QrCodeUtil;->generateAsAsciiArt(Ljava/lang/String;Lcn/hutool/extra/qrcode/QrConfig;)Ljava/lang/String;

    move-result-object p0

    new-array p1, v1, [Ljava/lang/Object;

    aput-object p0, p1, v2

    .line 278
    invoke-static {p4, v2, p1}, Lcn/hutool/core/io/IoUtil;->writeUtf8(Ljava/io/OutputStream;Z[Ljava/lang/Object;)V

    goto :goto_0

    .line 273
    :cond_1
    new-instance p3, Lcn/hutool/extra/qrcode/QrConfig;

    invoke-direct {p3, p1, p2}, Lcn/hutool/extra/qrcode/QrConfig;-><init>(II)V

    invoke-static {p0, p3}, Lcn/hutool/extra/qrcode/QrCodeUtil;->generateAsSvg(Ljava/lang/String;Lcn/hutool/extra/qrcode/QrConfig;)Ljava/lang/String;

    move-result-object p0

    new-array p1, v1, [Ljava/lang/Object;

    aput-object p0, p1, v2

    .line 274
    invoke-static {p4, v2, p1}, Lcn/hutool/core/io/IoUtil;->writeUtf8(Ljava/io/OutputStream;Z[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public static generate(Ljava/lang/String;Lcn/hutool/extra/qrcode/QrConfig;Ljava/lang/String;Ljava/io/OutputStream;)V
    .locals 3

    .line 297
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    const-string v0, "svg"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    const-string v0, "txt"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 307
    invoke-static {p0, p1}, Lcn/hutool/extra/qrcode/QrCodeUtil;->generate(Ljava/lang/String;Lcn/hutool/extra/qrcode/QrConfig;)Ljava/awt/image/BufferedImage;

    move-result-object p0

    .line 308
    invoke-static {p0, p2, p3}, Lcn/hutool/core/img/ImgUtil;->write(Ljava/awt/Image;Ljava/lang/String;Ljava/io/OutputStream;)V

    goto :goto_0

    .line 303
    :cond_0
    invoke-static {p0, p1}, Lcn/hutool/extra/qrcode/QrCodeUtil;->generateAsAsciiArt(Ljava/lang/String;Lcn/hutool/extra/qrcode/QrConfig;)Ljava/lang/String;

    move-result-object p0

    new-array p1, v1, [Ljava/lang/Object;

    aput-object p0, p1, v2

    .line 304
    invoke-static {p3, v2, p1}, Lcn/hutool/core/io/IoUtil;->writeUtf8(Ljava/io/OutputStream;Z[Ljava/lang/Object;)V

    goto :goto_0

    .line 299
    :cond_1
    invoke-static {p0, p1}, Lcn/hutool/extra/qrcode/QrCodeUtil;->generateAsSvg(Ljava/lang/String;Lcn/hutool/extra/qrcode/QrConfig;)Ljava/lang/String;

    move-result-object p0

    new-array p1, v1, [Ljava/lang/Object;

    aput-object p0, p1, v2

    .line 300
    invoke-static {p3, v2, p1}, Lcn/hutool/core/io/IoUtil;->writeUtf8(Ljava/io/OutputStream;Z[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public static generateAsAsciiArt(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 145
    invoke-static {p0, v0, v0, v1}, Lcn/hutool/extra/qrcode/QrCodeUtil;->generateAsAsciiArt(Ljava/lang/String;III)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static generateAsAsciiArt(Ljava/lang/String;III)Ljava/lang/String;
    .locals 1

    .line 170
    new-instance v0, Lcn/hutool/extra/qrcode/QrConfig;

    invoke-direct {v0, p1, p2}, Lcn/hutool/extra/qrcode/QrConfig;-><init>(II)V

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcn/hutool/extra/qrcode/QrConfig;->setMargin(Ljava/lang/Integer;)Lcn/hutool/extra/qrcode/QrConfig;

    move-result-object p1

    .line 171
    invoke-static {p0, p1}, Lcn/hutool/extra/qrcode/QrCodeUtil;->generateAsAsciiArt(Ljava/lang/String;Lcn/hutool/extra/qrcode/QrConfig;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static generateAsAsciiArt(Ljava/lang/String;Lcn/hutool/extra/qrcode/QrConfig;)Ljava/lang/String;
    .locals 0

    .line 157
    invoke-static {p0, p1}, Lcn/hutool/extra/qrcode/QrCodeUtil;->encode(Ljava/lang/String;Lcn/hutool/extra/qrcode/QrConfig;)Lcom/google/zxing/common/BitMatrix;

    move-result-object p0

    .line 158
    invoke-static {p0, p1}, Lcn/hutool/extra/qrcode/QrCodeUtil;->toAsciiArt(Lcom/google/zxing/common/BitMatrix;Lcn/hutool/extra/qrcode/QrConfig;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static generateAsBase64(Ljava/lang/String;Lcn/hutool/extra/qrcode/QrConfig;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 99
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    const-string v0, "svg"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "txt"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 109
    invoke-static {p0, p1}, Lcn/hutool/extra/qrcode/QrCodeUtil;->generate(Ljava/lang/String;Lcn/hutool/extra/qrcode/QrConfig;)Ljava/awt/image/BufferedImage;

    move-result-object p0

    .line 110
    invoke-static {p0, p2}, Lcn/hutool/core/img/ImgUtil;->toBase64DataUri(Ljava/awt/Image;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 105
    :cond_0
    invoke-static {p0, p1}, Lcn/hutool/extra/qrcode/QrCodeUtil;->generateAsAsciiArt(Ljava/lang/String;Lcn/hutool/extra/qrcode/QrConfig;)Ljava/lang/String;

    move-result-object p0

    .line 106
    invoke-static {p0}, Lcn/hutool/extra/qrcode/QrCodeUtil;->txtToBase64(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 101
    :cond_1
    invoke-static {p0, p1}, Lcn/hutool/extra/qrcode/QrCodeUtil;->generateAsSvg(Ljava/lang/String;Lcn/hutool/extra/qrcode/QrConfig;)Ljava/lang/String;

    move-result-object p0

    .line 102
    invoke-static {p0}, Lcn/hutool/extra/qrcode/QrCodeUtil;->svgToBase64(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static generateAsBase64(Ljava/lang/String;Lcn/hutool/extra/qrcode/QrConfig;Ljava/lang/String;Ljava/awt/Image;)Ljava/lang/String;
    .locals 0

    .line 81
    invoke-virtual {p1, p3}, Lcn/hutool/extra/qrcode/QrConfig;->setImg(Ljava/awt/Image;)Lcn/hutool/extra/qrcode/QrConfig;

    .line 82
    invoke-static {p0, p1, p2}, Lcn/hutool/extra/qrcode/QrCodeUtil;->generateAsBase64(Ljava/lang/String;Lcn/hutool/extra/qrcode/QrConfig;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static generateAsBase64(Ljava/lang/String;Lcn/hutool/extra/qrcode/QrConfig;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 55
    invoke-static {p3}, Lcn/hutool/core/codec/Base64;->decode(Ljava/lang/CharSequence;)[B

    move-result-object p3

    invoke-static {p0, p1, p2, p3}, Lcn/hutool/extra/qrcode/QrCodeUtil;->generateAsBase64(Ljava/lang/String;Lcn/hutool/extra/qrcode/QrConfig;Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static generateAsBase64(Ljava/lang/String;Lcn/hutool/extra/qrcode/QrConfig;Ljava/lang/String;[B)Ljava/lang/String;
    .locals 0

    .line 68
    invoke-static {p3}, Lcn/hutool/core/img/ImgUtil;->toImage([B)Ljava/awt/image/BufferedImage;

    move-result-object p3

    invoke-static {p0, p1, p2, p3}, Lcn/hutool/extra/qrcode/QrCodeUtil;->generateAsBase64(Ljava/lang/String;Lcn/hutool/extra/qrcode/QrConfig;Ljava/lang/String;Ljava/awt/Image;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static generateAsSvg(Ljava/lang/String;Lcn/hutool/extra/qrcode/QrConfig;)Ljava/lang/String;
    .locals 0

    .line 133
    invoke-static {p0, p1}, Lcn/hutool/extra/qrcode/QrCodeUtil;->encode(Ljava/lang/String;Lcn/hutool/extra/qrcode/QrConfig;)Lcom/google/zxing/common/BitMatrix;

    move-result-object p0

    .line 134
    invoke-static {p0, p1}, Lcn/hutool/extra/qrcode/QrCodeUtil;->toSVG(Lcom/google/zxing/common/BitMatrix;Lcn/hutool/extra/qrcode/QrConfig;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static generatePng(Ljava/lang/String;II)[B
    .locals 2

    .line 185
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const-string v1, "png"

    .line 186
    invoke-static {p0, p1, p2, v1, v0}, Lcn/hutool/extra/qrcode/QrCodeUtil;->generate(Ljava/lang/String;IILjava/lang/String;Ljava/io/OutputStream;)V

    .line 187
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0
.end method

.method public static generatePng(Ljava/lang/String;Lcn/hutool/extra/qrcode/QrConfig;)[B
    .locals 2

    .line 199
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const-string v1, "png"

    .line 200
    invoke-static {p0, p1, v1, v0}, Lcn/hutool/extra/qrcode/QrCodeUtil;->generate(Ljava/lang/String;Lcn/hutool/extra/qrcode/QrConfig;Ljava/lang/String;Ljava/io/OutputStream;)V

    .line 201
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0
.end method

.method private static rgbToAnsi8BitElement(ILcn/hutool/core/lang/ansi/ForeOrBack;)Lcn/hutool/core/lang/ansi/AnsiElement;
    .locals 2

    .line 675
    sget-object v0, Lcn/hutool/extra/qrcode/QrCodeUtil;->ansiColors:Lcn/hutool/core/lang/ansi/AnsiColors;

    new-instance v1, Ljava/awt/Color;

    invoke-direct {v1, p0}, Ljava/awt/Color;-><init>(I)V

    invoke-virtual {v0, v1}, Lcn/hutool/core/lang/ansi/AnsiColors;->findClosest(Ljava/awt/Color;)Lcn/hutool/core/lang/ansi/AnsiColorWrapper;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcn/hutool/core/lang/ansi/AnsiColorWrapper;->toAnsiElement(Lcn/hutool/core/lang/ansi/ForeOrBack;)Lcn/hutool/core/lang/ansi/AnsiElement;

    move-result-object p0

    return-object p0
.end method

.method private static svgToBase64(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "base64"

    .line 123
    invoke-static {p0}, Lcn/hutool/core/codec/Base64;->encode(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "image/svg+xml"

    invoke-static {v1, v0, p0}, Lcn/hutool/core/util/URLUtil;->getDataUri(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static toAsciiArt(Lcom/google/zxing/common/BitMatrix;Lcn/hutool/extra/qrcode/QrConfig;)Ljava/lang/String;
    .locals 11

    .line 636
    invoke-virtual {p0}, Lcom/google/zxing/common/BitMatrix;->getWidth()I

    move-result v0

    .line 637
    invoke-virtual {p0}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result v1

    .line 640
    iget-object v2, p1, Lcn/hutool/extra/qrcode/QrConfig;->foreColor:Ljava/lang/Integer;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    move-object v2, v3

    goto :goto_0

    :cond_0
    iget-object v2, p1, Lcn/hutool/extra/qrcode/QrConfig;->foreColor:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    sget-object v4, Lcn/hutool/core/lang/ansi/ForeOrBack;->FORE:Lcn/hutool/core/lang/ansi/ForeOrBack;

    invoke-static {v2, v4}, Lcn/hutool/extra/qrcode/QrCodeUtil;->rgbToAnsi8BitElement(ILcn/hutool/core/lang/ansi/ForeOrBack;)Lcn/hutool/core/lang/ansi/AnsiElement;

    move-result-object v2

    .line 641
    :goto_0
    iget-object v4, p1, Lcn/hutool/extra/qrcode/QrConfig;->backColor:Ljava/lang/Integer;

    if-nez v4, :cond_1

    goto :goto_1

    :cond_1
    iget-object p1, p1, Lcn/hutool/extra/qrcode/QrConfig;->backColor:Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    sget-object v3, Lcn/hutool/core/lang/ansi/ForeOrBack;->BACK:Lcn/hutool/core/lang/ansi/ForeOrBack;

    invoke-static {p1, v3}, Lcn/hutool/extra/qrcode/QrCodeUtil;->rgbToAnsi8BitElement(ILcn/hutool/core/lang/ansi/ForeOrBack;)Lcn/hutool/core/lang/ansi/AnsiElement;

    move-result-object v3

    .line 643
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v4, 0x0

    move v5, v4

    :goto_2
    if-gt v5, v1, :cond_8

    .line 645
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move v7, v4

    :goto_3
    const/4 v8, 0x1

    if-ge v7, v0, :cond_7

    .line 647
    invoke-virtual {p0, v5, v7}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v9

    add-int/lit8 v10, v5, 0x1

    if-ge v10, v1, :cond_3

    .line 648
    invoke-virtual {p0, v10, v7}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v10

    if-eqz v10, :cond_2

    goto :goto_4

    :cond_2
    move v8, v4

    :cond_3
    :goto_4
    if-eqz v9, :cond_4

    if-eqz v8, :cond_4

    const/16 v8, 0x20

    .line 650
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_5

    :cond_4
    if-eqz v9, :cond_5

    const/16 v8, 0x2584

    .line 652
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_5

    :cond_5
    if-eqz v8, :cond_6

    const/16 v8, 0x2580

    .line 654
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_5

    :cond_6
    const/16 v8, 0x2588

    .line 656
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_7
    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v2, v7, v4

    aput-object v3, v7, v8

    const/4 v8, 0x2

    aput-object v6, v7, v8

    .line 659
    invoke-static {v7}, Lcn/hutool/core/lang/ansi/AnsiEncoder;->encode([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v7, 0xa

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v5, 0x2

    goto :goto_2

    .line 661
    :cond_8
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static toImage(Lcom/google/zxing/common/BitMatrix;ILjava/lang/Integer;)Ljava/awt/image/BufferedImage;
    .locals 7

    .line 534
    invoke-virtual {p0}, Lcom/google/zxing/common/BitMatrix;->getWidth()I

    move-result v0

    .line 535
    invoke-virtual {p0}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result v1

    .line 536
    new-instance v2, Ljava/awt/image/BufferedImage;

    if-nez p2, :cond_0

    const/4 v3, 0x2

    goto :goto_0

    :cond_0
    const/4 v3, 0x1

    :goto_0
    invoke-direct {v2, v0, v1, v3}, Ljava/awt/image/BufferedImage;-><init>(III)V

    const/4 v3, 0x0

    move v4, v3

    :goto_1
    if-ge v4, v0, :cond_4

    move v5, v3

    :goto_2
    if-ge v5, v1, :cond_3

    .line 539
    invoke-virtual {p0, v4, v5}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 540
    invoke-virtual {v2, v4, v5, p1}, Ljava/awt/image/BufferedImage;->setRGB(III)V

    goto :goto_3

    :cond_1
    if-eqz p2, :cond_2

    .line 542
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v2, v4, v5, v6}, Ljava/awt/image/BufferedImage;->setRGB(III)V

    :cond_2
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_4
    return-object v2
.end method

.method public static toSVG(Lcom/google/zxing/common/BitMatrix;Lcn/hutool/extra/qrcode/QrConfig;)Ljava/lang/String;
    .locals 3

    .line 558
    iget-object v0, p1, Lcn/hutool/extra/qrcode/QrConfig;->foreColor:Ljava/lang/Integer;

    iget-object v1, p1, Lcn/hutool/extra/qrcode/QrConfig;->backColor:Ljava/lang/Integer;

    iget-object v2, p1, Lcn/hutool/extra/qrcode/QrConfig;->img:Ljava/awt/Image;

    invoke-virtual {p1}, Lcn/hutool/extra/qrcode/QrConfig;->getRatio()I

    move-result p1

    invoke-static {p0, v0, v1, v2, p1}, Lcn/hutool/extra/qrcode/QrCodeUtil;->toSVG(Lcom/google/zxing/common/BitMatrix;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/awt/Image;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static toSVG(Lcom/google/zxing/common/BitMatrix;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/awt/Image;I)Ljava/lang/String;
    .locals 17

    move-object/from16 v0, p3

    .line 573
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 574
    invoke-virtual/range {p0 .. p0}, Lcom/google/zxing/common/BitMatrix;->getWidth()I

    move-result v2

    .line 575
    invoke-virtual/range {p0 .. p0}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 576
    div-int/lit8 v5, v2, 0x2

    goto :goto_0

    :cond_0
    move v5, v4

    :goto_0
    const/4 v6, 0x0

    move v7, v6

    :goto_1
    const-string v8, ","

    if-ge v7, v3, :cond_3

    move v9, v6

    :goto_2
    if-ge v9, v2, :cond_2

    move-object/from16 v10, p0

    .line 579
    invoke-virtual {v10, v9, v7}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v11

    if-eqz v11, :cond_1

    const-string v11, " M"

    .line 580
    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "h1v"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "h-1z"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_2
    move-object/from16 v10, p0

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_3
    mul-int/2addr v3, v5

    if-eqz v0, :cond_5

    const-string v5, "png"

    .line 591
    invoke-static {v0, v5}, Lcn/hutool/core/img/ImgUtil;->toBase64DataUri(Ljava/awt/Image;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    if-ge v2, v3, :cond_4

    .line 594
    div-int v7, v2, p4

    .line 595
    invoke-virtual {v0, v6}, Ljava/awt/Image;->getHeight(Ljava/awt/image/ImageObserver;)I

    move-result v9

    mul-int/2addr v9, v7

    invoke-virtual {v0, v6}, Ljava/awt/Image;->getWidth(Ljava/awt/image/ImageObserver;)I

    move-result v0

    div-int/2addr v9, v0

    move v6, v7

    move v7, v9

    goto :goto_3

    .line 597
    :cond_4
    div-int v7, v3, p4

    .line 598
    invoke-virtual {v0, v6}, Ljava/awt/Image;->getWidth(Ljava/awt/image/ImageObserver;)I

    move-result v9

    mul-int/2addr v9, v7

    invoke-virtual {v0, v6}, Ljava/awt/Image;->getHeight(Ljava/awt/image/ImageObserver;)I

    move-result v0

    div-int/2addr v9, v0

    move v6, v9

    :goto_3
    sub-int v0, v2, v6

    .line 600
    div-int/lit8 v0, v0, 0x2

    sub-int v9, v3, v7

    .line 601
    div-int/lit8 v9, v9, 0x2

    move/from16 v16, v7

    move v7, v0

    move v0, v6

    move/from16 v6, v16

    goto :goto_4

    :cond_5
    const-string v5, ""

    move v0, v6

    move v7, v0

    move v9, v7

    .line 605
    :goto_4
    invoke-static {}, Lcn/hutool/core/util/StrUtil;->builder()Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "<svg width=\""

    .line 606
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\" height=\""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v13, "\" \n"

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_6

    .line 608
    new-instance v11, Ljava/awt/Color;

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Integer;->intValue()I

    move-result v14

    invoke-direct {v11, v14, v4}, Ljava/awt/Color;-><init>(IZ)V

    const-string v14, "style=\"background-color:rgba("

    .line 609
    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v11}, Ljava/awt/Color;->getRed()I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v11}, Ljava/awt/Color;->getGreen()I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v11}, Ljava/awt/Color;->getBlue()I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v11}, Ljava/awt/Color;->getAlpha()I

    move-result v11

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v14, ")\"\n"

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    const-string v11, "viewBox=\"0 0 "

    .line 611
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v11, " "

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "xmlns=\"http://www.w3.org/2000/svg\" \n"

    .line 612
    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "xmlns:xlink=\"http://www.w3.org/1999/xlink\" >\n"

    .line 613
    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "<path d=\""

    .line 614
    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\" "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_7

    .line 616
    new-instance v1, Ljava/awt/Color;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {v1, v2, v4}, Ljava/awt/Color;-><init>(IZ)V

    const-string v2, "stroke=\"rgba("

    .line 617
    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/awt/Color;->getRed()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/awt/Color;->getGreen()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/awt/Color;->getBlue()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/awt/Color;->getAlpha()I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_7
    const-string v1, " /> \n"

    .line 619
    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 620
    invoke-static {v5}, Lcn/hutool/core/util/StrUtil;->isNotBlank(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_8

    const-string v1, "<image xlink:href=\""

    .line 621
    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\" width=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\" y=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\" x=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\" />\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_8
    const-string v0, "</svg>"

    .line 623
    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 624
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static txtToBase64(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "base64"

    .line 119
    invoke-static {p0}, Lcn/hutool/core/codec/Base64;->encode(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "text/plain"

    invoke-static {v1, v0, p0}, Lcn/hutool/core/util/URLUtil;->getDataUri(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
