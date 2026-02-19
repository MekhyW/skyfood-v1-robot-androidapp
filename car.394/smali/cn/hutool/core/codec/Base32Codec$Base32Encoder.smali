.class public Lcn/hutool/core/codec/Base32Codec$Base32Encoder;
.super Ljava/lang/Object;
.source "Base32Codec.java"

# interfaces
.implements Lcn/hutool/core/codec/Encoder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/hutool/core/codec/Base32Codec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Base32Encoder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcn/hutool/core/codec/Encoder<",
        "[B",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field private static final BASE32_FILL:[I

.field private static final DEFAULT_ALPHABET:Ljava/lang/String; = "ABCDEFGHIJKLMNOPQRSTUVWXYZ234567"

.field private static final DEFAULT_PAD:Ljava/lang/Character;

.field public static final ENCODER:Lcn/hutool/core/codec/Base32Codec$Base32Encoder;

.field private static final HEX_ALPHABET:Ljava/lang/String; = "0123456789ABCDEFGHIJKLMNOPQRSTUV"

.field public static final HEX_ENCODER:Lcn/hutool/core/codec/Base32Codec$Base32Encoder;


# instance fields
.field private final alphabet:[C

.field private final pad:Ljava/lang/Character;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x3d

    .line 62
    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    sput-object v0, Lcn/hutool/core/codec/Base32Codec$Base32Encoder;->DEFAULT_PAD:Ljava/lang/Character;

    const/4 v1, 0x5

    new-array v1, v1, [I

    .line 63
    fill-array-data v1, :array_0

    sput-object v1, Lcn/hutool/core/codec/Base32Codec$Base32Encoder;->BASE32_FILL:[I

    .line 65
    new-instance v1, Lcn/hutool/core/codec/Base32Codec$Base32Encoder;

    const-string v2, "ABCDEFGHIJKLMNOPQRSTUVWXYZ234567"

    invoke-direct {v1, v2, v0}, Lcn/hutool/core/codec/Base32Codec$Base32Encoder;-><init>(Ljava/lang/String;Ljava/lang/Character;)V

    sput-object v1, Lcn/hutool/core/codec/Base32Codec$Base32Encoder;->ENCODER:Lcn/hutool/core/codec/Base32Codec$Base32Encoder;

    .line 66
    new-instance v1, Lcn/hutool/core/codec/Base32Codec$Base32Encoder;

    const-string v2, "0123456789ABCDEFGHIJKLMNOPQRSTUV"

    invoke-direct {v1, v2, v0}, Lcn/hutool/core/codec/Base32Codec$Base32Encoder;-><init>(Ljava/lang/String;Ljava/lang/Character;)V

    sput-object v1, Lcn/hutool/core/codec/Base32Codec$Base32Encoder;->HEX_ENCODER:Lcn/hutool/core/codec/Base32Codec$Base32Encoder;

    return-void

    nop

    :array_0
    .array-data 4
        -0x1
        0x4
        0x1
        0x6
        0x3
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Character;)V
    .locals 0

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    iput-object p1, p0, Lcn/hutool/core/codec/Base32Codec$Base32Encoder;->alphabet:[C

    .line 79
    iput-object p2, p0, Lcn/hutool/core/codec/Base32Codec$Base32Encoder;->pad:Ljava/lang/Character;

    return-void
.end method


# virtual methods
.method public bridge synthetic encode(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 59
    check-cast p1, [B

    invoke-virtual {p0, p1}, Lcn/hutool/core/codec/Base32Codec$Base32Encoder;->encode([B)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public encode([B)Ljava/lang/String;
    .locals 8

    .line 90
    array-length v0, p1

    mul-int/lit8 v0, v0, 0x8

    div-int/lit8 v0, v0, 0x5

    if-eqz v0, :cond_0

    add-int/lit8 v0, v0, 0x1

    .line 92
    sget-object v1, Lcn/hutool/core/codec/Base32Codec$Base32Encoder;->BASE32_FILL:[I

    array-length v2, p1

    mul-int/lit8 v2, v2, 0x8

    rem-int/lit8 v2, v2, 0x5

    aget v1, v1, v2

    add-int/2addr v0, v1

    .line 95
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    .line 97
    :goto_0
    array-length v5, p1

    if-ge v3, v5, :cond_6

    .line 99
    aget-byte v5, p1, v3

    if-ltz v5, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit16 v5, v5, 0x100

    :goto_1
    const/4 v6, 0x3

    if-le v4, v6, :cond_4

    add-int/lit8 v3, v3, 0x1

    .line 103
    array-length v6, p1

    if-ge v3, v6, :cond_3

    .line 104
    aget-byte v6, p1, v3

    if-ltz v6, :cond_2

    goto :goto_2

    :cond_2
    add-int/lit16 v6, v6, 0x100

    goto :goto_2

    :cond_3
    move v6, v2

    :goto_2
    const/16 v7, 0xff

    shr-int/2addr v7, v4

    and-int/2addr v5, v7

    add-int/lit8 v4, v4, 0x5

    .line 110
    rem-int/lit8 v4, v4, 0x8

    shl-int/2addr v5, v4

    rsub-int/lit8 v7, v4, 0x8

    shr-int/2addr v6, v7

    or-int/2addr v5, v6

    goto :goto_3

    :cond_4
    add-int/lit8 v4, v4, 0x5

    rsub-int/lit8 v6, v4, 0x8

    shr-int/2addr v5, v6

    and-int/lit8 v5, v5, 0x1f

    .line 116
    rem-int/lit8 v4, v4, 0x8

    if-nez v4, :cond_5

    add-int/lit8 v3, v3, 0x1

    .line 121
    :cond_5
    :goto_3
    iget-object v6, p0, Lcn/hutool/core/codec/Base32Codec$Base32Encoder;->alphabet:[C

    aget-char v5, v6, v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 124
    :cond_6
    iget-object p1, p0, Lcn/hutool/core/codec/Base32Codec$Base32Encoder;->pad:Ljava/lang/Character;

    if-eqz p1, :cond_7

    .line 126
    :goto_4
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    if-ge p1, v0, :cond_7

    .line 127
    iget-object p1, p0, Lcn/hutool/core/codec/Base32Codec$Base32Encoder;->pad:Ljava/lang/Character;

    invoke-virtual {p1}, Ljava/lang/Character;->charValue()C

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 131
    :cond_7
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
