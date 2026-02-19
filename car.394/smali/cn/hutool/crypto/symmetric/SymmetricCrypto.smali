.class public Lcn/hutool/crypto/symmetric/SymmetricCrypto;
.super Ljava/lang/Object;
.source "SymmetricCrypto.java"

# interfaces
.implements Lcn/hutool/crypto/symmetric/SymmetricEncryptor;
.implements Lcn/hutool/crypto/symmetric/SymmetricDecryptor;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private cipherWrapper:Lcn/hutool/crypto/CipherWrapper;

.field private isZeroPadding:Z

.field private final lock:Ljava/util/concurrent/locks/Lock;

.field private secretKey:Ljavax/crypto/SecretKey;


# direct methods
.method public static synthetic $r8$lambda$g3irwG-CBGeJndh23vYo3CFndF0(Ljavax/crypto/Cipher;)[B
    .locals 0

    invoke-virtual {p0}, Ljavax/crypto/Cipher;->getIV()[B

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Lcn/hutool/crypto/symmetric/SymmetricAlgorithm;)V
    .locals 2

    const/4 v0, 0x0

    .line 64
    move-object v1, v0

    check-cast v1, [B

    invoke-direct {p0, p1, v0}, Lcn/hutool/crypto/symmetric/SymmetricCrypto;-><init>(Lcn/hutool/crypto/symmetric/SymmetricAlgorithm;[B)V

    return-void
.end method

.method public constructor <init>(Lcn/hutool/crypto/symmetric/SymmetricAlgorithm;Ljavax/crypto/SecretKey;)V
    .locals 0

    .line 94
    invoke-virtual {p1}, Lcn/hutool/crypto/symmetric/SymmetricAlgorithm;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcn/hutool/crypto/symmetric/SymmetricCrypto;-><init>(Ljava/lang/String;Ljavax/crypto/SecretKey;)V

    return-void
.end method

.method public constructor <init>(Lcn/hutool/crypto/symmetric/SymmetricAlgorithm;[B)V
    .locals 0

    .line 83
    invoke-virtual {p1}, Lcn/hutool/crypto/symmetric/SymmetricAlgorithm;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcn/hutool/crypto/symmetric/SymmetricCrypto;-><init>(Ljava/lang/String;[B)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    .line 73
    move-object v1, v0

    check-cast v1, [B

    invoke-direct {p0, p1, v0}, Lcn/hutool/crypto/symmetric/SymmetricCrypto;-><init>(Ljava/lang/String;[B)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljavax/crypto/SecretKey;)V
    .locals 1

    const/4 v0, 0x0

    .line 115
    invoke-direct {p0, p1, p2, v0}, Lcn/hutool/crypto/symmetric/SymmetricCrypto;-><init>(Ljava/lang/String;Ljavax/crypto/SecretKey;Ljava/security/spec/AlgorithmParameterSpec;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljavax/crypto/SecretKey;Ljava/security/spec/AlgorithmParameterSpec;)V
    .locals 1

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcn/hutool/crypto/symmetric/SymmetricCrypto;->lock:Ljava/util/concurrent/locks/Lock;

    .line 127
    invoke-virtual {p0, p1, p2}, Lcn/hutool/crypto/symmetric/SymmetricCrypto;->init(Ljava/lang/String;Ljavax/crypto/SecretKey;)Lcn/hutool/crypto/symmetric/SymmetricCrypto;

    .line 128
    invoke-direct {p0, p1, p3}, Lcn/hutool/crypto/symmetric/SymmetricCrypto;->initParams(Ljava/lang/String;Ljava/security/spec/AlgorithmParameterSpec;)Lcn/hutool/crypto/symmetric/SymmetricCrypto;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[B)V
    .locals 0

    .line 104
    invoke-static {p1, p2}, Lcn/hutool/crypto/KeyUtil;->generateKey(Ljava/lang/String;[B)Ljavax/crypto/SecretKey;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcn/hutool/crypto/symmetric/SymmetricCrypto;-><init>(Ljava/lang/String;Ljavax/crypto/SecretKey;)V

    return-void
.end method

.method private static copyForZeroPadding(Ljavax/crypto/CipherInputStream;Ljava/io/OutputStream;I)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    const/16 v1, 0x2000

    if-le v1, p2, :cond_0

    .line 483
    div-int/2addr v1, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    mul-int/2addr p2, v1

    .line 487
    new-array v1, p2, [B

    .line 488
    new-array p2, p2, [B

    const/4 v2, 0x0

    move v4, v0

    move v3, v2

    .line 492
    :goto_1
    invoke-virtual {p0, p2}, Ljavax/crypto/CipherInputStream;->read([B)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_2

    if-eqz v4, :cond_1

    move v4, v2

    goto :goto_2

    .line 497
    :cond_1
    invoke-virtual {p1, v1, v2, v3}, Ljava/io/OutputStream;->write([BII)V

    .line 499
    :goto_2
    invoke-static {p2, v1, v5}, Lcn/hutool/core/util/ArrayUtil;->copy(Ljava/lang/Object;Ljava/lang/Object;I)Ljava/lang/Object;

    move v3, v5

    goto :goto_1

    :cond_2
    sub-int/2addr v3, v0

    :goto_3
    if-ltz v3, :cond_3

    .line 504
    aget-byte p0, v1, v3

    if-nez p0, :cond_3

    add-int/lit8 v3, v3, -0x1

    goto :goto_3

    :cond_3
    add-int/2addr v3, v0

    .line 507
    invoke-virtual {p1, v1, v2, v3}, Ljava/io/OutputStream;->write([BII)V

    .line 508
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    return-void
.end method

.method private initMode(I)Ljavax/crypto/Cipher;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .line 415
    iget-object v0, p0, Lcn/hutool/crypto/symmetric/SymmetricCrypto;->cipherWrapper:Lcn/hutool/crypto/CipherWrapper;

    iget-object v1, p0, Lcn/hutool/crypto/symmetric/SymmetricCrypto;->secretKey:Ljavax/crypto/SecretKey;

    invoke-virtual {v0, p1, v1}, Lcn/hutool/crypto/CipherWrapper;->initMode(ILjava/security/Key;)Lcn/hutool/crypto/CipherWrapper;

    move-result-object p1

    invoke-virtual {p1}, Lcn/hutool/crypto/CipherWrapper;->getCipher()Ljavax/crypto/Cipher;

    move-result-object p1

    return-object p1
.end method

.method private initParams(Ljava/lang/String;Ljava/security/spec/AlgorithmParameterSpec;)Lcn/hutool/crypto/symmetric/SymmetricCrypto;
    .locals 2

    if-nez p2, :cond_2

    .line 385
    iget-object v0, p0, Lcn/hutool/crypto/symmetric/SymmetricCrypto;->cipherWrapper:Lcn/hutool/crypto/CipherWrapper;

    invoke-static {v0}, Lcn/hutool/core/lang/Opt;->ofNullable(Ljava/lang/Object;)Lcn/hutool/core/lang/Opt;

    move-result-object v0

    new-instance v1, Lcn/hutool/crypto/symmetric/SymmetricCrypto$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcn/hutool/crypto/symmetric/SymmetricCrypto$$ExternalSyntheticLambda0;-><init>()V

    .line 386
    invoke-virtual {v0, v1}, Lcn/hutool/core/lang/Opt;->map(Ljava/util/function/Function;)Lcn/hutool/core/lang/Opt;

    move-result-object v0

    new-instance v1, Lcn/hutool/crypto/symmetric/SymmetricCrypto$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lcn/hutool/crypto/symmetric/SymmetricCrypto$$ExternalSyntheticLambda1;-><init>()V

    invoke-virtual {v0, v1}, Lcn/hutool/core/lang/Opt;->map(Ljava/util/function/Function;)Lcn/hutool/core/lang/Opt;

    move-result-object v0

    invoke-virtual {v0}, Lcn/hutool/core/lang/Opt;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    const-string v1, "PBE"

    .line 389
    invoke-static {p1, v1}, Lcn/hutool/core/util/StrUtil;->startWithIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    if-nez v0, :cond_0

    const/16 p1, 0x8

    .line 392
    invoke-static {p1}, Lcn/hutool/core/util/RandomUtil;->randomBytes(I)[B

    move-result-object v0

    .line 394
    :cond_0
    new-instance p2, Ljavax/crypto/spec/PBEParameterSpec;

    const/16 p1, 0x64

    invoke-direct {p2, v0, p1}, Ljavax/crypto/spec/PBEParameterSpec;-><init>([BI)V

    goto :goto_0

    :cond_1
    const-string v1, "AES"

    .line 395
    invoke-static {p1, v1}, Lcn/hutool/core/util/StrUtil;->startWithIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    if-eqz v0, :cond_2

    .line 398
    new-instance p2, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {p2, v0}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 403
    :cond_2
    :goto_0
    invoke-virtual {p0, p2}, Lcn/hutool/crypto/symmetric/SymmetricCrypto;->setParams(Ljava/security/spec/AlgorithmParameterSpec;)Lcn/hutool/crypto/symmetric/SymmetricCrypto;

    move-result-object p1

    return-object p1
.end method

.method private paddingDataWithZero([BI)[B
    .locals 2

    .line 433
    iget-boolean v0, p0, Lcn/hutool/crypto/symmetric/SymmetricCrypto;->isZeroPadding:Z

    if-eqz v0, :cond_0

    .line 434
    array-length v0, p1

    .line 436
    rem-int v1, v0, p2

    if-lez v1, :cond_0

    add-int/2addr v0, p2

    sub-int/2addr v0, v1

    .line 439
    invoke-static {p1, v0}, Lcn/hutool/core/util/ArrayUtil;->resize([BI)[B

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method private removePadding([BI)[B
    .locals 1

    .line 457
    iget-boolean v0, p0, Lcn/hutool/crypto/symmetric/SymmetricCrypto;->isZeroPadding:Z

    if-eqz v0, :cond_1

    if-lez p2, :cond_1

    .line 458
    array-length v0, p1

    .line 459
    rem-int p2, v0, p2

    if-nez p2, :cond_1

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 463
    aget-byte p2, p1, v0

    if-nez p2, :cond_0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 466
    invoke-static {p1, v0}, Lcn/hutool/core/util/ArrayUtil;->resize([BI)[B

    move-result-object p1

    :cond_1
    return-object p1
.end method


# virtual methods
.method public decrypt(Ljava/io/InputStream;Ljava/io/OutputStream;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/hutool/core/io/IORuntimeException;
        }
    .end annotation

    .line 341
    iget-object v0, p0, Lcn/hutool/crypto/symmetric/SymmetricCrypto;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    const/4 v0, 0x2

    const/4 v1, 0x0

    .line 344
    :try_start_0
    invoke-direct {p0, v0}, Lcn/hutool/crypto/symmetric/SymmetricCrypto;->initMode(I)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 345
    new-instance v2, Ljavax/crypto/CipherInputStream;

    invoke-direct {v2, p1, v0}, Ljavax/crypto/CipherInputStream;-><init>(Ljava/io/InputStream;Ljavax/crypto/Cipher;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Lcn/hutool/core/io/IORuntimeException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 346
    :try_start_1
    iget-boolean v1, p0, Lcn/hutool/crypto/symmetric/SymmetricCrypto;->isZeroPadding:Z

    if-eqz v1, :cond_1

    .line 347
    invoke-virtual {v0}, Ljavax/crypto/Cipher;->getBlockSize()I

    move-result v0

    if-lez v0, :cond_1

    .line 349
    invoke-static {v2, p2, v0}, Lcn/hutool/crypto/symmetric/SymmetricCrypto;->copyForZeroPadding(Ljavax/crypto/CipherInputStream;Ljava/io/OutputStream;I)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lcn/hutool/core/io/IORuntimeException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 361
    iget-object p2, p0, Lcn/hutool/crypto/symmetric/SymmetricCrypto;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 364
    invoke-static {v2}, Lcn/hutool/core/io/IoUtil;->close(Ljava/io/Closeable;)V

    if-eqz p3, :cond_0

    .line 366
    invoke-static {p1}, Lcn/hutool/core/io/IoUtil;->close(Ljava/io/Closeable;)V

    :cond_0
    return-void

    .line 353
    :cond_1
    :try_start_2
    invoke-static {v2, p2}, Lcn/hutool/core/io/IoUtil;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)J
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lcn/hutool/core/io/IORuntimeException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 361
    iget-object p2, p0, Lcn/hutool/crypto/symmetric/SymmetricCrypto;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 364
    invoke-static {v2}, Lcn/hutool/core/io/IoUtil;->close(Ljava/io/Closeable;)V

    if-eqz p3, :cond_2

    .line 366
    invoke-static {p1}, Lcn/hutool/core/io/IoUtil;->close(Ljava/io/Closeable;)V

    :cond_2
    return-void

    :catchall_0
    move-exception p2

    move-object v1, v2

    goto :goto_3

    :catch_0
    move-exception p2

    move-object v1, v2

    goto :goto_0

    :catch_1
    move-exception p2

    move-object v1, v2

    goto :goto_1

    :catch_2
    move-exception p2

    move-object v1, v2

    goto :goto_2

    :catchall_1
    move-exception p2

    goto :goto_3

    :catch_3
    move-exception p2

    .line 359
    :goto_0
    :try_start_3
    new-instance v0, Lcn/hutool/crypto/CryptoException;

    invoke-direct {v0, p2}, Lcn/hutool/crypto/CryptoException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_4
    move-exception p2

    .line 357
    :goto_1
    throw p2

    :catch_5
    move-exception p2

    .line 355
    :goto_2
    new-instance v0, Lcn/hutool/core/io/IORuntimeException;

    invoke-direct {v0, p2}, Lcn/hutool/core/io/IORuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 361
    :goto_3
    iget-object v0, p0, Lcn/hutool/crypto/symmetric/SymmetricCrypto;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 364
    invoke-static {v1}, Lcn/hutool/core/io/IoUtil;->close(Ljava/io/Closeable;)V

    if-eqz p3, :cond_3

    .line 366
    invoke-static {p1}, Lcn/hutool/core/io/IoUtil;->close(Ljava/io/Closeable;)V

    .line 368
    :cond_3
    throw p2
.end method

.method public decrypt([B)[B
    .locals 2

    .line 325
    iget-object v0, p0, Lcn/hutool/crypto/symmetric/SymmetricCrypto;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    const/4 v0, 0x2

    .line 327
    :try_start_0
    invoke-direct {p0, v0}, Lcn/hutool/crypto/symmetric/SymmetricCrypto;->initMode(I)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 328
    invoke-virtual {v0}, Ljavax/crypto/Cipher;->getBlockSize()I

    move-result v1

    .line 329
    invoke-virtual {v0, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 333
    iget-object v0, p0, Lcn/hutool/crypto/symmetric/SymmetricCrypto;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 336
    invoke-direct {p0, p1, v1}, Lcn/hutool/crypto/symmetric/SymmetricCrypto;->removePadding([BI)[B

    move-result-object p1

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 331
    :try_start_1
    new-instance v0, Lcn/hutool/crypto/CryptoException;

    invoke-direct {v0, p1}, Lcn/hutool/crypto/CryptoException;-><init>(Ljava/lang/Throwable;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 333
    :goto_0
    iget-object v0, p0, Lcn/hutool/crypto/symmetric/SymmetricCrypto;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 334
    throw p1
.end method

.method public encrypt(Ljava/io/InputStream;Ljava/io/OutputStream;Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/hutool/core/io/IORuntimeException;
        }
    .end annotation

    .line 285
    iget-object v0, p0, Lcn/hutool/crypto/symmetric/SymmetricCrypto;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 288
    :try_start_0
    invoke-direct {p0, v0}, Lcn/hutool/crypto/symmetric/SymmetricCrypto;->initMode(I)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 289
    new-instance v2, Ljavax/crypto/CipherOutputStream;

    invoke-direct {v2, p2, v0}, Ljavax/crypto/CipherOutputStream;-><init>(Ljava/io/OutputStream;Ljavax/crypto/Cipher;)V
    :try_end_0
    .catch Lcn/hutool/core/io/IORuntimeException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 290
    :try_start_1
    invoke-static {p1, v2}, Lcn/hutool/core/io/IoUtil;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)J

    move-result-wide v3

    .line 291
    iget-boolean p2, p0, Lcn/hutool/crypto/symmetric/SymmetricCrypto;->isZeroPadding:Z

    if-eqz p2, :cond_0

    .line 292
    invoke-virtual {v0}, Ljavax/crypto/Cipher;->getBlockSize()I

    move-result p2

    if-lez p2, :cond_0

    int-to-long v0, p2

    .line 295
    rem-long/2addr v3, v0

    long-to-int v0, v3

    if-lez v0, :cond_0

    sub-int/2addr p2, v0

    .line 298
    new-array p2, p2, [B

    invoke-virtual {v2, p2}, Ljavax/crypto/CipherOutputStream;->write([B)V

    .line 299
    invoke-virtual {v2}, Ljavax/crypto/CipherOutputStream;->flush()V
    :try_end_1
    .catch Lcn/hutool/core/io/IORuntimeException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 308
    :cond_0
    iget-object p2, p0, Lcn/hutool/crypto/symmetric/SymmetricCrypto;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 311
    invoke-static {v2}, Lcn/hutool/core/io/IoUtil;->close(Ljava/io/Closeable;)V

    if-eqz p3, :cond_1

    .line 313
    invoke-static {p1}, Lcn/hutool/core/io/IoUtil;->close(Ljava/io/Closeable;)V

    :cond_1
    return-void

    :catchall_0
    move-exception p2

    move-object v1, v2

    goto :goto_2

    :catch_0
    move-exception p2

    move-object v1, v2

    goto :goto_0

    :catch_1
    move-exception p2

    move-object v1, v2

    goto :goto_1

    :catchall_1
    move-exception p2

    goto :goto_2

    :catch_2
    move-exception p2

    .line 306
    :goto_0
    :try_start_2
    new-instance v0, Lcn/hutool/crypto/CryptoException;

    invoke-direct {v0, p2}, Lcn/hutool/crypto/CryptoException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_3
    move-exception p2

    .line 304
    :goto_1
    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 308
    :goto_2
    iget-object v0, p0, Lcn/hutool/crypto/symmetric/SymmetricCrypto;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 311
    invoke-static {v1}, Lcn/hutool/core/io/IoUtil;->close(Ljava/io/Closeable;)V

    if-eqz p3, :cond_2

    .line 313
    invoke-static {p1}, Lcn/hutool/core/io/IoUtil;->close(Ljava/io/Closeable;)V

    .line 315
    :cond_2
    throw p2
.end method

.method public encrypt([B)[B
    .locals 2

    .line 272
    iget-object v0, p0, Lcn/hutool/crypto/symmetric/SymmetricCrypto;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    const/4 v0, 0x1

    .line 274
    :try_start_0
    invoke-direct {p0, v0}, Lcn/hutool/crypto/symmetric/SymmetricCrypto;->initMode(I)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 275
    invoke-virtual {v0}, Ljavax/crypto/Cipher;->getBlockSize()I

    move-result v1

    invoke-direct {p0, p1, v1}, Lcn/hutool/crypto/symmetric/SymmetricCrypto;->paddingDataWithZero([BI)[B

    move-result-object p1

    invoke-virtual {v0, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 279
    iget-object v0, p0, Lcn/hutool/crypto/symmetric/SymmetricCrypto;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 277
    :try_start_1
    new-instance v0, Lcn/hutool/crypto/CryptoException;

    invoke-direct {v0, p1}, Lcn/hutool/crypto/CryptoException;-><init>(Ljava/lang/Throwable;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 279
    :goto_0
    iget-object v0, p0, Lcn/hutool/crypto/symmetric/SymmetricCrypto;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 280
    throw p1
.end method

.method public getCipher()Ljavax/crypto/Cipher;
    .locals 1

    .line 169
    iget-object v0, p0, Lcn/hutool/crypto/symmetric/SymmetricCrypto;->cipherWrapper:Lcn/hutool/crypto/CipherWrapper;

    invoke-virtual {v0}, Lcn/hutool/crypto/CipherWrapper;->getCipher()Ljavax/crypto/Cipher;

    move-result-object v0

    return-object v0
.end method

.method public getSecretKey()Ljavax/crypto/SecretKey;
    .locals 1

    .line 160
    iget-object v0, p0, Lcn/hutool/crypto/symmetric/SymmetricCrypto;->secretKey:Ljavax/crypto/SecretKey;

    return-object v0
.end method

.method public init(Ljava/lang/String;Ljavax/crypto/SecretKey;)Lcn/hutool/crypto/symmetric/SymmetricCrypto;
    .locals 2

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "\'algorithm\' must be not blank !"

    .line 141
    invoke-static {p1, v1, v0}, Lcn/hutool/core/lang/Assert;->notBlank(Ljava/lang/CharSequence;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/CharSequence;

    .line 142
    iput-object p2, p0, Lcn/hutool/crypto/symmetric/SymmetricCrypto;->secretKey:Ljavax/crypto/SecretKey;

    .line 145
    sget-object p2, Lcn/hutool/crypto/Padding;->ZeroPadding:Lcn/hutool/crypto/Padding;

    invoke-virtual {p2}, Lcn/hutool/crypto/Padding;->name()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 146
    sget-object p2, Lcn/hutool/crypto/Padding;->ZeroPadding:Lcn/hutool/crypto/Padding;

    invoke-virtual {p2}, Lcn/hutool/crypto/Padding;->name()Ljava/lang/String;

    move-result-object p2

    sget-object v0, Lcn/hutool/crypto/Padding;->NoPadding:Lcn/hutool/crypto/Padding;

    invoke-virtual {v0}, Lcn/hutool/crypto/Padding;->name()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, p2, v0}, Lcn/hutool/core/util/StrUtil;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x1

    .line 147
    iput-boolean p2, p0, Lcn/hutool/crypto/symmetric/SymmetricCrypto;->isZeroPadding:Z

    .line 150
    :cond_0
    new-instance p2, Lcn/hutool/crypto/CipherWrapper;

    invoke-direct {p2, p1}, Lcn/hutool/crypto/CipherWrapper;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lcn/hutool/crypto/symmetric/SymmetricCrypto;->cipherWrapper:Lcn/hutool/crypto/CipherWrapper;

    return-object p0
.end method

.method public setIv(Ljavax/crypto/spec/IvParameterSpec;)Lcn/hutool/crypto/symmetric/SymmetricCrypto;
    .locals 0

    .line 190
    invoke-virtual {p0, p1}, Lcn/hutool/crypto/symmetric/SymmetricCrypto;->setParams(Ljava/security/spec/AlgorithmParameterSpec;)Lcn/hutool/crypto/symmetric/SymmetricCrypto;

    move-result-object p1

    return-object p1
.end method

.method public setIv([B)Lcn/hutool/crypto/symmetric/SymmetricCrypto;
    .locals 1

    .line 200
    new-instance v0, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v0, p1}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    invoke-virtual {p0, v0}, Lcn/hutool/crypto/symmetric/SymmetricCrypto;->setIv(Ljavax/crypto/spec/IvParameterSpec;)Lcn/hutool/crypto/symmetric/SymmetricCrypto;

    move-result-object p1

    return-object p1
.end method

.method public setMode(Lcn/hutool/crypto/CipherMode;)Lcn/hutool/crypto/symmetric/SymmetricCrypto;
    .locals 1

    .line 225
    iget-object v0, p0, Lcn/hutool/crypto/symmetric/SymmetricCrypto;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 227
    :try_start_0
    invoke-virtual {p1}, Lcn/hutool/crypto/CipherMode;->getValue()I

    move-result p1

    invoke-direct {p0, p1}, Lcn/hutool/crypto/symmetric/SymmetricCrypto;->initMode(I)Ljavax/crypto/Cipher;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 231
    iget-object p1, p0, Lcn/hutool/crypto/symmetric/SymmetricCrypto;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 229
    :try_start_1
    new-instance v0, Lcn/hutool/crypto/CryptoException;

    invoke-direct {v0, p1}, Lcn/hutool/crypto/CryptoException;-><init>(Ljava/lang/Throwable;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 231
    :goto_0
    iget-object v0, p0, Lcn/hutool/crypto/symmetric/SymmetricCrypto;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 232
    throw p1
.end method

.method public setParams(Ljava/security/spec/AlgorithmParameterSpec;)Lcn/hutool/crypto/symmetric/SymmetricCrypto;
    .locals 1

    .line 179
    iget-object v0, p0, Lcn/hutool/crypto/symmetric/SymmetricCrypto;->cipherWrapper:Lcn/hutool/crypto/CipherWrapper;

    invoke-virtual {v0, p1}, Lcn/hutool/crypto/CipherWrapper;->setParams(Ljava/security/spec/AlgorithmParameterSpec;)Lcn/hutool/crypto/CipherWrapper;

    return-object p0
.end method

.method public setRandom(Ljava/security/SecureRandom;)Lcn/hutool/crypto/symmetric/SymmetricCrypto;
    .locals 1

    .line 211
    iget-object v0, p0, Lcn/hutool/crypto/symmetric/SymmetricCrypto;->cipherWrapper:Lcn/hutool/crypto/CipherWrapper;

    invoke-virtual {v0, p1}, Lcn/hutool/crypto/CipherWrapper;->setRandom(Ljava/security/SecureRandom;)Lcn/hutool/crypto/CipherWrapper;

    return-object p0
.end method

.method public update([B)[B
    .locals 2

    .line 245
    iget-object v0, p0, Lcn/hutool/crypto/symmetric/SymmetricCrypto;->cipherWrapper:Lcn/hutool/crypto/CipherWrapper;

    invoke-virtual {v0}, Lcn/hutool/crypto/CipherWrapper;->getCipher()Ljavax/crypto/Cipher;

    move-result-object v0

    .line 246
    iget-object v1, p0, Lcn/hutool/crypto/symmetric/SymmetricCrypto;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 248
    :try_start_0
    invoke-virtual {v0}, Ljavax/crypto/Cipher;->getBlockSize()I

    move-result v1

    invoke-direct {p0, p1, v1}, Lcn/hutool/crypto/symmetric/SymmetricCrypto;->paddingDataWithZero([BI)[B

    move-result-object p1

    invoke-virtual {v0, p1}, Ljavax/crypto/Cipher;->update([B)[B

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 252
    iget-object v0, p0, Lcn/hutool/crypto/symmetric/SymmetricCrypto;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 250
    :try_start_1
    new-instance v0, Lcn/hutool/crypto/CryptoException;

    invoke-direct {v0, p1}, Lcn/hutool/crypto/CryptoException;-><init>(Ljava/lang/Throwable;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 252
    :goto_0
    iget-object v0, p0, Lcn/hutool/crypto/symmetric/SymmetricCrypto;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 253
    throw p1
.end method

.method public updateHex([B)Ljava/lang/String;
    .locals 0

    .line 265
    invoke-virtual {p0, p1}, Lcn/hutool/crypto/symmetric/SymmetricCrypto;->update([B)[B

    move-result-object p1

    invoke-static {p1}, Lcn/hutool/core/util/HexUtil;->encodeHexStr([B)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
