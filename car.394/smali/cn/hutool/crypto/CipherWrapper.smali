.class public Lcn/hutool/crypto/CipherWrapper;
.super Ljava/lang/Object;
.source "CipherWrapper.java"


# instance fields
.field private final cipher:Ljavax/crypto/Cipher;

.field private params:Ljava/security/spec/AlgorithmParameterSpec;

.field private random:Ljava/security/SecureRandom;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 39
    invoke-static {p1}, Lcn/hutool/crypto/SecureUtil;->createCipher(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object p1

    invoke-direct {p0, p1}, Lcn/hutool/crypto/CipherWrapper;-><init>(Ljavax/crypto/Cipher;)V

    return-void
.end method

.method public constructor <init>(Ljavax/crypto/Cipher;)V
    .locals 0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lcn/hutool/crypto/CipherWrapper;->cipher:Ljavax/crypto/Cipher;

    return-void
.end method


# virtual methods
.method public getCipher()Ljavax/crypto/Cipher;
    .locals 1

    .line 89
    iget-object v0, p0, Lcn/hutool/crypto/CipherWrapper;->cipher:Ljavax/crypto/Cipher;

    return-object v0
.end method

.method public getParams()Ljava/security/spec/AlgorithmParameterSpec;
    .locals 1

    .line 58
    iget-object v0, p0, Lcn/hutool/crypto/CipherWrapper;->params:Ljava/security/spec/AlgorithmParameterSpec;

    return-object v0
.end method

.method public initMode(ILjava/security/Key;)Lcn/hutool/crypto/CipherWrapper;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .line 103
    iget-object v0, p0, Lcn/hutool/crypto/CipherWrapper;->cipher:Ljavax/crypto/Cipher;

    .line 104
    iget-object v1, p0, Lcn/hutool/crypto/CipherWrapper;->params:Ljava/security/spec/AlgorithmParameterSpec;

    .line 105
    iget-object v2, p0, Lcn/hutool/crypto/CipherWrapper;->random:Ljava/security/SecureRandom;

    if-eqz v1, :cond_1

    if-eqz v2, :cond_0

    .line 108
    invoke-virtual {v0, p1, p2, v1, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V

    goto :goto_0

    .line 110
    :cond_0
    invoke-virtual {v0, p1, p2, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    goto :goto_0

    :cond_1
    if-eqz v2, :cond_2

    .line 114
    invoke-virtual {v0, p1, p2, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/SecureRandom;)V

    goto :goto_0

    .line 116
    :cond_2
    invoke-virtual {v0, p1, p2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    :goto_0
    return-object p0
.end method

.method public setParams(Ljava/security/spec/AlgorithmParameterSpec;)Lcn/hutool/crypto/CipherWrapper;
    .locals 0

    .line 68
    iput-object p1, p0, Lcn/hutool/crypto/CipherWrapper;->params:Ljava/security/spec/AlgorithmParameterSpec;

    return-object p0
.end method

.method public setRandom(Ljava/security/SecureRandom;)Lcn/hutool/crypto/CipherWrapper;
    .locals 0

    .line 79
    iput-object p1, p0, Lcn/hutool/crypto/CipherWrapper;->random:Ljava/security/SecureRandom;

    return-object p0
.end method
