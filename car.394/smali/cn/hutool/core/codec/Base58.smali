.class public Lcn/hutool/core/codec/Base58;
.super Ljava/lang/Object;
.source "Base58.java"


# static fields
.field private static final CHECKSUM_SIZE:I = 0x4


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addChecksum(Ljava/lang/Integer;[B)[B
    .locals 4

    const/4 v0, 0x4

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    .line 115
    array-length v2, p1

    const/4 v3, 0x1

    add-int/2addr v2, v3

    add-int/2addr v2, v0

    new-array v2, v2, [B

    .line 116
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    int-to-byte p0, p0

    aput-byte p0, v2, v1

    .line 117
    array-length p0, p1

    invoke-static {p1, v1, v2, v3, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 119
    :cond_0
    array-length p0, p1

    add-int/2addr p0, v0

    new-array v2, p0, [B

    .line 120
    array-length p0, p1

    invoke-static {p1, v1, v2, v1, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 122
    :goto_0
    invoke-static {p1}, Lcn/hutool/core/codec/Base58;->checksum([B)[B

    move-result-object p0

    .line 123
    array-length p1, v2

    sub-int/2addr p1, v0

    invoke-static {p0, v1, v2, p1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method

.method private static checksum([B)[B
    .locals 2

    .line 135
    invoke-static {p0}, Lcn/hutool/core/codec/Base58;->hash256([B)[B

    move-result-object p0

    invoke-static {p0}, Lcn/hutool/core/codec/Base58;->hash256([B)[B

    move-result-object p0

    const/4 v0, 0x0

    const/4 v1, 0x4

    .line 136
    invoke-static {p0, v0, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    return-object p0
.end method

.method public static decode(Ljava/lang/CharSequence;)[B
    .locals 1

    .line 85
    sget-object v0, Lcn/hutool/core/codec/Base58Codec;->INSTANCE:Lcn/hutool/core/codec/Base58Codec;

    invoke-virtual {v0, p0}, Lcn/hutool/core/codec/Base58Codec;->decode(Ljava/lang/CharSequence;)[B

    move-result-object p0

    return-object p0
.end method

.method public static decodeChecked(Ljava/lang/CharSequence;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/hutool/core/exceptions/ValidateException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 58
    :try_start_0
    invoke-static {p0, v0}, Lcn/hutool/core/codec/Base58;->decodeChecked(Ljava/lang/CharSequence;Z)[B

    move-result-object p0
    :try_end_0
    .catch Lcn/hutool/core/exceptions/ValidateException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 v0, 0x0

    .line 60
    invoke-static {p0, v0}, Lcn/hutool/core/codec/Base58;->decodeChecked(Ljava/lang/CharSequence;Z)[B

    move-result-object p0

    return-object p0
.end method

.method public static decodeChecked(Ljava/lang/CharSequence;Z)[B
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/hutool/core/exceptions/ValidateException;
        }
    .end annotation

    .line 74
    invoke-static {p0}, Lcn/hutool/core/codec/Base58;->decode(Ljava/lang/CharSequence;)[B

    move-result-object p0

    .line 75
    invoke-static {p0, p1}, Lcn/hutool/core/codec/Base58;->verifyAndRemoveChecksum([BZ)[B

    move-result-object p0

    return-object p0
.end method

.method public static encode([B)Ljava/lang/String;
    .locals 1

    .line 44
    sget-object v0, Lcn/hutool/core/codec/Base58Codec;->INSTANCE:Lcn/hutool/core/codec/Base58Codec;

    invoke-virtual {v0, p0}, Lcn/hutool/core/codec/Base58Codec;->encode([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static encodeChecked(Ljava/lang/Integer;[B)Ljava/lang/String;
    .locals 0

    .line 34
    invoke-static {p0, p1}, Lcn/hutool/core/codec/Base58;->addChecksum(Ljava/lang/Integer;[B)[B

    move-result-object p0

    invoke-static {p0}, Lcn/hutool/core/codec/Base58;->encode([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static hash256([B)[B
    .locals 1

    :try_start_0
    const-string v0, "SHA-256"

    .line 147
    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 149
    new-instance v0, Lcn/hutool/core/exceptions/UtilException;

    invoke-direct {v0, p0}, Lcn/hutool/core/exceptions/UtilException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method private static verifyAndRemoveChecksum([BZ)[B
    .locals 2

    .line 96
    array-length v0, p0

    add-int/lit8 v0, v0, -0x4

    invoke-static {p0, p1, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p1

    .line 97
    array-length v0, p0

    add-int/lit8 v0, v0, -0x4

    array-length v1, p0

    invoke-static {p0, v0, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    .line 98
    invoke-static {p1}, Lcn/hutool/core/codec/Base58;->checksum([B)[B

    move-result-object v0

    .line 99
    invoke-static {p0, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p0

    if-eqz p0, :cond_0

    return-object p1

    .line 100
    :cond_0
    new-instance p0, Lcn/hutool/core/exceptions/ValidateException;

    const-string p1, "Base58 checksum is invalid"

    invoke-direct {p0, p1}, Lcn/hutool/core/exceptions/ValidateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
