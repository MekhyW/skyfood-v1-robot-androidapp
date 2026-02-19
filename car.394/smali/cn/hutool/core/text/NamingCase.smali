.class public Lcn/hutool/core/text/NamingCase;
.super Ljava/lang/Object;
.source "NamingCase.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static toCamelCase(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 1

    const/16 v0, 0x5f

    .line 153
    invoke-static {p0, v0}, Lcn/hutool/core/text/NamingCase;->toCamelCase(Ljava/lang/CharSequence;C)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static toCamelCase(Ljava/lang/CharSequence;C)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    .line 165
    invoke-static {p0, p1, v0}, Lcn/hutool/core/text/NamingCase;->toCamelCase(Ljava/lang/CharSequence;CZ)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static toCamelCase(Ljava/lang/CharSequence;CZ)Ljava/lang/String;
    .locals 6

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 181
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    .line 182
    invoke-static {p0, p1}, Lcn/hutool/core/util/StrUtil;->contains(Ljava/lang/CharSequence;C)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 183
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 184
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_0
    if-ge v3, v0, :cond_4

    .line 187
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v5, p1, :cond_1

    const/4 v4, 0x1

    goto :goto_1

    :cond_1
    if-eqz v4, :cond_2

    .line 192
    invoke-static {v5}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v4, v2

    goto :goto_1

    :cond_2
    if-eqz p2, :cond_3

    .line 195
    invoke-static {v5}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v5

    :cond_3
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 198
    :cond_4
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_5
    return-object p0
.end method

.method public static toKebabCase(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 1

    const/16 v0, 0x2d

    .line 57
    invoke-static {p0, v0}, Lcn/hutool/core/text/NamingCase;->toSymbolCase(Ljava/lang/CharSequence;C)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static toPascalCase(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 0

    .line 136
    invoke-static {p0}, Lcn/hutool/core/text/NamingCase;->toCamelCase(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcn/hutool/core/util/StrUtil;->upperFirst(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static toSymbolCase(Ljava/lang/CharSequence;C)Ljava/lang/String;
    .locals 8

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 73
    :cond_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 74
    new-instance v2, Lcn/hutool/core/text/StrBuilder;

    invoke-direct {v2}, Lcn/hutool/core/text/StrBuilder;-><init>()V

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_a

    .line 77
    invoke-interface {p0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    .line 78
    invoke-static {v4}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v5

    if-eqz v5, :cond_9

    if-lez v3, :cond_1

    add-int/lit8 v5, v3, -0x1

    .line 79
    invoke-interface {p0, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v5

    goto :goto_1

    :cond_1
    move-object v5, v0

    .line 80
    :goto_1
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-ge v3, v6, :cond_2

    add-int/lit8 v6, v3, 0x1

    invoke-interface {p0, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    invoke-static {v6}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v6

    goto :goto_2

    :cond_2
    move-object v6, v0

    :goto_2
    if-eqz v5, :cond_7

    .line 83
    invoke-virtual {v5}, Ljava/lang/Character;->charValue()C

    move-result v7

    if-ne p1, v7, :cond_4

    if-eqz v6, :cond_3

    .line 85
    invoke-virtual {v6}, Ljava/lang/Character;->charValue()C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->isLowerCase(C)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 87
    :cond_3
    invoke-static {v4}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v4

    goto :goto_3

    .line 90
    :cond_4
    invoke-virtual {v5}, Ljava/lang/Character;->charValue()C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->isLowerCase(C)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 92
    invoke-virtual {v2, p1}, Lcn/hutool/core/text/StrBuilder;->append(C)Lcn/hutool/core/text/StrBuilder;

    if-eqz v6, :cond_5

    .line 93
    invoke-virtual {v6}, Ljava/lang/Character;->charValue()C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->isLowerCase(C)Z

    move-result v5

    if-nez v5, :cond_5

    invoke-virtual {v6}, Ljava/lang/Character;->charValue()C

    move-result v5

    invoke-static {v5}, Lcn/hutool/core/util/CharUtil;->isNumber(C)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 95
    :cond_5
    invoke-static {v4}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v4

    goto :goto_3

    :cond_6
    if-eqz v6, :cond_9

    .line 100
    invoke-virtual {v6}, Ljava/lang/Character;->charValue()C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->isLowerCase(C)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 102
    invoke-virtual {v2, p1}, Lcn/hutool/core/text/StrBuilder;->append(C)Lcn/hutool/core/text/StrBuilder;

    .line 103
    invoke-static {v4}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v4

    goto :goto_3

    :cond_7
    if-eqz v6, :cond_8

    .line 109
    invoke-virtual {v6}, Ljava/lang/Character;->charValue()C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->isLowerCase(C)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 111
    :cond_8
    invoke-static {v4}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v4

    .line 116
    :cond_9
    :goto_3
    invoke-virtual {v2, v4}, Lcn/hutool/core/text/StrBuilder;->append(C)Lcn/hutool/core/text/StrBuilder;

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 118
    :cond_a
    invoke-virtual {v2}, Lcn/hutool/core/text/StrBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static toUnderlineCase(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 1

    const/16 v0, 0x5f

    .line 34
    invoke-static {p0, v0}, Lcn/hutool/core/text/NamingCase;->toSymbolCase(Ljava/lang/CharSequence;C)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
