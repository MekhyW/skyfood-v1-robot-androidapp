.class public Lcn/hutool/core/date/ChineseDate;
.super Ljava/lang/Object;
.source "ChineseDate.java"


# instance fields
.field private final day:I

.field private final gday:I

.field private final gmonthBase1:I

.field private final gyear:I

.field private final isLeapMonth:Z

.field private final month:I

.field private final year:I


# direct methods
.method public constructor <init>(III)V
    .locals 1

    .line 125
    invoke-static {p1}, Lcn/hutool/core/date/chinese/LunarInfo;->leapMonth(I)I

    move-result v0

    if-ne p2, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, p1, p2, p3, v0}, Lcn/hutool/core/date/ChineseDate;-><init>(IIIZ)V

    return-void
.end method

.method public constructor <init>(IIIZ)V
    .locals 1

    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 139
    invoke-static {p1}, Lcn/hutool/core/date/chinese/LunarInfo;->leapMonth(I)I

    move-result v0

    if-eq p2, v0, :cond_0

    const/4 p4, 0x0

    .line 144
    :cond_0
    iput p3, p0, Lcn/hutool/core/date/ChineseDate;->day:I

    .line 146
    iput-boolean p4, p0, Lcn/hutool/core/date/ChineseDate;->isLeapMonth:Z

    if-eqz p4, :cond_1

    add-int/lit8 v0, p2, 0x1

    goto :goto_0

    :cond_1
    move v0, p2

    .line 148
    :goto_0
    iput v0, p0, Lcn/hutool/core/date/ChineseDate;->month:I

    .line 149
    iput p1, p0, Lcn/hutool/core/date/ChineseDate;->year:I

    .line 151
    invoke-direct {p0, p1, p2, p3, p4}, Lcn/hutool/core/date/ChineseDate;->lunar2solar(IIIZ)Lcn/hutool/core/date/DateTime;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 154
    invoke-virtual {p1}, Lcn/hutool/core/date/DateTime;->dayOfMonth()I

    move-result p2

    iput p2, p0, Lcn/hutool/core/date/ChineseDate;->gday:I

    .line 156
    invoke-virtual {p1}, Lcn/hutool/core/date/DateTime;->month()I

    move-result p2

    add-int/lit8 p2, p2, 0x1

    iput p2, p0, Lcn/hutool/core/date/ChineseDate;->gmonthBase1:I

    .line 158
    invoke-virtual {p1}, Lcn/hutool/core/date/DateTime;->year()I

    move-result p1

    iput p1, p0, Lcn/hutool/core/date/ChineseDate;->gyear:I

    goto :goto_1

    :cond_2
    const/4 p1, -0x1

    .line 161
    iput p1, p0, Lcn/hutool/core/date/ChineseDate;->gday:I

    .line 163
    iput p1, p0, Lcn/hutool/core/date/ChineseDate;->gmonthBase1:I

    .line 165
    iput p1, p0, Lcn/hutool/core/date/ChineseDate;->gyear:I

    :goto_1
    return-void
.end method

