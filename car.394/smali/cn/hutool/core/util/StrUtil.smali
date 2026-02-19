.class public Lcn/hutool/core/util/StrUtil;
.super Lcn/hutool/core/text/CharSequenceUtil;
.source "StrUtil.java"

# interfaces
.implements Lcn/hutool/core/text/StrPool;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Lcn/hutool/core/text/CharSequenceUtil;-><init>()V

    return-void
.end method

.method public static builder()Ljava/lang/StringBuilder;
    .locals 1

    .line 292
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    return-object v0
.end method

.method public static builder(I)Ljava/lang/StringBuilder;
    .locals 1

    .line 312
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(I)V

    return-object v0
.end method

.method public static fill(Ljava/lang/String;CIZ)Ljava/lang/String;
    .locals 1

    .line 401
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, p2, :cond_0

    return-object p0

    :cond_0
    sub-int/2addr p2, v0

    .line 406
    invoke-static {p1, p2}, Lcn/hutool/core/util/StrUtil;->repeat(CI)Ljava/lang/String;

    move-result-object p1

    if-eqz p3, :cond_1

    .line 407
    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static fillAfter(Ljava/lang/String;CI)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 387
    invoke-static {p0, p1, p2, v0}, Lcn/hutool/core/util/StrUtil;->fill(Ljava/lang/String;CIZ)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static fillBefore(Ljava/lang/String;CI)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    .line 373
    invoke-static {p0, p1, p2, v0}, Lcn/hutool/core/util/StrUtil;->fill(Ljava/lang/String;CIZ)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static format(Ljava/lang/CharSequence;Ljava/util/Map;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Ljava/util/Map<",
            "**>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 455
    invoke-static {p0, p1, v0}, Lcn/hutool/core/util/StrUtil;->format(Ljava/lang/CharSequence;Ljava/util/Map;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static format(Ljava/lang/CharSequence;Ljava/util/Map;Z)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Ljava/util/Map<",
            "**>;Z)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 469
    invoke-static {p0, p1, p2}, Lcn/hutool/core/text/StrFormatter;->format(Ljava/lang/CharSequence;Ljava/util/Map;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getReader(Ljava/lang/CharSequence;)Ljava/io/StringReader;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 336
    :cond_0
    new-instance v0, Ljava/io/StringReader;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static getWriter()Ljava/io/StringWriter;
    .locals 1

    .line 345
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    return-object v0
.end method

.method public static isBlankIfStr(Ljava/lang/Object;)Z
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 51
    :cond_0
    instance-of v0, p0, Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    .line 52
    check-cast p0, Ljava/lang/CharSequence;

    invoke-static {p0}, Lcn/hutool/core/util/StrUtil;->isBlank(Ljava/lang/CharSequence;)Z

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static isEmptyIfStr(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-nez p0, :cond_0

    return v0

    .line 82
    :cond_0
    instance-of v1, p0, Ljava/lang/CharSequence;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 83
    check-cast p0, Ljava/lang/CharSequence;

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    return v0

    :cond_2
    return v2
.end method

.method public static reverse(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 357
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    invoke-static {p0}, Lcn/hutool/core/util/ArrayUtil;->reverse([C)[C

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([C)V

    return-object v0
.end method

.method public static similar(Ljava/lang/String;Ljava/lang/String;)D
    .locals 0

    .line 419
    invoke-static {p0, p1}, Lcn/hutool/core/text/TextSimilarity;->similar(Ljava/lang/String;Ljava/lang/String;)D

    move-result-wide p0

    return-wide p0
.end method

.method public static similar(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 0

    .line 432
    invoke-static {p0, p1, p2}, Lcn/hutool/core/text/TextSimilarity;->similar(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static str(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 138
    invoke-static {p1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object p1

    invoke-static {p0, p1}, Lcn/hutool/core/util/StrUtil;->str(Ljava/lang/Object;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static str(Ljava/lang/Object;Ljava/nio/charset/Charset;)Ljava/lang/String;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 157
    :cond_0
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 158
    check-cast p0, Ljava/lang/String;

    return-object p0

    .line 159
    :cond_1
    instance-of v0, p0, [B

    if-eqz v0, :cond_2

    .line 160
    check-cast p0, [B

    check-cast p0, [B

    invoke-static {p0, p1}, Lcn/hutool/core/util/StrUtil;->str([BLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 161
    :cond_2
    instance-of v0, p0, [Ljava/lang/Byte;

    if-eqz v0, :cond_3

    .line 162
    check-cast p0, [Ljava/lang/Byte;

    check-cast p0, [Ljava/lang/Byte;

    invoke-static {p0, p1}, Lcn/hutool/core/util/StrUtil;->str([Ljava/lang/Byte;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 163
    :cond_3
    instance-of v0, p0, Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_4

    .line 164
    check-cast p0, Ljava/nio/ByteBuffer;

    invoke-static {p0, p1}, Lcn/hutool/core/util/StrUtil;->str(Ljava/nio/ByteBuffer;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 165
    :cond_4
    invoke-static {p0}, Lcn/hutool/core/util/ArrayUtil;->isArray(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 166
    invoke-static {p0}, Lcn/hutool/core/util/ArrayUtil;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 169
    :cond_5
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static str(Ljava/nio/ByteBuffer;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 246
    :cond_0
    invoke-static {p1}, Lcn/hutool/core/util/CharsetUtil;->charset(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object p1

    invoke-static {p0, p1}, Lcn/hutool/core/util/StrUtil;->str(Ljava/nio/ByteBuffer;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static str(Ljava/nio/ByteBuffer;Ljava/nio/charset/Charset;)Ljava/lang/String;
    .locals 0

    if-nez p1, :cond_0

    .line 258
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object p1

    .line 260
    :cond_0
    invoke-virtual {p1, p0}, Ljava/nio/charset/Charset;->decode(Ljava/nio/ByteBuffer;)Ljava/nio/CharBuffer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/nio/CharBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static str([BLjava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 180
    invoke-static {p1}, Lcn/hutool/core/util/CharsetUtil;->charset(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object p1

    invoke-static {p0, p1}, Lcn/hutool/core/util/StrUtil;->str([BLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static str([BLjava/nio/charset/Charset;)Ljava/lang/String;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    if-nez p1, :cond_1

    .line 196
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, p0}, Ljava/lang/String;-><init>([B)V

    return-object p1

    .line 198
    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0, p1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v0
.end method

.method public static str([Ljava/lang/Byte;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 209
    invoke-static {p1}, Lcn/hutool/core/util/CharsetUtil;->charset(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object p1

    invoke-static {p0, p1}, Lcn/hutool/core/util/StrUtil;->str([Ljava/lang/Byte;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static str([Ljava/lang/Byte;Ljava/nio/charset/Charset;)Ljava/lang/String;
    .locals 3

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 224
    :cond_0
    array-length v0, p0

    new-array v0, v0, [B

    const/4 v1, 0x0

    .line 226
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_2

    .line 227
    aget-object v2, p0, v1

    if-nez v2, :cond_1

    const/4 v2, -0x1

    goto :goto_1

    .line 228
    :cond_1
    invoke-virtual {v2}, Ljava/lang/Byte;->byteValue()B

    move-result v2

    :goto_1
    aput-byte v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 231
    :cond_2
    invoke-static {v0, p1}, Lcn/hutool/core/util/StrUtil;->str([BLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static strBuilder()Lcn/hutool/core/text/StrBuilder;
    .locals 1

    .line 302
    invoke-static {}, Lcn/hutool/core/text/StrBuilder;->create()Lcn/hutool/core/text/StrBuilder;

    move-result-object v0

    return-object v0
.end method

.method public static strBuilder(I)Lcn/hutool/core/text/StrBuilder;
    .locals 0

    .line 323
    invoke-static {p0}, Lcn/hutool/core/text/StrBuilder;->create(I)Lcn/hutool/core/text/StrBuilder;

    move-result-object p0

    return-object p0
.end method

.method public static toString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    .line 272
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static toStringOrNull(Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 283
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static trim([Ljava/lang/String;)V
    .locals 2

    if-nez p0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 100
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_2

    .line 101
    aget-object v1, p0, v0

    if-eqz v1, :cond_1

    .line 103
    invoke-static {v1}, Lcn/hutool/core/util/StrUtil;->trim(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, p0, v0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static utf8Str(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    .line 120
    sget-object v0, Lcn/hutool/core/util/CharsetUtil;->CHARSET_UTF_8:Ljava/nio/charset/Charset;

    invoke-static {p0, v0}, Lcn/hutool/core/util/StrUtil;->str(Ljava/lang/Object;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static uuid()Ljava/lang/String;
    .locals 1

    .line 443
    invoke-static {}, Lcn/hutool/core/util/IdUtil;->randomUUID()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
