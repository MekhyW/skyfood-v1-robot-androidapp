.class public Lcn/hutool/core/util/HexUtil;
.super Ljava/lang/Object;
.source "HexUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static appendHex(Ljava/lang/StringBuilder;BZ)V
    .locals 0

    if-eqz p2, :cond_0

    .line 341
    sget-object p2, Lcn/hutool/core/codec/Base16Codec;->CODEC_LOWER:Lcn/hutool/core/codec/Base16Codec;

    goto :goto_0

    :cond_0
    sget-object p2, Lcn/hutool/core/codec/Base16Codec;->CODEC_UPPER:Lcn/hutool/core/codec/Base16Codec;

    :goto_0
    invoke-virtual {p2, p0, p1}, Lcn/hutool/core/codec/Base16Codec;->appendHex(Ljava/lang/StringBuilder;B)V

    return-void
.end method

.method public static decodeColor(Ljava/lang/String;)Ljava/awt/Color;
    .locals 0

    .line 244
    invoke-static {p0}, Ljava/awt/Color;->decode(Ljava/lang/String;)Ljava/awt/Color;

    move-result-object p0

    return-object p0
.end method

.method public static decodeHex(Ljava/lang/CharSequence;)[B
    .locals 1

    .line 191
    sget-object v0, Lcn/hutool/core/codec/Base16Codec;->CODEC_LOWER:Lcn/hutool/core/codec/Base16Codec;

    invoke-virtual {v0, p0}, Lcn/hutool/core/codec/Base16Codec;->decode(Ljava/lang/CharSequence;)[B

    move-result-object p0

    return-object p0
.end method

.method public static decodeHex(Ljava/lang/String;)[B
    .locals 0

    .line 168
    invoke-static {p0}, Lcn/hutool/core/util/HexUtil;->decodeHex(Ljava/lang/CharSequence;)[B

    move-result-object p0

    return-object p0
.end method

.method public static decodeHex([C)[B
    .locals 0

    .line 179
    invoke-static {p0}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcn/hutool/core/util/HexUtil;->decodeHex(Ljava/lang/String;)[B

    move-result-object p0

    return-object p0
.end method

.method public static decodeHexStr(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 133
    sget-object v0, Lcn/hutool/core/util/CharsetUtil;->CHARSET_UTF_8:Ljava/nio/charset/Charset;

    invoke-static {p0, v0}, Lcn/hutool/core/util/HexUtil;->decodeHexStr(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static decodeHexStr(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/lang/String;
    .locals 1

    .line 144
    invoke-static {p0}, Lcn/hutool/core/util/StrUtil;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 147
    :cond_0
    invoke-static {p0}, Lcn/hutool/core/util/HexUtil;->decodeHex(Ljava/lang/String;)[B

    move-result-object p0

    invoke-static {p0, p1}, Lcn/hutool/core/util/StrUtil;->str([BLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static decodeHexStr([CLjava/nio/charset/Charset;)Ljava/lang/String;
    .locals 0

    .line 158
    invoke-static {p0}, Lcn/hutool/core/util/HexUtil;->decodeHex([C)[B

    move-result-object p0

    invoke-static {p0, p1}, Lcn/hutool/core/util/StrUtil;->str([BLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static encodeColor(Ljava/awt/Color;)Ljava/lang/String;
    .locals 1

    const-string v0, "#"

    .line 204
    invoke-static {p0, v0}, Lcn/hutool/core/util/HexUtil;->encodeColor(Ljava/awt/Color;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static encodeColor(Ljava/awt/Color;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 216
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 218
    invoke-virtual {p0}, Ljava/awt/Color;->getRed()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    .line 219
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x30

    const/4 v3, 0x1

    if-ne v3, v1, :cond_0

    .line 220
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 222
    :cond_0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 223
    invoke-virtual {p0}, Ljava/awt/Color;->getGreen()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    .line 224
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v3, v1, :cond_1

    .line 225
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 227
    :cond_1
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 228
    invoke-virtual {p0}, Ljava/awt/Color;->getBlue()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    .line 229
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    if-ne v3, p1, :cond_2

    .line 230
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 232
    :cond_2
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 233
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static encodeHex(Ljava/lang/String;Ljava/nio/charset/Charset;)[C
    .locals 0

    .line 68
    invoke-static {p0, p1}, Lcn/hutool/core/util/StrUtil;->bytes(Ljava/lang/CharSequence;Ljava/nio/charset/Charset;)[B

    move-result-object p0

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcn/hutool/core/util/HexUtil;->encodeHex([BZ)[C

    move-result-object p0

    return-object p0
.end method

.method public static encodeHex([B)[C
    .locals 1

    const/4 v0, 0x1

    .line 57
    invoke-static {p0, v0}, Lcn/hutool/core/util/HexUtil;->encodeHex([BZ)[C

    move-result-object p0

    return-object p0
.end method

.method public static encodeHex([BZ)[C
    .locals 0

    if-eqz p1, :cond_0

    .line 79
    sget-object p1, Lcn/hutool/core/codec/Base16Codec;->CODEC_LOWER:Lcn/hutool/core/codec/Base16Codec;

    goto :goto_0

    :cond_0
    sget-object p1, Lcn/hutool/core/codec/Base16Codec;->CODEC_UPPER:Lcn/hutool/core/codec/Base16Codec;

    :goto_0
    invoke-virtual {p1, p0}, Lcn/hutool/core/codec/Base16Codec;->encode([B)[C

    move-result-object p0

    return-object p0
.end method

.method public static encodeHexStr(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 110
    sget-object v0, Lcn/hutool/core/util/CharsetUtil;->CHARSET_UTF_8:Ljava/nio/charset/Charset;

    invoke-static {p0, v0}, Lcn/hutool/core/util/HexUtil;->encodeHexStr(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static encodeHexStr(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/lang/String;
    .locals 0

    .line 100
    invoke-static {p0, p1}, Lcn/hutool/core/util/StrUtil;->bytes(Ljava/lang/CharSequence;Ljava/nio/charset/Charset;)[B

    move-result-object p0

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcn/hutool/core/util/HexUtil;->encodeHexStr([BZ)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static encodeHexStr([B)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    .line 89
    invoke-static {p0, v0}, Lcn/hutool/core/util/HexUtil;->encodeHexStr([BZ)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static encodeHexStr([BZ)Ljava/lang/String;
    .locals 1

    .line 121
    new-instance v0, Ljava/lang/String;

    invoke-static {p0, p1}, Lcn/hutool/core/util/HexUtil;->encodeHex([BZ)[C

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([C)V

    return-object v0
.end method

.method public static format(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 368
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 369
    div-int/lit8 v1, v0, 0x2

    add-int/2addr v1, v0

    invoke-static {v1}, Lcn/hutool/core/util/StrUtil;->builder(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x0

    .line 370
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v2, 0x2

    :goto_0
    add-int/lit8 v4, v0, -0x1

    if-ge v2, v4, :cond_0

    const/16 v4, 0x20

    .line 372
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    add-int/lit8 v5, v2, 0x1

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x2

    goto :goto_0

    .line 374
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static hexToInt(Ljava/lang/String;)I
    .locals 1

    const/16 v0, 0x10

    .line 307
    invoke-static {p0, v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static hexToLong(Ljava/lang/String;)J
    .locals 2

    const/16 v0, 0x10

    .line 329
    invoke-static {p0, v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v0

    return-wide v0
.end method

.method public static isHexNumber(Ljava/lang/String;)Z
    .locals 4

    const/16 v0, 0x2d

    .line 30
    invoke-static {p0, v0}, Lcn/hutool/core/util/StrUtil;->startWith(Ljava/lang/CharSequence;C)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const-string v0, "0x"

    .line 35
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_3

    const-string v0, "0X"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const-string v0, "#"

    .line 37
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v2

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v0, 0x2

    .line 41
    :goto_1
    :try_start_0
    new-instance v3, Ljava/math/BigInteger;

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0x10

    invoke-direct {v3, p0, v0}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    :catch_0
    return v1
.end method

.method public static toBigInteger(Ljava/lang/String;)Ljava/math/BigInteger;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 355
    :cond_0
    new-instance v0, Ljava/math/BigInteger;

    const/16 v1, 0x10

    invoke-direct {v0, p0, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    return-object v0
.end method

.method public static toHex(I)Ljava/lang/String;
    .locals 0

    .line 296
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static toHex(J)Ljava/lang/String;
    .locals 0

    .line 318
    invoke-static {p0, p1}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static toUnicodeHex(C)Ljava/lang/String;
    .locals 1

    .line 285
    sget-object v0, Lcn/hutool/core/codec/Base16Codec;->CODEC_LOWER:Lcn/hutool/core/codec/Base16Codec;

    invoke-virtual {v0, p0}, Lcn/hutool/core/codec/Base16Codec;->toUnicodeHex(C)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static toUnicodeHex(I)Ljava/lang/String;
    .locals 4

    .line 259
    new-instance v0, Ljava/lang/StringBuilder;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "\\u"

    .line 261
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 262
    invoke-static {p0}, Lcn/hutool/core/util/HexUtil;->toHex(I)Ljava/lang/String;

    move-result-object p0

    .line 263
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x4

    if-ge v1, v2, :cond_0

    const/4 v3, 0x0

    sub-int/2addr v2, v1

    const-string v1, "0000"

    .line 265
    invoke-virtual {v0, v1, v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 267
    :cond_0
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 269
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