.method public constructor <init>(Ljava/time/LocalDate;)V
    .locals 8

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    invoke-virtual {p1}, Ljava/time/LocalDate;->getYear()I

    move-result v0

    iput v0, p0, Lcn/hutool/core/date/ChineseDate;->gyear:I

    .line 63
    invoke-virtual {p1}, Ljava/time/LocalDate;->getMonthValue()I

    move-result v0

    iput v0, p0, Lcn/hutool/core/date/ChineseDate;->gmonthBase1:I

    .line 64
    invoke-virtual {p1}, Ljava/time/LocalDate;->getDayOfMonth()I

    move-result v0

    iput v0, p0, Lcn/hutool/core/date/ChineseDate;->gday:I

    .line 67
    invoke-virtual {p1}, Ljava/time/LocalDate;->toEpochDay()J

    move-result-wide v0

    sget-wide v2, Lcn/hutool/core/date/chinese/LunarInfo;->BASE_DAY:J

    sub-long/2addr v0, v2

    long-to-int p1, v0

    const/16 v0, 0x76c

    .line 73
    :goto_0
    sget v1, Lcn/hutool/core/date/chinese/LunarInfo;->MAX_YEAR:I

    if-gt v0, v1, :cond_1

    .line 74
    invoke-static {v0}, Lcn/hutool/core/date/chinese/LunarInfo;->yearDays(I)I

    move-result v1

    if-ge p1, v1, :cond_0

    goto :goto_1

    :cond_0
    sub-int/2addr p1, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 81
    :cond_1
    :goto_1
    iput v0, p0, Lcn/hutool/core/date/ChineseDate;->year:I

    .line 83
    invoke-static {v0}, Lcn/hutool/core/date/chinese/LunarInfo;->leapMonth(I)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    move v4, v1

    move v3, v2

    :goto_2
    const/16 v5, 0xd

    if-ge v3, v5, :cond_5

    if-lez v0, :cond_2

    add-int/lit8 v5, v0, 0x1

    if-ne v3, v5, :cond_2

    .line 91
    iget v4, p0, Lcn/hutool/core/date/ChineseDate;->year:I

    invoke-static {v4}, Lcn/hutool/core/date/chinese/LunarInfo;->leapDays(I)I

    move-result v4

    move v5, v2

    goto :goto_4

    .line 96
    :cond_2
    iget v5, p0, Lcn/hutool/core/date/ChineseDate;->year:I

    if-eqz v4, :cond_3

    add-int/lit8 v6, v3, -0x1

    goto :goto_3

    :cond_3
    move v6, v3

    :goto_3
    invoke-static {v5, v6}, Lcn/hutool/core/date/chinese/LunarInfo;->monthDays(II)I

    move-result v5

    move v7, v5

    move v5, v4

    move v4, v7

    :goto_4
    if-ge p1, v4, :cond_4

    move v4, v5

    goto :goto_5

    :cond_4
    sub-int/2addr p1, v4

    add-int/lit8 v3, v3, 0x1

    move v4, v5

    goto :goto_2

    :cond_5
    :goto_5
    if-lez v0, :cond_6

    add-int/2addr v0, v2

    if-ne v3, v0, :cond_6

    move v1, v2

    .line 106
    :cond_6
    iput-boolean v1, p0, Lcn/hutool/core/date/ChineseDate;->isLeapMonth:Z

    if-eqz v4, :cond_7

    if-nez v1, :cond_7

    add-int/lit8 v3, v3, -0x1

    .line 111
    :cond_7
    iput v3, p0, Lcn/hutool/core/date/ChineseDate;->month:I

    add-int/2addr p1, v2

    .line 112
    iput p1, p0, Lcn/hutool/core/date/ChineseDate;->day:I

    return-void
.end method

.method public constructor <init>(Ljava/util/Date;)V
    .locals 0

    .line 51
    invoke-virtual {p1}, Ljava/util/Date;->toInstant()Ljava/time/Instant;

    move-result-object p1

    invoke-static {p1}, Lcn/hutool/core/date/LocalDateTimeUtil;->ofDate(Ljava/time/temporal/TemporalAccessor;)Ljava/time/LocalDate;

    move-result-object p1

    invoke-direct {p0, p1}, Lcn/hutool/core/date/ChineseDate;-><init>(Ljava/time/LocalDate;)V

    return-void
.end method

