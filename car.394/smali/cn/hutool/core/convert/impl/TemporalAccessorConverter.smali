.class public Lcn/hutool/core/convert/impl/TemporalAccessorConverter;
.super Lcn/hutool/core/convert/AbstractConverter;
.source "TemporalAccessorConverter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/hutool/core/convert/AbstractConverter<",
        "Ljava/time/temporal/TemporalAccessor;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private format:Ljava/lang/String;

.field private final targetType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$5bl1mH5sOy2qxCfIvc679Kdp9Ko(Ljava/time/temporal/TemporalAccessor;)Ljava/time/Instant;
    .locals 0

    invoke-static {p0}, Ljava/time/Instant;->from(Ljava/time/temporal/TemporalAccessor;)Ljava/time/Instant;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$See_j0A4GTBVMR54e-512CLhAn4()Ljava/time/ZoneId;
    .locals 1

    invoke-static {}, Ljava/time/ZoneId;->systemDefault()Ljava/time/ZoneId;

    move-result-object v0

    return-object v0
.end method

.method public constructor <init>(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 64
    invoke-direct {p0, p1, v0}, Lcn/hutool/core/convert/impl/TemporalAccessorConverter;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 73
    invoke-direct {p0}, Lcn/hutool/core/convert/AbstractConverter;-><init>()V

    .line 74
    iput-object p1, p0, Lcn/hutool/core/convert/impl/TemporalAccessorConverter;->targetType:Ljava/lang/Class;

    .line 75
    iput-object p2, p0, Lcn/hutool/core/convert/impl/TemporalAccessorConverter;->format:Ljava/lang/String;

    return-void
.end method

.method private parseFromCharSequence(Ljava/lang/CharSequence;)Ljava/time/temporal/TemporalAccessor;
    .locals 3

    .line 137
    invoke-static {p1}, Lcn/hutool/core/util/StrUtil;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 141
    :cond_0
    const-class v0, Ljava/time/DayOfWeek;

    iget-object v1, p0, Lcn/hutool/core/convert/impl/TemporalAccessorConverter;->targetType:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 142
    invoke-static {p1}, Lcn/hutool/core/util/StrUtil;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/time/DayOfWeek;->valueOf(Ljava/lang/String;)Ljava/time/DayOfWeek;

    move-result-object p1

    return-object p1

    .line 143
    :cond_1
    const-class v0, Ljava/time/Month;

    iget-object v1, p0, Lcn/hutool/core/convert/impl/TemporalAccessorConverter;->targetType:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 144
    invoke-static {p1}, Lcn/hutool/core/util/StrUtil;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/time/Month;->valueOf(Ljava/lang/String;)Ljava/time/Month;

    move-result-object p1

    return-object p1

    .line 145
    :cond_2
    const-class v0, Ljava/time/chrono/Era;

    iget-object v1, p0, Lcn/hutool/core/convert/impl/TemporalAccessorConverter;->targetType:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 146
    invoke-static {p1}, Lcn/hutool/core/util/StrUtil;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/time/chrono/IsoEra;->valueOf(Ljava/lang/String;)Ljava/time/chrono/IsoEra;

    move-result-object p1

    return-object p1

    .line 147
    :cond_3
    const-class v0, Ljava/time/MonthDay;

    iget-object v1, p0, Lcn/hutool/core/convert/impl/TemporalAccessorConverter;->targetType:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 148
    invoke-static {p1}, Ljava/time/MonthDay;->parse(Ljava/lang/CharSequence;)Ljava/time/MonthDay;

    move-result-object p1

    return-object p1

    .line 153
    :cond_4
    iget-object v0, p0, Lcn/hutool/core/convert/impl/TemporalAccessorConverter;->format:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 154
    invoke-static {v0}, Ljava/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;)Ljava/time/format/DateTimeFormatter;

    move-result-object v0

    .line 155
    new-instance v1, Lcn/hutool/core/convert/impl/TemporalAccessorConverter$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lcn/hutool/core/convert/impl/TemporalAccessorConverter$$ExternalSyntheticLambda1;-><init>()V

    invoke-virtual {v0, p1, v1}, Ljava/time/format/DateTimeFormatter;->parse(Ljava/lang/CharSequence;Ljava/time/temporal/TemporalQuery;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/time/Instant;

    .line 156
    invoke-virtual {v0}, Ljava/time/format/DateTimeFormatter;->getZone()Ljava/time/ZoneId;

    move-result-object v0

    goto :goto_0

    .line 158
    :cond_5
    invoke-static {p1}, Lcn/hutool/core/date/DateUtil;->parse(Ljava/lang/CharSequence;)Lcn/hutool/core/date/DateTime;

    move-result-object p1

    .line 159
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/hutool/core/date/DateTime;

    invoke-virtual {v0}, Lcn/hutool/core/date/DateTime;->toInstant()Ljava/time/Instant;

    move-result-object v0

    .line 160
    invoke-virtual {p1}, Lcn/hutool/core/date/DateTime;->getZoneId()Ljava/time/ZoneId;

    move-result-object p1

    move-object v2, v0

    move-object v0, p1

    move-object p1, v2

    .line 162
    :goto_0
    invoke-direct {p0, p1, v0}, Lcn/hutool/core/convert/impl/TemporalAccessorConverter;->parseFromInstant(Ljava/time/Instant;Ljava/time/ZoneId;)Ljava/time/temporal/TemporalAccessor;

    move-result-object p1

    return-object p1
.end method

.method private parseFromInstant(Ljava/time/Instant;Ljava/time/ZoneId;)Ljava/time/temporal/TemporalAccessor;
    .locals 2

    .line 286
    const-class v0, Ljava/time/Instant;

    iget-object v1, p0, Lcn/hutool/core/convert/impl/TemporalAccessorConverter;->targetType:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    .line 290
    :cond_0
    new-instance v0, Lcn/hutool/core/convert/impl/TemporalAccessorConverter$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcn/hutool/core/convert/impl/TemporalAccessorConverter$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {p2, v0}, Lcn/hutool/core/util/ObjectUtil;->defaultIfNull(Ljava/lang/Object;Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/time/ZoneId;

    .line 293
    const-class v0, Ljava/time/LocalDateTime;

    iget-object v1, p0, Lcn/hutool/core/convert/impl/TemporalAccessorConverter;->targetType:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 294
    invoke-static {p1, p2}, Ljava/time/LocalDateTime;->ofInstant(Ljava/time/Instant;Ljava/time/ZoneId;)Ljava/time/LocalDateTime;

    move-result-object p1

    goto :goto_0

    .line 295
    :cond_1
    const-class v0, Ljava/time/LocalDate;

    iget-object v1, p0, Lcn/hutool/core/convert/impl/TemporalAccessorConverter;->targetType:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 296
    invoke-virtual {p1, p2}, Ljava/time/Instant;->atZone(Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object p1

    invoke-virtual {p1}, Ljava/time/ZonedDateTime;->toLocalDate()Ljava/time/LocalDate;

    move-result-object p1

    goto :goto_0

    .line 297
    :cond_2
    const-class v0, Ljava/time/LocalTime;

    iget-object v1, p0, Lcn/hutool/core/convert/impl/TemporalAccessorConverter;->targetType:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 298
    invoke-virtual {p1, p2}, Ljava/time/Instant;->atZone(Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object p1

    invoke-virtual {p1}, Ljava/time/ZonedDateTime;->toLocalTime()Ljava/time/LocalTime;

    move-result-object p1

    goto :goto_0

    .line 299
    :cond_3
    const-class v0, Ljava/time/ZonedDateTime;

    iget-object v1, p0, Lcn/hutool/core/convert/impl/TemporalAccessorConverter;->targetType:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 300
    invoke-virtual {p1, p2}, Ljava/time/Instant;->atZone(Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object p1

    goto :goto_0

    .line 301
    :cond_4
    const-class v0, Ljava/time/OffsetDateTime;

    iget-object v1, p0, Lcn/hutool/core/convert/impl/TemporalAccessorConverter;->targetType:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 302
    invoke-static {p1, p2}, Ljava/time/OffsetDateTime;->ofInstant(Ljava/time/Instant;Ljava/time/ZoneId;)Ljava/time/OffsetDateTime;

    move-result-object p1

    goto :goto_0

    .line 303
    :cond_5
    const-class v0, Ljava/time/OffsetTime;

    iget-object v1, p0, Lcn/hutool/core/convert/impl/TemporalAccessorConverter;->targetType:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 304
    invoke-static {p1, p2}, Ljava/time/OffsetTime;->ofInstant(Ljava/time/Instant;Ljava/time/ZoneId;)Ljava/time/OffsetTime;

    move-result-object p1

    goto :goto_0

    :cond_6
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method private parseFromLocalDateTime(Ljava/time/LocalDateTime;)Ljava/time/temporal/TemporalAccessor;
    .locals 2

    .line 227
    const-class v0, Ljava/time/Instant;

    iget-object v1, p0, Lcn/hutool/core/convert/impl/TemporalAccessorConverter;->targetType:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 228
    invoke-static {p1}, Lcn/hutool/core/date/DateUtil;->toInstant(Ljava/time/temporal/TemporalAccessor;)Ljava/time/Instant;

    move-result-object p1

    return-object p1

    .line 230
    :cond_0
    const-class v0, Ljava/time/LocalDate;

    iget-object v1, p0, Lcn/hutool/core/convert/impl/TemporalAccessorConverter;->targetType:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 231
    invoke-virtual {p1}, Ljava/time/LocalDateTime;->toLocalDate()Ljava/time/LocalDate;

    move-result-object p1

    return-object p1

    .line 233
    :cond_1
    const-class v0, Ljava/time/LocalTime;

    iget-object v1, p0, Lcn/hutool/core/convert/impl/TemporalAccessorConverter;->targetType:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 234
    invoke-virtual {p1}, Ljava/time/LocalDateTime;->toLocalTime()Ljava/time/LocalTime;

    move-result-object p1

    return-object p1

    .line 236
    :cond_2
    const-class v0, Ljava/time/ZonedDateTime;

    iget-object v1, p0, Lcn/hutool/core/convert/impl/TemporalAccessorConverter;->targetType:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 237
    invoke-static {}, Ljava/time/ZoneId;->systemDefault()Ljava/time/ZoneId;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/time/LocalDateTime;->atZone(Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object p1

    return-object p1

    .line 239
    :cond_3
    const-class v0, Ljava/time/OffsetDateTime;

    iget-object v1, p0, Lcn/hutool/core/convert/impl/TemporalAccessorConverter;->targetType:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 240
    invoke-static {}, Ljava/time/ZoneId;->systemDefault()Ljava/time/ZoneId;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/time/LocalDateTime;->atZone(Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object p1

    invoke-virtual {p1}, Ljava/time/ZonedDateTime;->toOffsetDateTime()Ljava/time/OffsetDateTime;

    move-result-object p1

    return-object p1

    .line 242
    :cond_4
    const-class v0, Ljava/time/OffsetTime;

    iget-object v1, p0, Lcn/hutool/core/convert/impl/TemporalAccessorConverter;->targetType:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 243
    invoke-static {}, Ljava/time/ZoneId;->systemDefault()Ljava/time/ZoneId;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/time/LocalDateTime;->atZone(Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object p1

    invoke-virtual {p1}, Ljava/time/ZonedDateTime;->toOffsetDateTime()Ljava/time/OffsetDateTime;

    move-result-object p1

    invoke-virtual {p1}, Ljava/time/OffsetDateTime;->toOffsetTime()Ljava/time/OffsetTime;

    move-result-object p1

    return-object p1

    :cond_5
    const/4 p1, 0x0

    return-object p1
.end method

.method private parseFromLong(Ljava/lang/Long;)Ljava/time/temporal/TemporalAccessor;
    .locals 2

    .line 172
    const-class v0, Ljava/time/DayOfWeek;

    iget-object v1, p0, Lcn/hutool/core/convert/impl/TemporalAccessorConverter;->targetType:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 173
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->toIntExact(J)I

    move-result p1

    invoke-static {p1}, Ljava/time/DayOfWeek;->of(I)Ljava/time/DayOfWeek;

    move-result-object p1

    return-object p1

    .line 174
    :cond_0
    const-class v0, Ljava/time/Month;

    iget-object v1, p0, Lcn/hutool/core/convert/impl/TemporalAccessorConverter;->targetType:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 175
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->toIntExact(J)I

    move-result p1

    invoke-static {p1}, Ljava/time/Month;->of(I)Ljava/time/Month;

    move-result-object p1

    return-object p1

    .line 176
    :cond_1
    const-class v0, Ljava/time/chrono/Era;

    iget-object v1, p0, Lcn/hutool/core/convert/impl/TemporalAccessorConverter;->targetType:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 177
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->toIntExact(J)I

    move-result p1

    invoke-static {p1}, Ljava/time/chrono/IsoEra;->of(I)Ljava/time/chrono/IsoEra;

    move-result-object p1

    return-object p1

    :cond_2
    const-string v0, "#sss"

    .line 181
    iget-object v1, p0, Lcn/hutool/core/convert/impl/TemporalAccessorConverter;->format:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 184
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/time/Instant;->ofEpochSecond(J)Ljava/time/Instant;

    move-result-object p1

    goto :goto_0

    .line 186
    :cond_3
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    move-result-object p1

    :goto_0
    const/4 v0, 0x0

    .line 188
    invoke-direct {p0, p1, v0}, Lcn/hutool/core/convert/impl/TemporalAccessorConverter;->parseFromInstant(Ljava/time/Instant;Ljava/time/ZoneId;)Ljava/time/temporal/TemporalAccessor;

    move-result-object p1

    return-object p1
.end method

.method private parseFromTemporalAccessor(Ljava/time/temporal/TemporalAccessor;)Ljava/time/temporal/TemporalAccessor;
    .locals 2

    .line 198
    const-class v0, Ljava/time/DayOfWeek;

    iget-object v1, p0, Lcn/hutool/core/convert/impl/TemporalAccessorConverter;->targetType:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 199
    invoke-static {p1}, Ljava/time/DayOfWeek;->from(Ljava/time/temporal/TemporalAccessor;)Ljava/time/DayOfWeek;

    move-result-object p1

    return-object p1

    .line 200
    :cond_0
    const-class v0, Ljava/time/Month;

    iget-object v1, p0, Lcn/hutool/core/convert/impl/TemporalAccessorConverter;->targetType:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 201
    invoke-static {p1}, Ljava/time/Month;->from(Ljava/time/temporal/TemporalAccessor;)Ljava/time/Month;

    move-result-object p1

    return-object p1

    .line 202
    :cond_1
    const-class v0, Ljava/time/MonthDay;

    iget-object v1, p0, Lcn/hutool/core/convert/impl/TemporalAccessorConverter;->targetType:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 203
    invoke-static {p1}, Ljava/time/MonthDay;->from(Ljava/time/temporal/TemporalAccessor;)Ljava/time/MonthDay;

    move-result-object p1

    return-object p1

    .line 207
    :cond_2
    instance-of v0, p1, Ljava/time/LocalDateTime;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 208
    move-object v0, p1

    check-cast v0, Ljava/time/LocalDateTime;

    invoke-direct {p0, v0}, Lcn/hutool/core/convert/impl/TemporalAccessorConverter;->parseFromLocalDateTime(Ljava/time/LocalDateTime;)Ljava/time/temporal/TemporalAccessor;

    move-result-object v0

    goto :goto_0

    .line 209
    :cond_3
    instance-of v0, p1, Ljava/time/ZonedDateTime;

    if-eqz v0, :cond_4

    .line 210
    move-object v0, p1

    check-cast v0, Ljava/time/ZonedDateTime;

    invoke-direct {p0, v0}, Lcn/hutool/core/convert/impl/TemporalAccessorConverter;->parseFromZonedDateTime(Ljava/time/ZonedDateTime;)Ljava/time/temporal/TemporalAccessor;

    move-result-object v0

    goto :goto_0

    :cond_4
    move-object v0, v1

    :goto_0
    if-nez v0, :cond_5

    .line 214
    invoke-static {p1}, Lcn/hutool/core/date/DateUtil;->toInstant(Ljava/time/temporal/TemporalAccessor;)Ljava/time/Instant;

    move-result-object p1

    invoke-direct {p0, p1, v1}, Lcn/hutool/core/convert/impl/TemporalAccessorConverter;->parseFromInstant(Ljava/time/Instant;Ljava/time/ZoneId;)Ljava/time/temporal/TemporalAccessor;

    move-result-object v0

    :cond_5
    return-object v0
.end method

.method private parseFromZonedDateTime(Ljava/time/ZonedDateTime;)Ljava/time/temporal/TemporalAccessor;
    .locals 2

    .line 256
    const-class v0, Ljava/time/Instant;

    iget-object v1, p0, Lcn/hutool/core/convert/impl/TemporalAccessorConverter;->targetType:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 257
    invoke-static {p1}, Lcn/hutool/core/date/DateUtil;->toInstant(Ljava/time/temporal/TemporalAccessor;)Ljava/time/Instant;

    move-result-object p1

    return-object p1

    .line 259
    :cond_0
    const-class v0, Ljava/time/LocalDateTime;

    iget-object v1, p0, Lcn/hutool/core/convert/impl/TemporalAccessorConverter;->targetType:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 260
    invoke-virtual {p1}, Ljava/time/ZonedDateTime;->toLocalDateTime()Ljava/time/LocalDateTime;

    move-result-object p1

    return-object p1

    .line 262
    :cond_1
    const-class v0, Ljava/time/LocalDate;

    iget-object v1, p0, Lcn/hutool/core/convert/impl/TemporalAccessorConverter;->targetType:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 263
    invoke-virtual {p1}, Ljava/time/ZonedDateTime;->toLocalDate()Ljava/time/LocalDate;

    move-result-object p1

    return-object p1

    .line 265
    :cond_2
    const-class v0, Ljava/time/LocalTime;

    iget-object v1, p0, Lcn/hutool/core/convert/impl/TemporalAccessorConverter;->targetType:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 266
    invoke-virtual {p1}, Ljava/time/ZonedDateTime;->toLocalTime()Ljava/time/LocalTime;

    move-result-object p1

    return-object p1

    .line 268
    :cond_3
    const-class v0, Ljava/time/OffsetDateTime;

    iget-object v1, p0, Lcn/hutool/core/convert/impl/TemporalAccessorConverter;->targetType:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 269
    invoke-virtual {p1}, Ljava/time/ZonedDateTime;->toOffsetDateTime()Ljava/time/OffsetDateTime;

    move-result-object p1

    return-object p1

    .line 271
    :cond_4
    const-class v0, Ljava/time/OffsetTime;

    iget-object v1, p0, Lcn/hutool/core/convert/impl/TemporalAccessorConverter;->targetType:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 272
    invoke-virtual {p1}, Ljava/time/ZonedDateTime;->toOffsetDateTime()Ljava/time/OffsetDateTime;

    move-result-object p1

    invoke-virtual {p1}, Ljava/time/OffsetDateTime;->toOffsetTime()Ljava/time/OffsetTime;

    move-result-object p1

    return-object p1

    :cond_5
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method protected bridge synthetic convertInternal(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 49
    invoke-virtual {p0, p1}, Lcn/hutool/core/convert/impl/TemporalAccessorConverter;->convertInternal(Ljava/lang/Object;)Ljava/time/temporal/TemporalAccessor;

    move-result-object p1

    return-object p1
.end method

.method protected convertInternal(Ljava/lang/Object;)Ljava/time/temporal/TemporalAccessor;
    .locals 14

    .line 104
    instance-of v0, p1, Ljava/lang/Number;

    if-eqz v0, :cond_0

    .line 105
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-direct {p0, p1}, Lcn/hutool/core/convert/impl/TemporalAccessorConverter;->parseFromLong(Ljava/lang/Long;)Ljava/time/temporal/TemporalAccessor;

    move-result-object p1

    return-object p1

    .line 106
    :cond_0
    instance-of v0, p1, Ljava/time/temporal/TemporalAccessor;

    if-eqz v0, :cond_1

    .line 107
    check-cast p1, Ljava/time/temporal/TemporalAccessor;

    invoke-direct {p0, p1}, Lcn/hutool/core/convert/impl/TemporalAccessorConverter;->parseFromTemporalAccessor(Ljava/time/temporal/TemporalAccessor;)Ljava/time/temporal/TemporalAccessor;

    move-result-object p1

    return-object p1

    .line 108
    :cond_1
    instance-of v0, p1, Ljava/util/Date;

    if-eqz v0, :cond_2

    .line 109
    check-cast p1, Ljava/util/Date;

    invoke-static {p1}, Lcn/hutool/core/date/DateUtil;->date(Ljava/util/Date;)Lcn/hutool/core/date/DateTime;

    move-result-object p1

    .line 110
    invoke-virtual {p1}, Lcn/hutool/core/date/DateTime;->toInstant()Ljava/time/Instant;

    move-result-object v0

    invoke-virtual {p1}, Lcn/hutool/core/date/DateTime;->getZoneId()Ljava/time/ZoneId;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcn/hutool/core/convert/impl/TemporalAccessorConverter;->parseFromInstant(Ljava/time/Instant;Ljava/time/ZoneId;)Ljava/time/temporal/TemporalAccessor;

    move-result-object p1

    return-object p1

    .line 111
    :cond_2
    instance-of v0, p1, Ljava/util/Calendar;

    if-eqz v0, :cond_3

    .line 112
    check-cast p1, Ljava/util/Calendar;

    .line 113
    invoke-virtual {p1}, Ljava/util/Calendar;->toInstant()Ljava/time/Instant;

    move-result-object v0

    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/TimeZone;->toZoneId()Ljava/time/ZoneId;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcn/hutool/core/convert/impl/TemporalAccessorConverter;->parseFromInstant(Ljava/time/Instant;Ljava/time/ZoneId;)Ljava/time/temporal/TemporalAccessor;

    move-result-object p1

    return-object p1

    .line 114
    :cond_3
    instance-of v0, p1, Ljava/util/Map;

    if-eqz v0, :cond_7

    .line 115
    check-cast p1, Ljava/util/Map;

    .line 116
    const-class v0, Ljava/time/LocalDate;

    iget-object v1, p0, Lcn/hutool/core/convert/impl/TemporalAccessorConverter;->targetType:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "day"

    const-string v2, "month"

    const-string v3, "year"

    if-eqz v0, :cond_4

    .line 117
    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcn/hutool/core/convert/Convert;->toInt(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lcn/hutool/core/convert/Convert;->toInt(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lcn/hutool/core/convert/Convert;->toInt(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {v0, v2, p1}, Ljava/time/LocalDate;->of(III)Ljava/time/LocalDate;

    move-result-object p1

    return-object p1

    .line 118
    :cond_4
    const-class v0, Ljava/time/LocalDateTime;

    iget-object v4, p0, Lcn/hutool/core/convert/impl/TemporalAccessorConverter;->targetType:Ljava/lang/Class;

    invoke-virtual {v0, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v4, "minute"

    const-string v5, "hour"

    const-string v6, "second"

    if-eqz v0, :cond_5

    .line 119
    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcn/hutool/core/convert/Convert;->toInt(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcn/hutool/core/convert/Convert;->toInt(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcn/hutool/core/convert/Convert;->toInt(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 120
    invoke-interface {p1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcn/hutool/core/convert/Convert;->toInt(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcn/hutool/core/convert/Convert;->toInt(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-interface {p1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcn/hutool/core/convert/Convert;->toInt(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-interface {p1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lcn/hutool/core/convert/Convert;->toInt(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v13

    .line 119
    invoke-static/range {v7 .. v13}, Ljava/time/LocalDateTime;->of(IIIIIII)Ljava/time/LocalDateTime;

    move-result-object p1

    return-object p1

    .line 121
    :cond_5
    const-class v0, Ljava/time/LocalTime;

    iget-object v1, p0, Lcn/hutool/core/convert/impl/TemporalAccessorConverter;->targetType:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 122
    invoke-interface {p1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcn/hutool/core/convert/Convert;->toInt(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcn/hutool/core/convert/Convert;->toInt(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {p1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lcn/hutool/core/convert/Convert;->toInt(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const-string v3, "nano"

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lcn/hutool/core/convert/Convert;->toInt(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {v0, v1, v2, p1}, Ljava/time/LocalTime;->of(IIII)Ljava/time/LocalTime;

    move-result-object p1

    return-object p1

    .line 124
    :cond_6
    new-instance v0, Lcn/hutool/core/convert/ConvertException;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcn/hutool/core/convert/impl/TemporalAccessorConverter;->targetType:Ljava/lang/Class;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const-string p1, "Unsupported type: [{}] from map: [{}]"

    invoke-direct {v0, p1, v1}, Lcn/hutool/core/convert/ConvertException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    .line 126
    :cond_7
    invoke-virtual {p0, p1}, Lcn/hutool/core/convert/impl/TemporalAccessorConverter;->convertToStr(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcn/hutool/core/convert/impl/TemporalAccessorConverter;->parseFromCharSequence(Ljava/lang/CharSequence;)Ljava/time/temporal/TemporalAccessor;

    move-result-object p1

    return-object p1
.end method

.method public getFormat()Ljava/lang/String;
    .locals 1

    .line 84
    iget-object v0, p0, Lcn/hutool/core/convert/impl/TemporalAccessorConverter;->format:Ljava/lang/String;

    return-object v0
.end method

.method public getTargetType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Ljava/time/temporal/TemporalAccessor;",
            ">;"
        }
    .end annotation

    .line 99
    iget-object v0, p0, Lcn/hutool/core/convert/impl/TemporalAccessorConverter;->targetType:Ljava/lang/Class;

    return-object v0
.end method

.method public setFormat(Ljava/lang/String;)V
    .locals 0

    .line 93
    iput-object p1, p0, Lcn/hutool/core/convert/impl/TemporalAccessorConverter;->format:Ljava/lang/String;

    return-void
.end method
