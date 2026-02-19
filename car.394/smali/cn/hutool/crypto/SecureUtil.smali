.class public Lcn/hutool/crypto/SecureUtil;
.super Ljava/lang/Object;
.source "SecureUtil.java"


# static fields
.field public static final DEFAULT_KEY_SIZE:I = 0x400


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addProvider(Ljava/security/Provider;)V
    .locals 1

    const/4 v0, 0x0

    .line 1001
    invoke-static {p0, v0}, Ljava/security/Security;->insertProviderAt(Ljava/security/Provider;I)I

    return-void
.end method

.method public static aes()Lcn/hutool/crypto/symmetric/AES;
    .locals 1

    .line 409
    new-instance v0, Lcn/hutool/crypto/symmetric/AES;

    invoke-direct {v0}, Lcn/hutool/crypto/symmetric/AES;-><init>()V

    return-object v0
.end method

.method public static aes([B)Lcn/hutool/crypto/symmetric/AES;
    .locals 1

    .line 425
    new-instance v0, Lcn/hutool/crypto/symmetric/AES;

    invoke-direct {v0, p0}, Lcn/hutool/crypto/symmetric/AES;-><init>([B)V

    return-object v0
.end method

.method public static createCipher(Ljava/lang/String;)Ljavax/crypto/Cipher;
    .locals 1

    .line 1028
    sget-object v0, Lcn/hutool/crypto/GlobalBouncyCastleProvider;->INSTANCE:Lcn/hutool/crypto/GlobalBouncyCastleProvider;

    invoke-virtual {v0}, Lcn/hutool/crypto/GlobalBouncyCastleProvider;->getProvider()Ljava/security/Provider;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1032
    :try_start_0
    invoke-static {p0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-static {p0, v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/Cipher;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object p0

    :catch_0
    move-exception p0

    .line 1034
    new-instance v0, Lcn/hutool/crypto/CryptoException;

    invoke-direct {v0, p0}, Lcn/hutool/crypto/CryptoException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static createJdkMessageDigest(Ljava/lang/String;)Ljava/security/MessageDigest;
    .locals 1

    .line 1068
    :try_start_0
    invoke-static {p0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object p0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 1070
    new-instance v0, Lcn/hutool/crypto/CryptoException;

    invoke-direct {v0, p0}, Lcn/hutool/crypto/CryptoException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static createMac(Ljava/lang/String;)Ljavax/crypto/Mac;
    .locals 1

    .line 1082
    sget-object v0, Lcn/hutool/crypto/GlobalBouncyCastleProvider;->INSTANCE:Lcn/hutool/crypto/GlobalBouncyCastleProvider;

    invoke-virtual {v0}, Lcn/hutool/crypto/GlobalBouncyCastleProvider;->getProvider()Ljava/security/Provider;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1086
    :try_start_0
    invoke-static {p0}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-static {p0, v0}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/Mac;

    move-result-object p0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object p0

    :catch_0
    move-exception p0

    .line 1088
    new-instance v0, Lcn/hutool/crypto/CryptoException;

    invoke-direct {v0, p0}, Lcn/hutool/crypto/CryptoException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static createMessageDigest(Ljava/lang/String;)Ljava/security/MessageDigest;
    .locals 1

    .line 1048
    sget-object v0, Lcn/hutool/crypto/GlobalBouncyCastleProvider;->INSTANCE:Lcn/hutool/crypto/GlobalBouncyCastleProvider;

    invoke-virtual {v0}, Lcn/hutool/crypto/GlobalBouncyCastleProvider;->getProvider()Ljava/security/Provider;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1052
    :try_start_0
    invoke-static {p0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-static {p0, v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/MessageDigest;

    move-result-object p0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object p0

    :catch_0
    move-exception p0

    .line 1054
    new-instance v0, Lcn/hutool/crypto/CryptoException;

    invoke-direct {v0, p0}, Lcn/hutool/crypto/CryptoException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static createSignature(Ljava/lang/String;)Ljava/security/Signature;
    .locals 1

    .line 1102
    sget-object v0, Lcn/hutool/crypto/GlobalBouncyCastleProvider;->INSTANCE:Lcn/hutool/crypto/GlobalBouncyCastleProvider;

    invoke-virtual {v0}, Lcn/hutool/crypto/GlobalBouncyCastleProvider;->getProvider()Ljava/security/Provider;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1106
    :try_start_0
    invoke-static {p0}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-static {p0, v0}, Ljava/security/Signature;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/Signature;

    move-result-object p0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object p0

    :catch_0
    move-exception p0

    .line 1108
    new-instance v0, Lcn/hutool/crypto/CryptoException;

    invoke-direct {v0, p0}, Lcn/hutool/crypto/CryptoException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static decode(Ljava/lang/String;)[B
    .locals 1

    .line 1017
    invoke-static {p0}, Lcn/hutool/core/lang/Validator;->isHex(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcn/hutool/core/util/HexUtil;->decodeHex(Ljava/lang/String;)[B

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcn/hutool/core/codec/Base64;->decode(Ljava/lang/CharSequence;)[B

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static des()Lcn/hutool/crypto/symmetric/DES;
    .locals 1

    .line 440
    new-instance v0, Lcn/hutool/crypto/symmetric/DES;

    invoke-direct {v0}, Lcn/hutool/crypto/symmetric/DES;-><init>()V

    return-object v0
.end method

.method public static des([B)Lcn/hutool/crypto/symmetric/DES;
    .locals 1

    .line 456
    new-instance v0, Lcn/hutool/crypto/symmetric/DES;

    invoke-direct {v0, p0}, Lcn/hutool/crypto/symmetric/DES;-><init>([B)V

    return-object v0
.end method

.method public static desede()Lcn/hutool/crypto/symmetric/DESede;
    .locals 1

    .line 473
    new-instance v0, Lcn/hutool/crypto/symmetric/DESede;

    invoke-direct {v0}, Lcn/hutool/crypto/symmetric/DESede;-><init>()V

    return-object v0
.end method

.method public static desede([B)Lcn/hutool/crypto/symmetric/DESede;
    .locals 1

    .line 491
    new-instance v0, Lcn/hutool/crypto/symmetric/DESede;

    invoke-direct {v0, p0}, Lcn/hutool/crypto/symmetric/DESede;-><init>([B)V

    return-object v0
.end method

.method public static disableBouncyCastle()V
    .locals 1

    const/4 v0, 0x0

    .line 1130
    invoke-static {v0}, Lcn/hutool/crypto/GlobalBouncyCastleProvider;->setUseBouncyCastle(Z)V

    return-void
.end method

.method public static fpe(Lcn/hutool/crypto/symmetric/fpe/FPE$FPEMode;[BLorg/bouncycastle/crypto/AlphabetMapper;[B)Lcn/hutool/crypto/symmetric/fpe/FPE;
    .locals 1

    .line 1156
    new-instance v0, Lcn/hutool/crypto/symmetric/fpe/FPE;

    invoke-direct {v0, p0, p1, p2, p3}, Lcn/hutool/crypto/symmetric/fpe/FPE;-><init>(Lcn/hutool/crypto/symmetric/fpe/FPE$FPEMode;[BLorg/bouncycastle/crypto/AlphabetMapper;[B)V

    return-object v0
.end method

.method public static generateAlgorithm(Lcn/hutool/crypto/asymmetric/AsymmetricAlgorithm;Lcn/hutool/crypto/digest/DigestAlgorithm;)Ljava/lang/String;
    .locals 2

    if-nez p1, :cond_0

    const-string p1, "NONE"

    goto :goto_0

    .line 281
    :cond_0
    invoke-virtual {p1}, Lcn/hutool/crypto/digest/DigestAlgorithm;->name()Ljava/lang/String;

    move-result-object p1

    :goto_0
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    .line 282
    invoke-virtual {p0}, Lcn/hutool/crypto/asymmetric/AsymmetricAlgorithm;->getValue()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v0, p1

    const-string p0, "{}with{}"

    invoke-static {p0, v0}, Lcn/hutool/core/util/StrUtil;->format(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static generateDESKey(Ljava/lang/String;[B)Ljavax/crypto/SecretKey;
    .locals 0

    .line 111
    invoke-static {p0, p1}, Lcn/hutool/crypto/KeyUtil;->generateDESKey(Ljava/lang/String;[B)Ljavax/crypto/SecretKey;

    move-result-object p0

    return-object p0
.end method

.method public static generateKey(Ljava/lang/String;)Ljavax/crypto/SecretKey;
    .locals 0

    .line 77
    invoke-static {p0}, Lcn/hutool/crypto/KeyUtil;->generateKey(Ljava/lang/String;)Ljavax/crypto/SecretKey;

    move-result-object p0

    return-object p0
.end method

.method public static generateKey(Ljava/lang/String;I)Ljavax/crypto/SecretKey;
    .locals 0

    .line 89
    invoke-static {p0, p1}, Lcn/hutool/crypto/KeyUtil;->generateKey(Ljava/lang/String;I)Ljavax/crypto/SecretKey;

    move-result-object p0

    return-object p0
.end method

.method public static generateKey(Ljava/lang/String;Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;
    .locals 0

    .line 133
    invoke-static {p0, p1}, Lcn/hutool/crypto/KeyUtil;->generateKey(Ljava/lang/String;Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    move-result-object p0

    return-object p0
.end method

.method public static generateKey(Ljava/lang/String;[B)Ljavax/crypto/SecretKey;
    .locals 0

    .line 100
    invoke-static {p0, p1}, Lcn/hutool/crypto/KeyUtil;->generateKey(Ljava/lang/String;[B)Ljavax/crypto/SecretKey;

    move-result-object p0

    return-object p0
.end method

.method public static generateKeyPair(Ljava/lang/String;)Ljava/security/KeyPair;
    .locals 0

    .line 206
    invoke-static {p0}, Lcn/hutool/crypto/KeyUtil;->generateKeyPair(Ljava/lang/String;)Ljava/security/KeyPair;

    move-result-object p0

    return-object p0
.end method

.method public static generateKeyPair(Ljava/lang/String;I)Ljava/security/KeyPair;
    .locals 0

    .line 218
    invoke-static {p0, p1}, Lcn/hutool/crypto/KeyUtil;->generateKeyPair(Ljava/lang/String;I)Ljava/security/KeyPair;

    move-result-object p0

    return-object p0
.end method

.method public static generateKeyPair(Ljava/lang/String;I[B)Ljava/security/KeyPair;
    .locals 0

    .line 231
    invoke-static {p0, p1, p2}, Lcn/hutool/crypto/KeyUtil;->generateKeyPair(Ljava/lang/String;I[B)Ljava/security/KeyPair;

    move-result-object p0

    return-object p0
.end method

.method public static generateKeyPair(Ljava/lang/String;Ljava/security/spec/AlgorithmParameterSpec;)Ljava/security/KeyPair;
    .locals 0

    .line 244
    invoke-static {p0, p1}, Lcn/hutool/crypto/KeyUtil;->generateKeyPair(Ljava/lang/String;Ljava/security/spec/AlgorithmParameterSpec;)Ljava/security/KeyPair;

    move-result-object p0

    return-object p0
.end method

.method public static generateKeyPair(Ljava/lang/String;[BLjava/security/spec/AlgorithmParameterSpec;)Ljava/security/KeyPair;
    .locals 0

    .line 258
    invoke-static {p0, p1, p2}, Lcn/hutool/crypto/KeyUtil;->generateKeyPair(Ljava/lang/String;[BLjava/security/spec/AlgorithmParameterSpec;)Ljava/security/KeyPair;

    move-result-object p0

    return-object p0
.end method

.method public static generatePBEKey(Ljava/lang/String;[C)Ljavax/crypto/SecretKey;
    .locals 0

    .line 122
    invoke-static {p0, p1}, Lcn/hutool/crypto/KeyUtil;->generatePBEKey(Ljava/lang/String;[C)Ljavax/crypto/SecretKey;

    move-result-object p0

    return-object p0
.end method

.method public static generatePrivateKey(Ljava/lang/String;Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;
    .locals 0

    .line 158
    invoke-static {p0, p1}, Lcn/hutool/crypto/KeyUtil;->generatePrivateKey(Ljava/lang/String;Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object p0

    return-object p0
.end method

.method public static generatePrivateKey(Ljava/lang/String;[B)Ljava/security/PrivateKey;
    .locals 0

    .line 145
    invoke-static {p0, p1}, Lcn/hutool/crypto/KeyUtil;->generatePrivateKey(Ljava/lang/String;[B)Ljava/security/PrivateKey;

    move-result-object p0

    return-object p0
.end method

.method public static generatePrivateKey(Ljava/security/KeyStore;Ljava/lang/String;[C)Ljava/security/PrivateKey;
    .locals 0

    .line 170
    invoke-static {p0, p1, p2}, Lcn/hutool/crypto/KeyUtil;->generatePrivateKey(Ljava/security/KeyStore;Ljava/lang/String;[C)Ljava/security/PrivateKey;

    move-result-object p0

    return-object p0
.end method

.method public static generatePublicKey(Ljava/lang/String;Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;
    .locals 0

    .line 195
    invoke-static {p0, p1}, Lcn/hutool/crypto/KeyUtil;->generatePublicKey(Ljava/lang/String;Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object p0

    return-object p0
.end method

.method public static generatePublicKey(Ljava/lang/String;[B)Ljava/security/PublicKey;
    .locals 0

    .line 182
    invoke-static {p0, p1}, Lcn/hutool/crypto/KeyUtil;->generatePublicKey(Ljava/lang/String;[B)Ljava/security/PublicKey;

    move-result-object p0

    return-object p0
.end method

.method public static generateSignature(Lcn/hutool/crypto/asymmetric/AsymmetricAlgorithm;Lcn/hutool/crypto/digest/DigestAlgorithm;)Ljava/security/Signature;
    .locals 0

    .line 294
    :try_start_0
    invoke-static {p0, p1}, Lcn/hutool/crypto/SecureUtil;->generateAlgorithm(Lcn/hutool/crypto/asymmetric/AsymmetricAlgorithm;Lcn/hutool/crypto/digest/DigestAlgorithm;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object p0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 296
    new-instance p1, Lcn/hutool/crypto/CryptoException;

    invoke-direct {p1, p0}, Lcn/hutool/crypto/CryptoException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static getAlgorithmAfterWith(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 269
    invoke-static {p0}, Lcn/hutool/crypto/KeyUtil;->getAlgorithmAfterWith(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getCertificate(Ljava/security/KeyStore;Ljava/lang/String;)Ljava/security/cert/Certificate;
    .locals 0

    .line 392
    invoke-static {p0, p1}, Lcn/hutool/crypto/KeyUtil;->getCertificate(Ljava/security/KeyStore;Ljava/lang/String;)Ljava/security/cert/Certificate;

    move-result-object p0

    return-object p0
.end method

.method public static hmac(Lcn/hutool/crypto/digest/HmacAlgorithm;Ljava/lang/String;)Lcn/hutool/crypto/digest/HMac;
    .locals 1

    .line 638
    invoke-static {p1}, Lcn/hutool/core/util/StrUtil;->isNotEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcn/hutool/core/util/StrUtil;->utf8Bytes(Ljava/lang/CharSequence;)[B

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p0, p1}, Lcn/hutool/crypto/SecureUtil;->hmac(Lcn/hutool/crypto/digest/HmacAlgorithm;[B)Lcn/hutool/crypto/digest/HMac;

    move-result-object p0

    return-object p0
.end method

.method public static hmac(Lcn/hutool/crypto/digest/HmacAlgorithm;Ljavax/crypto/SecretKey;)Lcn/hutool/crypto/digest/HMac;
    .locals 1

    .line 665
    invoke-static {p1}, Lcn/hutool/core/util/ObjectUtil;->isNull(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 666
    invoke-virtual {p0}, Lcn/hutool/crypto/digest/HmacAlgorithm;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/hutool/crypto/SecureUtil;->generateKey(Ljava/lang/String;)Ljavax/crypto/SecretKey;

    move-result-object p1

    .line 668
    :cond_0
    new-instance v0, Lcn/hutool/crypto/digest/HMac;

    invoke-direct {v0, p0, p1}, Lcn/hutool/crypto/digest/HMac;-><init>(Lcn/hutool/crypto/digest/HmacAlgorithm;Ljava/security/Key;)V

    return-object v0
.end method

.method public static hmac(Lcn/hutool/crypto/digest/HmacAlgorithm;[B)Lcn/hutool/crypto/digest/HMac;
    .locals 1

    .line 650
    invoke-static {p1}, Lcn/hutool/core/util/ArrayUtil;->isEmpty([B)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 651
    invoke-virtual {p0}, Lcn/hutool/crypto/digest/HmacAlgorithm;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/hutool/crypto/SecureUtil;->generateKey(Ljava/lang/String;)Ljavax/crypto/SecretKey;

    move-result-object p1

    invoke-interface {p1}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object p1

    .line 653
    :cond_0
    new-instance v0, Lcn/hutool/crypto/digest/HMac;

    invoke-direct {v0, p0, p1}, Lcn/hutool/crypto/digest/HMac;-><init>(Lcn/hutool/crypto/digest/HmacAlgorithm;[B)V

    return-object v0
.end method

.method public static hmacMd5()Lcn/hutool/crypto/digest/HMac;
    .locals 2

    .line 710
    new-instance v0, Lcn/hutool/crypto/digest/HMac;

    sget-object v1, Lcn/hutool/crypto/digest/HmacAlgorithm;->HmacMD5:Lcn/hutool/crypto/digest/HmacAlgorithm;

    invoke-direct {v0, v1}, Lcn/hutool/crypto/digest/HMac;-><init>(Lcn/hutool/crypto/digest/HmacAlgorithm;)V

    return-object v0
.end method

.method public static hmacMd5(Ljava/lang/String;)Lcn/hutool/crypto/digest/HMac;
    .locals 1

    .line 682
    invoke-static {p0}, Lcn/hutool/core/util/StrUtil;->isNotEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcn/hutool/core/util/StrUtil;->utf8Bytes(Ljava/lang/CharSequence;)[B

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-static {p0}, Lcn/hutool/crypto/SecureUtil;->hmacMd5([B)Lcn/hutool/crypto/digest/HMac;

    move-result-object p0

    return-object p0
.end method

.method public static hmacMd5([B)Lcn/hutool/crypto/digest/HMac;
    .locals 2

    .line 695
    invoke-static {p0}, Lcn/hutool/core/util/ArrayUtil;->isEmpty([B)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 696
    sget-object p0, Lcn/hutool/crypto/digest/HmacAlgorithm;->HmacMD5:Lcn/hutool/crypto/digest/HmacAlgorithm;

    invoke-virtual {p0}, Lcn/hutool/crypto/digest/HmacAlgorithm;->getValue()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcn/hutool/crypto/SecureUtil;->generateKey(Ljava/lang/String;)Ljavax/crypto/SecretKey;

    move-result-object p0

    invoke-interface {p0}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object p0

    .line 698
    :cond_0
    new-instance v0, Lcn/hutool/crypto/digest/HMac;

    sget-object v1, Lcn/hutool/crypto/digest/HmacAlgorithm;->HmacMD5:Lcn/hutool/crypto/digest/HmacAlgorithm;

    invoke-direct {v0, v1, p0}, Lcn/hutool/crypto/digest/HMac;-><init>(Lcn/hutool/crypto/digest/HmacAlgorithm;[B)V

    return-object v0
.end method

.method public static hmacSha1()Lcn/hutool/crypto/digest/HMac;
    .locals 2

    .line 752
    new-instance v0, Lcn/hutool/crypto/digest/HMac;

    sget-object v1, Lcn/hutool/crypto/digest/HmacAlgorithm;->HmacSHA1:Lcn/hutool/crypto/digest/HmacAlgorithm;

    invoke-direct {v0, v1}, Lcn/hutool/crypto/digest/HMac;-><init>(Lcn/hutool/crypto/digest/HmacAlgorithm;)V

    return-object v0
.end method

.method public static hmacSha1(Ljava/lang/String;)Lcn/hutool/crypto/digest/HMac;
    .locals 1

    .line 724
    invoke-static {p0}, Lcn/hutool/core/util/StrUtil;->isNotEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcn/hutool/core/util/StrUtil;->utf8Bytes(Ljava/lang/CharSequence;)[B

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-static {p0}, Lcn/hutool/crypto/SecureUtil;->hmacSha1([B)Lcn/hutool/crypto/digest/HMac;

    move-result-object p0

    return-object p0
.end method

.method public static hmacSha1([B)Lcn/hutool/crypto/digest/HMac;
    .locals 2

    .line 737
    invoke-static {p0}, Lcn/hutool/core/util/ArrayUtil;->isEmpty([B)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 738
    sget-object p0, Lcn/hutool/crypto/digest/HmacAlgorithm;->HmacMD5:Lcn/hutool/crypto/digest/HmacAlgorithm;

    invoke-virtual {p0}, Lcn/hutool/crypto/digest/HmacAlgorithm;->getValue()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcn/hutool/crypto/SecureUtil;->generateKey(Ljava/lang/String;)Ljavax/crypto/SecretKey;

    move-result-object p0

    invoke-interface {p0}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object p0

    .line 740
    :cond_0
    new-instance v0, Lcn/hutool/crypto/digest/HMac;

    sget-object v1, Lcn/hutool/crypto/digest/HmacAlgorithm;->HmacSHA1:Lcn/hutool/crypto/digest/HmacAlgorithm;

    invoke-direct {v0, v1, p0}, Lcn/hutool/crypto/digest/HMac;-><init>(Lcn/hutool/crypto/digest/HmacAlgorithm;[B)V

    return-object v0
.end method

.method public static hmacSha256()Lcn/hutool/crypto/digest/HMac;
    .locals 2

    .line 796
    new-instance v0, Lcn/hutool/crypto/digest/HMac;

    sget-object v1, Lcn/hutool/crypto/digest/HmacAlgorithm;->HmacSHA256:Lcn/hutool/crypto/digest/HmacAlgorithm;

    invoke-direct {v0, v1}, Lcn/hutool/crypto/digest/HMac;-><init>(Lcn/hutool/crypto/digest/HmacAlgorithm;)V

    return-object v0
.end method

.method public static hmacSha256(Ljava/lang/String;)Lcn/hutool/crypto/digest/HMac;
    .locals 1

    .line 766
    invoke-static {p0}, Lcn/hutool/core/util/StrUtil;->isNotEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcn/hutool/core/util/StrUtil;->utf8Bytes(Ljava/lang/CharSequence;)[B

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-static {p0}, Lcn/hutool/crypto/SecureUtil;->hmacSha256([B)Lcn/hutool/crypto/digest/HMac;

    move-result-object p0

    return-object p0
.end method

.method public static hmacSha256([B)Lcn/hutool/crypto/digest/HMac;
    .locals 2

    .line 780
    invoke-static {p0}, Lcn/hutool/core/util/ArrayUtil;->isEmpty([B)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 781
    sget-object p0, Lcn/hutool/crypto/digest/HmacAlgorithm;->HmacMD5:Lcn/hutool/crypto/digest/HmacAlgorithm;

    invoke-virtual {p0}, Lcn/hutool/crypto/digest/HmacAlgorithm;->getValue()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcn/hutool/crypto/SecureUtil;->generateKey(Ljava/lang/String;)Ljavax/crypto/SecretKey;

    move-result-object p0

    invoke-interface {p0}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object p0

    .line 783
    :cond_0
    new-instance v0, Lcn/hutool/crypto/digest/HMac;

    sget-object v1, Lcn/hutool/crypto/digest/HmacAlgorithm;->HmacSHA256:Lcn/hutool/crypto/digest/HmacAlgorithm;

    invoke-direct {v0, v1, p0}, Lcn/hutool/crypto/digest/HMac;-><init>(Lcn/hutool/crypto/digest/HmacAlgorithm;[B)V

    return-object v0
.end method

.method public static md5()Lcn/hutool/crypto/digest/MD5;
    .locals 1

    .line 508
    new-instance v0, Lcn/hutool/crypto/digest/MD5;

    invoke-direct {v0}, Lcn/hutool/crypto/digest/MD5;-><init>()V

    return-object v0
.end method

.method public static md5(Ljava/io/File;)Ljava/lang/String;
    .locals 1

    .line 538
    new-instance v0, Lcn/hutool/crypto/digest/MD5;

    invoke-direct {v0}, Lcn/hutool/crypto/digest/MD5;-><init>()V

    invoke-virtual {v0, p0}, Lcn/hutool/crypto/digest/MD5;->digestHex(Ljava/io/File;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static md5(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 1

    .line 528
    new-instance v0, Lcn/hutool/crypto/digest/MD5;

    invoke-direct {v0}, Lcn/hutool/crypto/digest/MD5;-><init>()V

    invoke-virtual {v0, p0}, Lcn/hutool/crypto/digest/MD5;->digestHex(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static md5(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 518
    new-instance v0, Lcn/hutool/crypto/digest/MD5;

    invoke-direct {v0}, Lcn/hutool/crypto/digest/MD5;-><init>()V

    invoke-virtual {v0, p0}, Lcn/hutool/crypto/digest/MD5;->digestHex(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static pbkdf2([C[B)Ljava/lang/String;
    .locals 1

    .line 1142
    new-instance v0, Lcn/hutool/crypto/symmetric/PBKDF2;

    invoke-direct {v0}, Lcn/hutool/crypto/symmetric/PBKDF2;-><init>()V

    invoke-virtual {v0, p0, p1}, Lcn/hutool/crypto/symmetric/PBKDF2;->encryptHex([C[B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static rc4(Ljava/lang/String;)Lcn/hutool/crypto/symmetric/RC4;
    .locals 1

    .line 1121
    new-instance v0, Lcn/hutool/crypto/symmetric/RC4;

    invoke-direct {v0, p0}, Lcn/hutool/crypto/symmetric/RC4;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static readCertificate(Ljava/lang/String;Ljava/io/InputStream;)Ljava/security/cert/Certificate;
    .locals 0

    .line 381
    invoke-static {p0, p1}, Lcn/hutool/crypto/KeyUtil;->readCertificate(Ljava/lang/String;Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object p0

    return-object p0
.end method

.method public static readCertificate(Ljava/lang/String;Ljava/io/InputStream;[CLjava/lang/String;)Ljava/security/cert/Certificate;
    .locals 0

    .line 368
    invoke-static {p0, p1, p2, p3}, Lcn/hutool/crypto/KeyUtil;->readCertificate(Ljava/lang/String;Ljava/io/InputStream;[CLjava/lang/String;)Ljava/security/cert/Certificate;

    move-result-object p0

    return-object p0
.end method

.method public static readJKSKeyStore(Ljava/io/InputStream;[C)Ljava/security/KeyStore;
    .locals 0

    .line 310
    invoke-static {p0, p1}, Lcn/hutool/crypto/KeyUtil;->readJKSKeyStore(Ljava/io/InputStream;[C)Ljava/security/KeyStore;

    move-result-object p0

    return-object p0
.end method

.method public static readKeyStore(Ljava/lang/String;Ljava/io/InputStream;[C)Ljava/security/KeyStore;
    .locals 0

    .line 324
    invoke-static {p0, p1, p2}, Lcn/hutool/crypto/KeyUtil;->readKeyStore(Ljava/lang/String;Ljava/io/InputStream;[C)Ljava/security/KeyStore;

    move-result-object p0

    return-object p0
.end method

.method public static readX509Certificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;
    .locals 0

    .line 352
    invoke-static {p0}, Lcn/hutool/crypto/KeyUtil;->readX509Certificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object p0

    return-object p0
.end method

.method public static readX509Certificate(Ljava/io/InputStream;[CLjava/lang/String;)Ljava/security/cert/Certificate;
    .locals 0

    .line 339
    invoke-static {p0, p1, p2}, Lcn/hutool/crypto/KeyUtil;->readX509Certificate(Ljava/io/InputStream;[CLjava/lang/String;)Ljava/security/cert/Certificate;

    move-result-object p0

    return-object p0
.end method

.method public static rsa()Lcn/hutool/crypto/asymmetric/RSA;
    .locals 1

    .line 809
    new-instance v0, Lcn/hutool/crypto/asymmetric/RSA;

    invoke-direct {v0}, Lcn/hutool/crypto/asymmetric/RSA;-><init>()V

    return-object v0
.end method

.method public static rsa(Ljava/lang/String;Ljava/lang/String;)Lcn/hutool/crypto/asymmetric/RSA;
    .locals 1

    .line 823
    new-instance v0, Lcn/hutool/crypto/asymmetric/RSA;

    invoke-direct {v0, p0, p1}, Lcn/hutool/crypto/asymmetric/RSA;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static rsa([B[B)Lcn/hutool/crypto/asymmetric/RSA;
    .locals 1

    .line 837
    new-instance v0, Lcn/hutool/crypto/asymmetric/RSA;

    invoke-direct {v0, p0, p1}, Lcn/hutool/crypto/asymmetric/RSA;-><init>([B[B)V

    return-object v0
.end method

.method public static sha1()Lcn/hutool/crypto/digest/Digester;
    .locals 2

    .line 550
    new-instance v0, Lcn/hutool/crypto/digest/Digester;

    sget-object v1, Lcn/hutool/crypto/digest/DigestAlgorithm;->SHA1:Lcn/hutool/crypto/digest/DigestAlgorithm;

    invoke-direct {v0, v1}, Lcn/hutool/crypto/digest/Digester;-><init>(Lcn/hutool/crypto/digest/DigestAlgorithm;)V

    return-object v0
.end method

.method public static sha1(Ljava/io/File;)Ljava/lang/String;
    .locals 2

    .line 580
    new-instance v0, Lcn/hutool/crypto/digest/Digester;

    sget-object v1, Lcn/hutool/crypto/digest/DigestAlgorithm;->SHA1:Lcn/hutool/crypto/digest/DigestAlgorithm;

    invoke-direct {v0, v1}, Lcn/hutool/crypto/digest/Digester;-><init>(Lcn/hutool/crypto/digest/DigestAlgorithm;)V

    invoke-virtual {v0, p0}, Lcn/hutool/crypto/digest/Digester;->digestHex(Ljava/io/File;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static sha1(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 2

    .line 570
    new-instance v0, Lcn/hutool/crypto/digest/Digester;

    sget-object v1, Lcn/hutool/crypto/digest/DigestAlgorithm;->SHA1:Lcn/hutool/crypto/digest/DigestAlgorithm;

    invoke-direct {v0, v1}, Lcn/hutool/crypto/digest/Digester;-><init>(Lcn/hutool/crypto/digest/DigestAlgorithm;)V

    invoke-virtual {v0, p0}, Lcn/hutool/crypto/digest/Digester;->digestHex(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static sha1(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 560
    new-instance v0, Lcn/hutool/crypto/digest/Digester;

    sget-object v1, Lcn/hutool/crypto/digest/DigestAlgorithm;->SHA1:Lcn/hutool/crypto/digest/DigestAlgorithm;

    invoke-direct {v0, v1}, Lcn/hutool/crypto/digest/Digester;-><init>(Lcn/hutool/crypto/digest/DigestAlgorithm;)V

    invoke-virtual {v0, p0}, Lcn/hutool/crypto/digest/Digester;->digestHex(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static sha256()Lcn/hutool/crypto/digest/Digester;
    .locals 2

    .line 593
    new-instance v0, Lcn/hutool/crypto/digest/Digester;

    sget-object v1, Lcn/hutool/crypto/digest/DigestAlgorithm;->SHA256:Lcn/hutool/crypto/digest/DigestAlgorithm;

    invoke-direct {v0, v1}, Lcn/hutool/crypto/digest/Digester;-><init>(Lcn/hutool/crypto/digest/DigestAlgorithm;)V

    return-object v0
.end method

.method public static sha256(Ljava/io/File;)Ljava/lang/String;
    .locals 2

    .line 626
    new-instance v0, Lcn/hutool/crypto/digest/Digester;

    sget-object v1, Lcn/hutool/crypto/digest/DigestAlgorithm;->SHA256:Lcn/hutool/crypto/digest/DigestAlgorithm;

    invoke-direct {v0, v1}, Lcn/hutool/crypto/digest/Digester;-><init>(Lcn/hutool/crypto/digest/DigestAlgorithm;)V

    invoke-virtual {v0, p0}, Lcn/hutool/crypto/digest/Digester;->digestHex(Ljava/io/File;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static sha256(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 2

    .line 615
    new-instance v0, Lcn/hutool/crypto/digest/Digester;

    sget-object v1, Lcn/hutool/crypto/digest/DigestAlgorithm;->SHA256:Lcn/hutool/crypto/digest/DigestAlgorithm;

    invoke-direct {v0, v1}, Lcn/hutool/crypto/digest/Digester;-><init>(Lcn/hutool/crypto/digest/DigestAlgorithm;)V

    invoke-virtual {v0, p0}, Lcn/hutool/crypto/digest/Digester;->digestHex(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static sha256(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 604
    new-instance v0, Lcn/hutool/crypto/digest/Digester;

    sget-object v1, Lcn/hutool/crypto/digest/DigestAlgorithm;->SHA256:Lcn/hutool/crypto/digest/DigestAlgorithm;

    invoke-direct {v0, v1}, Lcn/hutool/crypto/digest/Digester;-><init>(Lcn/hutool/crypto/digest/DigestAlgorithm;)V

    invoke-virtual {v0, p0}, Lcn/hutool/crypto/digest/Digester;->digestHex(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static sign(Lcn/hutool/crypto/asymmetric/SignAlgorithm;)Lcn/hutool/crypto/asymmetric/Sign;
    .locals 0

    .line 849
    invoke-static {p0}, Lcn/hutool/crypto/SignUtil;->sign(Lcn/hutool/crypto/asymmetric/SignAlgorithm;)Lcn/hutool/crypto/asymmetric/Sign;

    move-result-object p0

    return-object p0
.end method

.method public static sign(Lcn/hutool/crypto/asymmetric/SignAlgorithm;Ljava/lang/String;Ljava/lang/String;)Lcn/hutool/crypto/asymmetric/Sign;
    .locals 0

    .line 864
    invoke-static {p0, p1, p2}, Lcn/hutool/crypto/SignUtil;->sign(Lcn/hutool/crypto/asymmetric/SignAlgorithm;Ljava/lang/String;Ljava/lang/String;)Lcn/hutool/crypto/asymmetric/Sign;

    move-result-object p0

    return-object p0
.end method

.method public static sign(Lcn/hutool/crypto/asymmetric/SignAlgorithm;[B[B)Lcn/hutool/crypto/asymmetric/Sign;
    .locals 0

    .line 879
    invoke-static {p0, p1, p2}, Lcn/hutool/crypto/SignUtil;->sign(Lcn/hutool/crypto/asymmetric/SignAlgorithm;[B[B)Lcn/hutool/crypto/asymmetric/Sign;

    move-result-object p0

    return-object p0
.end method

.method public static varargs signParams(Lcn/hutool/crypto/digest/DigestAlgorithm;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z[Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/hutool/crypto/digest/DigestAlgorithm;",
            "Ljava/util/Map<",
            "**>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z[",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 987
    invoke-static/range {p0 .. p5}, Lcn/hutool/crypto/SignUtil;->signParams(Lcn/hutool/crypto/digest/DigestAlgorithm;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static varargs signParams(Lcn/hutool/crypto/digest/DigestAlgorithm;Ljava/util/Map;[Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/hutool/crypto/digest/DigestAlgorithm;",
            "Ljava/util/Map<",
            "**>;[",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 969
    invoke-static {p0, p1, p2}, Lcn/hutool/crypto/SignUtil;->signParams(Lcn/hutool/crypto/digest/DigestAlgorithm;Ljava/util/Map;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static varargs signParams(Lcn/hutool/crypto/symmetric/SymmetricCrypto;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z[Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/hutool/crypto/symmetric/SymmetricCrypto;",
            "Ljava/util/Map<",
            "**>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z[",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 912
    invoke-static/range {p0 .. p5}, Lcn/hutool/crypto/SignUtil;->signParams(Lcn/hutool/crypto/symmetric/SymmetricCrypto;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static varargs signParams(Lcn/hutool/crypto/symmetric/SymmetricCrypto;Ljava/util/Map;[Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/hutool/crypto/symmetric/SymmetricCrypto;",
            "Ljava/util/Map<",
            "**>;[",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 894
    invoke-static {p0, p1, p2}, Lcn/hutool/crypto/SignUtil;->signParams(Lcn/hutool/crypto/symmetric/SymmetricCrypto;Ljava/util/Map;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static varargs signParamsMd5(Ljava/util/Map;[Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "**>;[",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 926
    invoke-static {p0, p1}, Lcn/hutool/crypto/SignUtil;->signParamsMd5(Ljava/util/Map;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static varargs signParamsSha1(Ljava/util/Map;[Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "**>;[",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 940
    invoke-static {p0, p1}, Lcn/hutool/crypto/SignUtil;->signParamsSha1(Ljava/util/Map;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static varargs signParamsSha256(Ljava/util/Map;[Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "**>;[",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 954
    invoke-static {p0, p1}, Lcn/hutool/crypto/SignUtil;->signParamsSha256(Ljava/util/Map;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static zuc128([B[B)Lcn/hutool/crypto/symmetric/ZUC;
    .locals 2

    .line 1168
    new-instance v0, Lcn/hutool/crypto/symmetric/ZUC;

    sget-object v1, Lcn/hutool/crypto/symmetric/ZUC$ZUCAlgorithm;->ZUC_128:Lcn/hutool/crypto/symmetric/ZUC$ZUCAlgorithm;

    invoke-direct {v0, v1, p0, p1}, Lcn/hutool/crypto/symmetric/ZUC;-><init>(Lcn/hutool/crypto/symmetric/ZUC$ZUCAlgorithm;[B[B)V

    return-object v0
.end method

.method public static zuc256([B[B)Lcn/hutool/crypto/symmetric/ZUC;
    .locals 2

    .line 1180
    new-instance v0, Lcn/hutool/crypto/symmetric/ZUC;

    sget-object v1, Lcn/hutool/crypto/symmetric/ZUC$ZUCAlgorithm;->ZUC_256:Lcn/hutool/crypto/symmetric/ZUC$ZUCAlgorithm;

    invoke-direct {v0, v1, p0, p1}, Lcn/hutool/crypto/symmetric/ZUC;-><init>(Lcn/hutool/crypto/symmetric/ZUC$ZUCAlgorithm;[B[B)V

    return-object v0
.end method
