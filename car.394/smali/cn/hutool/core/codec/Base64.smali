.class public Lcn/hutool/core/codec/Base64;
.super Ljava/lang/Object;
.source "Base64.java"


# static fields
.field private static final DEFAULT_CHARSET:Ljava/nio/charset/Charset;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 22
    sget-object v0, Lcn/hutool/core/util/CharsetUtil;->CHARSET_UTF_8:Ljava/nio/charset/Charset;

    sput-object v0, Lcn/hutool/core/codec/Base64;->DEFAULT_CHARSET:Ljava/nio/charset/Charset;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decode(Ljava/lang/CharSequence;)[B
    .locals 0

    .line 312
    invoke-static {p0}, Lcn/hutool/core/codec/Base64Decoder;->decode(Ljava/lang/CharSequence;)[B

    move-result-object p0

    return-object p0
.end method

.method public static decode([B)[B
    .locals 0

    .line 322
    invoke-static {p0}, Lcn/hutool/core/codec/Base64Decoder;->decode([B)[B

    move-result-object p0

    return-object p0
.end method

.method public static decodeStr(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 0

    .line 256
    invoke-static {p0}, Lcn/hutool/core/codec/Base64Decoder;->decodeStr(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static decodeStr(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 267
    invoke-static {p1}, Lcn/hutool/core/util/CharsetUtil;->charset(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object p1

    invoke-static {p0, p1}, Lcn/hutool/core/codec/Base64;->decodeStr(Ljava/lang/CharSequence;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static decodeStr(Ljava/lang/CharSequence;Ljava/nio/charset/Charset;)Ljava/lang/String;
    .locals 0

    .line 278
    invoke-static {p0, p1}, Lcn/hutool/core/codec/Base64Decoder;->decodeStr(Ljava/lang/CharSequence;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static decodeStrGbk(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 1

    .line 246
    sget-object v0, Lcn/hutool/core/util/CharsetUtil;->CHARSET_GBK:Ljava/nio/charset/Charset;

    invoke-static {p0, v0}, Lcn/hutool/core/codec/Base64Decoder;->decodeStr(Ljava/lang/CharSequence;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static decodeToFile(Ljava/lang/CharSequence;Ljava/io/File;)Ljava/io/File;
    .locals 0

    .line 290
    invoke-static {p0}, Lcn/hutool/core/codec/Base64Decoder;->decode(Ljava/lang/CharSequence;)[B

    move-result-object p0

    invoke-static {p0, p1}, Lcn/hutool/core/io/FileUtil;->writeBytes([BLjava/io/File;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public static decodeToStream(Ljava/lang/CharSequence;Ljava/io/OutputStream;Z)V
    .locals 0

    .line 302
    invoke-static {p0}, Lcn/hutool/core/codec/Base64Decoder;->decode(Ljava/lang/CharSequence;)[B

    move-result-object p0

    invoke-static {p1, p2, p0}, Lcn/hutool/core/io/IoUtil;->write(Ljava/io/OutputStream;Z[B)V

    return-void
.end method

.method public static encode(Ljava/io/File;)Ljava/lang/String;
    .locals 0

    .line 195
    invoke-static {p0}, Lcn/hutool/core/io/FileUtil;->readBytes(Ljava/io/File;)[B

    move-result-object p0

    invoke-static {p0}, Lcn/hutool/core/codec/Base64;->encode([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static encode(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 0

    .line 173
    invoke-static {p0}, Lcn/hutool/core/io/IoUtil;->readBytes(Ljava/io/InputStream;)[B

    move-result-object p0

    invoke-static {p0}, Lcn/hutool/core/codec/Base64;->encode([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static encode(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 1

    .line 59
    sget-object v0, Lcn/hutool/core/codec/Base64;->DEFAULT_CHARSET:Ljava/nio/charset/Charset;

    invoke-static {p0, v0}, Lcn/hutool/core/codec/Base64;->encode(Ljava/lang/CharSequence;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static encode(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 81
    invoke-static {p1}, Lcn/hutool/core/util/CharsetUtil;->charset(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object p1

    invoke-static {p0, p1}, Lcn/hutool/core/codec/Base64;->encode(Ljava/lang/CharSequence;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static encode(Ljava/lang/CharSequence;Ljava/nio/charset/Charset;)Ljava/lang/String;
    .locals 0

    .line 118
    invoke-static {p0, p1}, Lcn/hutool/core/util/StrUtil;->bytes(Ljava/lang/CharSequence;Ljava/nio/charset/Charset;)[B

    move-result-object p0

    invoke-static {p0}, Lcn/hutool/core/codec/Base64;->encode([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static encode([B)Ljava/lang/String;
    .locals 1

    .line 140
    invoke-static {}, Ljava/util/Base64;->getEncoder()Ljava/util/Base64$Encoder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/Base64$Encoder;->encodeToString([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static encode([BZ)[B
    .locals 0

    if-eqz p1, :cond_0

    .line 34
    invoke-static {}, Ljava/util/Base64;->getMimeEncoder()Ljava/util/Base64$Encoder;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/util/Base64$Encoder;->encode([B)[B

    move-result-object p0

    goto :goto_0

    .line 35
    :cond_0
    invoke-static {}, Ljava/util/Base64;->getEncoder()Ljava/util/Base64$Encoder;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/util/Base64$Encoder;->encode([B)[B

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static encode([BZZ)[B
    .locals 0

    .line 233
    invoke-static {p0, p1, p2}, Lcn/hutool/core/codec/Base64Encoder;->encode([BZZ)[B

    move-result-object p0

    return-object p0
.end method

.method public static encodeStr([BZZ)Ljava/lang/String;
    .locals 0

    .line 220
    invoke-static {p0, p1, p2}, Lcn/hutool/core/codec/Base64;->encode([BZZ)[B

    move-result-object p0

    sget-object p1, Lcn/hutool/core/codec/Base64;->DEFAULT_CHARSET:Ljava/nio/charset/Charset;

    invoke-static {p0, p1}, Lcn/hutool/core/util/StrUtil;->str([BLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static encodeUrlSafe(Ljava/io/File;)Ljava/lang/String;
    .locals 0

    .line 206
    invoke-static {p0}, Lcn/hutool/core/io/FileUtil;->readBytes(Ljava/io/File;)[B

    move-result-object p0

    invoke-static {p0}, Lcn/hutool/core/codec/Base64;->encodeUrlSafe([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static encodeUrlSafe(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 0

    .line 184
    invoke-static {p0}, Lcn/hutool/core/io/IoUtil;->readBytes(Ljava/io/InputStream;)[B

    move-result-object p0

    invoke-static {p0}, Lcn/hutool/core/codec/Base64;->encodeUrlSafe([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static encodeUrlSafe(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 1

    .line 70
    sget-object v0, Lcn/hutool/core/codec/Base64;->DEFAULT_CHARSET:Ljava/nio/charset/Charset;

    invoke-static {p0, v0}, Lcn/hutool/core/codec/Base64;->encodeUrlSafe(Ljava/lang/CharSequence;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static encodeUrlSafe(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 107
    invoke-static {p1}, Lcn/hutool/core/util/CharsetUtil;->charset(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object p1

    invoke-static {p0, p1}, Lcn/hutool/core/codec/Base64;->encodeUrlSafe(Ljava/lang/CharSequence;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static encodeUrlSafe(Ljava/lang/CharSequence;Ljava/nio/charset/Charset;)Ljava/lang/String;
    .locals 0

    .line 130
    invoke-static {p0, p1}, Lcn/hutool/core/util/StrUtil;->bytes(Ljava/lang/CharSequence;Ljava/nio/charset/Charset;)[B

    move-result-object p0

    invoke-static {p0}, Lcn/hutool/core/codec/Base64;->encodeUrlSafe([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static encodeUrlSafe([B)Ljava/lang/String;
    .locals 1

    .line 162
    invoke-static {}, Ljava/util/Base64;->getUrlEncoder()Ljava/util/Base64$Encoder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Base64$Encoder;->withoutPadding()Ljava/util/Base64$Encoder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/Base64$Encoder;->encodeToString([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static encodeUrlSafe([BZ)[B
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 49
    invoke-static {p0, p1}, Lcn/hutool/core/codec/Base64Encoder;->encodeUrlSafe([BZ)[B

    move-result-object p0

    return-object p0
.end method

.method public static encodeWithoutPadding(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 93
    invoke-static {p0, p1}, Lcn/hutool/core/util/StrUtil;->bytes(Ljava/lang/CharSequence;Ljava/lang/String;)[B

    move-result-object p0

    invoke-static {p0}, Lcn/hutool/core/codec/Base64;->encodeWithoutPadding([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static encodeWithoutPadding([B)Ljava/lang/String;
    .locals 1

    .line 151
    invoke-static {}, Ljava/util/Base64;->getEncoder()Ljava/util/Base64$Encoder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Base64$Encoder;->withoutPadding()Ljava/util/Base64$Encoder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/Base64$Encoder;->encodeToString([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static isBase64(Ljava/lang/CharSequence;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    .line 333
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const/4 v2, 0x2

    if-ge v1, v2, :cond_0

    goto :goto_0

    .line 337
    :cond_0
    invoke-static {p0}, Lcn/hutool/core/util/StrUtil;->utf8Bytes(Ljava/lang/CharSequence;)[B

    move-result-object v1

    .line 339
    array-length v2, v1

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result p0

    if-eq v2, p0, :cond_1

    return v0

    .line 344
    :cond_1
    invoke-static {v1}, Lcn/hutool/core/codec/Base64;->isBase64([B)Z

    move-result p0

    return p0

    :cond_2
    :goto_0
    return v0
.end method

.method public static isBase64([B)Z
    .locals 7

    const/4 v0, 0x0

    if-eqz p0, :cond_7

    .line 355
    array-length v1, p0

    const/4 v2, 0x3

    if-ge v1, v2, :cond_0

    goto :goto_3

    .line 359
    :cond_0
    array-length v1, p0

    move v2, v0

    move v3, v2

    :goto_0
    const/4 v4, 0x1

    if-ge v2, v1, :cond_6

    aget-byte v5, p0, v2

    const/16 v6, 0x3d

    if-eqz v3, :cond_1

    if-eq v6, v5, :cond_5

    return v0

    :cond_1
    if-ne v6, v5, :cond_2

    move v3, v4

    goto :goto_2

    .line 368
    :cond_2
    invoke-static {v5}, Lcn/hutool/core/codec/Base64Decoder;->isBase64Code(B)Z

    move-result v6

    if-nez v6, :cond_4

    invoke-static {v5}, Lcn/hutool/core/codec/Base64;->isWhiteSpace(B)Z

    move-result v5

    if-eqz v5, :cond_3

    goto :goto_1

    :cond_3
    move v4, v0

    :cond_4
    :goto_1
    if-nez v4, :cond_5

    return v0

    :cond_5
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_6
    return v4

    :cond_7
    :goto_3
    return v0
.end method

.method private static isWhiteSpace(B)Z
    .locals 1

    const/16 v0, 0x9

    if-eq p0, v0, :cond_0

    const/16 v0, 0xa

    if-eq p0, v0, :cond_0

    const/16 v0, 0xd

    if-eq p0, v0, :cond_0

    const/16 v0, 0x20

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method
