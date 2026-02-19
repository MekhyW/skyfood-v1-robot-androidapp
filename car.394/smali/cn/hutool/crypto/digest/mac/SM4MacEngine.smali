.class public Lcn/hutool/crypto/digest/mac/SM4MacEngine;
.super Lcn/hutool/crypto/digest/mac/CBCBlockCipherMacEngine;
.source "SM4MacEngine.java"


# static fields
.field private static final MAC_SIZE:I = 0x80


# direct methods
.method public constructor <init>(Lorg/bouncycastle/crypto/CipherParameters;)V
    .locals 2

    .line 22
    new-instance v0, Lorg/bouncycastle/crypto/engines/SM4Engine;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/engines/SM4Engine;-><init>()V

    const/16 v1, 0x80

    invoke-direct {p0, v0, v1, p1}, Lcn/hutool/crypto/digest/mac/CBCBlockCipherMacEngine;-><init>(Lorg/bouncycastle/crypto/BlockCipher;ILorg/bouncycastle/crypto/CipherParameters;)V

    return-void
.end method
