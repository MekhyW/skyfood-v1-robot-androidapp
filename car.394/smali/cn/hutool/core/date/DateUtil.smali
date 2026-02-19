.class public Lcn/hutool/core/date/DateUtil;
.super Lcn/hutool/core/date/CalendarUtil;
.source "DateUtil.java"


# static fields
.field private static final wtb:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 30

    const-string v0, "sun"

    const-string v1, "mon"

    const-string v2, "tue"

    const-string v3, "wed"

    const-string v4, "thu"

    const-string v5, "fri"

    const-string v6, "sat"

    const-string v7, "jan"

    const-string v8, "feb"

    const-string v9, "mar"

    const-string v10, "apr"

    const-string v11, "may"

    const-string v12, "jun"

    const-string v13, "jul"

    const-string v14, "aug"

    const-string v15, "sep"

    const-string v16, "oct"

    const-string v17, "nov"

    const-string v18, "dec"

    const-string v19, "gmt"

    const-string v20, "ut"

    const-string v21, "utc"

    const-string v22, "est"

    const-string v23, "edt"

    const-string v24, "cst"

    const-string v25, "cdt"

    const-string v26, "mst"

    const-string v27, "mdt"

    const-string v28, "pst"

    const-string v29, "pdt"

    .line 42
    filled-new-array/range {v0 .. v29}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/hutool/core/date/DateUtil;->wtb:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Lcn/hutool/core/date/CalendarUtil;-><init>()V

    return-void
.end method

.method public static age(Ljava/util/Date;Ljava/util/Date;)I
    .locals 2

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Birthday can not be null !"

    .line 1805
    invoke-static {p0, v1, v0}, Lcn/hutool/core/lang/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    if-nez p1, :cond_0

    .line 1807
    invoke-static {}, Lcn/hutool/core/date/DateUtil;->date()Lcn/hutool/core/date/DateTime;

    move-result-object p1

    .line 1809
    :cond_0
    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide p0

    invoke-static {v0, v1, p0, p1}, Lcn/hutool/core/date/DateUtil;->age(JJ)I

    move-result p0

    return p0
.end method

.method public static ageOfNow(Ljava/lang/String;)I
    .locals 0

    .line 1774
    invoke-static {p0}, Lcn/hutool/core/date/DateUtil;->parse(Ljava/lang/CharSequence;)Lcn/hutool/core/date/DateTime;

    move-result-object p0

    invoke-static {p0}, Lcn/hutool/core/date/DateUtil;->ageOfNow(Ljava/util/Date;)I

    move-result p0

    return p0
.end method

.method public static ageOfNow(Ljava/util/Date;)I
    .locals 1

    .line 1784
    invoke-static {}, Lcn/hutool/core/date/DateUtil;->date()Lcn/hutool/core/date/DateTime;

    move-result-object v0

    invoke-static {p0, v0}, Lcn/hutool/core/date/DateUtil;->age(Ljava/util/Date;Ljava/util/Date;)I

    move-result p0

    return p0
.end method

