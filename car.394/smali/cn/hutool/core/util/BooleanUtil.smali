.class public Lcn/hutool/core/util/BooleanUtil;
.super Ljava/lang/Object;
.source "BooleanUtil.java"


# static fields
.field private static final FALSE_SET:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final TRUE_SET:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 12

    const-string v0, "true"

    const-string v1, "yes"

    const-string v2, "y"

    const-string v3, "t"

    const-string v4, "ok"

    const-string v5, "1"

    const-string v6, "on"

    const-string v7, "\u662f"

    const-string v8, "\u5bf9"

    const-string v9, "\u771f"

    const-string v10, "\u5c0d"

    const-string v11, "\u221a"

    .line 17
    filled-new-array/range {v0 .. v11}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/hutool/core/collection/CollUtil;->newHashSet([Ljava/lang/Object;)Ljava/util/HashSet;

    move-result-object v0

    sput-object v0, Lcn/hutool/core/util/BooleanUtil;->TRUE_SET:Ljava/util/Set;

    const-string v1, "false"

    const-string v2, "no"

    const-string v3, "n"

    const-string v4, "f"

    const-string v5, "0"

    const-string v6, "off"

    const-string v7, "\u5426"

    const-string v8, "\u9519"

    const-string v9, "\u5047"

    const-string v10, "\u932f"

    const-string v11, "\u00d7"

    .line 19
    filled-new-array/range {v1 .. v11}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/hutool/core/collection/CollUtil;->newHashSet([Ljava/lang/Object;)Ljava/util/HashSet;

    move-result-object v0

    sput-object v0, Lcn/hutool/core/util/BooleanUtil;->FALSE_SET:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static varargs and([Z)Z
    .locals 4

    .line 351
    invoke-static {p0}, Lcn/hutool/core/util/ArrayUtil;->isEmpty([Z)Z

    move-result v0

    if-nez v0, :cond_2

    .line 354
    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-boolean v3, p0, v2

    if-nez v3, :cond_0

    return v1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0

    .line 352
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "The Array must not be empty !"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static varargs andOfWrap([Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 4

    .line 378
    invoke-static {p0}, Lcn/hutool/core/util/ArrayUtil;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 382
    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p0, v2

    .line 383
    invoke-static {v3}, Lcn/hutool/core/util/BooleanUtil;->isFalse(Ljava/lang/Boolean;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 384
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    .line 387
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    .line 379
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "The Array must not be empty !"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static isBoolean(Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 502
    const-class v0, Ljava/lang/Boolean;

    if-eq p0, v0, :cond_1

    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

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

.method public static isFalse(Ljava/lang/Boolean;)Z
    .locals 1

    .line 63
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, p0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static isTrue(Ljava/lang/Boolean;)Z
    .locals 1

    .line 47
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, p0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static negate(Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 31
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_1

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_0

    :cond_1
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_0
    return-object p0
.end method

.method public static negate(Z)Z
    .locals 0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static varargs or([Z)Z
    .locals 4

    .line 406
    invoke-static {p0}, Lcn/hutool/core/util/ArrayUtil;->isEmpty([Z)Z

    move-result v0

    if-nez v0, :cond_2

    .line 409
    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-boolean v3, p0, v2

    if-eqz v3, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1

    .line 407
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "The Array must not be empty !"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static varargs orOfWrap([Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 4

    .line 434
    invoke-static {p0}, Lcn/hutool/core/util/ArrayUtil;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 438
    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p0, v2

    .line 439
    invoke-static {v3}, Lcn/hutool/core/util/BooleanUtil;->isTrue(Ljava/lang/Boolean;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 p0, 0x1

    .line 440
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 443
    :cond_1
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    .line 435
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "The Array must not be empty !"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static toBoolean(Ljava/lang/String;)Z
    .locals 1

    .line 83
    invoke-static {p0}, Lcn/hutool/core/util/StrUtil;->isNotBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 84
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    .line 85
    sget-object v0, Lcn/hutool/core/util/BooleanUtil;->TRUE_SET:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static toBooleanObject(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 1

    .line 101
    invoke-static {p0}, Lcn/hutool/core/util/StrUtil;->isNotBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 102
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    .line 103
    sget-object v0, Lcn/hutool/core/util/BooleanUtil;->TRUE_SET:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    .line 104
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    .line 105
    :cond_0
    sget-object v0, Lcn/hutool/core/util/BooleanUtil;->FALSE_SET:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x0

    .line 106
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static toByte(Z)B
    .locals 0

    .line 159
    invoke-static {p0}, Lcn/hutool/core/util/BooleanUtil;->toInt(Z)I

    move-result p0

    int-to-byte p0, p0

    return p0
.end method

.method public static toByteObj(Z)Ljava/lang/Byte;
    .locals 0

    .line 169
    invoke-static {p0}, Lcn/hutool/core/util/BooleanUtil;->toByte(Z)B

    move-result p0

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    return-object p0
.end method

.method public static toChar(Z)C
    .locals 0

    .line 139
    invoke-static {p0}, Lcn/hutool/core/util/BooleanUtil;->toInt(Z)I

    move-result p0

    int-to-char p0, p0

    return p0
.end method

.method public static toCharacter(Z)Ljava/lang/Character;
    .locals 0

    .line 149
    invoke-static {p0}, Lcn/hutool/core/util/BooleanUtil;->toChar(Z)C

    move-result p0

    invoke-static {p0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p0

    return-object p0
.end method

.method public static toDouble(Z)D
    .locals 2

    .line 239
    invoke-static {p0}, Lcn/hutool/core/util/BooleanUtil;->toInt(Z)I

    move-result p0

    int-to-double v0, p0

    return-wide v0
.end method

.method public static toDoubleObj(Z)Ljava/lang/Double;
    .locals 2

    .line 249
    invoke-static {p0}, Lcn/hutool/core/util/BooleanUtil;->toDouble(Z)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0
.end method

.method public static toFloat(Z)F
    .locals 0

    .line 219
    invoke-static {p0}, Lcn/hutool/core/util/BooleanUtil;->toInt(Z)I

    move-result p0

    int-to-float p0, p0

    return p0
.end method

.method public static toFloatObj(Z)Ljava/lang/Float;
    .locals 0

    .line 229
    invoke-static {p0}, Lcn/hutool/core/util/BooleanUtil;->toFloat(Z)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method

.method public static toInt(Z)I
    .locals 0

    return p0
.end method

.method public static toInteger(Z)Ljava/lang/Integer;
    .locals 0

    .line 129
    invoke-static {p0}, Lcn/hutool/core/util/BooleanUtil;->toInt(Z)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static toLong(Z)J
    .locals 2

    .line 179
    invoke-static {p0}, Lcn/hutool/core/util/BooleanUtil;->toInt(Z)I

    move-result p0

    int-to-long v0, p0

    return-wide v0
.end method

.method public static toLongObj(Z)Ljava/lang/Long;
    .locals 2

    .line 189
    invoke-static {p0}, Lcn/hutool/core/util/BooleanUtil;->toLong(Z)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method public static toShort(Z)S
    .locals 0

    .line 199
    invoke-static {p0}, Lcn/hutool/core/util/BooleanUtil;->toInt(Z)I

    move-result p0

    int-to-short p0, p0

    return p0
.end method

.method public static toShortObj(Z)Ljava/lang/Short;
    .locals 0

    .line 209
    invoke-static {p0}, Lcn/hutool/core/util/BooleanUtil;->toShort(Z)S

    move-result p0

    invoke-static {p0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p0

    return-object p0
.end method

.method public static toString(Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    if-nez p0, :cond_0

    return-object p3

    .line 333
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    move-object p1, p2

    :goto_0
    return-object p1
.end method

.method public static toString(ZLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    move-object p1, p2

    :goto_0
    return-object p1
.end method

.method public static toStringOnOff(Z)Ljava/lang/String;
    .locals 2

    const-string v0, "on"

    const-string v1, "off"

    .line 279
    invoke-static {p0, v0, v1}, Lcn/hutool/core/util/BooleanUtil;->toString(ZLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static toStringTrueFalse(Z)Ljava/lang/String;
    .locals 2

    const-string v0, "true"

    const-string v1, "false"

    .line 264
    invoke-static {p0, v0, v1}, Lcn/hutool/core/util/BooleanUtil;->toString(ZLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static toStringYesNo(Z)Ljava/lang/String;
    .locals 2

    const-string v0, "yes"

    const-string v1, "no"

    .line 294
    invoke-static {p0, v0, v1}, Lcn/hutool/core/util/BooleanUtil;->toString(ZLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static varargs xor([Z)Z
    .locals 4

    .line 462
    invoke-static {p0}, Lcn/hutool/core/util/ArrayUtil;->isEmpty([Z)Z

    move-result v0

    if-nez v0, :cond_1

    .line 467
    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_0

    aget-boolean v3, p0, v1

    xor-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return v2

    .line 463
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "The Array must not be empty"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static varargs xorOfWrap([Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 1

    .line 487
    invoke-static {p0}, Lcn/hutool/core/util/ArrayUtil;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 490
    const-class v0, [Z

    invoke-static {v0, p0}, Lcn/hutool/core/convert/Convert;->convert(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Z

    .line 491
    invoke-static {p0}, Lcn/hutool/core/util/BooleanUtil;->xor([Z)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    .line 488
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "The Array must not be empty !"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
