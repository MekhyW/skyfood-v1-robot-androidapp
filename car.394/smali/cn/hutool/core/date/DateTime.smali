.class public Lcn/hutool/core/date/DateTime;
.super Ljava/util/Date;
.source "DateTime.java"


# static fields
.field private static final serialVersionUID:J = -0x4ae16c043a3b1b10L

.field private static useJdkToStringStyle:Z = false


# instance fields
.field private firstDayOfWeek:Lcn/hutool/core/date/Week;

.field private minimalDaysInFirstWeek:I

.field private mutable:Z

.field private timeZone:Ljava/util/TimeZone;


# direct methods
.method public static synthetic $r8$lambda$8r0-ELZPUqou3wbMyDOOk29-Lx0()Ljava/util/TimeZone;
    .locals 1

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 130
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    invoke-direct {p0, v0}, Lcn/hutool/core/date/DateTime;-><init>(Ljava/util/TimeZone;)V

    return-void
.end method

.method public constructor <init>(J)V
    .locals 1

    .line 224
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcn/hutool/core/date/DateTime;-><init>(JLjava/util/TimeZone;)V

    return-void
.end method

.method public constructor <init>(JLjava/util/TimeZone;)V
    .locals 0

    .line 235
    invoke-direct {p0, p1, p2}, Ljava/util/Date;-><init>(J)V

    const/4 p1, 0x1

    .line 54
    iput-boolean p1, p0, Lcn/hutool/core/date/DateTime;->mutable:Z

    .line 58
    sget-object p1, Lcn/hutool/core/date/Week;->MONDAY:Lcn/hutool/core/date/Week;

    iput-object p1, p0, Lcn/hutool/core/date/DateTime;->firstDayOfWeek:Lcn/hutool/core/date/Week;

    .line 236
    new-instance p1, Lcn/hutool/core/date/DateTime$$ExternalSyntheticLambda0;

    invoke-direct {p1}, Lcn/hutool/core/date/DateTime$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {p3, p1}, Lcn/hutool/core/util/ObjectUtil;->defaultIfNull(Ljava/lang/Object;Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/TimeZone;

    iput-object p1, p0, Lcn/hutool/core/date/DateTime;->timeZone:Ljava/util/TimeZone;

    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;)V
    .locals 0

    .line 268
    invoke-static {p1}, Lcn/hutool/core/date/DateUtil;->parse(Ljava/lang/CharSequence;)Lcn/hutool/core/date/DateTime;

    move-result-object p1

    invoke-direct {p0, p1}, Lcn/hutool/core/date/DateTime;-><init>(Ljava/util/Date;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Lcn/hutool/core/date/format/DateParser;)V
    .locals 2

    .line 314
    sget-object v0, Lcn/hutool/core/util/SystemPropsUtil;->HUTOOL_DATE_LENIENT:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcn/hutool/core/util/SystemPropsUtil;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Lcn/hutool/core/date/DateTime;-><init>(Ljava/lang/CharSequence;Lcn/hutool/core/date/format/DateParser;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Lcn/hutool/core/date/format/DateParser;Z)V
    .locals 0

    .line 326
    invoke-static {p1, p2, p3}, Lcn/hutool/core/date/DateTime;->parse(Ljava/lang/CharSequence;Lcn/hutool/core/date/format/DateParser;Z)Ljava/util/Calendar;

    move-result-object p1

    invoke-direct {p0, p1}, Lcn/hutool/core/date/DateTime;-><init>(Ljava/util/Calendar;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Ljava/lang/String;)V
    .locals 1

    .line 279
    invoke-static {p2}, Lcn/hutool/core/date/format/GlobalCustomFormat;->isCustomFormat(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 280
    invoke-static {p1, p2}, Lcn/hutool/core/date/format/GlobalCustomFormat;->parse(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/util/Date;

    move-result-object p1

    goto :goto_0

    .line 281
    :cond_0
    invoke-static {p2}, Lcn/hutool/core/date/DateUtil;->newSimpleFormat(Ljava/lang/String;)Ljava/text/SimpleDateFormat;

    move-result-object p2

    invoke-static {p1, p2}, Lcn/hutool/core/date/DateTime;->parse(Ljava/lang/CharSequence;Ljava/text/DateFormat;)Ljava/util/Date;

    move-result-object p1

    .line 279
    :goto_0
    invoke-direct {p0, p1}, Lcn/hutool/core/date/DateTime;-><init>(Ljava/util/Date;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Ljava/text/DateFormat;)V
    .locals 0

    .line 292
    invoke-static {p1, p2}, Lcn/hutool/core/date/DateTime;->parse(Ljava/lang/CharSequence;Ljava/text/DateFormat;)Ljava/util/Date;

    move-result-object p1

    invoke-virtual {p2}, Ljava/text/DateFormat;->getTimeZone()Ljava/util/TimeZone;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcn/hutool/core/date/DateTime;-><init>(Ljava/util/Date;Ljava/util/TimeZone;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Ljava/time/format/DateTimeFormatter;)V
    .locals 0

    .line 303
    invoke-virtual {p2, p1}, Ljava/time/format/DateTimeFormatter;->parse(Ljava/lang/CharSequence;)Ljava/time/temporal/TemporalAccessor;

    move-result-object p1

    invoke-static {p1}, Lcn/hutool/core/date/TemporalAccessorUtil;->toInstant(Ljava/time/temporal/TemporalAccessor;)Ljava/time/Instant;

    move-result-object p1

    invoke-virtual {p2}, Ljava/time/format/DateTimeFormatter;->getZone()Ljava/time/ZoneId;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcn/hutool/core/date/DateTime;-><init>(Ljava/time/Instant;Ljava/time/ZoneId;)V

    return-void
.end method

.method public constructor <init>(Ljava/time/Instant;)V
    .locals 2

    .line 183
    invoke-virtual {p1}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcn/hutool/core/date/DateTime;-><init>(J)V

    return-void
.end method

.method public constructor <init>(Ljava/time/Instant;Ljava/time/ZoneId;)V
    .locals 2

    .line 194
    invoke-virtual {p1}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v0

    invoke-static {p2}, Lcn/hutool/core/date/ZoneUtil;->toTimeZone(Ljava/time/ZoneId;)Ljava/util/TimeZone;

    move-result-object p1

    invoke-direct {p0, v0, v1, p1}, Lcn/hutool/core/date/DateTime;-><init>(JLjava/util/TimeZone;)V

    return-void
.end method

.method public constructor <init>(Ljava/time/ZonedDateTime;)V
    .locals 1

    .line 214
    invoke-virtual {p1}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object v0

    invoke-virtual {p1}, Ljava/time/ZonedDateTime;->getZone()Ljava/time/ZoneId;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcn/hutool/core/date/DateTime;-><init>(Ljava/time/Instant;Ljava/time/ZoneId;)V

    return-void
.end method

.method public constructor <init>(Ljava/time/temporal/TemporalAccessor;)V
    .locals 0

    .line 204
    invoke-static {p1}, Lcn/hutool/core/date/TemporalAccessorUtil;->toInstant(Ljava/time/temporal/TemporalAccessor;)Ljava/time/Instant;

    move-result-object p1

    invoke-direct {p0, p1}, Lcn/hutool/core/date/DateTime;-><init>(Ljava/time/Instant;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Calendar;)V
    .locals 2

    .line 172
    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcn/hutool/core/date/DateTime;-><init>(Ljava/util/Date;Ljava/util/TimeZone;)V

    .line 173
    invoke-virtual {p1}, Ljava/util/Calendar;->getFirstDayOfWeek()I

    move-result p1

    invoke-static {p1}, Lcn/hutool/core/date/Week;->of(I)Lcn/hutool/core/date/Week;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcn/hutool/core/date/DateTime;->setFirstDayOfWeek(Lcn/hutool/core/date/Week;)Lcn/hutool/core/date/DateTime;

    return-void
.end method

.method public constructor <init>(Ljava/util/Date;)V
    .locals 1

    .line 149
    instance-of v0, p1, Lcn/hutool/core/date/DateTime;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcn/hutool/core/date/DateTime;

    iget-object v0, v0, Lcn/hutool/core/date/DateTime;->timeZone:Ljava/util/TimeZone;

    goto :goto_0

    .line 151
    :cond_0
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    .line 149
    :goto_0
    invoke-direct {p0, p1, v0}, Lcn/hutool/core/date/DateTime;-><init>(Ljava/util/Date;Ljava/util/TimeZone;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Date;Ljava/util/TimeZone;)V
    .locals 2

    .line 163
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-static {p1, v0}, Lcn/hutool/core/util/ObjectUtil;->defaultIfNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Date;

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p2}, Lcn/hutool/core/date/DateTime;-><init>(JLjava/util/TimeZone;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/TimeZone;)V
    .locals 2

    .line 140
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p1}, Lcn/hutool/core/date/DateTime;-><init>(JLjava/util/TimeZone;)V

    return-void
