.class public final Lcn/hutool/core/lang/ansi/Ansi8BitColor;
.super Ljava/lang/Object;
.source "Ansi8BitColor.java"

# interfaces
.implements Lcn/hutool/core/lang/ansi/AnsiElement;


# static fields
.field private static final PREFIX_BACK:Ljava/lang/String; = "48;5;"

.field private static final PREFIX_FORE:Ljava/lang/String; = "38;5;"


# instance fields
.field private final code:I

.field private final prefix:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;I)V
    .locals 3

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    if-ltz p2, :cond_0

    const/16 v1, 0xff

    if-gt p2, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    const-string v2, "Code must be between 0 and 255"

    new-array v0, v0, [Ljava/lang/Object;

    .line 57
    invoke-static {v1, v2, v0}, Lcn/hutool/core/lang/Assert;->isTrue(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 58
    iput-object p1, p0, Lcn/hutool/core/lang/ansi/Ansi8BitColor;->prefix:Ljava/lang/String;

    .line 59
    iput p2, p0, Lcn/hutool/core/lang/ansi/Ansi8BitColor;->code:I

    return-void
.end method

.method public static background(I)Lcn/hutool/core/lang/ansi/Ansi8BitColor;
    .locals 2

    .line 43
    new-instance v0, Lcn/hutool/core/lang/ansi/Ansi8BitColor;

    const-string v1, "48;5;"

    invoke-direct {v0, v1, p0}, Lcn/hutool/core/lang/ansi/Ansi8BitColor;-><init>(Ljava/lang/String;I)V

    return-object v0
.end method

.method public static foreground(I)Lcn/hutool/core/lang/ansi/Ansi8BitColor;
    .locals 2

    .line 33
    new-instance v0, Lcn/hutool/core/lang/ansi/Ansi8BitColor;

    const-string v1, "38;5;"

    invoke-direct {v0, v1, p0}, Lcn/hutool/core/lang/ansi/Ansi8BitColor;-><init>(Ljava/lang/String;I)V

    return-object v0
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

    .line 77
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 80
    :cond_1
    check-cast p1, Lcn/hutool/core/lang/ansi/Ansi8BitColor;

    .line 81
    iget-object v2, p0, Lcn/hutool/core/lang/ansi/Ansi8BitColor;->prefix:Ljava/lang/String;

    iget-object v3, p1, Lcn/hutool/core/lang/ansi/Ansi8BitColor;->prefix:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget v2, p0, Lcn/hutool/core/lang/ansi/Ansi8BitColor;->code:I

    iget p1, p1, Lcn/hutool/core/lang/ansi/Ansi8BitColor;->code:I

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

.method public getCode()I
    .locals 1

    .line 69
    iget v0, p0, Lcn/hutool/core/lang/ansi/Ansi8BitColor;->code:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 86
    iget-object v0, p0, Lcn/hutool/core/lang/ansi/Ansi8BitColor;->prefix:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcn/hutool/core/lang/ansi/Ansi8BitColor;->code:I

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 91
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcn/hutool/core/lang/ansi/Ansi8BitColor;->prefix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcn/hutool/core/lang/ansi/Ansi8BitColor;->code:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
