.class public Lcn/hutool/core/codec/Base16Codec;
.super Ljava/lang/Object;
.source "Base16Codec.java"

# interfaces
.implements Lcn/hutool/core/codec/Encoder;
.implements Lcn/hutool/core/codec/Decoder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcn/hutool/core/codec/Encoder<",
        "[B[C>;",
        "Lcn/hutool/core/codec/Decoder<",
        "Ljava/lang/CharSequence;",
        "[B>;"
    }
.end annotation


# static fields
.field public static final CODEC_LOWER:Lcn/hutool/core/codec/Base16Codec;

.field public static final CODEC_UPPER:Lcn/hutool/core/codec/Base16Codec;


# instance fields
.field private final alphabets:[C


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 16
    new-instance v0, Lcn/hutool/core/codec/Base16Codec;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcn/hutool/core/codec/Base16Codec;-><init>(Z)V

    sput-object v0, Lcn/hutool/core/codec/Base16Codec;->CODEC_LOWER:Lcn/hutool/core/codec/Base16Codec;

    .line 17
    new-instance v0, Lcn/hutool/core/codec/Base16Codec;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcn/hutool/core/codec/Base16Codec;-><init>(Z)V

    sput-object v0, Lcn/hutool/core/codec/Base16Codec;->CODEC_UPPER:Lcn/hutool/core/codec/Base16Codec;

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    const-string p1, "0123456789abcdef"

    goto :goto_0

    :cond_0
    const-string p1, "0123456789ABCDEF"

    .line 27
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    iput-object p1, p0, Lcn/hutool/core/codec/Base16Codec;->alphabets:[C

    return-void
.end method

.method private static toDigit(CI)I
    .locals 3

    const/16 v0, 0x10

    .line 112
    invoke-static {p0, v0}, Ljava/lang/Character;->digit(CI)I

    move-result v0

    if-ltz v0, :cond_0

    return v0

    .line 114
    :cond_0
    new-instance v0, Lcn/hutool/core/exceptions/UtilException;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p0

    aput-object p0, v1, v2

    const/4 p0, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, p0

    const-string p0, "Illegal hexadecimal character {} at index {}"

    invoke-direct {v0, p0, v1}, Lcn/hutool/core/exceptions/UtilException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0
.end method


# virtual methods
.method public appendHex(Ljava/lang/StringBuilder;B)V
    .locals 2

    and-int/lit16 v0, p2, 0xf0

    ushr-int/lit8 v0, v0, 0x4

    and-int/lit8 p2, p2, 0xf

    .line 99
    iget-object v1, p0, Lcn/hutool/core/codec/Base16Codec;->alphabets:[C

    aget-char v0, v1, v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 100
    iget-object v0, p0, Lcn/hutool/core/codec/Base16Codec;->alphabets:[C

    aget-char p2, v0, p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-void
.end method

.method public bridge synthetic decode(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 14
    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {p0, p1}, Lcn/hutool/core/codec/Base16Codec;->decode(Ljava/lang/CharSequence;)[B

    move-result-object p1

    return-object p1
.end method

.method public decode(Ljava/lang/CharSequence;)[B
    .locals 6

    .line 44
    invoke-static {p1}, Lcn/hutool/core/util/StrUtil;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 48
    :cond_0
    invoke-static {p1}, Lcn/hutool/core/util/StrUtil;->cleanBlank(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 49
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_1

    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "0"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 54
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    :cond_1
    shr-int/lit8 v1, v0, 0x1

    .line 57
    new-array v1, v1, [B

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v2, v0, :cond_2

    .line 61
    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-static {v4, v2}, Lcn/hutool/core/codec/Base16Codec;->toDigit(CI)I

    move-result v4

    shl-int/lit8 v4, v4, 0x4

    add-int/lit8 v2, v2, 0x1

    .line 63
    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    invoke-static {v5, v2}, Lcn/hutool/core/codec/Base16Codec;->toDigit(CI)I

    move-result v5

    or-int/2addr v4, v5

    add-int/lit8 v2, v2, 0x1

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    .line 65
    aput-byte v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method public bridge synthetic encode(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 14
    check-cast p1, [B

    invoke-virtual {p0, p1}, Lcn/hutool/core/codec/Base16Codec;->encode([B)[C

    move-result-object p1

    return-object p1
.end method

.method public encode([B)[C
    .locals 8

    .line 32
    array-length v0, p1

    shl-int/lit8 v1, v0, 0x1

    .line 33
    new-array v1, v1, [C

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v2, v0, :cond_0

    add-int/lit8 v4, v3, 0x1

    .line 36
    iget-object v5, p0, Lcn/hutool/core/codec/Base16Codec;->alphabets:[C

    aget-byte v6, p1, v2

    and-int/lit16 v7, v6, 0xf0

    ushr-int/lit8 v7, v7, 0x4

    aget-char v7, v5, v7

    aput-char v7, v1, v3

    add-int/lit8 v3, v4, 0x1

    and-int/lit8 v6, v6, 0xf

    .line 37
    aget-char v5, v5, v6

    aput-char v5, v1, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public toUnicodeHex(C)Ljava/lang/String;
    .locals 3

    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\\u"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcn/hutool/core/codec/Base16Codec;->alphabets:[C

    shr-int/lit8 v2, p1, 0xc

    and-int/lit8 v2, v2, 0xf

    aget-char v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/hutool/core/codec/Base16Codec;->alphabets:[C

    shr-int/lit8 v2, p1, 0x8

    and-int/lit8 v2, v2, 0xf

    aget-char v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/hutool/core/codec/Base16Codec;->alphabets:[C

    shr-int/lit8 v2, p1, 0x4

    and-int/lit8 v2, v2, 0xf

    aget-char v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/hutool/core/codec/Base16Codec;->alphabets:[C

    and-int/lit8 p1, p1, 0xf

    aget-char p1, v1, p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
