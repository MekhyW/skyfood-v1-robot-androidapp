.class public Lcn/hutool/core/img/ColorUtil;
.super Ljava/lang/Object;
.source "ColorUtil.java"


# static fields
.field private static final RGB_COLOR_BOUND:I = 0x100


# direct methods
.method public static synthetic $r8$lambda$0w81Uub8FxJ9kFwHh_u6xoaqKLg(JJ)J
    .locals 0

    invoke-static {p0, p1, p2, p3}, Ljava/lang/Long;->sum(JJ)J

    move-result-wide p0

    return-wide p0
.end method

.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static add(Ljava/awt/Color;Ljava/awt/Color;)Ljava/awt/Color;
    .locals 20

    .line 158
    invoke-virtual/range {p0 .. p0}, Ljava/awt/Color;->getRed()I

    move-result v0

    int-to-double v0, v0

    .line 159
    invoke-virtual/range {p0 .. p0}, Ljava/awt/Color;->getGreen()I

    move-result v2

    int-to-double v2, v2

    .line 160
    invoke-virtual/range {p0 .. p0}, Ljava/awt/Color;->getBlue()I

    move-result v4

    int-to-double v4, v4

    .line 161
    invoke-virtual/range {p0 .. p0}, Ljava/awt/Color;->getAlpha()I

    move-result v6

    int-to-double v6, v6

    .line 162
    invoke-virtual/range {p1 .. p1}, Ljava/awt/Color;->getRed()I

    move-result v8

    int-to-double v8, v8

    .line 163
    invoke-virtual/range {p1 .. p1}, Ljava/awt/Color;->getGreen()I

    move-result v10

    int-to-double v10, v10

    .line 164
    invoke-virtual/range {p1 .. p1}, Ljava/awt/Color;->getBlue()I

    move-result v12

    int-to-double v12, v12

    .line 165
    invoke-virtual/range {p1 .. p1}, Ljava/awt/Color;->getAlpha()I

    move-result v14

    int-to-double v14, v14

    mul-double/2addr v0, v6

    const-wide v16, 0x406fe00000000000L    # 255.0

    div-double v0, v0, v16

    mul-double/2addr v8, v14

    div-double v8, v8, v16

    add-double/2addr v0, v8

    div-double v8, v6, v16

    div-double v18, v14, v16

    add-double v8, v8, v18

    div-double/2addr v0, v8

    double-to-int v0, v0

    mul-double/2addr v2, v6

    div-double v2, v2, v16

    mul-double/2addr v10, v14

    div-double v10, v10, v16

    add-double/2addr v2, v10

    div-double/2addr v2, v8

    double-to-int v1, v2

    mul-double/2addr v4, v6

    div-double v4, v4, v16

    mul-double/2addr v12, v14

    div-double v12, v12, v16

    add-double/2addr v4, v12

    div-double/2addr v4, v8

    double-to-int v2, v4

    .line 169
    new-instance v3, Ljava/awt/Color;

    invoke-direct {v3, v0, v1, v2}, Ljava/awt/Color;-><init>(III)V

    return-object v3
.end method

.method public static getColor(I)Ljava/awt/Color;
    .locals 1

    .line 137
    new-instance v0, Ljava/awt/Color;

    invoke-direct {v0, p0}, Ljava/awt/Color;-><init>(I)V

    return-object v0
.end method

