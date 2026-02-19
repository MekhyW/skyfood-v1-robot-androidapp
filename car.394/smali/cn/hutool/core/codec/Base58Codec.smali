.class public Lcn/hutool/core/codec/Base58Codec;
.super Ljava/lang/Object;
.source "Base58Codec.java"

# interfaces
.implements Lcn/hutool/core/codec/Encoder;
.implements Lcn/hutool/core/codec/Decoder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/hutool/core/codec/Base58Codec$Base58Decoder;,
        Lcn/hutool/core/codec/Base58Codec$Base58Encoder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcn/hutool/core/codec/Encoder<",
        "[B",
        "Ljava/lang/String;",
        ">;",
        "Lcn/hutool/core/codec/Decoder<",
        "Ljava/lang/CharSequence;",
        "[B>;"
    }
.end annotation


# static fields
.field public static INSTANCE:Lcn/hutool/core/codec/Base58Codec;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 16
    new-instance v0, Lcn/hutool/core/codec/Base58Codec;

    invoke-direct {v0}, Lcn/hutool/core/codec/Base58Codec;-><init>()V

    sput-object v0, Lcn/hutool/core/codec/Base58Codec;->INSTANCE:Lcn/hutool/core/codec/Base58Codec;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000([BIII)B
    .locals 0

    .line 14
    invoke-static {p0, p1, p2, p3}, Lcn/hutool/core/codec/Base58Codec;->divmod([BIII)B

    move-result p0

    return p0
.end method

.method private static divmod([BIII)B
    .locals 2

    const/4 v0, 0x0

    .line 179
    :goto_0
    array-length v1, p0

    if-ge p1, v1, :cond_0

    .line 180
    aget-byte v1, p0, p1

    and-int/lit16 v1, v1, 0xff

    mul-int/2addr v0, p2

    add-int/2addr v0, v1

    .line 182
    div-int v1, v0, p3

    int-to-byte v1, v1

    aput-byte v1, p0, p1

    .line 183
    rem-int/2addr v0, p3

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    int-to-byte p0, v0

    return p0
.end method


# virtual methods
.method public bridge synthetic decode(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 14
    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {p0, p1}, Lcn/hutool/core/codec/Base58Codec;->decode(Ljava/lang/CharSequence;)[B

    move-result-object p1

    return-object p1
.end method

.method public decode(Ljava/lang/CharSequence;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 38
    sget-object v0, Lcn/hutool/core/codec/Base58Codec$Base58Decoder;->DECODER:Lcn/hutool/core/codec/Base58Codec$Base58Decoder;

    invoke-virtual {v0, p1}, Lcn/hutool/core/codec/Base58Codec$Base58Decoder;->decode(Ljava/lang/CharSequence;)[B

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic encode(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 14
    check-cast p1, [B

    invoke-virtual {p0, p1}, Lcn/hutool/core/codec/Base58Codec;->encode([B)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public encode([B)Ljava/lang/String;
    .locals 1

    .line 26
    sget-object v0, Lcn/hutool/core/codec/Base58Codec$Base58Encoder;->ENCODER:Lcn/hutool/core/codec/Base58Codec$Base58Encoder;

    invoke-virtual {v0, p1}, Lcn/hutool/core/codec/Base58Codec$Base58Encoder;->encode([B)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
