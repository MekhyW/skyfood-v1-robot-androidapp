.class public Lcn/hutool/core/codec/Base58Codec$Base58Encoder;
.super Ljava/lang/Object;
.source "Base58Codec.java"

# interfaces
.implements Lcn/hutool/core/codec/Encoder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/hutool/core/codec/Base58Codec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Base58Encoder"
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
.field private static final DEFAULT_ALPHABET:Ljava/lang/String; = "123456789ABCDEFGHJKLMNPQRSTUVWXYZabcdefghijkmnopqrstuvwxyz"

.field public static final ENCODER:Lcn/hutool/core/codec/Base58Codec$Base58Encoder;


# instance fields
.field private final alphabet:[C

.field private final alphabetZero:C


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 49
    new-instance v0, Lcn/hutool/core/codec/Base58Codec$Base58Encoder;

    const-string v1, "123456789ABCDEFGHJKLMNPQRSTUVWXYZabcdefghijkmnopqrstuvwxyz"

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/hutool/core/codec/Base58Codec$Base58Encoder;-><init>([C)V

    sput-object v0, Lcn/hutool/core/codec/Base58Codec$Base58Encoder;->ENCODER:Lcn/hutool/core/codec/Base58Codec$Base58Encoder;

    return-void
.end method

.method public constructor <init>([C)V
    .locals 1

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p1, p0, Lcn/hutool/core/codec/Base58Codec$Base58Encoder;->alphabet:[C

    const/4 v0, 0x0

    .line 61
    aget-char p1, p1, v0

    iput-char p1, p0, Lcn/hutool/core/codec/Base58Codec$Base58Encoder;->alphabetZero:C

    return-void
.end method


# virtual methods
.method public bridge synthetic encode(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 46
    check-cast p1, [B

    invoke-virtual {p0, p1}, Lcn/hutool/core/codec/Base58Codec$Base58Encoder;->encode([B)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public encode([B)Ljava/lang/String;
    .locals 8

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 69
    :cond_0
    array-length v0, p1

    if-nez v0, :cond_1

    const-string p1, ""

    return-object p1

    :cond_1
    const/4 v0, 0x0

    .line 74
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_2

    aget-byte v1, p1, v0

    if-nez v1, :cond_2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 78
    :cond_2
    array-length v1, p1

    invoke-static {p1, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p1

    .line 79
    array-length v1, p1

    mul-int/lit8 v1, v1, 0x2

    new-array v2, v1, [C

    move v3, v0

    move v4, v1

    .line 81
    :cond_3
    :goto_1
    array-length v5, p1

    if-ge v3, v5, :cond_4

    add-int/lit8 v4, v4, -0x1

    .line 82
    iget-object v5, p0, Lcn/hutool/core/codec/Base58Codec$Base58Encoder;->alphabet:[C

    const/16 v6, 0x100

    const/16 v7, 0x3a

    invoke-static {p1, v3, v6, v7}, Lcn/hutool/core/codec/Base58Codec;->access$000([BIII)B

    move-result v6

    aget-char v5, v5, v6

    aput-char v5, v2, v4

    .line 83
    aget-byte v5, p1, v3

    if-nez v5, :cond_3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    :goto_2
    if-ge v4, v1, :cond_5

    .line 88
    aget-char p1, v2, v4

    iget-char v3, p0, Lcn/hutool/core/codec/Base58Codec$Base58Encoder;->alphabetZero:C

    if-ne p1, v3, :cond_5

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_5
    :goto_3
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_6

    add-int/lit8 v4, v4, -0x1

    .line 92
    iget-char p1, p0, Lcn/hutool/core/codec/Base58Codec$Base58Encoder;->alphabetZero:C

    aput-char p1, v2, v4

    goto :goto_3

    .line 95
    :cond_6
    new-instance p1, Ljava/lang/String;

    sub-int/2addr v1, v4

    invoke-direct {p1, v2, v4, v1}, Ljava/lang/String;-><init>([CII)V

    return-object p1
.end method