.method public static beginOfDay(Ljava/util/Date;)Lcn/hutool/core/date/DateTime;
    .locals 1

    .line 1156
    new-instance v0, Lcn/hutool/core/date/DateTime;

    invoke-static {p0}, Lcn/hutool/core/date/DateUtil;->calendar(Ljava/util/Date;)Ljava/util/Calendar;

    move-result-object p0

    invoke-static {p0}, Lcn/hutool/core/date/DateUtil;->beginOfDay(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object p0

    invoke-direct {v0, p0}, Lcn/hutool/core/date/DateTime;-><init>(Ljava/util/Calendar;)V

    return-object v0
.end method

.method public static beginOfHour(Ljava/util/Date;)Lcn/hutool/core/date/DateTime;
    .locals 1

    .line 1116
    new-instance v0, Lcn/hutool/core/date/DateTime;

    invoke-static {p0}, Lcn/hutool/core/date/DateUtil;->calendar(Ljava/util/Date;)Ljava/util/Calendar;

    move-result-object p0

    invoke-static {p0}, Lcn/hutool/core/date/DateUtil;->beginOfHour(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object p0

    invoke-direct {v0, p0}, Lcn/hutool/core/date/DateTime;-><init>(Ljava/util/Calendar;)V

    return-object v0
.end method

.method public static beginOfMinute(Ljava/util/Date;)Lcn/hutool/core/date/DateTime;
    .locals 1

    .line 1136
    new-instance v0, Lcn/hutool/core/date/DateTime;

    invoke-static {p0}, Lcn/hutool/core/date/DateUtil;->calendar(Ljava/util/Date;)Ljava/util/Calendar;

    move-result-object p0

    invoke-static {p0}, Lcn/hutool/core/date/DateUtil;->beginOfMinute(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object p0

    invoke-direct {v0, p0}, Lcn/hutool/core/date/DateTime;-><init>(Ljava/util/Calendar;)V

    return-object v0
.end method

.method public static beginOfMonth(Ljava/util/Date;)Lcn/hutool/core/date/DateTime;
    .locals 1

    .line 1220
    new-instance v0, Lcn/hutool/core/date/DateTime;

    invoke-static {p0}, Lcn/hutool/core/date/DateUtil;->calendar(Ljava/util/Date;)Ljava/util/Calendar;

    move-result-object p0

    invoke-static {p0}, Lcn/hutool/core/date/DateUtil;->beginOfMonth(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object p0

    invoke-direct {v0, p0}, Lcn/hutool/core/date/DateTime;-><init>(Ljava/util/Calendar;)V

    return-object v0
.end method

.method public static beginOfQuarter(Ljava/util/Date;)Lcn/hutool/core/date/DateTime;
    .locals 1

    .line 1240
    new-instance v0, Lcn/hutool/core/date/DateTime;

    invoke-static {p0}, Lcn/hutool/core/date/DateUtil;->calendar(Ljava/util/Date;)Ljava/util/Calendar;

    move-result-object p0

    invoke-static {p0}, Lcn/hutool/core/date/DateUtil;->beginOfQuarter(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object p0

    invoke-direct {v0, p0}, Lcn/hutool/core/date/DateTime;-><init>(Ljava/util/Calendar;)V

    return-object v0
.end method

.method public static beginOfSecond(Ljava/util/Date;)Lcn/hutool/core/date/DateTime;
    .locals 1

    .line 1095
    new-instance v0, Lcn/hutool/core/date/DateTime;

    invoke-static {p0}, Lcn/hutool/core/date/DateUtil;->calendar(Ljava/util/Date;)Ljava/util/Calendar;

    move-result-object p0

    invoke-static {p0}, Lcn/hutool/core/date/DateUtil;->beginOfSecond(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object p0

    invoke-direct {v0, p0}, Lcn/hutool/core/date/DateTime;-><init>(Ljava/util/Calendar;)V

    return-object v0
.end method

.method public static beginOfWeek(Ljava/util/Date;)Lcn/hutool/core/date/DateTime;
    .locals 1

    .line 1176
    new-instance v0, Lcn/hutool/core/date/DateTime;

    invoke-static {p0}, Lcn/hutool/core/date/DateUtil;->calendar(Ljava/util/Date;)Ljava/util/Calendar;

    move-result-object p0

    invoke-static {p0}, Lcn/hutool/core/date/DateUtil;->beginOfWeek(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object p0

    invoke-direct {v0, p0}, Lcn/hutool/core/date/DateTime;-><init>(Ljava/util/Calendar;)V

    return-object v0
.end method

.method public static beginOfWeek(Ljava/util/Date;Z)Lcn/hutool/core/date/DateTime;
    .locals 1

    .line 1188
    new-instance v0, Lcn/hutool/core/date/DateTime;

    invoke-static {p0}, Lcn/hutool/core/date/DateUtil;->calendar(Ljava/util/Date;)Ljava/util/Calendar;

    move-result-object p0

    invoke-static {p0, p1}, Lcn/hutool/core/date/DateUtil;->beginOfWeek(Ljava/util/Calendar;Z)Ljava/util/Calendar;

    move-result-object p0

    invoke-direct {v0, p0}, Lcn/hutool/core/date/DateTime;-><init>(Ljava/util/Calendar;)V

    return-object v0
.end method

.method public static beginOfYear(Ljava/util/Date;)Lcn/hutool/core/date/DateTime;
    .locals 1

    .line 1260
    new-instance v0, Lcn/hutool/core/date/DateTime;

    invoke-static {p0}, Lcn/hutool/core/date/DateUtil;->calendar(Ljava/util/Date;)Ljava/util/Calendar;

    move-result-object p0

    invoke-static {p0}, Lcn/hutool/core/date/DateUtil;->beginOfYear(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object p0

    invoke-direct {v0, p0}, Lcn/hutool/core/date/DateTime;-><init>(Ljava/util/Calendar;)V

    return-object v0
.end method

.method public static between(Ljava/util/Date;Ljava/util/Date;Lcn/hutool/core/date/DateUnit;)J
    .locals 1

    const/4 v0, 0x1

    .line 1431
    invoke-static {p0, p1, p2, v0}, Lcn/hutool/core/date/DateUtil;->between(Ljava/util/Date;Ljava/util/Date;Lcn/hutool/core/date/DateUnit;Z)J

    move-result-wide p0

    return-wide p0
.end method

.method public static between(Ljava/util/Date;Ljava/util/Date;Lcn/hutool/core/date/DateUnit;Z)J
    .locals 1

    .line 1445
    new-instance v0, Lcn/hutool/core/date/DateBetween;

    invoke-direct {v0, p0, p1, p3}, Lcn/hutool/core/date/DateBetween;-><init>(Ljava/util/Date;Ljava/util/Date;Z)V

    invoke-virtual {v0, p2}, Lcn/hutool/core/date/DateBetween;->between(Lcn/hutool/core/date/DateUnit;)J

    move-result-wide p0

    return-wide p0
.end method

.method public static betweenDay(Ljava/util/Date;Ljava/util/Date;Z)J
    .locals 0

    if-eqz p2, :cond_0

    .line 1478
    invoke-static {p0}, Lcn/hutool/core/date/DateUtil;->beginOfDay(Ljava/util/Date;)Lcn/hutool/core/date/DateTime;

    move-result-object p0

    .line 1479
    invoke-static {p1}, Lcn/hutool/core/date/DateUtil;->beginOfDay(Ljava/util/Date;)Lcn/hutool/core/date/DateTime;

    move-result-object p1

    .line 1481
    :cond_0
    sget-object p2, Lcn/hutool/core/date/DateUnit;->DAY:Lcn/hutool/core/date/DateUnit;

    invoke-static {p0, p1, p2}, Lcn/hutool/core/date/DateUtil;->between(Ljava/util/Date;Ljava/util/Date;Lcn/hutool/core/date/DateUnit;)J

    move-result-wide p0

    return-wide p0
.end method

.method public static betweenMonth(Ljava/util/Date;Ljava/util/Date;Z)J
    .locals 1

    .line 1511
    new-instance v0, Lcn/hutool/core/date/DateBetween;

    invoke-direct {v0, p0, p1}, Lcn/hutool/core/date/DateBetween;-><init>(Ljava/util/Date;Ljava/util/Date;)V

    invoke-virtual {v0, p2}, Lcn/hutool/core/date/DateBetween;->betweenMonth(Z)J

    move-result-wide p0

    return-wide p0
.end method

.method public static betweenMs(Ljava/util/Date;Ljava/util/Date;)J
    .locals 1

    .line 1457
    new-instance v0, Lcn/hutool/core/date/DateBetween;

    invoke-direct {v0, p0, p1}, Lcn/hutool/core/date/DateBetween;-><init>(Ljava/util/Date;Ljava/util/Date;)V

    sget-object p0, Lcn/hutool/core/date/DateUnit;->MS:Lcn/hutool/core/date/DateUnit;

    invoke-virtual {v0, p0}, Lcn/hutool/core/date/DateBetween;->between(Lcn/hutool/core/date/DateUnit;)J

    move-result-wide p0

    return-wide p0
.end method

.method public static betweenWeek(Ljava/util/Date;Ljava/util/Date;Z)J
    .locals 0

    if-eqz p2, :cond_0

    .line 1494
    invoke-static {p0}, Lcn/hutool/core/date/DateUtil;->beginOfDay(Ljava/util/Date;)Lcn/hutool/core/date/DateTime;

    move-result-object p0

    .line 1495
    invoke-static {p1}, Lcn/hutool/core/date/DateUtil;->beginOfDay(Ljava/util/Date;)Lcn/hutool/core/date/DateTime;

    move-result-object p1

    .line 1497
    :cond_0
    sget-object p2, Lcn/hutool/core/date/DateUnit;->WEEK:Lcn/hutool/core/date/DateUnit;

    invoke-static {p0, p1, p2}, Lcn/hutool/core/date/DateUtil;->between(Ljava/util/Date;Ljava/util/Date;Lcn/hutool/core/date/DateUnit;)J

    move-result-wide p0

    return-wide p0
.end method

.method public static betweenYear(Ljava/util/Date;Ljava/util/Date;Z)J
    .locals 1

    .line 1525
    new-instance v0, Lcn/hutool/core/date/DateBetween;

    invoke-direct {v0, p0, p1}, Lcn/hutool/core/date/DateBetween;-><init>(Ljava/util/Date;Ljava/util/Date;)V

    invoke-virtual {v0, p2}, Lcn/hutool/core/date/DateBetween;->betweenYear(Z)J

    move-result-wide p0

    return-wide p0
.end method

.method public static ceiling(Ljava/util/Date;Lcn/hutool/core/date/DateField;)Lcn/hutool/core/date/DateTime;
    .locals 1

    .line 1066
    new-instance v0, Lcn/hutool/core/date/DateTime;

    invoke-static {p0}, Lcn/hutool/core/date/DateUtil;->calendar(Ljava/util/Date;)Ljava/util/Calendar;

    move-result-object p0

    invoke-static {p0, p1}, Lcn/hutool/core/date/DateUtil;->ceiling(Ljava/util/Calendar;Lcn/hutool/core/date/DateField;)Ljava/util/Calendar;

    move-result-object p0

    invoke-direct {v0, p0}, Lcn/hutool/core/date/DateTime;-><init>(Ljava/util/Calendar;)V

    return-object v0
.end method

.method public static ceiling(Ljava/util/Date;Lcn/hutool/core/date/DateField;Z)Lcn/hutool/core/date/DateTime;
    .locals 1

    .line 1084
    new-instance v0, Lcn/hutool/core/date/DateTime;

    invoke-static {p0}, Lcn/hutool/core/date/DateUtil;->calendar(Ljava/util/Date;)Ljava/util/Calendar;

    move-result-object p0

    invoke-static {p0, p1, p2}, Lcn/hutool/core/date/DateUtil;->ceiling(Ljava/util/Calendar;Lcn/hutool/core/date/DateField;Z)Ljava/util/Calendar;

    move-result-object p0

    invoke-direct {v0, p0}, Lcn/hutool/core/date/DateTime;-><init>(Ljava/util/Calendar;)V

    return-object v0
.end method

.method public static compare(Ljava/util/Date;Ljava/util/Date;)I
    .locals 0

    .line 2045
    invoke-static {p0, p1}, Lcn/hutool/core/comparator/CompareUtil;->compare(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result p0

    return p0
.end method

.method public static compare(Ljava/util/Date;Ljava/util/Date;Ljava/lang/String;)I
    .locals 0

    if-eqz p2, :cond_1

    if-eqz p0, :cond_0

    .line 2061
    invoke-static {p0, p2}, Lcn/hutool/core/date/DateUtil;->format(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p2}, Lcn/hutool/core/date/DateUtil;->parse(Ljava/lang/CharSequence;Ljava/lang/String;)Lcn/hutool/core/date/DateTime;

    move-result-object p0

    :cond_0
    if-eqz p1, :cond_1

    .line 2064
    invoke-static {p1, p2}, Lcn/hutool/core/date/DateUtil;->format(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p2}, Lcn/hutool/core/date/DateUtil;->parse(Ljava/lang/CharSequence;Ljava/lang/String;)Lcn/hutool/core/date/DateTime;

    move-result-object p1

    .line 2067
    :cond_1
    invoke-static {p0, p1}, Lcn/hutool/core/comparator/CompareUtil;->compare(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result p0

    return p0
.end method

.method public static convertTimeZone(Ljava/util/Date;Ljava/time/ZoneId;)Lcn/hutool/core/date/DateTime;
    .locals 1

    .line 2147
    new-instance v0, Lcn/hutool/core/date/DateTime;

    invoke-static {p1}, Lcn/hutool/core/date/ZoneUtil;->toTimeZone(Ljava/time/ZoneId;)Ljava/util/TimeZone;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lcn/hutool/core/date/DateTime;-><init>(Ljava/util/Date;Ljava/util/TimeZone;)V

    return-object v0
.end method

.method public static convertTimeZone(Ljava/util/Date;Ljava/util/TimeZone;)Lcn/hutool/core/date/DateTime;
    .locals 1

    .line 2159
    new-instance v0, Lcn/hutool/core/date/DateTime;

    invoke-direct {v0, p0, p1}, Lcn/hutool/core/date/DateTime;-><init>(Ljava/util/Date;Ljava/util/TimeZone;)V

    return-object v0
.end method

.method public static createStopWatch()Lcn/hutool/core/date/StopWatch;
    .locals 1

    .line 1733
    new-instance v0, Lcn/hutool/core/date/StopWatch;

    invoke-direct {v0}, Lcn/hutool/core/date/StopWatch;-><init>()V

    return-object v0
.end method

.method public static createStopWatch(Ljava/lang/String;)Lcn/hutool/core/date/StopWatch;
    .locals 1

    .line 1764
    new-instance v0, Lcn/hutool/core/date/StopWatch;

    invoke-direct {v0, p0}, Lcn/hutool/core/date/StopWatch;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static current()J
    .locals 2

    .line 145
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public static currentSeconds()J
    .locals 4

    .line 155
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public static date()Lcn/hutool/core/date/DateTime;
    .locals 1

    .line 54
    new-instance v0, Lcn/hutool/core/date/DateTime;

    invoke-direct {v0}, Lcn/hutool/core/date/DateTime;-><init>()V

    return-object v0
.end method

.method public static date(J)Lcn/hutool/core/date/DateTime;
    .locals 1

    .line 107
    new-instance v0, Lcn/hutool/core/date/DateTime;

    invoke-direct {v0, p0, p1}, Lcn/hutool/core/date/DateTime;-><init>(J)V

    return-object v0
.end method

.method public static date(Ljava/time/temporal/TemporalAccessor;)Lcn/hutool/core/date/DateTime;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 136
    :cond_0
    new-instance v0, Lcn/hutool/core/date/DateTime;

    invoke-direct {v0, p0}, Lcn/hutool/core/date/DateTime;-><init>(Ljava/time/temporal/TemporalAccessor;)V

    return-object v0
.end method

.method public static date(Ljava/util/Calendar;)Lcn/hutool/core/date/DateTime;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 121
    :cond_0
    new-instance v0, Lcn/hutool/core/date/DateTime;

    invoke-direct {v0, p0}, Lcn/hutool/core/date/DateTime;-><init>(Ljava/util/Calendar;)V

    return-object v0
.end method

.method public static date(Ljava/util/Date;)Lcn/hutool/core/date/DateTime;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 79
    :cond_0
    instance-of v0, p0, Lcn/hutool/core/date/DateTime;

    if-eqz v0, :cond_1

    .line 80
    check-cast p0, Lcn/hutool/core/date/DateTime;

    return-object p0

    .line 82
    :cond_1
    invoke-static {p0}, Lcn/hutool/core/date/DateUtil;->dateNew(Ljava/util/Date;)Lcn/hutool/core/date/DateTime;

    move-result-object p0

    return-object p0
.end method

.method public static dateNew(Ljava/util/Date;)Lcn/hutool/core/date/DateTime;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 96
    :cond_0
    new-instance v0, Lcn/hutool/core/date/DateTime;

    invoke-direct {v0, p0}, Lcn/hutool/core/date/DateTime;-><init>(Ljava/util/Date;)V

    return-object v0
.end method

.method public static dateSecond()Lcn/hutool/core/date/DateTime;
    .locals 1

    .line 64
    invoke-static {}, Lcn/hutool/core/date/DateUtil;->date()Lcn/hutool/core/date/DateTime;

    move-result-object v0

    invoke-static {v0}, Lcn/hutool/core/date/DateUtil;->beginOfSecond(Ljava/util/Date;)Lcn/hutool/core/date/DateTime;

    move-result-object v0

    return-object v0
.end method

.method public static dayOfMonth(Ljava/util/Date;)I
    .locals 0

    .line 262
    invoke-static {p0}, Lcn/hutool/core/date/DateTime;->of(Ljava/util/Date;)Lcn/hutool/core/date/DateTime;

    move-result-object p0

    invoke-virtual {p0}, Lcn/hutool/core/date/DateTime;->dayOfMonth()I

    move-result p0

    return p0
.end method

.method public static dayOfWeek(Ljava/util/Date;)I
    .locals 0

    .line 283
    invoke-static {p0}, Lcn/hutool/core/date/DateTime;->of(Ljava/util/Date;)Lcn/hutool/core/date/DateTime;

    move-result-object p0

    invoke-virtual {p0}, Lcn/hutool/core/date/DateTime;->dayOfWeek()I

    move-result p0

    return p0
.end method

.method public static dayOfWeekEnum(Ljava/util/Date;)Lcn/hutool/core/date/Week;
    .locals 0

    .line 293
    invoke-static {p0}, Lcn/hutool/core/date/DateTime;->of(Ljava/util/Date;)Lcn/hutool/core/date/DateTime;

    move-result-object p0

    invoke-virtual {p0}, Lcn/hutool/core/date/DateTime;->dayOfWeekEnum()Lcn/hutool/core/date/Week;

    move-result-object p0

    return-object p0
.end method

.method public static dayOfYear(Ljava/util/Date;)I
    .locals 0

    .line 273
    invoke-static {p0}, Lcn/hutool/core/date/DateTime;->of(Ljava/util/Date;)Lcn/hutool/core/date/DateTime;

    move-result-object p0

    invoke-virtual {p0}, Lcn/hutool/core/date/DateTime;->dayOfYear()I

    move-result p0

    return p0
.end method

.method public static endOfDay(Ljava/util/Date;)Lcn/hutool/core/date/DateTime;
    .locals 1

    .line 1166
    new-instance v0, Lcn/hutool/core/date/DateTime;

    invoke-static {p0}, Lcn/hutool/core/date/DateUtil;->calendar(Ljava/util/Date;)Ljava/util/Calendar;

    move-result-object p0

    invoke-static {p0}, Lcn/hutool/core/date/DateUtil;->endOfDay(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object p0

    invoke-direct {v0, p0}, Lcn/hutool/core/date/DateTime;-><init>(Ljava/util/Calendar;)V

    return-object v0
.end method

.method public static endOfHour(Ljava/util/Date;)Lcn/hutool/core/date/DateTime;
    .locals 1

    .line 1126
    new-instance v0, Lcn/hutool/core/date/DateTime;

    invoke-static {p0}, Lcn/hutool/core/date/DateUtil;->calendar(Ljava/util/Date;)Ljava/util/Calendar;

    move-result-object p0

    invoke-static {p0}, Lcn/hutool/core/date/DateUtil;->endOfHour(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object p0

    invoke-direct {v0, p0}, Lcn/hutool/core/date/DateTime;-><init>(Ljava/util/Calendar;)V

    return-object v0
.end method

.method public static endOfMinute(Ljava/util/Date;)Lcn/hutool/core/date/DateTime;
    .locals 1

    .line 1146
    new-instance v0, Lcn/hutool/core/date/DateTime;

    invoke-static {p0}, Lcn/hutool/core/date/DateUtil;->calendar(Ljava/util/Date;)Ljava/util/Calendar;

    move-result-object p0

    invoke-static {p0}, Lcn/hutool/core/date/DateUtil;->endOfMinute(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object p0

    invoke-direct {v0, p0}, Lcn/hutool/core/date/DateTime;-><init>(Ljava/util/Calendar;)V

    return-object v0
.end method

.method public static endOfMonth(Ljava/util/Date;)Lcn/hutool/core/date/DateTime;
    .locals 1

    .line 1230
    new-instance v0, Lcn/hutool/core/date/DateTime;

    invoke-static {p0}, Lcn/hutool/core/date/DateUtil;->calendar(Ljava/util/Date;)Ljava/util/Calendar;

    move-result-object p0

    invoke-static {p0}, Lcn/hutool/core/date/DateUtil;->endOfMonth(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object p0

    invoke-direct {v0, p0}, Lcn/hutool/core/date/DateTime;-><init>(Ljava/util/Calendar;)V

    return-object v0
.end method

.method public static endOfQuarter(Ljava/util/Date;)Lcn/hutool/core/date/DateTime;
    .locals 1

    .line 1250
    new-instance v0, Lcn/hutool/core/date/DateTime;

    invoke-static {p0}, Lcn/hutool/core/date/DateUtil;->calendar(Ljava/util/Date;)Ljava/util/Calendar;

    move-result-object p0

    invoke-static {p0}, Lcn/hutool/core/date/DateUtil;->endOfQuarter(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object p0

    invoke-direct {v0, p0}, Lcn/hutool/core/date/DateTime;-><init>(Ljava/util/Calendar;)V

    return-object v0
.end method

.method public static endOfSecond(Ljava/util/Date;)Lcn/hutool/core/date/DateTime;
    .locals 1

    .line 1106
    new-instance v0, Lcn/hutool/core/date/DateTime;

    invoke-static {p0}, Lcn/hutool/core/date/DateUtil;->calendar(Ljava/util/Date;)Ljava/util/Calendar;

    move-result-object p0

    invoke-static {p0}, Lcn/hutool/core/date/DateUtil;->endOfSecond(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object p0

    invoke-direct {v0, p0}, Lcn/hutool/core/date/DateTime;-><init>(Ljava/util/Calendar;)V

    return-object v0
.end method

.method public static endOfWeek(Ljava/util/Date;)Lcn/hutool/core/date/DateTime;
    .locals 1

    .line 1198
    new-instance v0, Lcn/hutool/core/date/DateTime;

    invoke-static {p0}, Lcn/hutool/core/date/DateUtil;->calendar(Ljava/util/Date;)Ljava/util/Calendar;

    move-result-object p0

    invoke-static {p0}, Lcn/hutool/core/date/DateUtil;->endOfWeek(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object p0

    invoke-direct {v0, p0}, Lcn/hutool/core/date/DateTime;-><init>(Ljava/util/Calendar;)V

    return-object v0
.end method

.method public static endOfWeek(Ljava/util/Date;Z)Lcn/hutool/core/date/DateTime;
    .locals 1

    .line 1210
    new-instance v0, Lcn/hutool/core/date/DateTime;

    invoke-static {p0}, Lcn/hutool/core/date/DateUtil;->calendar(Ljava/util/Date;)Ljava/util/Calendar;

    move-result-object p0

    invoke-static {p0, p1}, Lcn/hutool/core/date/DateUtil;->endOfWeek(Ljava/util/Calendar;Z)Ljava/util/Calendar;

    move-result-object p0

    invoke-direct {v0, p0}, Lcn/hutool/core/date/DateTime;-><init>(Ljava/util/Calendar;)V

    return-object v0
.end method

.method public static endOfYear(Ljava/util/Date;)Lcn/hutool/core/date/DateTime;
    .locals 1

    .line 1270
    new-instance v0, Lcn/hutool/core/date/DateTime;

    invoke-static {p0}, Lcn/hutool/core/date/DateUtil;->calendar(Ljava/util/Date;)Ljava/util/Calendar;

    move-result-object p0

    invoke-static {p0}, Lcn/hutool/core/date/DateUtil;->endOfYear(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object p0

    invoke-direct {v0, p0}, Lcn/hutool/core/date/DateTime;-><init>(Ljava/util/Calendar;)V

    return-object v0
.end method

.method public static format(Ljava/time/LocalDateTime;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 501
    invoke-static {p0, p1}, Lcn/hutool/core/date/LocalDateTimeUtil;->format(Ljava/time/LocalDateTime;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static format(Ljava/util/Date;Lcn/hutool/core/date/format/DatePrinter;)Ljava/lang/String;
    .locals 0

    if-eqz p1, :cond_1

    if-nez p0, :cond_0

    goto :goto_0

    .line 539
    :cond_0
    invoke-interface {p1, p0}, Lcn/hutool/core/date/format/DatePrinter;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static format(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_3

    .line 512
    invoke-static {p1}, Lcn/hutool/core/util/StrUtil;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 517
    :cond_0
    invoke-static {p1}, Lcn/hutool/core/date/format/GlobalCustomFormat;->isCustomFormat(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 518
    invoke-static {p0, p1}, Lcn/hutool/core/date/format/GlobalCustomFormat;->format(Ljava/util/Date;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 522
    :cond_1
    instance-of v1, p0, Lcn/hutool/core/date/DateTime;

    if-eqz v1, :cond_2

    .line 523
    move-object v1, p0

    check-cast v1, Lcn/hutool/core/date/DateTime;

    invoke-virtual {v1}, Lcn/hutool/core/date/DateTime;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v1

    goto :goto_0

    :cond_2
    move-object v1, v0

    .line 525
    :goto_0
    invoke-static {p1, v0, v1}, Lcn/hutool/core/date/DateUtil;->newSimpleFormat(Ljava/lang/String;Ljava/util/Locale;Ljava/util/TimeZone;)Ljava/text/SimpleDateFormat;

    move-result-object p1

    invoke-static {p0, p1}, Lcn/hutool/core/date/DateUtil;->format(Ljava/util/Date;Ljava/text/DateFormat;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    :goto_1
    return-object v0
.end method

.method public static format(Ljava/util/Date;Ljava/text/DateFormat;)Ljava/lang/String;
    .locals 0

    if-eqz p1, :cond_1

    if-nez p0, :cond_0

    goto :goto_0

    .line 553
    :cond_0
    invoke-virtual {p1, p0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static format(Ljava/util/Date;Ljava/time/format/DateTimeFormatter;)Ljava/lang/String;
    .locals 0

    if-eqz p1, :cond_1

    if-nez p0, :cond_0

    goto :goto_0

    .line 570
    :cond_0
    invoke-virtual {p0}, Ljava/util/Date;->toInstant()Ljava/time/Instant;

    move-result-object p0

    invoke-static {p0, p1}, Lcn/hutool/core/date/TemporalAccessorUtil;->format(Ljava/time/temporal/TemporalAccessor;Ljava/time/format/DateTimeFormatter;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static formatBetween(J)Ljava/lang/String;
    .locals 2

    .line 1571
    new-instance v0, Lcn/hutool/core/date/BetweenFormatter;

    sget-object v1, Lcn/hutool/core/date/BetweenFormatter$Level;->MILLISECOND:Lcn/hutool/core/date/BetweenFormatter$Level;

    invoke-direct {v0, p0, p1, v1}, Lcn/hutool/core/date/BetweenFormatter;-><init>(JLcn/hutool/core/date/BetweenFormatter$Level;)V

    invoke-virtual {v0}, Lcn/hutool/core/date/BetweenFormatter;->format()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static formatBetween(JLcn/hutool/core/date/BetweenFormatter$Level;)Ljava/lang/String;
    .locals 1

    .line 1560
    new-instance v0, Lcn/hutool/core/date/BetweenFormatter;

    invoke-direct {v0, p0, p1, p2}, Lcn/hutool/core/date/BetweenFormatter;-><init>(JLcn/hutool/core/date/BetweenFormatter$Level;)V

    invoke-virtual {v0}, Lcn/hutool/core/date/BetweenFormatter;->format()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static formatBetween(Ljava/util/Date;Ljava/util/Date;)Ljava/lang/String;
    .locals 1

    .line 1549
    sget-object v0, Lcn/hutool/core/date/DateUnit;->MS:Lcn/hutool/core/date/DateUnit;

    invoke-static {p0, p1, v0}, Lcn/hutool/core/date/DateUtil;->between(Ljava/util/Date;Ljava/util/Date;Lcn/hutool/core/date/DateUnit;)J

    move-result-wide p0

    invoke-static {p0, p1}, Lcn/hutool/core/date/DateUtil;->formatBetween(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static formatBetween(Ljava/util/Date;Ljava/util/Date;Lcn/hutool/core/date/BetweenFormatter$Level;)Ljava/lang/String;
    .locals 1

    .line 1537
    sget-object v0, Lcn/hutool/core/date/DateUnit;->MS:Lcn/hutool/core/date/DateUnit;

    invoke-static {p0, p1, v0}, Lcn/hutool/core/date/DateUtil;->between(Ljava/util/Date;Ljava/util/Date;Lcn/hutool/core/date/DateUnit;)J

    move-result-wide p0

    invoke-static {p0, p1, p2}, Lcn/hutool/core/date/DateUtil;->formatBetween(JLcn/hutool/core/date/BetweenFormatter$Level;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static formatChineseDate(Ljava/util/Date;ZZ)Ljava/lang/String;
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    if-nez p1, :cond_2

    if-eqz p2, :cond_1

    .line 645
    sget-object p1, Lcn/hutool/core/date/DatePattern;->CHINESE_DATE_TIME_FORMAT:Lcn/hutool/core/date/format/FastDateFormat;

    goto :goto_0

    :cond_1
    sget-object p1, Lcn/hutool/core/date/DatePattern;->CHINESE_DATE_FORMAT:Lcn/hutool/core/date/format/FastDateFormat;

    :goto_0
    invoke-virtual {p1, p0}, Lcn/hutool/core/date/format/FastDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 648
    :cond_2
    invoke-static {p0}, Lcn/hutool/core/date/CalendarUtil;->calendar(Ljava/util/Date;)Ljava/util/Calendar;

    move-result-object p0

    invoke-static {p0, p2}, Lcn/hutool/core/date/CalendarUtil;->formatChineseDate(Ljava/util/Calendar;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static formatDate(Ljava/util/Date;)Ljava/lang/String;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 598
    :cond_0
    sget-object v0, Lcn/hutool/core/date/DatePattern;->NORM_DATE_FORMAT:Lcn/hutool/core/date/format/FastDateFormat;

    invoke-virtual {v0, p0}, Lcn/hutool/core/date/format/FastDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static formatDateTime(Ljava/util/Date;)Ljava/lang/String;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 584
    :cond_0
    sget-object v0, Lcn/hutool/core/date/DatePattern;->NORM_DATETIME_FORMAT:Lcn/hutool/core/date/format/FastDateFormat;

    invoke-virtual {v0, p0}, Lcn/hutool/core/date/format/FastDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static formatHttpDate(Ljava/util/Date;)Ljava/lang/String;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 627
    :cond_0
    sget-object v0, Lcn/hutool/core/date/DatePattern;->HTTP_DATETIME_FORMAT:Lcn/hutool/core/date/format/FastDateFormat;

    invoke-virtual {v0, p0}, Lcn/hutool/core/date/format/FastDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static formatLocalDateTime(Ljava/time/LocalDateTime;)Ljava/lang/String;
    .locals 0

    .line 490
    invoke-static {p0}, Lcn/hutool/core/date/LocalDateTimeUtil;->formatNormal(Ljava/time/LocalDateTime;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static formatTime(Ljava/util/Date;)Ljava/lang/String;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 613
    :cond_0
    sget-object v0, Lcn/hutool/core/date/DatePattern;->NORM_TIME_FORMAT:Lcn/hutool/core/date/format/FastDateFormat;

    invoke-virtual {v0, p0}, Lcn/hutool/core/date/format/FastDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getChineseZodiac(I)Ljava/lang/String;
    .locals 0

    .line 2033
    invoke-static {p0}, Lcn/hutool/core/date/Zodiac;->getChineseZodiac(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getLastDayOfMonth(Ljava/util/Date;)I
    .locals 0

    .line 2287
    invoke-static {p0}, Lcn/hutool/core/date/DateUtil;->date(Ljava/util/Date;)Lcn/hutool/core/date/DateTime;

    move-result-object p0

    invoke-virtual {p0}, Lcn/hutool/core/date/DateTime;->getLastDayOfMonth()I

    move-result p0

    return p0
.end method

.method public static getShotName(Ljava/util/concurrent/TimeUnit;)Ljava/lang/String;
    .locals 2

    .line 2227
    sget-object v0, Lcn/hutool/core/date/DateUtil$1;->$SwitchMap$java$util$concurrent$TimeUnit:[I

    invoke-virtual {p0}, Ljava/util/concurrent/TimeUnit;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 2241
    invoke-virtual {p0}, Ljava/util/concurrent/TimeUnit;->name()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_0
    const-string p0, "h"

    return-object p0

    :pswitch_1
    const-string p0, "min"

    return-object p0

    :pswitch_2
    const-string p0, "s"

    return-object p0

    :pswitch_3
    const-string p0, "ms"

    return-object p0

    :pswitch_4
    const-string p0, "\u03bcs"

    return-object p0

    :pswitch_5
    const-string p0, "ns"

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getZodiac(II)Ljava/lang/String;
    .locals 0

    .line 2022
    invoke-static {p0, p1}, Lcn/hutool/core/date/Zodiac;->getZodiac(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static hour(Ljava/util/Date;Z)I
    .locals 0

    .line 316
    invoke-static {p0}, Lcn/hutool/core/date/DateTime;->of(Ljava/util/Date;)Lcn/hutool/core/date/DateTime;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcn/hutool/core/date/DateTime;->hour(Z)I

    move-result p0

    return p0
.end method

.method public static isAM(Ljava/util/Date;)Z
    .locals 0

    .line 357
    invoke-static {p0}, Lcn/hutool/core/date/DateTime;->of(Ljava/util/Date;)Lcn/hutool/core/date/DateTime;

    move-result-object p0

    invoke-virtual {p0}, Lcn/hutool/core/date/DateTime;->isAM()Z

    move-result p0

    return p0
.end method

.method public static isExpired(Ljava/util/Date;Lcn/hutool/core/date/DateField;ILjava/util/Date;)Z
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1825
    invoke-static {p0, p1, p2}, Lcn/hutool/core/date/DateUtil;->offset(Ljava/util/Date;Lcn/hutool/core/date/DateField;I)Lcn/hutool/core/date/DateTime;

    move-result-object p0

    .line 1826
    invoke-virtual {p0, p3}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result p0

    return p0
.end method

.method public static isExpired(Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;)Z
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1846
    invoke-static {p0, p2}, Lcn/hutool/core/date/DateUtil;->betweenMs(Ljava/util/Date;Ljava/util/Date;)J

    move-result-wide v0

    invoke-static {p0, p1}, Lcn/hutool/core/date/DateUtil;->betweenMs(Ljava/util/Date;Ljava/util/Date;)J

    move-result-wide p0

    cmp-long p0, v0, p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isIn(Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;)Z
    .locals 1

    .line 1585
    instance-of v0, p0, Lcn/hutool/core/date/DateTime;

    if-eqz v0, :cond_0

    .line 1586
    check-cast p0, Lcn/hutool/core/date/DateTime;

    invoke-virtual {p0, p1, p2}, Lcn/hutool/core/date/DateTime;->isIn(Ljava/util/Date;Ljava/util/Date;)Z

    move-result p0

    return p0

    .line 1588
    :cond_0
    new-instance v0, Lcn/hutool/core/date/DateTime;

    invoke-direct {v0, p0}, Lcn/hutool/core/date/DateTime;-><init>(Ljava/util/Date;)V

    invoke-virtual {v0, p1, p2}, Lcn/hutool/core/date/DateTime;->isIn(Ljava/util/Date;Ljava/util/Date;)Z

    move-result p0

    return p0
.end method

.method public static isLastDayOfMonth(Ljava/util/Date;)Z
    .locals 0

    .line 2277
    invoke-static {p0}, Lcn/hutool/core/date/DateUtil;->date(Ljava/util/Date;)Lcn/hutool/core/date/DateTime;

    move-result-object p0

    invoke-virtual {p0}, Lcn/hutool/core/date/DateTime;->isLastDayOfMonth()Z

    move-result p0

    return p0
.end method

.method public static isLeapYear(I)Z
    .locals 2

    int-to-long v0, p0

    .line 1794
    invoke-static {v0, v1}, Ljava/time/Year;->isLeap(J)Z

    move-result p0

    return p0
.end method

.method public static isOverlap(Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;)Z
    .locals 0

    .line 2267
    invoke-virtual {p0, p3}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result p0

    if-gtz p0, :cond_0

    invoke-virtual {p2, p1}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result p0

    if-gtz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isPM(Ljava/util/Date;)Z
    .locals 0

    .line 367
    invoke-static {p0}, Lcn/hutool/core/date/DateTime;->of(Ljava/util/Date;)Lcn/hutool/core/date/DateTime;

    move-result-object p0

    invoke-virtual {p0}, Lcn/hutool/core/date/DateTime;->isPM()Z

    move-result p0

    return p0
.end method

.method public static isSameDay(Ljava/util/Date;Ljava/util/Date;)Z
    .locals 0

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 1617
    invoke-static {p0}, Lcn/hutool/core/date/DateUtil;->calendar(Ljava/util/Date;)Ljava/util/Calendar;

    move-result-object p0

    invoke-static {p1}, Lcn/hutool/core/date/DateUtil;->calendar(Ljava/util/Date;)Ljava/util/Calendar;

    move-result-object p1

    invoke-static {p0, p1}, Lcn/hutool/core/date/CalendarUtil;->isSameDay(Ljava/util/Calendar;Ljava/util/Calendar;)Z

    move-result p0

    return p0

    .line 1615
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "The date must not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static isSameMonth(Ljava/util/Date;Ljava/util/Date;)Z
    .locals 0

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 1647
    invoke-static {p0}, Lcn/hutool/core/date/DateUtil;->calendar(Ljava/util/Date;)Ljava/util/Calendar;

    move-result-object p0

    invoke-static {p1}, Lcn/hutool/core/date/DateUtil;->calendar(Ljava/util/Date;)Ljava/util/Calendar;

    move-result-object p1

    invoke-static {p0, p1}, Lcn/hutool/core/date/CalendarUtil;->isSameMonth(Ljava/util/Calendar;Ljava/util/Calendar;)Z

    move-result p0

    return p0

    .line 1645
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "The date must not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static isSameTime(Ljava/util/Date;Ljava/util/Date;)Z
    .locals 0

    .line 1602
    invoke-virtual {p0, p1}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isSameWeek(Ljava/util/Date;Ljava/util/Date;Z)Z
    .locals 0

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 1632
    invoke-static {p0}, Lcn/hutool/core/date/DateUtil;->calendar(Ljava/util/Date;)Ljava/util/Calendar;

    move-result-object p0

    invoke-static {p1}, Lcn/hutool/core/date/DateUtil;->calendar(Ljava/util/Date;)Ljava/util/Calendar;

    move-result-object p1

    invoke-static {p0, p1, p2}, Lcn/hutool/core/date/CalendarUtil;->isSameWeek(Ljava/util/Calendar;Ljava/util/Calendar;Z)Z

    move-result p0

    return p0

    .line 1630
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "The date must not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static isWeekend(Ljava/util/Date;)Z
    .locals 1

    .line 304
    invoke-static {p0}, Lcn/hutool/core/date/DateUtil;->dayOfWeekEnum(Ljava/util/Date;)Lcn/hutool/core/date/Week;

    move-result-object p0

    .line 305
    sget-object v0, Lcn/hutool/core/date/Week;->SATURDAY:Lcn/hutool/core/date/Week;

    if-eq v0, p0, :cond_1

    sget-object v0, Lcn/hutool/core/date/Week;->SUNDAY:Lcn/hutool/core/date/Week;

    if-ne v0, p0, :cond_0

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

.method static synthetic lambda$rangeNotContains$0(Ljava/util/List;Lcn/hutool/core/date/DateTime;)Z
    .locals 0

    .line 1946
    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static lastMonth()Lcn/hutool/core/date/DateTime;
    .locals 2

    .line 1318
    new-instance v0, Lcn/hutool/core/date/DateTime;

    invoke-direct {v0}, Lcn/hutool/core/date/DateTime;-><init>()V

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcn/hutool/core/date/DateUtil;->offsetMonth(Ljava/util/Date;I)Lcn/hutool/core/date/DateTime;

    move-result-object v0

    return-object v0
.end method

.method public static lastWeek()Lcn/hutool/core/date/DateTime;
    .locals 2

    .line 1299
    new-instance v0, Lcn/hutool/core/date/DateTime;

    invoke-direct {v0}, Lcn/hutool/core/date/DateTime;-><init>()V

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcn/hutool/core/date/DateUtil;->offsetWeek(Ljava/util/Date;I)Lcn/hutool/core/date/DateTime;

    move-result-object v0

    return-object v0
.end method

.method public static lengthOfMonth(IZ)I
    .locals 0

    .line 2182
    invoke-static {p0}, Ljava/time/Month;->of(I)Ljava/time/Month;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/time/Month;->length(Z)I

    move-result p0

    return p0
.end method

.method public static lengthOfYear(I)I
    .locals 0

    .line 2170
    invoke-static {p0}, Ljava/time/Year;->of(I)Ljava/time/Year;

    move-result-object p0

    invoke-virtual {p0}, Ljava/time/Year;->length()I

    move-result p0

    return p0
.end method

.method public static millisecond(Ljava/util/Date;)I
    .locals 0

    .line 347
    invoke-static {p0}, Lcn/hutool/core/date/DateTime;->of(Ljava/util/Date;)Lcn/hutool/core/date/DateTime;

    move-result-object p0

    invoke-virtual {p0}, Lcn/hutool/core/date/DateTime;->millisecond()I

    move-result p0

    return p0
.end method

.method public static minute(Ljava/util/Date;)I
    .locals 0

    .line 327
    invoke-static {p0}, Lcn/hutool/core/date/DateTime;->of(Ljava/util/Date;)Lcn/hutool/core/date/DateTime;

    move-result-object p0

    invoke-virtual {p0}, Lcn/hutool/core/date/DateTime;->minute()I

    move-result p0

    return p0
.end method

.method public static month(Ljava/util/Date;)I
    .locals 0

    .line 217
    invoke-static {p0}, Lcn/hutool/core/date/DateTime;->of(Ljava/util/Date;)Lcn/hutool/core/date/DateTime;

    move-result-object p0

    invoke-virtual {p0}, Lcn/hutool/core/date/DateTime;->month()I

    move-result p0

    return p0
.end method

.method public static monthEnum(Ljava/util/Date;)Lcn/hutool/core/date/Month;
    .locals 0

    .line 227
    invoke-static {p0}, Lcn/hutool/core/date/DateTime;->of(Ljava/util/Date;)Lcn/hutool/core/date/DateTime;

    move-result-object p0

    invoke-virtual {p0}, Lcn/hutool/core/date/DateTime;->monthEnum()Lcn/hutool/core/date/Month;

    move-result-object p0

    return-object p0
.end method

.method public static nanosToMillis(J)J
    .locals 1

    .line 2078
    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p0, p1}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide p0

    return-wide p0
.end method

.method public static nanosToSeconds(J)D
    .locals 2

    long-to-double p0, p0

    const-wide v0, 0x41cdcd6500000000L    # 1.0E9

    div-double/2addr p0, v0

    return-wide p0
.end method

.method public static newSimpleFormat(Ljava/lang/String;)Ljava/text/SimpleDateFormat;
    .locals 1

    const/4 v0, 0x0

    .line 2194
    invoke-static {p0, v0, v0}, Lcn/hutool/core/date/DateUtil;->newSimpleFormat(Ljava/lang/String;Ljava/util/Locale;Ljava/util/TimeZone;)Ljava/text/SimpleDateFormat;

    move-result-object p0

    return-object p0
.end method

.method public static newSimpleFormat(Ljava/lang/String;Ljava/util/Locale;Ljava/util/TimeZone;)Ljava/text/SimpleDateFormat;
    .locals 1

    if-nez p1, :cond_0

    .line 2209
    sget-object p1, Ljava/util/Locale$Category;->FORMAT:Ljava/util/Locale$Category;

    invoke-static {p1}, Ljava/util/Locale;->getDefault(Ljava/util/Locale$Category;)Ljava/util/Locale;

    move-result-object p1

    .line 2211
    :cond_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-direct {v0, p0, p1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    if-eqz p2, :cond_1

    .line 2213
    invoke-virtual {v0, p2}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    :cond_1
    const/4 p0, 0x0

    .line 2215
    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->setLenient(Z)V

    return-object v0
.end method

.method public static nextMonth()Lcn/hutool/core/date/DateTime;
    .locals 2

    .line 1328
    new-instance v0, Lcn/hutool/core/date/DateTime;

    invoke-direct {v0}, Lcn/hutool/core/date/DateTime;-><init>()V

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcn/hutool/core/date/DateUtil;->offsetMonth(Ljava/util/Date;I)Lcn/hutool/core/date/DateTime;

    move-result-object v0

    return-object v0
.end method

.method public static nextWeek()Lcn/hutool/core/date/DateTime;
    .locals 2

    .line 1309
    new-instance v0, Lcn/hutool/core/date/DateTime;

    invoke-direct {v0}, Lcn/hutool/core/date/DateTime;-><init>()V

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcn/hutool/core/date/DateUtil;->offsetWeek(Ljava/util/Date;I)Lcn/hutool/core/date/DateTime;

    move-result-object v0

    return-object v0
.end method

.method private static normalize(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 8

    .line 2323
    invoke-static {p0}, Lcn/hutool/core/util/StrUtil;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2324
    invoke-static {p0}, Lcn/hutool/core/util/StrUtil;->str(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/16 v0, 0x20

    .line 2328
    invoke-static {p0, v0}, Lcn/hutool/core/util/StrUtil;->splitTrim(Ljava/lang/CharSequence;C)Ljava/util/List;

    move-result-object v1

    .line 2329
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-lt v2, v3, :cond_3

    const/4 v4, 0x2

    if-le v2, v4, :cond_1

    goto :goto_0

    .line 2335
    :cond_1
    invoke-static {}, Lcn/hutool/core/util/StrUtil;->builder()Ljava/lang/StringBuilder;

    move-result-object p0

    const/4 v5, 0x0

    .line 2338
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v6, "[/.\u5e74\u6708]"

    const-string v7, "-"

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "\u65e5"

    .line 2339
    invoke-static {v5, v6}, Lcn/hutool/core/util/StrUtil;->removeSuffix(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    .line 2340
    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-ne v2, v4, :cond_2

    .line 2344
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2345
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "[\u65f6\u5206\u79d2]"

    const-string v2, ":"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2346
    invoke-static {v0, v2}, Lcn/hutool/core/util/StrUtil;->removeSuffix(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x2c

    const/16 v2, 0x2e

    .line 2348
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    .line 2349
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2352
    :cond_2
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 2332
    :cond_3
    :goto_0
    invoke-static {p0}, Lcn/hutool/core/util/StrUtil;->str(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static normalizeMillSeconds(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 4

    .line 2365
    invoke-static {p2}, Lcn/hutool/core/util/StrUtil;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 2366
    invoke-static {p0, p1, v2}, Lcn/hutool/core/util/StrUtil;->subAfter(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, v1}, Lcn/hutool/core/util/StrUtil;->subPre(Ljava/lang/CharSequence;I)Ljava/lang/String;

    move-result-object p2

    .line 2367
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0, p1, v2}, Lcn/hutool/core/util/StrUtil;->subBefore(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 2369
    :cond_0
    invoke-static {p0, p1, p2}, Lcn/hutool/core/util/StrUtil;->subBetween(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lcn/hutool/core/util/StrUtil;->subPre(Ljava/lang/CharSequence;I)Ljava/lang/String;

    move-result-object v0

    .line 2370
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0, p1, v2}, Lcn/hutool/core/util/StrUtil;->subBefore(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 2372
    invoke-static {p0, p2, v2}, Lcn/hutool/core/util/StrUtil;->subAfter(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static now()Ljava/lang/String;
    .locals 1

    .line 164
    new-instance v0, Lcn/hutool/core/date/DateTime;

    invoke-direct {v0}, Lcn/hutool/core/date/DateTime;-><init>()V

    invoke-static {v0}, Lcn/hutool/core/date/DateUtil;->formatDateTime(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static offset(Ljava/util/Date;Lcn/hutool/core/date/DateField;I)Lcn/hutool/core/date/DateTime;
    .locals 0

    .line 1417
    invoke-static {p0}, Lcn/hutool/core/date/DateUtil;->dateNew(Ljava/util/Date;)Lcn/hutool/core/date/DateTime;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcn/hutool/core/date/DateTime;->offset(Lcn/hutool/core/date/DateField;I)Lcn/hutool/core/date/DateTime;

    move-result-object p0

    return-object p0
.end method

.method public static offsetDay(Ljava/util/Date;I)Lcn/hutool/core/date/DateTime;
    .locals 1

    .line 1383
    sget-object v0, Lcn/hutool/core/date/DateField;->DAY_OF_YEAR:Lcn/hutool/core/date/DateField;

    invoke-static {p0, v0, p1}, Lcn/hutool/core/date/DateUtil;->offset(Ljava/util/Date;Lcn/hutool/core/date/DateField;I)Lcn/hutool/core/date/DateTime;

    move-result-object p0

    return-object p0
.end method

.method public static offsetHour(Ljava/util/Date;I)Lcn/hutool/core/date/DateTime;
    .locals 1

    .line 1372
    sget-object v0, Lcn/hutool/core/date/DateField;->HOUR_OF_DAY:Lcn/hutool/core/date/DateField;

    invoke-static {p0, v0, p1}, Lcn/hutool/core/date/DateUtil;->offset(Ljava/util/Date;Lcn/hutool/core/date/DateField;I)Lcn/hutool/core/date/DateTime;

    move-result-object p0

    return-object p0
.end method

.method public static offsetMillisecond(Ljava/util/Date;I)Lcn/hutool/core/date/DateTime;
    .locals 1

    .line 1339
    sget-object v0, Lcn/hutool/core/date/DateField;->MILLISECOND:Lcn/hutool/core/date/DateField;

    invoke-static {p0, v0, p1}, Lcn/hutool/core/date/DateUtil;->offset(Ljava/util/Date;Lcn/hutool/core/date/DateField;I)Lcn/hutool/core/date/DateTime;

    move-result-object p0

    return-object p0
.end method

.method public static offsetMinute(Ljava/util/Date;I)Lcn/hutool/core/date/DateTime;
    .locals 1

    .line 1361
    sget-object v0, Lcn/hutool/core/date/DateField;->MINUTE:Lcn/hutool/core/date/DateField;

    invoke-static {p0, v0, p1}, Lcn/hutool/core/date/DateUtil;->offset(Ljava/util/Date;Lcn/hutool/core/date/DateField;I)Lcn/hutool/core/date/DateTime;

    move-result-object p0

    return-object p0
.end method

.method public static offsetMonth(Ljava/util/Date;I)Lcn/hutool/core/date/DateTime;
    .locals 1

    .line 1405
    sget-object v0, Lcn/hutool/core/date/DateField;->MONTH:Lcn/hutool/core/date/DateField;

    invoke-static {p0, v0, p1}, Lcn/hutool/core/date/DateUtil;->offset(Ljava/util/Date;Lcn/hutool/core/date/DateField;I)Lcn/hutool/core/date/DateTime;

    move-result-object p0

    return-object p0
.end method

.method public static offsetSecond(Ljava/util/Date;I)Lcn/hutool/core/date/DateTime;
    .locals 1

    .line 1350
    sget-object v0, Lcn/hutool/core/date/DateField;->SECOND:Lcn/hutool/core/date/DateField;

    invoke-static {p0, v0, p1}, Lcn/hutool/core/date/DateUtil;->offset(Ljava/util/Date;Lcn/hutool/core/date/DateField;I)Lcn/hutool/core/date/DateTime;

    move-result-object p0

    return-object p0
.end method

.method public static offsetWeek(Ljava/util/Date;I)Lcn/hutool/core/date/DateTime;
    .locals 1

    .line 1394
    sget-object v0, Lcn/hutool/core/date/DateField;->WEEK_OF_YEAR:Lcn/hutool/core/date/DateField;

    invoke-static {p0, v0, p1}, Lcn/hutool/core/date/DateUtil;->offset(Ljava/util/Date;Lcn/hutool/core/date/DateField;I)Lcn/hutool/core/date/DateTime;

    move-result-object p0

    return-object p0
.end method

.method public static parse(Ljava/lang/CharSequence;)Lcn/hutool/core/date/DateTime;
    .locals 3

    .line 965
    invoke-static {p0}, Lcn/hutool/core/util/StrUtil;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 968
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    .line 970
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x2

    new-array v1, v0, [C

    fill-array-data v1, :array_0

    invoke-static {p0, v1}, Lcn/hutool/core/util/StrUtil;->removeAll(Ljava/lang/CharSequence;[C)Ljava/lang/String;

    move-result-object p0

    .line 971
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 973
    invoke-static {p0}, Lcn/hutool/core/util/NumberUtil;->isNumber(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/16 v2, 0xe

    if-ne v1, v2, :cond_1

    .line 976
    sget-object v0, Lcn/hutool/core/date/DatePattern;->PURE_DATETIME_FORMAT:Lcn/hutool/core/date/format/FastDateFormat;

    invoke-static {p0, v0}, Lcn/hutool/core/date/DateUtil;->parse(Ljava/lang/CharSequence;Lcn/hutool/core/date/format/DateParser;)Lcn/hutool/core/date/DateTime;

    move-result-object p0

    return-object p0

    :cond_1
    const/16 v2, 0x11

    if-ne v1, v2, :cond_2

    .line 978
    sget-object v0, Lcn/hutool/core/date/DatePattern;->PURE_DATETIME_MS_FORMAT:Lcn/hutool/core/date/format/FastDateFormat;

    invoke-static {p0, v0}, Lcn/hutool/core/date/DateUtil;->parse(Ljava/lang/CharSequence;Lcn/hutool/core/date/format/DateParser;)Lcn/hutool/core/date/DateTime;

    move-result-object p0

    return-object p0

    :cond_2
    const/16 v2, 0x8

    if-ne v1, v2, :cond_3

    .line 980
    sget-object v0, Lcn/hutool/core/date/DatePattern;->PURE_DATE_FORMAT:Lcn/hutool/core/date/format/FastDateFormat;

    invoke-static {p0, v0}, Lcn/hutool/core/date/DateUtil;->parse(Ljava/lang/CharSequence;Lcn/hutool/core/date/format/DateParser;)Lcn/hutool/core/date/DateTime;

    move-result-object p0

    return-object p0

    :cond_3
    const/4 v2, 0x6

    if-ne v1, v2, :cond_7

    .line 982
    sget-object v0, Lcn/hutool/core/date/DatePattern;->PURE_TIME_FORMAT:Lcn/hutool/core/date/format/FastDateFormat;

    invoke-static {p0, v0}, Lcn/hutool/core/date/DateUtil;->parse(Ljava/lang/CharSequence;Lcn/hutool/core/date/format/DateParser;)Lcn/hutool/core/date/DateTime;

    move-result-object p0

    return-object p0

    .line 984
    :cond_4
    sget-object v1, Lcn/hutool/core/lang/PatternPool;->TIME:Ljava/util/regex/Pattern;

    invoke-static {v1, p0}, Lcn/hutool/core/util/ReUtil;->isMatch(Ljava/util/regex/Pattern;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 986
    invoke-static {p0}, Lcn/hutool/core/date/DateUtil;->parseTimeToday(Ljava/lang/CharSequence;)Lcn/hutool/core/date/DateTime;

    move-result-object p0

    return-object p0

    .line 987
    :cond_5
    sget-object v1, Lcn/hutool/core/date/DateUtil;->wtb:[Ljava/lang/String;

    invoke-static {p0, v1}, Lcn/hutool/core/util/StrUtil;->containsAnyIgnoreCase(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 992
    invoke-static {p0}, Lcn/hutool/core/date/DateUtil;->parseCST(Ljava/lang/CharSequence;)Lcn/hutool/core/date/DateTime;

    move-result-object p0

    return-object p0

    :cond_6
    const/16 v1, 0x54

    .line 993
    invoke-static {p0, v1}, Lcn/hutool/core/util/StrUtil;->contains(Ljava/lang/CharSequence;C)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 995
    invoke-static {p0}, Lcn/hutool/core/date/DateUtil;->parseUTC(Ljava/lang/String;)Lcn/hutool/core/date/DateTime;

    move-result-object p0

    return-object p0

    .line 999
    :cond_7
    invoke-static {p0}, Lcn/hutool/core/date/DateUtil;->normalize(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 1000
    sget-object v1, Lcn/hutool/core/date/DatePattern;->REGEX_NORM:Ljava/util/regex/Pattern;

    invoke-static {v1, p0}, Lcn/hutool/core/util/ReUtil;->isMatch(Ljava/util/regex/Pattern;Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_c

    const/16 v1, 0x3a

    .line 1001
    invoke-static {p0, v1}, Lcn/hutool/core/util/StrUtil;->count(Ljava/lang/CharSequence;C)I

    move-result v1

    if-eqz v1, :cond_b

    if-eq v1, v2, :cond_a

    if-ne v1, v0, :cond_c

    const/16 v0, 0x2e

    .line 1010
    invoke-static {p0, v0}, Lcn/hutool/core/util/StrUtil;->indexOf(Ljava/lang/CharSequence;C)I

    move-result v0

    if-lez v0, :cond_9

    .line 1012
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v0

    const/4 v2, 0x4

    if-le v1, v2, :cond_8

    add-int/2addr v0, v2

    .line 1016
    invoke-static {p0, v0}, Lcn/hutool/core/util/StrUtil;->subPre(Ljava/lang/CharSequence;I)Ljava/lang/String;

    move-result-object p0

    .line 1018
    :cond_8
    sget-object v0, Lcn/hutool/core/date/DatePattern;->NORM_DATETIME_MS_FORMAT:Lcn/hutool/core/date/format/FastDateFormat;

    invoke-static {p0, v0}, Lcn/hutool/core/date/DateUtil;->parse(Ljava/lang/CharSequence;Lcn/hutool/core/date/format/DateParser;)Lcn/hutool/core/date/DateTime;

    move-result-object p0

    return-object p0

    .line 1021
    :cond_9
    sget-object v0, Lcn/hutool/core/date/DatePattern;->NORM_DATETIME_FORMAT:Lcn/hutool/core/date/format/FastDateFormat;

    invoke-static {p0, v0}, Lcn/hutool/core/date/DateUtil;->parse(Ljava/lang/CharSequence;Lcn/hutool/core/date/format/DateParser;)Lcn/hutool/core/date/DateTime;

    move-result-object p0

    return-object p0

    .line 1008
    :cond_a
    sget-object v0, Lcn/hutool/core/date/DatePattern;->NORM_DATETIME_MINUTE_FORMAT:Lcn/hutool/core/date/format/FastDateFormat;

    invoke-static {p0, v0}, Lcn/hutool/core/date/DateUtil;->parse(Ljava/lang/CharSequence;Lcn/hutool/core/date/format/DateParser;)Lcn/hutool/core/date/DateTime;

    move-result-object p0

    return-object p0

    .line 1005
    :cond_b
    sget-object v0, Lcn/hutool/core/date/DatePattern;->NORM_DATE_FORMAT:Lcn/hutool/core/date/format/FastDateFormat;

    invoke-static {p0, v0}, Lcn/hutool/core/date/DateUtil;->parse(Ljava/lang/CharSequence;Lcn/hutool/core/date/format/DateParser;)Lcn/hutool/core/date/DateTime;

    move-result-object p0

    return-object p0

    .line 1026
    :cond_c
    new-instance v0, Lcn/hutool/core/date/DateException;

    new-array v1, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const-string p0, "No format fit for date String [{}] !"

    invoke-direct {v0, p0, v1}, Lcn/hutool/core/date/DateException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    nop

    :array_0
    .array-data 2
        0x65e5s
        0x79d2s
    .end array-data
.end method

.method public static parse(Ljava/lang/CharSequence;Lcn/hutool/core/date/format/DateParser;)Lcn/hutool/core/date/DateTime;
    .locals 1

    .line 695
    new-instance v0, Lcn/hutool/core/date/DateTime;

    invoke-direct {v0, p0, p1}, Lcn/hutool/core/date/DateTime;-><init>(Ljava/lang/CharSequence;Lcn/hutool/core/date/format/DateParser;)V

    return-object v0
.end method

.method public static parse(Ljava/lang/CharSequence;Lcn/hutool/core/date/format/DateParser;Z)Lcn/hutool/core/date/DateTime;
    .locals 1

    .line 708
    new-instance v0, Lcn/hutool/core/date/DateTime;

    invoke-direct {v0, p0, p1, p2}, Lcn/hutool/core/date/DateTime;-><init>(Ljava/lang/CharSequence;Lcn/hutool/core/date/format/DateParser;Z)V

    return-object v0
.end method

.method public static parse(Ljava/lang/CharSequence;Ljava/lang/String;)Lcn/hutool/core/date/DateTime;
    .locals 1

    .line 731
    new-instance v0, Lcn/hutool/core/date/DateTime;

    invoke-direct {v0, p0, p1}, Lcn/hutool/core/date/DateTime;-><init>(Ljava/lang/CharSequence;Ljava/lang/String;)V

    return-object v0
.end method

.method public static parse(Ljava/lang/CharSequence;Ljava/lang/String;Ljava/util/Locale;)Lcn/hutool/core/date/DateTime;
    .locals 2

    .line 744
    invoke-static {p1}, Lcn/hutool/core/date/format/GlobalCustomFormat;->isCustomFormat(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 746
    new-instance p2, Lcn/hutool/core/date/DateTime;

    invoke-static {p0, p1}, Lcn/hutool/core/date/format/GlobalCustomFormat;->parse(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/util/Date;

    move-result-object p0

    invoke-direct {p2, p0}, Lcn/hutool/core/date/DateTime;-><init>(Ljava/util/Date;)V

    return-object p2

    .line 748
    :cond_0
    new-instance v0, Lcn/hutool/core/date/DateTime;

    const/4 v1, 0x0

    invoke-static {p1, p2, v1}, Lcn/hutool/core/date/DateUtil;->newSimpleFormat(Ljava/lang/String;Ljava/util/Locale;Ljava/util/TimeZone;)Ljava/text/SimpleDateFormat;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lcn/hutool/core/date/DateTime;-><init>(Ljava/lang/CharSequence;Ljava/text/DateFormat;)V

    return-object v0
.end method

.method public static parse(Ljava/lang/CharSequence;Ljava/text/DateFormat;)Lcn/hutool/core/date/DateTime;
    .locals 1

    .line 684
    new-instance v0, Lcn/hutool/core/date/DateTime;

    invoke-direct {v0, p0, p1}, Lcn/hutool/core/date/DateTime;-><init>(Ljava/lang/CharSequence;Ljava/text/DateFormat;)V

    return-object v0
.end method

.method public static parse(Ljava/lang/CharSequence;Ljava/time/format/DateTimeFormatter;)Lcn/hutool/core/date/DateTime;
    .locals 1

    .line 720
    new-instance v0, Lcn/hutool/core/date/DateTime;

    invoke-direct {v0, p0, p1}, Lcn/hutool/core/date/DateTime;-><init>(Ljava/lang/CharSequence;Ljava/time/format/DateTimeFormatter;)V

    return-object v0
.end method

.method public static varargs parse(Ljava/lang/String;[Ljava/lang/String;)Lcn/hutool/core/date/DateTime;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/hutool/core/date/DateException;
        }
    .end annotation

    .line 763
    new-instance v0, Lcn/hutool/core/date/DateTime;

    invoke-static {p0, p1}, Lcn/hutool/core/date/CalendarUtil;->parseByPatterns(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Calendar;

    move-result-object p0

    invoke-direct {v0, p0}, Lcn/hutool/core/date/DateTime;-><init>(Ljava/util/Calendar;)V

    return-object v0
.end method

.method public static parseCST(Ljava/lang/CharSequence;)Lcn/hutool/core/date/DateTime;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 932
    :cond_0
    sget-object v0, Lcn/hutool/core/date/DatePattern;->JDK_DATETIME_FORMAT:Lcn/hutool/core/date/format/FastDateFormat;

    invoke-static {p0, v0}, Lcn/hutool/core/date/DateUtil;->parse(Ljava/lang/CharSequence;Lcn/hutool/core/date/format/DateParser;)Lcn/hutool/core/date/DateTime;

    move-result-object p0

    return-object p0
.end method

.method public static parseDate(Ljava/lang/CharSequence;)Lcn/hutool/core/date/DateTime;
    .locals 1

    .line 797
    invoke-static {p0}, Lcn/hutool/core/date/DateUtil;->normalize(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 798
    sget-object v0, Lcn/hutool/core/date/DatePattern;->NORM_DATE_FORMAT:Lcn/hutool/core/date/format/FastDateFormat;

    invoke-static {p0, v0}, Lcn/hutool/core/date/DateUtil;->parse(Ljava/lang/CharSequence;Lcn/hutool/core/date/format/DateParser;)Lcn/hutool/core/date/DateTime;

    move-result-object p0

    return-object p0
.end method

.method public static parseDateTime(Ljava/lang/CharSequence;)Lcn/hutool/core/date/DateTime;
    .locals 1

    .line 780
    invoke-static {p0}, Lcn/hutool/core/date/DateUtil;->normalize(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 781
    sget-object v0, Lcn/hutool/core/date/DatePattern;->NORM_DATETIME_FORMAT:Lcn/hutool/core/date/format/FastDateFormat;

    invoke-static {p0, v0}, Lcn/hutool/core/date/DateUtil;->parse(Ljava/lang/CharSequence;Lcn/hutool/core/date/format/DateParser;)Lcn/hutool/core/date/DateTime;

    move-result-object p0

    return-object p0
.end method

.method public static parseLocalDateTime(Ljava/lang/CharSequence;)Ljava/time/LocalDateTime;
    .locals 1

    const-string v0, "yyyy-MM-dd HH:mm:ss"

    .line 662
    invoke-static {p0, v0}, Lcn/hutool/core/date/DateUtil;->parseLocalDateTime(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/time/LocalDateTime;

    move-result-object p0

    return-object p0
.end method

.method public static parseLocalDateTime(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/time/LocalDateTime;
    .locals 0

    .line 673
    invoke-static {p0, p1}, Lcn/hutool/core/date/LocalDateTimeUtil;->parse(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/time/LocalDateTime;

    move-result-object p0

    return-object p0
.end method

.method public static parseTime(Ljava/lang/CharSequence;)Lcn/hutool/core/date/DateTime;
    .locals 1

    .line 808
    invoke-static {p0}, Lcn/hutool/core/date/DateUtil;->normalize(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 809
    sget-object v0, Lcn/hutool/core/date/DatePattern;->NORM_TIME_FORMAT:Lcn/hutool/core/date/format/FastDateFormat;

    invoke-static {p0, v0}, Lcn/hutool/core/date/DateUtil;->parse(Ljava/lang/CharSequence;Lcn/hutool/core/date/format/DateParser;)Lcn/hutool/core/date/DateTime;

    move-result-object p0

    return-object p0
.end method

.method public static parseTimeToday(Ljava/lang/CharSequence;)Lcn/hutool/core/date/DateTime;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 820
    invoke-static {}, Lcn/hutool/core/date/DateUtil;->today()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object p0, v0, v1

    const-string p0, "{} {}"

    invoke-static {p0, v0}, Lcn/hutool/core/util/StrUtil;->format(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0x3a

    .line 821
    invoke-static {p0, v0}, Lcn/hutool/core/util/StrUtil;->count(Ljava/lang/CharSequence;C)I

    move-result v0

    if-ne v1, v0, :cond_0

    const-string v0, "yyyy-MM-dd HH:mm"

    .line 823
    invoke-static {p0, v0}, Lcn/hutool/core/date/DateUtil;->parse(Ljava/lang/CharSequence;Ljava/lang/String;)Lcn/hutool/core/date/DateTime;

    move-result-object p0

    return-object p0

    .line 826
    :cond_0
    sget-object v0, Lcn/hutool/core/date/DatePattern;->NORM_DATETIME_FORMAT:Lcn/hutool/core/date/format/FastDateFormat;

    invoke-static {p0, v0}, Lcn/hutool/core/date/DateUtil;->parse(Ljava/lang/CharSequence;Lcn/hutool/core/date/format/DateParser;)Lcn/hutool/core/date/DateTime;

    move-result-object p0

    return-object p0
.end method

.method public static parseUTC(Ljava/lang/String;)Lcn/hutool/core/date/DateTime;
    .locals 11

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 849
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x5a

    .line 850
    invoke-static {p0, v2}, Lcn/hutool/core/util/StrUtil;->contains(Ljava/lang/CharSequence;C)Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    const/16 v0, 0x14

    if-ne v1, v0, :cond_1

    .line 853
    sget-object v0, Lcn/hutool/core/date/DatePattern;->UTC_FORMAT:Lcn/hutool/core/date/format/FastDateFormat;

    invoke-static {p0, v0}, Lcn/hutool/core/date/DateUtil;->parse(Ljava/lang/CharSequence;Lcn/hutool/core/date/format/DateParser;)Lcn/hutool/core/date/DateTime;

    move-result-object p0

    return-object p0

    :cond_1
    const/16 v0, 0x18

    if-gt v1, v0, :cond_c

    const/16 v0, 0x16

    if-lt v1, v0, :cond_c

    .line 860
    sget-object v0, Lcn/hutool/core/date/DatePattern;->UTC_MS_FORMAT:Lcn/hutool/core/date/format/FastDateFormat;

    invoke-static {p0, v0}, Lcn/hutool/core/date/DateUtil;->parse(Ljava/lang/CharSequence;Lcn/hutool/core/date/format/DateParser;)Lcn/hutool/core/date/DateTime;

    move-result-object p0

    return-object p0

    :cond_2
    const/16 v2, 0x2b

    .line 862
    invoke-static {p0, v2}, Lcn/hutool/core/util/StrUtil;->contains(Ljava/lang/CharSequence;C)Z

    move-result v5

    const/4 v6, 0x2

    const/16 v7, 0x3a

    const-string v8, "."

    const-string v9, ":00"

    const/16 v10, 0x2e

    if-eqz v5, :cond_6

    const-string v0, " +"

    const-string v1, "+"

    .line 864
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 865
    invoke-static {p0, v2, v4}, Lcn/hutool/core/util/StrUtil;->subAfter(Ljava/lang/CharSequence;CZ)Ljava/lang/String;

    move-result-object v0

    .line 866
    invoke-static {v0}, Lcn/hutool/core/util/StrUtil;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 869
    invoke-static {v0, v7}, Lcn/hutool/core/util/StrUtil;->contains(Ljava/lang/CharSequence;C)Z

    move-result v5

    if-nez v5, :cond_3

    .line 871
    invoke-static {p0, v2, v4}, Lcn/hutool/core/util/StrUtil;->subBefore(Ljava/lang/CharSequence;CZ)Ljava/lang/String;

    move-result-object p0

    .line 872
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {v0, v3, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 875
    :cond_3
    invoke-static {p0, v10}, Lcn/hutool/core/util/StrUtil;->contains(Ljava/lang/CharSequence;C)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 877
    invoke-static {p0, v8, v1}, Lcn/hutool/core/date/DateUtil;->normalizeMillSeconds(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 878
    sget-object v0, Lcn/hutool/core/date/DatePattern;->UTC_MS_WITH_XXX_OFFSET_FORMAT:Lcn/hutool/core/date/format/FastDateFormat;

    invoke-static {p0, v0}, Lcn/hutool/core/date/DateUtil;->parse(Ljava/lang/CharSequence;Lcn/hutool/core/date/format/DateParser;)Lcn/hutool/core/date/DateTime;

    move-result-object p0

    return-object p0

    .line 881
    :cond_4
    sget-object v0, Lcn/hutool/core/date/DatePattern;->UTC_WITH_XXX_OFFSET_FORMAT:Lcn/hutool/core/date/format/FastDateFormat;

    invoke-static {p0, v0}, Lcn/hutool/core/date/DateUtil;->parse(Ljava/lang/CharSequence;Lcn/hutool/core/date/format/DateParser;)Lcn/hutool/core/date/DateTime;

    move-result-object p0

    return-object p0

    .line 867
    :cond_5
    new-instance v0, Lcn/hutool/core/date/DateException;

    new-array v1, v4, [Ljava/lang/Object;

    aput-object p0, v1, v3

    const-string p0, "Invalid format: [{}]"

    invoke-direct {v0, p0, v1}, Lcn/hutool/core/date/DateException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    :cond_6
    const-string v2, "-\\d{2}:?00"

    .line 883
    invoke-static {v2, p0}, Lcn/hutool/core/util/ReUtil;->contains(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_9

    const-string v0, " -"

    const-string v1, "-"

    .line 887
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 888
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x3

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v7, v0, :cond_7

    .line 889
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, v6

    invoke-virtual {p0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 892
    :cond_7
    invoke-static {p0, v10}, Lcn/hutool/core/util/StrUtil;->contains(Ljava/lang/CharSequence;C)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 894
    invoke-static {p0, v8, v1}, Lcn/hutool/core/date/DateUtil;->normalizeMillSeconds(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 895
    new-instance v0, Lcn/hutool/core/date/DateTime;

    sget-object v1, Lcn/hutool/core/date/DatePattern;->UTC_MS_WITH_XXX_OFFSET_FORMAT:Lcn/hutool/core/date/format/FastDateFormat;

    invoke-direct {v0, p0, v1}, Lcn/hutool/core/date/DateTime;-><init>(Ljava/lang/CharSequence;Lcn/hutool/core/date/format/DateParser;)V

    return-object v0

    .line 898
    :cond_8
    new-instance v0, Lcn/hutool/core/date/DateTime;

    sget-object v1, Lcn/hutool/core/date/DatePattern;->UTC_WITH_XXX_OFFSET_FORMAT:Lcn/hutool/core/date/format/FastDateFormat;

    invoke-direct {v0, p0, v1}, Lcn/hutool/core/date/DateTime;-><init>(Ljava/lang/CharSequence;Lcn/hutool/core/date/format/DateParser;)V

    return-object v0

    :cond_9
    const/16 v2, 0x13

    if-ne v1, v2, :cond_a

    .line 903
    sget-object v0, Lcn/hutool/core/date/DatePattern;->UTC_SIMPLE_FORMAT:Lcn/hutool/core/date/format/FastDateFormat;

    invoke-static {p0, v0}, Lcn/hutool/core/date/DateUtil;->parse(Ljava/lang/CharSequence;Lcn/hutool/core/date/format/DateParser;)Lcn/hutool/core/date/DateTime;

    move-result-object p0

    return-object p0

    :cond_a
    const/16 v2, 0x10

    if-ne v1, v2, :cond_b

    .line 906
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sget-object v0, Lcn/hutool/core/date/DatePattern;->UTC_SIMPLE_FORMAT:Lcn/hutool/core/date/format/FastDateFormat;

    invoke-static {p0, v0}, Lcn/hutool/core/date/DateUtil;->parse(Ljava/lang/CharSequence;Lcn/hutool/core/date/format/DateParser;)Lcn/hutool/core/date/DateTime;

    move-result-object p0

    return-object p0

    .line 907
    :cond_b
    invoke-static {p0, v10}, Lcn/hutool/core/util/StrUtil;->contains(Ljava/lang/CharSequence;C)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 909
    invoke-static {p0, v8, v0}, Lcn/hutool/core/date/DateUtil;->normalizeMillSeconds(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 910
    sget-object v0, Lcn/hutool/core/date/DatePattern;->UTC_SIMPLE_MS_FORMAT:Lcn/hutool/core/date/format/FastDateFormat;

    invoke-static {p0, v0}, Lcn/hutool/core/date/DateUtil;->parse(Ljava/lang/CharSequence;Lcn/hutool/core/date/format/DateParser;)Lcn/hutool/core/date/DateTime;

    move-result-object p0

    return-object p0

    .line 914
    :cond_c
    new-instance v0, Lcn/hutool/core/date/DateException;

    new-array v1, v4, [Ljava/lang/Object;

    aput-object p0, v1, v3

    const-string p0, "No format fit for date String [{}] !"

    invoke-direct {v0, p0, v1}, Lcn/hutool/core/date/DateException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0
.end method

.method public static quarter(Ljava/util/Date;)I
    .locals 0

    .line 196
    invoke-static {p0}, Lcn/hutool/core/date/DateTime;->of(Ljava/util/Date;)Lcn/hutool/core/date/DateTime;

    move-result-object p0

    invoke-virtual {p0}, Lcn/hutool/core/date/DateTime;->quarter()I

    move-result p0

    return p0
.end method

.method public static quarterEnum(Ljava/util/Date;)Lcn/hutool/core/date/Quarter;
    .locals 0

    .line 207
    invoke-static {p0}, Lcn/hutool/core/date/DateTime;->of(Ljava/util/Date;)Lcn/hutool/core/date/DateTime;

    move-result-object p0

    invoke-virtual {p0}, Lcn/hutool/core/date/DateTime;->quarterEnum()Lcn/hutool/core/date/Quarter;

    move-result-object p0

    return-object p0
.end method

.method public static range(Ljava/util/Date;Ljava/util/Date;Lcn/hutool/core/date/DateField;)Lcn/hutool/core/date/DateRange;
    .locals 1

    .line 1916
    new-instance v0, Lcn/hutool/core/date/DateRange;

    invoke-direct {v0, p0, p1, p2}, Lcn/hutool/core/date/DateRange;-><init>(Ljava/util/Date;Ljava/util/Date;Lcn/hutool/core/date/DateField;)V

    return-object v0
.end method

.method public static rangeConsume(Ljava/util/Date;Ljava/util/Date;Lcn/hutool/core/date/DateField;Ljava/util/function/Consumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Date;",
            "Ljava/util/Date;",
            "Lcn/hutool/core/date/DateField;",
            "Ljava/util/function/Consumer<",
            "Ljava/util/Date;",
            ">;)V"
        }
    .end annotation

    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    .line 1981
    invoke-virtual {p0, p1}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1984
    :cond_0
    invoke-static {p0, p1, p2}, Lcn/hutool/core/date/DateUtil;->range(Ljava/util/Date;Ljava/util/Date;Lcn/hutool/core/date/DateField;)Lcn/hutool/core/date/DateRange;

    move-result-object p0

    invoke-virtual {p0, p3}, Lcn/hutool/core/date/DateRange;->forEach(Ljava/util/function/Consumer;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static rangeContains(Lcn/hutool/core/date/DateRange;Lcn/hutool/core/date/DateRange;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/hutool/core/date/DateRange;",
            "Lcn/hutool/core/date/DateRange;",
            ")",
            "Ljava/util/List<",
            "Lcn/hutool/core/date/DateTime;",
            ">;"
        }
    .end annotation

    .line 1929
    invoke-static {p0}, Lcn/hutool/core/collection/CollUtil;->newArrayList(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object p0

    .line 1930
    invoke-static {p1}, Lcn/hutool/core/collection/CollUtil;->newArrayList(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object p1

    .line 1931
    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcn/hutool/core/date/DateUtil$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Lcn/hutool/core/date/DateUtil$$ExternalSyntheticLambda0;-><init>(Ljava/util/List;)V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method public static rangeFunc(Ljava/util/Date;Ljava/util/Date;Lcn/hutool/core/date/DateField;Ljava/util/function/Function;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Date;",
            "Ljava/util/Date;",
            "Lcn/hutool/core/date/DateField;",
            "Ljava/util/function/Function<",
            "Ljava/util/Date;",
            "TT;>;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    if-eqz p0, :cond_2

    if-eqz p1, :cond_2

    .line 1961
    invoke-virtual {p0, p1}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 1964
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1965
    invoke-static {p0, p1, p2}, Lcn/hutool/core/date/DateUtil;->range(Ljava/util/Date;Ljava/util/Date;Lcn/hutool/core/date/DateField;)Lcn/hutool/core/date/DateRange;

    move-result-object p0

    invoke-virtual {p0}, Lcn/hutool/core/date/DateRange;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/hutool/core/date/DateTime;

    .line 1966
    invoke-interface {p3, p1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0

    .line 1962
    :cond_2
    :goto_1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static rangeNotContains(Lcn/hutool/core/date/DateRange;Lcn/hutool/core/date/DateRange;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/hutool/core/date/DateRange;",
            "Lcn/hutool/core/date/DateRange;",
            ")",
            "Ljava/util/List<",
            "Lcn/hutool/core/date/DateTime;",
            ">;"
        }
    .end annotation

    .line 1944
    invoke-static {p0}, Lcn/hutool/core/collection/CollUtil;->newArrayList(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object p0

    .line 1945
    invoke-static {p1}, Lcn/hutool/core/collection/CollUtil;->newArrayList(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object p1

    .line 1946
    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lcn/hutool/core/date/DateUtil$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcn/hutool/core/date/DateUtil$$ExternalSyntheticLambda1;-><init>(Ljava/util/List;)V

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method public static rangeToList(Ljava/util/Date;Ljava/util/Date;Lcn/hutool/core/date/DateField;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Date;",
            "Ljava/util/Date;",
            "Lcn/hutool/core/date/DateField;",
            ")",
            "Ljava/util/List<",
            "Lcn/hutool/core/date/DateTime;",
            ">;"
        }
    .end annotation

    .line 1996
    invoke-static {p0, p1, p2}, Lcn/hutool/core/date/DateUtil;->range(Ljava/util/Date;Ljava/util/Date;Lcn/hutool/core/date/DateField;)Lcn/hutool/core/date/DateRange;

    move-result-object p0

    invoke-static {p0}, Lcn/hutool/core/collection/CollUtil;->newArrayList(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public static rangeToList(Ljava/util/Date;Ljava/util/Date;Lcn/hutool/core/date/DateField;I)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Date;",
            "Ljava/util/Date;",
            "Lcn/hutool/core/date/DateField;",
            "I)",
            "Ljava/util/List<",
            "Lcn/hutool/core/date/DateTime;",
            ">;"
        }
    .end annotation

    .line 2010
    new-instance v0, Lcn/hutool/core/date/DateRange;

    invoke-direct {v0, p0, p1, p2, p3}, Lcn/hutool/core/date/DateRange;-><init>(Ljava/util/Date;Ljava/util/Date;Lcn/hutool/core/date/DateField;I)V

    invoke-static {v0}, Lcn/hutool/core/collection/CollUtil;->newArrayList(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public static round(Ljava/util/Date;Lcn/hutool/core/date/DateField;)Lcn/hutool/core/date/DateTime;
    .locals 1

    .line 1054
    new-instance v0, Lcn/hutool/core/date/DateTime;

    invoke-static {p0}, Lcn/hutool/core/date/DateUtil;->calendar(Ljava/util/Date;)Ljava/util/Calendar;

    move-result-object p0

    invoke-static {p0, p1}, Lcn/hutool/core/date/DateUtil;->round(Ljava/util/Calendar;Lcn/hutool/core/date/DateField;)Ljava/util/Calendar;

    move-result-object p0

    invoke-direct {v0, p0}, Lcn/hutool/core/date/DateTime;-><init>(Ljava/util/Calendar;)V

    return-object v0
.end method

.method public static second(Ljava/util/Date;)I
    .locals 0

    .line 337
    invoke-static {p0}, Lcn/hutool/core/date/DateTime;->of(Ljava/util/Date;)Lcn/hutool/core/date/DateTime;

    move-result-object p0

    invoke-virtual {p0}, Lcn/hutool/core/date/DateTime;->second()I

    move-result p0

    return p0
.end method

.method public static secondToTime(I)Ljava/lang/String;
    .locals 5

    if-ltz p0, :cond_3

    .line 1885
    div-int/lit16 v0, p0, 0xe10

    .line 1886
    rem-int/lit16 p0, p0, 0xe10

    .line 1887
    div-int/lit8 v1, p0, 0x3c

    .line 1888
    rem-int/lit8 p0, p0, 0x3c

    .line 1889
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "0"

    const/16 v4, 0xa

    if-ge v0, v4, :cond_0

    .line 1891
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1893
    :cond_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ":"

    .line 1894
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-ge v1, v4, :cond_1

    .line 1896
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1898
    :cond_1
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1899
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-ge p0, v4, :cond_2

    .line 1901
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1903
    :cond_2
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1904
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1882
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Seconds must be a positive number!"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static spendMs(J)J
    .locals 2

    .line 1668
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, p0

    return-wide v0
.end method

.method public static spendNt(J)J
    .locals 2

    .line 1658
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    sub-long/2addr v0, p0

    return-wide v0
.end method

.method public static thisDayOfMonth()I
    .locals 1

    .line 409
    invoke-static {}, Lcn/hutool/core/date/DateUtil;->date()Lcn/hutool/core/date/DateTime;

    move-result-object v0

    invoke-static {v0}, Lcn/hutool/core/date/DateUtil;->dayOfMonth(Ljava/util/Date;)I

    move-result v0

    return v0
.end method

.method public static thisDayOfWeek()I
    .locals 1

    .line 416
    invoke-static {}, Lcn/hutool/core/date/DateUtil;->date()Lcn/hutool/core/date/DateTime;

    move-result-object v0

    invoke-static {v0}, Lcn/hutool/core/date/DateUtil;->dayOfWeek(Ljava/util/Date;)I

    move-result v0

    return v0
.end method

.method public static thisDayOfWeekEnum()Lcn/hutool/core/date/Week;
    .locals 1

    .line 423
    invoke-static {}, Lcn/hutool/core/date/DateUtil;->date()Lcn/hutool/core/date/DateTime;

    move-result-object v0

    invoke-static {v0}, Lcn/hutool/core/date/DateUtil;->dayOfWeekEnum(Ljava/util/Date;)Lcn/hutool/core/date/Week;

    move-result-object v0

    return-object v0
.end method

.method public static thisHour(Z)I
    .locals 1

    .line 431
    invoke-static {}, Lcn/hutool/core/date/DateUtil;->date()Lcn/hutool/core/date/DateTime;

    move-result-object v0

    invoke-static {v0, p0}, Lcn/hutool/core/date/DateUtil;->hour(Ljava/util/Date;Z)I

    move-result p0

    return p0
.end method

.method public static thisMillisecond()I
    .locals 1

    .line 452
    invoke-static {}, Lcn/hutool/core/date/DateUtil;->date()Lcn/hutool/core/date/DateTime;

    move-result-object v0

    invoke-static {v0}, Lcn/hutool/core/date/DateUtil;->millisecond(Ljava/util/Date;)I

    move-result v0

    return v0
.end method

.method public static thisMinute()I
    .locals 1

    .line 438
    invoke-static {}, Lcn/hutool/core/date/DateUtil;->date()Lcn/hutool/core/date/DateTime;

    move-result-object v0

    invoke-static {v0}, Lcn/hutool/core/date/DateUtil;->minute(Ljava/util/Date;)I

    move-result v0

    return v0
.end method

.method public static thisMonth()I
    .locals 1

    .line 381
    invoke-static {}, Lcn/hutool/core/date/DateUtil;->date()Lcn/hutool/core/date/DateTime;

    move-result-object v0

    invoke-static {v0}, Lcn/hutool/core/date/DateUtil;->month(Ljava/util/Date;)I

    move-result v0

    return v0
.end method

.method public static thisMonthEnum()Lcn/hutool/core/date/Month;
    .locals 1

    .line 388
    invoke-static {}, Lcn/hutool/core/date/DateUtil;->date()Lcn/hutool/core/date/DateTime;

    move-result-object v0

    invoke-static {v0}, Lcn/hutool/core/date/DateUtil;->monthEnum(Ljava/util/Date;)Lcn/hutool/core/date/Month;

    move-result-object v0

    return-object v0
.end method

.method public static thisSecond()I
    .locals 1

    .line 445
    invoke-static {}, Lcn/hutool/core/date/DateUtil;->date()Lcn/hutool/core/date/DateTime;

    move-result-object v0

    invoke-static {v0}, Lcn/hutool/core/date/DateUtil;->second(Ljava/util/Date;)I

    move-result v0

    return v0
.end method

.method public static thisWeekOfMonth()I
    .locals 1

    .line 402
    invoke-static {}, Lcn/hutool/core/date/DateUtil;->date()Lcn/hutool/core/date/DateTime;

    move-result-object v0

    invoke-static {v0}, Lcn/hutool/core/date/DateUtil;->weekOfMonth(Ljava/util/Date;)I

    move-result v0

    return v0
.end method

.method public static thisWeekOfYear()I
    .locals 1

    .line 395
    invoke-static {}, Lcn/hutool/core/date/DateUtil;->date()Lcn/hutool/core/date/DateTime;

    move-result-object v0

    invoke-static {v0}, Lcn/hutool/core/date/DateUtil;->weekOfYear(Ljava/util/Date;)I

    move-result v0

    return v0
.end method

.method public static thisYear()I
    .locals 1

    .line 374
    invoke-static {}, Lcn/hutool/core/date/DateUtil;->date()Lcn/hutool/core/date/DateTime;

    move-result-object v0

    invoke-static {v0}, Lcn/hutool/core/date/DateUtil;->year(Ljava/util/Date;)I

    move-result v0

    return v0
.end method

.method public static timeToSecond(Ljava/lang/String;)I
    .locals 11

    .line 1858
    invoke-static {p0}, Lcn/hutool/core/util/StrUtil;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/16 v0, 0x3a

    const/4 v2, 0x3

    .line 1862
    invoke-static {p0, v0, v2}, Lcn/hutool/core/util/StrUtil;->splitTrim(Ljava/lang/CharSequence;CI)Ljava/util/List;

    move-result-object p0

    .line 1863
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v2, v0

    :goto_0
    if-ltz v2, :cond_1

    int-to-double v3, v1

    .line 1867
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    int-to-double v5, v1

    sub-int v1, v0, v2

    int-to-double v7, v1

    const-wide/high16 v9, 0x404e000000000000L    # 60.0

    invoke-static {v9, v10, v7, v8}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v7

    mul-double/2addr v5, v7

    add-double/2addr v3, v5

    double-to-int v1, v3

    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public static timer()Lcn/hutool/core/date/TimeInterval;
    .locals 1

    .line 1690
    new-instance v0, Lcn/hutool/core/date/TimeInterval;

    invoke-direct {v0}, Lcn/hutool/core/date/TimeInterval;-><init>()V

    return-object v0
.end method

.method public static timer(Z)Lcn/hutool/core/date/TimeInterval;
    .locals 1

    .line 1703
    new-instance v0, Lcn/hutool/core/date/TimeInterval;

    invoke-direct {v0, p0}, Lcn/hutool/core/date/TimeInterval;-><init>(Z)V

    return-object v0
.end method

.method public static toInstant(Ljava/time/temporal/TemporalAccessor;)Ljava/time/Instant;
    .locals 0

    .line 2111
    invoke-static {p0}, Lcn/hutool/core/date/TemporalAccessorUtil;->toInstant(Ljava/time/temporal/TemporalAccessor;)Ljava/time/Instant;

    move-result-object p0

    return-object p0
.end method

.method public static toInstant(Ljava/util/Date;)Ljava/time/Instant;
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 2100
    :cond_0
    invoke-virtual {p0}, Ljava/util/Date;->toInstant()Ljava/time/Instant;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static toIntSecond(Ljava/util/Date;)I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, "yyMMddHHmm"

    .line 1680
    invoke-static {p0, v0}, Lcn/hutool/core/date/DateUtil;->format(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static toLocalDateTime(Ljava/time/Instant;)Ljava/time/LocalDateTime;
    .locals 0

    .line 2123
    invoke-static {p0}, Lcn/hutool/core/date/LocalDateTimeUtil;->of(Ljava/time/Instant;)Ljava/time/LocalDateTime;

    move-result-object p0

    return-object p0
.end method

.method public static toLocalDateTime(Ljava/util/Date;)Ljava/time/LocalDateTime;
    .locals 0

    .line 2135
    invoke-static {p0}, Lcn/hutool/core/date/LocalDateTimeUtil;->of(Ljava/util/Date;)Ljava/time/LocalDateTime;

    move-result-object p0

    return-object p0
.end method

.method public static today()Ljava/lang/String;
    .locals 1

    .line 173
    new-instance v0, Lcn/hutool/core/date/DateTime;

    invoke-direct {v0}, Lcn/hutool/core/date/DateTime;-><init>()V

    invoke-static {v0}, Lcn/hutool/core/date/DateUtil;->formatDate(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static tomorrow()Lcn/hutool/core/date/DateTime;
    .locals 2

    .line 1290
    new-instance v0, Lcn/hutool/core/date/DateTime;

    invoke-direct {v0}, Lcn/hutool/core/date/DateTime;-><init>()V

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcn/hutool/core/date/DateUtil;->offsetDay(Ljava/util/Date;I)Lcn/hutool/core/date/DateTime;

    move-result-object v0

    return-object v0
.end method

.method public static truncate(Ljava/util/Date;Lcn/hutool/core/date/DateField;)Lcn/hutool/core/date/DateTime;
    .locals 1

    .line 1042
    new-instance v0, Lcn/hutool/core/date/DateTime;

    invoke-static {p0}, Lcn/hutool/core/date/DateUtil;->calendar(Ljava/util/Date;)Ljava/util/Calendar;

    move-result-object p0

    invoke-static {p0, p1}, Lcn/hutool/core/date/DateUtil;->truncate(Ljava/util/Calendar;Lcn/hutool/core/date/DateField;)Ljava/util/Calendar;

    move-result-object p0

    invoke-direct {v0, p0}, Lcn/hutool/core/date/DateTime;-><init>(Ljava/util/Calendar;)V

    return-object v0
.end method

.method public static weekOfMonth(Ljava/util/Date;)I
    .locals 0

    .line 252
    invoke-static {p0}, Lcn/hutool/core/date/DateTime;->of(Ljava/util/Date;)Lcn/hutool/core/date/DateTime;

    move-result-object p0

    invoke-virtual {p0}, Lcn/hutool/core/date/DateTime;->weekOfMonth()I

    move-result p0

    return p0
.end method

.method public static weekOfYear(Ljava/util/Date;)I
    .locals 0

    .line 242
    invoke-static {p0}, Lcn/hutool/core/date/DateTime;->of(Ljava/util/Date;)Lcn/hutool/core/date/DateTime;

    move-result-object p0

    invoke-virtual {p0}, Lcn/hutool/core/date/DateTime;->weekOfYear()I

    move-result p0

    return p0
.end method

.method public static year(Ljava/util/Date;)I
    .locals 0

    .line 185
    invoke-static {p0}, Lcn/hutool/core/date/DateTime;->of(Ljava/util/Date;)Lcn/hutool/core/date/DateTime;

    move-result-object p0

    invoke-virtual {p0}, Lcn/hutool/core/date/DateTime;->year()I

    move-result p0

    return p0
.end method

.method public static yearAndQuarter(Ljava/util/Date;)Ljava/lang/String;
    .locals 0

    .line 464
    invoke-static {p0}, Lcn/hutool/core/date/DateUtil;->calendar(Ljava/util/Date;)Ljava/util/Calendar;

    move-result-object p0

    invoke-static {p0}, Lcn/hutool/core/date/DateUtil;->yearAndQuarter(Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static yearAndQuarter(Ljava/util/Date;Ljava/util/Date;)Ljava/util/LinkedHashSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Date;",
            "Ljava/util/Date;",
            ")",
            "Ljava/util/LinkedHashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 478
    :cond_0
    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide p0

    invoke-static {v0, v1, p0, p1}, Lcn/hutool/core/date/DateUtil;->yearAndQuarter(JJ)Ljava/util/LinkedHashSet;

    move-result-object p0

    return-object p0

    .line 476
    :cond_1
    :goto_0
    new-instance p0, Ljava/util/LinkedHashSet;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ljava/util/LinkedHashSet;-><init>(I)V

    return-object p0
.end method

.method public static yesterday()Lcn/hutool/core/date/DateTime;
    .locals 2

    .line 1280
    new-instance v0, Lcn/hutool/core/date/DateTime;

    invoke-direct {v0}, Lcn/hutool/core/date/DateTime;-><init>()V

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcn/hutool/core/date/DateUtil;->offsetDay(Ljava/util/Date;I)Lcn/hutool/core/date/DateTime;

    move-result-object v0

    return-object v0
.end method
