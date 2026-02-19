.class public Lcn/hutool/core/convert/NumberChineseFormatter;
.super Ljava/lang/Object;
.source "NumberChineseFormatter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/hutool/core/convert/NumberChineseFormatter$ChineseUnit;
    }
.end annotation


# static fields
.field private static final CHINESE_NAME_VALUE:[Lcn/hutool/core/convert/NumberChineseFormatter$ChineseUnit;

.field private static final DIGITS:[C


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/16 v0, 0x13

    new-array v0, v0, [C

    .line 28
    fill-array-data v0, :array_0

    sput-object v0, Lcn/hutool/core/convert/NumberChineseFormatter;->DIGITS:[C

    const/16 v0, 0x9

    new-array v0, v0, [Lcn/hutool/core/convert/NumberChineseFormatter$ChineseUnit;

    .line 34
    new-instance v1, Lcn/hutool/core/convert/NumberChineseFormatter$ChineseUnit;

    const/16 v2, 0x20

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Lcn/hutool/core/convert/NumberChineseFormatter$ChineseUnit;-><init>(CIZ)V

    aput-object v1, v0, v4

    new-instance v1, Lcn/hutool/core/convert/NumberChineseFormatter$ChineseUnit;

    const/16 v2, 0x5341

    const/16 v5, 0xa

    invoke-direct {v1, v2, v5, v4}, Lcn/hutool/core/convert/NumberChineseFormatter$ChineseUnit;-><init>(CIZ)V

    aput-object v1, v0, v3

    new-instance v1, Lcn/hutool/core/convert/NumberChineseFormatter$ChineseUnit;

    const/16 v2, 0x62fe

    invoke-direct {v1, v2, v5, v4}, Lcn/hutool/core/convert/NumberChineseFormatter$ChineseUnit;-><init>(CIZ)V

    const/4 v2, 0x2

    aput-object v1, v0, v2

    new-instance v1, Lcn/hutool/core/convert/NumberChineseFormatter$ChineseUnit;

    const/16 v2, 0x767e

    const/16 v5, 0x64

    invoke-direct {v1, v2, v5, v4}, Lcn/hutool/core/convert/NumberChineseFormatter$ChineseUnit;-><init>(CIZ)V

    const/4 v2, 0x3

    aput-object v1, v0, v2

    new-instance v1, Lcn/hutool/core/convert/NumberChineseFormatter$ChineseUnit;

    const/16 v2, 0x4f70

    invoke-direct {v1, v2, v5, v4}, Lcn/hutool/core/convert/NumberChineseFormatter$ChineseUnit;-><init>(CIZ)V

    const/4 v2, 0x4

    aput-object v1, v0, v2

    new-instance v1, Lcn/hutool/core/convert/NumberChineseFormatter$ChineseUnit;

    const/16 v2, 0x5343

    const/16 v5, 0x3e8

    invoke-direct {v1, v2, v5, v4}, Lcn/hutool/core/convert/NumberChineseFormatter$ChineseUnit;-><init>(CIZ)V

    const/4 v2, 0x5

    aput-object v1, v0, v2

    new-instance v1, Lcn/hutool/core/convert/NumberChineseFormatter$ChineseUnit;

    const/16 v2, 0x4edf

    invoke-direct {v1, v2, v5, v4}, Lcn/hutool/core/convert/NumberChineseFormatter$ChineseUnit;-><init>(CIZ)V

    const/4 v2, 0x6

    aput-object v1, v0, v2

    new-instance v1, Lcn/hutool/core/convert/NumberChineseFormatter$ChineseUnit;

    const/16 v2, 0x4e07

    const/16 v4, 0x2710

    invoke-direct {v1, v2, v4, v3}, Lcn/hutool/core/convert/NumberChineseFormatter$ChineseUnit;-><init>(CIZ)V

    const/4 v2, 0x7

    aput-object v1, v0, v2

    new-instance v1, Lcn/hutool/core/convert/NumberChineseFormatter$ChineseUnit;

    const/16 v2, 0x4ebf

    const v4, 0x5f5e100

    invoke-direct {v1, v2, v4, v3}, Lcn/hutool/core/convert/NumberChineseFormatter$ChineseUnit;-><init>(CIZ)V

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sput-object v0, Lcn/hutool/core/convert/NumberChineseFormatter;->CHINESE_NAME_VALUE:[Lcn/hutool/core/convert/NumberChineseFormatter$ChineseUnit;

    return-void

    :array_0
    .array-data 2
        -0x690as
        0x4e00s
        0x58f9s
        0x4e8cs
        -0x72d0s
        0x4e09s
        0x53c1s
        0x56dbs
        -0x7f7as
        0x4e94s
        0x4f0ds
        0x516ds
        -0x69bas
        0x4e03s
        0x67d2s
        0x516bs
        0x634cs
        0x4e5ds
        0x7396s
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addPreZero(Ljava/lang/StringBuilder;)V
    .locals 3

    .line 609
    invoke-static {p0}, Lcn/hutool/core/util/StrUtil;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 612
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v1

    const v2, 0x96f6

    if-eq v2, v1, :cond_1

    .line 614
    invoke-virtual {p0, v0, v2}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    :cond_1
    return-void
.end method

.method public static chineseMoneyToNumber(Ljava/lang/String;)Ljava/math/BigDecimal;
    .locals 7

    .line 249
    invoke-static {p0}, Lcn/hutool/core/util/StrUtil;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    const-string v0, "\u5143"

    .line 253
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    const-string v0, "\u5706"

    .line 255
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    :cond_1
    const-string v2, "\u89d2"

    .line 257
    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const-string v3, "\u5206"

    .line 258
    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x0

    if-lez v0, :cond_2

    .line 263
    invoke-virtual {p0, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    :cond_2
    move-object v5, v1

    :goto_0
    if-lez v2, :cond_4

    if-ltz v0, :cond_3

    if-le v2, v0, :cond_4

    add-int/lit8 v6, v0, 0x1

    .line 272
    invoke-virtual {p0, v6, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    .line 276
    :cond_3
    invoke-virtual {p0, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    :cond_4
    move-object v6, v1

    :goto_1
    if-lez v3, :cond_7

    if-ltz v2, :cond_5

    if-le v3, v2, :cond_7

    add-int/lit8 v2, v2, 0x1

    .line 286
    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_5
    if-lez v0, :cond_6

    if-le v3, v0, :cond_7

    add-int/lit8 v0, v0, 0x1

    .line 291
    invoke-virtual {p0, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 295
    :cond_6
    invoke-virtual {p0, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 301
    :cond_7
    :goto_2
    invoke-static {v5}, Lcn/hutool/core/util/StrUtil;->isNotBlank(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_8

    .line 302
    invoke-static {v5}, Lcn/hutool/core/convert/NumberChineseFormatter;->chineseToNumber(Ljava/lang/String;)I

    move-result p0

    goto :goto_3

    :cond_8
    move p0, v4

    .line 304
    :goto_3
    invoke-static {v6}, Lcn/hutool/core/util/StrUtil;->isNotBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 305
    invoke-static {v6}, Lcn/hutool/core/convert/NumberChineseFormatter;->chineseToNumber(Ljava/lang/String;)I

    move-result v0

    goto :goto_4

    :cond_9
    move v0, v4

    .line 307
    :goto_4
    invoke-static {v1}, Lcn/hutool/core/util/StrUtil;->isNotBlank(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 308
    invoke-static {v1}, Lcn/hutool/core/convert/NumberChineseFormatter;->chineseToNumber(Ljava/lang/String;)I

    move-result v4

    .line 311
    :cond_a
    new-instance v1, Ljava/math/BigDecimal;

    invoke-direct {v1, p0}, Ljava/math/BigDecimal;-><init>(I)V

    int-to-long v2, v0

    .line 312
    invoke-static {v2, v3}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object p0

    sget-object v0, Ljava/math/BigDecimal;->TEN:Ljava/math/BigDecimal;

    sget-object v2, Ljava/math/RoundingMode;->HALF_UP:Ljava/math/RoundingMode;

    const/4 v3, 0x2

    invoke-virtual {p0, v0, v3, v2}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/math/BigDecimal;->add(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object p0

    int-to-long v0, v4

    .line 313
    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v0

    const-wide/16 v1, 0x64

    invoke-static {v1, v2}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v1

    sget-object v2, Ljava/math/RoundingMode;->HALF_UP:Ljava/math/RoundingMode;

    invoke-virtual {v0, v1, v3, v2}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/math/BigDecimal;->add(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object p0

    return-object p0
.end method

.method private static chineseToNumber(C)I
    .locals 1

    const/16 v0, 0x4e24

    if-ne v0, p0, :cond_0

    const/16 p0, 0x4e8c

    .line 538
    :cond_0
    sget-object v0, Lcn/hutool/core/convert/NumberChineseFormatter;->DIGITS:[C

    invoke-static {v0, p0}, Lcn/hutool/core/util/ArrayUtil;->indexOf([CC)I

    move-result p0

    if-lez p0, :cond_1

    add-int/lit8 p0, p0, 0x1

    .line 540
    div-int/lit8 p0, p0, 0x2

    :cond_1
    return p0
.end method

.method public static chineseToNumber(Ljava/lang/String;)I
    .locals 12

    .line 452
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move v3, v1

    move v4, v3

    move v6, v4

    move v7, v6

    move-object v5, v2

    :goto_0
    if-ge v3, v0, :cond_7

    .line 461
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v8

    .line 462
    invoke-static {v8}, Lcn/hutool/core/convert/NumberChineseFormatter;->chineseToNumber(C)I

    move-result v9

    const/4 v10, 0x2

    const/4 v11, 0x1

    if-ltz v9, :cond_3

    if-nez v9, :cond_1

    if-lez v4, :cond_0

    if-eqz v5, :cond_0

    .line 467
    invoke-static {v5}, Lcn/hutool/core/convert/NumberChineseFormatter$ChineseUnit;->access$000(Lcn/hutool/core/convert/NumberChineseFormatter$ChineseUnit;)I

    move-result v5

    div-int/lit8 v5, v5, 0xa

    mul-int/2addr v4, v5

    add-int/2addr v7, v4

    :cond_0
    move-object v5, v2

    goto :goto_1

    :cond_1
    if-gtz v4, :cond_2

    :goto_1
    move v4, v9

    goto :goto_3

    .line 472
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    add-int/lit8 v4, v3, -0x1

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result p0

    invoke-static {p0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p0

    aput-object p0, v2, v1

    invoke-static {v8}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p0

    aput-object p0, v2, v11

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v2, v10

    const-string p0, "Bad number \'{}{}\' at: {}"

    invoke-static {p0, v2}, Lcn/hutool/core/util/StrUtil;->format(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 477
    :cond_3
    invoke-static {v8}, Lcn/hutool/core/convert/NumberChineseFormatter;->chineseToUnit(C)Lcn/hutool/core/convert/NumberChineseFormatter$ChineseUnit;

    move-result-object v5

    if-eqz v5, :cond_6

    .line 484
    invoke-static {v5}, Lcn/hutool/core/convert/NumberChineseFormatter$ChineseUnit;->access$100(Lcn/hutool/core/convert/NumberChineseFormatter$ChineseUnit;)Z

    move-result v8

    if-eqz v8, :cond_4

    add-int/2addr v7, v4

    .line 486
    invoke-static {v5}, Lcn/hutool/core/convert/NumberChineseFormatter$ChineseUnit;->access$000(Lcn/hutool/core/convert/NumberChineseFormatter$ChineseUnit;)I

    move-result v4

    mul-int/2addr v7, v4

    add-int/2addr v6, v7

    move v7, v1

    goto :goto_2

    :cond_4
    if-nez v4, :cond_5

    if-nez v3, :cond_5

    move v4, v11

    .line 498
    :cond_5
    invoke-static {v5}, Lcn/hutool/core/convert/NumberChineseFormatter$ChineseUnit;->access$000(Lcn/hutool/core/convert/NumberChineseFormatter$ChineseUnit;)I

    move-result v8

    mul-int/2addr v4, v8

    add-int/2addr v7, v4

    :goto_2
    move v4, v1

    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 480
    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-array v0, v10, [Ljava/lang/Object;

    invoke-static {v8}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v11

    const-string v1, "Unknown unit \'{}\' at: {}"

    invoke-static {v1, v0}, Lcn/hutool/core/util/StrUtil;->format(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7
    if-lez v4, :cond_8

    if-eqz v5, :cond_8

    .line 505
    invoke-static {v5}, Lcn/hutool/core/convert/NumberChineseFormatter$ChineseUnit;->access$000(Lcn/hutool/core/convert/NumberChineseFormatter$ChineseUnit;)I

    move-result p0

    div-int/lit8 p0, p0, 0xa

    mul-int/2addr v4, p0

    :cond_8
    add-int/2addr v6, v7

    add-int/2addr v6, v4

    return v6
.end method

.method private static chineseToUnit(C)Lcn/hutool/core/convert/NumberChineseFormatter$ChineseUnit;
    .locals 5

    .line 518
    sget-object v0, Lcn/hutool/core/convert/NumberChineseFormatter;->CHINESE_NAME_VALUE:[Lcn/hutool/core/convert/NumberChineseFormatter$ChineseUnit;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 519
    invoke-static {v3}, Lcn/hutool/core/convert/NumberChineseFormatter$ChineseUnit;->access$200(Lcn/hutool/core/convert/NumberChineseFormatter$ChineseUnit;)C

    move-result v4

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static format(DZ)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 54
    invoke-static {p0, p1, p2, v0}, Lcn/hutool/core/convert/NumberChineseFormatter;->format(DZZ)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static format(DZZ)Ljava/lang/String;
    .locals 6

    const-string v4, "\u8d1f"

    const-string v5, "\u5143"

    move-wide v0, p0

    move v2, p2

    move v3, p3

    .line 152
    invoke-static/range {v0 .. v5}, Lcn/hutool/core/convert/NumberChineseFormatter;->format(DZZLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static format(DZZLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 14

    move-wide v8, p0

    move/from16 v10, p2

    const-wide/16 v11, 0x0

    cmpl-double v0, v11, v8

    const-string v13, "\u96f6"

    if-nez v0, :cond_0

    return-object v13

    :cond_0
    const-wide v2, -0x3d29433be1700001L    # -9.999999999999998E13

    const-wide v4, 0x42d6bcc41e8fffffL    # 9.999999999999998E13

    const-string v6, "Number support only: (-99999999999999.99 ~ 99999999999999.99)\uff01"

    const/4 v0, 0x0

    new-array v7, v0, [Ljava/lang/Object;

    move-wide v0, p0

    .line 80
    invoke-static/range {v0 .. v7}, Lcn/hutool/core/lang/Assert;->checkBetween(DDDLjava/lang/String;[Ljava/lang/Object;)D

    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    cmpg-double v1, v8, v11

    if-gez v1, :cond_2

    .line 87
    invoke-static/range {p4 .. p4}, Lcn/hutool/core/util/StrUtil;->isNullOrUndefined(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "\u8d1f"

    goto :goto_0

    :cond_1
    move-object/from16 v1, p4

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    neg-double v1, v8

    goto :goto_1

    :cond_2
    move-wide v1, v8

    :goto_1
    const-wide/high16 v3, 0x4059000000000000L    # 100.0

    mul-double/2addr v1, v3

    .line 91
    invoke-static {v1, v2}, Ljava/lang/Math;->round(D)J

    move-result-wide v1

    const-wide/16 v3, 0xa

    .line 92
    rem-long v5, v1, v3

    long-to-int v5, v5

    .line 93
    div-long/2addr v1, v3

    .line 94
    rem-long v6, v1, v3

    long-to-int v6, v6

    .line 95
    div-long/2addr v1, v3

    const-wide/16 v3, 0x0

    if-eqz p3, :cond_3

    cmp-long v7, v3, v1

    if-eqz v7, :cond_5

    .line 100
    :cond_3
    invoke-static {v1, v2, v10}, Lcn/hutool/core/convert/NumberChineseFormatter;->longToChinese(JZ)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p3, :cond_5

    .line 102
    invoke-static/range {p5 .. p5}, Lcn/hutool/core/util/StrUtil;->isNullOrUndefined(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_4

    const-string v7, "\u5143"

    goto :goto_2

    :cond_4
    move-object/from16 v7, p5

    :goto_2
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    if-nez v6, :cond_7

    if-nez v5, :cond_7

    if-eqz p3, :cond_6

    const-string v1, "\u6574"

    .line 109
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    :cond_6
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_7
    if-nez p3, :cond_8

    const-string v7, "\u70b9"

    .line 116
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_8
    cmp-long v1, v3, v1

    if-nez v1, :cond_9

    if-nez v6, :cond_9

    if-nez p3, :cond_a

    .line 123
    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 126
    :cond_9
    invoke-static {v6, v10}, Lcn/hutool/core/convert/NumberChineseFormatter;->numberToChinese(IZ)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    if-eqz p3, :cond_a

    if-eqz v6, :cond_a

    const-string v1, "\u89d2"

    .line 128
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_a
    :goto_3
    if-eqz v5, :cond_b

    .line 134
    invoke-static {v5, v10}, Lcn/hutool/core/convert/NumberChineseFormatter;->numberToChinese(IZ)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    if-eqz p3, :cond_b

    const-string v1, "\u5206"

    .line 136
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    :cond_b
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static format(JZ)Ljava/lang/String;
    .locals 10

    const-wide/16 v0, 0x0

    cmp-long v2, v0, p0

    if-nez v2, :cond_0

    const-string p0, "\u96f6"

    return-object p0

    :cond_0
    long-to-double v2, p0

    const-wide v4, -0x3d29433be1700001L    # -9.999999999999998E13

    const-wide v6, 0x42d6bcc41e8fffffL    # 9.999999999999998E13

    const-string v8, "Number support only: (-99999999999999.99 ~ 99999999999999.99)\uff01"

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    .line 167
    invoke-static/range {v2 .. v9}, Lcn/hutool/core/lang/Assert;->checkBetween(DDDLjava/lang/String;[Ljava/lang/Object;)D

    .line 170
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    cmp-long v0, p0, v0

    if-gez v0, :cond_1

    const-string v0, "\u8d1f"

    .line 174
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    neg-long p0, p0

    .line 178
    :cond_1
    invoke-static {p0, p1, p2}, Lcn/hutool/core/convert/NumberChineseFormatter;->longToChinese(JZ)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static formatSimple(J)Ljava/lang/String;
    .locals 4

    const-wide/16 v0, 0x2710

    cmp-long v0, p0, v0

    if-gez v0, :cond_0

    const-wide/16 v0, -0x2710

    cmp-long v0, p0, v0

    if-lez v0, :cond_0

    .line 190
    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-wide/32 v0, 0x5f5e100

    cmp-long v0, p0, v0

    const/4 v1, 0x2

    if-gez v0, :cond_1

    const-wide/32 v2, -0x5f5e100

    cmp-long v0, p0, v2

    if-lez v0, :cond_1

    .line 194
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    long-to-float p0, p0

    const p1, 0x461c4000    # 10000.0f

    invoke-static {p0, p1, v1}, Lcn/hutool/core/util/NumberUtil;->div(FFI)D

    move-result-wide p0

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, "\u4e07"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    const-wide v2, 0xe8d4a51000L

    cmp-long v0, p0, v2

    if-gez v0, :cond_2

    const-wide v2, -0xe8d4a51000L

    cmp-long v0, p0, v2

    if-lez v0, :cond_2

    .line 196
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    long-to-float p0, p0

    const p1, 0x4cbebc20    # 1.0E8f

    invoke-static {p0, p1, v1}, Lcn/hutool/core/util/NumberUtil;->div(FFI)D

    move-result-wide p0

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, "\u4ebf"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 198
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    long-to-float p0, p0

    const p1, 0x5368d4a5    # 1.0E12f

    invoke-static {p0, p1, v1}, Lcn/hutool/core/util/NumberUtil;->div(FFI)D

    move-result-wide p0

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, "\u4e07\u4ebf"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static formatThousand(IZ)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const/16 v1, -0x3e7

    const/16 v2, 0x3e7

    const-string v3, "Number support only: (-999 ~ 999)\uff01"

    .line 213
    invoke-static {p0, v1, v2, v3, v0}, Lcn/hutool/core/lang/Assert;->checkBetween(IIILjava/lang/String;[Ljava/lang/Object;)I

    .line 215
    invoke-static {p0, p1}, Lcn/hutool/core/convert/NumberChineseFormatter;->thousandToChinese(IZ)Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0x14

    if-ge p0, v0, :cond_0

    const/16 v0, 0xa

    if-lt p0, v0, :cond_0

    const/4 p0, 0x1

    .line 218
    invoke-virtual {p1, p0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    return-object p1
.end method

.method private static getUnitName(IZ)Ljava/lang/String;
    .locals 1

    if-nez p0, :cond_0

    const-string p0, ""

    return-object p0

    .line 570
    :cond_0
    sget-object v0, Lcn/hutool/core/convert/NumberChineseFormatter;->CHINESE_NAME_VALUE:[Lcn/hutool/core/convert/NumberChineseFormatter$ChineseUnit;

    mul-int/lit8 p0, p0, 0x2

    xor-int/lit8 p1, p1, 0x1

    sub-int/2addr p0, p1

    aget-object p0, v0, p0

    invoke-static {p0}, Lcn/hutool/core/convert/NumberChineseFormatter$ChineseUnit;->access$200(Lcn/hutool/core/convert/NumberChineseFormatter$ChineseUnit;)C

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static longToChinese(JZ)Ljava/lang/String;
    .locals 11

    const-wide/16 v0, 0x0

    cmp-long v2, v0, p0

    if-nez v2, :cond_0

    const-string p0, "\u96f6"

    return-object p0

    :cond_0
    const/4 v2, 0x4

    new-array v2, v2, [I

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    cmp-long v5, p0, v0

    const/4 v6, 0x1

    if-eqz v5, :cond_1

    const-wide/16 v7, 0x2710

    .line 332
    rem-long v9, p0, v7

    long-to-int v5, v9

    aput v5, v2, v4

    .line 333
    div-long/2addr p0, v7

    add-int/2addr v4, v6

    goto :goto_0

    .line 336
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    aget p1, v2, v3

    const/16 v0, 0x3e8

    if-lez p1, :cond_2

    .line 343
    invoke-static {p1, p2}, Lcn/hutool/core/convert/NumberChineseFormatter;->thousandToChinese(IZ)Ljava/lang/String;

    move-result-object v1

    .line 344
    invoke-virtual {p0, v3, v1}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    if-ge p1, v0, :cond_2

    .line 348
    invoke-static {p0}, Lcn/hutool/core/convert/NumberChineseFormatter;->addPreZero(Ljava/lang/StringBuilder;)V

    :cond_2
    aget p1, v2, v6

    const-string v1, "\u4e07"

    if-lez p1, :cond_4

    .line 355
    rem-int/lit8 v4, p1, 0xa

    if-nez v4, :cond_3

    aget v4, v2, v3

    if-lez v4, :cond_3

    .line 357
    invoke-static {p0}, Lcn/hutool/core/convert/NumberChineseFormatter;->addPreZero(Ljava/lang/StringBuilder;)V

    .line 359
    :cond_3
    invoke-static {p1, p2}, Lcn/hutool/core/convert/NumberChineseFormatter;->thousandToChinese(IZ)Ljava/lang/String;

    move-result-object v4

    .line 360
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    if-ge p1, v0, :cond_5

    .line 364
    invoke-static {p0}, Lcn/hutool/core/convert/NumberChineseFormatter;->addPreZero(Ljava/lang/StringBuilder;)V

    goto :goto_1

    .line 367
    :cond_4
    invoke-static {p0}, Lcn/hutool/core/convert/NumberChineseFormatter;->addPreZero(Ljava/lang/StringBuilder;)V

    :cond_5
    :goto_1
    const/4 p1, 0x2

    aget v4, v2, p1

    const-string v5, "\u4ebf"

    if-lez v4, :cond_7

    .line 373
    rem-int/lit8 v7, v4, 0xa

    if-nez v7, :cond_6

    aget v7, v2, v6

    if-lez v7, :cond_6

    .line 375
    invoke-static {p0}, Lcn/hutool/core/convert/NumberChineseFormatter;->addPreZero(Ljava/lang/StringBuilder;)V

    .line 378
    :cond_6
    invoke-static {v4, p2}, Lcn/hutool/core/convert/NumberChineseFormatter;->thousandToChinese(IZ)Ljava/lang/String;

    move-result-object v7

    .line 379
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v3, v7}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    if-ge v4, v0, :cond_8

    .line 383
    invoke-static {p0}, Lcn/hutool/core/convert/NumberChineseFormatter;->addPreZero(Ljava/lang/StringBuilder;)V

    goto :goto_2

    .line 386
    :cond_7
    invoke-static {p0}, Lcn/hutool/core/convert/NumberChineseFormatter;->addPreZero(Ljava/lang/StringBuilder;)V

    :cond_8
    :goto_2
    const/4 v0, 0x3

    aget v0, v2, v0

    if-lez v0, :cond_a

    aget p1, v2, p1

    if-nez p1, :cond_9

    .line 393
    invoke-virtual {p0, v3, v5}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 395
    :cond_9
    invoke-static {v0, p2}, Lcn/hutool/core/convert/NumberChineseFormatter;->thousandToChinese(IZ)Ljava/lang/String;

    move-result-object p1

    .line 396
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v3, p1}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 399
    :cond_a
    invoke-static {p0}, Lcn/hutool/core/util/StrUtil;->isNotEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_b

    const p1, 0x96f6

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result p2

    if-ne p1, p2, :cond_b

    .line 400
    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 403
    :cond_b
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static numberCharToChinese(CZ)Ljava/lang/String;
    .locals 2

    const/16 v0, 0x30

    if-lt p0, v0, :cond_1

    const/16 v1, 0x39

    if-le p0, v1, :cond_0

    goto :goto_0

    :cond_0
    sub-int/2addr p0, v0

    .line 235
    invoke-static {p0, p1}, Lcn/hutool/core/convert/NumberChineseFormatter;->numberToChinese(IZ)C

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 233
    :cond_1
    :goto_0
    invoke-static {p0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static numberToChinese(IZ)C
    .locals 1

    if-nez p0, :cond_0

    .line 554
    sget-object p0, Lcn/hutool/core/convert/NumberChineseFormatter;->DIGITS:[C

    const/4 p1, 0x0

    aget-char p0, p0, p1

    return p0

    .line 556
    :cond_0
    sget-object v0, Lcn/hutool/core/convert/NumberChineseFormatter;->DIGITS:[C

    mul-int/lit8 p0, p0, 0x2

    xor-int/lit8 p1, p1, 0x1

    sub-int/2addr p0, p1

    aget-char p0, v0, p0

    return p0
.end method

.method private static thousandToChinese(IZ)Ljava/lang/String;
    .locals 6

    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 416
    sget-object p0, Lcn/hutool/core/convert/NumberChineseFormatter;->DIGITS:[C

    aget-char p0, p0, v0

    invoke-static {p0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 421
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x1

    move v3, v0

    move v4, v2

    :goto_0
    if-lez p0, :cond_3

    .line 424
    rem-int/lit8 v5, p0, 0xa

    if-nez v5, :cond_2

    if-nez v4, :cond_1

    const-string v4, "\u96f6"

    .line 428
    invoke-virtual {v1, v0, v4}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    move v4, v2

    goto :goto_1

    .line 432
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v5, p1}, Lcn/hutool/core/convert/NumberChineseFormatter;->numberToChinese(IZ)C

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v3, p1}, Lcn/hutool/core/convert/NumberChineseFormatter;->getUnitName(IZ)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v0, v4}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move v4, v0

    .line 435
    :goto_1
    div-int/lit8 p0, p0, 0xa

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 437
    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
