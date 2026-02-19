.class public Lcn/hutool/core/convert/Convert;
.super Ljava/lang/Object;
.source "Convert.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static byteToUnsignedInt(B)I
    .locals 0

    and-int/lit16 p0, p0, 0xff

    return p0
.end method

.method public static bytesToInt([B)I
    .locals 0

    .line 1110
    invoke-static {p0}, Lcn/hutool/core/util/ByteUtil;->bytesToInt([B)I

    move-result p0

    return p0
.end method

.method public static bytesToLong([B)J
    .locals 2

    .line 1148
    invoke-static {p0}, Lcn/hutool/core/util/ByteUtil;->bytesToLong([B)J

    move-result-wide v0

    return-wide v0
.end method

.method public static bytesToShort([B)S
    .locals 0

    .line 1086
    invoke-static {p0}, Lcn/hutool/core/util/ByteUtil;->bytesToShort([B)S

    move-result p0

    return p0
.end method

.method public static chineseMoneyToNumber(Ljava/lang/String;)Ljava/math/BigDecimal;
    .locals 0

    .line 1049
    invoke-static {p0}, Lcn/hutool/core/convert/NumberChineseFormatter;->chineseMoneyToNumber(Ljava/lang/String;)Ljava/math/BigDecimal;

    move-result-object p0

    return-object p0
.end method

.method public static chineseToNumber(Ljava/lang/String;)I
    .locals 0

    .line 1021
    invoke-static {p0}, Lcn/hutool/core/convert/NumberChineseFormatter;->chineseToNumber(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static convert(Lcn/hutool/core/lang/TypeReference;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcn/hutool/core/lang/TypeReference<",
            "TT;>;",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/hutool/core/convert/ConvertException;
        }
    .end annotation

    .line 664
    invoke-virtual {p0}, Lcn/hutool/core/lang/TypeReference;->getType()Ljava/lang/reflect/Type;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcn/hutool/core/convert/Convert;->convert(Ljava/lang/reflect/Type;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static convert(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/hutool/core/convert/ConvertException;
        }
    .end annotation

    .line 651
    invoke-static {p0, p1}, Lcn/hutool/core/convert/Convert;->convert(Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static convert(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/Object;",
            "TT;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/hutool/core/convert/ConvertException;
        }
    .end annotation

    .line 692
    invoke-static {p0, p1, p2}, Lcn/hutool/core/convert/Convert;->convert(Ljava/lang/reflect/Type;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static convert(Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/hutool/core/convert/ConvertException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 677
    invoke-static {p0, p1, v0}, Lcn/hutool/core/convert/Convert;->convert(Ljava/lang/reflect/Type;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static convert(Ljava/lang/reflect/Type;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Object;",
            "TT;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/hutool/core/convert/ConvertException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 706
    invoke-static {p0, p1, p2, v0}, Lcn/hutool/core/convert/Convert;->convertWithCheck(Ljava/lang/reflect/Type;Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static convertByClassName(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/hutool/core/convert/ConvertException;
        }
    .end annotation

    .line 637
    invoke-static {p0}, Lcn/hutool/core/util/ClassUtil;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    invoke-static {p0, p1}, Lcn/hutool/core/convert/Convert;->convert(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static convertCharset(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/CharSequence;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x2

    aput-object p2, v0, v1

    .line 922
    invoke-static {v0}, Lcn/hutool/core/util/StrUtil;->hasBlank([Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 926
    :cond_0
    invoke-static {p0, p1, p2}, Lcn/hutool/core/util/CharsetUtil;->convert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static convertQuietly(Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 720
    invoke-static {p0, p1, v0}, Lcn/hutool/core/convert/Convert;->convertQuietly(Ljava/lang/reflect/Type;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static convertQuietly(Ljava/lang/reflect/Type;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Object;",
            "TT;)TT;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 735
    invoke-static {p0, p1, p2, v0}, Lcn/hutool/core/convert/Convert;->convertWithCheck(Ljava/lang/reflect/Type;Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static convertTime(JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/TimeUnit;)J
    .locals 3

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "sourceUnit is null !"

    .line 938
    invoke-static {p2, v2, v1}, Lcn/hutool/core/lang/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "destUnit is null !"

    new-array v0, v0, [Ljava/lang/Object;

    .line 939
    invoke-static {p3, v1, v0}, Lcn/hutool/core/lang/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 940
    invoke-virtual {p3, p0, p1, p2}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide p0

    return-wide p0
.end method

.method public static convertWithCheck(Ljava/lang/reflect/Type;Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Object;",
            "TT;Z)TT;"
        }
    .end annotation

    .line 751
    invoke-static {}, Lcn/hutool/core/convert/ConverterRegistry;->getInstance()Lcn/hutool/core/convert/ConverterRegistry;

    move-result-object v0

    .line 753
    :try_start_0
    invoke-virtual {v0, p0, p1, p2}, Lcn/hutool/core/convert/ConverterRegistry;->convert(Ljava/lang/reflect/Type;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    if-eqz p3, :cond_0

    return-object p2

    .line 758
    :cond_0
    throw p0
.end method

.method public static digitToChinese(Ljava/lang/Number;)Ljava/lang/String;
    .locals 2

    if-nez p0, :cond_0

    const-string p0, "\u96f6"

    return-object p0

    .line 1035
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    const/4 p0, 0x1

    invoke-static {v0, v1, p0, p0}, Lcn/hutool/core/convert/NumberChineseFormatter;->format(DZZ)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static hexToBytes(Ljava/lang/String;)[B
    .locals 0

    .line 873
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    invoke-static {p0}, Lcn/hutool/core/util/HexUtil;->decodeHex([C)[B

    move-result-object p0

    return-object p0
.end method

.method public static hexToStr(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/lang/String;
    .locals 0

    .line 886
    invoke-static {p0, p1}, Lcn/hutool/core/util/HexUtil;->decodeHexStr(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static intToByte(I)B
    .locals 0

    int-to-byte p0, p0

    return p0
.end method

.method public static intToBytes(I)[B
    .locals 0

    .line 1122
    invoke-static {p0}, Lcn/hutool/core/util/ByteUtil;->intToBytes(I)[B

    move-result-object p0

    return-object p0
.end method

.method public static longToBytes(J)[B
    .locals 0

    .line 1135
    invoke-static {p0, p1}, Lcn/hutool/core/util/ByteUtil;->longToBytes(J)[B

    move-result-object p0

    return-object p0
.end method

.method public static numberToChinese(DZ)Ljava/lang/String;
    .locals 0

    .line 1006
    invoke-static {p0, p1, p2}, Lcn/hutool/core/convert/NumberChineseFormatter;->format(DZ)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static numberToSimple(Ljava/lang/Number;)Ljava/lang/String;
    .locals 2

    .line 994
    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcn/hutool/core/convert/NumberWordFormatter;->formatSimple(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static numberToWord(Ljava/lang/Number;)Ljava/lang/String;
    .locals 0

    .line 979
    invoke-static {p0}, Lcn/hutool/core/convert/NumberWordFormatter;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static shortToBytes(S)[B
    .locals 0

    .line 1098
    invoke-static {p0}, Lcn/hutool/core/util/ByteUtil;->shortToBytes(S)[B

    move-result-object p0

    return-object p0
.end method

.method public static strToUnicode(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 897
    invoke-static {p0}, Lcn/hutool/core/text/UnicodeUtil;->toUnicode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static toBigDecimal(Ljava/lang/Object;)Ljava/math/BigDecimal;
    .locals 1

    const/4 v0, 0x0

    .line 440
    invoke-static {p0, v0}, Lcn/hutool/core/convert/Convert;->toBigDecimal(Ljava/lang/Object;Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object p0

    return-object p0
.end method

.method public static toBigDecimal(Ljava/lang/Object;Ljava/math/BigDecimal;)Ljava/math/BigDecimal;
    .locals 1

    .line 428
    const-class v0, Ljava/math/BigDecimal;

    invoke-static {v0, p0, p1}, Lcn/hutool/core/convert/Convert;->convertQuietly(Ljava/lang/reflect/Type;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/math/BigDecimal;

    return-object p0
.end method

.method public static toBigInteger(Ljava/lang/Object;)Ljava/math/BigInteger;
    .locals 1

    const/4 v0, 0x0

    .line 415
    invoke-static {p0, v0}, Lcn/hutool/core/convert/Convert;->toBigInteger(Ljava/lang/Object;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    return-object p0
.end method

.method public static toBigInteger(Ljava/lang/Object;Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .locals 1

    .line 403
    const-class v0, Ljava/math/BigInteger;

    invoke-static {v0, p0, p1}, Lcn/hutool/core/convert/Convert;->convertQuietly(Ljava/lang/reflect/Type;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/math/BigInteger;

    return-object p0
.end method

.method public static toBool(Ljava/lang/Object;)Ljava/lang/Boolean;
    .locals 1

    const/4 v0, 0x0

    .line 380
    invoke-static {p0, v0}, Lcn/hutool/core/convert/Convert;->toBool(Ljava/lang/Object;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static toBool(Ljava/lang/Object;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 1

    .line 368
    const-class v0, Ljava/lang/Boolean;

    invoke-static {v0, p0, p1}, Lcn/hutool/core/convert/Convert;->convertQuietly(Ljava/lang/reflect/Type;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    return-object p0
.end method

.method public static toBooleanArray(Ljava/lang/Object;)[Ljava/lang/Boolean;
    .locals 1

    .line 390
    const-class v0, [Ljava/lang/Boolean;

    invoke-static {v0, p0}, Lcn/hutool/core/convert/Convert;->convert(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/Boolean;

    return-object p0
.end method

.method public static toByte(Ljava/lang/Object;)Ljava/lang/Byte;
    .locals 1

    const/4 v0, 0x0

    .line 121
    invoke-static {p0, v0}, Lcn/hutool/core/convert/Convert;->toByte(Ljava/lang/Object;Ljava/lang/Byte;)Ljava/lang/Byte;

    move-result-object p0

    return-object p0
.end method

.method public static toByte(Ljava/lang/Object;Ljava/lang/Byte;)Ljava/lang/Byte;
    .locals 1

    .line 109
    const-class v0, Ljava/lang/Byte;

    invoke-static {v0, p0, p1}, Lcn/hutool/core/convert/Convert;->convertQuietly(Ljava/lang/reflect/Type;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Byte;

    return-object p0
.end method

.method public static toByteArray(Ljava/lang/Object;)[Ljava/lang/Byte;
    .locals 1

    .line 132
    const-class v0, [Ljava/lang/Byte;

    invoke-static {v0, p0}, Lcn/hutool/core/convert/Convert;->convert(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/Byte;

    return-object p0
.end method

.method public static toChar(Ljava/lang/Object;)Ljava/lang/Character;
    .locals 1

    const/4 v0, 0x0

    .line 85
    invoke-static {p0, v0}, Lcn/hutool/core/convert/Convert;->toChar(Ljava/lang/Object;Ljava/lang/Character;)Ljava/lang/Character;

    move-result-object p0

    return-object p0
.end method

.method public static toChar(Ljava/lang/Object;Ljava/lang/Character;)Ljava/lang/Character;
    .locals 1

    .line 73
    const-class v0, Ljava/lang/Character;

    invoke-static {v0, p0, p1}, Lcn/hutool/core/convert/Convert;->convertQuietly(Ljava/lang/reflect/Type;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Character;

    return-object p0
.end method

.method public static toCharArray(Ljava/lang/Object;)[Ljava/lang/Character;
    .locals 1

    .line 96
    const-class v0, [Ljava/lang/Character;

    invoke-static {v0, p0}, Lcn/hutool/core/convert/Convert;->convert(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/Character;

    return-object p0
.end method

.method public static toCollection(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Collection<",
            "*>;"
        }
    .end annotation

    .line 548
    new-instance v0, Lcn/hutool/core/convert/impl/CollectionConverter;

    invoke-direct {v0, p0, p1}, Lcn/hutool/core/convert/impl/CollectionConverter;-><init>(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)V

    const/4 p0, 0x0

    invoke-virtual {v0, p2, p0}, Lcn/hutool/core/convert/impl/CollectionConverter;->convert(Ljava/lang/Object;Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method

.method public static toDBC(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 808
    invoke-static {p0, v0}, Lcn/hutool/core/convert/Convert;->toDBC(Ljava/lang/String;Ljava/util/Set;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static toDBC(Ljava/lang/String;Ljava/util/Set;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/Character;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 819
    invoke-static {p0}, Lcn/hutool/core/util/StrUtil;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 822
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    const/4 v0, 0x0

    .line 823
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_5

    if-eqz p1, :cond_1

    .line 824
    aget-char v1, p0, v0

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_2

    .line 829
    :cond_1
    aget-char v1, p0, v0

    const/16 v2, 0x3000

    if-eq v1, v2, :cond_3

    const/16 v2, 0xa0

    if-eq v1, v2, :cond_3

    const/16 v2, 0x2007

    if-eq v1, v2, :cond_3

    const/16 v2, 0x202f

    if-ne v1, v2, :cond_2

    goto :goto_1

    :cond_2
    const v2, 0xff00

    if-le v1, v2, :cond_4

    const v2, 0xff5f

    if-ge v1, v2, :cond_4

    const v2, 0xfee0

    sub-int/2addr v1, v2

    int-to-char v1, v1

    .line 833
    aput-char v1, p0, v0

    goto :goto_2

    :cond_3
    :goto_1
    const/16 v1, 0x20

    .line 831
    aput-char v1, p0, v0

    :cond_4
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 837
    :cond_5
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, p0}, Ljava/lang/String;-><init>([C)V

    return-object p1
.end method

.method public static toDate(Ljava/lang/Object;)Ljava/util/Date;
    .locals 1

    const/4 v0, 0x0

    .line 507
    invoke-static {p0, v0}, Lcn/hutool/core/convert/Convert;->toDate(Ljava/lang/Object;Ljava/util/Date;)Ljava/util/Date;

    move-result-object p0

    return-object p0
.end method

.method public static toDate(Ljava/lang/Object;Ljava/util/Date;)Ljava/util/Date;
    .locals 1

    .line 454
    const-class v0, Ljava/util/Date;

    invoke-static {v0, p0, p1}, Lcn/hutool/core/convert/Convert;->convertQuietly(Ljava/lang/reflect/Type;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Date;

    return-object p0
.end method

.method public static toDouble(Ljava/lang/Object;)Ljava/lang/Double;
    .locals 1

    const/4 v0, 0x0

    .line 310
    invoke-static {p0, v0}, Lcn/hutool/core/convert/Convert;->toDouble(Ljava/lang/Object;Ljava/lang/Double;)Ljava/lang/Double;

    move-result-object p0

    return-object p0
.end method

.method public static toDouble(Ljava/lang/Object;Ljava/lang/Double;)Ljava/lang/Double;
    .locals 1

    .line 298
    const-class v0, Ljava/lang/Double;

    invoke-static {v0, p0, p1}, Lcn/hutool/core/convert/Convert;->convertQuietly(Ljava/lang/reflect/Type;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Double;

    return-object p0
.end method

.method public static toDoubleArray(Ljava/lang/Object;)[Ljava/lang/Double;
    .locals 1

    .line 320
    const-class v0, [Ljava/lang/Double;

    invoke-static {v0, p0}, Lcn/hutool/core/convert/Convert;->convert(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/Double;

    return-object p0
.end method

.method public static toEnum(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Enum;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Enum<",
            "TE;>;>(",
            "Ljava/lang/Class<",
            "TE;>;",
            "Ljava/lang/Object;",
            ")TE;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 535
    invoke-static {p0, p1, v0}, Lcn/hutool/core/convert/Convert;->toEnum(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/Enum;)Ljava/lang/Enum;

    move-result-object p0

    return-object p0
.end method

.method public static toEnum(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/Enum;)Ljava/lang/Enum;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Enum<",
            "TE;>;>(",
            "Ljava/lang/Class<",
            "TE;>;",
            "Ljava/lang/Object;",
            "TE;)TE;"
        }
    .end annotation

    .line 522
    new-instance v0, Lcn/hutool/core/convert/impl/EnumConverter;

    invoke-direct {v0, p0}, Lcn/hutool/core/convert/impl/EnumConverter;-><init>(Ljava/lang/Class;)V

    invoke-virtual {v0, p1, p2}, Lcn/hutool/core/convert/impl/EnumConverter;->convertQuietly(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Enum;

    return-object p0
.end method

.method public static toFloat(Ljava/lang/Object;)Ljava/lang/Float;
    .locals 1

    const/4 v0, 0x0

    .line 345
    invoke-static {p0, v0}, Lcn/hutool/core/convert/Convert;->toFloat(Ljava/lang/Object;Ljava/lang/Float;)Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method

.method public static toFloat(Ljava/lang/Object;Ljava/lang/Float;)Ljava/lang/Float;
    .locals 1

    .line 333
    const-class v0, Ljava/lang/Float;

    invoke-static {v0, p0, p1}, Lcn/hutool/core/convert/Convert;->convertQuietly(Ljava/lang/reflect/Type;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    return-object p0
.end method

.method public static toFloatArray(Ljava/lang/Object;)[Ljava/lang/Float;
    .locals 1

    .line 355
    const-class v0, [Ljava/lang/Float;

    invoke-static {v0, p0}, Lcn/hutool/core/convert/Convert;->convert(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/Float;

    return-object p0
.end method

.method public static toHex(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/lang/String;
    .locals 0

    .line 851
    invoke-static {p0, p1}, Lcn/hutool/core/util/HexUtil;->encodeHexStr(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static toHex([B)Ljava/lang/String;
    .locals 0

    .line 862
    invoke-static {p0}, Lcn/hutool/core/util/HexUtil;->encodeHexStr([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static toInstant(Ljava/lang/Object;Ljava/util/Date;)Ljava/util/Date;
    .locals 1

    .line 494
    const-class v0, Ljava/time/Instant;

    invoke-static {v0, p0, p1}, Lcn/hutool/core/convert/Convert;->convertQuietly(Ljava/lang/reflect/Type;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Date;

    return-object p0
.end method

.method public static toInt(Ljava/lang/Object;)Ljava/lang/Integer;
    .locals 1

    const/4 v0, 0x0

    .line 240
    invoke-static {p0, v0}, Lcn/hutool/core/convert/Convert;->toInt(Ljava/lang/Object;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static toInt(Ljava/lang/Object;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 1

    .line 228
    const-class v0, Ljava/lang/Integer;

    invoke-static {v0, p0, p1}, Lcn/hutool/core/convert/Convert;->convertQuietly(Ljava/lang/reflect/Type;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    return-object p0
.end method

.method public static toIntArray(Ljava/lang/Object;)[Ljava/lang/Integer;
    .locals 1

    .line 250
    const-class v0, [Ljava/lang/Integer;

    invoke-static {v0, p0}, Lcn/hutool/core/convert/Convert;->convert(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/Integer;

    return-object p0
.end method

.method public static toList(Ljava/lang/Class;Ljava/lang/Object;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 573
    const-class v0, Ljava/util/ArrayList;

    invoke-static {v0, p0, p1}, Lcn/hutool/core/convert/Convert;->toCollection(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method public static toList(Ljava/lang/Object;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/List<",
            "*>;"
        }
    .end annotation

    .line 559
    const-class v0, Ljava/util/List;

    invoke-static {v0, p0}, Lcn/hutool/core/convert/Convert;->convert(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method public static toLocalDateTime(Ljava/lang/Object;)Ljava/time/LocalDateTime;
    .locals 1

    const/4 v0, 0x0

    .line 480
    invoke-static {p0, v0}, Lcn/hutool/core/convert/Convert;->toLocalDateTime(Ljava/lang/Object;Ljava/time/LocalDateTime;)Ljava/time/LocalDateTime;

    move-result-object p0

    return-object p0
.end method

.method public static toLocalDateTime(Ljava/lang/Object;Ljava/time/LocalDateTime;)Ljava/time/LocalDateTime;
    .locals 1

    .line 468
    const-class v0, Ljava/time/LocalDateTime;

    invoke-static {v0, p0, p1}, Lcn/hutool/core/convert/Convert;->convertQuietly(Ljava/lang/reflect/Type;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/time/LocalDateTime;

    return-object p0
.end method

.method public static toLong(Ljava/lang/Object;)Ljava/lang/Long;
    .locals 1

    const/4 v0, 0x0

    .line 275
    invoke-static {p0, v0}, Lcn/hutool/core/convert/Convert;->toLong(Ljava/lang/Object;Ljava/lang/Long;)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method public static toLong(Ljava/lang/Object;Ljava/lang/Long;)Ljava/lang/Long;
    .locals 1

    .line 263
    const-class v0, Ljava/lang/Long;

    invoke-static {v0, p0, p1}, Lcn/hutool/core/convert/Convert;->convertQuietly(Ljava/lang/reflect/Type;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    return-object p0
.end method

.method public static toLongArray(Ljava/lang/Object;)[Ljava/lang/Long;
    .locals 1

    .line 285
    const-class v0, [Ljava/lang/Long;

    invoke-static {v0, p0}, Lcn/hutool/core/convert/Convert;->convert(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/Long;

    return-object p0
.end method

.method public static toMap(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "+",
            "Ljava/util/Map;",
            ">;",
            "Ljava/lang/Class<",
            "TK;>;",
            "Ljava/lang/Class<",
            "TV;>;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Map<",
            "TK;TV;>;"
        }
    .end annotation

    .line 623
    new-instance v0, Lcn/hutool/core/convert/impl/MapConverter;

    invoke-direct {v0, p0, p1, p2}, Lcn/hutool/core/convert/impl/MapConverter;-><init>(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)V

    const/4 p0, 0x0

    invoke-virtual {v0, p3, p0}, Lcn/hutool/core/convert/impl/MapConverter;->convert(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    return-object p0
.end method

.method public static toMap(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TK;>;",
            "Ljava/lang/Class<",
            "TV;>;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Map<",
            "TK;TV;>;"
        }
    .end annotation

    .line 603
    instance-of v0, p2, Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 604
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0, p0, p1, p2}, Lcn/hutool/core/convert/Convert;->toMap(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p0

    return-object p0

    .line 606
    :cond_0
    const-class v0, Ljava/util/HashMap;

    invoke-static {v0, p0, p1, p2}, Lcn/hutool/core/convert/Convert;->toMap(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public static toNumber(Ljava/lang/Object;)Ljava/lang/Number;
    .locals 1

    const/4 v0, 0x0

    .line 204
    invoke-static {p0, v0}, Lcn/hutool/core/convert/Convert;->toNumber(Ljava/lang/Object;Ljava/lang/Number;)Ljava/lang/Number;

    move-result-object p0

    return-object p0
.end method

.method public static toNumber(Ljava/lang/Object;Ljava/lang/Number;)Ljava/lang/Number;
    .locals 1

    .line 192
    const-class v0, Ljava/lang/Number;

    invoke-static {v0, p0, p1}, Lcn/hutool/core/convert/Convert;->convertQuietly(Ljava/lang/reflect/Type;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    return-object p0
.end method

.method public static toNumberArray(Ljava/lang/Object;)[Ljava/lang/Number;
    .locals 1

    .line 215
    const-class v0, [Ljava/lang/Number;

    invoke-static {v0, p0}, Lcn/hutool/core/convert/Convert;->convert(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/Number;

    return-object p0
.end method

.method public static toPrimitiveByteArray(Ljava/lang/Object;)[B
    .locals 1

    .line 143
    const-class v0, [B

    invoke-static {v0, p0}, Lcn/hutool/core/convert/Convert;->convert(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B

    return-object p0
.end method

.method public static toSBC(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 771
    invoke-static {p0, v0}, Lcn/hutool/core/convert/Convert;->toSBC(Ljava/lang/String;Ljava/util/Set;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static toSBC(Ljava/lang/String;Ljava/util/Set;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/Character;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 782
    invoke-static {p0}, Lcn/hutool/core/util/StrUtil;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 785
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    const/4 v0, 0x0

    .line 786
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_4

    if-eqz p1, :cond_1

    .line 787
    aget-char v1, p0, v0

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    .line 792
    :cond_1
    aget-char v1, p0, v0

    const/16 v2, 0x20

    if-ne v1, v2, :cond_2

    const/16 v1, 0x3000

    .line 793
    aput-char v1, p0, v0

    goto :goto_1

    :cond_2
    const/16 v2, 0x7f

    if-ge v1, v2, :cond_3

    const v2, 0xfee0

    add-int/2addr v1, v2

    int-to-char v1, v1

    .line 795
    aput-char v1, p0, v0

    :cond_3
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 798
    :cond_4
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, p0}, Ljava/lang/String;-><init>([C)V

    return-object p1
.end method

.method public static toSet(Ljava/lang/Class;Ljava/lang/Object;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Set<",
            "TT;>;"
        }
    .end annotation

    .line 587
    const-class v0, Ljava/util/HashSet;

    invoke-static {v0, p0, p1}, Lcn/hutool/core/convert/Convert;->toCollection(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object p0

    check-cast p0, Ljava/util/Set;

    return-object p0
.end method

.method public static toShort(Ljava/lang/Object;)Ljava/lang/Short;
    .locals 1

    const/4 v0, 0x0

    .line 168
    invoke-static {p0, v0}, Lcn/hutool/core/convert/Convert;->toShort(Ljava/lang/Object;Ljava/lang/Short;)Ljava/lang/Short;

    move-result-object p0

    return-object p0
.end method

.method public static toShort(Ljava/lang/Object;Ljava/lang/Short;)Ljava/lang/Short;
    .locals 1

    .line 156
    const-class v0, Ljava/lang/Short;

    invoke-static {v0, p0, p1}, Lcn/hutool/core/convert/Convert;->convertQuietly(Ljava/lang/reflect/Type;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Short;

    return-object p0
.end method

.method public static toShortArray(Ljava/lang/Object;)[Ljava/lang/Short;
    .locals 1

    .line 179
    const-class v0, [Ljava/lang/Short;

    invoke-static {v0, p0}, Lcn/hutool/core/convert/Convert;->convert(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/Short;

    return-object p0
.end method

.method public static toStr(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 49
    invoke-static {p0, v0}, Lcn/hutool/core/convert/Convert;->toStr(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static toStr(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 37
    const-class v0, Ljava/lang/String;

    invoke-static {v0, p0, p1}, Lcn/hutool/core/convert/Convert;->convertQuietly(Ljava/lang/reflect/Type;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public static toStrArray(Ljava/lang/Object;)[Ljava/lang/String;
    .locals 1

    .line 60
    const-class v0, [Ljava/lang/String;

    invoke-static {v0, p0}, Lcn/hutool/core/convert/Convert;->convert(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method

.method public static unWrap(Ljava/lang/Class;)Ljava/lang/Class;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 966
    invoke-static {p0}, Lcn/hutool/core/convert/BasicType;->unWrap(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p0

    return-object p0
.end method

.method public static unicodeToStr(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 908
    invoke-static {p0}, Lcn/hutool/core/text/UnicodeUtil;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static wrap(Ljava/lang/Class;)Ljava/lang/Class;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 954
    invoke-static {p0}, Lcn/hutool/core/convert/BasicType;->wrap(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p0

    return-object p0
.end method
