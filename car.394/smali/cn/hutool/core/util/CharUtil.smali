.class public Lcn/hutool/core/util/CharUtil;
.super Ljava/lang/Object;
.source "CharUtil.java"

# interfaces
.implements Lcn/hutool/core/text/CharPool;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static digit16(I)I
    .locals 1

    const/16 v0, 0x10

    .line 336
    invoke-static {p0, v0}, Ljava/lang/Character;->digit(II)I

    move-result p0

    return p0
.end method

.method public static equals(CCZ)Z
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_1

    .line 312
    invoke-static {p0}, Ljava/lang/Character;->toLowerCase(C)C

    move-result p0

    invoke-static {p1}, Ljava/lang/Character;->toLowerCase(C)C

    move-result p1

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    return v0

    :cond_1
    if-ne p0, p1, :cond_2

    goto :goto_1

    :cond_2
    move v0, v1

    :goto_1
    return v0
.end method

.method public static getType(I)I
    .locals 0

    .line 325
    invoke-static {p0}, Ljava/lang/Character;->getType(I)I

    move-result p0

    return p0
.end method

.method public static isAscii(C)Z
    .locals 1

    const/16 v0, 0x80

    if-ge p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isAsciiControl(C)Z
    .locals 1

    const/16 v0, 0x20

    if-lt p0, v0, :cond_1

    const/16 v0, 0x7f

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static isAsciiPrintable(C)Z
    .locals 1

    const/16 v0, 0x20

    if-lt p0, v0, :cond_0

    const/16 v0, 0x7f

    if-ge p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isBlankChar(C)Z
    .locals 0

    .line 244
    invoke-static {p0}, Lcn/hutool/core/util/CharUtil;->isBlankChar(I)Z

    move-result p0

    return p0
.end method

.method public static isBlankChar(I)Z
    .locals 1

    .line 258
    invoke-static {p0}, Ljava/lang/Character;->isWhitespace(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 259
    invoke-static {p0}, Ljava/lang/Character;->isSpaceChar(I)Z

    move-result v0

    if-nez v0, :cond_1

    const v0, 0xfeff

    if-eq p0, v0, :cond_1

    const/16 v0, 0x202a

    if-eq p0, v0, :cond_1

    if-eqz p0, :cond_1

    const/16 v0, 0x3164

    if-eq p0, v0, :cond_1

    const/16 v0, 0x2800

    if-eq p0, v0, :cond_1

    const/16 v0, 0x180e

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static isChar(Ljava/lang/Object;)Z
    .locals 1

    .line 230
    instance-of v0, p0, Ljava/lang/Character;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static isCharClass(Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 214
    const-class v0, Ljava/lang/Character;

    if-eq p0, v0, :cond_1

    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static isEmoji(C)Z
    .locals 2

    const/4 v0, 0x1

    if-eqz p0, :cond_3

    const/16 v1, 0x9

    if-eq p0, v1, :cond_3

    const/16 v1, 0xa

    if-eq p0, v1, :cond_3

    const/16 v1, 0xd

    if-eq p0, v1, :cond_3

    const/16 v1, 0x20

    if-lt p0, v1, :cond_0

    const v1, 0xd7ff

    if-le p0, v1, :cond_3

    :cond_0
    const v1, 0xe000

    if-lt p0, v1, :cond_1

    const v1, 0xfffd

    if-le p0, v1, :cond_3

    :cond_1
    const/high16 v1, 0x100000

    if-lt p0, v1, :cond_2

    const v1, 0x10ffff

    if-gt p0, v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    move p0, v0

    :goto_1
    xor-int/2addr p0, v0

    return p0
.end method

.method public static isFileSeparator(C)Z
    .locals 1

    const/16 v0, 0x2f

    if-eq v0, p0, :cond_1

    const/16 v0, 0x5c

    if-ne v0, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static isHexChar(C)Z
    .locals 1

    .line 168
    invoke-static {p0}, Lcn/hutool/core/util/CharUtil;->isNumber(C)Z

    move-result v0

    if-nez v0, :cond_2

    const/16 v0, 0x61

    if-lt p0, v0, :cond_0

    const/16 v0, 0x66

    if-le p0, v0, :cond_2

    :cond_0
    const/16 v0, 0x41

    if-lt p0, v0, :cond_1

    const/16 v0, 0x46

    if-gt p0, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static isLetter(C)Z
    .locals 1

    .line 89
    invoke-static {p0}, Lcn/hutool/core/util/CharUtil;->isLetterUpper(C)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lcn/hutool/core/util/CharUtil;->isLetterLower(C)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static isLetterLower(C)Z
    .locals 1

    const/16 v0, 0x61

    if-lt p0, v0, :cond_0

    const/16 v0, 0x7a

    if-gt p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isLetterOrNumber(C)Z
    .locals 1

    .line 187
    invoke-static {p0}, Lcn/hutool/core/util/CharUtil;->isLetter(C)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lcn/hutool/core/util/CharUtil;->isNumber(C)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static isLetterUpper(C)Z
    .locals 1

    const/16 v0, 0x41

    if-lt p0, v0, :cond_0

    const/16 v0, 0x5a

    if-gt p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isNumber(C)Z
    .locals 1

    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-gt p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static toCloseByNumber(I)C
    .locals 1

    const/16 v0, 0x14

    if-gt p0, v0, :cond_0

    add-int/lit16 p0, p0, 0x2460

    add-int/lit8 p0, p0, -0x1

    int-to-char p0, p0

    return p0

    .line 387
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Number must be [1-20]"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static toCloseChar(C)C
    .locals 2

    const/16 v0, 0x31

    if-lt p0, v0, :cond_0

    const/16 v1, 0x39

    if-gt p0, v1, :cond_0

    add-int/lit16 p0, p0, 0x2460

    :goto_0
    sub-int/2addr p0, v0

    goto :goto_1

    :cond_0
    const/16 v0, 0x41

    if-lt p0, v0, :cond_1

    const/16 v1, 0x5a

    if-gt p0, v1, :cond_1

    add-int/lit16 p0, p0, 0x24b6

    goto :goto_0

    :cond_1
    const/16 v0, 0x61

    if-lt p0, v0, :cond_2

    const/16 v1, 0x7a

    if-gt p0, v1, :cond_2

    add-int/lit16 p0, p0, 0x24d0

    goto :goto_0

    :cond_2
    :goto_1
    int-to-char p0, p0

    return p0
.end method

.method public static toString(C)Ljava/lang/String;
    .locals 0

    .line 199
    invoke-static {p0}, Lcn/hutool/core/text/ASCIIStrCache;->toString(C)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
