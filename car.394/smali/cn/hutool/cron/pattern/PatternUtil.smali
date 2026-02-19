.class Lcn/hutool/cron/pattern/PatternUtil;
.super Ljava/lang/Object;
.source "PatternUtil.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getFields(Ljava/time/LocalDateTime;Z)[I
    .locals 8

    if-eqz p1, :cond_0

    .line 26
    invoke-virtual {p0}, Ljava/time/LocalDateTime;->getSecond()I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    .line 27
    :goto_0
    invoke-virtual {p0}, Ljava/time/LocalDateTime;->getMinute()I

    move-result v0

    .line 28
    invoke-virtual {p0}, Ljava/time/LocalDateTime;->getHour()I

    move-result v1

    .line 29
    invoke-virtual {p0}, Ljava/time/LocalDateTime;->getDayOfMonth()I

    move-result v2

    .line 30
    invoke-virtual {p0}, Ljava/time/LocalDateTime;->getMonthValue()I

    move-result v3

    .line 31
    invoke-virtual {p0}, Ljava/time/LocalDateTime;->getDayOfWeek()Ljava/time/DayOfWeek;

    move-result-object v4

    invoke-static {v4}, Lcn/hutool/core/date/Week;->of(Ljava/time/DayOfWeek;)Lcn/hutool/core/date/Week;

    move-result-object v4

    invoke-virtual {v4}, Lcn/hutool/core/date/Week;->getValue()I

    move-result v4

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    .line 32
    invoke-virtual {p0}, Ljava/time/LocalDateTime;->getYear()I

    move-result p0

    const/4 v6, 0x7

    new-array v6, v6, [I

    const/4 v7, 0x0

    aput p1, v6, v7

    aput v0, v6, v5

    const/4 p1, 0x2

    aput v1, v6, p1

    const/4 p1, 0x3

    aput v2, v6, p1

    const/4 p1, 0x4

    aput v3, v6, p1

    const/4 p1, 0x5

    aput v4, v6, p1

    const/4 p1, 0x6

    aput p0, v6, p1

    return-object v6
.end method

.method static getFields(Ljava/util/Calendar;Z)[I
    .locals 10

    if-eqz p1, :cond_0

    const/16 p1, 0xd

    .line 46
    invoke-virtual {p0, p1}, Ljava/util/Calendar;->get(I)I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    :goto_0
    const/16 v0, 0xc

    .line 47
    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    const/16 v1, 0xb

    .line 48
    invoke-virtual {p0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    const/4 v2, 0x5

    .line 49
    invoke-virtual {p0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const/4 v4, 0x2

    .line 50
    invoke-virtual {p0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v5

    const/4 v6, 0x1

    add-int/2addr v5, v6

    const/4 v7, 0x7

    .line 51
    invoke-virtual {p0, v7}, Ljava/util/Calendar;->get(I)I

    move-result v8

    sub-int/2addr v8, v6

    .line 52
    invoke-virtual {p0, v6}, Ljava/util/Calendar;->get(I)I

    move-result p0

    new-array v7, v7, [I

    const/4 v9, 0x0

    aput p1, v7, v9

    aput v0, v7, v6

    aput v1, v7, v4

    const/4 p1, 0x3

    aput v3, v7, p1

    const/4 p1, 0x4

    aput v5, v7, p1

    aput v8, v7, v2

    const/4 p1, 0x6

    aput p0, v7, p1

    return-object v7
.end method