.method private cyclicalm(III)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    .line 405
    iget v1, p0, Lcn/hutool/core/date/ChineseDate;->year:I

    .line 406
    invoke-static {v1}, Lcn/hutool/core/date/chinese/GanZhi;->getGanzhiOfYear(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    .line 407
    invoke-static {p1, p2, p3}, Lcn/hutool/core/date/chinese/GanZhi;->getGanzhiOfMonth(III)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    .line 408
    invoke-static {p1, p2, p3}, Lcn/hutool/core/date/chinese/GanZhi;->getGanzhiOfDay(III)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v1

    const-string p1, "{}\u5e74{}\u6708{}\u65e5"

    .line 405
    invoke-static {p1, v0}, Lcn/hutool/core/util/StrUtil;->format(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private lunar2solar(IIIZ)Lcn/hutool/core/date/DateTime;
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/16 v2, 0x834

    if-ne p1, v2, :cond_0

    const/16 v3, 0xc

    if-ne p2, v3, :cond_0

    if-gt p3, v1, :cond_1

    :cond_0
    const/16 v3, 0x1f

    const/16 v4, 0x76c

    if-ne p1, v4, :cond_2

    if-ne p2, v1, :cond_2

    if-ge p3, v3, :cond_2

    :cond_1
    return-object v0

    .line 426
    :cond_2
    invoke-static {p1, p2}, Lcn/hutool/core/date/chinese/LunarInfo;->monthDays(II)I

    move-result v5

    if-eqz p4, :cond_3

    .line 429
    invoke-static {p1}, Lcn/hutool/core/date/chinese/LunarInfo;->leapDays(I)I

    move-result v6

    goto :goto_0

    :cond_3
    move v6, v5

    :goto_0
    if-lt p1, v4, :cond_9

    if-gt p1, v2, :cond_9

    if-le p3, v6, :cond_4

    goto :goto_3

    :cond_4
    const/4 v0, 0x0

    move v2, v0

    :goto_1
    if-ge v4, p1, :cond_5

    .line 438
    invoke-static {v4}, Lcn/hutool/core/date/chinese/LunarInfo;->yearDays(I)I

    move-result v6

    add-int/2addr v2, v6

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_5
    move v4, v1

    :goto_2
    if-ge v4, p2, :cond_7

    .line 443
    invoke-static {p1}, Lcn/hutool/core/date/chinese/LunarInfo;->leapMonth(I)I

    move-result v6

    if-nez v0, :cond_6

    if-gt v6, v4, :cond_6

    if-lez v6, :cond_6

    .line 446
    invoke-static {p1}, Lcn/hutool/core/date/chinese/LunarInfo;->leapDays(I)I

    move-result v0

    add-int/2addr v2, v0

    move v0, v1

    .line 450
    :cond_6
    invoke-static {p1, v4}, Lcn/hutool/core/date/chinese/LunarInfo;->monthDays(II)I

    move-result v6

    add-int/2addr v2, v6

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_7
    if-eqz p4, :cond_8

    add-int/2addr v2, v5

    :cond_8
    add-int/2addr v2, p3

    sub-int/2addr v2, v3

    int-to-long p1, v2

    const-wide/32 p3, 0x5265c00

    mul-long/2addr p1, p3

    const-wide p3, 0x2011d009400L

    sub-long/2addr p1, p3

    .line 457
    invoke-static {p1, p2}, Lcn/hutool/core/date/DateUtil;->date(J)Lcn/hutool/core/date/DateTime;

    move-result-object p1

    return-object p1

    :cond_9
    :goto_3
    return-object v0
.end method


# virtual methods
.method public getChineseDay()Ljava/lang/String;
    .locals 6

    const-string v0, "\u5eff"

    const-string v1, "\u5345"

    const-string v2, "\u521d"

    const-string v3, "\u5341"

    .line 286
    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    .line 287
    iget v1, p0, Lcn/hutool/core/date/ChineseDate;->day:I

    rem-int/lit8 v2, v1, 0xa

    if-nez v2, :cond_0

    const/16 v2, 0x9

    goto :goto_0

    :cond_0
    rem-int/lit8 v2, v1, 0xa

    add-int/lit8 v2, v2, -0x1

    :goto_0
    const/16 v3, 0x1e

    if-le v1, v3, :cond_1

    const-string v0, ""

    return-object v0

    :cond_1
    const/16 v4, 0xa

    if-eq v1, v4, :cond_4

    const/16 v5, 0x14

    if-eq v1, v5, :cond_3

    if-eq v1, v3, :cond_2

    .line 299
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lcn/hutool/core/date/ChineseDate;->day:I

    div-int/2addr v3, v4

    aget-object v0, v0, v3

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    add-int/lit8 v2, v2, 0x1

    int-to-long v1, v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcn/hutool/core/convert/NumberChineseFormatter;->format(JZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    const-string v0, "\u4e09\u5341"

    return-object v0

    :cond_3
    const-string v0, "\u4e8c\u5341"

    return-object v0

    :cond_4
    const-string v0, "\u521d\u5341"

    return-object v0
.end method

.method public getChineseMonth()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 236
    invoke-virtual {p0, v0}, Lcn/hutool/core/date/ChineseDate;->getChineseMonth(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getChineseMonth(Z)Ljava/lang/String;
    .locals 2

    .line 256
    invoke-virtual {p0}, Lcn/hutool/core/date/ChineseDate;->isLeapMonth()Z

    move-result v0

    .line 257
    invoke-virtual {p0}, Lcn/hutool/core/date/ChineseDate;->isLeapMonth()Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcn/hutool/core/date/ChineseDate;->month:I

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_0
    iget v1, p0, Lcn/hutool/core/date/ChineseDate;->month:I

    .line 256
    :goto_0
    invoke-static {v0, v1, p1}, Lcn/hutool/core/date/chinese/ChineseMonth;->getChineseMonthName(ZIZ)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getChineseMonthName()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    .line 245
    invoke-virtual {p0, v0}, Lcn/hutool/core/date/ChineseDate;->getChineseMonth(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getChineseYear()I
    .locals 1

    .line 175
    iget v0, p0, Lcn/hutool/core/date/ChineseDate;->year:I

    return v0
.end method

.method public getChineseZodiac()Ljava/lang/String;
    .locals 1

    .line 341
    iget v0, p0, Lcn/hutool/core/date/ChineseDate;->year:I

    invoke-static {v0}, Lcn/hutool/core/date/Zodiac;->getChineseZodiac(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCyclical()Ljava/lang/String;
    .locals 1

    .line 351
    iget v0, p0, Lcn/hutool/core/date/ChineseDate;->year:I

    invoke-static {v0}, Lcn/hutool/core/date/chinese/GanZhi;->getGanzhiOfYear(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCyclicalYMD()Ljava/lang/String;
    .locals 3

    .line 360
    iget v0, p0, Lcn/hutool/core/date/ChineseDate;->gyear:I

    const/16 v1, 0x76c

    if-lt v0, v1, :cond_0

    iget v1, p0, Lcn/hutool/core/date/ChineseDate;->gmonthBase1:I

    if-lez v1, :cond_0

    iget v2, p0, Lcn/hutool/core/date/ChineseDate;->gday:I

    if-lez v2, :cond_0

    .line 361
    invoke-direct {p0, v0, v1, v2}, Lcn/hutool/core/date/ChineseDate;->cyclicalm(III)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDay()I
    .locals 1

    .line 267
    iget v0, p0, Lcn/hutool/core/date/ChineseDate;->day:I

    return v0
.end method

.method public getFestivals()Ljava/lang/String;
    .locals 3

    .line 332
    iget v0, p0, Lcn/hutool/core/date/ChineseDate;->year:I

    iget v1, p0, Lcn/hutool/core/date/ChineseDate;->month:I

    iget v2, p0, Lcn/hutool/core/date/ChineseDate;->day:I

    invoke-static {v0, v1, v2}, Lcn/hutool/core/date/chinese/LunarFestival;->getFestivals(III)Ljava/util/List;

    move-result-object v0

    const-string v1, ","

    invoke-static {v1, v0}, Lcn/hutool/core/util/StrUtil;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getGregorianCalendar()Ljava/util/Calendar;
    .locals 8

    .line 320
    invoke-static {}, Lcn/hutool/core/date/CalendarUtil;->calendar()Ljava/util/Calendar;

    move-result-object v7

    .line 322
    iget v1, p0, Lcn/hutool/core/date/ChineseDate;->gyear:I

    invoke-virtual {p0}, Lcn/hutool/core/date/ChineseDate;->getGregorianMonth()I

    move-result v2

    iget v3, p0, Lcn/hutool/core/date/ChineseDate;->gday:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, v7

    invoke-virtual/range {v0 .. v6}, Ljava/util/Calendar;->set(IIIIII)V

    return-object v7
.end method

.method public getGregorianDate()Ljava/util/Date;
    .locals 1

    .line 310
    invoke-virtual {p0}, Lcn/hutool/core/date/ChineseDate;->getGregorianCalendar()Ljava/util/Calendar;

    move-result-object v0

    invoke-static {v0}, Lcn/hutool/core/date/DateUtil;->date(Ljava/util/Calendar;)Lcn/hutool/core/date/DateTime;

    move-result-object v0

    return-object v0
.end method

.method public getGregorianDay()I
    .locals 1

    .line 277
    iget v0, p0, Lcn/hutool/core/date/ChineseDate;->gday:I

    return v0
.end method

.method public getGregorianMonth()I
    .locals 1

    .line 216
    iget v0, p0, Lcn/hutool/core/date/ChineseDate;->gmonthBase1:I

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public getGregorianMonthBase1()I
    .locals 1

    .line 206
    iget v0, p0, Lcn/hutool/core/date/ChineseDate;->gmonthBase1:I

    return v0
.end method

.method public getGregorianYear()I
    .locals 1

    .line 185
    iget v0, p0, Lcn/hutool/core/date/ChineseDate;->gyear:I

    return v0
.end method

.method public getMonth()I
    .locals 1

    .line 196
    iget v0, p0, Lcn/hutool/core/date/ChineseDate;->month:I

    return v0
.end method

.method public getTerm()Ljava/lang/String;
    .locals 3

    .line 374
    iget v0, p0, Lcn/hutool/core/date/ChineseDate;->gyear:I

    iget v1, p0, Lcn/hutool/core/date/ChineseDate;->gmonthBase1:I

    iget v2, p0, Lcn/hutool/core/date/ChineseDate;->gday:I

    invoke-static {v0, v1, v2}, Lcn/hutool/core/date/chinese/SolarTerms;->getTerm(III)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isLeapMonth()Z
    .locals 1

    .line 226
    iget-boolean v0, p0, Lcn/hutool/core/date/ChineseDate;->isLeapMonth:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 391
    invoke-virtual {p0}, Lcn/hutool/core/date/ChineseDate;->getCyclical()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcn/hutool/core/date/ChineseDate;->getChineseZodiac()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    invoke-virtual {p0}, Lcn/hutool/core/date/ChineseDate;->getChineseMonthName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    invoke-virtual {p0}, Lcn/hutool/core/date/ChineseDate;->getChineseDay()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "%s%s\u5e74 %s%s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringNormal()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    .line 385
    iget v1, p0, Lcn/hutool/core/date/ChineseDate;->year:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 386
    invoke-virtual {p0}, Lcn/hutool/core/date/ChineseDate;->isLeapMonth()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    iget v1, p0, Lcn/hutool/core/date/ChineseDate;->month:I

    sub-int/2addr v1, v2

    goto :goto_0

    :cond_0
    iget v1, p0, Lcn/hutool/core/date/ChineseDate;->month:I

    :goto_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    iget v1, p0, Lcn/hutool/core/date/ChineseDate;->day:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string v1, "%04d-%02d-%02d"

    .line 385
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
