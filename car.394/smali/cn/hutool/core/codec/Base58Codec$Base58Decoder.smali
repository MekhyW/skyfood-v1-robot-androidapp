.class public Lcn/hutool/core/codec/Base58Codec$Base58Decoder;
.super Ljava/lang/Object;
.source "Base58Codec.java"

# interfaces
.implements Lcn/hutool/core/codec/Decoder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/hutool/core/codec/Base58Codec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Base58Decoder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcn/hutool/core/codec/Decoder<",
        "Ljava/lang/CharSequence;",
        "[B>;"
    }
.end annotation


# static fields
.field public static DECODER:Lcn/hutool/core/codec/Base58Codec$Base58Decoder;


# instance fields
.field private final lookupTable:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 106
    new-instance v0, Lcn/hutool/core/codec/Base58Codec$Base58Decoder;

    const-string v1, "123456789ABCDEFGHJKLMNPQRSTUVWXYZabcdefghijkmnopqrstuvwxyz"

    invoke-direct {v0, v1}, Lcn/hutool/core/codec/Base58Codec$Base58Decoder;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcn/hutool/core/codec/Base58Codec$Base58Decoder;->DECODER:Lcn/hutool/core/codec/Base58Codec$Base58Decoder;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 5

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x7b

    new-array v0, v0, [B

    const/4 v1, -0x1

    .line 117
    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([BB)V

    .line 119
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 121
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    int-to-byte v4, v2

    aput-byte v4, v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 123
    :cond_0
    iput-object v0, p0, Lcn/hutool/core/codec/Base58Codec$Base58Decoder;->lookupTable:[B

    return-void
.end method


# virtual methods
.method public bridge synthetic decode(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 104
    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {p0, p1}, Lcn/hutool/core/codec/Base58Codec$Base58Decoder;->decode(Ljava/lang/CharSequence;)[B

    move-result-object p1

    return-object p1
.end method

.method public decode(Ljava/lang/CharSequence;)[B
    .locals 8

    .line 128
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    new-array p1, v1, [B

    return-object p1

    .line 132
    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    new-array v2, v0, [B

    move v3, v1

    .line 133
    :goto_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-ge v3, v4, :cond_3

    .line 134
    invoke-interface {p1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    const/16 v5, 0x80

    if-ge v4, v5, :cond_1

    .line 135
    iget-object v5, p0, Lcn/hutool/core/codec/Base58Codec$Base58Decoder;->lookupTable:[B

    aget-byte v5, v5, v4

    goto :goto_1

    :cond_1
    const/4 v5, -0x1

    :goto_1
    if-ltz v5, :cond_2

    int-to-byte v4, v5

    .line 139
    aput-byte v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 137
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "Invalid char \'{}\' at [{}]"

    invoke-static {v1, v0}, Lcn/hutool/core/util/StrUtil;->format(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    :goto_2
    if-ge v1, v0, :cond_4

    .line 143
    aget-byte v3, v2, v1

    if-nez v3, :cond_4

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 147
    :cond_4
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    new-array v3, p1, [B

    move v5, p1

    move v4, v1

    :cond_5
    :goto_3
    if-ge v4, v0, :cond_6

    add-int/lit8 v5, v5, -0x1

    const/16 v6, 0x3a

    const/16 v7, 0x100

    .line 150
    invoke-static {v2, v4, v6, v7}, Lcn/hutool/core/codec/Base58Codec;->access$000([BIII)B

    move-result v6

    aput-byte v6, v3, v5

    .line 151
    aget-byte v6, v2, v4

    if-nez v6, :cond_5

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_6
    :goto_4
    if-ge v5, p1, :cond_7

    .line 156
    aget-byte v0, v3, v5

    if-nez v0, :cond_7

    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_7
    sub-int/2addr v5, v1

    .line 160
    invoke-static {v3, v5, p1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p1

    return-object p1
.end method