.method public static getColor(Ljava/lang/String;)Ljava/awt/Color;
    .locals 7

    .line 70
    invoke-static {p0}, Lcn/hutool/core/util/StrUtil;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 73
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p0

    const-string v0, "BLACK"

    .line 75
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 76
    sget-object p0, Ljava/awt/Color;->BLACK:Ljava/awt/Color;

    return-object p0

    :cond_1
    const-string v0, "WHITE"

    .line 77
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 78
    sget-object p0, Ljava/awt/Color;->WHITE:Ljava/awt/Color;

    return-object p0

    :cond_2
    const-string v0, "LIGHTGRAY"

    .line 79
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    const-string v0, "LIGHT_GRAY"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto/16 :goto_1

    :cond_3
    const-string v0, "GRAY"

    .line 81
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 82
    sget-object p0, Ljava/awt/Color;->GRAY:Ljava/awt/Color;

    return-object p0

    :cond_4
    const-string v0, "DARKGRAY"

    .line 83
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    const-string v0, "DARK_GRAY"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    goto/16 :goto_0

    :cond_5
    const-string v0, "RED"

    .line 85
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 86
    sget-object p0, Ljava/awt/Color;->RED:Ljava/awt/Color;

    return-object p0

    :cond_6
    const-string v0, "PINK"

    .line 87
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 88
    sget-object p0, Ljava/awt/Color;->PINK:Ljava/awt/Color;

    return-object p0

    :cond_7
    const-string v0, "ORANGE"

    .line 89
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 90
    sget-object p0, Ljava/awt/Color;->ORANGE:Ljava/awt/Color;

    return-object p0

    :cond_8
    const-string v0, "YELLOW"

    .line 91
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 92
    sget-object p0, Ljava/awt/Color;->YELLOW:Ljava/awt/Color;

    return-object p0

    :cond_9
    const-string v0, "GREEN"

    .line 93
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 94
    sget-object p0, Ljava/awt/Color;->GREEN:Ljava/awt/Color;

    return-object p0

    :cond_a
    const-string v0, "MAGENTA"

    .line 95
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 96
    sget-object p0, Ljava/awt/Color;->MAGENTA:Ljava/awt/Color;

    return-object p0

    :cond_b
    const-string v0, "CYAN"

    .line 97
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 98
    sget-object p0, Ljava/awt/Color;->CYAN:Ljava/awt/Color;

    return-object p0

    :cond_c
    const-string v0, "BLUE"

    .line 99
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 100
    sget-object p0, Ljava/awt/Color;->BLUE:Ljava/awt/Color;

    return-object p0

    :cond_d
    const-string v0, "DARKGOLD"

    .line 101
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    const-string p0, "#9e7e67"

    .line 103
    invoke-static {p0}, Lcn/hutool/core/img/ColorUtil;->hexToColor(Ljava/lang/String;)Ljava/awt/Color;

    move-result-object p0

    return-object p0

    :cond_e
    const-string v0, "LIGHTGOLD"

    .line 104
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const-string p0, "#ac9c85"

    .line 106
    invoke-static {p0}, Lcn/hutool/core/img/ColorUtil;->hexToColor(Ljava/lang/String;)Ljava/awt/Color;

    move-result-object p0

    return-object p0

    :cond_f
    const/16 v0, 0x23

    .line 107
    invoke-static {p0, v0}, Lcn/hutool/core/util/StrUtil;->startWith(Ljava/lang/CharSequence;C)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 108
    invoke-static {p0}, Lcn/hutool/core/img/ColorUtil;->hexToColor(Ljava/lang/String;)Ljava/awt/Color;

    move-result-object p0

    return-object p0

    :cond_10
    const/16 v0, 0x24

    .line 109
    invoke-static {p0, v0}, Lcn/hutool/core/util/StrUtil;->startWith(Ljava/lang/CharSequence;C)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_11

    .line 111
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "#"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcn/hutool/core/img/ColorUtil;->hexToColor(Ljava/lang/String;)Ljava/awt/Color;

    move-result-object p0

    return-object p0

    :cond_11
    const/16 v0, 0x2c

    .line 114
    invoke-static {p0, v0}, Lcn/hutool/core/util/StrUtil;->split(Ljava/lang/CharSequence;C)Ljava/util/List;

    move-result-object p0

    .line 115
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v3, 0x3

    if-ne v3, v0, :cond_12

    const/4 v0, 0x0

    .line 116
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lcn/hutool/core/convert/Convert;->toInt(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v4

    .line 117
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Lcn/hutool/core/convert/Convert;->toInt(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x2

    .line 118
    invoke-interface {p0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcn/hutool/core/convert/Convert;->toInt(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object p0

    new-array v3, v3, [Ljava/lang/Integer;

    aput-object v4, v3, v0

    aput-object v5, v3, v2

    aput-object p0, v3, v6

    .line 119
    invoke-static {v3}, Lcn/hutool/core/util/ArrayUtil;->hasNull([Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    .line 120
    new-instance v0, Ljava/awt/Color;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-direct {v0, v1, v2, p0}, Ljava/awt/Color;-><init>(III)V

    return-object v0

    :cond_12
    return-object v1

    .line 84
    :cond_13
    :goto_0
    sget-object p0, Ljava/awt/Color;->DARK_GRAY:Ljava/awt/Color;

    return-object p0

    .line 80
    :cond_14
    :goto_1
    sget-object p0, Ljava/awt/Color;->LIGHT_GRAY:Ljava/awt/Color;

    return-object p0
.end method

.method public static varargs getMainColor(Ljava/awt/image/BufferedImage;[[I)Ljava/lang/String;
    .locals 10

    .line 206
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 207
    invoke-virtual {p0}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result v1

    .line 208
    invoke-virtual {p0}, Ljava/awt/image/BufferedImage;->getHeight()I

    move-result v2

    .line 209
    invoke-virtual {p0}, Ljava/awt/image/BufferedImage;->getMinX()I

    move-result v3

    .line 210
    invoke-virtual {p0}, Ljava/awt/image/BufferedImage;->getMinY()I

    move-result v4

    :goto_0
    if-ge v3, v1, :cond_2

    move v5, v4

    :goto_1
    if-ge v5, v2, :cond_1

    .line 213
    invoke-virtual {p0, v3, v5}, Ljava/awt/image/BufferedImage;->getRGB(II)I

    move-result v6

    const/high16 v7, 0xff0000

    and-int/2addr v7, v6

    shr-int/lit8 v7, v7, 0x10

    const v8, 0xff00

    and-int/2addr v8, v6

    shr-int/lit8 v8, v8, 0x8

    and-int/lit16 v6, v6, 0xff

    .line 217
    invoke-static {v7, v8, v6, p1}, Lcn/hutool/core/img/ColorUtil;->matchFilters(III[[I)Z

    move-result v9

    if-eqz v9, :cond_0

    goto :goto_2

    .line 220
    :cond_0
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, "-"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-wide/16 v7, 0x1

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    new-instance v8, Lcn/hutool/core/img/ColorUtil$$ExternalSyntheticLambda0;

    invoke-direct {v8}, Lcn/hutool/core/img/ColorUtil$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v0, v6, v7, v8}, Ljava/util/Map;->merge(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;

    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 225
    :cond_2
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 p1, 0x0

    const-wide/16 v0, 0x0

    :cond_3
    :goto_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 226
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 227
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    .line 228
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v4, v4, v0

    if-lez v4, :cond_3

    .line 230
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    move-object p1, v3

    goto :goto_3

    :cond_4
    const/16 p0, 0x2d

    .line 233
    invoke-static {p1, p0}, Lcn/hutool/core/util/StrUtil;->splitToArray(Ljava/lang/CharSequence;C)[Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    .line 234
    aget-object p1, p0, p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    .line 235
    aget-object v1, p0, v0

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    .line 236
    aget-object p0, p0, v2

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    .line 237
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const-string v3, "0"

    if-ne v2, v0, :cond_5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 238
    :cond_5
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v2, v0, :cond_6

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 239
    :cond_6
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v2, v0, :cond_7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 240
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "#"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static hexToColor(Ljava/lang/String;)Ljava/awt/Color;
    .locals 1

    const-string v0, "#"

    .line 148
    invoke-static {p0, v0}, Lcn/hutool/core/util/StrUtil;->removePrefix(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0x10

    invoke-static {p0, v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result p0

    invoke-static {p0}, Lcn/hutool/core/img/ColorUtil;->getColor(I)Ljava/awt/Color;

    move-result-object p0

    return-object p0
.end method

.method private static varargs matchFilters(III[[I)Z
    .locals 6

    const/4 v0, 0x0

    if-eqz p3, :cond_1

    .line 253
    array-length v1, p3

    if-lez v1, :cond_1

    .line 254
    array-length v1, p3

    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p3, v2

    .line 255
    aget v4, v3, v0

    if-ne p0, v4, :cond_0

    const/4 v4, 0x1

    aget v5, v3, v4

    if-ne p1, v5, :cond_0

    const/4 v5, 0x2

    aget v3, v3, v5

    if-ne p2, v3, :cond_0

    return v4

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public static randomColor()Ljava/awt/Color;
    .locals 1

    const/4 v0, 0x0

    .line 179
    invoke-static {v0}, Lcn/hutool/core/img/ColorUtil;->randomColor(Ljava/util/Random;)Ljava/awt/Color;

    move-result-object v0

    return-object v0
.end method

.method public static randomColor(Ljava/util/Random;)Ljava/awt/Color;
    .locals 4

    if-nez p0, :cond_0

    .line 191
    invoke-static {}, Lcn/hutool/core/util/RandomUtil;->getRandom()Ljava/util/concurrent/ThreadLocalRandom;

    move-result-object p0

    .line 193
    :cond_0
    new-instance v0, Ljava/awt/Color;

    const/16 v1, 0x100

    invoke-virtual {p0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    invoke-virtual {p0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    invoke-virtual {p0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result p0

    invoke-direct {v0, v2, v3, p0}, Ljava/awt/Color;-><init>(III)V

    return-object v0
.end method

.method public static toHex(III)Ljava/lang/String;
    .locals 2

    if-ltz p0, :cond_0

    const/16 v0, 0xff

    if-gt p0, v0, :cond_0

    if-ltz p1, :cond_0

    if-gt p1, v0, :cond_0

    if-ltz p2, :cond_0

    if-gt p2, v0, :cond_0

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 51
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, p0

    const/4 p0, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, p0

    const-string p0, "#%02X%02X%02X"

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 49
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "RGB must be 0~255!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static toHex(Ljava/awt/Color;)Ljava/lang/String;
    .locals 2

    .line 35
    invoke-virtual {p0}, Ljava/awt/Color;->getRed()I

    move-result v0

    invoke-virtual {p0}, Ljava/awt/Color;->getGreen()I

    move-result v1

    invoke-virtual {p0}, Ljava/awt/Color;->getBlue()I

    move-result p0

    invoke-static {v0, v1, p0}, Lcn/hutool/core/img/ColorUtil;->toHex(III)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
