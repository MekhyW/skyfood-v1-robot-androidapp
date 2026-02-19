.class public Lcn/hutool/core/date/LocalDateTimeUtil;
.super Ljava/lang/Object;
.source "LocalDateTimeUtil.java"


# direct methods
.method public static synthetic $r8$lambda$8r0-ELZPUqou3wbMyDOOk29-Lx0()Ljava/util/TimeZone;
    .locals 1

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic $r8$lambda$See_j0A4GTBVMR54e-512CLhAn4()Ljava/time/ZoneId;
    .locals 1

    invoke-static {}, Ljava/time/ZoneId;->systemDefault()Ljava/time/ZoneId;

    move-result-object v0

    return-object v0
.end method

.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static beginOfDay(Ljava/time/LocalDateTime;)Ljava/time/LocalDateTime;
    .locals 1

    .line 461
    sget-object v0, Ljava/time/LocalTime;->MIN:Ljava/time/LocalTime;

    invoke-virtual {p0, v0}, Ljava/time/LocalDateTime;->with(Ljava/time/temporal/TemporalAdjuster;)Ljava/time/LocalDateTime;

    move-result-object p0

    return-object p0
.end method

.method public static between(Ljava/time/LocalDateTime;Ljava/time/LocalDateTime;Ljava/time/temporal/ChronoUnit;)J
    .locals 0

    .line 437
    invoke-static {p0, p1, p2}, Lcn/hutool/core/date/TemporalUtil;->between(Ljava/time/temporal/Temporal;Ljava/time/temporal/Temporal;Ljava/time/temporal/ChronoUnit;)J

    move-result-wide p0

    return-wide p0
.end method

.method public static between(Ljava/time/LocalDateTime;Ljava/time/LocalDateTime;)Ljava/time/Duration;
    .locals 0

    .line 422
    invoke-static {p0, p1}, Lcn/hutool/core/date/TemporalUtil;->between(Ljava/time/temporal/Temporal;Ljava/time/temporal/Temporal;)Ljava/time/Duration;

    move-result-object p0

    return-object p0
.end method

.method public static betweenPeriod(Ljava/time/LocalDate;Ljava/time/LocalDate;)Ljava/time/Period;
    .locals 0

    .line 451
    invoke-static {p0, p1}, Ljava/time/Period;->between(Ljava/time/LocalDate;Ljava/time/LocalDate;)Ljava/time/Period;

    move-result-object p0

    return-object p0
.end method

.method public static dayOfWeek(Ljava/time/LocalDate;)Lcn/hutool/core/date/Week;
    .locals 0

    .line 536
    invoke-virtual {p0}, Ljava/time/LocalDate;->getDayOfWeek()Ljava/time/DayOfWeek;

    move-result-object p0

    invoke-static {p0}, Lcn/hutool/core/date/Week;->of(Ljava/time/DayOfWeek;)Lcn/hutool/core/date/Week;

    move-result-object p0

    return-object p0
.end method

.method public static endOfDay(Ljava/time/LocalDateTime;)Ljava/time/LocalDateTime;
    .locals 1

    const/4 v0, 0x0

    .line 471
    invoke-static {p0, v0}, Lcn/hutool/core/date/LocalDateTimeUtil;->endOfDay(Ljava/time/LocalDateTime;Z)Ljava/time/LocalDateTime;

    move-result-object p0

    return-object p0
.end method

.method public static endOfDay(Ljava/time/LocalDateTime;Z)Ljava/time/LocalDateTime;
    .locals 1

    if-eqz p1, :cond_0

    const/16 p1, 0x17

    const/16 v0, 0x3b

    .line 488
    invoke-static {p1, v0, v0}, Ljava/time/LocalTime;->of(III)Ljava/time/LocalTime;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/time/LocalDateTime;->with(Ljava/time/temporal/TemporalAdjuster;)Ljava/time/LocalDateTime;

    move-result-object p0

    return-object p0

    .line 490
    :cond_0
    sget-object p1, Ljava/time/LocalTime;->MAX:Ljava/time/LocalTime;

    invoke-virtual {p0, p1}, Ljava/time/LocalDateTime;->with(Ljava/time/temporal/TemporalAdjuster;)Ljava/time/LocalDateTime;

    move-result-object p0

    return-object p0
