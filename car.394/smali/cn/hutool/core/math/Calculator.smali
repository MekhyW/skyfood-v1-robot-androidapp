.class public Lcn/hutool/core/math/Calculator;
.super Ljava/lang/Object;
.source "Calculator.java"


# instance fields
.field private final operatPriority:[I

.field private final postfixStack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcn/hutool/core/math/Calculator;->postfixStack:Ljava/util/Stack;

    const/16 v0, 0x8

    new-array v0, v0, [I

    .line 20
    fill-array-data v0, :array_0

    iput-object v0, p0, Lcn/hutool/core/math/Calculator;->operatPriority:[I

    return-void

    :array_0
    .array-data 4
        0x0
        0x3
        0x2
        0x1
        -0x1
        0x1
        0x0
        0x2
    .end array-data
.end method

.method private calculate(Ljava/lang/String;Ljava/lang/String;C)Ljava/math/BigDecimal;
    .locals 4

    const/16 v0, 0x25

    if-eq p3, v0, :cond_4

    const/16 v0, 0x2d

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-eq p3, v0, :cond_3

    const/16 v0, 0x2f

    if-eq p3, v0, :cond_2

    const/16 v0, 0x2a

    if-eq p3, v0, :cond_1

    const/16 v0, 0x2b

    if-ne p3, v0, :cond_0

    new-array p3, v3, [Ljava/lang/String;

    aput-object p1, p3, v2

    aput-object p2, p3, v1

    .line 156
    invoke-static {p3}, Lcn/hutool/core/util/NumberUtil;->add([Ljava/lang/String;)Ljava/math/BigDecimal;

    move-result-object p1

    goto :goto_0

    .line 171
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Unexpected value: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 162
    :cond_1
    invoke-static {p1, p2}, Lcn/hutool/core/util/NumberUtil;->mul(Ljava/lang/String;Ljava/lang/String;)Ljava/math/BigDecimal;

    move-result-object p1

    goto :goto_0

    .line 165
    :cond_2
    invoke-static {p1, p2}, Lcn/hutool/core/util/NumberUtil;->div(Ljava/lang/String;Ljava/lang/String;)Ljava/math/BigDecimal;

    move-result-object p1

    goto :goto_0

    :cond_3
    new-array p3, v3, [Ljava/lang/String;

    aput-object p1, p3, v2

    aput-object p2, p3, v1

    .line 159
    invoke-static {p3}, Lcn/hutool/core/util/NumberUtil;->sub([Ljava/lang/String;)Ljava/math/BigDecimal;

    move-result-object p1

    goto :goto_0

    .line 168
    :cond_4
    invoke-static {p1}, Lcn/hutool/core/util/NumberUtil;->toBigDecimal(Ljava/lang/String;)Ljava/math/BigDecimal;

    move-result-object p1

    invoke-static {p2}, Lcn/hutool/core/util/NumberUtil;->toBigDecimal(Ljava/lang/String;)Ljava/math/BigDecimal;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/math/BigDecimal;->remainder(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method private compare(CC)Z
    .locals 2

    const/16 v0, 0x2f

    const/16 v1, 0x25

    if-ne p1, v1, :cond_0

    move p1, v0

    :cond_0
    if-ne p2, v1, :cond_1

    move p2, v0

    .line 141
    :cond_1
    iget-object v0, p0, Lcn/hutool/core/math/Calculator;->operatPriority:[I

    add-int/lit8 p2, p2, -0x28

    aget p2, v0, p2

    add-int/lit8 p1, p1, -0x28

    aget p1, v0, p1

    if-lt p2, p1, :cond_2

    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public static conversion(Ljava/lang/String;)D
    .locals 2

    .line 29
    new-instance v0, Lcn/hutool/core/math/Calculator;

    invoke-direct {v0}, Lcn/hutool/core/math/Calculator;-><init>()V

    invoke-virtual {v0, p0}, Lcn/hutool/core/math/Calculator;->calculate(Ljava/lang/String;)D

    move-result-wide v0

    return-wide v0
.end method

.method private isOperator(C)Z
    .locals 1

    const/16 v0, 0x2b

    if-eq p1, v0, :cond_1

    const/16 v0, 0x2d

    if-eq p1, v0, :cond_1

    const/16 v0, 0x2a

    if-eq p1, v0, :cond_1

    const/16 v0, 0x2f

    if-eq p1, v0, :cond_1

    const/16 v0, 0x28

    if-eq p1, v0, :cond_1

    const/16 v0, 0x29

    if-eq p1, v0, :cond_1

    const/16 v0, 0x25

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method private prepare(Ljava/lang/String;)V
    .locals 9

    .line 73
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    const/16 v1, 0x2c

    .line 74
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    move v5, v4

    .line 79
    :goto_0
    array-length v6, p1

    if-ge v3, v6, :cond_5

    .line 80
    aget-char v6, p1, v3

    .line 81
    invoke-direct {p0, v6}, Lcn/hutool/core/math/Calculator;->isOperator(C)Z

    move-result v7

    if-eqz v7, :cond_4

    if-lez v4, :cond_0

    .line 83
    iget-object v7, p0, Lcn/hutool/core/math/Calculator;->postfixStack:Ljava/util/Stack;

    new-instance v8, Ljava/lang/String;

    invoke-direct {v8, p1, v5, v4}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v7, v8}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    :cond_0
    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Character;

    invoke-virtual {v4}, Ljava/lang/Character;->charValue()C

    move-result v4

    const/16 v5, 0x29

    const/16 v7, 0x28

    if-ne v6, v5, :cond_2

    .line 87
    :goto_1
    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Character;

    invoke-virtual {v4}, Ljava/lang/Character;->charValue()C

    move-result v4

    if-eq v4, v7, :cond_1

    .line 88
    iget-object v4, p0, Lcn/hutool/core/math/Calculator;->postfixStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 90
    :cond_1
    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    goto :goto_3

    :cond_2
    :goto_2
    if-eq v6, v7, :cond_3

    if-eq v4, v1, :cond_3

    .line 92
    invoke-direct {p0, v6, v4}, Lcn/hutool/core/math/Calculator;->compare(CC)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 93
    iget-object v4, p0, Lcn/hutool/core/math/Calculator;->postfixStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Character;

    invoke-virtual {v4}, Ljava/lang/Character;->charValue()C

    move-result v4

    goto :goto_2

    .line 96
    :cond_3
    invoke-static {v6}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_3
    add-int/lit8 v5, v3, 0x1

    move v4, v2

    goto :goto_4

    :cond_4
    add-int/lit8 v4, v4, 0x1

    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_5
    const/4 v2, 0x1

    if-gt v4, v2, :cond_6

    if-ne v4, v2, :cond_7

    .line 104
    aget-char v2, p1, v5

    invoke-direct {p0, v2}, Lcn/hutool/core/math/Calculator;->isOperator(C)Z

    move-result v2

    if-nez v2, :cond_7

    .line 105
    :cond_6
    iget-object v2, p0, Lcn/hutool/core/math/Calculator;->postfixStack:Ljava/util/Stack;

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, p1, v5, v4}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v2, v3}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    :cond_7
    :goto_5
    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Character;

    invoke-virtual {p1}, Ljava/lang/Character;->charValue()C

    move-result p1

    if-eq p1, v1, :cond_8

    .line 109
    iget-object p1, p0, Lcn/hutool/core/math/Calculator;->postfixStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    :cond_8
    return-void
.end method

.method private static transform(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .line 183
    invoke-static {p0}, Lcn/hutool/core/util/StrUtil;->cleanBlank(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "="

    .line 184
    invoke-static {p0, v0}, Lcn/hutool/core/util/StrUtil;->removeSuffix(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 185
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    const/4 v0, 0x0

    move v1, v0

    .line 186
    :goto_0
    array-length v2, p0

    const/16 v3, 0x28

    const/16 v4, 0x2d

    const/16 v5, 0x7e

    if-ge v1, v2, :cond_3

    .line 187
    aget-char v2, p0, v1

    if-ne v2, v4, :cond_2

    if-nez v1, :cond_0

    .line 189
    aput-char v5, p0, v1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v1, -0x1

    .line 191
    aget-char v2, p0, v2

    const/16 v6, 0x2b

    if-eq v2, v6, :cond_1

    if-eq v2, v4, :cond_1

    const/16 v4, 0x2a

    if-eq v2, v4, :cond_1

    const/16 v4, 0x2f

    if-eq v2, v4, :cond_1

    if-eq v2, v3, :cond_1

    const/16 v3, 0x45

    if-eq v2, v3, :cond_1

    const/16 v3, 0x65

    if-ne v2, v3, :cond_2

    .line 193
    :cond_1
    aput-char v5, p0, v1

    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 198
    :cond_3
    aget-char v1, p0, v0

    if-ne v1, v5, :cond_4

    array-length v1, p0

    const/4 v2, 0x1

    if-le v1, v2, :cond_4

    aget-char v1, p0, v2

    if-ne v1, v3, :cond_4

    .line 199
    aput-char v4, p0, v0

    .line 200
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([C)V

    const-string p0, "0"

    invoke-virtual {p0, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 202
    :cond_4
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([C)V

    return-object v0
.end method


# virtual methods
.method public calculate(Ljava/lang/String;)D
    .locals 6

    .line 39
    invoke-static {p1}, Lcn/hutool/core/math/Calculator;->transform(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcn/hutool/core/math/Calculator;->prepare(Ljava/lang/String;)V

    .line 41
    new-instance p1, Ljava/util/Stack;

    invoke-direct {p1}, Ljava/util/Stack;-><init>()V

    .line 42
    iget-object v0, p0, Lcn/hutool/core/math/Calculator;->postfixStack:Ljava/util/Stack;

    invoke-static {v0}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 44
    :goto_0
    iget-object v0, p0, Lcn/hutool/core/math/Calculator;->postfixStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 45
    iget-object v0, p0, Lcn/hutool/core/math/Calculator;->postfixStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 46
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-direct {p0, v2}, Lcn/hutool/core/math/Calculator;->isOperator(C)Z

    move-result v2

    const-string v3, "-"

    const-string v4, "~"

    if-nez v2, :cond_0

    .line 47
    invoke-virtual {v0, v4, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 48
    invoke-virtual {p1, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 50
    :cond_0
    invoke-virtual {p1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 51
    invoke-virtual {p1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 54
    invoke-virtual {v5, v4, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    .line 55
    invoke-virtual {v2, v4, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 57
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-direct {p0, v5, v2, v0}, Lcn/hutool/core/math/Calculator;->calculate(Ljava/lang/String;Ljava/lang/String;C)Ljava/math/BigDecimal;

    move-result-object v0

    .line 58
    invoke-virtual {v0}, Ljava/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    new-array v0, v1, [Ljava/lang/String;

    .line 63
    invoke-virtual {p1, v0}, Ljava/util/Stack;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    invoke-static {p1}, Lcn/hutool/core/util/NumberUtil;->mul([Ljava/lang/String;)Ljava/math/BigDecimal;

    move-result-object p1

    invoke-virtual {p1}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v0

    return-wide v0
.end method
