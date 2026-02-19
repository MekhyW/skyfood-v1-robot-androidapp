.class public Lcn/hutool/core/lang/hash/KetamaHash;
.super Ljava/lang/Object;
.source "KetamaHash.java"

# interfaces
.implements Lcn/hutool/core/lang/hash/Hash64;
.implements Lcn/hutool/core/lang/hash/Hash32;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcn/hutool/core/lang/hash/Hash64<",
        "Ljava/lang/String;",
        ">;",
        "Lcn/hutool/core/lang/hash/Hash32<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static md5(Ljava/lang/String;)[B
    .locals 2

    :try_start_0
    const-string v0, "MD5"

    .line 45
    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    invoke-static {p0}, Lcn/hutool/core/util/StrUtil;->utf8Bytes(Ljava/lang/CharSequence;)[B

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p0

    return-object p0

    :catch_0
    move-exception p0

    .line 47
    new-instance v0, Lcn/hutool/core/exceptions/UtilException;

    const-string v1, "MD5 algorithm not suooport!"

    invoke-direct {v0, v1, p0}, Lcn/hutool/core/exceptions/UtilException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method


# virtual methods
.method public bridge synthetic hash(Ljava/lang/Object;)Ljava/lang/Number;
    .locals 0

    .line 15
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcn/hutool/core/lang/hash/KetamaHash;->hash(Ljava/lang/String;)Ljava/lang/Number;

    move-result-object p1

    return-object p1
.end method

.method public hash(Ljava/lang/String;)Ljava/lang/Number;
    .locals 2

    .line 33
    invoke-virtual {p0, p1}, Lcn/hutool/core/lang/hash/KetamaHash;->hash64(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic hash32(Ljava/lang/Object;)I
    .locals 0

    .line 15
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcn/hutool/core/lang/hash/KetamaHash;->hash32(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public hash32(Ljava/lang/String;)I
    .locals 4

    .line 28
    invoke-virtual {p0, p1}, Lcn/hutool/core/lang/hash/KetamaHash;->hash64(Ljava/lang/String;)J

    move-result-wide v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    long-to-int p1, v0

    return p1
.end method

.method public bridge synthetic hash64(Ljava/lang/Object;)J
    .locals 2

    .line 15
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcn/hutool/core/lang/hash/KetamaHash;->hash64(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public hash64(Ljava/lang/String;)J
    .locals 5

    .line 19
    invoke-static {p1}, Lcn/hutool/core/lang/hash/KetamaHash;->md5(Ljava/lang/String;)[B

    move-result-object p1

    const/4 v0, 0x3

    .line 20
    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    int-to-long v0, v0

    const/16 v2, 0x18

    shl-long/2addr v0, v2

    const/4 v2, 0x2

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    int-to-long v2, v2

    const/16 v4, 0x10

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    const/4 v2, 0x1

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    int-to-long v2, v2

    const/16 v4, 0x8

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    const/4 v2, 0x0

    aget-byte p1, p1, v2

    and-int/lit16 p1, p1, 0xff

    int-to-long v2, p1

    or-long/2addr v0, v2

    return-wide v0
.end method
