.class public Lcn/hutool/crypto/symmetric/ChaCha20;
.super Lcn/hutool/crypto/symmetric/SymmetricCrypto;
.source "ChaCha20.java"


# static fields
.field public static final ALGORITHM_NAME:Ljava/lang/String; = "ChaCha20"

.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>([B[B)V
    .locals 1

    const-string v0, "ChaCha20"

    .line 28
    invoke-static {v0, p1}, Lcn/hutool/crypto/KeyUtil;->generateKey(Ljava/lang/String;[B)Ljavax/crypto/SecretKey;

    move-result-object p1

    .line 29
    invoke-static {p2}, Lcn/hutool/crypto/symmetric/ChaCha20;->generateIvParam([B)Ljavax/crypto/spec/IvParameterSpec;

    move-result-object p2

    .line 27
    invoke-direct {p0, v0, p1, p2}, Lcn/hutool/crypto/symmetric/SymmetricCrypto;-><init>(Ljava/lang/String;Ljavax/crypto/SecretKey;Ljava/security/spec/AlgorithmParameterSpec;)V

    return-void
.end method

.method private static generateIvParam([B)Ljavax/crypto/spec/IvParameterSpec;
    .locals 1

    if-nez p0, :cond_0

    const/16 p0, 0xc

    .line 40
    invoke-static {p0}, Lcn/hutool/core/util/RandomUtil;->randomBytes(I)[B

    move-result-object p0

    .line 42
    :cond_0
    new-instance v0, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v0, p0}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    return-object v0
.end method
