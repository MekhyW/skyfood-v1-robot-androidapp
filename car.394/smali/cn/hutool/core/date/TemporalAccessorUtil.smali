.class public Lcn/hutool/core/date/TemporalAccessorUtil;
.super Lcn/hutool/core/date/TemporalUtil;
.source "TemporalAccessorUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Lcn/hutool/core/date/TemporalUtil;-><init>()V

    return-void
.end method

.method public static format(Ljava/time/temporal/TemporalAccessor;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 100
    :cond_0
    instance-of v1, p0, Ljava/time/DayOfWeek;

    if-nez v1, :cond_4

    instance-of v1, p0, Ljava/time/Month;

    if-nez v1, :cond_4

    instance-of v1, p0, Ljava/time/chrono/Era;

    if-nez v1, :cond_4

    instance-of v1, p0, Ljava/time/MonthDay;

    if-eqz v1, :cond_1

    goto :goto_1

    .line 105
    :cond_1
    invoke-static {p1}, Lcn/hutool/core/date/format/GlobalCustomFormat;->isCustomFormat(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 106
    invoke-static {p0, p1}, Lcn/hutool/core/date/format/GlobalCustomFormat;->format(Ljava/time/temporal/TemporalAccessor;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 109
    :cond_2
    invoke-static {p1}, Lcn/hutool/core/util/StrUtil;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_0

    .line 110
    :cond_3
    invoke-static {p1}, Ljava/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;)Ljava/time/format/DateTimeFormatter;

    move-result-object v0

    .line 112
    :goto_0
    invoke-static {p0, v0}, Lcn/hutool/core/date/TemporalAccessorUtil;->format(Ljava/time/temporal/TemporalAccessor;Ljava/time/format/DateTimeFormatter;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 101
    :cond_4
    :goto_1
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static format(Ljava/time/temporal/TemporalAccessor;Ljava/time/format/DateTimeFormatter;)Ljava/lang/String;
    .locals 3

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 61
    :cond_0
    instance-of v0, p0, Ljava/time/Month;

    if-eqz v0, :cond_1

    .line 62
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    if-nez p1, :cond_2

    .line 66
    sget-object p1, Ljava/time/format/DateTimeFormatter;->ISO_LOCAL_DATE_TIME:Ljava/time/format/DateTimeFormatter;

    .line 70
    :cond_2
    :try_start_0
    invoke-virtual {p1, p0}, Ljava/time/format/DateTimeFormatter;->format(Ljava/time/temporal/TemporalAccessor;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/time/temporal/UnsupportedTemporalTypeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception v0

    .line 72
    instance-of v1, p0, Ljava/time/LocalDate;

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Ljava/time/temporal/UnsupportedTemporalTypeException;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "HourOfDay"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 74
    check-cast p0, Ljava/time/LocalDate;

    invoke-virtual {p0}, Ljava/time/LocalDate;->atStartOfDay()Ljava/time/LocalDateTime;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/time/format/DateTimeFormatter;->format(Ljava/time/temporal/TemporalAccessor;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 75
    :cond_3
    instance-of v1, p0, Ljava/time/LocalTime;

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Ljava/time/temporal/UnsupportedTemporalTypeException;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "YearOfEra"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 77
    check-cast p0, Ljava/time/LocalTime;

    invoke-static {}, Ljava/time/LocalDate;->now()Ljava/time/LocalDate;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/time/LocalTime;->atDate(Ljava/time/LocalDate;)Ljava/time/LocalDateTime;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/time/format/DateTimeFormatter;->format(Ljava/time/temporal/TemporalAccessor;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 78
    :cond_4
    instance-of v1, p0, Ljava/time/Instant;

    if-eqz v1, :cond_5

    .line 80
    check-cast p0, Ljava/time/Instant;

    invoke-static {}, Ljava/time/ZoneId;->systemDefault()Ljava/time/ZoneId;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/time/Instant;->atZone(Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/time/format/DateTimeFormatter;->format(Ljava/time/temporal/TemporalAccessor;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 82
    :cond_5
    throw v0
.end method

.method public static get(Ljava/time/temporal/TemporalAccessor;Ljava/time/temporal/TemporalField;)I
    .locals 1

    .line 40
    invoke-interface {p0, p1}, Ljava/time/temporal/TemporalAccessor;->isSupported(Ljava/time/temporal/TemporalField;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 41
    invoke-interface {p0, p1}, Ljava/time/temporal/TemporalAccessor;->get(Ljava/time/temporal/TemporalField;)I

    move-result p0

    return p0

    .line 44
    :cond_0
    invoke-interface {p1}, Ljava/time/temporal/TemporalField;->range()Ljava/time/temporal/ValueRange;

    move-result-object p0

    invoke-virtual {p0}, Ljava/time/temporal/ValueRange;->getMinimum()J

    move-result-wide p0

    long-to-int p0, p0

    return p0
.end method

.method public static isIn(Ljava/time/temporal/TemporalAccessor;Ljava/time/temporal/TemporalAccessor;Ljava/time/temporal/TemporalAccessor;)Z
    .locals 1

    const/4 v0, 0x1

    .line 184
    invoke-static {p0, p1, p2, v0, v0}, Lcn/hutool/core/date/TemporalAccessorUtil;->isIn(Ljava/time/temporal/TemporalAccessor;Ljava/time/temporal/TemporalAccessor;Ljava/time/temporal/TemporalAccessor;ZZ)Z

    move-result p0

    return p0
.end method

.method public static isIn(Ljava/time/temporal/TemporalAccessor;Ljava/time/temporal/TemporalAccessor;Ljava/time/temporal/TemporalAccessor;ZZ)Z
    .locals 6

    if-eqz p0, :cond_5

    if-eqz p1, :cond_5

    if-eqz p2, :cond_5

    .line 208
    invoke-static {p0}, Lcn/hutool/core/date/TemporalAccessorUtil;->toEpochMilli(Ljava/time/temporal/TemporalAccessor;)J

    move-result-wide v0

    .line 209
    invoke-static {p1}, Lcn/hutool/core/date/TemporalAccessorUtil;->toEpochMilli(Ljava/time/temporal/TemporalAccessor;)J

    move-result-wide p0

    .line 210
    invoke-static {p2}, Lcn/hutool/core/date/TemporalAccessorUtil;->toEpochMilli(Ljava/time/temporal/TemporalAccessor;)J

    move-result-wide v2

    .line 211
    invoke-static {p0, p1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    .line 212
    invoke-static {p0, p1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p0

    cmp-long p2, v4, v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-gez p2, :cond_0

    cmp-long p2, v0, p0

    if-gez p2, :cond_0

    move p2, v2

    goto :goto_0

    :cond_0
    move p2, v3

    :goto_0
    if-nez p2, :cond_2

    if-eqz p3, :cond_2

    cmp-long p2, v0, v4

    if-nez p2, :cond_1

    move p2, v2

    goto :goto_1

    :cond_1
    move p2, v3

    :cond_2
    :goto_1
    if-nez p2, :cond_4

    if-eqz p4, :cond_4

    cmp-long p0, v0, p0

    if-nez p0, :cond_3

    goto :goto_2

    :cond_3
    move v2, v3

    :goto_2
    move p2, v2

    :cond_4
    return p2

    .line 205
    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "\u53c2\u6570\u4e0d\u53ef\u4e3anull"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static toEpochMilli(Ljava/time/temporal/TemporalAccessor;)J
    .locals 2

    .line 124
    instance-of v0, p0, Ljava/time/Month;

    if-eqz v0, :cond_0

    .line 125
    check-cast p0, Ljava/time/Month;

    invoke-virtual {p0}, Ljava/time/Month;->getValue()I

    move-result p0

    int-to-long v0, p0

    return-wide v0

    .line 126
    :cond_0
    instance-of v0, p0, Ljava/time/DayOfWeek;

    if-eqz v0, :cond_1

    .line 127
    check-cast p0, Ljava/time/DayOfWeek;

    invoke-virtual {p0}, Ljava/time/DayOfWeek;->getValue()I

    move-result p0

    int-to-long v0, p0

    return-wide v0

    .line 128
    :cond_1
    instance-of v0, p0, Ljava/time/chrono/Era;

    if-eqz v0, :cond_2

    .line 129
    check-cast p0, Ljava/time/chrono/Era;

    invoke-interface {p0}, Ljava/time/chrono/Era;->getValue()I

    move-result p0

    int-to-long v0, p0

    return-wide v0

    .line 131
    :cond_2
    invoke-static {p0}, Lcn/hutool/core/date/TemporalAccessorUtil;->toInstant(Ljava/time/temporal/TemporalAccessor;)Ljava/time/Instant;

    move-result-object p0

    invoke-virtual {p0}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v0

    return-wide v0
.end method

.method public static toInstant(Ljava/time/temporal/TemporalAccessor;)Ljava/time/Instant;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 147
    :cond_0
    instance-of v0, p0, Ljava/time/Instant;

    if-eqz v0, :cond_1

    .line 148
    check-cast p0, Ljava/time/Instant;

    goto/16 :goto_0

    .line 149
    :cond_1
    instance-of v0, p0, Ljava/time/LocalDateTime;

    if-eqz v0, :cond_2

    .line 150
    check-cast p0, Ljava/time/LocalDateTime;

    invoke-static {}, Ljava/time/ZoneId;->systemDefault()Ljava/time/ZoneId;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/time/LocalDateTime;->atZone(Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object p0

    invoke-virtual {p0}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object p0

    goto :goto_0

    .line 151
    :cond_2
    instance-of v0, p0, Ljava/time/ZonedDateTime;

    if-eqz v0, :cond_3

    .line 152
    check-cast p0, Ljava/time/ZonedDateTime;

    invoke-virtual {p0}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object p0

    goto :goto_0

    .line 153
    :cond_3
    instance-of v0, p0, Ljava/time/OffsetDateTime;

    if-eqz v0, :cond_4

    .line 154
    check-cast p0, Ljava/time/OffsetDateTime;

    invoke-virtual {p0}, Ljava/time/OffsetDateTime;->toInstant()Ljava/time/Instant;

    move-result-object p0

    goto :goto_0

    .line 155
    :cond_4
    instance-of v0, p0, Ljava/time/LocalDate;

    if-eqz v0, :cond_5

    .line 156
    check-cast p0, Ljava/time/LocalDate;

    invoke-static {}, Ljava/time/ZoneId;->systemDefault()Ljava/time/ZoneId;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/time/LocalDate;->atStartOfDay(Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object p0

    invoke-virtual {p0}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object p0

    goto :goto_0

    .line 157
    :cond_5
    instance-of v0, p0, Ljava/time/LocalTime;

    if-eqz v0, :cond_6

    .line 159
    check-cast p0, Ljava/time/LocalTime;

    invoke-static {}, Ljava/time/LocalDate;->now()Ljava/time/LocalDate;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/time/LocalTime;->atDate(Ljava/time/LocalDate;)Ljava/time/LocalDateTime;

    move-result-object p0

    invoke-static {}, Ljava/time/ZoneId;->systemDefault()Ljava/time/ZoneId;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/time/LocalDateTime;->atZone(Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object p0

    invoke-virtual {p0}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object p0

    goto :goto_0

    .line 160
    :cond_6
    instance-of v0, p0, Ljava/time/OffsetTime;

    if-eqz v0, :cond_7

    .line 162
    check-cast p0, Ljava/time/OffsetTime;

    invoke-static {}, Ljava/time/LocalDate;->now()Ljava/time/LocalDate;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/time/OffsetTime;->atDate(Ljava/time/LocalDate;)Ljava/time/OffsetDateTime;

    move-result-object p0

    invoke-virtual {p0}, Ljava/time/OffsetDateTime;->toInstant()Ljava/time/Instant;

    move-result-object p0

    goto :goto_0

    .line 167
    :cond_7
    invoke-static {p0}, Lcn/hutool/core/date/LocalDateTimeUtil;->of(Ljava/time/temporal/TemporalAccessor;)Ljava/time/LocalDateTime;

    move-result-object p0

    invoke-static {p0}, Lcn/hutool/core/date/TemporalAccessorUtil;->toInstant(Ljava/time/temporal/TemporalAccessor;)Ljava/time/Instant;

    move-result-object p0

    :goto_0
    return-object p0
.end method
