.class public Lcn/hutool/jwt/JWTValidator;
.super Ljava/lang/Object;
.source "JWTValidator.java"


# instance fields
.field private final jwt:Lcn/hutool/jwt/JWT;


# direct methods
.method public constructor <init>(Lcn/hutool/jwt/JWT;)V
    .locals 0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lcn/hutool/jwt/JWTValidator;->jwt:Lcn/hutool/jwt/JWT;

    return-void
.end method

.method public static of(Lcn/hutool/jwt/JWT;)Lcn/hutool/jwt/JWTValidator;
    .locals 1

    .line 43
    new-instance v0, Lcn/hutool/jwt/JWTValidator;

    invoke-direct {v0, p0}, Lcn/hutool/jwt/JWTValidator;-><init>(Lcn/hutool/jwt/JWT;)V

    return-object v0
.end method

.method public static of(Ljava/lang/String;)Lcn/hutool/jwt/JWTValidator;
    .locals 1

    .line 33
    new-instance v0, Lcn/hutool/jwt/JWTValidator;

    invoke-static {p0}, Lcn/hutool/jwt/JWT;->of(Ljava/lang/String;)Lcn/hutool/jwt/JWT;

    move-result-object p0

    invoke-direct {v0, p0}, Lcn/hutool/jwt/JWTValidator;-><init>(Lcn/hutool/jwt/JWT;)V

    return-object v0
.end method

.method private static validateAlgorithm(Lcn/hutool/jwt/JWT;Lcn/hutool/jwt/signers/JWTSigner;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/hutool/core/exceptions/ValidateException;
        }
    .end annotation

    .line 145
    invoke-virtual {p0}, Lcn/hutool/jwt/JWT;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    if-nez p1, :cond_0

    .line 147
    invoke-virtual {p0}, Lcn/hutool/jwt/JWT;->getSigner()Lcn/hutool/jwt/signers/JWTSigner;

    move-result-object p1

    .line 150
    :cond_0
    invoke-static {v0}, Lcn/hutool/core/util/StrUtil;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    if-eqz p1, :cond_2

    .line 152
    instance-of p0, p1, Lcn/hutool/jwt/signers/NoneJWTSigner;

    if-eqz p0, :cond_1

    goto :goto_0

    .line 155
    :cond_1
    new-instance p0, Lcn/hutool/core/exceptions/ValidateException;

    const-string p1, "No algorithm defined in header!"

    invoke-direct {p0, p1}, Lcn/hutool/core/exceptions/ValidateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    :goto_0
    return-void

    :cond_3
    if-eqz p1, :cond_6

    .line 162
    invoke-interface {p1}, Lcn/hutool/jwt/signers/JWTSigner;->getAlgorithmId()Ljava/lang/String;

    move-result-object v1

    .line 163
    invoke-static {v0, v1}, Lcn/hutool/core/util/StrUtil;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 169
    invoke-virtual {p0, p1}, Lcn/hutool/jwt/JWT;->verify(Lcn/hutool/jwt/signers/JWTSigner;)Z

    move-result p0

    if-eqz p0, :cond_4

    return-void

    .line 170
    :cond_4
    new-instance p0, Lcn/hutool/core/exceptions/ValidateException;

    const-string p1, "Signature verification failed!"

    invoke-direct {p0, p1}, Lcn/hutool/core/exceptions/ValidateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 164
    :cond_5
    new-instance p0, Lcn/hutool/core/exceptions/ValidateException;

    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, p1, v2

    const/4 v0, 0x1

    aput-object v1, p1, v0

    const-string v0, "Algorithm [{}] defined in header doesn\'t match to [{}]!"

    invoke-direct {p0, v0, p1}, Lcn/hutool/core/exceptions/ValidateException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p0

    .line 159
    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "No Signer for validate algorithm!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static validateDate(Lcn/hutool/jwt/JWTPayload;Ljava/util/Date;J)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/hutool/core/exceptions/ValidateException;
        }
    .end annotation

    if-nez p1, :cond_0

    .line 193
    invoke-static {}, Lcn/hutool/core/date/DateUtil;->date()Lcn/hutool/core/date/DateTime;

    move-result-object p1

    .line 195
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    mul-long/2addr v0, v2

    invoke-virtual {p1, v0, v1}, Ljava/util/Date;->setTime(J)V

    .line 199
    :cond_0
    invoke-virtual {p0}, Lcn/hutool/jwt/JWTPayload;->getClaimsJson()Lcn/hutool/json/JSONObject;

    move-result-object v0

    const-string v1, "nbf"

    invoke-virtual {v0, v1}, Lcn/hutool/json/JSONObject;->getDate(Ljava/lang/Object;)Ljava/util/Date;

    move-result-object v0

    .line 200
    invoke-static {v1, v0, p1, p2, p3}, Lcn/hutool/jwt/JWTValidator;->validateNotAfter(Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;J)V

    .line 203
    invoke-virtual {p0}, Lcn/hutool/jwt/JWTPayload;->getClaimsJson()Lcn/hutool/json/JSONObject;

    move-result-object v0

    const-string v1, "exp"

    invoke-virtual {v0, v1}, Lcn/hutool/json/JSONObject;->getDate(Ljava/lang/Object;)Ljava/util/Date;

    move-result-object v0

    .line 204
    invoke-static {v1, v0, p1, p2, p3}, Lcn/hutool/jwt/JWTValidator;->validateNotBefore(Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;J)V

    .line 207
    invoke-virtual {p0}, Lcn/hutool/jwt/JWTPayload;->getClaimsJson()Lcn/hutool/json/JSONObject;

    move-result-object p0

    const-string v0, "iat"

    invoke-virtual {p0, v0}, Lcn/hutool/json/JSONObject;->getDate(Ljava/lang/Object;)Ljava/util/Date;

    move-result-object p0

    .line 208
    invoke-static {v0, p0, p1, p2, p3}, Lcn/hutool/jwt/JWTValidator;->validateNotAfter(Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;J)V

    return-void
