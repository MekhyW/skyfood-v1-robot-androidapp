.class public Lcn/hutool/core/codec/Base62;
.super Ljava/lang/Object;
.source "Base62.java"


# static fields
.field private static final DEFAULT_CHARSET:Ljava/nio/charset/Charset;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 21
    sget-object v0, Lcn/hutool/core/util/CharsetUtil;->CHARSET_UTF_8:Ljava/nio/charset/Charset;

    sput-object v0, Lcn/hutool/core/codec/Base62;->DEFAULT_CHARSET:Ljava/nio/charset/Charset;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decode(Ljava/lang/CharSequence;)[B
    .locals 1

    .line 187
    sget-object v0, Lcn/hutool/core/codec/Base62;->DEFAULT_CHARSET:Ljava/nio/charset/Charset;

    invoke-static {p0, v0}, Lcn/hutool/core/util/StrUtil;->bytes(Ljava/lang/CharSequence;Ljava/nio/charset/Charset;)[B

    move-result-object p0

    invoke-static {p0}, Lcn/hutool/core/codec/Base62;->decode([B)[B

    move-result-object p0

    return-object p0
.end method

.method public static decode([B)[B
    .locals 1

    .line 197
    sget-object v0, Lcn/hutool/core/codec/Base62Codec;->INSTANCE:Lcn/hutool/core/codec/Base62Codec;

    invoke-virtual {v0, p0}, Lcn/hutool/core/codec/Base62Codec;->decode([B)[B

    move-result-object p0

    return-object p0
.end method

.method public static decodeInverted(Ljava/lang/CharSequence;)[B
    .locals 1

    .line 250
    sget-object v0, Lcn/hutool/core/codec/Base62;->DEFAULT_CHARSET:Ljava/nio/charset/Charset;

    invoke-static {p0, v0}, Lcn/hutool/core/util/StrUtil;->bytes(Ljava/lang/CharSequence;Ljava/nio/charset/Charset;)[B

    move-result-object p0

    invoke-static {p0}, Lcn/hutool/core/codec/Base62;->decodeInverted([B)[B

    move-result-object p0

    return-object p0
.end method

.method public static decodeInverted([B)[B
    .locals 2

    .line 260
    sget-object v0, Lcn/hutool/core/codec/Base62Codec;->INSTANCE:Lcn/hutool/core/codec/Base62Codec;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcn/hutool/core/codec/Base62Codec;->decode([BZ)[B

    move-result-object p0

    return-object p0
.end method

.method public static decodeStr(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 1

    .line 144
    sget-object v0, Lcn/hutool/core/codec/Base62;->DEFAULT_CHARSET:Ljava/nio/charset/Charset;

    invoke-static {p0, v0}, Lcn/hutool/core/codec/Base62;->decodeStr(Ljava/lang/CharSequence;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static decodeStr(Ljava/lang/CharSequence;Ljava/nio/charset/Charset;)Ljava/lang/String;
    .locals 0

    .line 155
    invoke-static {p0}, Lcn/hutool/core/codec/Base62;->decode(Ljava/lang/CharSequence;)[B

    move-result-object p0

    invoke-static {p0, p1}, Lcn/hutool/core/util/StrUtil;->str([BLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static decodeStrGbk(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 1

    .line 134
    sget-object v0, Lcn/hutool/core/util/CharsetUtil;->CHARSET_GBK:Ljava/nio/charset/Charset;

    invoke-static {p0, v0}, Lcn/hutool/core/codec/Base62;->decodeStr(Ljava/lang/CharSequence;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static decodeStrInverted(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 1

    .line 207
    sget-object v0, Lcn/hutool/core/codec/Base62;->DEFAULT_CHARSET:Ljava/nio/charset/Charset;

    invoke-static {p0, v0}, Lcn/hutool/core/codec/Base62;->decodeStrInverted(Ljava/lang/CharSequence;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static decodeStrInverted(Ljava/lang/CharSequence;Ljava/nio/charset/Charset;)Ljava/lang/String;
    .locals 0

    .line 218
    invoke-static {p0}, Lcn/hutool/core/codec/Base62;->decodeInverted(Ljava/lang/CharSequence;)[B

    move-result-object p0

    invoke-static {p0, p1}, Lcn/hutool/core/util/StrUtil;->str([BLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static decodeToFile(Ljava/lang/CharSequence;Ljava/io/File;)Ljava/io/File;
    .locals 0

    .line 166
    invoke-static {p0}, Lcn/hutool/core/codec/Base62;->decode(Ljava/lang/CharSequence;)[B

    move-result-object p0

    invoke-static {p0, p1}, Lcn/hutool/core/io/FileUtil;->writeBytes([BLjava/io/File;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public static decodeToFileInverted(Ljava/lang/CharSequence;Ljava/io/File;)Ljava/io/File;
    .locals 0

    .line 229
    invoke-static {p0}, Lcn/hutool/core/codec/Base62;->decodeInverted(Ljava/lang/CharSequence;)[B

    move-result-object p0

    invoke-static {p0, p1}, Lcn/hutool/core/io/FileUtil;->writeBytes([BLjava/io/File;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public static decodeToStream(Ljava/lang/CharSequence;Ljava/io/OutputStream;Z)V
    .locals 0

    .line 177
    invoke-static {p0}, Lcn/hutool/core/codec/Base62;->decode(Ljava/lang/CharSequence;)[B

    move-result-object p0

    invoke-static {p1, p2, p0}, Lcn/hutool/core/io/IoUtil;->write(Ljava/io/OutputStream;Z[B)V

    return-void
.end method

.method public static decodeToStreamInverted(Ljava/lang/CharSequence;Ljava/io/OutputStream;Z)V
    .locals 0

    .line 240
    invoke-static {p0}, Lcn/hutool/core/codec/Base62;->decodeInverted(Ljava/lang/CharSequence;)[B

    move-result-object p0

    invoke-static {p1, p2, p0}, Lcn/hutool/core/io/IoUtil;->write(Ljava/io/OutputStream;Z[B)V

    return-void
.end method

.method public static encode(Ljava/io/File;)Ljava/lang/String;
    .locals 0

    .line 72
    invoke-static {p0}, Lcn/hutool/core/io/FileUtil;->readBytes(Ljava/io/File;)[B

    move-result-object p0

    invoke-static {p0}, Lcn/hutool/core/codec/Base62;->encode([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static encode(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 0

    .line 62
    invoke-static {p0}, Lcn/hutool/core/io/IoUtil;->readBytes(Ljava/io/InputStream;)[B

    move-result-object p0

    invoke-static {p0}, Lcn/hutool/core/codec/Base62;->encode([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static encode(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 1

    .line 31
    sget-object v0, Lcn/hutool/core/codec/Base62;->DEFAULT_CHARSET:Ljava/nio/charset/Charset;

    invoke-static {p0, v0}, Lcn/hutool/core/codec/Base62;->encode(Ljava/lang/CharSequence;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static encode(Ljava/lang/CharSequence;Ljava/nio/charset/Charset;)Ljava/lang/String;
    .locals 0

    .line 42
    invoke-static {p0, p1}, Lcn/hutool/core/util/StrUtil;->bytes(Ljava/lang/CharSequence;Ljava/nio/charset/Charset;)[B

    move-result-object p0

    invoke-static {p0}, Lcn/hutool/core/codec/Base62;->encode([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static encode([B)Ljava/lang/String;
    .locals 2

    .line 52
    new-instance v0, Ljava/lang/String;

    sget-object v1, Lcn/hutool/core/codec/Base62Codec;->INSTANCE:Lcn/hutool/core/codec/Base62Codec;

    invoke-virtual {v1, p0}, Lcn/hutool/core/codec/Base62Codec;->encode([B)[B

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static encodeInverted(Ljava/io/File;)Ljava/lang/String;
    .locals 0

    .line 123
    invoke-static {p0}, Lcn/hutool/core/io/FileUtil;->readBytes(Ljava/io/File;)[B

    move-result-object p0

    invoke-static {p0}, Lcn/hutool/core/codec/Base62;->encodeInverted([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static encodeInverted(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 0

    .line 113
    invoke-static {p0}, Lcn/hutool/core/io/IoUtil;->readBytes(Ljava/io/InputStream;)[B

    move-result-object p0

    invoke-static {p0}, Lcn/hutool/core/codec/Base62;->encodeInverted([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static encodeInverted(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 1

    .line 82
    sget-object v0, Lcn/hutool/core/codec/Base62;->DEFAULT_CHARSET:Ljava/nio/charset/Charset;

    invoke-static {p0, v0}, Lcn/hutool/core/codec/Base62;->encodeInverted(Ljava/lang/CharSequence;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static encodeInverted(Ljava/lang/CharSequence;Ljava/nio/charset/Charset;)Ljava/lang/String;
    .locals 0

    .line 93
    invoke-static {p0, p1}, Lcn/hutool/core/util/StrUtil;->bytes(Ljava/lang/CharSequence;Ljava/nio/charset/Charset;)[B

    move-result-object p0

    invoke-static {p0}, Lcn/hutool/core/codec/Base62;->encodeInverted([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static encodeInverted([B)Ljava/lang/String;
    .locals 3

    .line 103
    new-instance v0, Ljava/lang/String;

    sget-object v1, Lcn/hutool/core/codec/Base62Codec;->INSTANCE:Lcn/hutool/core/codec/Base62Codec;

    const/4 v2, 0x1

    invoke-virtual {v1, p0, v2}, Lcn/hutool/core/codec/Base62Codec;->encode([BZ)[B

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method
