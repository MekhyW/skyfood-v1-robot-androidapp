.class public Lcn/hutool/jwt/signers/AsymmetricJWTSigner;
.super Ljava/lang/Object;
.source "AsymmetricJWTSigner.java"

# interfaces
.implements Lcn/hutool/jwt/signers/JWTSigner;


# instance fields
.field private charset:Ljava/nio/charset/Charset;

.field private final sign:Lcn/hutool/crypto/asymmetric/Sign;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/security/Key;)V
    .locals 3

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    sget-object v0, Lcn/hutool/core/util/CharsetUtil;->CHARSET_UTF_8:Ljava/nio/charset/Charset;

    iput-object v0, p0, Lcn/hutool/jwt/signers/AsymmetricJWTSigner;->charset:Ljava/nio/charset/Charset;

    .line 32
    instance-of v0, p2, Ljava/security/PublicKey;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Ljava/security/PublicKey;

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 33
    :goto_0
    instance-of v2, p2, Ljava/security/PrivateKey;

    if-eqz v2, :cond_1

    move-object v1, p2

    check-cast v1, Ljava/security/PrivateKey;

    .line 34
    :cond_1
    new-instance p2, Lcn/hutool/crypto/asymmetric/Sign;

    invoke-direct {p2, p1, v1, v0}, Lcn/hutool/crypto/asymmetric/Sign;-><init>(Ljava/lang/String;Ljava/security/PrivateKey;Ljava/security/PublicKey;)V

    iput-object p2, p0, Lcn/hutool/jwt/signers/AsymmetricJWTSigner;->sign:Lcn/hutool/crypto/asymmetric/Sign;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/security/KeyPair;)V
    .locals 1

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    sget-object v0, Lcn/hutool/core/util/CharsetUtil;->CHARSET_UTF_8:Ljava/nio/charset/Charset;

    iput-object v0, p0, Lcn/hutool/jwt/signers/AsymmetricJWTSigner;->charset:Ljava/nio/charset/Charset;

    .line 44
    new-instance v0, Lcn/hutool/crypto/asymmetric/Sign;

    invoke-direct {v0, p1, p2}, Lcn/hutool/crypto/asymmetric/Sign;-><init>(Ljava/lang/String;Ljava/security/KeyPair;)V

    iput-object v0, p0, Lcn/hutool/jwt/signers/AsymmetricJWTSigner;->sign:Lcn/hutool/crypto/asymmetric/Sign;

    return-void
.end method


# virtual methods
.method public getAlgorithm()Ljava/lang/String;
    .locals 1

    .line 72
    iget-object v0, p0, Lcn/hutool/jwt/signers/AsymmetricJWTSigner;->sign:Lcn/hutool/crypto/asymmetric/Sign;

    invoke-virtual {v0}, Lcn/hutool/crypto/asymmetric/Sign;->getSignature()Ljava/security/Signature;

    move-result-object v0

    invoke-virtual {v0}, Ljava/security/Signature;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setCharset(Ljava/nio/charset/Charset;)Lcn/hutool/jwt/signers/AsymmetricJWTSigner;
    .locals 0

    .line 54
    iput-object p1, p0, Lcn/hutool/jwt/signers/AsymmetricJWTSigner;->charset:Ljava/nio/charset/Charset;

    return-object p0
.end method

.method public sign(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 60
    iget-object v0, p0, Lcn/hutool/jwt/signers/AsymmetricJWTSigner;->sign:Lcn/hutool/crypto/asymmetric/Sign;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x1

    aput-object p2, v1, p1

    const-string p1, "{}.{}"

    invoke-static {p1, v1}, Lcn/hutool/core/util/StrUtil;->format(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcn/hutool/crypto/asymmetric/Sign;->sign(Ljava/lang/String;)[B

    move-result-object p1

    invoke-static {p1}, Lcn/hutool/core/codec/Base64;->encodeUrlSafe([B)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public verify(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    .line 65
    iget-object v0, p0, Lcn/hutool/jwt/signers/AsymmetricJWTSigner;->sign:Lcn/hutool/crypto/asymmetric/Sign;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x1

    aput-object p2, v1, p1

    const-string p1, "{}.{}"

    .line 66
    invoke-static {p1, v1}, Lcn/hutool/core/util/StrUtil;->format(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcn/hutool/jwt/signers/AsymmetricJWTSigner;->charset:Ljava/nio/charset/Charset;

    invoke-static {p1, p2}, Lcn/hutool/core/util/StrUtil;->bytes(Ljava/lang/CharSequence;Ljava/nio/charset/Charset;)[B

    move-result-object p1

    .line 67
    invoke-static {p3}, Lcn/hutool/core/codec/Base64;->decode(Ljava/lang/CharSequence;)[B

    move-result-object p2

    .line 65
    invoke-virtual {v0, p1, p2}, Lcn/hutool/crypto/asymmetric/Sign;->verify([B[B)Z

    move-result p1

    return p1
.end method