.end method

.method private static validateNotAfter(Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;J)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/hutool/core/exceptions/ValidateException;
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-lez v0, :cond_1

    .line 226
    invoke-virtual {p2}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr p3, v2

    add-long/2addr v0, p3

    invoke-static {v0, v1}, Lcn/hutool/core/date/DateUtil;->date(J)Lcn/hutool/core/date/DateTime;

    move-result-object p2

    .line 228
    :cond_1
    invoke-virtual {p1, p2}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result p3

    if-nez p3, :cond_2

    return-void

    .line 229
    :cond_2
    new-instance p3, Lcn/hutool/core/exceptions/ValidateException;

    const/4 p4, 0x3

    new-array p4, p4, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p0, p4, v0

    const/4 p0, 0x1

    .line 230
    invoke-static {p1}, Lcn/hutool/core/date/DateUtil;->date(Ljava/util/Date;)Lcn/hutool/core/date/DateTime;

    move-result-object p1

    aput-object p1, p4, p0

    const/4 p0, 0x2

    invoke-static {p2}, Lcn/hutool/core/date/DateUtil;->date(Ljava/util/Date;)Lcn/hutool/core/date/DateTime;

    move-result-object p1

    aput-object p1, p4, p0

    const-string p0, "\'{}\':[{}] is after now:[{}]"

    invoke-direct {p3, p0, p4}, Lcn/hutool/core/exceptions/ValidateException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p3
.end method

