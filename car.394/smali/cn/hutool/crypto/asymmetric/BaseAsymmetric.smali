.class public Lcn/hutool/crypto/asymmetric/BaseAsymmetric;
.super Ljava/lang/Object;
.source "BaseAsymmetric.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcn/hutool/crypto/asymmetric/BaseAsymmetric<",
        "TT;>;>",
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field protected algorithm:Ljava/lang/String;

.field protected final lock:Ljava/util/concurrent/locks/Lock;

.field protected privateKey:Ljava/security/PrivateKey;

.field protected publicKey:Ljava/security/PublicKey;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/security/PrivateKey;Ljava/security/PublicKey;)V
    .locals 1

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcn/hutool/crypto/asymmetric/BaseAsymmetric;->lock:Ljava/util/concurrent/locks/Lock;

    .line 56
    invoke-virtual {p0, p1, p2, p3}, Lcn/hutool/crypto/asymmetric/BaseAsymmetric;->init(Ljava/lang/String;Ljava/security/PrivateKey;Ljava/security/PublicKey;)Lcn/hutool/crypto/asymmetric/BaseAsymmetric;

    return-void
.end method


# virtual methods
.method protected getKeyByType(Lcn/hutool/crypto/asymmetric/KeyType;)Ljava/security/Key;
    .locals 3

    .line 189
    sget-object v0, Lcn/hutool/crypto/asymmetric/BaseAsymmetric$1;->$SwitchMap$cn$hutool$crypto$asymmetric$KeyType:[I

    invoke-virtual {p1}, Lcn/hutool/crypto/asymmetric/KeyType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 196
    iget-object p1, p0, Lcn/hutool/crypto/asymmetric/BaseAsymmetric;->publicKey:Ljava/security/PublicKey;

    if-eqz p1, :cond_0

    return-object p1

    .line 197
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Public key must not null when use it !"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 201
    :cond_1
    new-instance v0, Lcn/hutool/crypto/CryptoException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unsupported key type: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcn/hutool/crypto/CryptoException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 191
    :cond_2
    iget-object p1, p0, Lcn/hutool/crypto/asymmetric/BaseAsymmetric;->privateKey:Ljava/security/PrivateKey;

    if-eqz p1, :cond_3

    return-object p1

    .line 192
    :cond_3
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Private key must not null when use it !"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getPrivateKey()Ljava/security/PrivateKey;
    .locals 1

    .line 139
    iget-object v0, p0, Lcn/hutool/crypto/asymmetric/BaseAsymmetric;->privateKey:Ljava/security/PrivateKey;

    return-object v0
.end method

.method public getPrivateKeyBase64()Ljava/lang/String;
    .locals 1

    .line 148
    invoke-virtual {p0}, Lcn/hutool/crypto/asymmetric/BaseAsymmetric;->getPrivateKey()Ljava/security/PrivateKey;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 149
    :cond_0
    invoke-interface {v0}, Ljava/security/PrivateKey;->getEncoded()[B

    move-result-object v0

    invoke-static {v0}, Lcn/hutool/core/codec/Base64;->encode([B)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getPublicKey()Ljava/security/PublicKey;
    .locals 1

    .line 108
    iget-object v0, p0, Lcn/hutool/crypto/asymmetric/BaseAsymmetric;->publicKey:Ljava/security/PublicKey;

    return-object v0
.end method

.method public getPublicKeyBase64()Ljava/lang/String;
    .locals 1

    .line 117
    invoke-virtual {p0}, Lcn/hutool/crypto/asymmetric/BaseAsymmetric;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 118
    :cond_0
    invoke-interface {v0}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v0

    invoke-static {v0}, Lcn/hutool/core/codec/Base64;->encode([B)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method protected init(Ljava/lang/String;Ljava/security/PrivateKey;Ljava/security/PublicKey;)Lcn/hutool/crypto/asymmetric/BaseAsymmetric;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/security/PrivateKey;",
            "Ljava/security/PublicKey;",
            ")TT;"
        }
    .end annotation

    .line 72
    iput-object p1, p0, Lcn/hutool/crypto/asymmetric/BaseAsymmetric;->algorithm:Ljava/lang/String;

    if-nez p2, :cond_0

    if-nez p3, :cond_0

    .line 75
    invoke-virtual {p0}, Lcn/hutool/crypto/asymmetric/BaseAsymmetric;->initKeys()Lcn/hutool/crypto/asymmetric/BaseAsymmetric;

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    .line 78
    iput-object p2, p0, Lcn/hutool/crypto/asymmetric/BaseAsymmetric;->privateKey:Ljava/security/PrivateKey;

    :cond_1
    if-eqz p3, :cond_2

    .line 81
    iput-object p3, p0, Lcn/hutool/crypto/asymmetric/BaseAsymmetric;->publicKey:Ljava/security/PublicKey;

    :cond_2
    :goto_0
    return-object p0
.end method

.method public initKeys()Lcn/hutool/crypto/asymmetric/BaseAsymmetric;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 94
    iget-object v0, p0, Lcn/hutool/crypto/asymmetric/BaseAsymmetric;->algorithm:Ljava/lang/String;

    invoke-static {v0}, Lcn/hutool/crypto/KeyUtil;->generateKeyPair(Ljava/lang/String;)Ljava/security/KeyPair;

    move-result-object v0

    .line 95
    invoke-virtual {v0}, Ljava/security/KeyPair;->getPublic()Ljava/security/PublicKey;

    move-result-object v1

    iput-object v1, p0, Lcn/hutool/crypto/asymmetric/BaseAsymmetric;->publicKey:Ljava/security/PublicKey;

    .line 96
    invoke-virtual {v0}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    move-result-object v0

    iput-object v0, p0, Lcn/hutool/crypto/asymmetric/BaseAsymmetric;->privateKey:Ljava/security/PrivateKey;

    return-object p0
.end method

.method public setKey(Ljava/security/Key;)Lcn/hutool/crypto/asymmetric/BaseAsymmetric;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/security/Key;",
            ")TT;"
        }
    .end annotation

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "key must be not null !"

    .line 172
    invoke-static {p1, v2, v1}, Lcn/hutool/core/lang/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    instance-of v1, p1, Ljava/security/PublicKey;

    if-eqz v1, :cond_0

    .line 175
    check-cast p1, Ljava/security/PublicKey;

    invoke-virtual {p0, p1}, Lcn/hutool/crypto/asymmetric/BaseAsymmetric;->setPublicKey(Ljava/security/PublicKey;)Lcn/hutool/crypto/asymmetric/BaseAsymmetric;

    move-result-object p1

    return-object p1

    .line 176
    :cond_0
    instance-of v1, p1, Ljava/security/PrivateKey;

    if-eqz v1, :cond_1

    .line 177
    check-cast p1, Ljava/security/PrivateKey;

    invoke-virtual {p0, p1}, Lcn/hutool/crypto/asymmetric/BaseAsymmetric;->setPrivateKey(Ljava/security/PrivateKey;)Lcn/hutool/crypto/asymmetric/BaseAsymmetric;

    move-result-object p1

    return-object p1

    .line 179
    :cond_1
    new-instance v1, Lcn/hutool/crypto/CryptoException;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    aput-object p1, v2, v0

    const-string p1, "Unsupported key type: {}"

    invoke-direct {v1, p1, v2}, Lcn/hutool/crypto/CryptoException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v1
.end method

.method public setPrivateKey(Ljava/security/PrivateKey;)Lcn/hutool/crypto/asymmetric/BaseAsymmetric;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/security/PrivateKey;",
            ")TT;"
        }
    .end annotation

    .line 160
    iput-object p1, p0, Lcn/hutool/crypto/asymmetric/BaseAsymmetric;->privateKey:Ljava/security/PrivateKey;

    return-object p0
.end method

.method public setPublicKey(Ljava/security/PublicKey;)Lcn/hutool/crypto/asymmetric/BaseAsymmetric;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/security/PublicKey;",
            ")TT;"
        }
    .end annotation

    .line 129
    iput-object p1, p0, Lcn/hutool/crypto/asymmetric/BaseAsymmetric;->publicKey:Ljava/security/PublicKey;

    return-object p0
.end method
