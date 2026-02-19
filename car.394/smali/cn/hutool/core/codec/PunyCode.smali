.class public Lcn/hutool/core/codec/PunyCode;
.super Ljava/lang/Object;
.source "PunyCode.java"


# static fields
.field private static final BASE:I = 0x24

.field private static final DAMP:I = 0x2bc

.field private static final DELIMITER:C = '-'

.field private static final INITIAL_BIAS:I = 0x48

.field private static final INITIAL_N:I = 0x80

.field public static final PUNY_CODE_PREFIX:Ljava/lang/String; = "xn--"

.field private static final SKEW:I = 0x26

.field private static final TMAX:I = 0x1a

.field private static final TMIN:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static adapt(IIZ)I
    .locals 0

    if-eqz p2, :cond_0

    .line 240
    div-int/lit16 p0, p0, 0x2bc

    goto :goto_0

    .line 242
    :cond_0
    div-int/lit8 p0, p0, 0x2

    .line 244
    :goto_0
    div-int p1, p0, p1

    add-int/2addr p0, p1

    const/4 p1, 0x0

    :goto_1
    const/16 p2, 0x1c7

    if-le p0, p2, :cond_1

    .line 247
    div-int/lit8 p0, p0, 0x23

    add-int/lit8 p1, p1, 0x24

    goto :goto_1

    :cond_1
    mul-int/lit8 p2, p0, 0x24

    add-int/lit8 p0, p0, 0x26

    .line 250
    div-int/2addr p2, p0

    add-int/2addr p1, p2

    return p1
.end method