.method private static validateNotBefore(Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;J)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/hutool/core/exceptions/ValidateException;
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-lez v0, :cond_1

    .line 250
    invoke-virtual {p2}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr p3, v2

    sub-long/2addr v0, p3

    invoke-static {v0, v1}, Lcn/hutool/core/date/DateUtil;->date(J)Lcn/hutool/core/date/DateTime;

    move-result-object p2

    .line 252
    :cond_1
    invoke-virtual {p1, p2}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result p3

    if-nez p3, :cond_2

    return-void

    .line 253
    :cond_2
    new-instance p3, Lcn/hutool/core/exceptions/ValidateException;

    const/4 p4, 0x3

    new-array p4, p4, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p0, p4, v0

    const/4 p0, 0x1

    .line 254
    invoke-static {p1}, Lcn/hutool/core/date/DateUtil;->date(Ljava/util/Date;)Lcn/hutool/core/date/DateTime;

    move-result-object p1

    aput-object p1, p4, p0

    const/4 p0, 0x2

    invoke-static {p2}, Lcn/hutool/core/date/DateUtil;->date(Ljava/util/Date;)Lcn/hutool/core/date/DateTime;

    move-result-object p1

    aput-object p1, p4, p0

    const-string p0, "\'{}\':[{}] is before now:[{}]"

    invoke-direct {p3, p0, p4}, Lcn/hutool/core/exceptions/ValidateException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p3
.end method


# virtual methods
.method public validateAlgorithm()Lcn/hutool/jwt/JWTValidator;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/hutool/core/exceptions/ValidateException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 62
    invoke-virtual {p0, v0}, Lcn/hutool/jwt/JWTValidator;->validateAlgorithm(Lcn/hutool/jwt/signers/JWTSigner;)Lcn/hutool/jwt/JWTValidator;

    move-result-object v0

    return-object v0
.end method

.method public validateAlgorithm(Lcn/hutool/jwt/signers/JWTSigner;)Lcn/hutool/jwt/JWTValidator;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/hutool/core/exceptions/ValidateException;
        }
    .end annotation

    .line 73
    iget-object v0, p0, Lcn/hutool/jwt/JWTValidator;->jwt:Lcn/hutool/jwt/JWT;

    invoke-static {v0, p1}, Lcn/hutool/jwt/JWTValidator;->validateAlgorithm(Lcn/hutool/jwt/JWT;Lcn/hutool/jwt/signers/JWTSigner;)V

    return-object p0
.end method

.method public validateDate()Lcn/hutool/jwt/JWTValidator;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/hutool/core/exceptions/ValidateException;
        }
    .end annotation

    .line 93
    invoke-static {}, Lcn/hutool/core/date/DateUtil;->date()Lcn/hutool/core/date/DateTime;

    move-result-object v0

    invoke-static {v0}, Lcn/hutool/core/date/DateUtil;->beginOfSecond(Ljava/util/Date;)Lcn/hutool/core/date/DateTime;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcn/hutool/jwt/JWTValidator;->validateDate(Ljava/util/Date;)Lcn/hutool/jwt/JWTValidator;

    move-result-object v0

    return-object v0
.end method

.method public validateDate(Ljava/util/Date;)Lcn/hutool/jwt/JWTValidator;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/hutool/core/exceptions/ValidateException;
        }
    .end annotation

    .line 112
    iget-object v0, p0, Lcn/hutool/jwt/JWTValidator;->jwt:Lcn/hutool/jwt/JWT;

    invoke-virtual {v0}, Lcn/hutool/jwt/JWT;->getPayload()Lcn/hutool/jwt/JWTPayload;

    move-result-object v0

    const-wide/16 v1, 0x0

    invoke-static {v0, p1, v1, v2}, Lcn/hutool/jwt/JWTValidator;->validateDate(Lcn/hutool/jwt/JWTPayload;Ljava/util/Date;J)V

    return-object p0
.end method

.method public validateDate(Ljava/util/Date;J)Lcn/hutool/jwt/JWTValidator;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/hutool/core/exceptions/ValidateException;
        }
    .end annotation

    .line 133
    iget-object v0, p0, Lcn/hutool/jwt/JWTValidator;->jwt:Lcn/hutool/jwt/JWT;

    invoke-virtual {v0}, Lcn/hutool/jwt/JWT;->getPayload()Lcn/hutool/jwt/JWTPayload;

    move-result-object v0

    invoke-static {v0, p1, p2, p3}, Lcn/hutool/jwt/JWTValidator;->validateDate(Lcn/hutool/jwt/JWTPayload;Ljava/util/Date;J)V

    return-object p0
.end method
