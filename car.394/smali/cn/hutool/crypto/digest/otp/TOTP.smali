.class public Lcn/hutool/crypto/digest/otp/TOTP;
.super Lcn/hutool/crypto/digest/otp/HOTP;
.source "TOTP.java"


# static fields
.field public static final DEFAULT_TIME_STEP:Ljava/time/Duration;


# instance fields
.field private final timeStep:Ljava/time/Duration;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide/16 v0, 0x1e

    .line 25
    invoke-static {v0, v1}, Ljava/time/Duration;->ofSeconds(J)Ljava/time/Duration;

    move-result-object v0

    sput-object v0, Lcn/hutool/crypto/digest/otp/TOTP;->DEFAULT_TIME_STEP:Ljava/time/Duration;

    return-void
.end method

.method public constructor <init>(Ljava/time/Duration;ILcn/hutool/crypto/digest/HmacAlgorithm;[B)V
    .locals 0

    .line 68
    invoke-direct {p0, p2, p3, p4}, Lcn/hutool/crypto/digest/otp/HOTP;-><init>(ILcn/hutool/crypto/digest/HmacAlgorithm;[B)V

    .line 69
    iput-object p1, p0, Lcn/hutool/crypto/digest/otp/TOTP;->timeStep:Ljava/time/Duration;

    return-void
.end method

.method public constructor <init>(Ljava/time/Duration;I[B)V
    .locals 1

    .line 56
    sget-object v0, Lcn/hutool/crypto/digest/otp/TOTP;->HOTP_HMAC_ALGORITHM:Lcn/hutool/crypto/digest/HmacAlgorithm;

    invoke-direct {p0, p1, p2, v0, p3}, Lcn/hutool/crypto/digest/otp/TOTP;-><init>(Ljava/time/Duration;ILcn/hutool/crypto/digest/HmacAlgorithm;[B)V

    return-void
.end method

.method public constructor <init>(Ljava/time/Duration;[B)V
    .locals 1

    const/4 v0, 0x6

    .line 45
    invoke-direct {p0, p1, v0, p2}, Lcn/hutool/crypto/digest/otp/TOTP;-><init>(Ljava/time/Duration;I[B)V

    return-void
.end method

.method public constructor <init>([B)V
    .locals 1

    .line 35
    sget-object v0, Lcn/hutool/crypto/digest/otp/TOTP;->DEFAULT_TIME_STEP:Ljava/time/Duration;

    invoke-direct {p0, v0, p1}, Lcn/hutool/crypto/digest/otp/TOTP;-><init>(Ljava/time/Duration;[B)V

    return-void
.end method

.method public static generateGoogleSecretKey(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    .line 113
    invoke-static {p1}, Lcn/hutool/crypto/digest/otp/TOTP;->generateSecretKey(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, p0

    const-string p0, "otpauth://totp/{}?secret={}"

    invoke-static {p0, v0}, Lcn/hutool/core/util/StrUtil;->format(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public generate(Ljava/time/Instant;)I
    .locals 4

    .line 79
    invoke-virtual {p1}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v0

    iget-object p1, p0, Lcn/hutool/crypto/digest/otp/TOTP;->timeStep:Ljava/time/Duration;

    invoke-virtual {p1}, Ljava/time/Duration;->toMillis()J

    move-result-wide v2

    div-long/2addr v0, v2

    invoke-virtual {p0, v0, v1}, Lcn/hutool/crypto/digest/otp/TOTP;->generate(J)I

    move-result p1

    return p1
.end method

.method public getTimeStep()Ljava/time/Duration;
    .locals 1

    .line 122
    iget-object v0, p0, Lcn/hutool/crypto/digest/otp/TOTP;->timeStep:Ljava/time/Duration;

    return-object v0
.end method

.method public validate(Ljava/time/Instant;II)Z
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p2, :cond_1

    .line 93
    invoke-virtual {p0, p1}, Lcn/hutool/crypto/digest/otp/TOTP;->generate(Ljava/time/Instant;)I

    move-result p1

    if-ne p1, p3, :cond_0

    move v0, v1

    :cond_0
    return v0

    :cond_1
    neg-int v2, p2

    :goto_0
    if-gt v2, p2, :cond_3

    .line 96
    invoke-virtual {p0}, Lcn/hutool/crypto/digest/otp/TOTP;->getTimeStep()Ljava/time/Duration;

    move-result-object v3

    int-to-long v4, v2

    invoke-virtual {v3, v4, v5}, Ljava/time/Duration;->multipliedBy(J)Ljava/time/Duration;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/time/Instant;->plus(Ljava/time/temporal/TemporalAmount;)Ljava/time/Instant;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcn/hutool/crypto/digest/otp/TOTP;->generate(Ljava/time/Instant;)I

    move-result v3

    if-ne v3, p3, :cond_2

    return v1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return v0
.end method
