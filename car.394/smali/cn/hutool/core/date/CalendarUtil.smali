.class public Lcn/hutool/core/date/CalendarUtil;
.super Ljava/lang/Object;
.source "CalendarUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static age(JJ)I
    .locals 7

    cmp-long v0, p0, p2

    if-gtz v0, :cond_6

    .line 643
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 644
    invoke-virtual {v0, p2, p3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/4 p2, 0x1

    .line 646
    invoke-virtual {v0, p2}, Ljava/util/Calendar;->get(I)I

    move-result p3

    const/4 v1, 0x2

    .line 647
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/4 v3, 0x5

    .line 648
    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 649
    invoke-virtual {v0, v3}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v5

    const/4 v6, 0x0

    if-ne v4, v5, :cond_0

    move v5, p2

    goto :goto_0

    :cond_0
    move v5, v6

    .line 651
    :goto_0
    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 652
    invoke-virtual {v0, p2}, Ljava/util/Calendar;->get(I)I

    move-result p0

    sub-int/2addr p3, p0

    .line 654
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result p0

    if-nez p3, :cond_1

    return v6

    :cond_1
    if-ne v2, p0, :cond_4

    .line 661
    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result p0

    .line 662
    invoke-virtual {v0, v3}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result p1

    if-ne p0, p1, :cond_2

    goto :goto_1

    :cond_2
    move p2, v6

    :goto_1
    if-eqz v5, :cond_3

    if-nez p2, :cond_5

    :cond_3
    if-gt v4, p0, :cond_5

    goto :goto_2

    :cond_4
    if-ge v2, p0, :cond_5

    :goto_2
    add-int/lit8 p3, p3, -0x1

    :cond_5
    return p3

    .line 640
    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Birthday is after dateToCompare!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static age(Ljava/util/Calendar;Ljava/util/Calendar;)I
    .locals 2

    .line 570
    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide p0

    invoke-static {v0, v1, p0, p1}, Lcn/hutool/core/date/CalendarUtil;->age(JJ)I

    move-result p0

    return p0
.end method

.method public static beginOfDay(Ljava/util/Calendar;)Ljava/util/Calendar;
    .locals 1

    .line 215
    sget-object v0, Lcn/hutool/core/date/DateField;->DAY_OF_MONTH:Lcn/hutool/core/date/DateField;

    invoke-static {p0, v0}, Lcn/hutool/core/date/CalendarUtil;->truncate(Ljava/util/Calendar;Lcn/hutool/core/date/DateField;)Ljava/util/Calendar;

    move-result-object p0

    return-object p0
.end method

.method public static beginOfHour(Ljava/util/Calendar;)Ljava/util/Calendar;
    .locals 1

    .line 175
    sget-object v0, Lcn/hutool/core/date/DateField;->HOUR_OF_DAY:Lcn/hutool/core/date/DateField;

    invoke-static {p0, v0}, Lcn/hutool/core/date/CalendarUtil;->truncate(Ljava/util/Calendar;Lcn/hutool/core/date/DateField;)Ljava/util/Calendar;

    move-result-object p0

    return-object p0
.end method

.method public static beginOfMinute(Ljava/util/Calendar;)Ljava/util/Calendar;
    .locals 1

    .line 195
    sget-object v0, Lcn/hutool/core/date/DateField;->MINUTE:Lcn/hutool/core/date/DateField;

    invoke-static {p0, v0}, Lcn/hutool/core/date/CalendarUtil;->truncate(Ljava/util/Calendar;Lcn/hutool/core/date/DateField;)Ljava/util/Calendar;

    move-result-object p0

    return-object p0
.end method

.method public static beginOfMonth(Ljava/util/Calendar;)Ljava/util/Calendar;
    .locals 1

    .line 282
    sget-object v0, Lcn/hutool/core/date/DateField;->MONTH:Lcn/hutool/core/date/DateField;

    invoke-static {p0, v0}, Lcn/hutool/core/date/CalendarUtil;->truncate(Ljava/util/Calendar;Lcn/hutool/core/date/DateField;)Ljava/util/Calendar;

    move-result-object p0

    return-object p0
.end method

.method public static beginOfQuarter(Ljava/util/Calendar;)Ljava/util/Calendar;
    .locals 2

    .line 304
    sget-object v0, Lcn/hutool/core/date/DateField;->MONTH:Lcn/hutool/core/date/DateField;

    invoke-virtual {v0}, Lcn/hutool/core/date/DateField;->getValue()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    div-int/lit8 v0, v0, 0x3

    mul-int/lit8 v0, v0, 0x3

    const/4 v1, 0x2

    invoke-virtual {p0, v1, v0}, Ljava/util/Calendar;->set(II)V

    const/4 v0, 0x5

    const/4 v1, 0x1

    .line 305
    invoke-virtual {p0, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 306
    invoke-static {p0}, Lcn/hutool/core/date/CalendarUtil;->beginOfDay(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object p0

    return-object p0
.end method

.method public static beginOfSecond(Ljava/util/Calendar;)Ljava/util/Calendar;
    .locals 1

    .line 154
    sget-object v0, Lcn/hutool/core/date/DateField;->SECOND:Lcn/hutool/core/date/DateField;

    invoke-static {p0, v0}, Lcn/hutool/core/date/CalendarUtil;->truncate(Ljava/util/Calendar;Lcn/hutool/core/date/DateField;)Ljava/util/Calendar;

    move-result-object p0

    return-object p0
.end method

.method public static beginOfWeek(Ljava/util/Calendar;)Ljava/util/Calendar;
    .locals 1

    const/4 v0, 0x1

    .line 235
    invoke-static {p0, v0}, Lcn/hutool/core/date/CalendarUtil;->beginOfWeek(Ljava/util/Calendar;Z)Ljava/util/Calendar;

    move-result-object p0

    return-object p0
.end method

.method public static beginOfWeek(Ljava/util/Calendar;Z)Ljava/util/Calendar;
    .locals 0

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 247
    :goto_0
    invoke-virtual {p0, p1}, Ljava/util/Calendar;->setFirstDayOfWeek(I)V

    .line 249
    sget-object p1, Lcn/hutool/core/date/DateField;->WEEK_OF_MONTH:Lcn/hutool/core/date/DateField;

    invoke-static {p0, p1}, Lcn/hutool/core/date/CalendarUtil;->truncate(Ljava/util/Calendar;Lcn/hutool/core/date/DateField;)Ljava/util/Calendar;

    move-result-object p0

    return-object p0
.end method

.method public static beginOfYear(Ljava/util/Calendar;)Ljava/util/Calendar;
    .locals 1

    .line 334
    sget-object v0, Lcn/hutool/core/date/DateField;->YEAR:Lcn/hutool/core/date/DateField;

    invoke-static {p0, v0}, Lcn/hutool/core/date/CalendarUtil;->truncate(Ljava/util/Calendar;Lcn/hutool/core/date/DateField;)Ljava/util/Calendar;

    move-result-object p0

    return-object p0
.end method

.method public static calendar()Ljava/util/Calendar;
    .locals 1

    .line 35
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    return-object v0
.end method

.method public static calendar(J)Ljava/util/Calendar;
    .locals 1

    .line 59
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcn/hutool/core/date/CalendarUtil;->calendar(JLjava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object p0

    return-object p0
.end method

.method public static calendar(JLjava/util/TimeZone;)Ljava/util/Calendar;
    .locals 0

    .line 71
    invoke-static {p2}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object p2

    .line 72
    invoke-virtual {p2, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    return-object p2
.end method

.method public static calendar(Ljava/util/Date;)Ljava/util/Calendar;
    .locals 2

    .line 45
    instance-of v0, p0, Lcn/hutool/core/date/DateTime;

    if-eqz v0, :cond_0

    .line 46
    check-cast p0, Lcn/hutool/core/date/DateTime;

    invoke-virtual {p0}, Lcn/hutool/core/date/DateTime;->toCalendar()Ljava/util/Calendar;

    move-result-object p0

    return-object p0

    .line 48
    :cond_0
    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcn/hutool/core/date/CalendarUtil;->calendar(J)Ljava/util/Calendar;

    move-result-object p0

    return-object p0
.end method

.method public static ceiling(Ljava/util/Calendar;Lcn/hutool/core/date/DateField;)Ljava/util/Calendar;
    .locals 1

    .line 126
    invoke-virtual {p1}, Lcn/hutool/core/date/DateField;->getValue()I

    move-result p1

    sget-object v0, Lcn/hutool/core/date/DateModifier$ModifyType;->CEILING:Lcn/hutool/core/date/DateModifier$ModifyType;

    invoke-static {p0, p1, v0}, Lcn/hutool/core/date/DateModifier;->modify(Ljava/util/Calendar;ILcn/hutool/core/date/DateModifier$ModifyType;)Ljava/util/Calendar;

    move-result-object p0

    return-object p0
.end method

.method public static ceiling(Ljava/util/Calendar;Lcn/hutool/core/date/DateField;Z)Ljava/util/Calendar;
    .locals 1

    .line 143
    invoke-virtual {p1}, Lcn/hutool/core/date/DateField;->getValue()I

    move-result p1

    sget-object v0, Lcn/hutool/core/date/DateModifier$ModifyType;->CEILING:Lcn/hutool/core/date/DateModifier$ModifyType;

    invoke-static {p0, p1, v0, p2}, Lcn/hutool/core/date/DateModifier;->modify(Ljava/util/Calendar;ILcn/hutool/core/date/DateModifier$ModifyType;Z)Ljava/util/Calendar;

    move-result-object p0

    return-object p0
.end method

.method public static compare(Ljava/util/Calendar;Ljava/util/Calendar;)I
    .locals 0

    .line 559
    invoke-static {p0, p1}, Lcn/hutool/core/comparator/CompareUtil;->compare(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result p0

    return p0
.end method

.method public static endOfDay(Ljava/util/Calendar;)Ljava/util/Calendar;
    .locals 1

    .line 225
    sget-object v0, Lcn/hutool/core/date/DateField;->DAY_OF_MONTH:Lcn/hutool/core/date/DateField;

    invoke-static {p0, v0}, Lcn/hutool/core/date/CalendarUtil;->ceiling(Ljava/util/Calendar;Lcn/hutool/core/date/DateField;)Ljava/util/Calendar;

    move-result-object p0

    return-object p0
.end method

.method public static endOfHour(Ljava/util/Calendar;)Ljava/util/Calendar;
    .locals 1

    .line 185
    sget-object v0, Lcn/hutool/core/date/DateField;->HOUR_OF_DAY:Lcn/hutool/core/date/DateField;

    invoke-static {p0, v0}, Lcn/hutool/core/date/CalendarUtil;->ceiling(Ljava/util/Calendar;Lcn/hutool/core/date/DateField;)Ljava/util/Calendar;

    move-result-object p0

    return-object p0
.end method

.method public static endOfMinute(Ljava/util/Calendar;)Ljava/util/Calendar;
    .locals 1

    .line 205
    sget-object v0, Lcn/hutool/core/date/DateField;->MINUTE:Lcn/hutool/core/date/DateField;

    invoke-static {p0, v0}, Lcn/hutool/core/date/CalendarUtil;->ceiling(Ljava/util/Calendar;Lcn/hutool/core/date/DateField;)Ljava/util/Calendar;

    move-result-object p0

    return-object p0
.end method

.method public static endOfMonth(Ljava/util/Calendar;)Ljava/util/Calendar;
    .locals 1

    .line 292
    sget-object v0, Lcn/hutool/core/date/DateField;->MONTH:Lcn/hutool/core/date/DateField;

    invoke-static {p0, v0}, Lcn/hutool/core/date/CalendarUtil;->ceiling(Ljava/util/Calendar;Lcn/hutool/core/date/DateField;)Ljava/util/Calendar;

    move-result-object p0

    return-object p0
.end method

.method public static endOfQuarter(Ljava/util/Calendar;)Ljava/util/Calendar;
    .locals 4

    const/4 v0, 0x1

    .line 318
    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 319
    sget-object v1, Lcn/hutool/core/date/DateField;->MONTH:Lcn/hutool/core/date/DateField;

    invoke-virtual {v1}, Lcn/hutool/core/date/DateField;->getValue()I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    div-int/lit8 v1, v1, 0x3

    mul-int/lit8 v1, v1, 0x3

    add-int/lit8 v1, v1, 0x2

    .line 321
    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object p0

    .line 322
    invoke-static {v1}, Lcn/hutool/core/date/Month;->of(I)Lcn/hutool/core/date/Month;

    move-result-object v2

    invoke-static {v0}, Lcn/hutool/core/date/DateUtil;->isLeapYear(I)Z

    move-result v3

    invoke-virtual {v2, v3}, Lcn/hutool/core/date/Month;->getLastDay(Z)I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Ljava/util/Calendar;->set(III)V

    .line 324
    invoke-static {p0}, Lcn/hutool/core/date/CalendarUtil;->endOfDay(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object p0

    return-object p0
.end method

.method public static endOfSecond(Ljava/util/Calendar;)Ljava/util/Calendar;
    .locals 1

    .line 165
    sget-object v0, Lcn/hutool/core/date/DateField;->SECOND:Lcn/hutool/core/date/DateField;

    invoke-static {p0, v0}, Lcn/hutool/core/date/CalendarUtil;->ceiling(Ljava/util/Calendar;Lcn/hutool/core/date/DateField;)Ljava/util/Calendar;

    move-result-object p0

    return-object p0
.end method

.method public static endOfWeek(Ljava/util/Calendar;)Ljava/util/Calendar;
    .locals 1

    const/4 v0, 0x1

    .line 259
    invoke-static {p0, v0}, Lcn/hutool/core/date/CalendarUtil;->endOfWeek(Ljava/util/Calendar;Z)Ljava/util/Calendar;

    move-result-object p0

    return-object p0
.end method

.method public static endOfWeek(Ljava/util/Calendar;Z)Ljava/util/Calendar;
    .locals 0

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 270
    :goto_0
    invoke-virtual {p0, p1}, Ljava/util/Calendar;->setFirstDayOfWeek(I)V

    .line 272
    sget-object p1, Lcn/hutool/core/date/DateField;->WEEK_OF_MONTH:Lcn/hutool/core/date/DateField;

    invoke-static {p0, p1}, Lcn/hutool/core/date/CalendarUtil;->ceiling(Ljava/util/Calendar;Lcn/hutool/core/date/DateField;)Ljava/util/Calendar;

    move-result-object p0

    return-object p0
.end method

.method public static endOfYear(Ljava/util/Calendar;)Ljava/util/Calendar;
    .locals 1

    .line 344
    sget-object v0, Lcn/hutool/core/date/DateField;->YEAR:Lcn/hutool/core/date/DateField;

    invoke-static {p0, v0}, Lcn/hutool/core/date/CalendarUtil;->ceiling(Ljava/util/Calendar;Lcn/hutool/core/date/DateField;)Ljava/util/Calendar;

    move-result-object p0

    return-object p0
.end method

.method public static formatChineseDate(Ljava/util/Calendar;Z)Ljava/lang/String;
    .locals 7

    .line 587
    invoke-static {}, Lcn/hutool/core/util/StrUtil;->builder()Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x1

    .line 590
    invoke-virtual {p0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 591
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v3, :cond_0

    .line 593
    invoke-virtual {v2, v5}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6, v4}, Lcn/hutool/core/convert/NumberChineseFormatter;->numberCharToChinese(CZ)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    const/16 v2, 0x5e74

    .line 595
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v2, 0x2

    .line 598
    invoke-virtual {p0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    add-int/2addr v2, v1

    .line 599
    invoke-static {v2, v4}, Lcn/hutool/core/convert/NumberChineseFormatter;->formatThousand(IZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x6708

    .line 600
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v1, 0x5

    .line 603
    invoke-virtual {p0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 604
    invoke-static {v1, v4}, Lcn/hutool/core/convert/NumberChineseFormatter;->formatThousand(IZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x65e5

    .line 605
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 608
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const v2, 0x96f6

    const/16 v3, 0x3007

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    .line 609
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    invoke-virtual {v0, v4, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 610
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_1

    const/16 p1, 0xb

    .line 615
    invoke-virtual {p0, p1}, Ljava/util/Calendar;->get(I)I

    move-result p1

    .line 616
    invoke-static {p1, v4}, Lcn/hutool/core/convert/NumberChineseFormatter;->formatThousand(IZ)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x65f6

    .line 617
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 p1, 0xc

    .line 619
    invoke-virtual {p0, p1}, Ljava/util/Calendar;->get(I)I

    move-result p1

    .line 620
    invoke-static {p1, v4}, Lcn/hutool/core/convert/NumberChineseFormatter;->formatThousand(IZ)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x5206

    .line 621
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 p1, 0xd

    .line 623
    invoke-virtual {p0, p1}, Ljava/util/Calendar;->get(I)I

    move-result p0

    .line 624
    invoke-static {p0, v4}, Lcn/hutool/core/convert/NumberChineseFormatter;->formatThousand(IZ)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x79d2

    .line 625
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 628
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getBeginValue(Ljava/util/Calendar;I)I
    .locals 1

    const/4 v0, 0x7

    if-ne v0, p1, :cond_0

    .line 494
    invoke-virtual {p0}, Ljava/util/Calendar;->getFirstDayOfWeek()I

    move-result p0

    return p0

    .line 496
    :cond_0
    invoke-virtual {p0, p1}, Ljava/util/Calendar;->getActualMinimum(I)I

    move-result p0

    return p0
.end method

.method public static getBeginValue(Ljava/util/Calendar;Lcn/hutool/core/date/DateField;)I
    .locals 0

    .line 480
    invoke-virtual {p1}, Lcn/hutool/core/date/DateField;->getValue()I

    move-result p1

    invoke-static {p0, p1}, Lcn/hutool/core/date/CalendarUtil;->getBeginValue(Ljava/util/Calendar;I)I

    move-result p0

    return p0
.end method

.method public static getEndValue(Ljava/util/Calendar;I)I
    .locals 1

    const/4 v0, 0x7

    if-ne v0, p1, :cond_0

    .line 523
    invoke-virtual {p0}, Ljava/util/Calendar;->getFirstDayOfWeek()I

    move-result p0

    add-int/lit8 p0, p0, 0x6

    rem-int/2addr p0, v0

    return p0

    .line 525
    :cond_0
    invoke-virtual {p0, p1}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result p0

    return p0
.end method

.method public static getEndValue(Ljava/util/Calendar;Lcn/hutool/core/date/DateField;)I
    .locals 0

    .line 509
    invoke-virtual {p1}, Lcn/hutool/core/date/DateField;->getValue()I

    move-result p1

    invoke-static {p0, p1}, Lcn/hutool/core/date/CalendarUtil;->getEndValue(Ljava/util/Calendar;I)I

    move-result p0

    return p0
.end method

.method public static isAM(Ljava/util/Calendar;)Z
    .locals 1

    const/16 v0, 0x9

    .line 83
    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isPM(Ljava/util/Calendar;)Z
    .locals 1

    const/16 v0, 0x9

    .line 93
    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    move-result p0

    const/4 v0, 0x1

    if-ne v0, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isSameDay(Ljava/util/Calendar;Ljava/util/Calendar;)Z
    .locals 4

    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    const/4 v0, 0x6

    .line 358
    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    const/4 v2, 0x0

    if-ne v1, v0, :cond_0

    const/4 v0, 0x1

    .line 359
    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-ne v1, v3, :cond_0

    .line 360
    invoke-virtual {p0, v2}, Ljava/util/Calendar;->get(I)I

    move-result p0

    invoke-virtual {p1, v2}, Ljava/util/Calendar;->get(I)I

    move-result p1

    if-ne p0, p1, :cond_0

    move v2, v0

    :cond_0
    return v2

    .line 356
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "The date must not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static isSameInstant(Ljava/util/Calendar;Ljava/util/Calendar;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    return v0

    :cond_1
    if-nez p1, :cond_2

    return v1

    .line 434
    :cond_2
    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide p0

    cmp-long p0, v2, p0

    if-nez p0, :cond_3

    goto :goto_1

    :cond_3
    move v0, v1

    :goto_1
    return v0
.end method

.method public static isSameMonth(Ljava/util/Calendar;Ljava/util/Calendar;)Z
    .locals 4

    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    .line 410
    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/4 v3, 0x0

    if-ne v1, v2, :cond_0

    const/4 v1, 0x2

    .line 411
    invoke-virtual {p0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-ne v2, v1, :cond_0

    .line 413
    invoke-virtual {p0, v3}, Ljava/util/Calendar;->get(I)I

    move-result p0

    invoke-virtual {p1, v3}, Ljava/util/Calendar;->get(I)I

    move-result p1

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    return v0

    .line 408
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "The date must not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static isSameWeek(Ljava/util/Calendar;Ljava/util/Calendar;Z)Z
    .locals 1

    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    .line 378
    invoke-virtual {p0}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Calendar;

    .line 379
    invoke-virtual {p1}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Calendar;

    const/4 v0, 0x7

    if-eqz p2, :cond_0

    const/4 p2, 0x2

    .line 384
    invoke-virtual {p0, p2}, Ljava/util/Calendar;->setFirstDayOfWeek(I)V

    .line 385
    invoke-virtual {p0, v0, p2}, Ljava/util/Calendar;->set(II)V

    .line 386
    invoke-virtual {p1, p2}, Ljava/util/Calendar;->setFirstDayOfWeek(I)V

    .line 387
    invoke-virtual {p1, v0, p2}, Ljava/util/Calendar;->set(II)V

    goto :goto_0

    :cond_0
    const/4 p2, 0x1

    .line 389
    invoke-virtual {p0, p2}, Ljava/util/Calendar;->setFirstDayOfWeek(I)V

    .line 390
    invoke-virtual {p0, v0, p2}, Ljava/util/Calendar;->set(II)V

    .line 391
    invoke-virtual {p1, p2}, Ljava/util/Calendar;->setFirstDayOfWeek(I)V

    .line 392
    invoke-virtual {p1, v0, p2}, Ljava/util/Calendar;->set(II)V

    .line 394
    :goto_0
    invoke-static {p0, p1}, Lcn/hutool/core/date/CalendarUtil;->isSameDay(Ljava/util/Calendar;Ljava/util/Calendar;)Z

    move-result p0

    return p0

    .line 374
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "The date must not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static parse(Ljava/lang/CharSequence;ZLcn/hutool/core/date/format/DateParser;)Ljava/util/Calendar;
    .locals 2

    .line 769
    invoke-interface {p2}, Lcn/hutool/core/date/format/DateParser;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v0

    invoke-interface {p2}, Lcn/hutool/core/date/format/DateParser;->getLocale()Ljava/util/Locale;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    .line 770
    invoke-virtual {v0}, Ljava/util/Calendar;->clear()V

    .line 771
    invoke-virtual {v0, p1}, Ljava/util/Calendar;->setLenient(Z)V

    .line 773
    invoke-static {p0}, Lcn/hutool/core/util/StrUtil;->str(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/text/ParsePosition;

    const/4 v1, 0x0

    invoke-direct {p1, v1}, Ljava/text/ParsePosition;-><init>(I)V

    invoke-interface {p2, p0, p1, v0}, Lcn/hutool/core/date/format/DateParser;->parse(Ljava/lang/String;Ljava/text/ParsePosition;Ljava/util/Calendar;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public static varargs parseByPatterns(Ljava/lang/String;Ljava/util/Locale;Z[Ljava/lang/String;)Ljava/util/Calendar;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/hutool/core/date/DateException;
        }
    .end annotation

    if-eqz p0, :cond_4

    if-eqz p3, :cond_4

    .line 728
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    .line 729
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-static {p1, v1}, Lcn/hutool/core/util/ObjectUtil;->defaultIfNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Locale;

    .line 730
    new-instance v1, Ljava/text/ParsePosition;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/text/ParsePosition;-><init>(I)V

    .line 731
    invoke-static {v0, p1}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v3

    .line 732
    invoke-virtual {v3, p2}, Ljava/util/Calendar;->setLenient(Z)V

    .line 734
    array-length p2, p3

    move v4, v2

    :goto_0
    if-ge v4, p2, :cond_3

    aget-object v5, p3, v4

    .line 735
    invoke-static {v5}, Lcn/hutool/core/date/format/GlobalCustomFormat;->isCustomFormat(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 736
    invoke-static {p0, v5}, Lcn/hutool/core/date/format/GlobalCustomFormat;->parse(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v5

    if-nez v5, :cond_0

    goto :goto_1

    .line 740
    :cond_0
    invoke-virtual {v3, v5}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    return-object v3

    .line 744
    :cond_1
    new-instance v6, Lcn/hutool/core/date/format/FastDateParser;

    invoke-direct {v6, v5, v0, p1}, Lcn/hutool/core/date/format/FastDateParser;-><init>(Ljava/lang/String;Ljava/util/TimeZone;Ljava/util/Locale;)V

    .line 745
    invoke-virtual {v3}, Ljava/util/Calendar;->clear()V

    .line 747
    :try_start_0
    invoke-virtual {v6, p0, v1, v3}, Lcn/hutool/core/date/format/FastDateParser;->parse(Ljava/lang/String;Ljava/text/ParsePosition;Ljava/util/Calendar;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v1}, Ljava/text/ParsePosition;->getIndex()I

    move-result v5

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v5, v6, :cond_2

    return-object v3

    .line 753
    :catch_0
    :cond_2
    invoke-virtual {v1, v2}, Ljava/text/ParsePosition;->setIndex(I)V

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 756
    :cond_3
    new-instance p1, Lcn/hutool/core/date/DateException;

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Object;

    aput-object p0, p2, v2

    const-string p0, "Unable to parse the date: {}"

    invoke-direct {p1, p0, p2}, Lcn/hutool/core/date/DateException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p1

    .line 725
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Date and Patterns must not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static varargs parseByPatterns(Ljava/lang/String;Ljava/util/Locale;[Ljava/lang/String;)Ljava/util/Calendar;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/hutool/core/date/DateException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 705
    invoke-static {p0, p1, v0, p2}, Lcn/hutool/core/date/CalendarUtil;->parseByPatterns(Ljava/lang/String;Ljava/util/Locale;Z[Ljava/lang/String;)Ljava/util/Calendar;

    move-result-object p0

    return-object p0
.end method

.method public static varargs parseByPatterns(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Calendar;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/hutool/core/date/DateException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 688
    invoke-static {p0, v0, p1}, Lcn/hutool/core/date/CalendarUtil;->parseByPatterns(Ljava/lang/String;Ljava/util/Locale;[Ljava/lang/String;)Ljava/util/Calendar;

    move-result-object p0

    return-object p0
.end method

.method public static round(Ljava/util/Calendar;Lcn/hutool/core/date/DateField;)Ljava/util/Calendar;
    .locals 1

    .line 115
    invoke-virtual {p1}, Lcn/hutool/core/date/DateField;->getValue()I

    move-result p1

    sget-object v0, Lcn/hutool/core/date/DateModifier$ModifyType;->ROUND:Lcn/hutool/core/date/DateModifier$ModifyType;

    invoke-static {p0, p1, v0}, Lcn/hutool/core/date/DateModifier;->modify(Ljava/util/Calendar;ILcn/hutool/core/date/DateModifier$ModifyType;)Ljava/util/Calendar;

    move-result-object p0

    return-object p0
.end method

.method public static toInstant(Ljava/util/Calendar;)Ljava/time/Instant;
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 536
    :cond_0
    invoke-virtual {p0}, Ljava/util/Calendar;->toInstant()Ljava/time/Instant;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static toLocalDateTime(Ljava/util/Calendar;)Ljava/time/LocalDateTime;
    .locals 1

    .line 547
    invoke-virtual {p0}, Ljava/util/Calendar;->toInstant()Ljava/time/Instant;

    move-result-object v0

    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/TimeZone;->toZoneId()Ljava/time/ZoneId;

    move-result-object p0

    invoke-static {v0, p0}, Ljava/time/LocalDateTime;->ofInstant(Ljava/time/Instant;Ljava/time/ZoneId;)Ljava/time/LocalDateTime;

    move-result-object p0

    return-object p0
.end method

.method public static truncate(Ljava/util/Calendar;Lcn/hutool/core/date/DateField;)Ljava/util/Calendar;
    .locals 1

    .line 104
    invoke-virtual {p1}, Lcn/hutool/core/date/DateField;->getValue()I

    move-result p1

    sget-object v0, Lcn/hutool/core/date/DateModifier$ModifyType;->TRUNCATE:Lcn/hutool/core/date/DateModifier$ModifyType;

    invoke-static {p0, p1, v0}, Lcn/hutool/core/date/DateModifier;->modify(Ljava/util/Calendar;ILcn/hutool/core/date/DateModifier$ModifyType;)Ljava/util/Calendar;

    move-result-object p0

    return-object p0
.end method

.method public static yearAndQuarter(Ljava/util/Calendar;)Ljava/lang/String;
    .locals 3

    .line 467
    invoke-static {}, Lcn/hutool/core/util/StrUtil;->builder()Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Ljava/util/Calendar;->get(I)I

    move-result p0

    div-int/lit8 p0, p0, 0x3

    add-int/2addr p0, v1

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static yearAndQuarter(JJ)Ljava/util/LinkedHashSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ)",
            "Ljava/util/LinkedHashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 446
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 447
    invoke-static {p0, p1}, Lcn/hutool/core/date/CalendarUtil;->calendar(J)Ljava/util/Calendar;

    move-result-object v1

    :goto_0
    cmp-long p0, p0, p2

    if-gtz p0, :cond_0

    .line 450
    invoke-static {v1}, Lcn/hutool/core/date/CalendarUtil;->yearAndQuarter(Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    const/4 p0, 0x2

    const/4 p1, 0x3

    .line 452
    invoke-virtual {v1, p0, p1}, Ljava/util/Calendar;->add(II)V

    .line 453
    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide p0

    goto :goto_0

    :cond_0
    return-object v0
.end method
