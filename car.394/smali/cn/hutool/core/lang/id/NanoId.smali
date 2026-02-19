.class public Lcn/hutool/core/lang/id/NanoId;
.super Ljava/lang/Object;
.source "NanoId.java"


# static fields
.field private static final DEFAULT_ALPHABET:[C

.field private static final DEFAULT_NUMBER_GENERATOR:Ljava/security/SecureRandom;

.field public static final DEFAULT_SIZE:I = 0x15


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 27
    invoke-static {}, Lcn/hutool/core/util/RandomUtil;->getSecureRandom()Ljava/security/SecureRandom;

    move-result-object v0

    sput-object v0, Lcn/hutool/core/lang/id/NanoId;->DEFAULT_NUMBER_GENERATOR:Ljava/security/SecureRandom;

    const-string v0, "_-0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"

    .line 33
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcn/hutool/core/lang/id/NanoId;->DEFAULT_ALPHABET:[C

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static randomNanoId()Ljava/lang/String;
    .locals 1

    const/16 v0, 0x15

    .line 46
    invoke-static {v0}, Lcn/hutool/core/lang/id/NanoId;->randomNanoId(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static randomNanoId(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 56
    invoke-static {v0, v0, p0}, Lcn/hutool/core/lang/id/NanoId;->randomNanoId(Ljava/util/Random;[CI)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static randomNanoId(Ljava/util/Random;[CI)Ljava/lang/String;
    .locals 7

    if-nez p0, :cond_0

    .line 69
    sget-object p0, Lcn/hutool/core/lang/id/NanoId;->DEFAULT_NUMBER_GENERATOR:Ljava/security/SecureRandom;

    :cond_0
    if-nez p1, :cond_1

    .line 73
    sget-object p1, Lcn/hutool/core/lang/id/NanoId;->DEFAULT_ALPHABET:[C

    .line 76
    :cond_1
    array-length v0, p1

    if-eqz v0, :cond_5

    array-length v0, p1

    const/16 v1, 0x100

    if-ge v0, v1, :cond_5

    if-lez p2, :cond_4

    .line 84
    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    int-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    move-result-wide v2

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    const/4 v1, 0x2

    shl-int v0, v1, v0

    add-int/lit8 v0, v0, -0x1

    const-wide v1, 0x3ff999999999999aL    # 1.6

    int-to-double v3, v0

    mul-double/2addr v3, v1

    int-to-double v1, p2

    mul-double/2addr v3, v1

    .line 85
    array-length v1, p1

    int-to-double v1, v1

    div-double/2addr v3, v1

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    .line 87
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 90
    :cond_2
    new-array v3, v1, [B

    .line 91
    invoke-virtual {p0, v3}, Ljava/util/Random;->nextBytes([B)V

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v1, :cond_2

    .line 93
    aget-byte v5, v3, v4

    and-int/2addr v5, v0

    .line 94
    array-length v6, p1

    if-ge v5, v6, :cond_3

    .line 95
    aget-char v5, p1, v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 96
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-ne v5, p2, :cond_3

    .line 97
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 81
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Size must be greater than zero."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 77
    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Alphabet must contain between 1 and 255 symbols."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
