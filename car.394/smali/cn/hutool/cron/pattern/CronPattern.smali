.class public Lcn/hutool/cron/pattern/CronPattern;
.super Ljava/lang/Object;
.source "CronPattern.java"


# instance fields
.field private final matchers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/hutool/cron/pattern/matcher/PatternMatcher;",
            ">;"
        }
    .end annotation
.end field

.field private final pattern:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    iput-object p1, p0, Lcn/hutool/cron/pattern/CronPattern;->pattern:Ljava/lang/String;

    .line 94
    invoke-static {p1}, Lcn/hutool/cron/pattern/parser/PatternParser;->parse(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcn/hutool/cron/pattern/CronPattern;->matchers:Ljava/util/List;

    return-void
.end method

.method private match([I)Z
    .locals 2

    .line 173
    iget-object v0, p0, Lcn/hutool/cron/pattern/CronPattern;->matchers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/hutool/cron/pattern/matcher/PatternMatcher;

    .line 174
    invoke-virtual {v1, p1}, Lcn/hutool/cron/pattern/matcher/PatternMatcher;->match([I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private nextMatchAfter([ILjava/util/TimeZone;)Ljava/util/Calendar;
    .locals 3

    .line 189
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcn/hutool/cron/pattern/CronPattern;->matchers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 190
    iget-object v1, p0, Lcn/hutool/cron/pattern/CronPattern;->matchers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/hutool/cron/pattern/matcher/PatternMatcher;

    .line 191
    invoke-virtual {v2, p1, p2}, Lcn/hutool/cron/pattern/matcher/PatternMatcher;->nextMatchAfter([ILjava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 194
    :cond_0
    invoke-static {v0}, Lcn/hutool/core/collection/CollUtil;->min(Ljava/util/Collection;)Ljava/lang/Comparable;

    move-result-object p1

    check-cast p1, Ljava/util/Calendar;

    return-object p1
.end method

.method public static of(Ljava/lang/String;)Lcn/hutool/cron/pattern/CronPattern;
    .locals 1

    .line 84
    new-instance v0, Lcn/hutool/cron/pattern/CronPattern;

    invoke-direct {v0, p0}, Lcn/hutool/cron/pattern/CronPattern;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public match(JZ)Z
    .locals 1

    .line 105
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2, p3}, Lcn/hutool/cron/pattern/CronPattern;->match(Ljava/util/TimeZone;JZ)Z

    move-result p1

    return p1
.end method

.method public match(Ljava/time/LocalDateTime;Z)Z
    .locals 0

    .line 142
    invoke-static {p1, p2}, Lcn/hutool/cron/pattern/PatternUtil;->getFields(Ljava/time/LocalDateTime;Z)[I

    move-result-object p1

    invoke-direct {p0, p1}, Lcn/hutool/cron/pattern/CronPattern;->match([I)Z

    move-result p1

    return p1
.end method

.method public match(Ljava/util/Calendar;Z)Z
    .locals 0

    .line 130
    invoke-static {p1, p2}, Lcn/hutool/cron/pattern/PatternUtil;->getFields(Ljava/util/Calendar;Z)[I

    move-result-object p1

    invoke-direct {p0, p1}, Lcn/hutool/cron/pattern/CronPattern;->match([I)Z

    move-result p1

    return p1
.end method

.method public match(Ljava/util/TimeZone;JZ)Z
    .locals 1

    .line 117
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0, p1}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    .line 118
    invoke-virtual {v0, p2, p3}, Ljava/util/GregorianCalendar;->setTimeInMillis(J)V

    .line 119
    invoke-virtual {p0, v0, p4}, Lcn/hutool/cron/pattern/CronPattern;->match(Ljava/util/Calendar;Z)Z

    move-result p1

    return p1
.end method

.method public nextMatchAfter(Ljava/util/Calendar;)Ljava/util/Calendar;
    .locals 3

    const/4 v0, 0x1

    .line 152
    invoke-static {p1, v0}, Lcn/hutool/cron/pattern/PatternUtil;->getFields(Ljava/util/Calendar;Z)[I

    move-result-object v1

    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object p1

    invoke-direct {p0, v1, p1}, Lcn/hutool/cron/pattern/CronPattern;->nextMatchAfter([ILjava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object p1

    .line 153
    invoke-virtual {p0, p1, v0}, Lcn/hutool/cron/pattern/CronPattern;->match(Ljava/util/Calendar;Z)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x5

    .line 154
    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    add-int/2addr v2, v0

    invoke-virtual {p1, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 155
    invoke-static {p1}, Lcn/hutool/core/date/CalendarUtil;->beginOfDay(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object p1

    .line 156
    invoke-virtual {p0, p1}, Lcn/hutool/cron/pattern/CronPattern;->nextMatchAfter(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 163
    iget-object v0, p0, Lcn/hutool/cron/pattern/CronPattern;->pattern:Ljava/lang/String;

    return-object v0
.end method
