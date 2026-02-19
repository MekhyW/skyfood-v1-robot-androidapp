.class public Lcn/hutool/crypto/digest/mac/BCHMacEngine;
.super Lcn/hutool/crypto/digest/mac/BCMacEngine;
.source "BCHMacEngine.java"


# direct methods
.method public constructor <init>(Lorg/bouncycastle/crypto/Digest;Lorg/bouncycastle/crypto/CipherParameters;)V
    .locals 1

    .line 52
    new-instance v0, Lorg/bouncycastle/crypto/macs/HMac;

    invoke-direct {v0, p1}, Lorg/bouncycastle/crypto/macs/HMac;-><init>(Lorg/bouncycastle/crypto/Digest;)V

    invoke-direct {p0, v0, p2}, Lcn/hutool/crypto/digest/mac/BCHMacEngine;-><init>(Lorg/bouncycastle/crypto/macs/HMac;Lorg/bouncycastle/crypto/CipherParameters;)V

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/crypto/Digest;[B)V
    .locals 1

    .line 41
    new-instance v0, Lorg/bouncycastle/crypto/params/KeyParameter;

    invoke-direct {v0, p2}, Lorg/bouncycastle/crypto/params/KeyParameter;-><init>([B)V

    invoke-direct {p0, p1, v0}, Lcn/hutool/crypto/digest/mac/BCHMacEngine;-><init>(Lorg/bouncycastle/crypto/Digest;Lorg/bouncycastle/crypto/CipherParameters;)V

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/crypto/Digest;[B[B)V
    .locals 2

    .line 30
    new-instance v0, Lorg/bouncycastle/crypto/params/ParametersWithIV;

    new-instance v1, Lorg/bouncycastle/crypto/params/KeyParameter;

    invoke-direct {v1, p2}, Lorg/bouncycastle/crypto/params/KeyParameter;-><init>([B)V

    invoke-direct {v0, v1, p3}, Lorg/bouncycastle/crypto/params/ParametersWithIV;-><init>(Lorg/bouncycastle/crypto/CipherParameters;[B)V

    invoke-direct {p0, p1, v0}, Lcn/hutool/crypto/digest/mac/BCHMacEngine;-><init>(Lorg/bouncycastle/crypto/Digest;Lorg/bouncycastle/crypto/CipherParameters;)V

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/crypto/macs/HMac;Lorg/bouncycastle/crypto/CipherParameters;)V
    .locals 0

    .line 63
    invoke-direct {p0, p1, p2}, Lcn/hutool/crypto/digest/mac/BCMacEngine;-><init>(Lorg/bouncycastle/crypto/Mac;Lorg/bouncycastle/crypto/CipherParameters;)V

    return-void
.end method


# virtual methods
.method public init(Lorg/bouncycastle/crypto/Digest;Lorg/bouncycastle/crypto/CipherParameters;)Lcn/hutool/crypto/digest/mac/BCHMacEngine;
    .locals 1

    .line 76
    new-instance v0, Lorg/bouncycastle/crypto/macs/HMac;

    invoke-direct {v0, p1}, Lorg/bouncycastle/crypto/macs/HMac;-><init>(Lorg/bouncycastle/crypto/Digest;)V

    invoke-virtual {p0, v0, p2}, Lcn/hutool/crypto/digest/mac/BCHMacEngine;->init(Lorg/bouncycastle/crypto/Mac;Lorg/bouncycastle/crypto/CipherParameters;)Lcn/hutool/crypto/digest/mac/BCMacEngine;

    move-result-object p1

    check-cast p1, Lcn/hutool/crypto/digest/mac/BCHMacEngine;

    return-object p1
.end method
