.class public Lcn/hutool/core/net/URLDecoder;
.super Ljava/lang/Object;
.source "URLDecoder.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final ESCAPE_CHAR:B = 0x25t

.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decode(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    .line 59
    invoke-static {p0, p1, v0}, Lcn/hutool/core/net/URLDecoder;->decode(Ljava/lang/String;Ljava/nio/charset/Charset;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static decode(Ljava/lang/String;Ljava/nio/charset/Charset;Z)Ljava/lang/String;
    .locals 6

    if-eqz p0, :cond_8

    if-nez p1, :cond_0

    goto :goto_2

    .line 80
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    const-string p0, ""

    return-object p0

    .line 85
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    div-int/lit8 v2, v0, 0x3

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v2, v0, :cond_6

    .line 90
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x25

    if-eq v5, v4, :cond_5

    .line 91
    invoke-static {v4}, Lcn/hutool/core/util/CharUtil;->isHexChar(C)Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_1

    :cond_2
    if-le v2, v3, :cond_3

    .line 98
    invoke-static {p0, v3, v2, p1, p2}, Lcn/hutool/core/net/URLDecoder;->decodeSub(Ljava/lang/String;IILjava/nio/charset/Charset;Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    const/16 v3, 0x2b

    if-ne v3, v4, :cond_4

    if-eqz p2, :cond_4

    const/16 v4, 0x20

    .line 107
    :cond_4
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v2, 0x1

    :cond_5
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_6
    if-ge v3, v0, :cond_7

    .line 113
    invoke-static {p0, v3, v0, p1, p2}, Lcn/hutool/core/net/URLDecoder;->decodeSub(Ljava/lang/String;IILjava/nio/charset/Charset;Z)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    :cond_7
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_8
    :goto_2
    return-object p0
.end method

.method public static decode([B)[B
    .locals 1

    const/4 v0, 0x1

    .line 131
    invoke-static {p0, v0}, Lcn/hutool/core/net/URLDecoder;->decode([BZ)[B

    move-result-object p0

    return-object p0
.end method

.method public static decode([BZ)[B
    .locals 6

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 151
    :cond_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    array-length v1, p0

    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    const/4 v1, 0x0

    .line 153
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_5

    .line 154
    aget-byte v2, p0, v1

    const/16 v3, 0x2b

    if-ne v2, v3, :cond_2

    if-eqz p1, :cond_1

    const/16 v2, 0x20

    .line 156
    :cond_1
    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_1

    :cond_2
    const/16 v3, 0x25

    if-ne v2, v3, :cond_4

    add-int/lit8 v3, v1, 0x1

    .line 158
    array-length v4, p0

    if-ge v3, v4, :cond_3

    .line 159
    aget-byte v3, p0, v3

    invoke-static {v3}, Lcn/hutool/core/util/CharUtil;->digit16(I)I

    move-result v3

    if-ltz v3, :cond_3

    add-int/lit8 v4, v1, 0x2

    .line 160
    array-length v5, p0

    if-ge v4, v5, :cond_3

    .line 161
    aget-byte v5, p0, v4

    invoke-static {v5}, Lcn/hutool/core/util/CharUtil;->digit16(I)I

    move-result v5

    if-ltz v5, :cond_3

    shl-int/lit8 v1, v3, 0x4

    add-int/2addr v1, v5

    int-to-char v1, v1

    .line 163
    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    move v1, v4

    goto :goto_1

    .line 170
    :cond_3
    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_1

    .line 172
    :cond_4
    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 175
    :cond_5
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0
.end method

.method public static decodeForPath(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 42
    invoke-static {p0, p1, v0}, Lcn/hutool/core/net/URLDecoder;->decode(Ljava/lang/String;Ljava/nio/charset/Charset;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static decodeSub(Ljava/lang/String;IILjava/nio/charset/Charset;Z)Ljava/lang/String;
    .locals 1

    .line 190
    new-instance v0, Ljava/lang/String;

    .line 192
    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    sget-object p1, Lcn/hutool/core/util/CharsetUtil;->CHARSET_ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-virtual {p0, p1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    .line 190
    invoke-static {p0, p4}, Lcn/hutool/core/net/URLDecoder;->decode([BZ)[B

    move-result-object p0

    invoke-direct {v0, p0, p3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v0
.end method
