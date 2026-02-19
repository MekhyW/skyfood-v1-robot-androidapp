.class public Lcn/hutool/core/lang/ansi/AnsiColorWrapper;
.super Ljava/lang/Object;
.source "AnsiColorWrapper.java"


# instance fields
.field private final bitDepth:Lcn/hutool/core/lang/ansi/AnsiColors$BitDepth;

.field private final code:I


# direct methods
.method public constructor <init>(ILcn/hutool/core/lang/ansi/AnsiColors$BitDepth;)V
    .locals 5

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    sget-object v0, Lcn/hutool/core/lang/ansi/AnsiColors$BitDepth;->FOUR:Lcn/hutool/core/lang/ansi/AnsiColors$BitDepth;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p2, v0, :cond_3

    const/16 v0, 0x1e

    if-gt v0, p1, :cond_0

    const/16 v0, 0x25

    if-le p1, v0, :cond_1

    :cond_0
    const/16 v0, 0x5a

    if-gt v0, p1, :cond_2

    const/16 v0, 0x61

    if-gt p1, v0, :cond_2

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    const-string v3, "The value of 4 bit color only supported [30~37],[90~97]."

    new-array v4, v2, [Ljava/lang/Object;

    .line 28
    invoke-static {v0, v3, v4}, Lcn/hutool/core/lang/Assert;->isTrue(ZLjava/lang/String;[Ljava/lang/Object;)V

    :cond_3
    if-ltz p1, :cond_4

    const/16 v0, 0xff

    if-gt p1, v0, :cond_4

    goto :goto_1

    :cond_4
    move v1, v2

    :goto_1
    const-string v0, "The value of 8 bit color only supported [0~255]."

    new-array v2, v2, [Ljava/lang/Object;

    .line 30
    invoke-static {v1, v0, v2}, Lcn/hutool/core/lang/Assert;->isTrue(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 31
    iput p1, p0, Lcn/hutool/core/lang/ansi/AnsiColorWrapper;->code:I

    .line 32
    iput-object p2, p0, Lcn/hutool/core/lang/ansi/AnsiColorWrapper;->bitDepth:Lcn/hutool/core/lang/ansi/AnsiColors$BitDepth;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 69
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 72
    :cond_1
    check-cast p1, Lcn/hutool/core/lang/ansi/AnsiColorWrapper;

    .line 73
    iget v2, p0, Lcn/hutool/core/lang/ansi/AnsiColorWrapper;->code:I

    iget v3, p1, Lcn/hutool/core/lang/ansi/AnsiColorWrapper;->code:I

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcn/hutool/core/lang/ansi/AnsiColorWrapper;->bitDepth:Lcn/hutool/core/lang/ansi/AnsiColors$BitDepth;

    iget-object p1, p1, Lcn/hutool/core/lang/ansi/AnsiColorWrapper;->bitDepth:Lcn/hutool/core/lang/ansi/AnsiColors$BitDepth;

    if-ne v2, p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 78
    iget v1, p0, Lcn/hutool/core/lang/ansi/AnsiColorWrapper;->code:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    iget-object v2, p0, Lcn/hutool/core/lang/ansi/AnsiColorWrapper;->bitDepth:Lcn/hutool/core/lang/ansi/AnsiColors$BitDepth;

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toAnsiElement(Lcn/hutool/core/lang/ansi/ForeOrBack;)Lcn/hutool/core/lang/ansi/AnsiElement;
    .locals 7

    .line 42
    iget-object v0, p0, Lcn/hutool/core/lang/ansi/AnsiColorWrapper;->bitDepth:Lcn/hutool/core/lang/ansi/AnsiColors$BitDepth;

    sget-object v1, Lcn/hutool/core/lang/ansi/AnsiColors$BitDepth;->FOUR:Lcn/hutool/core/lang/ansi/AnsiColors$BitDepth;

    if-ne v0, v1, :cond_5

    .line 43
    sget-object v0, Lcn/hutool/core/lang/ansi/ForeOrBack;->FORE:Lcn/hutool/core/lang/ansi/ForeOrBack;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p1, v0, :cond_2

    .line 44
    invoke-static {}, Lcn/hutool/core/lang/ansi/AnsiColor;->values()[Lcn/hutool/core/lang/ansi/AnsiColor;

    move-result-object p1

    array-length v0, p1

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_1

    aget-object v4, p1, v3

    .line 45
    invoke-virtual {v4}, Lcn/hutool/core/lang/ansi/AnsiColor;->getCode()I

    move-result v5

    iget v6, p0, Lcn/hutool/core/lang/ansi/AnsiColorWrapper;->code:I

    if-ne v5, v6, :cond_0

    return-object v4

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 49
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-array v0, v1, [Ljava/lang/Object;

    iget v1, p0, Lcn/hutool/core/lang/ansi/AnsiColorWrapper;->code:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    const-string v1, "No matched AnsiColor instance,code={}"

    invoke-static {v1, v0}, Lcn/hutool/core/util/StrUtil;->format(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 51
    :cond_2
    invoke-static {}, Lcn/hutool/core/lang/ansi/AnsiBackground;->values()[Lcn/hutool/core/lang/ansi/AnsiBackground;

    move-result-object p1

    array-length v0, p1

    move v3, v2

    :goto_1
    if-ge v3, v0, :cond_4

    aget-object v4, p1, v3

    .line 52
    invoke-virtual {v4}, Lcn/hutool/core/lang/ansi/AnsiBackground;->getCode()I

    move-result v5

    iget v6, p0, Lcn/hutool/core/lang/ansi/AnsiColorWrapper;->code:I

    add-int/lit8 v6, v6, 0xa

    if-ne v5, v6, :cond_3

    return-object v4

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 56
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-array v0, v1, [Ljava/lang/Object;

    iget v1, p0, Lcn/hutool/core/lang/ansi/AnsiColorWrapper;->code:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    const-string v1, "No matched AnsiBackground instance,code={}"

    invoke-static {v1, v0}, Lcn/hutool/core/util/StrUtil;->format(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 58
    :cond_5
    sget-object v0, Lcn/hutool/core/lang/ansi/ForeOrBack;->FORE:Lcn/hutool/core/lang/ansi/ForeOrBack;

    if-ne p1, v0, :cond_6

    .line 59
    iget p1, p0, Lcn/hutool/core/lang/ansi/AnsiColorWrapper;->code:I

    invoke-static {p1}, Lcn/hutool/core/lang/ansi/Ansi8BitColor;->foreground(I)Lcn/hutool/core/lang/ansi/Ansi8BitColor;

    move-result-object p1

    return-object p1

    .line 61
    :cond_6
    iget p1, p0, Lcn/hutool/core/lang/ansi/AnsiColorWrapper;->code:I

    invoke-static {p1}, Lcn/hutool/core/lang/ansi/Ansi8BitColor;->background(I)Lcn/hutool/core/lang/ansi/Ansi8BitColor;

    move-result-object p1

    return-object p1
.end method
