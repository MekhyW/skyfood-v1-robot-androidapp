.class public Lcn/hutool/core/codec/Base64Encoder;
.super Ljava/lang/Object;
.source "Base64Encoder.java"


# static fields
.field private static final DEFAULT_CHARSET:Ljava/nio/charset/Charset;

.field private static final STANDARD_ENCODE_TABLE:[B

.field private static final URL_SAFE_ENCODE_TABLE:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 17
    sget-object v0, Lcn/hutool/core/util/CharsetUtil;->CHARSET_UTF_8:Ljava/nio/charset/Charset;

    sput-object v0, Lcn/hutool/core/codec/Base64Encoder;->DEFAULT_CHARSET:Ljava/nio/charset/Charset;

    const/16 v0, 0x40

    new-array v1, v0, [B

    .line 21
    fill-array-data v1, :array_0

    sput-object v1, Lcn/hutool/core/codec/Base64Encoder;->STANDARD_ENCODE_TABLE:[B

    new-array v0, v0, [B

    .line 34
    fill-array-data v0, :array_1

    sput-object v0, Lcn/hutool/core/codec/Base64Encoder;->URL_SAFE_ENCODE_TABLE:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x41t
        0x42t
        0x43t
        0x44t
        0x45t
        0x46t
        0x47t
        0x48t
        0x49t
        0x4at
        0x4bt
        0x4ct
        0x4dt
        0x4et
        0x4ft
        0x50t
        0x51t
        0x52t
        0x53t
        0x54t
        0x55t
        0x56t
        0x57t
        0x58t
        0x59t
        0x5at
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
        0x67t
        0x68t
        0x69t
        0x6at
        0x6bt
        0x6ct
        0x6dt
        0x6et
        0x6ft
        0x70t
        0x71t
        0x72t
        0x73t
        0x74t
        0x75t
        0x76t
        0x77t
        0x78t
        0x79t
        0x7at
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x2bt
        0x2ft
    .end array-data

    :array_1
    .array-data 1
        0x41t
        0x42t
        0x43t
        0x44t
        0x45t
        0x46t
        0x47t
        0x48t
        0x49t
        0x4at
        0x4bt
        0x4ct
        0x4dt
        0x4et
        0x4ft
        0x50t
        0x51t
        0x52t
        0x53t
        0x54t
        0x55t
        0x56t
        0x57t
        0x58t
        0x59t
        0x5at
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
        0x67t
        0x68t
        0x69t
        0x6at
        0x6bt
        0x6ct
        0x6dt
        0x6et
        0x6ft
        0x70t
        0x71t
        0x72t
        0x73t
        0x74t
        0x75t
        0x76t
        0x77t
        0x78t
        0x79t
        0x7at
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x2dt
        0x5ft
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static encode(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 1

    .line 77
    sget-object v0, Lcn/hutool/core/codec/Base64Encoder;->DEFAULT_CHARSET:Ljava/nio/charset/Charset;

    invoke-static {p0, v0}, Lcn/hutool/core/codec/Base64Encoder;->encode(Ljava/lang/CharSequence;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static encode(Ljava/lang/CharSequence;Ljava/nio/charset/Charset;)Ljava/lang/String;
    .locals 0

    .line 99
    invoke-static {p0, p1}, Lcn/hutool/core/util/StrUtil;->bytes(Ljava/lang/CharSequence;Ljava/nio/charset/Charset;)[B

    move-result-object p0

    invoke-static {p0}, Lcn/hutool/core/codec/Base64Encoder;->encode([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static encode([B)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 121
    invoke-static {p0, v0}, Lcn/hutool/core/codec/Base64Encoder;->encode([BZ)[B

    move-result-object p0

    sget-object v0, Lcn/hutool/core/codec/Base64Encoder;->DEFAULT_CHARSET:Ljava/nio/charset/Charset;

    invoke-static {p0, v0}, Lcn/hutool/core/util/StrUtil;->str([BLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static encode([BZ)[B
    .locals 1

    const/4 v0, 0x0

    .line 55
    invoke-static {p0, p1, v0}, Lcn/hutool/core/codec/Base64Encoder;->encode([BZZ)[B

    move-result-object p0

    return-object p0
.end method

.method public static encode([BZZ)[B
    .locals 16

    move-object/from16 v0, p0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 163
    :cond_0
    array-length v1, v0

    const/4 v2, 0x0

    if-nez v1, :cond_1

    new-array v0, v2, [B

    return-object v0

    .line 168
    :cond_1
    div-int/lit8 v3, v1, 0x3

    mul-int/lit8 v3, v3, 0x3

    add-int/lit8 v4, v1, -0x1

    .line 169
    div-int/lit8 v5, v4, 0x3

    add-int/lit8 v5, v5, 0x1

    const/4 v6, 0x2

    shl-int/2addr v5, v6

    if-eqz p1, :cond_2

    add-int/lit8 v7, v5, -0x1

    .line 170
    div-int/lit8 v7, v7, 0x4c

    shl-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_2
    move v7, v2

    :goto_0
    add-int/2addr v5, v7

    .line 171
    new-array v7, v5, [B

    if-eqz p2, :cond_3

    .line 173
    sget-object v8, Lcn/hutool/core/codec/Base64Encoder;->URL_SAFE_ENCODE_TABLE:[B

    goto :goto_1

    :cond_3
    sget-object v8, Lcn/hutool/core/codec/Base64Encoder;->STANDARD_ENCODE_TABLE:[B

    :goto_1
    move v9, v2

    move v10, v9

    move v11, v10

    :goto_2
    const/16 v12, 0xa

    if-ge v9, v3, :cond_5

    add-int/lit8 v13, v9, 0x1

    .line 176
    aget-byte v9, v0, v9

    and-int/lit16 v9, v9, 0xff

    shl-int/lit8 v9, v9, 0x10

    add-int/lit8 v14, v13, 0x1

    aget-byte v13, v0, v13

    and-int/lit16 v13, v13, 0xff

    shl-int/lit8 v13, v13, 0x8

    or-int/2addr v9, v13

    add-int/lit8 v13, v14, 0x1

    aget-byte v14, v0, v14

    and-int/lit16 v14, v14, 0xff

    or-int/2addr v9, v14

    add-int/lit8 v14, v10, 0x1

    ushr-int/lit8 v15, v9, 0x12

    and-int/lit8 v15, v15, 0x3f

    .line 178
    aget-byte v15, v8, v15

    aput-byte v15, v7, v10

    add-int/lit8 v10, v14, 0x1

    ushr-int/lit8 v15, v9, 0xc

    and-int/lit8 v15, v15, 0x3f

    .line 179
    aget-byte v15, v8, v15

    aput-byte v15, v7, v14

    add-int/lit8 v14, v10, 0x1

    ushr-int/lit8 v15, v9, 0x6

    and-int/lit8 v15, v15, 0x3f

    .line 180
    aget-byte v15, v8, v15

    aput-byte v15, v7, v10

    add-int/lit8 v10, v14, 0x1

    and-int/lit8 v9, v9, 0x3f

    .line 181
    aget-byte v9, v8, v9

    aput-byte v9, v7, v14

    if-eqz p1, :cond_4

    add-int/lit8 v11, v11, 0x1

    const/16 v9, 0x13

    if-ne v11, v9, :cond_4

    add-int/lit8 v9, v5, -0x2

    if-ge v10, v9, :cond_4

    add-int/lit8 v9, v10, 0x1

    const/16 v11, 0xd

    .line 184
    aput-byte v11, v7, v10

    add-int/lit8 v10, v9, 0x1

    .line 185
    aput-byte v12, v7, v9

    move v11, v2

    :cond_4
    move v9, v13

    goto :goto_2

    :cond_5
    sub-int/2addr v1, v3

    if-lez v1, :cond_a

    .line 192
    aget-byte v3, v0, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/2addr v3, v12

    if-ne v1, v6, :cond_6

    aget-byte v0, v0, v4

    and-int/lit16 v0, v0, 0xff

    shl-int/2addr v0, v6

    goto :goto_3

    :cond_6
    move v0, v2

    :goto_3
    or-int/2addr v0, v3

    add-int/lit8 v3, v5, -0x4

    shr-int/lit8 v4, v0, 0xc

    .line 194
    aget-byte v4, v8, v4

    aput-byte v4, v7, v3

    add-int/lit8 v3, v5, -0x3

    ushr-int/lit8 v4, v0, 0x6

    and-int/lit8 v4, v4, 0x3f

    .line 195
    aget-byte v4, v8, v4

    aput-byte v4, v7, v3

    if-eqz p2, :cond_8

    sub-int/2addr v5, v6

    if-ne v6, v1, :cond_7

    and-int/lit8 v0, v0, 0x3f

    .line 201
    aget-byte v0, v8, v0

    aput-byte v0, v7, v5

    add-int/lit8 v5, v5, 0x1

    .line 204
    :cond_7
    new-array v0, v5, [B

    .line 205
    invoke-static {v7, v2, v0, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0

    :cond_8
    add-int/lit8 v2, v5, -0x2

    const/16 v3, 0x3d

    if-ne v1, v6, :cond_9

    and-int/lit8 v0, v0, 0x3f

    .line 208
    aget-byte v0, v8, v0

    goto :goto_4

    :cond_9
    move v0, v3

    :goto_4
    aput-byte v0, v7, v2

    add-int/lit8 v5, v5, -0x1

    .line 209
    aput-byte v3, v7, v5

    :cond_a
    return-object v7
.end method

.method public static encodeStr([BZZ)Ljava/lang/String;
    .locals 0

    .line 146
    invoke-static {p0, p1, p2}, Lcn/hutool/core/codec/Base64Encoder;->encode([BZZ)[B

    move-result-object p0

    sget-object p1, Lcn/hutool/core/codec/Base64Encoder;->DEFAULT_CHARSET:Ljava/nio/charset/Charset;

    invoke-static {p0, p1}, Lcn/hutool/core/util/StrUtil;->str([BLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static encodeUrlSafe(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 1

    .line 88
    sget-object v0, Lcn/hutool/core/codec/Base64Encoder;->DEFAULT_CHARSET:Ljava/nio/charset/Charset;

    invoke-static {p0, v0}, Lcn/hutool/core/codec/Base64Encoder;->encodeUrlSafe(Ljava/lang/CharSequence;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static encodeUrlSafe(Ljava/lang/CharSequence;Ljava/nio/charset/Charset;)Ljava/lang/String;
    .locals 0

    .line 111
    invoke-static {p0, p1}, Lcn/hutool/core/util/StrUtil;->bytes(Ljava/lang/CharSequence;Ljava/nio/charset/Charset;)[B

    move-result-object p0

    invoke-static {p0}, Lcn/hutool/core/codec/Base64Encoder;->encodeUrlSafe([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static encodeUrlSafe([B)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 132
    invoke-static {p0, v0}, Lcn/hutool/core/codec/Base64Encoder;->encodeUrlSafe([BZ)[B

    move-result-object p0

    sget-object v0, Lcn/hutool/core/codec/Base64Encoder;->DEFAULT_CHARSET:Ljava/nio/charset/Charset;

    invoke-static {p0, v0}, Lcn/hutool/core/util/StrUtil;->str([BLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static encodeUrlSafe([BZ)[B
    .locals 1

    const/4 v0, 0x1

    .line 67
    invoke-static {p0, p1, v0}, Lcn/hutool/core/codec/Base64Encoder;->encode([BZZ)[B

    move-result-object p0

    return-object p0
.end method
