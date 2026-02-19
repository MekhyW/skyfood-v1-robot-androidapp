.class public Lcn/hutool/json/serialize/JSONWriter;
.super Ljava/io/Writer;
.source "JSONWriter.java"


# instance fields
.field private arrayMode:Z

.field private final config:Lcn/hutool/json/JSONConfig;

.field private final indent:I

.field private final indentFactor:I

.field private needSeparator:Z

.field private final writer:Ljava/io/Writer;


# direct methods
.method public constructor <init>(Ljava/io/Writer;IILcn/hutool/json/JSONConfig;)V
    .locals 0

    .line 88
    invoke-direct {p0}, Ljava/io/Writer;-><init>()V

    .line 89
    iput-object p1, p0, Lcn/hutool/json/serialize/JSONWriter;->writer:Ljava/io/Writer;

    .line 90
    iput p2, p0, Lcn/hutool/json/serialize/JSONWriter;->indentFactor:I

    .line 91
    iput p3, p0, Lcn/hutool/json/serialize/JSONWriter;->indent:I

    .line 92
    iput-object p4, p0, Lcn/hutool/json/serialize/JSONWriter;->config:Lcn/hutool/json/JSONConfig;

    return-void
.end method

.method private static formatDate(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 407
    invoke-static {p1}, Lcn/hutool/core/util/StrUtil;->isNotBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 409
    instance-of v0, p0, Ljava/time/temporal/TemporalAccessor;

    if-eqz v0, :cond_0

    .line 410
    check-cast p0, Ljava/time/temporal/TemporalAccessor;

    invoke-static {p0, p1}, Lcn/hutool/core/date/TemporalAccessorUtil;->format(Ljava/time/temporal/TemporalAccessor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 412
    :cond_0
    invoke-static {p0}, Lcn/hutool/core/convert/Convert;->toDate(Ljava/lang/Object;)Ljava/util/Date;

    move-result-object p0

    invoke-static {p0, p1}, Lcn/hutool/core/date/DateUtil;->format(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    const-string v0, "#sss"

    .line 415
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "#SSS"

    .line 416
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_1

    .line 421
    :cond_1
    invoke-static {p0}, Lcn/hutool/json/JSONUtil;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :cond_2
    :goto_1
    return-object p0

    .line 426
    :cond_3
    instance-of p1, p0, Ljava/time/temporal/TemporalAccessor;

    if-eqz p1, :cond_4

    .line 427
    check-cast p0, Ljava/time/temporal/TemporalAccessor;

    invoke-static {p0}, Lcn/hutool/core/date/TemporalAccessorUtil;->toEpochMilli(Ljava/time/temporal/TemporalAccessor;)J

    move-result-wide p0

    goto :goto_2

    .line 428
    :cond_4
    instance-of p1, p0, Ljava/util/Date;

    if-eqz p1, :cond_5

    .line 429
    check-cast p0, Ljava/util/Date;

    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide p0

    goto :goto_2

    .line 430
    :cond_5
    instance-of p1, p0, Ljava/util/Calendar;

    if-eqz p1, :cond_6

    .line 431
    check-cast p0, Ljava/util/Calendar;

    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide p0

    .line 435
    :goto_2
    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 433
    :cond_6
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unsupported Date type: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static of(Ljava/io/Writer;IILcn/hutool/json/JSONConfig;)Lcn/hutool/json/serialize/JSONWriter;
    .locals 1

    .line 77
    new-instance v0, Lcn/hutool/json/serialize/JSONWriter;

    invoke-direct {v0, p0, p1, p2, p3}, Lcn/hutool/json/serialize/JSONWriter;-><init>(Ljava/io/Writer;IILcn/hutool/json/JSONConfig;)V

    return-object v0
.end method

.method private writeBooleanValue(Ljava/lang/Boolean;)V
    .locals 0

    .line 304
    invoke-virtual {p1}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcn/hutool/json/serialize/JSONWriter;->writeRaw(Ljava/lang/String;)Lcn/hutool/json/serialize/JSONWriter;

    return-void
.end method

.method private writeJSONStringValue(Lcn/hutool/json/JSONString;)V
    .locals 1

    .line 317
    :try_start_0
    invoke-interface {p1}, Lcn/hutool/json/JSONString;->toJSONString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_0

    .line 322
    invoke-direct {p0, v0}, Lcn/hutool/json/serialize/JSONWriter;->writeRaw(Ljava/lang/String;)Lcn/hutool/json/serialize/JSONWriter;

    goto :goto_0

    .line 324
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcn/hutool/json/serialize/JSONWriter;->writeStrValue(Ljava/lang/String;)V

    :goto_0
    return-void

    :catch_0
    move-exception p1

    .line 319
    new-instance v0, Lcn/hutool/json/JSONException;

    invoke-direct {v0, p1}, Lcn/hutool/json/JSONException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method private writeLF()Lcn/hutool/json/serialize/JSONWriter;
    .locals 1

    .line 363
    iget v0, p0, Lcn/hutool/json/serialize/JSONWriter;->indentFactor:I

    if-lez v0, :cond_0

    const/16 v0, 0xa

    .line 364
    invoke-direct {p0, v0}, Lcn/hutool/json/serialize/JSONWriter;->writeRaw(C)Lcn/hutool/json/serialize/JSONWriter;

    :cond_0
    return-object p0
.end method

.method private writeNumberValue(Ljava/lang/Number;)V
    .locals 1

    .line 294
    iget-object v0, p0, Lcn/hutool/json/serialize/JSONWriter;->config:Lcn/hutool/json/JSONConfig;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcn/hutool/json/JSONConfig;->isStripTrailingZeros()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 295
    :goto_1
    invoke-static {p1, v0}, Lcn/hutool/core/util/NumberUtil;->toStr(Ljava/lang/Number;Z)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcn/hutool/json/serialize/JSONWriter;->writeRaw(Ljava/lang/String;)Lcn/hutool/json/serialize/JSONWriter;

    return-void
.end method

.method private writeObjValue(Ljava/lang/Object;Lcn/hutool/core/lang/Filter;)Lcn/hutool/json/serialize/JSONWriter;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lcn/hutool/core/lang/Filter<",
            "Lcn/hutool/core/lang/mutable/MutablePair<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;>;)",
            "Lcn/hutool/json/serialize/JSONWriter;"
        }
    .end annotation

    .line 250
    iget v0, p0, Lcn/hutool/json/serialize/JSONWriter;->indentFactor:I

    iget v1, p0, Lcn/hutool/json/serialize/JSONWriter;->indent:I

    add-int/2addr v1, v0

    if-eqz p1, :cond_e

    .line 251
    instance-of v2, p1, Lcn/hutool/json/JSONNull;

    if-eqz v2, :cond_0

    goto/16 :goto_4

    .line 253
    :cond_0
    instance-of v2, p1, Lcn/hutool/json/JSON;

    if-eqz v2, :cond_2

    .line 254
    instance-of v2, p1, Lcn/hutool/json/JSONObject;

    if-eqz v2, :cond_1

    .line 255
    check-cast p1, Lcn/hutool/json/JSONObject;

    iget-object v2, p0, Lcn/hutool/json/serialize/JSONWriter;->writer:Ljava/io/Writer;

    invoke-virtual {p1, v2, v0, v1, p2}, Lcn/hutool/json/JSONObject;->write(Ljava/io/Writer;IILcn/hutool/core/lang/Filter;)Ljava/io/Writer;

    goto/16 :goto_5

    .line 256
    :cond_1
    instance-of v2, p1, Lcn/hutool/json/JSONArray;

    if-eqz v2, :cond_f

    .line 257
    check-cast p1, Lcn/hutool/json/JSONArray;

    iget-object v2, p0, Lcn/hutool/json/serialize/JSONWriter;->writer:Ljava/io/Writer;

    invoke-virtual {p1, v2, v0, v1, p2}, Lcn/hutool/json/JSONArray;->write(Ljava/io/Writer;IILcn/hutool/core/lang/Filter;)Ljava/io/Writer;

    goto/16 :goto_5

    .line 259
    :cond_2
    instance-of p2, p1, Ljava/util/Map;

    if-nez p2, :cond_d

    instance-of p2, p1, Ljava/util/Map$Entry;

    if-eqz p2, :cond_3

    goto/16 :goto_3

    .line 261
    :cond_3
    instance-of p2, p1, Ljava/lang/Iterable;

    if-nez p2, :cond_c

    instance-of p2, p1, Ljava/util/Iterator;

    if-nez p2, :cond_c

    invoke-static {p1}, Lcn/hutool/core/util/ArrayUtil;->isArray(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    goto :goto_2

    .line 263
    :cond_4
    instance-of p2, p1, Ljava/lang/Number;

    if-eqz p2, :cond_5

    .line 264
    check-cast p1, Ljava/lang/Number;

    invoke-direct {p0, p1}, Lcn/hutool/json/serialize/JSONWriter;->writeNumberValue(Ljava/lang/Number;)V

    goto/16 :goto_5

    .line 265
    :cond_5
    instance-of p2, p1, Ljava/util/Date;

    if-nez p2, :cond_9

    instance-of p2, p1, Ljava/util/Calendar;

    if-nez p2, :cond_9

    instance-of p2, p1, Ljava/time/temporal/TemporalAccessor;

    if-eqz p2, :cond_6

    goto :goto_0

    .line 274
    :cond_6
    instance-of p2, p1, Ljava/lang/Boolean;

    if-eqz p2, :cond_7

    .line 275
    check-cast p1, Ljava/lang/Boolean;

    invoke-direct {p0, p1}, Lcn/hutool/json/serialize/JSONWriter;->writeBooleanValue(Ljava/lang/Boolean;)V

    goto :goto_5

    .line 276
    :cond_7
    instance-of p2, p1, Lcn/hutool/json/JSONString;

    if-eqz p2, :cond_8

    .line 277
    check-cast p1, Lcn/hutool/json/JSONString;

    invoke-direct {p0, p1}, Lcn/hutool/json/serialize/JSONWriter;->writeJSONStringValue(Lcn/hutool/json/JSONString;)V

    goto :goto_5

    .line 279
    :cond_8
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcn/hutool/json/serialize/JSONWriter;->writeStrValue(Ljava/lang/String;)V

    goto :goto_5

    .line 267
    :cond_9
    :goto_0
    instance-of p2, p1, Ljava/time/MonthDay;

    if-eqz p2, :cond_a

    .line 268
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcn/hutool/json/serialize/JSONWriter;->writeStrValue(Ljava/lang/String;)V

    return-object p0

    .line 272
    :cond_a
    iget-object p2, p0, Lcn/hutool/json/serialize/JSONWriter;->config:Lcn/hutool/json/JSONConfig;

    if-nez p2, :cond_b

    const/4 p2, 0x0

    goto :goto_1

    :cond_b
    invoke-virtual {p2}, Lcn/hutool/json/JSONConfig;->getDateFormat()Ljava/lang/String;

    move-result-object p2

    .line 273
    :goto_1
    invoke-static {p1, p2}, Lcn/hutool/json/serialize/JSONWriter;->formatDate(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcn/hutool/json/serialize/JSONWriter;->writeRaw(Ljava/lang/String;)Lcn/hutool/json/serialize/JSONWriter;

    goto :goto_5

    .line 262
    :cond_c
    :goto_2
    new-instance p2, Lcn/hutool/json/JSONArray;

    invoke-direct {p2, p1}, Lcn/hutool/json/JSONArray;-><init>(Ljava/lang/Object;)V

    iget-object p1, p0, Lcn/hutool/json/serialize/JSONWriter;->writer:Ljava/io/Writer;

    iget v0, p0, Lcn/hutool/json/serialize/JSONWriter;->indentFactor:I

    invoke-virtual {p2, p1, v0, v1}, Lcn/hutool/json/JSONArray;->write(Ljava/io/Writer;II)Ljava/io/Writer;

    goto :goto_5

    .line 260
    :cond_d
    :goto_3
    new-instance p2, Lcn/hutool/json/JSONObject;

    invoke-direct {p2, p1}, Lcn/hutool/json/JSONObject;-><init>(Ljava/lang/Object;)V

    iget-object p1, p0, Lcn/hutool/json/serialize/JSONWriter;->writer:Ljava/io/Writer;

    iget v0, p0, Lcn/hutool/json/serialize/JSONWriter;->indentFactor:I

    invoke-virtual {p2, p1, v0, v1}, Lcn/hutool/json/JSONObject;->write(Ljava/io/Writer;II)Ljava/io/Writer;

    goto :goto_5

    .line 252
    :cond_e
    :goto_4
    sget-object p1, Lcn/hutool/json/JSONNull;->NULL:Lcn/hutool/json/JSONNull;

    invoke-virtual {p1}, Lcn/hutool/json/JSONNull;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcn/hutool/json/serialize/JSONWriter;->writeRaw(Ljava/lang/String;)Lcn/hutool/json/serialize/JSONWriter;

    :cond_f
    :goto_5
    return-object p0
.end method

.method private writeRaw(C)Lcn/hutool/json/serialize/JSONWriter;
    .locals 1

    .line 392
    :try_start_0
    iget-object v0, p0, Lcn/hutool/json/serialize/JSONWriter;->writer:Ljava/io/Writer;

    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p1

    .line 394
    new-instance v0, Lcn/hutool/core/io/IORuntimeException;

    invoke-direct {v0, p1}, Lcn/hutool/core/io/IORuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method private writeRaw(Ljava/lang/String;)Lcn/hutool/json/serialize/JSONWriter;
    .locals 1

    .line 377
    :try_start_0
    iget-object v0, p0, Lcn/hutool/json/serialize/JSONWriter;->writer:Ljava/io/Writer;

    invoke-virtual {v0, p1}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p1

    .line 379
    new-instance v0, Lcn/hutool/core/io/IORuntimeException;

    invoke-direct {v0, p1}, Lcn/hutool/core/io/IORuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method private writeSpace(I)V
    .locals 2

    .line 350
    iget v0, p0, Lcn/hutool/json/serialize/JSONWriter;->indentFactor:I

    if-lez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    const/16 v1, 0x20

    .line 352
    invoke-direct {p0, v1}, Lcn/hutool/json/serialize/JSONWriter;->writeRaw(C)Lcn/hutool/json/serialize/JSONWriter;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private writeStrValue(Ljava/lang/String;)V
    .locals 1

    .line 338
    :try_start_0
    iget-object v0, p0, Lcn/hutool/json/serialize/JSONWriter;->writer:Ljava/io/Writer;

    invoke-static {p1, v0}, Lcn/hutool/json/JSONUtil;->quote(Ljava/lang/String;Ljava/io/Writer;)Ljava/io/Writer;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 340
    new-instance v0, Lcn/hutool/core/io/IORuntimeException;

    invoke-direct {v0, p1}, Lcn/hutool/core/io/IORuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method private writeValueDirect(Ljava/lang/Object;Lcn/hutool/core/lang/Filter;)Lcn/hutool/json/serialize/JSONWriter;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lcn/hutool/core/lang/Filter<",
            "Lcn/hutool/core/lang/mutable/MutablePair<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;>;)",
            "Lcn/hutool/json/serialize/JSONWriter;"
        }
    .end annotation

    .line 229
    iget-boolean v0, p0, Lcn/hutool/json/serialize/JSONWriter;->arrayMode:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 230
    iget-boolean v0, p0, Lcn/hutool/json/serialize/JSONWriter;->needSeparator:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x2c

    .line 231
    invoke-direct {p0, v0}, Lcn/hutool/json/serialize/JSONWriter;->writeRaw(C)Lcn/hutool/json/serialize/JSONWriter;

    .line 234
    :cond_0
    invoke-direct {p0}, Lcn/hutool/json/serialize/JSONWriter;->writeLF()Lcn/hutool/json/serialize/JSONWriter;

    move-result-object v0

    iget v2, p0, Lcn/hutool/json/serialize/JSONWriter;->indentFactor:I

    iget v3, p0, Lcn/hutool/json/serialize/JSONWriter;->indent:I

    add-int/2addr v2, v3

    invoke-direct {v0, v2}, Lcn/hutool/json/serialize/JSONWriter;->writeSpace(I)V

    goto :goto_0

    :cond_1
    const/16 v0, 0x3a

    .line 236
    invoke-direct {p0, v0}, Lcn/hutool/json/serialize/JSONWriter;->writeRaw(C)Lcn/hutool/json/serialize/JSONWriter;

    move-result-object v0

    invoke-direct {v0, v1}, Lcn/hutool/json/serialize/JSONWriter;->writeSpace(I)V

    .line 238
    :goto_0
    iput-boolean v1, p0, Lcn/hutool/json/serialize/JSONWriter;->needSeparator:Z

    .line 239
    invoke-direct {p0, p1, p2}, Lcn/hutool/json/serialize/JSONWriter;->writeObjValue(Ljava/lang/Object;Lcn/hutool/core/lang/Filter;)Lcn/hutool/json/serialize/JSONWriter;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public beginArray()Lcn/hutool/json/serialize/JSONWriter;
    .locals 1

    const/16 v0, 0x5b

    .line 111
    invoke-direct {p0, v0}, Lcn/hutool/json/serialize/JSONWriter;->writeRaw(C)Lcn/hutool/json/serialize/JSONWriter;

    const/4 v0, 0x1

    .line 112
    iput-boolean v0, p0, Lcn/hutool/json/serialize/JSONWriter;->arrayMode:Z

    return-object p0
.end method

.method public beginObj()Lcn/hutool/json/serialize/JSONWriter;
    .locals 1

    const/16 v0, 0x7b

    .line 101
    invoke-direct {p0, v0}, Lcn/hutool/json/serialize/JSONWriter;->writeRaw(C)Lcn/hutool/json/serialize/JSONWriter;

    return-object p0
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 217
    iget-object v0, p0, Lcn/hutool/json/serialize/JSONWriter;->writer:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->close()V

    return-void
.end method

.method public end()Lcn/hutool/json/serialize/JSONWriter;
    .locals 2

    .line 123
    invoke-direct {p0}, Lcn/hutool/json/serialize/JSONWriter;->writeLF()Lcn/hutool/json/serialize/JSONWriter;

    move-result-object v0

    iget v1, p0, Lcn/hutool/json/serialize/JSONWriter;->indent:I

    invoke-direct {v0, v1}, Lcn/hutool/json/serialize/JSONWriter;->writeSpace(I)V

    .line 124
    iget-boolean v0, p0, Lcn/hutool/json/serialize/JSONWriter;->arrayMode:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x5d

    goto :goto_0

    :cond_0
    const/16 v0, 0x7d

    :goto_0
    invoke-direct {p0, v0}, Lcn/hutool/json/serialize/JSONWriter;->writeRaw(C)Lcn/hutool/json/serialize/JSONWriter;

    .line 125
    invoke-virtual {p0}, Lcn/hutool/json/serialize/JSONWriter;->flush()V

    const/4 v0, 0x0

    .line 126
    iput-boolean v0, p0, Lcn/hutool/json/serialize/JSONWriter;->arrayMode:Z

    const/4 v0, 0x1

    .line 128
    iput-boolean v0, p0, Lcn/hutool/json/serialize/JSONWriter;->needSeparator:Z

    return-object p0
.end method

.method public flush()V
    .locals 2

    .line 209
    :try_start_0
    iget-object v0, p0, Lcn/hutool/json/serialize/JSONWriter;->writer:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 211
    new-instance v1, Lcn/hutool/core/io/IORuntimeException;

    invoke-direct {v1, v0}, Lcn/hutool/core/io/IORuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public write([CII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 203
    iget-object v0, p0, Lcn/hutool/json/serialize/JSONWriter;->writer:Ljava/io/Writer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/Writer;->write([CII)V

    return-void
.end method

.method public writeField(Lcn/hutool/core/lang/mutable/MutablePair;Lcn/hutool/core/lang/Filter;)Lcn/hutool/json/serialize/JSONWriter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/hutool/core/lang/mutable/MutablePair<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;",
            "Lcn/hutool/core/lang/Filter<",
            "Lcn/hutool/core/lang/mutable/MutablePair<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;>;)",
            "Lcn/hutool/json/serialize/JSONWriter;"
        }
    .end annotation

    .line 187
    invoke-virtual {p1}, Lcn/hutool/core/lang/mutable/MutablePair;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcn/hutool/json/JSONUtil;->isNull(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/hutool/json/serialize/JSONWriter;->config:Lcn/hutool/json/JSONConfig;

    invoke-virtual {v0}, Lcn/hutool/json/JSONConfig;->isIgnoreNullValue()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    if-eqz p2, :cond_2

    .line 191
    invoke-interface {p2, p1}, Lcn/hutool/core/lang/Filter;->accept(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    return-object p0

    .line 192
    :cond_2
    :goto_0
    iget-boolean v0, p0, Lcn/hutool/json/serialize/JSONWriter;->arrayMode:Z

    if-nez v0, :cond_3

    .line 194
    invoke-virtual {p1}, Lcn/hutool/core/lang/mutable/MutablePair;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcn/hutool/core/util/StrUtil;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcn/hutool/json/serialize/JSONWriter;->writeKey(Ljava/lang/String;)Lcn/hutool/json/serialize/JSONWriter;

    .line 196
    :cond_3
    invoke-virtual {p1}, Lcn/hutool/core/lang/mutable/MutablePair;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcn/hutool/json/serialize/JSONWriter;->writeValueDirect(Ljava/lang/Object;Lcn/hutool/core/lang/Filter;)Lcn/hutool/json/serialize/JSONWriter;

    move-result-object p1

    return-object p1
.end method

.method public writeField(Ljava/lang/String;Ljava/lang/Object;)Lcn/hutool/json/serialize/JSONWriter;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 172
    invoke-static {p2}, Lcn/hutool/json/JSONUtil;->isNull(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/hutool/json/serialize/JSONWriter;->config:Lcn/hutool/json/JSONConfig;

    invoke-virtual {v0}, Lcn/hutool/json/JSONConfig;->isIgnoreNullValue()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 175
    :cond_0
    invoke-virtual {p0, p1}, Lcn/hutool/json/serialize/JSONWriter;->writeKey(Ljava/lang/String;)Lcn/hutool/json/serialize/JSONWriter;

    move-result-object p1

    const/4 v0, 0x0

    invoke-direct {p1, p2, v0}, Lcn/hutool/json/serialize/JSONWriter;->writeValueDirect(Ljava/lang/Object;Lcn/hutool/core/lang/Filter;)Lcn/hutool/json/serialize/JSONWriter;

    move-result-object p1

    return-object p1
.end method

.method public writeKey(Ljava/lang/String;)Lcn/hutool/json/serialize/JSONWriter;
    .locals 3

    .line 139
    iget-boolean v0, p0, Lcn/hutool/json/serialize/JSONWriter;->needSeparator:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x2c

    .line 140
    invoke-direct {p0, v0}, Lcn/hutool/json/serialize/JSONWriter;->writeRaw(C)Lcn/hutool/json/serialize/JSONWriter;

    .line 143
    :cond_0
    invoke-direct {p0}, Lcn/hutool/json/serialize/JSONWriter;->writeLF()Lcn/hutool/json/serialize/JSONWriter;

    move-result-object v0

    iget v1, p0, Lcn/hutool/json/serialize/JSONWriter;->indentFactor:I

    iget v2, p0, Lcn/hutool/json/serialize/JSONWriter;->indent:I

    add-int/2addr v1, v2

    invoke-direct {v0, v1}, Lcn/hutool/json/serialize/JSONWriter;->writeSpace(I)V

    .line 144
    invoke-static {p1}, Lcn/hutool/json/JSONUtil;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcn/hutool/json/serialize/JSONWriter;->writeRaw(Ljava/lang/String;)Lcn/hutool/json/serialize/JSONWriter;

    move-result-object p1

    return-object p1
.end method

.method public writeValue(Ljava/lang/Object;)Lcn/hutool/json/serialize/JSONWriter;
    .locals 1

    .line 155
    invoke-static {p1}, Lcn/hutool/json/JSONUtil;->isNull(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/hutool/json/serialize/JSONWriter;->config:Lcn/hutool/json/JSONConfig;

    invoke-virtual {v0}, Lcn/hutool/json/JSONConfig;->isIgnoreNullValue()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    const/4 v0, 0x0

    .line 158
    invoke-direct {p0, p1, v0}, Lcn/hutool/json/serialize/JSONWriter;->writeValueDirect(Ljava/lang/Object;Lcn/hutool/core/lang/Filter;)Lcn/hutool/json/serialize/JSONWriter;

    move-result-object p1

    return-object p1
.end method
