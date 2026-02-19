.class public Lcn/hutool/core/io/CharsetDetector;
.super Ljava/lang/Object;
.source "CharsetDetector.java"


# static fields
.field private static final DEFAULT_CHARSETS:[Ljava/nio/charset/Charset;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    const-string v0, "UTF-8"

    const-string v1, "GBK"

    const-string v2, "GB2312"

    const-string v3, "GB18030"

    const-string v4, "UTF-16BE"

    const-string v5, "UTF-16LE"

    const-string v6, "UTF-16"

    const-string v7, "BIG5"

    const-string v8, "UNICODE"

    const-string v9, "US-ASCII"

    .line 28
    filled-new-array/range {v0 .. v9}, [Ljava/lang/String;

    move-result-object v0

    .line 39
    const-class v1, [Ljava/nio/charset/Charset;

    invoke-static {v1, v0}, Lcn/hutool/core/convert/Convert;->convert(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/nio/charset/Charset;

    sput-object v0, Lcn/hutool/core/io/CharsetDetector;->DEFAULT_CHARSETS:[Ljava/nio/charset/Charset;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static varargs detect(ILjava/io/InputStream;[Ljava/nio/charset/Charset;)Ljava/nio/charset/Charset;
    .locals 4

    .line 77
    invoke-static {p2}, Lcn/hutool/core/util/ArrayUtil;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 78
    sget-object p2, Lcn/hutool/core/io/CharsetDetector;->DEFAULT_CHARSETS:[Ljava/nio/charset/Charset;

    .line 81
    :cond_0
    new-array p0, p0, [B

    .line 83
    :cond_1
    :try_start_0
    invoke-virtual {p1, p0}, Ljava/io/InputStream;->read([B)I

    move-result v0

    const/4 v1, -0x1

    if-le v0, v1, :cond_3

    .line 84
    array-length v0, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p2, v1

    .line 85
    invoke-virtual {v2}, Ljava/nio/charset/Charset;->newDecoder()Ljava/nio/charset/CharsetDecoder;

    move-result-object v3

    .line 86
    invoke-static {p0, v3}, Lcn/hutool/core/io/CharsetDetector;->identify([BLjava/nio/charset/CharsetDecoder;)Z

    move-result v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_2

    .line 94
    invoke-static {p1}, Lcn/hutool/core/io/IoUtil;->close(Ljava/io/Closeable;)V

    return-object v2

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    invoke-static {p1}, Lcn/hutool/core/io/IoUtil;->close(Ljava/io/Closeable;)V

    const/4 p0, 0x0

    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 92
    :try_start_1
    new-instance p2, Lcn/hutool/core/io/IORuntimeException;

    invoke-direct {p2, p0}, Lcn/hutool/core/io/IORuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 94
    :goto_1
    invoke-static {p1}, Lcn/hutool/core/io/IoUtil;->close(Ljava/io/Closeable;)V

    .line 95
    throw p0
.end method

.method public static varargs detect(Ljava/io/File;[Ljava/nio/charset/Charset;)Ljava/nio/charset/Charset;
    .locals 0

    .line 51
    invoke-static {p0}, Lcn/hutool/core/io/FileUtil;->getInputStream(Ljava/io/File;)Ljava/io/BufferedInputStream;

    move-result-object p0

    invoke-static {p0, p1}, Lcn/hutool/core/io/CharsetDetector;->detect(Ljava/io/InputStream;[Ljava/nio/charset/Charset;)Ljava/nio/charset/Charset;

    move-result-object p0

    return-object p0
.end method

.method public static varargs detect(Ljava/io/InputStream;[Ljava/nio/charset/Charset;)Ljava/nio/charset/Charset;
    .locals 1

    const v0, 0x8000

    .line 63
    invoke-static {v0, p0, p1}, Lcn/hutool/core/io/CharsetDetector;->detect(ILjava/io/InputStream;[Ljava/nio/charset/Charset;)Ljava/nio/charset/Charset;

    move-result-object p0

    return-object p0
.end method

.method private static identify([BLjava/nio/charset/CharsetDecoder;)Z
    .locals 0

    .line 108
    :try_start_0
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/nio/charset/CharsetDecoder;->decode(Ljava/nio/ByteBuffer;)Ljava/nio/CharBuffer;
    :try_end_0
    .catch Ljava/nio/charset/CharacterCodingException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    const/4 p0, 0x0

    return p0
.end method
