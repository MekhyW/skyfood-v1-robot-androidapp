.class public Lcn/hutool/core/codec/Base32Codec;
.super Ljava/lang/Object;
.source "Base32Codec.java"

# interfaces
.implements Lcn/hutool/core/codec/Encoder;
.implements Lcn/hutool/core/codec/Decoder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/hutool/core/codec/Base32Codec$Base32Decoder;,
        Lcn/hutool/core/codec/Base32Codec$Base32Encoder;
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
.field public static INSTANCE:Lcn/hutool/core/codec/Base32Codec;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 20
    new-instance v0, Lcn/hutool/core/codec/Base32Codec;

    invoke-direct {v0}, Lcn/hutool/core/codec/Base32Codec;-><init>()V

    sput-object v0, Lcn/hutool/core/codec/Base32Codec;->INSTANCE:Lcn/hutool/core/codec/Base32Codec;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic decode(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 18
    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {p0, p1}, Lcn/hutool/core/codec/Base32Codec;->decode(Ljava/lang/CharSequence;)[B

    move-result-object p1

    return-object p1
.end method

.method public decode(Ljava/lang/CharSequence;)[B
    .locals 1

    const/4 v0, 0x0

    .line 41
    invoke-virtual {p0, p1, v0}, Lcn/hutool/core/codec/Base32Codec;->decode(Ljava/lang/CharSequence;Z)[B

    move-result-object p1

    return-object p1
.end method

.method public decode(Ljava/lang/CharSequence;Z)[B
    .locals 0

    if-eqz p2, :cond_0

    .line 52
    sget-object p2, Lcn/hutool/core/codec/Base32Codec$Base32Decoder;->HEX_DECODER:Lcn/hutool/core/codec/Base32Codec$Base32Decoder;

    goto :goto_0

    :cond_0
    sget-object p2, Lcn/hutool/core/codec/Base32Codec$Base32Decoder;->DECODER:Lcn/hutool/core/codec/Base32Codec$Base32Decoder;

    .line 53
    :goto_0
    invoke-virtual {p2, p1}, Lcn/hutool/core/codec/Base32Codec$Base32Decoder;->decode(Ljava/lang/CharSequence;)[B

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic encode(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 18
    check-cast p1, [B

    invoke-virtual {p0, p1}, Lcn/hutool/core/codec/Base32Codec;->encode([B)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public encode([B)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 24
    invoke-virtual {p0, p1, v0}, Lcn/hutool/core/codec/Base32Codec;->encode([BZ)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public encode([BZ)Ljava/lang/String;
    .locals 0

    if-eqz p2, :cond_0

    .line 35
    sget-object p2, Lcn/hutool/core/codec/Base32Codec$Base32Encoder;->HEX_ENCODER:Lcn/hutool/core/codec/Base32Codec$Base32Encoder;

    goto :goto_0

    :cond_0
    sget-object p2, Lcn/hutool/core/codec/Base32Codec$Base32Encoder;->ENCODER:Lcn/hutool/core/codec/Base32Codec$Base32Encoder;

    .line 36
    :goto_0
    invoke-virtual {p2, p1}, Lcn/hutool/core/codec/Base32Codec$Base32Encoder;->encode([B)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
