.class public Lcn/hutool/crypto/ASN1Util;
.super Ljava/lang/Object;
.source "ASN1Util.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decode(Ljava/io/InputStream;)Lorg/bouncycastle/asn1/ASN1Object;
    .locals 1

    .line 87
    new-instance v0, Lorg/bouncycastle/asn1/ASN1InputStream;

    invoke-direct {v0, p0}, Lorg/bouncycastle/asn1/ASN1InputStream;-><init>(Ljava/io/InputStream;)V

    .line 89
    :try_start_0
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1InputStream;->readObject()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 91
    new-instance v0, Lcn/hutool/core/io/IORuntimeException;

    invoke-direct {v0, p0}, Lcn/hutool/core/io/IORuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static varargs encode(Ljava/lang/String;[Lorg/bouncycastle/asn1/ASN1Encodable;)[B
    .locals 1

    .line 46
    new-instance v0, Lcn/hutool/core/io/FastByteArrayOutputStream;

    invoke-direct {v0}, Lcn/hutool/core/io/FastByteArrayOutputStream;-><init>()V

    .line 47
    invoke-static {p0, v0, p1}, Lcn/hutool/crypto/ASN1Util;->encodeTo(Ljava/lang/String;Ljava/io/OutputStream;[Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 48
    invoke-virtual {v0}, Lcn/hutool/core/io/FastByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0
.end method

.method public static varargs encodeDer([Lorg/bouncycastle/asn1/ASN1Encodable;)[B
    .locals 1

    const-string v0, "DER"

    .line 35
    invoke-static {v0, p0}, Lcn/hutool/crypto/ASN1Util;->encode(Ljava/lang/String;[Lorg/bouncycastle/asn1/ASN1Encodable;)[B

    move-result-object p0

    return-object p0
.end method

.method public static varargs encodeTo(Ljava/lang/String;Ljava/io/OutputStream;[Lorg/bouncycastle/asn1/ASN1Encodable;)V
    .locals 4

    .line 60
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, -0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "DER"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x2

    goto :goto_0

    :sswitch_1
    const-string v0, "BER"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    move v3, v1

    goto :goto_0

    :sswitch_2
    const-string v0, "DL"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    move v3, v2

    :goto_0
    packed-switch v3, :pswitch_data_0

    .line 71
    new-instance p1, Lcn/hutool/crypto/CryptoException;

    new-array p2, v1, [Ljava/lang/Object;

    aput-object p0, p2, v2

    const-string p0, "Unsupported ASN1 encoding: {}"

    invoke-direct {p1, p0, p2}, Lcn/hutool/crypto/CryptoException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p1

    .line 62
    :pswitch_0
    new-instance p0, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {p0, p2}, Lorg/bouncycastle/asn1/DERSequence;-><init>([Lorg/bouncycastle/asn1/ASN1Encodable;)V

    goto :goto_1

    .line 65
    :pswitch_1
    new-instance p0, Lorg/bouncycastle/asn1/BERSequence;

    invoke-direct {p0, p2}, Lorg/bouncycastle/asn1/BERSequence;-><init>([Lorg/bouncycastle/asn1/ASN1Encodable;)V

    goto :goto_1

    .line 68
    :pswitch_2
    new-instance p0, Lorg/bouncycastle/asn1/DLSequence;

    invoke-direct {p0, p2}, Lorg/bouncycastle/asn1/DLSequence;-><init>([Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 74
    :goto_1
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->encodeTo(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 76
    new-instance p1, Lcn/hutool/core/io/IORuntimeException;

    invoke-direct {p1, p0}, Lcn/hutool/core/io/IORuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    nop

    :sswitch_data_0
    .sparse-switch
        0x888 -> :sswitch_2
        0x1006f -> :sswitch_1
        0x107f1 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getDumpStr(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 0

    .line 103
    invoke-static {p0}, Lcn/hutool/crypto/ASN1Util;->decode(Ljava/io/InputStream;)Lorg/bouncycastle/asn1/ASN1Object;

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/asn1/util/ASN1Dump;->dumpAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
