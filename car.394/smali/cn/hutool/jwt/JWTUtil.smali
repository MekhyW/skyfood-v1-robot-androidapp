.class public Lcn/hutool/jwt/JWTUtil;
.super Ljava/lang/Object;
.source "JWTUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createToken(Ljava/util/Map;Lcn/hutool/jwt/signers/JWTSigner;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcn/hutool/jwt/signers/JWTSigner;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 47
    invoke-static {v0, p0, p1}, Lcn/hutool/jwt/JWTUtil;->createToken(Ljava/util/Map;Ljava/util/Map;Lcn/hutool/jwt/signers/JWTSigner;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static createToken(Ljava/util/Map;Ljava/util/Map;Lcn/hutool/jwt/signers/JWTSigner;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcn/hutool/jwt/signers/JWTSigner;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 59
    invoke-static {}, Lcn/hutool/jwt/JWT;->create()Lcn/hutool/jwt/JWT;

    move-result-object v0

    .line 60
    invoke-virtual {v0, p0}, Lcn/hutool/jwt/JWT;->addHeaders(Ljava/util/Map;)Lcn/hutool/jwt/JWT;

    move-result-object p0

    .line 61
    invoke-virtual {p0, p1}, Lcn/hutool/jwt/JWT;->addPayloads(Ljava/util/Map;)Lcn/hutool/jwt/JWT;

    move-result-object p0

    .line 62
    invoke-virtual {p0, p2}, Lcn/hutool/jwt/JWT;->setSigner(Lcn/hutool/jwt/signers/JWTSigner;)Lcn/hutool/jwt/JWT;

    move-result-object p0

    .line 63
    invoke-virtual {p0}, Lcn/hutool/jwt/JWT;->sign()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static createToken(Ljava/util/Map;Ljava/util/Map;[B)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;[B)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 32
    invoke-static {}, Lcn/hutool/jwt/JWT;->create()Lcn/hutool/jwt/JWT;

    move-result-object v0

    .line 33
    invoke-virtual {v0, p0}, Lcn/hutool/jwt/JWT;->addHeaders(Ljava/util/Map;)Lcn/hutool/jwt/JWT;

    move-result-object p0

    .line 34
    invoke-virtual {p0, p1}, Lcn/hutool/jwt/JWT;->addPayloads(Ljava/util/Map;)Lcn/hutool/jwt/JWT;

    move-result-object p0

    .line 35
    invoke-virtual {p0, p2}, Lcn/hutool/jwt/JWT;->setKey([B)Lcn/hutool/jwt/JWT;

    move-result-object p0

    .line 36
    invoke-virtual {p0}, Lcn/hutool/jwt/JWT;->sign()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static createToken(Ljava/util/Map;[B)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;[B)",
            "Ljava/lang/String;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 20
    invoke-static {v0, p0, p1}, Lcn/hutool/jwt/JWTUtil;->createToken(Ljava/util/Map;Ljava/util/Map;[B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static parseToken(Ljava/lang/String;)Lcn/hutool/jwt/JWT;
    .locals 0

    .line 73
    invoke-static {p0}, Lcn/hutool/jwt/JWT;->of(Ljava/lang/String;)Lcn/hutool/jwt/JWT;

    move-result-object p0

    return-object p0
.end method

.method public static verify(Ljava/lang/String;Lcn/hutool/jwt/signers/JWTSigner;)Z
    .locals 0

    .line 95
    invoke-static {p0}, Lcn/hutool/jwt/JWT;->of(Ljava/lang/String;)Lcn/hutool/jwt/JWT;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcn/hutool/jwt/JWT;->verify(Lcn/hutool/jwt/signers/JWTSigner;)Z

    move-result p0

    return p0
.end method

.method public static verify(Ljava/lang/String;[B)Z
    .locals 0

    .line 84
    invoke-static {p0}, Lcn/hutool/jwt/JWT;->of(Ljava/lang/String;)Lcn/hutool/jwt/JWT;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcn/hutool/jwt/JWT;->setKey([B)Lcn/hutool/jwt/JWT;

    move-result-object p0

    invoke-virtual {p0}, Lcn/hutool/jwt/JWT;->verify()Z

    move-result p0

    return p0
.end method
