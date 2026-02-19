.class public Lcn/hutool/jwt/signers/JWTSignerUtil;
.super Ljava/lang/Object;
.source "JWTSignerUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createSigner(Ljava/lang/String;Ljava/security/Key;)Lcn/hutool/jwt/signers/JWTSigner;
    .locals 2

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Signer key must be not null!"

    .line 266
    invoke-static {p1, v1, v0}, Lcn/hutool/core/lang/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p0, :cond_3

    const-string v0, "none"

    .line 268
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 271
    :cond_0
    instance-of v0, p1, Ljava/security/PrivateKey;

    if-nez v0, :cond_2

    instance-of v0, p1, Ljava/security/PublicKey;

    if-eqz v0, :cond_1

    goto :goto_0

    .line 274
    :cond_1
    new-instance v0, Lcn/hutool/jwt/signers/HMacJWTSigner;

    invoke-static {p0}, Lcn/hutool/jwt/signers/AlgorithmUtil;->getAlgorithm(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Lcn/hutool/jwt/signers/HMacJWTSigner;-><init>(Ljava/lang/String;Ljava/security/Key;)V

    return-object v0

    .line 272
    :cond_2
    :goto_0
    new-instance v0, Lcn/hutool/jwt/signers/AsymmetricJWTSigner;

    invoke-static {p0}, Lcn/hutool/jwt/signers/AlgorithmUtil;->getAlgorithm(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Lcn/hutool/jwt/signers/AsymmetricJWTSigner;-><init>(Ljava/lang/String;Ljava/security/Key;)V

    return-object v0

    .line 269
    :cond_3
    :goto_1
    sget-object p0, Lcn/hutool/jwt/signers/NoneJWTSigner;->NONE:Lcn/hutool/jwt/signers/NoneJWTSigner;

    return-object p0
.end method

.method public static createSigner(Ljava/lang/String;Ljava/security/KeyPair;)Lcn/hutool/jwt/signers/JWTSigner;
    .locals 2

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Signer key pair must be not null!"

    .line 250
    invoke-static {p1, v1, v0}, Lcn/hutool/core/lang/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p0, :cond_1

    const-string v0, "none"

    .line 252
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 255
    :cond_0
    new-instance v0, Lcn/hutool/jwt/signers/AsymmetricJWTSigner;

    invoke-static {p0}, Lcn/hutool/jwt/signers/AlgorithmUtil;->getAlgorithm(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Lcn/hutool/jwt/signers/AsymmetricJWTSigner;-><init>(Ljava/lang/String;Ljava/security/KeyPair;)V

    return-object v0

    .line 253
    :cond_1
    :goto_0
    invoke-static {}, Lcn/hutool/jwt/signers/JWTSignerUtil;->none()Lcn/hutool/jwt/signers/JWTSigner;

    move-result-object p0

    return-object p0
.end method

.method public static createSigner(Ljava/lang/String;[B)Lcn/hutool/jwt/signers/JWTSigner;
    .locals 2

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Signer key must be not null!"

    .line 234
    invoke-static {p1, v1, v0}, Lcn/hutool/core/lang/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p0, :cond_1

    const-string v0, "none"

    .line 236
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 239
    :cond_0
    new-instance v0, Lcn/hutool/jwt/signers/HMacJWTSigner;

    invoke-static {p0}, Lcn/hutool/jwt/signers/AlgorithmUtil;->getAlgorithm(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Lcn/hutool/jwt/signers/HMacJWTSigner;-><init>(Ljava/lang/String;[B)V

    return-object v0

    .line 237
    :cond_1
    :goto_0
    invoke-static {}, Lcn/hutool/jwt/signers/JWTSignerUtil;->none()Lcn/hutool/jwt/signers/JWTSigner;

    move-result-object p0

    return-object p0
.end method

.method public static dnone(Ljava/security/Key;)Lcn/hutool/jwt/signers/JWTSigner;
    .locals 1

    const-string v0, "DNONE"

    .line 190
    invoke-static {v0, p0}, Lcn/hutool/jwt/signers/JWTSignerUtil;->createSigner(Ljava/lang/String;Ljava/security/Key;)Lcn/hutool/jwt/signers/JWTSigner;

    move-result-object p0

    return-object p0
.end method

.method public static dsha1(Ljava/security/Key;)Lcn/hutool/jwt/signers/JWTSigner;
    .locals 1

    const-string v0, "DSHA1"

    .line 200
    invoke-static {v0, p0}, Lcn/hutool/jwt/signers/JWTSignerUtil;->createSigner(Ljava/lang/String;Ljava/security/Key;)Lcn/hutool/jwt/signers/JWTSigner;

    move-result-object p0

    return-object p0
.end method

.method public static enone(Ljava/security/Key;)Lcn/hutool/jwt/signers/JWTSigner;
    .locals 1

    const-string v0, "ENONE"

    .line 210
    invoke-static {v0, p0}, Lcn/hutool/jwt/signers/JWTSignerUtil;->createSigner(Ljava/lang/String;Ljava/security/Key;)Lcn/hutool/jwt/signers/JWTSigner;

    move-result-object p0

    return-object p0
.end method

.method public static es256(Ljava/security/Key;)Lcn/hutool/jwt/signers/JWTSigner;
    .locals 1

    const-string v0, "ES256"

    .line 100
    invoke-static {v0, p0}, Lcn/hutool/jwt/signers/JWTSignerUtil;->createSigner(Ljava/lang/String;Ljava/security/Key;)Lcn/hutool/jwt/signers/JWTSigner;

    move-result-object p0

    return-object p0
.end method

.method public static es384(Ljava/security/Key;)Lcn/hutool/jwt/signers/JWTSigner;
    .locals 1

    const-string v0, "ES384"

    .line 110
    invoke-static {v0, p0}, Lcn/hutool/jwt/signers/JWTSignerUtil;->createSigner(Ljava/lang/String;Ljava/security/Key;)Lcn/hutool/jwt/signers/JWTSigner;

    move-result-object p0

    return-object p0
.end method

.method public static es512(Ljava/security/Key;)Lcn/hutool/jwt/signers/JWTSigner;
    .locals 1

    const-string v0, "ES512"

    .line 120
    invoke-static {v0, p0}, Lcn/hutool/jwt/signers/JWTSignerUtil;->createSigner(Ljava/lang/String;Ljava/security/Key;)Lcn/hutool/jwt/signers/JWTSigner;

    move-result-object p0

    return-object p0
.end method

.method public static esha1(Ljava/security/Key;)Lcn/hutool/jwt/signers/JWTSigner;
    .locals 1

    const-string v0, "ESHA1"

    .line 220
    invoke-static {v0, p0}, Lcn/hutool/jwt/signers/JWTSignerUtil;->createSigner(Ljava/lang/String;Ljava/security/Key;)Lcn/hutool/jwt/signers/JWTSigner;

    move-result-object p0

    return-object p0
.end method

.method public static hmd5(Ljava/security/Key;)Lcn/hutool/jwt/signers/JWTSigner;
    .locals 1

    const-string v0, "HMD5"

    .line 130
    invoke-static {v0, p0}, Lcn/hutool/jwt/signers/JWTSignerUtil;->createSigner(Ljava/lang/String;Ljava/security/Key;)Lcn/hutool/jwt/signers/JWTSigner;

    move-result-object p0

    return-object p0
.end method

.method public static hs256([B)Lcn/hutool/jwt/signers/JWTSigner;
    .locals 1

    const-string v0, "HS256"

    .line 36
    invoke-static {v0, p0}, Lcn/hutool/jwt/signers/JWTSignerUtil;->createSigner(Ljava/lang/String;[B)Lcn/hutool/jwt/signers/JWTSigner;

    move-result-object p0

    return-object p0
.end method

.method public static hs384([B)Lcn/hutool/jwt/signers/JWTSigner;
    .locals 1

    const-string v0, "HS384"

    .line 46
    invoke-static {v0, p0}, Lcn/hutool/jwt/signers/JWTSignerUtil;->createSigner(Ljava/lang/String;[B)Lcn/hutool/jwt/signers/JWTSigner;

    move-result-object p0

    return-object p0
.end method

.method public static hs512([B)Lcn/hutool/jwt/signers/JWTSigner;
    .locals 1

    const-string v0, "HS512"

    .line 56
    invoke-static {v0, p0}, Lcn/hutool/jwt/signers/JWTSignerUtil;->createSigner(Ljava/lang/String;[B)Lcn/hutool/jwt/signers/JWTSigner;

    move-result-object p0

    return-object p0
.end method

.method public static hsha1(Ljava/security/Key;)Lcn/hutool/jwt/signers/JWTSigner;
    .locals 1

    const-string v0, "HSHA1"

    .line 140
    invoke-static {v0, p0}, Lcn/hutool/jwt/signers/JWTSignerUtil;->createSigner(Ljava/lang/String;Ljava/security/Key;)Lcn/hutool/jwt/signers/JWTSigner;

    move-result-object p0

    return-object p0
.end method

.method public static none()Lcn/hutool/jwt/signers/JWTSigner;
    .locals 1

    .line 24
    sget-object v0, Lcn/hutool/jwt/signers/NoneJWTSigner;->NONE:Lcn/hutool/jwt/signers/NoneJWTSigner;

    return-object v0
.end method

.method public static rmd2(Ljava/security/Key;)Lcn/hutool/jwt/signers/JWTSigner;
    .locals 1

    const-string v0, "RMD2"

    .line 160
    invoke-static {v0, p0}, Lcn/hutool/jwt/signers/JWTSignerUtil;->createSigner(Ljava/lang/String;Ljava/security/Key;)Lcn/hutool/jwt/signers/JWTSigner;

    move-result-object p0

    return-object p0
.end method

.method public static rmd5(Ljava/security/Key;)Lcn/hutool/jwt/signers/JWTSigner;
    .locals 1

    const-string v0, "RMD5"

    .line 170
    invoke-static {v0, p0}, Lcn/hutool/jwt/signers/JWTSignerUtil;->createSigner(Ljava/lang/String;Ljava/security/Key;)Lcn/hutool/jwt/signers/JWTSigner;

    move-result-object p0

    return-object p0
.end method

.method public static rs256(Ljava/security/Key;)Lcn/hutool/jwt/signers/JWTSigner;
    .locals 1

    const-string v0, "RS256"

    .line 68
    invoke-static {v0, p0}, Lcn/hutool/jwt/signers/JWTSignerUtil;->createSigner(Ljava/lang/String;Ljava/security/Key;)Lcn/hutool/jwt/signers/JWTSigner;

    move-result-object p0

    return-object p0
.end method

.method public static rs384(Ljava/security/Key;)Lcn/hutool/jwt/signers/JWTSigner;
    .locals 1

    const-string v0, "RS384"

    .line 78
    invoke-static {v0, p0}, Lcn/hutool/jwt/signers/JWTSignerUtil;->createSigner(Ljava/lang/String;Ljava/security/Key;)Lcn/hutool/jwt/signers/JWTSigner;

    move-result-object p0

    return-object p0
.end method

.method public static rs512(Ljava/security/Key;)Lcn/hutool/jwt/signers/JWTSigner;
    .locals 1

    const-string v0, "RS512"

    .line 88
    invoke-static {v0, p0}, Lcn/hutool/jwt/signers/JWTSignerUtil;->createSigner(Ljava/lang/String;Ljava/security/Key;)Lcn/hutool/jwt/signers/JWTSigner;

    move-result-object p0

    return-object p0
.end method

.method public static rsha1(Ljava/security/Key;)Lcn/hutool/jwt/signers/JWTSigner;
    .locals 1

    const-string v0, "RSHA1"

    .line 180
    invoke-static {v0, p0}, Lcn/hutool/jwt/signers/JWTSignerUtil;->createSigner(Ljava/lang/String;Ljava/security/Key;)Lcn/hutool/jwt/signers/JWTSigner;

    move-result-object p0

    return-object p0
.end method

.method public static sm4cmac(Ljava/security/Key;)Lcn/hutool/jwt/signers/JWTSigner;
    .locals 1

    const-string v0, "SM4CMAC"

    .line 150
    invoke-static {v0, p0}, Lcn/hutool/jwt/signers/JWTSignerUtil;->createSigner(Ljava/lang/String;Ljava/security/Key;)Lcn/hutool/jwt/signers/JWTSigner;

    move-result-object p0

    return-object p0
.end method
