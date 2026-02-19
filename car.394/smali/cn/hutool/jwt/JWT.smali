.class public Lcn/hutool/jwt/JWT;
.super Ljava/lang/Object;
.source "JWT.java"

# interfaces
.implements Lcn/hutool/jwt/RegisteredPayload;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcn/hutool/jwt/RegisteredPayload<",
        "Lcn/hutool/jwt/JWT;",
        ">;"
    }
.end annotation


# instance fields
.field private charset:Ljava/nio/charset/Charset;

.field private final header:Lcn/hutool/jwt/JWTHeader;

.field private final payload:Lcn/hutool/jwt/JWTPayload;

.field private signer:Lcn/hutool/jwt/signers/JWTSigner;

.field private tokens:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    new-instance v0, Lcn/hutool/jwt/JWTHeader;

    invoke-direct {v0}, Lcn/hutool/jwt/JWTHeader;-><init>()V

    iput-object v0, p0, Lcn/hutool/jwt/JWT;->header:Lcn/hutool/jwt/JWTHeader;

    .line 74
    new-instance v0, Lcn/hutool/jwt/JWTPayload;

    invoke-direct {v0}, Lcn/hutool/jwt/JWTPayload;-><init>()V

    iput-object v0, p0, Lcn/hutool/jwt/JWT;->payload:Lcn/hutool/jwt/JWTPayload;

    .line 75
    sget-object v0, Lcn/hutool/core/util/CharsetUtil;->CHARSET_UTF_8:Ljava/nio/charset/Charset;

    iput-object v0, p0, Lcn/hutool/jwt/JWT;->charset:Ljava/nio/charset/Charset;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 84
    invoke-direct {p0}, Lcn/hutool/jwt/JWT;-><init>()V

    .line 85
    invoke-virtual {p0, p1}, Lcn/hutool/jwt/JWT;->parse(Ljava/lang/String;)Lcn/hutool/jwt/JWT;

    return-void
.end method

.method public static create()Lcn/hutool/jwt/JWT;
    .locals 1

    .line 56
    new-instance v0, Lcn/hutool/jwt/JWT;

    invoke-direct {v0}, Lcn/hutool/jwt/JWT;-><init>()V

    return-object v0
.end method

.method static synthetic lambda$sign$0()Lcn/hutool/jwt/JWTException;
    .locals 2

    .line 315
    new-instance v0, Lcn/hutool/jwt/JWTException;

    const-string v1, "No Signer provided!"

    invoke-direct {v0, v1}, Lcn/hutool/jwt/JWTException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static of(Ljava/lang/String;)Lcn/hutool/jwt/JWT;
    .locals 1

    .line 66
    new-instance v0, Lcn/hutool/jwt/JWT;

    invoke-direct {v0, p0}, Lcn/hutool/jwt/JWT;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private static splitToken(Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/16 v0, 0x2e

    .line 402
    invoke-static {p0, v0}, Lcn/hutool/core/util/StrUtil;->split(Ljava/lang/CharSequence;C)Ljava/util/List;

    move-result-object p0

    const/4 v0, 0x3

    .line 403
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-ne v0, v1, :cond_0

    return-object p0

    .line 404
    :cond_0
    new-instance v0, Lcn/hutool/jwt/JWTException;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const-string p0, "The token was expected 3 parts, but got {}."

    invoke-direct {v0, p0, v1}, Lcn/hutool/jwt/JWTException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0
.end method


# virtual methods
.method public addHeaders(Ljava/util/Map;)Lcn/hutool/jwt/JWT;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;)",
            "Lcn/hutool/jwt/JWT;"
        }
    .end annotation

    .line 242
    iget-object v0, p0, Lcn/hutool/jwt/JWT;->header:Lcn/hutool/jwt/JWTHeader;

    invoke-virtual {v0, p1}, Lcn/hutool/jwt/JWTHeader;->addHeaders(Ljava/util/Map;)Lcn/hutool/jwt/JWTHeader;

    return-object p0
