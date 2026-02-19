.class public Lcn/hutool/cron/pattern/matcher/DayOfMonthMatcher;
.super Lcn/hutool/cron/pattern/matcher/BoolArrayMatcher;
.source "DayOfMonthMatcher.java"


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 21
    invoke-direct {p0, p1}, Lcn/hutool/cron/pattern/matcher/BoolArrayMatcher;-><init>(Ljava/util/List;)V

    return-void
.end method

.method private static isLastDayOfMonth(IIZ)Z
    .locals 1

    const/4 v0, 0x1

    sub-int/2addr p1, v0

    .line 51
    invoke-static {p1, p2}, Lcn/hutool/core/date/Month;->getLastDay(IZ)I

    move-result p1

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public match(IIZ)Z
    .locals 1

    .line 33
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-super {p0, v0}, Lcn/hutool/cron/pattern/matcher/BoolArrayMatcher;->match(Ljava/lang/Integer;)Z

    move-result v0

    if-nez v0, :cond_1

    const/16 v0, 0x1b

    if-le p1, v0, :cond_0

    const/16 v0, 0x1f

    .line 35
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcn/hutool/cron/pattern/matcher/DayOfMonthMatcher;->match(Ljava/lang/Integer;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1, p2, p3}, Lcn/hutool/cron/pattern/matcher/DayOfMonthMatcher;->isLastDayOfMonth(IIZ)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method
