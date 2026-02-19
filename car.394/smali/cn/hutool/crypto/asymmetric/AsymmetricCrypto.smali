.class public Lcn/hutool/crypto/asymmetric/AsymmetricCrypto;
.super Lcn/hutool/crypto/asymmetric/AbstractAsymmetricCrypto;
.source "AsymmetricCrypto.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/hutool/crypto/asymmetric/AbstractAsymmetricCrypto<",
        "Lcn/hutool/crypto/asymmetric/AsymmetricCrypto;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field protected cipherWrapper:Lcn/hutool/crypto/CipherWrapper;

.field protected decryptBlockSize:I

.field protected encryptBlockSize:I


# direct methods
.method public constructor <init>(Lcn/hutool/crypto/asymmetric/AsymmetricAlgorithm;)V
    .locals 2

    const/4 v0, 0x0

    .line 61
    move-object v1, v0

    check-cast v1, [B

    invoke-direct {p0, p1, v0, v0}, Lcn/hutool/crypto/asymmetric/AsymmetricCrypto;-><init>(Lcn/hutool/crypto/asymmetric/AsymmetricAlgorithm;[B[B)V

    return-void
.end method

.method public constructor <init>(Lcn/hutool/crypto/asymmetric/AsymmetricAlgorithm;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 83
    invoke-virtual {p1}, Lcn/hutool/crypto/asymmetric/AsymmetricAlgorithm;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2}, Lcn/hutool/crypto/SecureUtil;->decode(Ljava/lang/String;)[B

    move-result-object p2

    invoke-static {p3}, Lcn/hutool/crypto/SecureUtil;->decode(Ljava/lang/String;)[B

    move-result-object p3

    invoke-direct {p0, p1, p2, p3}, Lcn/hutool/crypto/asymmetric/AsymmetricCrypto;-><init>(Ljava/lang/String;[B[B)V

    return-void
.end method

.method public constructor <init>(Lcn/hutool/crypto/asymmetric/AsymmetricAlgorithm;Ljava/security/PrivateKey;Ljava/security/PublicKey;)V
    .locals 0

    .line 108
    invoke-virtual {p1}, Lcn/hutool/crypto/asymmetric/AsymmetricAlgorithm;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, p2, p3}, Lcn/hutool/crypto/asymmetric/AsymmetricCrypto;-><init>(Ljava/lang/String;Ljava/security/PrivateKey;Ljava/security/PublicKey;)V

    return-void
.end method

.method public constructor <init>(Lcn/hutool/crypto/asymmetric/AsymmetricAlgorithm;[B[B)V
    .locals 0

    .line 95
    invoke-virtual {p1}, Lcn/hutool/crypto/asymmetric/AsymmetricAlgorithm;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, p2, p3}, Lcn/hutool/crypto/asymmetric/AsymmetricCrypto;-><init>(Ljava/lang/String;[B[B)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    .line 71
    move-object v1, v0

    check-cast v1, [B

    invoke-direct {p0, p1, v0, v0}, Lcn/hutool/crypto/asymmetric/AsymmetricCrypto;-><init>(Ljava/lang/String;[B[B)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 120
    invoke-static {p2}, Lcn/hutool/core/codec/Base64;->decode(Ljava/lang/CharSequence;)[B

    move-result-object p2

    invoke-static {p3}, Lcn/hutool/core/codec/Base64;->decode(Ljava/lang/CharSequence;)[B

    move-result-object p3

    invoke-direct {p0, p1, p2, p3}, Lcn/hutool/crypto/asymmetric/AsymmetricCrypto;-><init>(Ljava/lang/String;[B[B)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/security/PrivateKey;Ljava/security/PublicKey;)V
    .locals 0

    .line 152
    invoke-direct {p0, p1, p2, p3}, Lcn/hutool/crypto/asymmetric/AbstractAsymmetricCrypto;-><init>(Ljava/lang/String;Ljava/security/PrivateKey;Ljava/security/PublicKey;)V

    const/4 p1, -0x1

    .line 47
    iput p1, p0, Lcn/hutool/crypto/asymmetric/AsymmetricCrypto;->encryptBlockSize:I

    .line 51
    iput p1, p0, Lcn/hutool/crypto/asymmetric/AsymmetricCrypto;->decryptBlockSize:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[B[B)V
    .locals 0

    .line 135
    invoke-static {p1, p2}, Lcn/hutool/crypto/KeyUtil;->generatePrivateKey(Ljava/lang/String;[B)Ljava/security/PrivateKey;

    move-result-object p2

    .line 136
    invoke-static {p1, p3}, Lcn/hutool/crypto/KeyUtil;->generatePublicKey(Ljava/lang/String;[B)Ljava/security/PublicKey;

    move-result-object p3

    .line 134
    invoke-direct {p0, p1, p2, p3}, Lcn/hutool/crypto/asymmetric/AsymmetricCrypto;-><init>(Ljava/lang/String;Ljava/security/PrivateKey;Ljava/security/PublicKey;)V

    return-void
.end method

.method private doFinal([BI)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 316
    array-length v0, p1

    if-gt v0, p2, :cond_0

    .line 320
    invoke-virtual {p0}, Lcn/hutool/crypto/asymmetric/AsymmetricCrypto;->getCipher()Ljavax/crypto/Cipher;

    move-result-object p2

    const/4 v1, 0x0

    invoke-virtual {p2, p1, v1, v0}, Ljavax/crypto/Cipher;->doFinal([BII)[B

    move-result-object p1

    return-object p1

    .line 324
    :cond_0
    invoke-direct {p0, p1, p2}, Lcn/hutool/crypto/asymmetric/AsymmetricCrypto;->doFinalWithBlock([BI)[B

    move-result-object p1

    return-object p1
.end method

.method private doFinalWithBlock([BI)[B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 338
    array-length v0, p1

    .line 339
    new-instance v1, Lcn/hutool/core/io/FastByteArrayOutputStream;

    invoke-direct {v1}, Lcn/hutool/core/io/FastByteArrayOutputStream;-><init>()V

    const/4 v2, 0x0

    move v3, v0

    :goto_0
    if-lez v3, :cond_0

    .line 347
    invoke-static {v3, p2}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 348
    invoke-virtual {p0}, Lcn/hutool/crypto/asymmetric/AsymmetricCrypto;->getCipher()Ljavax/crypto/Cipher;

    move-result-object v4

    invoke-virtual {v4, p1, v2, v3}, Ljavax/crypto/Cipher;->doFinal([BII)[B

    move-result-object v4

    invoke-virtual {v1, v4}, Lcn/hutool/core/io/FastByteArrayOutputStream;->write([B)V

    add-int/2addr v2, v3

    sub-int v3, v0, v2

    goto :goto_0

    .line 354
    :cond_0
    invoke-virtual {v1}, Lcn/hutool/core/io/FastByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    return-object p1
.end method

.method private initMode(ILjava/security/Key;)Ljavax/crypto/Cipher;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;,
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 367
    iget-object v0, p0, Lcn/hutool/crypto/asymmetric/AsymmetricCrypto;->cipherWrapper:Lcn/hutool/crypto/CipherWrapper;

    invoke-virtual {v0, p1, p2}, Lcn/hutool/crypto/CipherWrapper;->initMode(ILjava/security/Key;)Lcn/hutool/crypto/CipherWrapper;

    move-result-object p1

    invoke-virtual {p1}, Lcn/hutool/crypto/CipherWrapper;->getCipher()Ljavax/crypto/Cipher;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public decrypt([BLcn/hutool/crypto/asymmetric/KeyType;)[B
    .locals 1

    .line 262
    invoke-virtual {p0, p2}, Lcn/hutool/crypto/asymmetric/AsymmetricCrypto;->getKeyByType(Lcn/hutool/crypto/asymmetric/KeyType;)Ljava/security/Key;

    move-result-object p2

    .line 263
    iget-object v0, p0, Lcn/hutool/crypto/asymmetric/AsymmetricCrypto;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    const/4 v0, 0x2

    .line 265
    :try_start_0
    invoke-direct {p0, v0, p2}, Lcn/hutool/crypto/asymmetric/AsymmetricCrypto;->initMode(ILjava/security/Key;)Ljavax/crypto/Cipher;

    move-result-object p2

    .line 267
    iget v0, p0, Lcn/hutool/crypto/asymmetric/AsymmetricCrypto;->decryptBlockSize:I

    if-gez v0, :cond_0

    .line 269
    invoke-virtual {p2}, Ljavax/crypto/Cipher;->getBlockSize()I

    move-result p2

    if-lez p2, :cond_0

    .line 271
    iput p2, p0, Lcn/hutool/crypto/asymmetric/AsymmetricCrypto;->decryptBlockSize:I

    .line 275
    :cond_0
    iget p2, p0, Lcn/hutool/crypto/asymmetric/AsymmetricCrypto;->decryptBlockSize:I

    if-gez p2, :cond_1

    array-length p2, p1

    :cond_1
    invoke-direct {p0, p1, p2}, Lcn/hutool/crypto/asymmetric/AsymmetricCrypto;->doFinal([BI)[B

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 279
    iget-object p2, p0, Lcn/hutool/crypto/asymmetric/AsymmetricCrypto;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 277
    :try_start_1
    new-instance p2, Lcn/hutool/crypto/CryptoException;

    invoke-direct {p2, p1}, Lcn/hutool/crypto/CryptoException;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 279
    :goto_0
    iget-object p2, p0, Lcn/hutool/crypto/asymmetric/AsymmetricCrypto;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 280
    throw p1
.end method

.method public encrypt([BLcn/hutool/crypto/asymmetric/KeyType;)[B
    .locals 1

    .line 237
    invoke-virtual {p0, p2}, Lcn/hutool/crypto/asymmetric/AsymmetricCrypto;->getKeyByType(Lcn/hutool/crypto/asymmetric/KeyType;)Ljava/security/Key;

    move-result-object p2

    .line 238
    iget-object v0, p0, Lcn/hutool/crypto/asymmetric/AsymmetricCrypto;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    const/4 v0, 0x1

    .line 240
    :try_start_0
    invoke-direct {p0, v0, p2}, Lcn/hutool/crypto/asymmetric/AsymmetricCrypto;->initMode(ILjava/security/Key;)Ljavax/crypto/Cipher;

    move-result-object p2

    .line 242
    iget v0, p0, Lcn/hutool/crypto/asymmetric/AsymmetricCrypto;->encryptBlockSize:I

    if-gez v0, :cond_0

    .line 244
    invoke-virtual {p2}, Ljavax/crypto/Cipher;->getBlockSize()I

    move-result p2

    if-lez p2, :cond_0

    .line 246
    iput p2, p0, Lcn/hutool/crypto/asymmetric/AsymmetricCrypto;->encryptBlockSize:I

    .line 250
    :cond_0
    iget p2, p0, Lcn/hutool/crypto/asymmetric/AsymmetricCrypto;->encryptBlockSize:I

    if-gez p2, :cond_1

    array-length p2, p1

    :cond_1
    invoke-direct {p0, p1, p2}, Lcn/hutool/crypto/asymmetric/AsymmetricCrypto;->doFinal([BI)[B

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 254
    iget-object p2, p0, Lcn/hutool/crypto/asymmetric/AsymmetricCrypto;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 252
    :try_start_1
    new-instance p2, Lcn/hutool/crypto/CryptoException;

    invoke-direct {p2, p1}, Lcn/hutool/crypto/CryptoException;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 254
    :goto_0
    iget-object p2, p0, Lcn/hutool/crypto/asymmetric/AsymmetricCrypto;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 255
    throw p1
.end method

.method public getAlgorithmParameterSpec()Ljava/security/spec/AlgorithmParameterSpec;
    .locals 1

    .line 200
    iget-object v0, p0, Lcn/hutool/crypto/asymmetric/AsymmetricCrypto;->cipherWrapper:Lcn/hutool/crypto/CipherWrapper;

    invoke-virtual {v0}, Lcn/hutool/crypto/CipherWrapper;->getParams()Ljava/security/spec/AlgorithmParameterSpec;

    move-result-object v0

    return-object v0
.end method

.method public getCipher()Ljavax/crypto/Cipher;
    .locals 1

    .line 292
    iget-object v0, p0, Lcn/hutool/crypto/asymmetric/AsymmetricCrypto;->cipherWrapper:Lcn/hutool/crypto/CipherWrapper;

    invoke-virtual {v0}, Lcn/hutool/crypto/CipherWrapper;->getCipher()Ljavax/crypto/Cipher;

    move-result-object v0

    return-object v0
.end method

.method public getDecryptBlockSize()I
    .locals 1

    .line 180
    iget v0, p0, Lcn/hutool/crypto/asymmetric/AsymmetricCrypto;->decryptBlockSize:I

    return v0
.end method

.method public getEncryptBlockSize()I
    .locals 1

    .line 162
    iget v0, p0, Lcn/hutool/crypto/asymmetric/AsymmetricCrypto;->encryptBlockSize:I

    return v0
.end method

.method public init(Ljava/lang/String;Ljava/security/PrivateKey;Ljava/security/PublicKey;)Lcn/hutool/crypto/asymmetric/AsymmetricCrypto;
    .locals 0

    .line 228
    invoke-super {p0, p1, p2, p3}, Lcn/hutool/crypto/asymmetric/AbstractAsymmetricCrypto;->init(Ljava/lang/String;Ljava/security/PrivateKey;Ljava/security/PublicKey;)Lcn/hutool/crypto/asymmetric/BaseAsymmetric;

    .line 229
    invoke-virtual {p0}, Lcn/hutool/crypto/asymmetric/AsymmetricCrypto;->initCipher()V

    return-object p0
.end method

.method public bridge synthetic init(Ljava/lang/String;Ljava/security/PrivateKey;Ljava/security/PublicKey;)Lcn/hutool/crypto/asymmetric/BaseAsymmetric;
    .locals 0

    .line 36
    invoke-virtual {p0, p1, p2, p3}, Lcn/hutool/crypto/asymmetric/AsymmetricCrypto;->init(Ljava/lang/String;Ljava/security/PrivateKey;Ljava/security/PublicKey;)Lcn/hutool/crypto/asymmetric/AsymmetricCrypto;

    move-result-object p1

    return-object p1
.end method

.method protected initCipher()V
    .locals 2

    .line 301
    new-instance v0, Lcn/hutool/crypto/CipherWrapper;

    iget-object v1, p0, Lcn/hutool/crypto/asymmetric/AsymmetricCrypto;->algorithm:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcn/hutool/crypto/CipherWrapper;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcn/hutool/crypto/asymmetric/AsymmetricCrypto;->cipherWrapper:Lcn/hutool/crypto/CipherWrapper;

    return-void
.end method

.method public setAlgorithmParameterSpec(Ljava/security/spec/AlgorithmParameterSpec;)V
    .locals 1

    .line 211
    iget-object v0, p0, Lcn/hutool/crypto/asymmetric/AsymmetricCrypto;->cipherWrapper:Lcn/hutool/crypto/CipherWrapper;

    invoke-virtual {v0, p1}, Lcn/hutool/crypto/CipherWrapper;->setParams(Ljava/security/spec/AlgorithmParameterSpec;)Lcn/hutool/crypto/CipherWrapper;

    return-void
.end method

.method public setDecryptBlockSize(I)V
    .locals 0

    .line 189
    iput p1, p0, Lcn/hutool/crypto/asymmetric/AsymmetricCrypto;->decryptBlockSize:I

    return-void
.end method

.method public setEncryptBlockSize(I)V
    .locals 0

    .line 171
    iput p1, p0, Lcn/hutool/crypto/asymmetric/AsymmetricCrypto;->encryptBlockSize:I

    return-void
.end method

.method public setRandom(Ljava/security/SecureRandom;)Lcn/hutool/crypto/asymmetric/AsymmetricCrypto;
    .locals 1

    .line 222
    iget-object v0, p0, Lcn/hutool/crypto/asymmetric/AsymmetricCrypto;->cipherWrapper:Lcn/hutool/crypto/CipherWrapper;

    invoke-virtual {v0, p1}, Lcn/hutool/crypto/CipherWrapper;->setRandom(Ljava/security/SecureRandom;)Lcn/hutool/crypto/CipherWrapper;

    return-object p0
.end method