.end method

.method public addPayloads(Ljava/util/Map;)Lcn/hutool/jwt/JWT;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;)",
            "Lcn/hutool/jwt/JWT;"
        }
    .end annotation

    .line 295
    iget-object v0, p0, Lcn/hutool/jwt/JWT;->payload:Lcn/hutool/jwt/JWTPayload;

    invoke-virtual {v0, p1}, Lcn/hutool/jwt/JWTPayload;->addPayloads(Ljava/util/Map;)Lcn/hutool/jwt/JWTPayload;

    return-object p0
.end method

.method public getAlgorithm()Ljava/lang/String;
    .locals 2

    .line 220
    iget-object v0, p0, Lcn/hutool/jwt/JWT;->header:Lcn/hutool/jwt/JWTHeader;

    sget-object v1, Lcn/hutool/jwt/JWTHeader;->ALGORITHM:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcn/hutool/jwt/JWTHeader;->getClaim(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getHeader()Lcn/hutool/jwt/JWTHeader;
    .locals 1

    .line 200
    iget-object v0, p0, Lcn/hutool/jwt/JWT;->header:Lcn/hutool/jwt/JWTHeader;

    return-object v0
.end method

.method public getHeader(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .line 210
    iget-object v0, p0, Lcn/hutool/jwt/JWT;->header:Lcn/hutool/jwt/JWTHeader;

    invoke-virtual {v0, p1}, Lcn/hutool/jwt/JWTHeader;->getClaim(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getHeaders()Lcn/hutool/json/JSONObject;
    .locals 1

    .line 190
    iget-object v0, p0, Lcn/hutool/jwt/JWT;->header:Lcn/hutool/jwt/JWTHeader;

    invoke-virtual {v0}, Lcn/hutool/jwt/JWTHeader;->getClaimsJson()Lcn/hutool/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public getPayload()Lcn/hutool/jwt/JWTPayload;
    .locals 1

    .line 262
    iget-object v0, p0, Lcn/hutool/jwt/JWT;->payload:Lcn/hutool/jwt/JWTPayload;

    return-object v0
.end method

.method public getPayload(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .line 272
    invoke-virtual {p0}, Lcn/hutool/jwt/JWT;->getPayload()Lcn/hutool/jwt/JWTPayload;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/hutool/jwt/JWTPayload;->getClaim(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getPayloads()Lcn/hutool/json/JSONObject;
    .locals 1

    .line 252
    iget-object v0, p0, Lcn/hutool/jwt/JWT;->payload:Lcn/hutool/jwt/JWTPayload;

    invoke-virtual {v0}, Lcn/hutool/jwt/JWTPayload;->getClaimsJson()Lcn/hutool/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public getSigner()Lcn/hutool/jwt/signers/JWTSigner;
    .locals 1

    .line 181
    iget-object v0, p0, Lcn/hutool/jwt/JWT;->signer:Lcn/hutool/jwt/signers/JWTSigner;

    return-object v0
.end method

.method public parse(Ljava/lang/String;)Lcn/hutool/jwt/JWT;
    .locals 3

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "Token String must be not blank!"

    .line 95
    invoke-static {p1, v2, v1}, Lcn/hutool/core/lang/Assert;->notBlank(Ljava/lang/CharSequence;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/CharSequence;

    .line 96
    invoke-static {p1}, Lcn/hutool/jwt/JWT;->splitToken(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 97
    iput-object p1, p0, Lcn/hutool/jwt/JWT;->tokens:Ljava/util/List;

    .line 98
    iget-object v1, p0, Lcn/hutool/jwt/JWT;->header:Lcn/hutool/jwt/JWTHeader;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v2, p0, Lcn/hutool/jwt/JWT;->charset:Ljava/nio/charset/Charset;

    invoke-virtual {v1, v0, v2}, Lcn/hutool/jwt/JWTHeader;->parse(Ljava/lang/String;Ljava/nio/charset/Charset;)V

    .line 99
    iget-object v0, p0, Lcn/hutool/jwt/JWT;->payload:Lcn/hutool/jwt/JWTPayload;

    const/4 v1, 0x1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iget-object v1, p0, Lcn/hutool/jwt/JWT;->charset:Ljava/nio/charset/Charset;

    invoke-virtual {v0, p1, v1}, Lcn/hutool/jwt/JWTPayload;->parse(Ljava/lang/String;Ljava/nio/charset/Charset;)V

    return-object p0
.end method

.method public setCharset(Ljava/nio/charset/Charset;)Lcn/hutool/jwt/JWT;
    .locals 0

    .line 110
    iput-object p1, p0, Lcn/hutool/jwt/JWT;->charset:Ljava/nio/charset/Charset;

    return-object p0
.end method

.method public setHeader(Ljava/lang/String;Ljava/lang/Object;)Lcn/hutool/jwt/JWT;
    .locals 1

    .line 231
    iget-object v0, p0, Lcn/hutool/jwt/JWT;->header:Lcn/hutool/jwt/JWTHeader;

    invoke-virtual {v0, p1, p2}, Lcn/hutool/jwt/JWTHeader;->setClaim(Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method

.method public setKey([B)Lcn/hutool/jwt/JWT;
    .locals 2

    .line 122
    iget-object v0, p0, Lcn/hutool/jwt/JWT;->header:Lcn/hutool/jwt/JWTHeader;

    sget-object v1, Lcn/hutool/jwt/JWTHeader;->ALGORITHM:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcn/hutool/jwt/JWTHeader;->getClaim(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 123
    invoke-static {v0}, Lcn/hutool/core/util/StrUtil;->isNotBlank(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 124
    invoke-static {v0, p1}, Lcn/hutool/jwt/signers/JWTSignerUtil;->createSigner(Ljava/lang/String;[B)Lcn/hutool/jwt/signers/JWTSigner;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcn/hutool/jwt/JWT;->setSigner(Lcn/hutool/jwt/signers/JWTSigner;)Lcn/hutool/jwt/JWT;

    move-result-object p1

    return-object p1

    .line 126
    :cond_0
    invoke-static {p1}, Lcn/hutool/jwt/signers/JWTSignerUtil;->hs256([B)Lcn/hutool/jwt/signers/JWTSigner;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcn/hutool/jwt/JWT;->setSigner(Lcn/hutool/jwt/signers/JWTSigner;)Lcn/hutool/jwt/JWT;

    move-result-object p1

    return-object p1
.end method

.method public setPayload(Ljava/lang/String;Ljava/lang/Object;)Lcn/hutool/jwt/JWT;
    .locals 1

    .line 284
    iget-object v0, p0, Lcn/hutool/jwt/JWT;->payload:Lcn/hutool/jwt/JWTPayload;

    invoke-virtual {v0, p1, p2}, Lcn/hutool/jwt/JWTPayload;->setClaim(Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method

.method public bridge synthetic setPayload(Ljava/lang/String;Ljava/lang/Object;)Lcn/hutool/jwt/RegisteredPayload;
    .locals 0

    .line 40
    invoke-virtual {p0, p1, p2}, Lcn/hutool/jwt/JWT;->setPayload(Ljava/lang/String;Ljava/lang/Object;)Lcn/hutool/jwt/JWT;

    move-result-object p1

    return-object p1
.end method

.method public setSigner(Lcn/hutool/jwt/signers/JWTSigner;)Lcn/hutool/jwt/JWT;
    .locals 0

    .line 171
    iput-object p1, p0, Lcn/hutool/jwt/JWT;->signer:Lcn/hutool/jwt/signers/JWTSigner;

    return-object p0
.end method

.method public setSigner(Ljava/lang/String;Ljava/security/Key;)Lcn/hutool/jwt/JWT;
    .locals 0

    .line 149
    invoke-static {p1, p2}, Lcn/hutool/jwt/signers/JWTSignerUtil;->createSigner(Ljava/lang/String;Ljava/security/Key;)Lcn/hutool/jwt/signers/JWTSigner;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcn/hutool/jwt/JWT;->setSigner(Lcn/hutool/jwt/signers/JWTSigner;)Lcn/hutool/jwt/JWT;

    move-result-object p1

    return-object p1
.end method

.method public setSigner(Ljava/lang/String;Ljava/security/KeyPair;)Lcn/hutool/jwt/JWT;
    .locals 0

    .line 161
    invoke-static {p1, p2}, Lcn/hutool/jwt/signers/JWTSignerUtil;->createSigner(Ljava/lang/String;Ljava/security/KeyPair;)Lcn/hutool/jwt/signers/JWTSigner;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcn/hutool/jwt/JWT;->setSigner(Lcn/hutool/jwt/signers/JWTSigner;)Lcn/hutool/jwt/JWT;

    move-result-object p1

    return-object p1
.end method

.method public setSigner(Ljava/lang/String;[B)Lcn/hutool/jwt/JWT;
    .locals 0

    .line 137
    invoke-static {p1, p2}, Lcn/hutool/jwt/signers/JWTSignerUtil;->createSigner(Ljava/lang/String;[B)Lcn/hutool/jwt/signers/JWTSigner;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcn/hutool/jwt/JWT;->setSigner(Lcn/hutool/jwt/signers/JWTSigner;)Lcn/hutool/jwt/JWT;

    move-result-object p1

    return-object p1
.end method

.method public sign()Ljava/lang/String;
    .locals 1

    .line 305
    iget-object v0, p0, Lcn/hutool/jwt/JWT;->signer:Lcn/hutool/jwt/signers/JWTSigner;

    invoke-virtual {p0, v0}, Lcn/hutool/jwt/JWT;->sign(Lcn/hutool/jwt/signers/JWTSigner;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public sign(Lcn/hutool/jwt/signers/JWTSigner;)Ljava/lang/String;
    .locals 4

    .line 315
    new-instance v0, Lcn/hutool/jwt/JWT$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcn/hutool/jwt/JWT$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {p1, v0}, Lcn/hutool/core/lang/Assert;->notNull(Ljava/lang/Object;Ljava/util/function/Supplier;)Ljava/lang/Object;

    .line 318
    iget-object v0, p0, Lcn/hutool/jwt/JWT;->header:Lcn/hutool/jwt/JWTHeader;

    sget-object v1, Lcn/hutool/jwt/JWTHeader;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcn/hutool/jwt/JWTHeader;->getClaim(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 319
    invoke-static {v0}, Lcn/hutool/core/util/StrUtil;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 320
    iget-object v0, p0, Lcn/hutool/jwt/JWT;->header:Lcn/hutool/jwt/JWTHeader;

    sget-object v1, Lcn/hutool/jwt/JWTHeader;->TYPE:Ljava/lang/String;

    const-string v2, "JWT"

    invoke-virtual {v0, v1, v2}, Lcn/hutool/jwt/JWTHeader;->setClaim(Ljava/lang/String;Ljava/lang/Object;)V

    .line 324
    :cond_0
    iget-object v0, p0, Lcn/hutool/jwt/JWT;->header:Lcn/hutool/jwt/JWTHeader;

    sget-object v1, Lcn/hutool/jwt/JWTHeader;->ALGORITHM:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcn/hutool/jwt/JWTHeader;->getClaim(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 325
    invoke-static {v0}, Lcn/hutool/core/util/StrUtil;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 326
    iget-object v0, p0, Lcn/hutool/jwt/JWT;->header:Lcn/hutool/jwt/JWTHeader;

    sget-object v1, Lcn/hutool/jwt/JWTHeader;->ALGORITHM:Ljava/lang/String;

    .line 327
    invoke-interface {p1}, Lcn/hutool/jwt/signers/JWTSigner;->getAlgorithm()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcn/hutool/jwt/signers/AlgorithmUtil;->getId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 326
    invoke-virtual {v0, v1, v2}, Lcn/hutool/jwt/JWTHeader;->setClaim(Ljava/lang/String;Ljava/lang/Object;)V

    .line 330
    :cond_1
    iget-object v0, p0, Lcn/hutool/jwt/JWT;->header:Lcn/hutool/jwt/JWTHeader;

    invoke-virtual {v0}, Lcn/hutool/jwt/JWTHeader;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcn/hutool/jwt/JWT;->charset:Ljava/nio/charset/Charset;

    invoke-static {v0, v1}, Lcn/hutool/core/codec/Base64;->encodeUrlSafe(Ljava/lang/CharSequence;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    .line 331
    iget-object v1, p0, Lcn/hutool/jwt/JWT;->payload:Lcn/hutool/jwt/JWTPayload;

    invoke-virtual {v1}, Lcn/hutool/jwt/JWTPayload;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcn/hutool/jwt/JWT;->charset:Ljava/nio/charset/Charset;

    invoke-static {v1, v2}, Lcn/hutool/core/codec/Base64;->encodeUrlSafe(Ljava/lang/CharSequence;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v1

    .line 332
    invoke-interface {p1, v0, v1}, Lcn/hutool/jwt/signers/JWTSigner;->sign(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const/4 v0, 0x2

    aput-object p1, v2, v0

    const-string p1, "{}.{}.{}"

    .line 334
    invoke-static {p1, v2}, Lcn/hutool/core/util/StrUtil;->format(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public validate(J)Z
    .locals 3

    .line 362
    invoke-virtual {p0}, Lcn/hutool/jwt/JWT;->verify()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 368
    :cond_0
    :try_start_0
    invoke-static {p0}, Lcn/hutool/jwt/JWTValidator;->of(Lcn/hutool/jwt/JWT;)Lcn/hutool/jwt/JWTValidator;

    move-result-object v0

    invoke-static {}, Lcn/hutool/core/date/DateUtil;->date()Lcn/hutool/core/date/DateTime;

    move-result-object v2

    invoke-virtual {v0, v2, p1, p2}, Lcn/hutool/jwt/JWTValidator;->validateDate(Ljava/util/Date;J)Lcn/hutool/jwt/JWTValidator;
    :try_end_0
    .catch Lcn/hutool/core/exceptions/ValidateException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    return v1
.end method

.method public verify()Z
    .locals 1

    .line 343
    iget-object v0, p0, Lcn/hutool/jwt/JWT;->signer:Lcn/hutool/jwt/signers/JWTSigner;

    invoke-virtual {p0, v0}, Lcn/hutool/jwt/JWT;->verify(Lcn/hutool/jwt/signers/JWTSigner;)Z

    move-result v0

    return v0
.end method

.method public verify(Lcn/hutool/jwt/signers/JWTSigner;)Z
    .locals 4

    if-nez p1, :cond_0

    .line 385
    sget-object p1, Lcn/hutool/jwt/signers/NoneJWTSigner;->NONE:Lcn/hutool/jwt/signers/NoneJWTSigner;

    .line 388
    :cond_0
    iget-object v0, p0, Lcn/hutool/jwt/JWT;->tokens:Ljava/util/List;

    .line 389
    invoke-static {v0}, Lcn/hutool/core/collection/CollUtil;->isEmpty(Ljava/util/Collection;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x0

    .line 392
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const/4 v2, 0x1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const/4 v3, 0x2

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {p1, v1, v2, v0}, Lcn/hutool/jwt/signers/JWTSigner;->verify(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1

    .line 390
    :cond_1
    new-instance p1, Lcn/hutool/jwt/JWTException;

    const-string v0, "No token to verify!"

    invoke-direct {p1, v0}, Lcn/hutool/jwt/JWTException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