.end method

.method public static now()Lcn/hutool/core/date/DateTime;
    .locals 1

    .line 121
    new-instance v0, Lcn/hutool/core/date/DateTime;

    invoke-direct {v0}, Lcn/hutool/core/date/DateTime;-><init>()V

    return-object v0
.end method

.method public static of(J)Lcn/hutool/core/date/DateTime;
    .locals 1

    .line 77
    new-instance v0, Lcn/hutool/core/date/DateTime;

    invoke-direct {v0, p0, p1}, Lcn/hutool/core/date/DateTime;-><init>(J)V

    return-object v0
.end method

.method public static of(Ljava/lang/String;Ljava/lang/String;)Lcn/hutool/core/date/DateTime;
    .locals 1

    .line 112
    new-instance v0, Lcn/hutool/core/date/DateTime;

    invoke-direct {v0, p0, p1}, Lcn/hutool/core/date/DateTime;-><init>(Ljava/lang/CharSequence;Ljava/lang/String;)V

    return-object v0
.end method

.method public static of(Ljava/util/Calendar;)Lcn/hutool/core/date/DateTime;
    .locals 1

    .line 100
    new-instance v0, Lcn/hutool/core/date/DateTime;

    invoke-direct {v0, p0}, Lcn/hutool/core/date/DateTime;-><init>(Ljava/util/Calendar;)V

    return-object v0
.end method