.end method

.method public static format(Ljava/time/LocalDate;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 396
    :cond_0
    invoke-static {p1}, Ljava/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;)Ljava/time/format/DateTimeFormatter;

    move-result-object p1

    invoke-static {p0, p1}, Lcn/hutool/core/date/LocalDateTimeUtil;->format(Ljava/time/LocalDate;Ljava/time/format/DateTimeFormatter;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static format(Ljava/time/LocalDate;Ljava/time/format/DateTimeFormatter;)Ljava/lang/String;
    .locals 0

    .line 381
    invoke-static {p0, p1}, Lcn/hutool/core/date/TemporalAccessorUtil;->format(Ljava/time/temporal/TemporalAccessor;Ljava/time/format/DateTimeFormatter;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static format(Ljava/time/LocalDateTime;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 358
    invoke-static {p0, p1}, Lcn/hutool/core/date/TemporalAccessorUtil;->format(Ljava/time/temporal/TemporalAccessor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static format(Ljava/time/LocalDateTime;Ljava/time/format/DateTimeFormatter;)Ljava/lang/String;
    .locals 0

    .line 347
    invoke-static {p0, p1}, Lcn/hutool/core/date/TemporalAccessorUtil;->format(Ljava/time/temporal/TemporalAccessor;Ljava/time/format/DateTimeFormatter;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static formatNormal(Ljava/time/LocalDate;)Ljava/lang/String;
    .locals 1

    .line 369
    sget-object v0, Lcn/hutool/core/date/DatePattern;->NORM_DATE_FORMATTER:Ljava/time/format/DateTimeFormatter;

    invoke-static {p0, v0}, Lcn/hutool/core/date/LocalDateTimeUtil;->format(Ljava/time/LocalDate;Ljava/time/format/DateTimeFormatter;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static formatNormal(Ljava/time/LocalDateTime;)Ljava/lang/String;
    .locals 1

    .line 336
    sget-object v0, Lcn/hutool/core/date/DatePattern;->NORM_DATETIME_FORMATTER:Ljava/time/format/DateTimeFormatter;

    invoke-static {p0, v0}, Lcn/hutool/core/date/LocalDateTimeUtil;->format(Ljava/time/LocalDateTime;Ljava/time/format/DateTimeFormatter;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static isIn(Ljava/time/chrono/ChronoLocalDateTime;Ljava/time/chrono/ChronoLocalDateTime;Ljava/time/chrono/ChronoLocalDateTime;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/time/chrono/ChronoLocalDateTime<",
            "*>;",
            "Ljava/time/chrono/ChronoLocalDateTime<",
            "*>;",
            "Ljava/time/chrono/ChronoLocalDateTime<",
            "*>;)Z"
        }
    .end annotation

    .line 617
    invoke-static {p0, p1, p2}, Lcn/hutool/core/date/TemporalAccessorUtil;->isIn(Ljava/time/temporal/TemporalAccessor;Ljava/time/temporal/TemporalAccessor;Ljava/time/temporal/TemporalAccessor;)Z

    move-result p0

    return p0
.end method

.method public static isIn(Ljava/time/chrono/ChronoLocalDateTime;Ljava/time/chrono/ChronoLocalDateTime;Ljava/time/chrono/ChronoLocalDateTime;ZZ)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/time/chrono/ChronoLocalDateTime<",
            "*>;",
            "Ljava/time/chrono/ChronoLocalDateTime<",
            "*>;",
            "Ljava/time/chrono/ChronoLocalDateTime<",
            "*>;ZZ)Z"
        }
    .end annotation

    .line 637
    invoke-static {p0, p1, p2, p3, p4}, Lcn/hutool/core/date/TemporalAccessorUtil;->isIn(Ljava/time/temporal/TemporalAccessor;Ljava/time/temporal/TemporalAccessor;Ljava/time/temporal/TemporalAccessor;ZZ)Z

    move-result p0

    return p0
.end method

.method public static isOverlap(Ljava/time/chrono/ChronoLocalDateTime;Ljava/time/chrono/ChronoLocalDateTime;Ljava/time/chrono/ChronoLocalDateTime;Ljava/time/chrono/ChronoLocalDateTime;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/time/chrono/ChronoLocalDateTime<",
            "*>;",
            "Ljava/time/chrono/ChronoLocalDateTime<",
            "*>;",
            "Ljava/time/chrono/ChronoLocalDateTime<",
            "*>;",
            "Ljava/time/chrono/ChronoLocalDateTime<",
            "*>;)Z"
        }
    .end annotation

    .line 561
    invoke-interface {p0, p3}, Ljava/time/chrono/ChronoLocalDateTime;->compareTo(Ljava/time/chrono/ChronoLocalDateTime;)I

    move-result p0

    if-gtz p0, :cond_0

    invoke-interface {p2, p1}, Ljava/time/chrono/ChronoLocalDateTime;->compareTo(Ljava/time/chrono/ChronoLocalDateTime;)I

    move-result p0

    if-gtz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isSameDay(Ljava/time/LocalDate;Ljava/time/LocalDate;)Z
    .locals 0

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 603
    invoke-virtual {p0, p1}, Ljava/time/LocalDate;->isEqual(Ljava/time/chrono/ChronoLocalDate;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isSameDay(Ljava/time/LocalDateTime;Ljava/time/LocalDateTime;)Z
    .locals 0

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 591
    invoke-virtual {p0}, Ljava/time/LocalDateTime;->toLocalDate()Ljava/time/LocalDate;

    move-result-object p0

    invoke-virtual {p1}, Ljava/time/LocalDateTime;->toLocalDate()Ljava/time/LocalDate;

    move-result-object p1

    invoke-static {p0, p1}, Lcn/hutool/core/date/LocalDateTimeUtil;->isSameDay(Ljava/time/LocalDate;Ljava/time/LocalDate;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isWeekend(Ljava/time/LocalDate;)Z
    .locals 1

    .line 524
    invoke-virtual {p0}, Ljava/time/LocalDate;->getDayOfWeek()Ljava/time/DayOfWeek;

    move-result-object p0

    .line 525
    sget-object v0, Ljava/time/DayOfWeek;->SATURDAY:Ljava/time/DayOfWeek;

    if-eq v0, p0, :cond_1

    sget-object v0, Ljava/time/DayOfWeek;->SUNDAY:Ljava/time/DayOfWeek;

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

.method public static isWeekend(Ljava/time/LocalDateTime;)Z
    .locals 0

    .line 513
    invoke-virtual {p0}, Ljava/time/LocalDateTime;->toLocalDate()Ljava/time/LocalDate;

    move-result-object p0

    invoke-static {p0}, Lcn/hutool/core/date/LocalDateTimeUtil;->isWeekend(Ljava/time/LocalDate;)Z

    move-result p0

    return p0
.end method

.method public static now()Ljava/time/LocalDateTime;
    .locals 1

    .line 32
    invoke-static {}, Ljava/time/LocalDateTime;->now()Ljava/time/LocalDateTime;

    move-result-object v0

    return-object v0
.end method

.method public static of(J)Ljava/time/LocalDateTime;
    .locals 0

    .line 107
    invoke-static {p0, p1}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    move-result-object p0

    invoke-static {p0}, Lcn/hutool/core/date/LocalDateTimeUtil;->of(Ljava/time/Instant;)Ljava/time/LocalDateTime;

    move-result-object p0

    return-object p0
.end method

.method public static of(JLjava/time/ZoneId;)Ljava/time/LocalDateTime;
    .locals 0

    .line 128
    invoke-static {p0, p1}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    move-result-object p0

    invoke-static {p0, p2}, Lcn/hutool/core/date/LocalDateTimeUtil;->of(Ljava/time/Instant;Ljava/time/ZoneId;)Ljava/time/LocalDateTime;

    move-result-object p0

    return-object p0
.end method

.method public static of(JLjava/util/TimeZone;)Ljava/time/LocalDateTime;
    .locals 0

    .line 139
    invoke-static {p0, p1}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    move-result-object p0

    invoke-static {p0, p2}, Lcn/hutool/core/date/LocalDateTimeUtil;->of(Ljava/time/Instant;Ljava/util/TimeZone;)Ljava/time/LocalDateTime;

    move-result-object p0

    return-object p0
.end method

.method public static of(Ljava/time/Instant;)Ljava/time/LocalDateTime;
    .locals 1

    .line 42
    invoke-static {}, Ljava/time/ZoneId;->systemDefault()Ljava/time/ZoneId;

    move-result-object v0

    invoke-static {p0, v0}, Lcn/hutool/core/date/LocalDateTimeUtil;->of(Ljava/time/Instant;Ljava/time/ZoneId;)Ljava/time/LocalDateTime;

    move-result-object p0

    return-object p0
.end method

.method public static of(Ljava/time/Instant;Ljava/time/ZoneId;)Ljava/time/LocalDateTime;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 80
    :cond_0
    new-instance v0, Lcn/hutool/core/date/LocalDateTimeUtil$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcn/hutool/core/date/LocalDateTimeUtil$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {p1, v0}, Lcn/hutool/core/util/ObjectUtil;->defaultIfNull(Ljava/lang/Object;Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/time/ZoneId;

    invoke-static {p0, p1}, Ljava/time/LocalDateTime;->ofInstant(Ljava/time/Instant;Ljava/time/ZoneId;)Ljava/time/LocalDateTime;

    move-result-object p0

    return-object p0
.end method

.method public static of(Ljava/time/Instant;Ljava/util/TimeZone;)Ljava/time/LocalDateTime;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 95
    :cond_0
    new-instance v0, Lcn/hutool/core/date/LocalDateTimeUtil$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcn/hutool/core/date/LocalDateTimeUtil$$ExternalSyntheticLambda1;-><init>()V

    invoke-static {p1, v0}, Lcn/hutool/core/util/ObjectUtil;->defaultIfNull(Ljava/lang/Object;Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/TimeZone;

    invoke-virtual {p1}, Ljava/util/TimeZone;->toZoneId()Ljava/time/ZoneId;

    move-result-object p1

    invoke-static {p0, p1}, Lcn/hutool/core/date/LocalDateTimeUtil;->of(Ljava/time/Instant;Ljava/time/ZoneId;)Ljava/time/LocalDateTime;

    move-result-object p0

    return-object p0
.end method

.method public static of(Ljava/time/ZonedDateTime;)Ljava/time/LocalDateTime;
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 65
    :cond_0
    invoke-virtual {p0}, Ljava/time/ZonedDateTime;->toLocalDateTime()Ljava/time/LocalDateTime;

    move-result-object p0

    return-object p0
.end method

.method public static of(Ljava/time/temporal/TemporalAccessor;)Ljava/time/LocalDateTime;
    .locals 8

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 170
    :cond_0
    instance-of v0, p0, Ljava/time/LocalDate;

    if-eqz v0, :cond_1

    .line 171
    check-cast p0, Ljava/time/LocalDate;

    invoke-virtual {p0}, Ljava/time/LocalDate;->atStartOfDay()Ljava/time/LocalDateTime;

    move-result-object p0

    return-object p0

    .line 172
    :cond_1
    instance-of v0, p0, Ljava/time/Instant;

    if-eqz v0, :cond_2

    .line 173
    check-cast p0, Ljava/time/Instant;

    invoke-static {}, Ljava/time/ZoneId;->systemDefault()Ljava/time/ZoneId;

    move-result-object v0

    invoke-static {p0, v0}, Ljava/time/LocalDateTime;->ofInstant(Ljava/time/Instant;Ljava/time/ZoneId;)Ljava/time/LocalDateTime;

    move-result-object p0

    return-object p0

    .line 174
    :cond_2
    instance-of v0, p0, Ljava/time/ZonedDateTime;

    if-eqz v0, :cond_3

    .line 175
    check-cast p0, Ljava/time/ZonedDateTime;

    invoke-virtual {p0}, Ljava/time/ZonedDateTime;->toLocalDateTime()Ljava/time/LocalDateTime;

    move-result-object p0

    return-object p0

    .line 178
    :cond_3
    sget-object v0, Ljava/time/temporal/ChronoField;->YEAR:Ljava/time/temporal/ChronoField;

    .line 179
    invoke-static {p0, v0}, Lcn/hutool/core/date/TemporalAccessorUtil;->get(Ljava/time/temporal/TemporalAccessor;Ljava/time/temporal/TemporalField;)I

    move-result v1

    sget-object v0, Ljava/time/temporal/ChronoField;->MONTH_OF_YEAR:Ljava/time/temporal/ChronoField;

    .line 180
    invoke-static {p0, v0}, Lcn/hutool/core/date/TemporalAccessorUtil;->get(Ljava/time/temporal/TemporalAccessor;Ljava/time/temporal/TemporalField;)I

    move-result v2

    sget-object v0, Ljava/time/temporal/ChronoField;->DAY_OF_MONTH:Ljava/time/temporal/ChronoField;

    .line 181
    invoke-static {p0, v0}, Lcn/hutool/core/date/TemporalAccessorUtil;->get(Ljava/time/temporal/TemporalAccessor;Ljava/time/temporal/TemporalField;)I

    move-result v3

    sget-object v0, Ljava/time/temporal/ChronoField;->HOUR_OF_DAY:Ljava/time/temporal/ChronoField;

    .line 182
    invoke-static {p0, v0}, Lcn/hutool/core/date/TemporalAccessorUtil;->get(Ljava/time/temporal/TemporalAccessor;Ljava/time/temporal/TemporalField;)I

    move-result v4

    sget-object v0, Ljava/time/temporal/ChronoField;->MINUTE_OF_HOUR:Ljava/time/temporal/ChronoField;

    .line 183
    invoke-static {p0, v0}, Lcn/hutool/core/date/TemporalAccessorUtil;->get(Ljava/time/temporal/TemporalAccessor;Ljava/time/temporal/TemporalField;)I

    move-result v5

    sget-object v0, Ljava/time/temporal/ChronoField;->SECOND_OF_MINUTE:Ljava/time/temporal/ChronoField;

    .line 184
    invoke-static {p0, v0}, Lcn/hutool/core/date/TemporalAccessorUtil;->get(Ljava/time/temporal/TemporalAccessor;Ljava/time/temporal/TemporalField;)I

    move-result v6

    sget-object v0, Ljava/time/temporal/ChronoField;->NANO_OF_SECOND:Ljava/time/temporal/ChronoField;

    .line 185
    invoke-static {p0, v0}, Lcn/hutool/core/date/TemporalAccessorUtil;->get(Ljava/time/temporal/TemporalAccessor;Ljava/time/temporal/TemporalField;)I

    move-result v7

    .line 178
    invoke-static/range {v1 .. v7}, Ljava/time/LocalDateTime;->of(IIIIIII)Ljava/time/LocalDateTime;

    move-result-object p0

    return-object p0
.end method

.method public static of(Ljava/util/Date;)Ljava/time/LocalDateTime;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 153
    :cond_0
    instance-of v0, p0, Lcn/hutool/core/date/DateTime;

    if-eqz v0, :cond_1

    .line 154
    invoke-virtual {p0}, Ljava/util/Date;->toInstant()Ljava/time/Instant;

    move-result-object v0

    check-cast p0, Lcn/hutool/core/date/DateTime;

    invoke-virtual {p0}, Lcn/hutool/core/date/DateTime;->getZoneId()Ljava/time/ZoneId;

    move-result-object p0

    invoke-static {v0, p0}, Lcn/hutool/core/date/LocalDateTimeUtil;->of(Ljava/time/Instant;Ljava/time/ZoneId;)Ljava/time/LocalDateTime;

    move-result-object p0

    return-object p0

    .line 156
    :cond_1
    invoke-virtual {p0}, Ljava/util/Date;->toInstant()Ljava/time/Instant;

    move-result-object p0

    invoke-static {p0}, Lcn/hutool/core/date/LocalDateTimeUtil;->of(Ljava/time/Instant;)Ljava/time/LocalDateTime;

    move-result-object p0

    return-object p0
.end method

.method public static ofDate(Ljava/time/temporal/TemporalAccessor;)Ljava/time/LocalDate;
    .locals 3

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 201
    :cond_0
    instance-of v0, p0, Ljava/time/LocalDateTime;

    if-eqz v0, :cond_1

    .line 202
    check-cast p0, Ljava/time/LocalDateTime;

    invoke-virtual {p0}, Ljava/time/LocalDateTime;->toLocalDate()Ljava/time/LocalDate;

    move-result-object p0

    return-object p0

    .line 203
    :cond_1
    instance-of v0, p0, Ljava/time/Instant;

    if-eqz v0, :cond_2

    .line 204
    invoke-static {p0}, Lcn/hutool/core/date/LocalDateTimeUtil;->of(Ljava/time/temporal/TemporalAccessor;)Ljava/time/LocalDateTime;

    move-result-object p0

    invoke-virtual {p0}, Ljava/time/LocalDateTime;->toLocalDate()Ljava/time/LocalDate;

    move-result-object p0

    return-object p0

    .line 207
    :cond_2
    sget-object v0, Ljava/time/temporal/ChronoField;->YEAR:Ljava/time/temporal/ChronoField;

    .line 208
    invoke-static {p0, v0}, Lcn/hutool/core/date/TemporalAccessorUtil;->get(Ljava/time/temporal/TemporalAccessor;Ljava/time/temporal/TemporalField;)I

    move-result v0

    sget-object v1, Ljava/time/temporal/ChronoField;->MONTH_OF_YEAR:Ljava/time/temporal/ChronoField;

    .line 209
    invoke-static {p0, v1}, Lcn/hutool/core/date/TemporalAccessorUtil;->get(Ljava/time/temporal/TemporalAccessor;Ljava/time/temporal/TemporalField;)I

    move-result v1

    sget-object v2, Ljava/time/temporal/ChronoField;->DAY_OF_MONTH:Ljava/time/temporal/ChronoField;

    .line 210
    invoke-static {p0, v2}, Lcn/hutool/core/date/TemporalAccessorUtil;->get(Ljava/time/temporal/TemporalAccessor;Ljava/time/temporal/TemporalField;)I

    move-result p0

    .line 207
    invoke-static {v0, v1, p0}, Ljava/time/LocalDate;->of(III)Ljava/time/LocalDate;

    move-result-object p0

    return-object p0
.end method

.method public static ofUTC(J)Ljava/time/LocalDateTime;
    .locals 0

    .line 117
    invoke-static {p0, p1}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    move-result-object p0

    invoke-static {p0}, Lcn/hutool/core/date/LocalDateTimeUtil;->ofUTC(Ljava/time/Instant;)Ljava/time/LocalDateTime;

    move-result-object p0

    return-object p0
.end method

.method public static ofUTC(Ljava/time/Instant;)Ljava/time/LocalDateTime;
    .locals 1

    const-string v0, "UTC"

    .line 52
    invoke-static {v0}, Ljava/time/ZoneId;->of(Ljava/lang/String;)Ljava/time/ZoneId;

    move-result-object v0

    invoke-static {p0, v0}, Lcn/hutool/core/date/LocalDateTimeUtil;->of(Ljava/time/Instant;Ljava/time/ZoneId;)Ljava/time/LocalDateTime;

    move-result-object p0

    return-object p0
.end method

.method public static offset(Ljava/time/LocalDateTime;JLjava/time/temporal/TemporalUnit;)Ljava/time/LocalDateTime;
    .locals 0

    .line 408
    invoke-static {p0, p1, p2, p3}, Lcn/hutool/core/date/TemporalUtil;->offset(Ljava/time/temporal/Temporal;JLjava/time/temporal/TemporalUnit;)Ljava/time/temporal/Temporal;

    move-result-object p0

    check-cast p0, Ljava/time/LocalDateTime;

    return-object p0
.end method

.method public static parse(Ljava/lang/CharSequence;)Ljava/time/LocalDateTime;
    .locals 2

    const/4 v0, 0x0

    .line 222
    move-object v1, v0

    check-cast v1, Ljava/time/format/DateTimeFormatter;

    invoke-static {p0, v0}, Lcn/hutool/core/date/LocalDateTimeUtil;->parse(Ljava/lang/CharSequence;Ljava/time/format/DateTimeFormatter;)Ljava/time/LocalDateTime;

    move-result-object p0

    return-object p0
.end method

.method public static parse(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/time/LocalDateTime;
    .locals 3

    .line 252
    invoke-static {p0}, Lcn/hutool/core/util/StrUtil;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 256
    :cond_0
    invoke-static {p1}, Lcn/hutool/core/date/format/GlobalCustomFormat;->isCustomFormat(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 257
    invoke-static {p0, p1}, Lcn/hutool/core/date/format/GlobalCustomFormat;->parse(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/util/Date;

    move-result-object p0

    invoke-static {p0}, Lcn/hutool/core/date/LocalDateTimeUtil;->of(Ljava/util/Date;)Ljava/time/LocalDateTime;

    move-result-object p0

    return-object p0

    .line 261
    :cond_1
    invoke-static {p1}, Lcn/hutool/core/util/StrUtil;->isNotBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "yyyyMMddHHmmss"

    .line 266
    invoke-static {p1, v0}, Lcn/hutool/core/util/StrUtil;->startWithIgnoreEquals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 267
    invoke-static {p1, v0}, Lcn/hutool/core/util/StrUtil;->removePrefix(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "[S]{1,2}"

    .line 268
    invoke-static {v1, p1}, Lcn/hutool/core/util/ReUtil;->isMatch(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x3

    if-eqz v1, :cond_2

    .line 270
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    rsub-int/lit8 p1, p1, 0x3

    const/16 v1, 0x30

    invoke-static {v1, p1}, Lcn/hutool/core/util/StrUtil;->repeat(CI)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 272
    :cond_2
    new-instance p1, Ljava/time/format/DateTimeFormatterBuilder;

    invoke-direct {p1}, Ljava/time/format/DateTimeFormatterBuilder;-><init>()V

    .line 273
    invoke-virtual {p1, v0}, Ljava/time/format/DateTimeFormatterBuilder;->appendPattern(Ljava/lang/String;)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object p1

    sget-object v0, Ljava/time/temporal/ChronoField;->MILLI_OF_SECOND:Ljava/time/temporal/ChronoField;

    .line 274
    invoke-virtual {p1, v0, v2}, Ljava/time/format/DateTimeFormatterBuilder;->appendValue(Ljava/time/temporal/TemporalField;I)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object p1

    .line 275
    invoke-virtual {p1}, Ljava/time/format/DateTimeFormatterBuilder;->toFormatter()Ljava/time/format/DateTimeFormatter;

    move-result-object v1

    goto :goto_0

    .line 277
    :cond_3
    invoke-static {p1}, Ljava/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;)Ljava/time/format/DateTimeFormatter;

    move-result-object v1

    .line 281
    :cond_4
    :goto_0
    invoke-static {p0, v1}, Lcn/hutool/core/date/LocalDateTimeUtil;->parse(Ljava/lang/CharSequence;Ljava/time/format/DateTimeFormatter;)Ljava/time/LocalDateTime;

    move-result-object p0

    return-object p0
.end method

.method public static parse(Ljava/lang/CharSequence;Ljava/time/format/DateTimeFormatter;)Ljava/time/LocalDateTime;
    .locals 1

    .line 234
    invoke-static {p0}, Lcn/hutool/core/util/StrUtil;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    if-nez p1, :cond_1

    .line 238
    invoke-static {p0}, Ljava/time/LocalDateTime;->parse(Ljava/lang/CharSequence;)Ljava/time/LocalDateTime;

    move-result-object p0

    return-object p0

    .line 241
    :cond_1
    invoke-virtual {p1, p0}, Ljava/time/format/DateTimeFormatter;->parse(Ljava/lang/CharSequence;)Ljava/time/temporal/TemporalAccessor;

    move-result-object p0

    invoke-static {p0}, Lcn/hutool/core/date/LocalDateTimeUtil;->of(Ljava/time/temporal/TemporalAccessor;)Ljava/time/LocalDateTime;

    move-result-object p0

    return-object p0
.end method

.method public static parseDate(Ljava/lang/CharSequence;)Ljava/time/LocalDate;
    .locals 2

    const/4 v0, 0x0

    .line 292
    move-object v1, v0

    check-cast v1, Ljava/time/format/DateTimeFormatter;

    invoke-static {p0, v0}, Lcn/hutool/core/date/LocalDateTimeUtil;->parseDate(Ljava/lang/CharSequence;Ljava/time/format/DateTimeFormatter;)Ljava/time/LocalDate;

    move-result-object p0

    return-object p0
.end method

.method public static parseDate(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/time/LocalDate;
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 325
    :cond_0
    invoke-static {p1}, Ljava/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;)Ljava/time/format/DateTimeFormatter;

    move-result-object p1

    invoke-static {p0, p1}, Lcn/hutool/core/date/LocalDateTimeUtil;->parseDate(Ljava/lang/CharSequence;Ljava/time/format/DateTimeFormatter;)Ljava/time/LocalDate;

    move-result-object p0

    return-object p0
.end method

.method public static parseDate(Ljava/lang/CharSequence;Ljava/time/format/DateTimeFormatter;)Ljava/time/LocalDate;
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    if-nez p1, :cond_1

    .line 308
    invoke-static {p0}, Ljava/time/LocalDate;->parse(Ljava/lang/CharSequence;)Ljava/time/LocalDate;

    move-result-object p0

    return-object p0

    .line 311
    :cond_1
    invoke-virtual {p1, p0}, Ljava/time/format/DateTimeFormatter;->parse(Ljava/lang/CharSequence;)Ljava/time/temporal/TemporalAccessor;

    move-result-object p0

    invoke-static {p0}, Lcn/hutool/core/date/LocalDateTimeUtil;->ofDate(Ljava/time/temporal/TemporalAccessor;)Ljava/time/LocalDate;

    move-result-object p0

    return-object p0
.end method

.method public static toEpochMilli(Ljava/time/temporal/TemporalAccessor;)J
    .locals 2

    .line 502
    invoke-static {p0}, Lcn/hutool/core/date/TemporalAccessorUtil;->toEpochMilli(Ljava/time/temporal/TemporalAccessor;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static weekOfYear(Ljava/time/temporal/TemporalAccessor;)I
    .locals 1

    .line 579
    sget-object v0, Ljava/time/temporal/WeekFields;->ISO:Ljava/time/temporal/WeekFields;

    invoke-virtual {v0}, Ljava/time/temporal/WeekFields;->weekOfYear()Ljava/time/temporal/TemporalField;

    move-result-object v0

    invoke-static {p0, v0}, Lcn/hutool/core/date/TemporalAccessorUtil;->get(Ljava/time/temporal/TemporalAccessor;Ljava/time/temporal/TemporalField;)I

    move-result p0

    return p0
.end method
