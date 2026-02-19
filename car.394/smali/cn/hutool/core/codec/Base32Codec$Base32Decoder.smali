.class public Lcn/hutool/core/codec/Base32Codec$Base32Decoder;
.super Ljava/lang/Object;
.source "Base32Codec.java"

# interfaces
.implements Lcn/hutool/core/codec/Decoder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/hutool/core/codec/Base32Codec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Base32Decoder"
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
.field private static final BASE_CHAR:C = '0'

.field public static final DECODER:Lcn/hutool/core/codec/Base32Codec$Base32Decoder;

.field public static final HEX_DECODER:Lcn/hutool/core/codec/Base32Codec$Base32Decoder;


# instance fields
.field private final lookupTable:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 141
    new-instance v0, Lcn/hutool/core/codec/Base32Codec$Base32Decoder;

    const-string v1, "ABCDEFGHIJKLMNOPQRSTUVWXYZ234567"

    invoke-direct {v0, v1}, Lcn/hutool/core/codec/Base32Codec$Base32Decoder;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcn/hutool/core/codec/Base32Codec$Base32Decoder;->DECODER:Lcn/hutool/core/codec/Base32Codec$Base32Decoder;

    .line 142
    new-instance v0, Lcn/hutool/core/codec/Base32Codec$Base32Decoder;

    const-string v1, "0123456789ABCDEFGHIJKLMNOPQRSTUV"

    invoke-direct {v0, v1}, Lcn/hutool/core/codec/Base32Codec$Base32Decoder;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcn/hutool/core/codec/Base32Codec$Base32Decoder;->HEX_DECODER:Lcn/hutool/core/codec/Base32Codec$Base32Decoder;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 6

    .line 151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x80

    new-array v0, v0, [B

    .line 152
    iput-object v0, p0, Lcn/hutool/core/codec/Base32Codec$Base32Decoder;->lookupTable:[B

    const/4 v1, -0x1

    .line 153
    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([BB)V

    .line 155
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 159
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 160
    iget-object v3, p0, Lcn/hutool/core/codec/Base32Codec$Base32Decoder;->lookupTable:[B

    add-int/lit8 v4, v2, -0x30

    int-to-byte v5, v1

    aput-byte v5, v3, v4

    const/16 v4, 0x41

    if-lt v2, v4, :cond_0

    const/16 v4, 0x5a

    if-gt v2, v4, :cond_0

    .line 163
    invoke-static {v2}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v2

    add-int/lit8 v2, v2, -0x30

    aput-byte v5, v3, v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public bridge synthetic decode(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 138
    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {p0, p1}, Lcn/hutool/core/codec/Base32Codec$Base32Decoder;->decode(Ljava/lang/CharSequence;)[B

    move-result-object p1

    return-object p1
.end method

.method public decode(Ljava/lang/CharSequence;)[B
    .locals 8

    .line 171
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "="

    .line 172
    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    :goto_0
    mul-int/lit8 v0, v0, 0x5

    div-int/lit8 v0, v0, 0x8

    .line 173
    new-array v1, v0, [B

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    .line 175
    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v2, v5, :cond_7

    .line 176
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    add-int/lit8 v5, v5, -0x30

    if-ltz v5, :cond_6

    .line 179
    iget-object v6, p0, Lcn/hutool/core/codec/Base32Codec$Base32Decoder;->lookupTable:[B

    array-length v7, v6

    if-lt v5, v7, :cond_1

    goto :goto_2

    .line 183
    :cond_1
    aget-byte v5, v6, v5

    if-gez v5, :cond_2

    goto :goto_2

    :cond_2
    const/4 v6, 0x3

    if-gt v3, v6, :cond_4

    add-int/lit8 v3, v3, 0x5

    .line 191
    rem-int/lit8 v3, v3, 0x8

    if-nez v3, :cond_3

    .line 193
    aget-byte v6, v1, v4

    or-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, v1, v4

    add-int/lit8 v4, v4, 0x1

    if-lt v4, v0, :cond_6

    goto :goto_3

    .line 199
    :cond_3
    aget-byte v6, v1, v4

    rsub-int/lit8 v7, v3, 0x8

    shl-int/2addr v5, v7

    or-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, v1, v4

    goto :goto_2

    :cond_4
    add-int/lit8 v3, v3, 0x5

    .line 202
    rem-int/lit8 v3, v3, 0x8

    .line 203
    aget-byte v6, v1, v4

    ushr-int v7, v5, v3

    or-int/2addr v6, v7

    int-to-byte v6, v6

    aput-byte v6, v1, v4

    add-int/lit8 v4, v4, 0x1

    if-lt v4, v0, :cond_5

    goto :goto_3

    .line 209
    :cond_5
    aget-byte v6, v1, v4

    rsub-int/lit8 v7, v3, 0x8

    shl-int/2addr v5, v7

    or-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, v1, v4

    :cond_6
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_7
    :goto_3
    return-object v1
.end method
