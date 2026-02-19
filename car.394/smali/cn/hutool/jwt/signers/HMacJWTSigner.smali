.class public Lcn/hutool/jwt/signers/HMacJWTSigner;
.super Ljava/lang/Object;
.source "HMacJWTSigner.java"

# interfaces
.implements Lcn/hutool/jwt/signers/JWTSigner;


# instance fields
.field private charset:Ljava/nio/charset/Charset;

.field private final hMac:Lcn/hutool/crypto/digest/HMac;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/security/Key;)V
    .locals 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    sget-object v0, Lcn/hutool/core/util/CharsetUtil;->CHARSET_UTF_8:Ljava/nio/charset/Charset;

    iput-object v0, p0, Lcn/hutool/jwt/signers/HMacJWTSigner;->charset:Ljava/nio/charset/Charset;

    .line 38
    new-instance v0, Lcn/hutool/crypto/digest/HMac;

    invoke-direct {v0, p1, p2}, Lcn/hutool/crypto/digest/HMac;-><init>(Ljava/lang/String;Ljava/security/Key;)V

    iput-object v0, p0, Lcn/hutool/jwt/signers/HMacJWTSigner;->hMac:Lcn/hutool/crypto/digest/HMac;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[B)V
    .locals 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    sget-object v0, Lcn/hutool/core/util/CharsetUtil;->CHARSET_UTF_8:Ljava/nio/charset/Charset;

    iput-object v0, p0, Lcn/hutool/jwt/signers/HMacJWTSigner;->charset:Ljava/nio/charset/Charset;

    .line 28
    new-instance v0, Lcn/hutool/crypto/digest/HMac;

    invoke-direct {v0, p1, p2}, Lcn/hutool/crypto/digest/HMac;-><init>(Ljava/lang/String;[B)V

    iput-object v0, p0, Lcn/hutool/jwt/signers/HMacJWTSigner;->hMac:Lcn/hutool/crypto/digest/HMac;

    return-void
.end method


# virtual methods
.method public getAlgorithm()Ljava/lang/String;
    .locals 1

    .line 67
    iget-object v0, p0, Lcn/hutool/jwt/signers/HMacJWTSigner;->hMac:Lcn/hutool/crypto/digest/HMac;

    invoke-virtual {v0}, Lcn/hutool/crypto/digest/HMac;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setCharset(Ljava/nio/charset/Charset;)Lcn/hutool/jwt/signers/HMacJWTSigner;
    .locals 0

    .line 48
    iput-object p1, p0, Lcn/hutool/jwt/signers/HMacJWTSigner;->charset:Ljava/nio/charset/Charset;

    return-object p0
.end method

.method public sign(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 54
    iget-object v0, p0, Lcn/hutool/jwt/signers/HMacJWTSigner;->hMac:Lcn/hutool/crypto/digest/HMac;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x1

    aput-object p2, v1, p1

    const-string p2, "{}.{}"

    invoke-static {p2, v1}, Lcn/hutool/core/util/StrUtil;->format(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    iget-object v1, p0, Lcn/hutool/jwt/signers/HMacJWTSigner;->charset:Ljava/nio/charset/Charset;

    invoke-virtual {v0, p2, v1, p1}, Lcn/hutool/crypto/digest/HMac;->digestBase64(Ljava/lang/String;Ljava/nio/charset/Charset;Z)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public verify(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .line 59
    invoke-virtual {p0, p1, p2}, Lcn/hutool/jwt/signers/HMacJWTSigner;->sign(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 60
    iget-object p2, p0, Lcn/hutool/jwt/signers/HMacJWTSigner;->hMac:Lcn/hutool/crypto/digest/HMac;

    iget-object v0, p0, Lcn/hutool/jwt/signers/HMacJWTSigner;->charset:Ljava/nio/charset/Charset;

    .line 61
    invoke-static {p1, v0}, Lcn/hutool/core/util/StrUtil;->bytes(Ljava/lang/CharSequence;Ljava/nio/charset/Charset;)[B

    move-result-object p1

    iget-object v0, p0, Lcn/hutool/jwt/signers/HMacJWTSigner;->charset:Ljava/nio/charset/Charset;

    .line 62
    invoke-static {p3, v0}, Lcn/hutool/core/util/StrUtil;->bytes(Ljava/lang/CharSequence;Ljava/nio/charset/Charset;)[B

    move-result-object p3

    .line 60
    invoke-virtual {p2, p1, p3}, Lcn/hutool/crypto/digest/HMac;->verify([B[B)Z

    move-result p1

    return p1
.end method
