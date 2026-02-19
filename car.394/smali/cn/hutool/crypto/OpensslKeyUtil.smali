.class public Lcn/hutool/crypto/OpensslKeyUtil;
.super Ljava/lang/Object;
.source "OpensslKeyUtil.java"


# static fields
.field private static final pemKeyConverter:Lorg/bouncycastle/openssl/jcajce/JcaPEMKeyConverter;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 40
    new-instance v0, Lorg/bouncycastle/openssl/jcajce/JcaPEMKeyConverter;

    invoke-direct {v0}, Lorg/bouncycastle/openssl/jcajce/JcaPEMKeyConverter;-><init>()V

    sget-object v1, Lcn/hutool/crypto/GlobalBouncyCastleProvider;->INSTANCE:Lcn/hutool/crypto/GlobalBouncyCastleProvider;

    invoke-virtual {v1}, Lcn/hutool/crypto/GlobalBouncyCastleProvider;->getProvider()Ljava/security/Provider;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/openssl/jcajce/JcaPEMKeyConverter;->setProvider(Ljava/security/Provider;)Lorg/bouncycastle/openssl/jcajce/JcaPEMKeyConverter;

    move-result-object v0

    sput-object v0, Lcn/hutool/crypto/OpensslKeyUtil;->pemKeyConverter:Lorg/bouncycastle/openssl/jcajce/JcaPEMKeyConverter;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decrypt(Lorg/bouncycastle/pkcs/PKCS8EncryptedPrivateKeyInfo;[C)Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/hutool/crypto/CryptoException;
        }
    .end annotation

    .line 115
    :try_start_0
    new-instance v0, Lorg/bouncycastle/openssl/jcajce/JceOpenSSLPKCS8DecryptorProviderBuilder;

    invoke-direct {v0}, Lorg/bouncycastle/openssl/jcajce/JceOpenSSLPKCS8DecryptorProviderBuilder;-><init>()V

    sget-object v1, Lcn/hutool/crypto/GlobalBouncyCastleProvider;->INSTANCE:Lcn/hutool/crypto/GlobalBouncyCastleProvider;

    invoke-virtual {v1}, Lcn/hutool/crypto/GlobalBouncyCastleProvider;->getProvider()Ljava/security/Provider;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/openssl/jcajce/JceOpenSSLPKCS8DecryptorProviderBuilder;->setProvider(Ljava/security/Provider;)Lorg/bouncycastle/openssl/jcajce/JceOpenSSLPKCS8DecryptorProviderBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/bouncycastle/openssl/jcajce/JceOpenSSLPKCS8DecryptorProviderBuilder;->build([C)Lorg/bouncycastle/operator/InputDecryptorProvider;

    move-result-object p1

    .line 116
    invoke-virtual {p0, p1}, Lorg/bouncycastle/pkcs/PKCS8EncryptedPrivateKeyInfo;->decryptPrivateKeyInfo(Lorg/bouncycastle/operator/InputDecryptorProvider;)Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;

    move-result-object p0
    :try_end_0
    .catch Lorg/bouncycastle/operator/OperatorCreationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/bouncycastle/pkcs/PKCSException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    .line 118
    :goto_0
    new-instance p1, Lcn/hutool/crypto/CryptoException;

    invoke-direct {p1, p0}, Lcn/hutool/crypto/CryptoException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static decrypt(Lorg/bouncycastle/openssl/PEMEncryptedKeyPair;[C)Lorg/bouncycastle/openssl/PEMKeyPair;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/hutool/core/io/IORuntimeException;
        }
    .end annotation

    .line 133
    :try_start_0
    new-instance v0, Lorg/bouncycastle/openssl/jcajce/JcePEMDecryptorProviderBuilder;

    invoke-direct {v0}, Lorg/bouncycastle/openssl/jcajce/JcePEMDecryptorProviderBuilder;-><init>()V

    sget-object v1, Lcn/hutool/crypto/GlobalBouncyCastleProvider;->INSTANCE:Lcn/hutool/crypto/GlobalBouncyCastleProvider;

    invoke-virtual {v1}, Lcn/hutool/crypto/GlobalBouncyCastleProvider;->getProvider()Ljava/security/Provider;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/openssl/jcajce/JcePEMDecryptorProviderBuilder;->setProvider(Ljava/security/Provider;)Lorg/bouncycastle/openssl/jcajce/JcePEMDecryptorProviderBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/bouncycastle/openssl/jcajce/JcePEMDecryptorProviderBuilder;->build([C)Lorg/bouncycastle/openssl/PEMDecryptorProvider;

    move-result-object p1

    .line 134
    invoke-virtual {p0, p1}, Lorg/bouncycastle/openssl/PEMEncryptedKeyPair;->decryptKeyPair(Lorg/bouncycastle/openssl/PEMDecryptorProvider;)Lorg/bouncycastle/openssl/PEMKeyPair;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 136
    new-instance p1, Lcn/hutool/core/io/IORuntimeException;

    invoke-direct {p1, p0}, Lcn/hutool/core/io/IORuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static getKeyPair(Lorg/bouncycastle/openssl/PEMKeyPair;)Ljava/security/KeyPair;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/hutool/crypto/CryptoException;
        }
    .end annotation

    .line 81
    :try_start_0
    sget-object v0, Lcn/hutool/crypto/OpensslKeyUtil;->pemKeyConverter:Lorg/bouncycastle/openssl/jcajce/JcaPEMKeyConverter;

    invoke-virtual {v0, p0}, Lorg/bouncycastle/openssl/jcajce/JcaPEMKeyConverter;->getKeyPair(Lorg/bouncycastle/openssl/PEMKeyPair;)Ljava/security/KeyPair;

    move-result-object p0
    :try_end_0
    .catch Lorg/bouncycastle/openssl/PEMException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 83
    new-instance v0, Lcn/hutool/crypto/CryptoException;

    invoke-direct {v0, p0}, Lcn/hutool/crypto/CryptoException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static getPrivateKey(Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;)Ljava/security/PrivateKey;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/hutool/crypto/CryptoException;
        }
    .end annotation

    .line 51
    :try_start_0
    sget-object v0, Lcn/hutool/crypto/OpensslKeyUtil;->pemKeyConverter:Lorg/bouncycastle/openssl/jcajce/JcaPEMKeyConverter;

    invoke-virtual {v0, p0}, Lorg/bouncycastle/openssl/jcajce/JcaPEMKeyConverter;->getPrivateKey(Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;)Ljava/security/PrivateKey;

    move-result-object p0
    :try_end_0
    .catch Lorg/bouncycastle/openssl/PEMException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 53
    new-instance v0, Lcn/hutool/crypto/CryptoException;

    invoke-direct {v0, p0}, Lcn/hutool/crypto/CryptoException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static getPublicKey(Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;)Ljava/security/PublicKey;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/hutool/crypto/CryptoException;
        }
    .end annotation

    .line 66
    :try_start_0
    sget-object v0, Lcn/hutool/crypto/OpensslKeyUtil;->pemKeyConverter:Lorg/bouncycastle/openssl/jcajce/JcaPEMKeyConverter;

    invoke-virtual {v0, p0}, Lorg/bouncycastle/openssl/jcajce/JcaPEMKeyConverter;->getPublicKey(Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;)Ljava/security/PublicKey;

    move-result-object p0
    :try_end_0
    .catch Lorg/bouncycastle/openssl/PEMException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 68
    new-instance v0, Lcn/hutool/crypto/CryptoException;

    invoke-direct {v0, p0}, Lcn/hutool/crypto/CryptoException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static readPemKey(Ljava/io/InputStream;[C)Ljava/security/Key;
    .locals 2

    .line 97
    :try_start_0
    new-instance v0, Lorg/bouncycastle/openssl/PEMParser;

    new-instance v1, Ljava/io/InputStreamReader;

    invoke-direct {v1, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Lorg/bouncycastle/openssl/PEMParser;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    :try_start_1
    invoke-virtual {v0}, Lorg/bouncycastle/openssl/PEMParser;->readObject()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0, p1}, Lcn/hutool/crypto/OpensslKeyUtil;->readPemKeyFromKeyObject(Ljava/lang/Object;[C)Ljava/security/Key;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 99
    :try_start_2
    invoke-virtual {v0}, Lorg/bouncycastle/openssl/PEMParser;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    return-object p0

    :catchall_0
    move-exception p0

    .line 97
    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p1

    .line 99
    :try_start_4
    invoke-virtual {v0}, Lorg/bouncycastle/openssl/PEMParser;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v0

    :try_start_5
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p1
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    :catch_0
    move-exception p0

    .line 100
    new-instance p1, Lcn/hutool/crypto/CryptoException;

    invoke-direct {p1, p0}, Lcn/hutool/crypto/CryptoException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method private static readPemKeyFromKeyObject(Ljava/lang/Object;[C)Ljava/security/Key;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/hutool/crypto/CryptoException;
        }
    .end annotation

    .line 158
    instance-of v0, p0, Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;

    if-eqz v0, :cond_0

    .line 160
    check-cast p0, Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;

    invoke-static {p0}, Lcn/hutool/crypto/OpensslKeyUtil;->getPrivateKey(Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;)Ljava/security/PrivateKey;

    move-result-object p0

    return-object p0

    .line 161
    :cond_0
    instance-of v0, p0, Lorg/bouncycastle/openssl/PEMKeyPair;

    if-eqz v0, :cond_1

    .line 163
    check-cast p0, Lorg/bouncycastle/openssl/PEMKeyPair;

    invoke-static {p0}, Lcn/hutool/crypto/OpensslKeyUtil;->getKeyPair(Lorg/bouncycastle/openssl/PEMKeyPair;)Ljava/security/KeyPair;

    move-result-object p0

    invoke-virtual {p0}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    move-result-object p0

    return-object p0

    .line 164
    :cond_1
    instance-of v0, p0, Lorg/bouncycastle/pkcs/PKCS8EncryptedPrivateKeyInfo;

    if-eqz v0, :cond_2

    .line 166
    check-cast p0, Lorg/bouncycastle/pkcs/PKCS8EncryptedPrivateKeyInfo;

    invoke-static {p0, p1}, Lcn/hutool/crypto/OpensslKeyUtil;->decrypt(Lorg/bouncycastle/pkcs/PKCS8EncryptedPrivateKeyInfo;[C)Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;

    move-result-object p0

    invoke-static {p0}, Lcn/hutool/crypto/OpensslKeyUtil;->getPrivateKey(Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;)Ljava/security/PrivateKey;

    move-result-object p0

    return-object p0

    .line 167
    :cond_2
    instance-of v0, p0, Lorg/bouncycastle/openssl/PEMEncryptedKeyPair;

    if-eqz v0, :cond_3

    .line 169
    check-cast p0, Lorg/bouncycastle/openssl/PEMEncryptedKeyPair;

    invoke-static {p0, p1}, Lcn/hutool/crypto/OpensslKeyUtil;->decrypt(Lorg/bouncycastle/openssl/PEMEncryptedKeyPair;[C)Lorg/bouncycastle/openssl/PEMKeyPair;

    move-result-object p0

    invoke-virtual {p0}, Lorg/bouncycastle/openssl/PEMKeyPair;->getPrivateKeyInfo()Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;

    move-result-object p0

    invoke-static {p0}, Lcn/hutool/crypto/OpensslKeyUtil;->getPrivateKey(Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;)Ljava/security/PrivateKey;

    move-result-object p0

    return-object p0

    .line 170
    :cond_3
    instance-of p1, p0, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    if-eqz p1, :cond_4

    .line 172
    check-cast p0, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    invoke-static {p0}, Lcn/hutool/crypto/OpensslKeyUtil;->getPublicKey(Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;)Ljava/security/PublicKey;

    move-result-object p0

    return-object p0

    .line 173
    :cond_4
    instance-of p1, p0, Lorg/bouncycastle/cert/X509CertificateHolder;

    if-eqz p1, :cond_5

    .line 175
    check-cast p0, Lorg/bouncycastle/cert/X509CertificateHolder;

    invoke-virtual {p0}, Lorg/bouncycastle/cert/X509CertificateHolder;->getSubjectPublicKeyInfo()Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    move-result-object p0

    invoke-static {p0}, Lcn/hutool/crypto/OpensslKeyUtil;->getPublicKey(Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;)Ljava/security/PublicKey;

    move-result-object p0

    return-object p0

    .line 176
    :cond_5
    instance-of p1, p0, Lorg/bouncycastle/openssl/X509TrustedCertificateBlock;

    if-eqz p1, :cond_6

    .line 178
    check-cast p0, Lorg/bouncycastle/openssl/X509TrustedCertificateBlock;

    invoke-virtual {p0}, Lorg/bouncycastle/openssl/X509TrustedCertificateBlock;->getCertificateHolder()Lorg/bouncycastle/cert/X509CertificateHolder;

    move-result-object p0

    invoke-virtual {p0}, Lorg/bouncycastle/cert/X509CertificateHolder;->getSubjectPublicKeyInfo()Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    move-result-object p0

    invoke-static {p0}, Lcn/hutool/crypto/OpensslKeyUtil;->getPublicKey(Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;)Ljava/security/PublicKey;

    move-result-object p0

    return-object p0

    .line 179
    :cond_6
    instance-of p1, p0, Lorg/bouncycastle/pkcs/PKCS10CertificationRequest;

    if-eqz p1, :cond_7

    .line 181
    check-cast p0, Lorg/bouncycastle/pkcs/PKCS10CertificationRequest;

    invoke-virtual {p0}, Lorg/bouncycastle/pkcs/PKCS10CertificationRequest;->getSubjectPublicKeyInfo()Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    move-result-object p0

    invoke-static {p0}, Lcn/hutool/crypto/OpensslKeyUtil;->getPublicKey(Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;)Ljava/security/PublicKey;

    move-result-object p0

    return-object p0

    .line 184
    :cond_7
    new-instance p1, Lcn/hutool/crypto/CryptoException;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    aput-object p0, v0, v1

    const-string p0, "Unsupported key object type: {}"

    invoke-direct {p1, p0, v0}, Lcn/hutool/crypto/CryptoException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p1
.end method
