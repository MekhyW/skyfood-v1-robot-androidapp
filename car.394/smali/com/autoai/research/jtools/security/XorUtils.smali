.class public Lcom/autoai/research/jtools/security/XorUtils;
.super Ljava/lang/Object;
.source "XorUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "XorUtils"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static xoEncryptOrDecrypt([BLjava/lang/String;)[B
    .locals 1

    const/4 v0, 0x0

    .line 31
    invoke-static {p0, p1, v0}, Lcom/autoai/research/jtools/security/XorUtils;->xoEncryptOrDecrypt([BLjava/lang/String;Ljava/lang/String;)[B

    move-result-object p0

    return-object p0
.end method

.method public static xoEncryptOrDecrypt([BLjava/lang/String;Ljava/lang/String;)[B
    .locals 3

    if-nez p2, :cond_0

    .line 45
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    .line 46
    :goto_0
    array-length p2, p0

    new-array p2, p2, [B

    const/4 v0, 0x0

    .line 47
    :goto_1
    array-length v1, p0

    if-ge v0, v1, :cond_1

    .line 48
    aget-byte v1, p0, v0

    array-length v2, p1

    rem-int v2, v0, v2

    aget-byte v2, p1, v2

    xor-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, p2, v0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-object p2

    :catch_0
    move-exception p0

    .line 52
    invoke-static {}, Lcom/autoai/research/atools/LogUtils;->isLoggable()Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "XorUtils"

    const-string p2, "xoEncrypt --> UnsupportedEncodingException"

    .line 53
    invoke-static {p1, p2, p0}, Lcom/autoai/research/atools/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 56
    :cond_2
    sget-object p0, Lcom/autoai/research/jtools/math/ByteUtils;->EMPTY_BYTE_ARRAY:[B

    return-object p0
.end method
