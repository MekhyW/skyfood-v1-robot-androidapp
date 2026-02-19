.class public Lcn/hutool/core/codec/Base32;
.super Ljava/lang/Object;
.source "Base32.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decode(Ljava/lang/String;)[B
    .locals 1

    .line 94
    sget-object v0, Lcn/hutool/core/codec/Base32Codec;->INSTANCE:Lcn/hutool/core/codec/Base32Codec;

    invoke-virtual {v0, p0}, Lcn/hutool/core/codec/Base32Codec;->decode(Ljava/lang/CharSequence;)[B

    move-result-object p0

    return-object p0
.end method

.method public static decodeHex(Ljava/lang/String;)[B
    .locals 2

    .line 125
    sget-object v0, Lcn/hutool/core/codec/Base32Codec;->INSTANCE:Lcn/hutool/core/codec/Base32Codec;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcn/hutool/core/codec/Base32Codec;->decode(Ljava/lang/CharSequence;Z)[B

    move-result-object p0

    return-object p0
.end method

.method public static decodeStr(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 104
    sget-object v0, Lcn/hutool/core/util/CharsetUtil;->CHARSET_UTF_8:Ljava/nio/charset/Charset;

    invoke-static {p0, v0}, Lcn/hutool/core/codec/Base32;->decodeStr(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static decodeStr(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/lang/String;
    .locals 0

    .line 115
    invoke-static {p0}, Lcn/hutool/core/codec/Base32;->decode(Ljava/lang/String;)[B

    move-result-object p0

    invoke-static {p0, p1}, Lcn/hutool/core/util/StrUtil;->str([BLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static decodeStrHex(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 135
    sget-object v0, Lcn/hutool/core/util/CharsetUtil;->CHARSET_UTF_8:Ljava/nio/charset/Charset;

    invoke-static {p0, v0}, Lcn/hutool/core/codec/Base32;->decodeStrHex(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static decodeStrHex(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/lang/String;
    .locals 0

    .line 146
    invoke-static {p0}, Lcn/hutool/core/codec/Base32;->decodeHex(Ljava/lang/String;)[B

    move-result-object p0

    invoke-static {p0, p1}, Lcn/hutool/core/util/StrUtil;->str([BLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static encode(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 40
    sget-object v0, Lcn/hutool/core/util/CharsetUtil;->CHARSET_UTF_8:Ljava/nio/charset/Charset;

    invoke-static {p0, v0}, Lcn/hutool/core/codec/Base32;->encode(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static encode(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/lang/String;
    .locals 0

    .line 51
    invoke-static {p0, p1}, Lcn/hutool/core/util/StrUtil;->bytes(Ljava/lang/CharSequence;Ljava/nio/charset/Charset;)[B

    move-result-object p0

    invoke-static {p0}, Lcn/hutool/core/codec/Base32;->encode([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static encode([B)Ljava/lang/String;
    .locals 1

    .line 30
    sget-object v0, Lcn/hutool/core/codec/Base32Codec;->INSTANCE:Lcn/hutool/core/codec/Base32Codec;

    invoke-virtual {v0, p0}, Lcn/hutool/core/codec/Base32Codec;->encode([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static encodeHex(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 71
    sget-object v0, Lcn/hutool/core/util/CharsetUtil;->CHARSET_UTF_8:Ljava/nio/charset/Charset;

    invoke-static {p0, v0}, Lcn/hutool/core/codec/Base32;->encodeHex(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static encodeHex(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/lang/String;
    .locals 0

    .line 82
    invoke-static {p0, p1}, Lcn/hutool/core/util/StrUtil;->bytes(Ljava/lang/CharSequence;Ljava/nio/charset/Charset;)[B

    move-result-object p0

    invoke-static {p0}, Lcn/hutool/core/codec/Base32;->encodeHex([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static encodeHex([B)Ljava/lang/String;
    .locals 2

    .line 61
    sget-object v0, Lcn/hutool/core/codec/Base32Codec;->INSTANCE:Lcn/hutool/core/codec/Base32Codec;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcn/hutool/core/codec/Base32Codec;->encode([BZ)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
