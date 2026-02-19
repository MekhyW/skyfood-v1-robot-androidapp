.class public Lcn/hutool/crypto/asymmetric/SM2;
.super Lcn/hutool/crypto/asymmetric/AbstractAsymmetricCrypto;
.source "SM2.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/hutool/crypto/asymmetric/AbstractAsymmetricCrypto<",
        "Lcn/hutool/crypto/asymmetric/SM2;",
        ">;"
    }
.end annotation


# static fields
.field private static final ALGORITHM_SM2:Ljava/lang/String; = "SM2"

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private digest:Lorg/bouncycastle/crypto/Digest;

.field private encoding:Lorg/bouncycastle/crypto/signers/DSAEncoding;

.field protected engine:Lorg/bouncycastle/crypto/engines/SM2Engine;

.field private mode:Lorg/bouncycastle/crypto/engines/SM2Engine$Mode;

.field private privateKeyParams:Lorg/bouncycastle/crypto/params/ECPrivateKeyParameters;

.field private publicKeyParams:Lorg/bouncycastle/crypto/params/ECPublicKeyParameters;

.field protected signer:Lorg/bouncycastle/crypto/signers/SM2Signer;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    .line 69
    move-object v1, v0

    check-cast v1, [B

    invoke-direct {p0, v0, v0}, Lcn/hutool/crypto/asymmetric/SM2;-><init>([B[B)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 81
    invoke-static {p1}, Lcn/hutool/crypto/SecureUtil;->decode(Ljava/lang/String;)[B

    move-result-object p1

    invoke-static {p2}, Lcn/hutool/crypto/SecureUtil;->decode(Ljava/lang/String;)[B

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcn/hutool/crypto/asymmetric/SM2;-><init>([B[B)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 128
    invoke-static {p1}, Lcn/hutool/crypto/BCUtil;->toSm2Params(Ljava/lang/String;)Lorg/bouncycastle/crypto/params/ECPrivateKeyParameters;

    move-result-object p1

    invoke-static {p2, p3}, Lcn/hutool/crypto/BCUtil;->toSm2Params(Ljava/lang/String;Ljava/lang/String;)Lorg/bouncycastle/crypto/params/ECPublicKeyParameters;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcn/hutool/crypto/asymmetric/SM2;-><init>(Lorg/bouncycastle/crypto/params/ECPrivateKeyParameters;Lorg/bouncycastle/crypto/params/ECPublicKeyParameters;)V

    return-void
.end method

.method public constructor <init>(Ljava/security/PrivateKey;Ljava/security/PublicKey;)V
    .locals 2

    .line 108
    invoke-static {p1}, Lcn/hutool/crypto/BCUtil;->toParams(Ljava/security/PrivateKey;)Lorg/bouncycastle/crypto/params/ECPrivateKeyParameters;

    move-result-object v0

    invoke-static {p2}, Lcn/hutool/crypto/BCUtil;->toParams(Ljava/security/PublicKey;)Lorg/bouncycastle/crypto/params/ECPublicKeyParameters;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcn/hutool/crypto/asymmetric/SM2;-><init>(Lorg/bouncycastle/crypto/params/ECPrivateKeyParameters;Lorg/bouncycastle/crypto/params/ECPublicKeyParameters;)V

    if-eqz p1, :cond_0

    .line 110
    iput-object p1, p0, Lcn/hutool/crypto/asymmetric/SM2;->privateKey:Ljava/security/PrivateKey;

    :cond_0
    if-eqz p2, :cond_1

    .line 113
    iput-object p2, p0, Lcn/hutool/crypto/asymmetric/SM2;->publicKey:Ljava/security/PublicKey;

    :cond_1
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/crypto/params/ECPrivateKeyParameters;Lorg/bouncycastle/crypto/params/ECPublicKeyParameters;)V
    .locals 2

    const-string v0, "SM2"

    const/4 v1, 0x0

    .line 154
    invoke-direct {p0, v0, v1, v1}, Lcn/hutool/crypto/asymmetric/AbstractAsymmetricCrypto;-><init>(Ljava/lang/String;Ljava/security/PrivateKey;Ljava/security/PublicKey;)V

    .line 59
    sget-object v0, Lorg/bouncycastle/crypto/signers/StandardDSAEncoding;->INSTANCE:Lorg/bouncycastle/crypto/signers/StandardDSAEncoding;

    iput-object v0, p0, Lcn/hutool/crypto/asymmetric/SM2;->encoding:Lorg/bouncycastle/crypto/signers/DSAEncoding;

    .line 60
    new-instance v0, Lorg/bouncycastle/crypto/digests/SM3Digest;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/digests/SM3Digest;-><init>()V

    iput-object v0, p0, Lcn/hutool/crypto/asymmetric/SM2;->digest:Lorg/bouncycastle/crypto/Digest;

    .line 61
    sget-object v0, Lorg/bouncycastle/crypto/engines/SM2Engine$Mode;->C1C3C2:Lorg/bouncycastle/crypto/engines/SM2Engine$Mode;

    iput-object v0, p0, Lcn/hutool/crypto/asymmetric/SM2;->mode:Lorg/bouncycastle/crypto/engines/SM2Engine$Mode;

    .line 155
    iput-object p1, p0, Lcn/hutool/crypto/asymmetric/SM2;->privateKeyParams:Lorg/bouncycastle/crypto/params/ECPrivateKeyParameters;

    .line 156
    iput-object p2, p0, Lcn/hutool/crypto/asymmetric/SM2;->publicKeyParams:Lorg/bouncycastle/crypto/params/ECPublicKeyParameters;

    .line 157
    invoke-virtual {p0}, Lcn/hutool/crypto/asymmetric/SM2;->init()Lcn/hutool/crypto/asymmetric/SM2;

    return-void
.end method

.method public constructor <init>([B[B)V
    .locals 0

    .line 94
    invoke-static {p1}, Lcn/hutool/crypto/ECKeyUtil;->decodePrivateKeyParams([B)Lorg/bouncycastle/crypto/params/ECPrivateKeyParameters;

    move-result-object p1

    .line 95
    invoke-static {p2}, Lcn/hutool/crypto/ECKeyUtil;->decodePublicKeyParams([B)Lorg/bouncycastle/crypto/params/ECPublicKeyParameters;

    move-result-object p2

    .line 93
    invoke-direct {p0, p1, p2}, Lcn/hutool/crypto/asymmetric/SM2;-><init>(Lorg/bouncycastle/crypto/params/ECPrivateKeyParameters;Lorg/bouncycastle/crypto/params/ECPublicKeyParameters;)V

    return-void
.end method

.method public constructor <init>([B[B[B)V
    .locals 0

    .line 142
    invoke-static {p1}, Lcn/hutool/crypto/BCUtil;->toSm2Params([B)Lorg/bouncycastle/crypto/params/ECPrivateKeyParameters;

    move-result-object p1

    invoke-static {p2, p3}, Lcn/hutool/crypto/BCUtil;->toSm2Params([B[B)Lorg/bouncycastle/crypto/params/ECPublicKeyParameters;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcn/hutool/crypto/asymmetric/SM2;-><init>(Lorg/bouncycastle/crypto/params/ECPrivateKeyParameters;Lorg/bouncycastle/crypto/params/ECPublicKeyParameters;)V

    return-void
.end method

.method private getCipherParameters(Lcn/hutool/crypto/asymmetric/KeyType;)Lorg/bouncycastle/crypto/CipherParameters;
    .locals 2

    .line 568
    sget-object v0, Lcn/hutool/crypto/asymmetric/SM2$1;->$SwitchMap$cn$hutool$crypto$asymmetric$KeyType:[I

    invoke-virtual {p1}, Lcn/hutool/crypto/asymmetric/KeyType;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 573
    :cond_0
    iget-object p1, p0, Lcn/hutool/crypto/asymmetric/SM2;->privateKeyParams:Lorg/bouncycastle/crypto/params/ECPrivateKeyParameters;

    const-string v0, "PrivateKey must be not null !"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcn/hutool/core/lang/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 574
    iget-object p1, p0, Lcn/hutool/crypto/asymmetric/SM2;->privateKeyParams:Lorg/bouncycastle/crypto/params/ECPrivateKeyParameters;

    return-object p1

    .line 570
    :cond_1
    iget-object p1, p0, Lcn/hutool/crypto/asymmetric/SM2;->publicKeyParams:Lorg/bouncycastle/crypto/params/ECPublicKeyParameters;

    const-string v0, "PublicKey must be not null !"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcn/hutool/core/lang/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 571
    iget-object p1, p0, Lcn/hutool/crypto/asymmetric/SM2;->publicKeyParams:Lorg/bouncycastle/crypto/params/ECPublicKeyParameters;

    return-object p1
.end method

.method private getEngine()Lorg/bouncycastle/crypto/engines/SM2Engine;
    .locals 3

    .line 586
    iget-object v0, p0, Lcn/hutool/crypto/asymmetric/SM2;->engine:Lorg/bouncycastle/crypto/engines/SM2Engine;

    if-nez v0, :cond_0

    .line 587
    iget-object v0, p0, Lcn/hutool/crypto/asymmetric/SM2;->digest:Lorg/bouncycastle/crypto/Digest;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "digest must be not null !"

    invoke-static {v0, v2, v1}, Lcn/hutool/core/lang/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 588
    new-instance v0, Lorg/bouncycastle/crypto/engines/SM2Engine;

    iget-object v1, p0, Lcn/hutool/crypto/asymmetric/SM2;->digest:Lorg/bouncycastle/crypto/Digest;

    iget-object v2, p0, Lcn/hutool/crypto/asymmetric/SM2;->mode:Lorg/bouncycastle/crypto/engines/SM2Engine$Mode;

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/crypto/engines/SM2Engine;-><init>(Lorg/bouncycastle/crypto/Digest;Lorg/bouncycastle/crypto/engines/SM2Engine$Mode;)V

    iput-object v0, p0, Lcn/hutool/crypto/asymmetric/SM2;->engine:Lorg/bouncycastle/crypto/engines/SM2Engine;

    .line 590
    :cond_0
    iget-object v0, p0, Lcn/hutool/crypto/asymmetric/SM2;->digest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/Digest;->reset()V

    .line 591
    iget-object v0, p0, Lcn/hutool/crypto/asymmetric/SM2;->engine:Lorg/bouncycastle/crypto/engines/SM2Engine;

    return-object v0
.end method

.method private getSigner()Lorg/bouncycastle/crypto/signers/SM2Signer;
    .locals 3

    .line 600
    iget-object v0, p0, Lcn/hutool/crypto/asymmetric/SM2;->signer:Lorg/bouncycastle/crypto/signers/SM2Signer;

    if-nez v0, :cond_0

    .line 601
    iget-object v0, p0, Lcn/hutool/crypto/asymmetric/SM2;->digest:Lorg/bouncycastle/crypto/Digest;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "digest must be not null !"

    invoke-static {v0, v2, v1}, Lcn/hutool/core/lang/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 602
    new-instance v0, Lorg/bouncycastle/crypto/signers/SM2Signer;

    iget-object v1, p0, Lcn/hutool/crypto/asymmetric/SM2;->encoding:Lorg/bouncycastle/crypto/signers/DSAEncoding;

    iget-object v2, p0, Lcn/hutool/crypto/asymmetric/SM2;->digest:Lorg/bouncycastle/crypto/Digest;

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/crypto/signers/SM2Signer;-><init>(Lorg/bouncycastle/crypto/signers/DSAEncoding;Lorg/bouncycastle/crypto/Digest;)V

    iput-object v0, p0, Lcn/hutool/crypto/asymmetric/SM2;->signer:Lorg/bouncycastle/crypto/signers/SM2Signer;

    .line 604
    :cond_0
    iget-object v0, p0, Lcn/hutool/crypto/asymmetric/SM2;->digest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/Digest;->reset()V

    .line 605
    iget-object v0, p0, Lcn/hutool/crypto/asymmetric/SM2;->signer:Lorg/bouncycastle/crypto/signers/SM2Signer;

    return-object v0
.end method


# virtual methods
.method public decrypt([B)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/hutool/crypto/CryptoException;
        }
    .end annotation

    .line 266
    sget-object v0, Lcn/hutool/crypto/asymmetric/KeyType;->PrivateKey:Lcn/hutool/crypto/asymmetric/KeyType;

    invoke-virtual {p0, p1, v0}, Lcn/hutool/crypto/asymmetric/SM2;->decrypt([BLcn/hutool/crypto/asymmetric/KeyType;)[B

    move-result-object p1

    return-object p1
.end method

.method public decrypt([BLcn/hutool/crypto/asymmetric/KeyType;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/hutool/crypto/CryptoException;
        }
    .end annotation

    .line 279
    sget-object v0, Lcn/hutool/crypto/asymmetric/KeyType;->PrivateKey:Lcn/hutool/crypto/asymmetric/KeyType;

    if-ne v0, p2, :cond_0

    .line 282
    invoke-direct {p0, p2}, Lcn/hutool/crypto/asymmetric/SM2;->getCipherParameters(Lcn/hutool/crypto/asymmetric/KeyType;)Lorg/bouncycastle/crypto/CipherParameters;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcn/hutool/crypto/asymmetric/SM2;->decrypt([BLorg/bouncycastle/crypto/CipherParameters;)[B

    move-result-object p1

    return-object p1

    .line 280
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Decrypt is only support by private key"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public decrypt([BLorg/bouncycastle/crypto/CipherParameters;)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/hutool/crypto/CryptoException;
        }
    .end annotation

    .line 295
    iget-object v0, p0, Lcn/hutool/crypto/asymmetric/SM2;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 296
    invoke-direct {p0}, Lcn/hutool/crypto/asymmetric/SM2;->getEngine()Lorg/bouncycastle/crypto/engines/SM2Engine;

    move-result-object v0

    const/4 v1, 0x0

    .line 298
    :try_start_0
    invoke-virtual {v0, v1, p2}, Lorg/bouncycastle/crypto/engines/SM2Engine;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    .line 299
    array-length p2, p1

    invoke-virtual {v0, p1, v1, p2}, Lorg/bouncycastle/crypto/engines/SM2Engine;->processBlock([BII)[B

    move-result-object p1
    :try_end_0
    .catch Lorg/bouncycastle/crypto/InvalidCipherTextException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 303
    iget-object p2, p0, Lcn/hutool/crypto/asymmetric/SM2;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 301
    :try_start_1
    new-instance p2, Lcn/hutool/crypto/CryptoException;

    invoke-direct {p2, p1}, Lcn/hutool/crypto/CryptoException;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 303
    :goto_0
    iget-object p2, p0, Lcn/hutool/crypto/asymmetric/SM2;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 304
    throw p1
.end method

.method public encrypt([B)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/hutool/crypto/CryptoException;
        }
    .end annotation

    .line 202
    sget-object v0, Lcn/hutool/crypto/asymmetric/KeyType;->PublicKey:Lcn/hutool/crypto/asymmetric/KeyType;

    invoke-virtual {p0, p1, v0}, Lcn/hutool/crypto/asymmetric/SM2;->encrypt([BLcn/hutool/crypto/asymmetric/KeyType;)[B

    move-result-object p1

    return-object p1
.end method

.method public encrypt([BLcn/hutool/crypto/asymmetric/KeyType;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/hutool/crypto/CryptoException;
        }
    .end annotation

    .line 221
    sget-object v0, Lcn/hutool/crypto/asymmetric/KeyType;->PublicKey:Lcn/hutool/crypto/asymmetric/KeyType;

    if-ne v0, p2, :cond_0

    .line 224
    new-instance v0, Lorg/bouncycastle/crypto/params/ParametersWithRandom;

    invoke-direct {p0, p2}, Lcn/hutool/crypto/asymmetric/SM2;->getCipherParameters(Lcn/hutool/crypto/asymmetric/KeyType;)Lorg/bouncycastle/crypto/CipherParameters;

    move-result-object p2

    invoke-direct {v0, p2}, Lorg/bouncycastle/crypto/params/ParametersWithRandom;-><init>(Lorg/bouncycastle/crypto/CipherParameters;)V

    invoke-virtual {p0, p1, v0}, Lcn/hutool/crypto/asymmetric/SM2;->encrypt([BLorg/bouncycastle/crypto/CipherParameters;)[B

    move-result-object p1

    return-object p1

    .line 222
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Encrypt is only support by public key"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public encrypt([BLorg/bouncycastle/crypto/CipherParameters;)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/hutool/crypto/CryptoException;
        }
    .end annotation

    .line 243
    iget-object v0, p0, Lcn/hutool/crypto/asymmetric/SM2;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 244
    invoke-direct {p0}, Lcn/hutool/crypto/asymmetric/SM2;->getEngine()Lorg/bouncycastle/crypto/engines/SM2Engine;

    move-result-object v0

    const/4 v1, 0x1

    .line 246
    :try_start_0
    invoke-virtual {v0, v1, p2}, Lorg/bouncycastle/crypto/engines/SM2Engine;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    .line 247
    array-length p2, p1

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p2}, Lorg/bouncycastle/crypto/engines/SM2Engine;->processBlock([BII)[B

    move-result-object p1
    :try_end_0
    .catch Lorg/bouncycastle/crypto/InvalidCipherTextException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 251
    iget-object p2, p0, Lcn/hutool/crypto/asymmetric/SM2;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 249
    :try_start_1
    new-instance p2, Lcn/hutool/crypto/CryptoException;

    invoke-direct {p2, p1}, Lcn/hutool/crypto/CryptoException;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 251
    :goto_0
    iget-object p2, p0, Lcn/hutool/crypto/asymmetric/SM2;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 252
    throw p1
.end method

.method public getD()[B
    .locals 2

    const/16 v0, 0x20

    .line 525
    invoke-virtual {p0}, Lcn/hutool/crypto/asymmetric/SM2;->getDBigInteger()Ljava/math/BigInteger;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/bouncycastle/util/BigIntegers;->asUnsignedByteArray(ILjava/math/BigInteger;)[B

    move-result-object v0

    return-object v0
.end method

.method public getDBigInteger()Ljava/math/BigInteger;
    .locals 1

    .line 545
    iget-object v0, p0, Lcn/hutool/crypto/asymmetric/SM2;->privateKeyParams:Lorg/bouncycastle/crypto/params/ECPrivateKeyParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/ECPrivateKeyParameters;->getD()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public getDHex()Ljava/lang/String;
    .locals 2

    .line 535
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0}, Lcn/hutool/crypto/asymmetric/SM2;->getD()[B

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/util/encoders/Hex;->encode([B)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public getQ(Z)[B
    .locals 1

    .line 556
    iget-object v0, p0, Lcn/hutool/crypto/asymmetric/SM2;->publicKeyParams:Lorg/bouncycastle/crypto/params/ECPublicKeyParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/ECPublicKeyParameters;->getQ()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/bouncycastle/math/ec/ECPoint;->getEncoded(Z)[B

    move-result-object p1

    return-object p1
.end method

.method public init()Lcn/hutool/crypto/asymmetric/SM2;
    .locals 1

    .line 170
    iget-object v0, p0, Lcn/hutool/crypto/asymmetric/SM2;->privateKeyParams:Lorg/bouncycastle/crypto/params/ECPrivateKeyParameters;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcn/hutool/crypto/asymmetric/SM2;->publicKeyParams:Lorg/bouncycastle/crypto/params/ECPublicKeyParameters;

    if-nez v0, :cond_0

    .line 171
    invoke-super {p0}, Lcn/hutool/crypto/asymmetric/AbstractAsymmetricCrypto;->initKeys()Lcn/hutool/crypto/asymmetric/BaseAsymmetric;

    .line 172
    iget-object v0, p0, Lcn/hutool/crypto/asymmetric/SM2;->privateKey:Ljava/security/PrivateKey;

    invoke-static {v0}, Lcn/hutool/crypto/BCUtil;->toParams(Ljava/security/PrivateKey;)Lorg/bouncycastle/crypto/params/ECPrivateKeyParameters;

    move-result-object v0

    iput-object v0, p0, Lcn/hutool/crypto/asymmetric/SM2;->privateKeyParams:Lorg/bouncycastle/crypto/params/ECPrivateKeyParameters;

    .line 173
    iget-object v0, p0, Lcn/hutool/crypto/asymmetric/SM2;->publicKey:Ljava/security/PublicKey;

    invoke-static {v0}, Lcn/hutool/crypto/BCUtil;->toParams(Ljava/security/PublicKey;)Lorg/bouncycastle/crypto/params/ECPublicKeyParameters;

    move-result-object v0

    iput-object v0, p0, Lcn/hutool/crypto/asymmetric/SM2;->publicKeyParams:Lorg/bouncycastle/crypto/params/ECPublicKeyParameters;

    :cond_0
    return-object p0
.end method

.method public bridge synthetic initKeys()Lcn/hutool/crypto/asymmetric/BaseAsymmetric;
    .locals 1

    .line 45
    invoke-virtual {p0}, Lcn/hutool/crypto/asymmetric/SM2;->initKeys()Lcn/hutool/crypto/asymmetric/SM2;

    move-result-object v0

    return-object v0
.end method

.method public initKeys()Lcn/hutool/crypto/asymmetric/SM2;
    .locals 0

    return-object p0
.end method

.method public setDigest(Lorg/bouncycastle/crypto/Digest;)Lcn/hutool/crypto/asymmetric/SM2;
    .locals 0

    .line 500
    iput-object p1, p0, Lcn/hutool/crypto/asymmetric/SM2;->digest:Lorg/bouncycastle/crypto/Digest;

    const/4 p1, 0x0

    .line 501
    iput-object p1, p0, Lcn/hutool/crypto/asymmetric/SM2;->engine:Lorg/bouncycastle/crypto/engines/SM2Engine;

    .line 502
    iput-object p1, p0, Lcn/hutool/crypto/asymmetric/SM2;->signer:Lorg/bouncycastle/crypto/signers/SM2Signer;

    return-object p0
.end method

.method public setEncoding(Lorg/bouncycastle/crypto/signers/DSAEncoding;)Lcn/hutool/crypto/asymmetric/SM2;
    .locals 0

    .line 487
    iput-object p1, p0, Lcn/hutool/crypto/asymmetric/SM2;->encoding:Lorg/bouncycastle/crypto/signers/DSAEncoding;

    const/4 p1, 0x0

    .line 488
    iput-object p1, p0, Lcn/hutool/crypto/asymmetric/SM2;->signer:Lorg/bouncycastle/crypto/signers/SM2Signer;

    return-object p0
.end method

.method public setMode(Lorg/bouncycastle/crypto/engines/SM2Engine$Mode;)Lcn/hutool/crypto/asymmetric/SM2;
    .locals 0

    .line 513
    iput-object p1, p0, Lcn/hutool/crypto/asymmetric/SM2;->mode:Lorg/bouncycastle/crypto/engines/SM2Engine$Mode;

    const/4 p1, 0x0

    .line 514
    iput-object p1, p0, Lcn/hutool/crypto/asymmetric/SM2;->engine:Lorg/bouncycastle/crypto/engines/SM2Engine;

    return-object p0
.end method

.method public bridge synthetic setPrivateKey(Ljava/security/PrivateKey;)Lcn/hutool/crypto/asymmetric/BaseAsymmetric;
    .locals 0

    .line 45
    invoke-virtual {p0, p1}, Lcn/hutool/crypto/asymmetric/SM2;->setPrivateKey(Ljava/security/PrivateKey;)Lcn/hutool/crypto/asymmetric/SM2;

    move-result-object p1

    return-object p1
.end method

.method public setPrivateKey(Ljava/security/PrivateKey;)Lcn/hutool/crypto/asymmetric/SM2;
    .locals 0

    .line 428
    invoke-super {p0, p1}, Lcn/hutool/crypto/asymmetric/AbstractAsymmetricCrypto;->setPrivateKey(Ljava/security/PrivateKey;)Lcn/hutool/crypto/asymmetric/BaseAsymmetric;

    .line 431
    invoke-static {p1}, Lcn/hutool/crypto/BCUtil;->toParams(Ljava/security/PrivateKey;)Lorg/bouncycastle/crypto/params/ECPrivateKeyParameters;

    move-result-object p1

    iput-object p1, p0, Lcn/hutool/crypto/asymmetric/SM2;->privateKeyParams:Lorg/bouncycastle/crypto/params/ECPrivateKeyParameters;

    return-object p0
.end method

.method public setPrivateKeyParams(Lorg/bouncycastle/crypto/params/ECPrivateKeyParameters;)Lcn/hutool/crypto/asymmetric/SM2;
    .locals 0

    .line 444
    iput-object p1, p0, Lcn/hutool/crypto/asymmetric/SM2;->privateKeyParams:Lorg/bouncycastle/crypto/params/ECPrivateKeyParameters;

    return-object p0
.end method

.method public bridge synthetic setPublicKey(Ljava/security/PublicKey;)Lcn/hutool/crypto/asymmetric/BaseAsymmetric;
    .locals 0

    .line 45
    invoke-virtual {p0, p1}, Lcn/hutool/crypto/asymmetric/SM2;->setPublicKey(Ljava/security/PublicKey;)Lcn/hutool/crypto/asymmetric/SM2;

    move-result-object p1

    return-object p1
.end method

.method public setPublicKey(Ljava/security/PublicKey;)Lcn/hutool/crypto/asymmetric/SM2;
    .locals 0

    .line 450
    invoke-super {p0, p1}, Lcn/hutool/crypto/asymmetric/AbstractAsymmetricCrypto;->setPublicKey(Ljava/security/PublicKey;)Lcn/hutool/crypto/asymmetric/BaseAsymmetric;

    .line 453
    invoke-static {p1}, Lcn/hutool/crypto/BCUtil;->toParams(Ljava/security/PublicKey;)Lorg/bouncycastle/crypto/params/ECPublicKeyParameters;

    move-result-object p1

    iput-object p1, p0, Lcn/hutool/crypto/asymmetric/SM2;->publicKeyParams:Lorg/bouncycastle/crypto/params/ECPublicKeyParameters;

    return-object p0
.end method

.method public setPublicKeyParams(Lorg/bouncycastle/crypto/params/ECPublicKeyParameters;)Lcn/hutool/crypto/asymmetric/SM2;
    .locals 0

    .line 465
    iput-object p1, p0, Lcn/hutool/crypto/asymmetric/SM2;->publicKeyParams:Lorg/bouncycastle/crypto/params/ECPublicKeyParameters;

    return-object p0
.end method

.method public sign([B)[B
    .locals 1

    const/4 v0, 0x0

    .line 326
    invoke-virtual {p0, p1, v0}, Lcn/hutool/crypto/asymmetric/SM2;->sign([B[B)[B

    move-result-object p1

    return-object p1
.end method

.method public sign([B[B)[B
    .locals 3

    .line 349
    iget-object v0, p0, Lcn/hutool/crypto/asymmetric/SM2;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 350
    invoke-direct {p0}, Lcn/hutool/crypto/asymmetric/SM2;->getSigner()Lorg/bouncycastle/crypto/signers/SM2Signer;

    move-result-object v0

    .line 352
    :try_start_0
    new-instance v1, Lorg/bouncycastle/crypto/params/ParametersWithRandom;

    sget-object v2, Lcn/hutool/crypto/asymmetric/KeyType;->PrivateKey:Lcn/hutool/crypto/asymmetric/KeyType;

    invoke-direct {p0, v2}, Lcn/hutool/crypto/asymmetric/SM2;->getCipherParameters(Lcn/hutool/crypto/asymmetric/KeyType;)Lorg/bouncycastle/crypto/CipherParameters;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/bouncycastle/crypto/params/ParametersWithRandom;-><init>(Lorg/bouncycastle/crypto/CipherParameters;)V

    if-eqz p2, :cond_0

    .line 354
    new-instance v2, Lorg/bouncycastle/crypto/params/ParametersWithID;

    invoke-direct {v2, v1, p2}, Lorg/bouncycastle/crypto/params/ParametersWithID;-><init>(Lorg/bouncycastle/crypto/CipherParameters;[B)V

    move-object v1, v2

    :cond_0
    const/4 p2, 0x1

    .line 356
    invoke-virtual {v0, p2, v1}, Lorg/bouncycastle/crypto/signers/SM2Signer;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    .line 357
    array-length p2, p1

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p2}, Lorg/bouncycastle/crypto/signers/SM2Signer;->update([BII)V

    .line 358
    invoke-virtual {v0}, Lorg/bouncycastle/crypto/signers/SM2Signer;->generateSignature()[B

    move-result-object p1
    :try_end_0
    .catch Lorg/bouncycastle/crypto/CryptoException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 362
    iget-object p2, p0, Lcn/hutool/crypto/asymmetric/SM2;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 360
    :try_start_1
    new-instance p2, Lcn/hutool/crypto/CryptoException;

    invoke-direct {p2, p1}, Lcn/hutool/crypto/CryptoException;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 362
    :goto_0
    iget-object p2, p0, Lcn/hutool/crypto/asymmetric/SM2;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 363
    throw p1
.end method

.method public signHex(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 315
    invoke-virtual {p0, p1, v0}, Lcn/hutool/crypto/asymmetric/SM2;->signHex(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public signHex(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 337
    invoke-static {p1}, Lcn/hutool/core/util/HexUtil;->decodeHex(Ljava/lang/String;)[B

    move-result-object p1

    invoke-static {p2}, Lcn/hutool/core/util/HexUtil;->decodeHex(Ljava/lang/String;)[B

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcn/hutool/crypto/asymmetric/SM2;->sign([B[B)[B

    move-result-object p1

    invoke-static {p1}, Lcn/hutool/core/util/HexUtil;->encodeHexStr([B)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public usePlainEncoding()Lcn/hutool/crypto/asymmetric/SM2;
    .locals 1

    .line 476
    sget-object v0, Lorg/bouncycastle/crypto/signers/PlainDSAEncoding;->INSTANCE:Lorg/bouncycastle/crypto/signers/PlainDSAEncoding;

    invoke-virtual {p0, v0}, Lcn/hutool/crypto/asymmetric/SM2;->setEncoding(Lorg/bouncycastle/crypto/signers/DSAEncoding;)Lcn/hutool/crypto/asymmetric/SM2;

    move-result-object v0

    return-object v0
.end method

.method public verify([B[B)Z
    .locals 1

    const/4 v0, 0x0

    .line 386
    invoke-virtual {p0, p1, p2, v0}, Lcn/hutool/crypto/asymmetric/SM2;->verify([B[B[B)Z

    move-result p1

    return p1
.end method

.method public verify([B[B[B)Z
    .locals 3

    .line 411
    iget-object v0, p0, Lcn/hutool/crypto/asymmetric/SM2;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 412
    invoke-direct {p0}, Lcn/hutool/crypto/asymmetric/SM2;->getSigner()Lorg/bouncycastle/crypto/signers/SM2Signer;

    move-result-object v0

    .line 414
    :try_start_0
    sget-object v1, Lcn/hutool/crypto/asymmetric/KeyType;->PublicKey:Lcn/hutool/crypto/asymmetric/KeyType;

    invoke-direct {p0, v1}, Lcn/hutool/crypto/asymmetric/SM2;->getCipherParameters(Lcn/hutool/crypto/asymmetric/KeyType;)Lorg/bouncycastle/crypto/CipherParameters;

    move-result-object v1

    if-eqz p3, :cond_0

    .line 416
    new-instance v2, Lorg/bouncycastle/crypto/params/ParametersWithID;

    invoke-direct {v2, v1, p3}, Lorg/bouncycastle/crypto/params/ParametersWithID;-><init>(Lorg/bouncycastle/crypto/CipherParameters;[B)V

    move-object v1, v2

    :cond_0
    const/4 p3, 0x0

    .line 418
    invoke-virtual {v0, p3, v1}, Lorg/bouncycastle/crypto/signers/SM2Signer;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    .line 419
    array-length v1, p1

    invoke-virtual {v0, p1, p3, v1}, Lorg/bouncycastle/crypto/signers/SM2Signer;->update([BII)V

    .line 420
    invoke-virtual {v0, p2}, Lorg/bouncycastle/crypto/signers/SM2Signer;->verifySignature([B)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 422
    iget-object p2, p0, Lcn/hutool/crypto/asymmetric/SM2;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return p1

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lcn/hutool/crypto/asymmetric/SM2;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 423
    throw p1
.end method

.method public verifyHex(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    .line 375
    invoke-virtual {p0, p1, p2, v0}, Lcn/hutool/crypto/asymmetric/SM2;->verifyHex(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public verifyHex(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 399
    invoke-static {p1}, Lcn/hutool/core/util/HexUtil;->decodeHex(Ljava/lang/String;)[B

    move-result-object p1

    invoke-static {p2}, Lcn/hutool/core/util/HexUtil;->decodeHex(Ljava/lang/String;)[B

    move-result-object p2

    invoke-static {p3}, Lcn/hutool/core/util/HexUtil;->decodeHex(Ljava/lang/String;)[B

    move-result-object p3

    invoke-virtual {p0, p1, p2, p3}, Lcn/hutool/crypto/asymmetric/SM2;->verify([B[B[B)Z

    move-result p1

    return p1
.end method
