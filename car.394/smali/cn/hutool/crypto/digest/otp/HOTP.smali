.class public Lcn/hutool/crypto/digest/otp/HOTP;
.super Ljava/lang/Object;
.source "HOTP.java"


# static fields
.field public static final DEFAULT_PASSWORD_LENGTH:I = 0x6

.field public static final HOTP_HMAC_ALGORITHM:Lcn/hutool/crypto/digest/HmacAlgorithm;

.field private static final MOD_DIVISORS:[I


# instance fields
.field private final buffer:[B

.field private final mac:Lcn/hutool/crypto/digest/HMac;

.field private final modDivisor:I

.field private final passwordLength:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x9

    new-array v0, v0, [I

    .line 23
    fill-array-data v0, :array_0

    sput-object v0, Lcn/hutool/crypto/digest/otp/HOTP;->MOD_DIVISORS:[I

    .line 32
    sget-object v0, Lcn/hutool/crypto/digest/HmacAlgorithm;->HmacSHA1:Lcn/hutool/crypto/digest/HmacAlgorithm;

    sput-object v0, Lcn/hutool/crypto/digest/otp/HOTP;->HOTP_HMAC_ALGORITHM:Lcn/hutool/crypto/digest/HmacAlgorithm;

    return-void

    :array_0
    .array-data 4
        0x1
        0xa
        0x64
        0x3e8
        0x2710
        0x186a0
        0xf4240
        0x989680
        0x5f5e100
    .end array-data
.end method

.method public constructor <init>(ILcn/hutool/crypto/digest/HmacAlgorithm;[B)V
    .locals 2

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    sget-object v0, Lcn/hutool/crypto/digest/otp/HOTP;->MOD_DIVISORS:[I

    array-length v1, v0

    if-ge p1, v1, :cond_0

    .line 70
    new-instance v1, Lcn/hutool/crypto/digest/HMac;

    invoke-direct {v1, p2, p3}, Lcn/hutool/crypto/digest/HMac;-><init>(Lcn/hutool/crypto/digest/HmacAlgorithm;[B)V

    iput-object v1, p0, Lcn/hutool/crypto/digest/otp/HOTP;->mac:Lcn/hutool/crypto/digest/HMac;

    .line 71
    aget p2, v0, p1

    iput p2, p0, Lcn/hutool/crypto/digest/otp/HOTP;->modDivisor:I

    .line 72
    iput p1, p0, Lcn/hutool/crypto/digest/otp/HOTP;->passwordLength:I

    const/16 p1, 0x8

    new-array p1, p1, [B

    .line 73
    iput-object p1, p0, Lcn/hutool/crypto/digest/otp/HOTP;->buffer:[B

    return-void

    .line 68
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Password length must be < "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length p3, v0

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(I[B)V
    .locals 1

    .line 56
    sget-object v0, Lcn/hutool/crypto/digest/otp/HOTP;->HOTP_HMAC_ALGORITHM:Lcn/hutool/crypto/digest/HmacAlgorithm;

    invoke-direct {p0, p1, v0, p2}, Lcn/hutool/crypto/digest/otp/HOTP;-><init>(ILcn/hutool/crypto/digest/HmacAlgorithm;[B)V

    return-void
.end method

.method public constructor <init>([B)V
    .locals 1

    const/4 v0, 0x6

    .line 46
    invoke-direct {p0, v0, p1}, Lcn/hutool/crypto/digest/otp/HOTP;-><init>(I[B)V

    return-void
.end method

.method public static generateSecretKey(I)Ljava/lang/String;
    .locals 1

    const/16 v0, 0x100

    .line 108
    invoke-static {v0}, Lcn/hutool/core/util/RandomUtil;->randomBytes(I)[B

    move-result-object v0

    invoke-static {v0}, Lcn/hutool/core/util/RandomUtil;->getSHA1PRNGRandom([B)Ljava/security/SecureRandom;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/security/SecureRandom;->generateSeed(I)[B

    move-result-object p0

    invoke-static {p0}, Lcn/hutool/core/codec/Base32;->encode([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private truncate([B)I
    .locals 3

    .line 136
    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    aget-byte v0, p1, v0

    and-int/lit8 v0, v0, 0xf

    .line 137
    aget-byte v1, p1, v0

    and-int/lit8 v1, v1, 0x7f

    shl-int/lit8 v1, v1, 0x18

    add-int/lit8 v2, v0, 0x1

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v1, v2

    add-int/lit8 v2, v0, 0x2

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x3

    aget-byte p1, p1, v0

    and-int/lit16 p1, p1, 0xff

    or-int/2addr p1, v1

    iget v0, p0, Lcn/hutool/crypto/digest/otp/HOTP;->modDivisor:I

    rem-int/2addr p1, v0

    return p1
.end method


# virtual methods
.method public declared-synchronized generate(J)I
    .locals 4

    monitor-enter p0

    .line 86
    :try_start_0
    iget-object v0, p0, Lcn/hutool/crypto/digest/otp/HOTP;->buffer:[B

    const-wide/high16 v1, -0x100000000000000L

    and-long/2addr v1, p1

    const/16 v3, 0x38

    ushr-long/2addr v1, v3

    long-to-int v1, v1

    int-to-byte v1, v1

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    const-wide/high16 v1, 0xff000000000000L

    and-long/2addr v1, p1

    const/16 v3, 0x30

    ushr-long/2addr v1, v3

    long-to-int v1, v1

    int-to-byte v1, v1

    const/4 v2, 0x1

    .line 87
    aput-byte v1, v0, v2

    const-wide v1, 0xff0000000000L

    and-long/2addr v1, p1

    const/16 v3, 0x28

    ushr-long/2addr v1, v3

    long-to-int v1, v1

    int-to-byte v1, v1

    const/4 v2, 0x2

    .line 88
    aput-byte v1, v0, v2

    const-wide v1, 0xff00000000L

    and-long/2addr v1, p1

    const/16 v3, 0x20

    ushr-long/2addr v1, v3

    long-to-int v1, v1

    int-to-byte v1, v1

    const/4 v2, 0x3

    .line 89
    aput-byte v1, v0, v2

    const-wide v1, 0xff000000L

    and-long/2addr v1, p1

    const/16 v3, 0x18

    ushr-long/2addr v1, v3

    long-to-int v1, v1

    int-to-byte v1, v1

    const/4 v2, 0x4

    .line 90
    aput-byte v1, v0, v2

    const-wide/32 v1, 0xff0000

    and-long/2addr v1, p1

    const/16 v3, 0x10

    ushr-long/2addr v1, v3

    long-to-int v1, v1

    int-to-byte v1, v1

    const/4 v2, 0x5

    .line 91
    aput-byte v1, v0, v2

    const-wide/32 v1, 0xff00

    and-long/2addr v1, p1

    const/16 v3, 0x8

    ushr-long/2addr v1, v3

    long-to-int v1, v1

    int-to-byte v1, v1

    const/4 v2, 0x6

    .line 92
    aput-byte v1, v0, v2

    const-wide/16 v1, 0xff

    and-long/2addr p1, v1

    long-to-int p1, p1

    int-to-byte p1, p1

    const/4 p2, 0x7

    .line 93
    aput-byte p1, v0, p2

    .line 95
    iget-object p1, p0, Lcn/hutool/crypto/digest/otp/HOTP;->mac:Lcn/hutool/crypto/digest/HMac;

    invoke-virtual {p1, v0}, Lcn/hutool/crypto/digest/HMac;->digest([B)[B

    move-result-object p1

    .line 97
    invoke-direct {p0, p1}, Lcn/hutool/crypto/digest/otp/HOTP;->truncate([B)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public getAlgorithm()Ljava/lang/String;
    .locals 1

    .line 126
    iget-object v0, p0, Lcn/hutool/crypto/digest/otp/HOTP;->mac:Lcn/hutool/crypto/digest/HMac;

    invoke-virtual {v0}, Lcn/hutool/crypto/digest/HMac;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPasswordLength()I
    .locals 1

    .line 117
    iget v0, p0, Lcn/hutool/crypto/digest/otp/HOTP;->passwordLength:I

    return v0
.end method