.method public static of(Ljava/util/Date;)Lcn/hutool/core/date/DateTime;
    .locals 1

    .line 87
    instance-of v0, p0, Lcn/hutool/core/date/DateTime;

    if-eqz v0, :cond_0

    .line 88
    check-cast p0, Lcn/hutool/core/date/DateTime;

    return-object p0

    .line 90
    :cond_0
    new-instance v0, Lcn/hutool/core/date/DateTime;

    invoke-direct {v0, p0}, Lcn/hutool/core/date/DateTime;-><init>(Ljava/util/Date;)V

    return-object v0
.end method

.method private static parse(Ljava/lang/CharSequence;Lcn/hutool/core/date/format/DateParser;Z)Ljava/util/Calendar;
    .locals 3

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "Parser or DateFromat must be not null !"

    .line 1109
    invoke-static {p1, v2, v1}, Lcn/hutool/core/lang/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "Date String must be not blank !"

    new-array v2, v0, [Ljava/lang/Object;

    .line 1110
    invoke-static {p0, v1, v2}, Lcn/hutool/core/lang/Assert;->notBlank(Ljava/lang/CharSequence;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/CharSequence;

    .line 1112
    invoke-static {p0, p2, p1}, Lcn/hutool/core/date/CalendarUtil;->parse(Ljava/lang/CharSequence;ZLcn/hutool/core/date/format/DateParser;)Ljava/util/Calendar;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 1118
    sget-object p0, Lcn/hutool/core/date/Week;->MONDAY:Lcn/hutool/core/date/Week;

    invoke-virtual {p0}, Lcn/hutool/core/date/Week;->getValue()I

    move-result p0

    invoke-virtual {p2, p0}, Ljava/util/Calendar;->setFirstDayOfWeek(I)V

    return-object p2

    .line 1114
    :cond_0
    new-instance p2, Lcn/hutool/core/date/DateException;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p0, v1, v0

    const/4 p0, 0x1

    invoke-interface {p1}, Lcn/hutool/core/date/format/DateParser;->getPattern()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, p0

    const-string p0, "Parse [{}] with format [{}] error!"

    invoke-direct {p2, p0, v1}, Lcn/hutool/core/date/DateException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p2
.end method

.method private static parse(Ljava/lang/CharSequence;Ljava/text/DateFormat;)Ljava/util/Date;
    .locals 4

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "Date String must be not blank !"

    .line 1086
    invoke-static {p0, v2, v1}, Lcn/hutool/core/lang/Assert;->notBlank(Ljava/lang/CharSequence;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/CharSequence;

    .line 1088
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception v1

    .line 1091
    instance-of v2, p1, Ljava/text/SimpleDateFormat;

    if-eqz v2, :cond_0

    .line 1092
    check-cast p1, Ljava/text/SimpleDateFormat;

    invoke-virtual {p1}, Ljava/text/SimpleDateFormat;->toPattern()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 1094
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1096
    :goto_0
    new-instance v2, Lcn/hutool/core/date/DateException;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p0, v3, v0

    const/4 p0, 0x1

    aput-object p1, v3, p0

    const-string p0, "Parse [{}] with format [{}] error!"

    invoke-static {p0, v3}, Lcn/hutool/core/util/StrUtil;->format(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, p0, v1}, Lcn/hutool/core/date/DateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method private setTimeInternal(J)Lcn/hutool/core/date/DateTime;
    .locals 0

    .line 1129
    invoke-super {p0, p1, p2}, Ljava/util/Date;->setTime(J)V

    return-object p0
.end method

.method public static setUseJdkToStringStyle(Z)V
    .locals 0

    .line 48
    sput-boolean p0, Lcn/hutool/core/date/DateTime;->useJdkToStringStyle:Z

    return-void
.end method


# virtual methods
.method public between(Ljava/util/Date;Lcn/hutool/core/date/DateUnit;)J
    .locals 1

    .line 760
    new-instance v0, Lcn/hutool/core/date/DateBetween;

    invoke-direct {v0, p0, p1}, Lcn/hutool/core/date/DateBetween;-><init>(Ljava/util/Date;Ljava/util/Date;)V

    invoke-virtual {v0, p2}, Lcn/hutool/core/date/DateBetween;->between(Lcn/hutool/core/date/DateUnit;)J

    move-result-wide p1

    return-wide p1
.end method

.method public between(Ljava/util/Date;)Lcn/hutool/core/date/DateBetween;
    .locals 1

    .line 749
    new-instance v0, Lcn/hutool/core/date/DateBetween;

    invoke-direct {v0, p0, p1}, Lcn/hutool/core/date/DateBetween;-><init>(Ljava/util/Date;Ljava/util/Date;)V

    return-object v0
.end method

.method public between(Ljava/util/Date;Lcn/hutool/core/date/DateUnit;Lcn/hutool/core/date/BetweenFormatter$Level;)Ljava/lang/String;
    .locals 1

    .line 772
    new-instance v0, Lcn/hutool/core/date/DateBetween;

    invoke-direct {v0, p0, p1}, Lcn/hutool/core/date/DateBetween;-><init>(Ljava/util/Date;Ljava/util/Date;)V

    invoke-virtual {v0, p2, p3}, Lcn/hutool/core/date/DateBetween;->toString(Lcn/hutool/core/date/DateUnit;Lcn/hutool/core/date/BetweenFormatter$Level;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public dayOfMonth()I
    .locals 1

    .line 534
    sget-object v0, Lcn/hutool/core/date/DateField;->DAY_OF_MONTH:Lcn/hutool/core/date/DateField;

    invoke-virtual {p0, v0}, Lcn/hutool/core/date/DateTime;->getField(Lcn/hutool/core/date/DateField;)I

    move-result v0

    return v0
.end method

.method public dayOfWeek()I
    .locals 1

    .line 553
    sget-object v0, Lcn/hutool/core/date/DateField;->DAY_OF_WEEK:Lcn/hutool/core/date/DateField;

    invoke-virtual {p0, v0}, Lcn/hutool/core/date/DateTime;->getField(Lcn/hutool/core/date/DateField;)I

    move-result v0

    return v0
.end method

.method public dayOfWeekEnum()Lcn/hutool/core/date/Week;
    .locals 1

    .line 571
    invoke-virtual {p0}, Lcn/hutool/core/date/DateTime;->dayOfWeek()I

    move-result v0

    invoke-static {v0}, Lcn/hutool/core/date/Week;->of(I)Lcn/hutool/core/date/Week;

    move-result-object v0

    return-object v0
.end method

.method public dayOfWeekInMonth()I
    .locals 1

    .line 562
    sget-object v0, Lcn/hutool/core/date/DateField;->DAY_OF_WEEK_IN_MONTH:Lcn/hutool/core/date/DateField;

    invoke-virtual {p0, v0}, Lcn/hutool/core/date/DateTime;->getField(Lcn/hutool/core/date/DateField;)I

    move-result v0

    return v0
.end method

.method public dayOfYear()I
    .locals 1

    .line 544
    sget-object v0, Lcn/hutool/core/date/DateField;->DAY_OF_YEAR:Lcn/hutool/core/date/DateField;

    invoke-virtual {p0, v0}, Lcn/hutool/core/date/DateTime;->getField(Lcn/hutool/core/date/DateField;)I

    move-result v0

    return v0
.end method

.method public getField(I)I
    .locals 1

    .line 393
    invoke-virtual {p0}, Lcn/hutool/core/date/DateTime;->toCalendar()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/Calendar;->get(I)I

    move-result p1

    return p1
.end method

.method public getField(Lcn/hutool/core/date/DateField;)I
    .locals 0

    .line 382
    invoke-virtual {p1}, Lcn/hutool/core/date/DateField;->getValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcn/hutool/core/date/DateTime;->getField(I)I

    move-result p1

    return p1
.end method

.method public getFirstDayOfWeek()Lcn/hutool/core/date/Week;
    .locals 1

    .line 887
    iget-object v0, p0, Lcn/hutool/core/date/DateTime;->firstDayOfWeek:Lcn/hutool/core/date/Week;

    return-object v0
.end method

.method public getLastDayOfMonth()I
    .locals 2

    .line 964
    invoke-virtual {p0}, Lcn/hutool/core/date/DateTime;->monthEnum()Lcn/hutool/core/date/Month;

    move-result-object v0

    invoke-virtual {p0}, Lcn/hutool/core/date/DateTime;->isLeapYear()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcn/hutool/core/date/Month;->getLastDay(Z)I

    move-result v0

    return v0
.end method

.method public getTimeZone()Ljava/util/TimeZone;
    .locals 1

    .line 912
    iget-object v0, p0, Lcn/hutool/core/date/DateTime;->timeZone:Ljava/util/TimeZone;

    return-object v0
.end method

.method public getZoneId()Ljava/time/ZoneId;
    .locals 1

    .line 922
    iget-object v0, p0, Lcn/hutool/core/date/DateTime;->timeZone:Ljava/util/TimeZone;

    invoke-virtual {v0}, Ljava/util/TimeZone;->toZoneId()Ljava/time/ZoneId;

    move-result-object v0

    return-object v0
.end method

.method public hour(Z)I
    .locals 0

    if-eqz p1, :cond_0

    .line 581
    sget-object p1, Lcn/hutool/core/date/DateField;->HOUR_OF_DAY:Lcn/hutool/core/date/DateField;

    goto :goto_0

    :cond_0
    sget-object p1, Lcn/hutool/core/date/DateField;->HOUR:Lcn/hutool/core/date/DateField;

    :goto_0
    invoke-virtual {p0, p1}, Lcn/hutool/core/date/DateTime;->getField(Lcn/hutool/core/date/DateField;)I

    move-result p1

    return p1
.end method

.method public isAM()Z
    .locals 1

    .line 618
    sget-object v0, Lcn/hutool/core/date/DateField;->AM_PM:Lcn/hutool/core/date/DateField;

    invoke-virtual {p0, v0}, Lcn/hutool/core/date/DateTime;->getField(Lcn/hutool/core/date/DateField;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isAfter(Ljava/util/Date;)Z
    .locals 1

    if-eqz p1, :cond_1

    .line 831
    invoke-virtual {p0, p1}, Lcn/hutool/core/date/DateTime;->compareTo(Ljava/util/Date;)I

    move-result p1

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1

    .line 829
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Date to compare is null !"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public isAfterOrEquals(Ljava/util/Date;)Z
    .locals 1

    if-eqz p1, :cond_1

    .line 845
    invoke-virtual {p0, p1}, Lcn/hutool/core/date/DateTime;->compareTo(Ljava/util/Date;)I

    move-result p1

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1

    .line 843
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Date to compare is null !"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public isBefore(Ljava/util/Date;)Z
    .locals 1

    if-eqz p1, :cond_1

    .line 803
    invoke-virtual {p0, p1}, Lcn/hutool/core/date/DateTime;->compareTo(Ljava/util/Date;)I

    move-result p1

    if-gez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1

    .line 801
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Date to compare is null !"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public isBeforeOrEquals(Ljava/util/Date;)Z
    .locals 1

    if-eqz p1, :cond_1

    .line 817
    invoke-virtual {p0, p1}, Lcn/hutool/core/date/DateTime;->compareTo(Ljava/util/Date;)I

    move-result p1

    if-gtz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1

    .line 815
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Date to compare is null !"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public isIn(Ljava/util/Date;Ljava/util/Date;)Z
    .locals 6

    .line 785
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    .line 786
    invoke-virtual {p2}, Ljava/util/Date;->getTime()J

    move-result-wide p1

    .line 787
    invoke-virtual {p0}, Lcn/hutool/core/date/DateTime;->getTime()J

    move-result-wide v2

    .line 789
    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    cmp-long v4, v2, v4

    if-ltz v4, :cond_0

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    cmp-long p1, v2, p1

    if-gtz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isLastDayOfMonth()Z
    .locals 2

    .line 955
    invoke-virtual {p0}, Lcn/hutool/core/date/DateTime;->dayOfMonth()I

    move-result v0

    invoke-virtual {p0}, Lcn/hutool/core/date/DateTime;->getLastDayOfMonth()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isLeapYear()Z
    .locals 1

    .line 649
    invoke-virtual {p0}, Lcn/hutool/core/date/DateTime;->year()I

    move-result v0

    invoke-static {v0}, Lcn/hutool/core/date/DateUtil;->isLeapYear(I)Z

    move-result v0

    return v0
.end method

.method public isMutable()Z
    .locals 1

    .line 861
    iget-boolean v0, p0, Lcn/hutool/core/date/DateTime;->mutable:Z

    return v0
.end method

.method public isPM()Z
    .locals 2

    .line 627
    sget-object v0, Lcn/hutool/core/date/DateField;->AM_PM:Lcn/hutool/core/date/DateField;

    invoke-virtual {p0, v0}, Lcn/hutool/core/date/DateTime;->getField(Lcn/hutool/core/date/DateField;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isWeekend()Z
    .locals 3

    .line 637
    invoke-virtual {p0}, Lcn/hutool/core/date/DateTime;->dayOfWeek()I

    move-result v0

    const/4 v1, 0x7

    const/4 v2, 0x1

    if-eq v1, v0, :cond_1

    if-ne v2, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :cond_1
    :goto_0
    return v2
.end method

.method public millisecond()I
    .locals 1

    .line 609
    sget-object v0, Lcn/hutool/core/date/DateField;->MILLISECOND:Lcn/hutool/core/date/DateField;

    invoke-virtual {p0, v0}, Lcn/hutool/core/date/DateTime;->getField(Lcn/hutool/core/date/DateField;)I

    move-result v0

    return v0
.end method

.method public minute()I
    .locals 1

    .line 591
    sget-object v0, Lcn/hutool/core/date/DateField;->MINUTE:Lcn/hutool/core/date/DateField;

    invoke-virtual {p0, v0}, Lcn/hutool/core/date/DateTime;->getField(Lcn/hutool/core/date/DateField;)I

    move-result v0

    return v0
.end method

.method public month()I
    .locals 1

    .line 469
    sget-object v0, Lcn/hutool/core/date/DateField;->MONTH:Lcn/hutool/core/date/DateField;

    invoke-virtual {p0, v0}, Lcn/hutool/core/date/DateTime;->getField(Lcn/hutool/core/date/DateField;)I

    move-result v0

    return v0
.end method

.method public monthBaseOne()I
    .locals 1

    .line 479
    invoke-virtual {p0}, Lcn/hutool/core/date/DateTime;->month()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public monthEnum()Lcn/hutool/core/date/Month;
    .locals 1

    .line 498
    invoke-virtual {p0}, Lcn/hutool/core/date/DateTime;->month()I

    move-result v0

    invoke-static {v0}, Lcn/hutool/core/date/Month;->of(I)Lcn/hutool/core/date/Month;

    move-result-object v0

    return-object v0
.end method

.method public monthStartFromOne()I
    .locals 1

    .line 489
    invoke-virtual {p0}, Lcn/hutool/core/date/DateTime;->month()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public offset(Lcn/hutool/core/date/DateField;I)Lcn/hutool/core/date/DateTime;
    .locals 2

    .line 342
    sget-object v0, Lcn/hutool/core/date/DateField;->ERA:Lcn/hutool/core/date/DateField;

    if-eq v0, p1, :cond_1

    .line 346
    invoke-virtual {p0}, Lcn/hutool/core/date/DateTime;->toCalendar()Ljava/util/Calendar;

    move-result-object v0

    .line 348
    invoke-virtual {p1}, Lcn/hutool/core/date/DateField;->getValue()I

    move-result p1

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->add(II)V

    .line 350
    iget-boolean p1, p0, Lcn/hutool/core/date/DateTime;->mutable:Z

    if-eqz p1, :cond_0

    move-object p1, p0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcn/hutool/core/util/ObjectUtil;->clone(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/hutool/core/date/DateTime;

    .line 351
    :goto_0
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    invoke-direct {p1, v0, v1}, Lcn/hutool/core/date/DateTime;->setTimeInternal(J)Lcn/hutool/core/date/DateTime;

    move-result-object p1

    return-object p1

    .line 343
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "ERA is not support offset!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public offsetNew(Lcn/hutool/core/date/DateField;I)Lcn/hutool/core/date/DateTime;
    .locals 2

    .line 364
    invoke-virtual {p0}, Lcn/hutool/core/date/DateTime;->toCalendar()Ljava/util/Calendar;

    move-result-object v0

    .line 366
    invoke-virtual {p1}, Lcn/hutool/core/date/DateField;->getValue()I

    move-result p1

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->add(II)V

    .line 368
    invoke-static {p0}, Lcn/hutool/core/util/ObjectUtil;->clone(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/hutool/core/date/DateTime;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    invoke-direct {p1, v0, v1}, Lcn/hutool/core/date/DateTime;->setTimeInternal(J)Lcn/hutool/core/date/DateTime;

    move-result-object p1

    return-object p1
.end method

.method public quarter()I
    .locals 1

    .line 451
    invoke-virtual {p0}, Lcn/hutool/core/date/DateTime;->month()I

    move-result v0

    div-int/lit8 v0, v0, 0x3

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public quarterEnum()Lcn/hutool/core/date/Quarter;
    .locals 1

    .line 460
    invoke-virtual {p0}, Lcn/hutool/core/date/DateTime;->quarter()I

    move-result v0

    invoke-static {v0}, Lcn/hutool/core/date/Quarter;->of(I)Lcn/hutool/core/date/Quarter;

    move-result-object v0

    return-object v0
.end method

.method public second()I
    .locals 1

    .line 600
    sget-object v0, Lcn/hutool/core/date/DateField;->SECOND:Lcn/hutool/core/date/DateField;

    invoke-virtual {p0, v0}, Lcn/hutool/core/date/DateTime;->getField(Lcn/hutool/core/date/DateField;)I

    move-result v0

    return v0
.end method

.method public setField(II)Lcn/hutool/core/date/DateTime;
    .locals 2

    .line 417
    invoke-virtual {p0}, Lcn/hutool/core/date/DateTime;->toCalendar()Ljava/util/Calendar;

    move-result-object v0

    .line 418
    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->set(II)V

    .line 421
    iget-boolean p1, p0, Lcn/hutool/core/date/DateTime;->mutable:Z

    if-nez p1, :cond_0

    .line 422
    invoke-static {p0}, Lcn/hutool/core/util/ObjectUtil;->clone(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/hutool/core/date/DateTime;

    goto :goto_0

    :cond_0
    move-object p1, p0

    .line 424
    :goto_0
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    invoke-direct {p1, v0, v1}, Lcn/hutool/core/date/DateTime;->setTimeInternal(J)Lcn/hutool/core/date/DateTime;

    move-result-object p1

    return-object p1
.end method

.method public setField(Lcn/hutool/core/date/DateField;I)Lcn/hutool/core/date/DateTime;
    .locals 0

    .line 405
    invoke-virtual {p1}, Lcn/hutool/core/date/DateField;->getValue()I

    move-result p1

    invoke-virtual {p0, p1, p2}, Lcn/hutool/core/date/DateTime;->setField(II)Lcn/hutool/core/date/DateTime;

    move-result-object p1

    return-object p1
.end method

.method public setFirstDayOfWeek(Lcn/hutool/core/date/Week;)Lcn/hutool/core/date/DateTime;
    .locals 0

    .line 901
    iput-object p1, p0, Lcn/hutool/core/date/DateTime;->firstDayOfWeek:Lcn/hutool/core/date/Week;

    return-object p0
.end method

.method public setMinimalDaysInFirstWeek(I)Lcn/hutool/core/date/DateTime;
    .locals 0

    .line 945
    iput p1, p0, Lcn/hutool/core/date/DateTime;->minimalDaysInFirstWeek:I

    return-object p0
.end method

.method public setMutable(Z)Lcn/hutool/core/date/DateTime;
    .locals 0

    .line 877
    iput-boolean p1, p0, Lcn/hutool/core/date/DateTime;->mutable:Z

    return-object p0
.end method

.method public setTime(J)V
    .locals 1

    .line 429
    iget-boolean v0, p0, Lcn/hutool/core/date/DateTime;->mutable:Z

    if-eqz v0, :cond_0

    .line 430
    invoke-super {p0, p1, p2}, Ljava/util/Date;->setTime(J)V

    return-void

    .line 432
    :cond_0
    new-instance p1, Lcn/hutool/core/date/DateException;

    const-string p2, "This is not a mutable object !"

    invoke-direct {p1, p2}, Lcn/hutool/core/date/DateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setTimeZone(Ljava/util/TimeZone;)Lcn/hutool/core/date/DateTime;
    .locals 1

    .line 933
    new-instance v0, Lcn/hutool/core/date/DateTime$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcn/hutool/core/date/DateTime$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {p1, v0}, Lcn/hutool/core/util/ObjectUtil;->defaultIfNull(Ljava/lang/Object;Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/TimeZone;

    iput-object p1, p0, Lcn/hutool/core/date/DateTime;->timeZone:Ljava/util/TimeZone;

    return-object p0
.end method

.method public toCalendar()Ljava/util/Calendar;
    .locals 1

    .line 658
    sget-object v0, Ljava/util/Locale$Category;->FORMAT:Ljava/util/Locale$Category;

    invoke-static {v0}, Ljava/util/Locale;->getDefault(Ljava/util/Locale$Category;)Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcn/hutool/core/date/DateTime;->toCalendar(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    return-object v0
.end method

.method public toCalendar(Ljava/util/Locale;)Ljava/util/Calendar;
    .locals 1

    .line 668
    iget-object v0, p0, Lcn/hutool/core/date/DateTime;->timeZone:Ljava/util/TimeZone;

    invoke-virtual {p0, v0, p1}, Lcn/hutool/core/date/DateTime;->toCalendar(Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object p1

    return-object p1
.end method

.method public toCalendar(Ljava/util/TimeZone;)Ljava/util/Calendar;
    .locals 1

    .line 678
    sget-object v0, Ljava/util/Locale$Category;->FORMAT:Ljava/util/Locale$Category;

    invoke-static {v0}, Ljava/util/Locale;->getDefault(Ljava/util/Locale$Category;)Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcn/hutool/core/date/DateTime;->toCalendar(Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object p1

    return-object p1
.end method

.method public toCalendar(Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/util/Calendar;
    .locals 0

    if-nez p2, :cond_0

    .line 690
    sget-object p2, Ljava/util/Locale$Category;->FORMAT:Ljava/util/Locale$Category;

    invoke-static {p2}, Ljava/util/Locale;->getDefault(Ljava/util/Locale$Category;)Ljava/util/Locale;

    move-result-object p2

    :cond_0
    if-eqz p1, :cond_1

    .line 692
    invoke-static {p1, p2}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object p1

    goto :goto_0

    :cond_1
    invoke-static {p2}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object p1

    .line 694
    :goto_0
    iget-object p2, p0, Lcn/hutool/core/date/DateTime;->firstDayOfWeek:Lcn/hutool/core/date/Week;

    invoke-virtual {p2}, Lcn/hutool/core/date/Week;->getValue()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/util/Calendar;->setFirstDayOfWeek(I)V

    .line 696
    iget p2, p0, Lcn/hutool/core/date/DateTime;->minimalDaysInFirstWeek:I

    if-lez p2, :cond_2

    .line 697
    invoke-virtual {p1, p2}, Ljava/util/Calendar;->setMinimalDaysInFirstWeek(I)V

    .line 699
    :cond_2
    invoke-virtual {p1, p0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    return-object p1
.end method

.method public toDateStr()Ljava/lang/String;
    .locals 3

    .line 1018
    iget-object v0, p0, Lcn/hutool/core/date/DateTime;->timeZone:Ljava/util/TimeZone;

    if-eqz v0, :cond_0

    const-string v1, "yyyy-MM-dd"

    const/4 v2, 0x0

    .line 1019
    invoke-static {v1, v2, v0}, Lcn/hutool/core/date/DateUtil;->newSimpleFormat(Ljava/lang/String;Ljava/util/Locale;Ljava/util/TimeZone;)Ljava/text/SimpleDateFormat;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcn/hutool/core/date/DateTime;->toString(Ljava/text/DateFormat;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1021
    :cond_0
    sget-object v0, Lcn/hutool/core/date/DatePattern;->NORM_DATE_FORMAT:Lcn/hutool/core/date/format/FastDateFormat;

    invoke-virtual {p0, v0}, Lcn/hutool/core/date/DateTime;->toString(Lcn/hutool/core/date/format/DatePrinter;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toJdkDate()Ljava/util/Date;
    .locals 3

    .line 711
    new-instance v0, Ljava/util/Date;

    invoke-virtual {p0}, Lcn/hutool/core/date/DateTime;->getTime()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    return-object v0
.end method

.method public toLocalDateTime()Ljava/time/LocalDateTime;
    .locals 1

    .line 739
    invoke-static {p0}, Lcn/hutool/core/date/LocalDateTimeUtil;->of(Ljava/util/Date;)Ljava/time/LocalDateTime;

    move-result-object v0

    return-object v0
.end method

.method public toMsStr()Ljava/lang/String;
    .locals 1

    .line 1074
    sget-object v0, Lcn/hutool/core/date/DatePattern;->NORM_DATETIME_MS_FORMAT:Lcn/hutool/core/date/format/FastDateFormat;

    invoke-virtual {p0, v0}, Lcn/hutool/core/date/DateTime;->toString(Lcn/hutool/core/date/format/DatePrinter;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toSqlDate()Ljava/sql/Date;
    .locals 3

    .line 729
    new-instance v0, Ljava/sql/Date;

    invoke-virtual {p0}, Lcn/hutool/core/date/DateTime;->getTime()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/sql/Date;-><init>(J)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 979
    sget-boolean v0, Lcn/hutool/core/date/DateTime;->useJdkToStringStyle:Z

    if-eqz v0, :cond_0

    .line 980
    invoke-super {p0}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 982
    :cond_0
    iget-object v0, p0, Lcn/hutool/core/date/DateTime;->timeZone:Ljava/util/TimeZone;

    invoke-virtual {p0, v0}, Lcn/hutool/core/date/DateTime;->toString(Ljava/util/TimeZone;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString(Lcn/hutool/core/date/format/DatePrinter;)Ljava/lang/String;
    .locals 0

    .line 1057
    invoke-interface {p1, p0}, Lcn/hutool/core/date/format/DatePrinter;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public toString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1044
    iget-object v0, p0, Lcn/hutool/core/date/DateTime;->timeZone:Ljava/util/TimeZone;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 1045
    invoke-static {p1, v1, v0}, Lcn/hutool/core/date/DateUtil;->newSimpleFormat(Ljava/lang/String;Ljava/util/Locale;Ljava/util/TimeZone;)Ljava/text/SimpleDateFormat;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcn/hutool/core/date/DateTime;->toString(Ljava/text/DateFormat;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 1047
    :cond_0
    invoke-static {p1}, Lcn/hutool/core/date/format/FastDateFormat;->getInstance(Ljava/lang/String;)Lcn/hutool/core/date/format/FastDateFormat;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcn/hutool/core/date/DateTime;->toString(Lcn/hutool/core/date/format/DatePrinter;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public toString(Ljava/text/DateFormat;)Ljava/lang/String;
    .locals 0

    .line 1067
    invoke-virtual {p1, p0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public toString(Ljava/util/TimeZone;)Ljava/lang/String;
    .locals 2

    if-eqz p1, :cond_0

    const-string v0, "yyyy-MM-dd HH:mm:ss"

    const/4 v1, 0x0

    .line 1006
    invoke-static {v0, v1, p1}, Lcn/hutool/core/date/DateUtil;->newSimpleFormat(Ljava/lang/String;Ljava/util/Locale;Ljava/util/TimeZone;)Ljava/text/SimpleDateFormat;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcn/hutool/core/date/DateTime;->toString(Ljava/text/DateFormat;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 1008
    :cond_0
    sget-object p1, Lcn/hutool/core/date/DatePattern;->NORM_DATETIME_FORMAT:Lcn/hutool/core/date/format/FastDateFormat;

    invoke-virtual {p0, p1}, Lcn/hutool/core/date/DateTime;->toString(Lcn/hutool/core/date/format/DatePrinter;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public toStringDefaultTimeZone()Ljava/lang/String;
    .locals 1

    .line 993
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcn/hutool/core/date/DateTime;->toString(Ljava/util/TimeZone;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toTimeStr()Ljava/lang/String;
    .locals 3

    .line 1031
    iget-object v0, p0, Lcn/hutool/core/date/DateTime;->timeZone:Ljava/util/TimeZone;

    if-eqz v0, :cond_0

    const-string v1, "HH:mm:ss"

    const/4 v2, 0x0

    .line 1032
    invoke-static {v1, v2, v0}, Lcn/hutool/core/date/DateUtil;->newSimpleFormat(Ljava/lang/String;Ljava/util/Locale;Ljava/util/TimeZone;)Ljava/text/SimpleDateFormat;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcn/hutool/core/date/DateTime;->toString(Ljava/text/DateFormat;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1034
    :cond_0
    sget-object v0, Lcn/hutool/core/date/DatePattern;->NORM_TIME_FORMAT:Lcn/hutool/core/date/format/FastDateFormat;

    invoke-virtual {p0, v0}, Lcn/hutool/core/date/DateTime;->toString(Lcn/hutool/core/date/format/DatePrinter;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toTimestamp()Ljava/sql/Timestamp;
    .locals 3

    .line 720
    new-instance v0, Ljava/sql/Timestamp;

    invoke-virtual {p0}, Lcn/hutool/core/date/DateTime;->getTime()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/sql/Timestamp;-><init>(J)V

    return-object v0
.end method

.method public weekOfMonth()I
    .locals 1

    .line 525
    sget-object v0, Lcn/hutool/core/date/DateField;->WEEK_OF_MONTH:Lcn/hutool/core/date/DateField;

    invoke-virtual {p0, v0}, Lcn/hutool/core/date/DateTime;->getField(Lcn/hutool/core/date/DateField;)I

    move-result v0

    return v0
.end method

.method public weekOfYear()I
    .locals 1

    .line 512
    sget-object v0, Lcn/hutool/core/date/DateField;->WEEK_OF_YEAR:Lcn/hutool/core/date/DateField;

    invoke-virtual {p0, v0}, Lcn/hutool/core/date/DateTime;->getField(Lcn/hutool/core/date/DateField;)I

    move-result v0

    return v0
.end method

.method public year()I
    .locals 1

    .line 442
    sget-object v0, Lcn/hutool/core/date/DateField;->YEAR:Lcn/hutool/core/date/DateField;

    invoke-virtual {p0, v0}, Lcn/hutool/core/date/DateTime;->getField(Lcn/hutool/core/date/DateField;)I

    move-result v0

    return v0
.end method
