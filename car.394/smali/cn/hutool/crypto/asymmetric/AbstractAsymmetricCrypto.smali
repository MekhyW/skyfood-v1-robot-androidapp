.class public abstract Lcn/hutool/crypto/asymmetric/AbstractAsymmetricCrypto;
.super Lcn/hutool/crypto/asymmetric/BaseAsymmetric;
.source "AbstractAsymmetricCrypto.java"

# interfaces
.implements Lcn/hutool/crypto/asymmetric/AsymmetricEncryptor;
.implements Lcn/hutool/crypto/asymmetric/AsymmetricDecryptor;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcn/hutool/crypto/asymmetric/AbstractAsymmetricCrypto<",
        "TT;>;>",
        "Lcn/hutool/crypto/asymmetric/BaseAsymmetric<",
        "TT;>;",
        "Lcn/hutool/crypto/asymmetric/AsymmetricEncryptor;",
        "Lcn/hutool/crypto/asymmetric/AsymmetricDecryptor;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/security/PrivateKey;Ljava/security/PublicKey;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1, p2, p3}, Lcn/hutool/crypto/asymmetric/BaseAsymmetric;-><init>(Ljava/lang/String;Ljava/security/PrivateKey;Ljava/security/PublicKey;)V

    return-void
.end method
