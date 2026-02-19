.class public Lcn/hutool/core/text/TextSimilarity;
.super Ljava/lang/Object;
.source "TextSimilarity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static generateMatrix(Ljava/lang/String;Ljava/lang/String;)[[I
    .locals 10

    .line 150
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 151
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v2, v0, 0x1

    add-int/lit8 v3, v1, 0x1

    const/4 v4, 0x2

    new-array v4, v4, [I

    const/4 v5, 0x1

    aput v3, v4, v5

    const/4 v3, 0x0

    aput v2, v4, v3

    .line 155
    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[I

    move v3, v5

    :goto_0
    if-gt v3, v0, :cond_2

    move v4, v5

    :goto_1
    if-gt v4, v1, :cond_1

    add-int/lit8 v6, v3, -0x1

    .line 158
    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v7

    add-int/lit8 v8, v4, -0x1

    invoke-virtual {p1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-ne v7, v9, :cond_0

    .line 159
    aget-object v7, v2, v3

    aget-object v6, v2, v6

    aget v6, v6, v8

    add-int/2addr v6, v5

    aput v6, v7, v4

    goto :goto_2

    .line 161
    :cond_0
    aget-object v7, v2, v3

    aget v8, v7, v8

    aget-object v6, v2, v6

    aget v6, v6, v4

    invoke-static {v8, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    aput v6, v7, v4

    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-object v2
.end method

.method private static isValidChar(C)Z
    .locals 1

    const/16 v0, 0x4e00

    if-lt p0, v0, :cond_0

    const v0, 0x9fff

    if-le p0, v0, :cond_3

    :cond_0
    const/16 v0, 0x61

    if-lt p0, v0, :cond_1

    const/16 v0, 0x7a

    if-le p0, v0, :cond_3

    :cond_1
    const/16 v0, 0x41

    if-lt p0, v0, :cond_2

    const/16 v0, 0x5a

    if-le p0, v0, :cond_3

    :cond_2
    const/16 v0, 0x30

    if-lt p0, v0, :cond_4

    const/16 v0, 0x39

    if-gt p0, v0, :cond_4

    :cond_3
    const/4 p0, 0x1

    goto :goto_0

    :cond_4
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static longestCommonSubstring(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .line 71
    invoke-static {p0, p1}, Lcn/hutool/core/text/TextSimilarity;->generateMatrix(Ljava/lang/String;Ljava/lang/String;)[[I

    move-result-object v0

    .line 73
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 74
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    .line 77
    aget-object v2, v0, v1

    aget v2, v2, p1

    new-array v3, v2, [C

    add-int/lit8 v2, v2, -0x1

    .line 79
    :goto_0
    aget-object v4, v0, v1

    aget v5, v4, p1

    if-eqz v5, :cond_2

    add-int/lit8 v6, p1, -0x1

    .line 80
    aget v4, v4, v6

    if-ne v5, v4, :cond_0

    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_0
    add-int/lit8 v4, v1, -0x1

    .line 82
    aget-object v6, v0, v4

    aget v6, v6, p1

    if-ne v5, v6, :cond_1

    goto :goto_1

    .line 85
    :cond_1
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    aput-char v4, v3, v2

    add-int/lit8 v2, v2, -0x1

    add-int/lit8 p1, p1, -0x1

    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 91
    :cond_2
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v3}, Ljava/lang/String;-><init>([C)V

    return-object p0
.end method

.method private static longestCommonSubstringLength(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2

    .line 137
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 138
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 139
    invoke-static {p0, p1}, Lcn/hutool/core/text/TextSimilarity;->generateMatrix(Ljava/lang/String;Ljava/lang/String;)[[I

    move-result-object p0

    aget-object p0, p0, v0

    aget p0, p0, v1

    return p0
.end method

.method private static removeSign(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 102
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 103
    invoke-static {v0}, Lcn/hutool/core/util/StrUtil;->builder(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 107
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 108
    invoke-static {v3}, Lcn/hutool/core/text/TextSimilarity;->isValidChar(C)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 109
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 113
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static similar(Ljava/lang/String;Ljava/lang/String;)D
    .locals 3

    .line 29
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 30
    invoke-static {p1}, Lcn/hutool/core/text/TextSimilarity;->removeSign(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 31
    invoke-static {p0}, Lcn/hutool/core/text/TextSimilarity;->removeSign(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 33
    :cond_0
    invoke-static {p0}, Lcn/hutool/core/text/TextSimilarity;->removeSign(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 34
    invoke-static {p1}, Lcn/hutool/core/text/TextSimilarity;->removeSign(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    move-object v2, p1

    move-object p1, p0

    move-object p0, v2

    .line 38
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    if-nez v0, :cond_1

    const-wide/high16 p0, 0x3ff0000000000000L    # 1.0

    return-wide p0

    .line 44
    :cond_1
    invoke-static {p1, p0}, Lcn/hutool/core/text/TextSimilarity;->longestCommonSubstringLength(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    int-to-float p0, p0

    int-to-float p1, v0

    .line 45
    invoke-static {p0, p1}, Lcn/hutool/core/util/NumberUtil;->div(FF)D

    move-result-wide p0

    return-wide p0
.end method

.method public static similar(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 0

    .line 57
    invoke-static {p0, p1}, Lcn/hutool/core/text/TextSimilarity;->similar(Ljava/lang/String;Ljava/lang/String;)D

    move-result-wide p0

    invoke-static {p0, p1, p2}, Lcn/hutool/core/util/NumberUtil;->formatPercent(DI)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
