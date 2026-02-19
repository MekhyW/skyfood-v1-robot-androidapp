.class public Lcn/hutool/crypto/digest/HMac;
.super Lcn/hutool/crypto/digest/mac/Mac;
.source "HMac.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>(Lcn/hutool/crypto/digest/HmacAlgorithm;)V
    .locals 2

    const/4 v0, 0x0

    .line 32
    move-object v1, v0

    check-cast v1, Ljava/security/Key;

    invoke-direct {p0, p1, v0}, Lcn/hutool/crypto/digest/HMac;-><init>(Lcn/hutool/crypto/digest/HmacAlgorithm;Ljava/security/Key;)V

    return-void
.end method

.method public constructor <init>(Lcn/hutool/crypto/digest/HmacAlgorithm;Ljava/security/Key;)V
    .locals 0

    .line 52
    invoke-virtual {p1}, Lcn/hutool/crypto/digest/HmacAlgorithm;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcn/hutool/crypto/digest/HMac;-><init>(Ljava/lang/String;Ljava/security/Key;)V

    return-void
.end method

.method public constructor <init>(Lcn/hutool/crypto/digest/HmacAlgorithm;[B)V
    .locals 0

    .line 42
    invoke-virtual {p1}, Lcn/hutool/crypto/digest/HmacAlgorithm;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcn/hutool/crypto/digest/HMac;-><init>(Ljava/lang/String;[B)V

    return-void
.end method

.method public constructor <init>(Lcn/hutool/crypto/digest/mac/MacEngine;)V
    .locals 0

    .line 96
    invoke-direct {p0, p1}, Lcn/hutool/crypto/digest/mac/Mac;-><init>(Lcn/hutool/crypto/digest/mac/MacEngine;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/security/Key;)V
    .locals 1

    const/4 v0, 0x0

    .line 74
    invoke-direct {p0, p1, p2, v0}, Lcn/hutool/crypto/digest/HMac;-><init>(Ljava/lang/String;Ljava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V
    .locals 0

    .line 86
    invoke-static {p1, p2, p3}, Lcn/hutool/crypto/digest/mac/MacEngineFactory;->createEngine(Ljava/lang/String;Ljava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)Lcn/hutool/crypto/digest/mac/MacEngine;

    move-result-object p1

    invoke-direct {p0, p1}, Lcn/hutool/crypto/digest/HMac;-><init>(Lcn/hutool/crypto/digest/mac/MacEngine;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[B)V
    .locals 1

    .line 63
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    invoke-direct {v0, p2, p1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-direct {p0, p1, v0}, Lcn/hutool/crypto/digest/HMac;-><init>(Ljava/lang/String;Ljava/security/Key;)V

    return-void
.end method
