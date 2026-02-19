.class public Lcn/hutool/crypto/symmetric/ZUC;
.super Lcn/hutool/crypto/symmetric/SymmetricCrypto;
.source "ZUC.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/hutool/crypto/symmetric/ZUC$ZUCAlgorithm;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>(Lcn/hutool/crypto/symmetric/ZUC$ZUCAlgorithm;[B[B)V
    .locals 2

    .line 37
    invoke-static {p1}, Lcn/hutool/crypto/symmetric/ZUC$ZUCAlgorithm;->access$000(Lcn/hutool/crypto/symmetric/ZUC$ZUCAlgorithm;)Ljava/lang/String;

    move-result-object v0

    .line 38
    invoke-static {p1}, Lcn/hutool/crypto/symmetric/ZUC$ZUCAlgorithm;->access$000(Lcn/hutool/crypto/symmetric/ZUC$ZUCAlgorithm;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p2}, Lcn/hutool/crypto/KeyUtil;->generateKey(Ljava/lang/String;[B)Ljavax/crypto/SecretKey;

    move-result-object p2

    .line 39
    invoke-static {p1, p3}, Lcn/hutool/crypto/symmetric/ZUC;->generateIvParam(Lcn/hutool/crypto/symmetric/ZUC$ZUCAlgorithm;[B)Ljavax/crypto/spec/IvParameterSpec;

    move-result-object p1

    .line 37
    invoke-direct {p0, v0, p2, p1}, Lcn/hutool/crypto/symmetric/SymmetricCrypto;-><init>(Ljava/lang/String;Ljavax/crypto/SecretKey;Ljava/security/spec/AlgorithmParameterSpec;)V

    return-void
.end method

.method private static generateIvParam(Lcn/hutool/crypto/symmetric/ZUC$ZUCAlgorithm;[B)Ljavax/crypto/spec/IvParameterSpec;
    .locals 1

    if-nez p1, :cond_2

    .line 81
    sget-object v0, Lcn/hutool/crypto/symmetric/ZUC$1;->$SwitchMap$cn$hutool$crypto$symmetric$ZUC$ZUCAlgorithm:[I

    invoke-virtual {p0}, Lcn/hutool/crypto/symmetric/ZUC$ZUCAlgorithm;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/16 p0, 0x19

    .line 86
    invoke-static {p0}, Lcn/hutool/core/util/RandomUtil;->randomBytes(I)[B

    move-result-object p1

    goto :goto_0

    :cond_1
    const/16 p0, 0x10

    .line 83
    invoke-static {p0}, Lcn/hutool/core/util/RandomUtil;->randomBytes(I)[B

    move-result-object p1

    .line 90
    :cond_2
    :goto_0
    new-instance p0, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {p0, p1}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    return-object p0
.end method

.method public static generateKey(Lcn/hutool/crypto/symmetric/ZUC$ZUCAlgorithm;)[B
    .locals 0

    .line 26
    invoke-static {p0}, Lcn/hutool/crypto/symmetric/ZUC$ZUCAlgorithm;->access$000(Lcn/hutool/crypto/symmetric/ZUC$ZUCAlgorithm;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcn/hutool/crypto/KeyUtil;->generateKey(Ljava/lang/String;)Ljavax/crypto/SecretKey;

    move-result-object p0

    invoke-interface {p0}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object p0

    return-object p0
.end method