.method private static codepoint2digit(I)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/hutool/core/exceptions/UtilException;
        }
    .end annotation

    add-int/lit8 v0, p0, -0x30

    const/16 v1, 0xa

    const/16 v2, 0x1a

    if-ge v0, v1, :cond_0

    add-int/2addr v0, v2

    return v0

    :cond_0
    add-int/lit8 p0, p0, -0x61

    if-ge p0, v2, :cond_1

    return p0

    .line 310
    :cond_1
    new-instance p0, Lcn/hutool/core/exceptions/UtilException;

    const-string v0, "BAD_INPUT"

    invoke-direct {p0, v0}, Lcn/hutool/core/exceptions/UtilException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static decode(Ljava/lang/String;)Ljava/lang/String;
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/hutool/core/exceptions/UtilException;
        }
    .end annotation

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "input must not be null!"

    .line 179
    invoke-static {p0, v2, v1}, Lcn/hutool/core/lang/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "xn--"

    .line 180
    invoke-static {p0, v1}, Lcn/hutool/core/util/StrUtil;->removePrefixIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 185
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x2d

    .line 186
    invoke-virtual {p0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    const/4 v3, 0x1

    if-lez v2, :cond_2

    move v4, v0

    :goto_0
    if-ge v4, v2, :cond_1

    .line 189
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 190
    invoke-static {v5}, Lcn/hutool/core/codec/PunyCode;->isBasic(C)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 191
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    add-int/2addr v2, v3

    goto :goto_1

    :cond_2
    move v2, v0

    .line 198
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v5, 0x80

    const/16 v6, 0x48

    move v7, v0

    :goto_2
    if-ge v2, v4, :cond_a

    const/16 v8, 0x24

    move v10, v3

    move v9, v7

    :goto_3
    if-eq v2, v4, :cond_9

    add-int/lit8 v11, v2, 0x1

    .line 206
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 207
    invoke-static {v2}, Lcn/hutool/core/codec/PunyCode;->codepoint2digit(I)I

    move-result v2

    const v12, 0x7fffffff

    sub-int v13, v12, v9

    .line 208
    div-int/2addr v13, v10

    const-string v14, "OVERFLOW"

    if-gt v2, v13, :cond_8

    mul-int v13, v2, v10

    add-int/2addr v9, v13

    if-gt v8, v6, :cond_3

    move v13, v3

    goto :goto_4

    :cond_3
    add-int/lit8 v13, v6, 0x1a

    if-lt v8, v13, :cond_4

    const/16 v13, 0x1a

    goto :goto_4

    :cond_4
    sub-int v13, v8, v6

    :goto_4
    if-ge v2, v13, :cond_7

    sub-int v2, v9, v7

    .line 225
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    add-int/2addr v6, v3

    if-nez v7, :cond_5

    move v7, v3

    goto :goto_5

    :cond_5
    move v7, v0

    :goto_5
    invoke-static {v2, v6, v7}, Lcn/hutool/core/codec/PunyCode;->adapt(IIZ)I

    move-result v6

    .line 226
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    add-int/2addr v2, v3

    div-int v2, v9, v2

    sub-int/2addr v12, v5

    if-gt v2, v12, :cond_6

    .line 229
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    add-int/2addr v2, v3

    div-int v2, v9, v2

    add-int/2addr v5, v2

    .line 230
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    add-int/2addr v2, v3

    rem-int/2addr v9, v2

    int-to-char v2, v5

    .line 231
    invoke-virtual {v1, v9, v2}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    add-int/lit8 v7, v9, 0x1

    move v2, v11

    goto :goto_2

    .line 227
    :cond_6
    new-instance p0, Lcn/hutool/core/exceptions/UtilException;

    invoke-direct {p0, v14}, Lcn/hutool/core/exceptions/UtilException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7
    rsub-int/lit8 v2, v13, 0x24

    mul-int/2addr v10, v2

    add-int/lit8 v8, v8, 0x24

    move v2, v11

    goto :goto_3

    .line 209
    :cond_8
    new-instance p0, Lcn/hutool/core/exceptions/UtilException;

    invoke-direct {p0, v14}, Lcn/hutool/core/exceptions/UtilException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 204
    :cond_9
    new-instance p0, Lcn/hutool/core/exceptions/UtilException;

    const-string v0, "BAD_INPUT"

    invoke-direct {p0, v0}, Lcn/hutool/core/exceptions/UtilException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 235
    :cond_a
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static decodeDomain(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/hutool/core/exceptions/UtilException;
        }
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "domain must not be null!"

    .line 158
    invoke-static {p0, v1, v0}, Lcn/hutool/core/lang/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0x2e

    .line 159
    invoke-static {p0, v0}, Lcn/hutool/core/util/StrUtil;->split(Ljava/lang/CharSequence;C)Ljava/util/List;

    move-result-object v1

    .line 160
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    div-int/lit8 p0, p0, 0x4

    add-int/lit8 p0, p0, 0x1

    invoke-direct {v2, p0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 161
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 162
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-eqz v3, :cond_0

    .line 163
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    const-string v3, "xn--"

    .line 165
    invoke-static {v1, v3}, Lcn/hutool/core/util/StrUtil;->startWithIgnoreEquals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {v1}, Lcn/hutool/core/codec/PunyCode;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_1
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 168
    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static digit2codepoint(I)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/hutool/core/exceptions/UtilException;
        }
    .end annotation

    const/4 v0, 0x0

    const/16 v1, 0x23

    .line 274
    invoke-static {p0, v0, v1}, Lcn/hutool/core/lang/Assert;->checkBetween(III)I

    const/16 v0, 0x1a

    if-ge p0, v0, :cond_0

    add-int/lit8 p0, p0, 0x61

    return p0

    :cond_0
    const/16 v1, 0x24

    if-ge p0, v1, :cond_1

    sub-int/2addr p0, v0

    add-int/lit8 p0, p0, 0x30

    return p0

    .line 282
    :cond_1
    new-instance p0, Lcn/hutool/core/exceptions/UtilException;

    const-string v0, "BAD_INPUT"

    invoke-direct {p0, v0}, Lcn/hutool/core/exceptions/UtilException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static encode(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/hutool/core/exceptions/UtilException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 59
    invoke-static {p0, v0}, Lcn/hutool/core/codec/PunyCode;->encode(Ljava/lang/CharSequence;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static encode(Ljava/lang/CharSequence;Z)Ljava/lang/String;
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/hutool/core/exceptions/UtilException;
        }
    .end annotation

    move-object/from16 v0, p0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "input must not be null!"

    .line 71
    invoke-static {v0, v3, v2}, Lcn/hutool/core/lang/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 77
    invoke-interface/range {p0 .. p0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    move v4, v1

    move v5, v4

    :goto_0
    if-ge v4, v3, :cond_1

    .line 80
    invoke-interface {v0, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    .line 81
    invoke-static {v6}, Lcn/hutool/core/codec/PunyCode;->isBasic(C)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 82
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v5, 0x1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    if-lez v5, :cond_3

    if-ne v5, v3, :cond_2

    .line 90
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    const/16 v4, 0x2d

    .line 92
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_3
    const/16 v4, 0x80

    const/16 v6, 0x48

    move v8, v1

    move v7, v5

    :goto_1
    if-ge v7, v3, :cond_f

    const v9, 0x7fffffff

    move v10, v1

    move v11, v9

    :goto_2
    if-ge v10, v3, :cond_5

    .line 99
    invoke-interface {v0, v10}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v12

    if-lt v12, v4, :cond_4

    if-ge v12, v11, :cond_4

    move v11, v12

    :cond_4
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    :cond_5
    sub-int v4, v11, v4

    sub-int/2addr v9, v8

    add-int/lit8 v10, v7, 0x1

    .line 104
    div-int/2addr v9, v10

    const-string v12, "OVERFLOW"

    if-gt v4, v9, :cond_e

    mul-int/2addr v4, v10

    add-int/2addr v8, v4

    move v4, v1

    :goto_3
    if-ge v4, v3, :cond_d

    .line 110
    invoke-interface {v0, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v9

    if-ge v9, v11, :cond_7

    add-int/lit8 v8, v8, 0x1

    if-eqz v8, :cond_6

    goto :goto_4

    .line 114
    :cond_6
    new-instance v0, Lcn/hutool/core/exceptions/UtilException;

    invoke-direct {v0, v12}, Lcn/hutool/core/exceptions/UtilException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    :goto_4
    if-ne v9, v11, :cond_c

    const/16 v9, 0x24

    move v10, v8

    :goto_5
    const/4 v13, 0x1

    if-gt v9, v6, :cond_8

    move v14, v13

    goto :goto_6

    :cond_8
    add-int/lit8 v14, v6, 0x1a

    if-lt v9, v14, :cond_9

    const/16 v14, 0x1a

    goto :goto_6

    :cond_9
    sub-int v14, v9, v6

    :goto_6
    if-ge v10, v14, :cond_b

    .line 134
    invoke-static {v10}, Lcn/hutool/core/codec/PunyCode;->digit2codepoint(I)I

    move-result v6

    int-to-char v6, v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v6, v7, 0x1

    if-ne v7, v5, :cond_a

    goto :goto_7

    :cond_a
    move v13, v1

    .line 135
    :goto_7
    invoke-static {v8, v6, v13}, Lcn/hutool/core/codec/PunyCode;->adapt(IIZ)I

    move-result v7

    move v8, v1

    move/from16 v16, v7

    move v7, v6

    move/from16 v6, v16

    goto :goto_8

    :cond_b
    sub-int/2addr v10, v14

    rsub-int/lit8 v13, v14, 0x24

    .line 131
    rem-int v15, v10, v13

    add-int/2addr v14, v15

    invoke-static {v14}, Lcn/hutool/core/codec/PunyCode;->digit2codepoint(I)I

    move-result v14

    int-to-char v14, v14

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 132
    div-int/2addr v10, v13

    add-int/lit8 v9, v9, 0x24

    goto :goto_5

    :cond_c
    :goto_8
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_d
    add-int/lit8 v8, v8, 0x1

    add-int/lit8 v4, v11, 0x1

    goto :goto_1

    .line 105
    :cond_e
    new-instance v0, Lcn/hutool/core/exceptions/UtilException;

    invoke-direct {v0, v12}, Lcn/hutool/core/exceptions/UtilException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_f
    if-eqz p1, :cond_10

    const-string v0, "xn--"

    .line 145
    invoke-virtual {v2, v1, v0}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    :cond_10
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static encodeDomain(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/hutool/core/exceptions/UtilException;
        }
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "domain must not be null!"

    .line 38
    invoke-static {p0, v1, v0}, Lcn/hutool/core/lang/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0x2e

    .line 39
    invoke-static {p0, v0}, Lcn/hutool/core/util/StrUtil;->split(Ljava/lang/CharSequence;C)Ljava/util/List;

    move-result-object v1

    .line 40
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    mul-int/lit8 p0, p0, 0x4

    invoke-direct {v2, p0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 41
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 42
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-eqz v3, :cond_0

    .line 43
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    const/4 v3, 0x1

    .line 45
    invoke-static {v1, v3}, Lcn/hutool/core/codec/PunyCode;->encode(Ljava/lang/CharSequence;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 48
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static isBasic(C)Z
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
