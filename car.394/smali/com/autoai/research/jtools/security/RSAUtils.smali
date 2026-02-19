.class public final Lcom/autoai/research/jtools/security/RSAUtils;
.super Ljava/lang/Object;
.source "RSAUtils.java"


# static fields
.field public static final KEY_ALGORITHM:Ljava/lang/String; = "RSA"

.field private static final MAX_DECRYPT_BLOCK:I = 0x80

.field private static final MAX_ENCRYPT_BLOCK:I = 0x75

.field private static final SIGN_ALGORITHM:Ljava/lang/String; = "SHA1WithRSA"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decrypt(Ljava/lang/String;Ljava/lang/String;)[B
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 99
    invoke-static {p0}, Lcom/autoai/research/jtools/security/Base64Utils;->decode(Ljava/lang/String;)[B

    move-result-object p0

    invoke-static {p1}, Lcom/autoai/research/jtools/security/Base64Utils;->decode(Ljava/lang/String;)[B

    move-result-object p1

    invoke-static {p0, p1}, Lcom/autoai/research/jtools/security/RSAUtils;->decrypt([B[B)[B

    move-result-object p0

    return-object p0
.end method

.method public static decrypt([B[B)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    .line 111
    invoke-static {p0, p1, v0}, Lcom/autoai/research/jtools/security/RSAUtils;->encryptOrDecrypt([B[BZ)[B

    move-result-object p0

    return-object p0
.end method

.method public static encrypt(Ljava/lang/String;Ljava/lang/String;)[B
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 123
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-static {p1}, Lcom/autoai/research/jtools/security/Base64Utils;->decode(Ljava/lang/String;)[B

    move-result-object p1

    invoke-static {p0, p1}, Lcom/autoai/research/jtools/security/RSAUtils;->encrypt([B[B)[B

    move-result-object p0

    return-object p0
.end method

.method public static encrypt([B[B)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x1

    .line 135
    invoke-static {p0, p1, v0}, Lcom/autoai/research/jtools/security/RSAUtils;->encryptOrDecrypt([B[BZ)[B

    move-result-object p0

    return-object p0
.end method

.method private static encryptOrDecrypt([B[BZ)[B
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidKeySpecException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljavax/crypto/NoSuchPaddingException;,
            Ljava/security/InvalidKeyException;,
            Ljavax/crypto/BadPaddingException;,
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 139
    invoke-static {p1, p2}, Lcom/autoai/research/jtools/security/RSAUtils;->getKey([BZ)Ljava/security/Key;

    move-result-object p1

    const-string v0, "RSA/ECB/PKCS1Padding"

    .line 141
    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz p2, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    const/4 v2, 0x2

    :goto_0
    if-eqz p2, :cond_1

    const/16 p2, 0x75

    goto :goto_1

    :cond_1
    const/16 p2, 0x80

    .line 144
    :goto_1
    invoke-virtual {v0, v2, p1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 145
    array-length p1, p0

    .line 146
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    :goto_2
    sub-int v6, p1, v4

    if-lez v6, :cond_3

    if-le v6, p2, :cond_2

    .line 153
    invoke-virtual {v0, p0, v4, p2}, Ljavax/crypto/Cipher;->doFinal([BII)[B

    move-result-object v4

    goto :goto_3

    .line 155
    :cond_2
    invoke-virtual {v0, p0, v4, v6}, Ljavax/crypto/Cipher;->doFinal([BII)[B

    move-result-object v4

    .line 157
    :goto_3
    array-length v6, v4

    invoke-virtual {v2, v4, v3, v6}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    add-int/2addr v5, v1

    mul-int v4, v5, p2

    goto :goto_2

    .line 161
    :cond_3
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    .line 162
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V

    return-object p0
.end method

.method public static genKeyPair()[Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "RSA"

    .line 75
    invoke-static {v1}, Ljava/security/KeyPairGenerator;->getInstance(Ljava/lang/String;)Ljava/security/KeyPairGenerator;

    move-result-object v1

    .line 77
    new-instance v2, Ljava/security/SecureRandom;

    invoke-direct {v2}, Ljava/security/SecureRandom;-><init>()V

    const/16 v3, 0x400

    invoke-virtual {v1, v3, v2}, Ljava/security/KeyPairGenerator;->initialize(ILjava/security/SecureRandom;)V

    .line 79
    invoke-virtual {v1}, Ljava/security/KeyPairGenerator;->generateKeyPair()Ljava/security/KeyPair;

    move-result-object v1

    .line 81
    invoke-virtual {v1}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    move-result-object v2

    check-cast v2, Ljava/security/interfaces/RSAPrivateKey;

    .line 83
    invoke-virtual {v1}, Ljava/security/KeyPair;->getPublic()Ljava/security/PublicKey;

    move-result-object v1

    check-cast v1, Ljava/security/interfaces/RSAPublicKey;

    .line 85
    invoke-interface {v1}, Ljava/security/interfaces/RSAPublicKey;->getEncoded()[B

    move-result-object v1

    invoke-static {v1}, Lcom/autoai/research/jtools/security/Base64Utils;->encodeToString([B)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    aput-object v1, v0, v3

    .line 86
    invoke-interface {v2}, Ljava/security/interfaces/RSAPrivateKey;->getEncoded()[B

    move-result-object v1

    invoke-static {v1}, Lcom/autoai/research/jtools/security/Base64Utils;->encodeToString([B)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    return-object v0
.end method

.method private static getKey([BZ)Ljava/security/Key;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    const-string v0, "RSA"

    .line 56
    invoke-static {v0}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v0

    if-eqz p1, :cond_0

    .line 58
    new-instance p1, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {p1, p0}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    .line 59
    invoke-virtual {v0, p1}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object p0

    return-object p0

    .line 61
    :cond_0
    new-instance p1, Ljava/security/spec/PKCS8EncodedKeySpec;

    invoke-direct {p1, p0}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    .line 62
    invoke-virtual {v0, p1}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object p0

    return-object p0
.end method

.method public static signByPrivateKey(Ljava/lang/String;Ljava/lang/String;)[B
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 194
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-static {p1}, Lcom/autoai/research/jtools/security/Base64Utils;->decode(Ljava/lang/String;)[B

    move-result-object p1

    invoke-static {p0, p1}, Lcom/autoai/research/jtools/security/RSAUtils;->signByPrivateKey([B[B)[B

    move-result-object p0

    return-object p0
.end method

.method public static signByPrivateKey([B[B)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    .line 177
    invoke-static {p1, v0}, Lcom/autoai/research/jtools/security/RSAUtils;->getKey([BZ)Ljava/security/Key;

    move-result-object p1

    check-cast p1, Ljava/security/PrivateKey;

    const-string v0, "SHA1WithRSA"

    .line 178
    invoke-static {v0}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v0

    .line 179
    invoke-virtual {v0, p1}, Ljava/security/Signature;->initSign(Ljava/security/PrivateKey;)V

    .line 180
    invoke-virtual {v0, p0}, Ljava/security/Signature;->update([B)V

    .line 181
    invoke-virtual {v0}, Ljava/security/Signature;->sign()[B

    move-result-object p0

    return-object p0
.end method
