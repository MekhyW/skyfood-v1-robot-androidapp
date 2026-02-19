.class public Lcn/hutool/cron/pattern/matcher/PatternMatcher;
.super Ljava/lang/Object;
.source "PatternMatcher.java"


# instance fields
.field private final matchers:[Lcn/hutool/cron/pattern/matcher/PartMatcher;


# direct methods
.method public constructor <init>(Lcn/hutool/cron/pattern/matcher/PartMatcher;Lcn/hutool/cron/pattern/matcher/PartMatcher;Lcn/hutool/cron/pattern/matcher/PartMatcher;Lcn/hutool/cron/pattern/matcher/PartMatcher;Lcn/hutool/cron/pattern/matcher/PartMatcher;Lcn/hutool/cron/pattern/matcher/PartMatcher;Lcn/hutool/cron/pattern/matcher/PartMatcher;)V
    .locals 2

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x7

    new-array v0, v0, [Lcn/hutool/cron/pattern/matcher/PartMatcher;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p2, v0, p1

    const/4 p1, 0x2

    aput-object p3, v0, p1

    const/4 p1, 0x3

    aput-object p4, v0, p1

    const/4 p1, 0x4

    aput-object p5, v0, p1

    const/4 p1, 0x5

    aput-object p6, v0, p1

    const/4 p1, 0x6

    aput-object p7, v0, p1

    .line 42
    iput-object v0, p0, Lcn/hutool/cron/pattern/matcher/PatternMatcher;->matchers:[Lcn/hutool/cron/pattern/matcher/PartMatcher;

    return-void
.end method

.method private getMin(Lcn/hutool/cron/pattern/Part;)I
    .locals 3

    .line 248
    invoke-virtual {p0, p1}, Lcn/hutool/cron/pattern/matcher/PatternMatcher;->get(Lcn/hutool/cron/pattern/Part;)Lcn/hutool/cron/pattern/matcher/PartMatcher;

    move-result-object v0

    .line 251
    instance-of v1, v0, Lcn/hutool/cron/pattern/matcher/AlwaysTrueMatcher;

    if-eqz v1, :cond_0

    .line 252
    invoke-virtual {p1}, Lcn/hutool/cron/pattern/Part;->getMin()I

    move-result p1

    goto :goto_0

    .line 253
    :cond_0
    instance-of p1, v0, Lcn/hutool/cron/pattern/matcher/BoolArrayMatcher;

    if-eqz p1, :cond_1

    .line 254
    check-cast v0, Lcn/hutool/cron/pattern/matcher/BoolArrayMatcher;

    invoke-virtual {v0}, Lcn/hutool/cron/pattern/matcher/BoolArrayMatcher;->getMinValue()I

    move-result p1

    :goto_0
    return p1

    .line 256
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid matcher: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private match(IIIIIII)Z
    .locals 2

    const/4 v0, 0x0

    if-ltz p1, :cond_0

    .line 99
    iget-object v1, p0, Lcn/hutool/cron/pattern/matcher/PatternMatcher;->matchers:[Lcn/hutool/cron/pattern/matcher/PartMatcher;

    aget-object v1, v1, v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v1, p1}, Lcn/hutool/cron/pattern/matcher/PartMatcher;->match(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    iget-object p1, p0, Lcn/hutool/cron/pattern/matcher/PatternMatcher;->matchers:[Lcn/hutool/cron/pattern/matcher/PartMatcher;

    const/4 v1, 0x1

    aget-object p1, p1, v1

    .line 100
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2}, Lcn/hutool/cron/pattern/matcher/PartMatcher;->match(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcn/hutool/cron/pattern/matcher/PatternMatcher;->matchers:[Lcn/hutool/cron/pattern/matcher/PartMatcher;

    const/4 p2, 0x2

    aget-object p1, p1, p2

    .line 101
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2}, Lcn/hutool/cron/pattern/matcher/PartMatcher;->match(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcn/hutool/cron/pattern/matcher/PatternMatcher;->matchers:[Lcn/hutool/cron/pattern/matcher/PartMatcher;

    const/4 p2, 0x3

    aget-object p1, p1, p2

    int-to-long p2, p7

    .line 102
    invoke-static {p2, p3}, Ljava/time/Year;->isLeap(J)Z

    move-result p2

    invoke-static {p1, p4, p5, p2}, Lcn/hutool/cron/pattern/matcher/PatternMatcher;->matchDayOfMonth(Lcn/hutool/cron/pattern/matcher/PartMatcher;IIZ)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcn/hutool/cron/pattern/matcher/PatternMatcher;->matchers:[Lcn/hutool/cron/pattern/matcher/PartMatcher;

    const/4 p2, 0x4

    aget-object p1, p1, p2

    .line 103
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2}, Lcn/hutool/cron/pattern/matcher/PartMatcher;->match(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcn/hutool/cron/pattern/matcher/PatternMatcher;->matchers:[Lcn/hutool/cron/pattern/matcher/PartMatcher;

    const/4 p2, 0x5

    aget-object p1, p1, p2

    .line 104
    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2}, Lcn/hutool/cron/pattern/matcher/PartMatcher;->match(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcn/hutool/cron/pattern/matcher/PatternMatcher;->matchers:[Lcn/hutool/cron/pattern/matcher/PartMatcher;

    const/4 p2, 0x6

    aget-object p1, p1, p2

    .line 105
    invoke-static {p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2}, Lcn/hutool/cron/pattern/matcher/PartMatcher;->match(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    move v0, v1

    :cond_1
    return v0
.end method

.method private static matchDayOfMonth(Lcn/hutool/cron/pattern/matcher/PartMatcher;IIZ)Z
    .locals 1

    .line 118
    instance-of v0, p0, Lcn/hutool/cron/pattern/matcher/DayOfMonthMatcher;

    if-eqz v0, :cond_0

    check-cast p0, Lcn/hutool/cron/pattern/matcher/DayOfMonthMatcher;

    .line 119
    invoke-virtual {p0, p1, p2, p3}, Lcn/hutool/cron/pattern/matcher/DayOfMonthMatcher;->match(IIZ)Z

    move-result p0

    goto :goto_0

    .line 120
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Lcn/hutool/cron/pattern/matcher/PartMatcher;->match(Ljava/lang/Object;)Z

    move-result p0

    :goto_0
    return p0
.end method

.method private nextMatchValuesAfter([I)[I
    .locals 5

    .line 177
    invoke-virtual {p1}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    .line 179
    sget-object v1, Lcn/hutool/cron/pattern/Part;->YEAR:Lcn/hutool/cron/pattern/Part;

    invoke-virtual {v1}, Lcn/hutool/cron/pattern/Part;->ordinal()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    const/4 v3, -0x1

    if-ltz v1, :cond_3

    .line 183
    sget-object v4, Lcn/hutool/cron/pattern/Part;->DAY_OF_WEEK:Lcn/hutool/cron/pattern/Part;

    invoke-virtual {v4}, Lcn/hutool/cron/pattern/Part;->ordinal()I

    move-result v4

    if-ne v1, v4, :cond_1

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 188
    :cond_1
    iget-object v2, p0, Lcn/hutool/cron/pattern/matcher/PatternMatcher;->matchers:[Lcn/hutool/cron/pattern/matcher/PartMatcher;

    aget-object v2, v2, v1

    aget v4, p1, v1

    invoke-interface {v2, v4}, Lcn/hutool/cron/pattern/matcher/PartMatcher;->nextAfter(I)I

    move-result v2

    .line 189
    aget v4, p1, v1

    if-le v2, v4, :cond_2

    .line 191
    aput v2, v0, v1

    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_2
    if-ge v2, v4, :cond_0

    add-int/lit8 v1, v1, 0x1

    move v2, v3

    :cond_3
    :goto_1
    if-ne v3, v2, :cond_6

    .line 206
    :goto_2
    sget-object v2, Lcn/hutool/cron/pattern/Part;->YEAR:Lcn/hutool/cron/pattern/Part;

    invoke-virtual {v2}, Lcn/hutool/cron/pattern/Part;->ordinal()I

    move-result v2

    if-gt v1, v2, :cond_6

    .line 207
    sget-object v2, Lcn/hutool/cron/pattern/Part;->DAY_OF_WEEK:Lcn/hutool/cron/pattern/Part;

    invoke-virtual {v2}, Lcn/hutool/cron/pattern/Part;->ordinal()I

    move-result v2

    if-ne v1, v2, :cond_5

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 212
    :cond_5
    iget-object v2, p0, Lcn/hutool/cron/pattern/matcher/PatternMatcher;->matchers:[Lcn/hutool/cron/pattern/matcher/PartMatcher;

    aget-object v2, v2, v1

    aget v3, p1, v1

    add-int/lit8 v3, v3, 0x1

    invoke-interface {v2, v3}, Lcn/hutool/cron/pattern/matcher/PartMatcher;->nextAfter(I)I

    move-result v2

    .line 213
    aget v3, p1, v1

    if-le v2, v3, :cond_4

    .line 214
    aput v2, v0, v1

    add-int/lit8 v1, v1, -0x1

    .line 223
    :cond_6
    invoke-direct {p0, v0, v1}, Lcn/hutool/cron/pattern/matcher/PatternMatcher;->setToMin([II)V

    return-object v0
.end method

.method private setToMin([II)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    if-gt v0, p2, :cond_0

    .line 236
    invoke-static {v0}, Lcn/hutool/cron/pattern/Part;->of(I)Lcn/hutool/cron/pattern/Part;

    move-result-object v1

    .line 237
    invoke-direct {p0, v1}, Lcn/hutool/cron/pattern/matcher/PatternMatcher;->getMin(Lcn/hutool/cron/pattern/Part;)I

    move-result v1

    aput v1, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private setValue(Ljava/util/Calendar;Lcn/hutool/cron/pattern/Part;I)Ljava/util/Calendar;
    .locals 2

    .line 275
    sget-object v0, Lcn/hutool/cron/pattern/matcher/PatternMatcher$1;->$SwitchMap$cn$hutool$cron$pattern$Part:[I

    invoke-virtual {p2}, Lcn/hutool/cron/pattern/Part;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_1
    add-int/lit8 p3, p3, -0x1

    .line 284
    :goto_0
    invoke-virtual {p2}, Lcn/hutool/cron/pattern/Part;->getCalendarField()I

    move-result p2

    invoke-virtual {p1, p2, p3}, Ljava/util/Calendar;->set(II)V

    return-object p1
.end method


# virtual methods
.method public get(Lcn/hutool/cron/pattern/Part;)Lcn/hutool/cron/pattern/matcher/PartMatcher;
    .locals 1

    .line 60
    iget-object v0, p0, Lcn/hutool/cron/pattern/matcher/PatternMatcher;->matchers:[Lcn/hutool/cron/pattern/matcher/PartMatcher;

    invoke-virtual {p1}, Lcn/hutool/cron/pattern/Part;->ordinal()I

    move-result p1

    aget-object p1, v0, p1

    return-object p1
.end method

.method public match([I)Z
    .locals 9

    const/4 v0, 0x0

    .line 72
    aget v2, p1, v0

    const/4 v0, 0x1

    aget v3, p1, v0

    const/4 v0, 0x2

    aget v4, p1, v0

    const/4 v0, 0x3

    aget v5, p1, v0

    const/4 v0, 0x4

    aget v6, p1, v0

    const/4 v0, 0x5

    aget v7, p1, v0

    const/4 v0, 0x6

    aget v8, p1, v0

    move-object v1, p0

    invoke-direct/range {v1 .. v8}, Lcn/hutool/cron/pattern/matcher/PatternMatcher;->match(IIIIIII)Z

    move-result p1

    return p1
.end method

.method public matchWeek(I)Z
    .locals 2

    .line 83
    iget-object v0, p0, Lcn/hutool/cron/pattern/matcher/PatternMatcher;->matchers:[Lcn/hutool/cron/pattern/matcher/PartMatcher;

    const/4 v1, 0x5

    aget-object v0, v0, v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Lcn/hutool/cron/pattern/matcher/PartMatcher;->match(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public nextMatchAfter([ILjava/util/TimeZone;)Ljava/util/Calendar;
    .locals 3

    .line 145
    invoke-static {p2}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object p2

    const/16 v0, 0xe

    const/4 v1, 0x0

    .line 146
    invoke-virtual {p2, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 148
    invoke-direct {p0, p1}, Lcn/hutool/cron/pattern/matcher/PatternMatcher;->nextMatchValuesAfter([I)[I

    move-result-object p1

    .line 149
    :goto_0
    array-length v0, p1

    if-ge v1, v0, :cond_1

    .line 151
    sget-object v0, Lcn/hutool/cron/pattern/Part;->DAY_OF_WEEK:Lcn/hutool/cron/pattern/Part;

    invoke-virtual {v0}, Lcn/hutool/cron/pattern/Part;->ordinal()I

    move-result v0

    if-eq v1, v0, :cond_0

    .line 152
    invoke-static {v1}, Lcn/hutool/cron/pattern/Part;->of(I)Lcn/hutool/cron/pattern/Part;

    move-result-object v0

    aget v2, p1, v1

    invoke-direct {p0, p2, v0, v2}, Lcn/hutool/cron/pattern/matcher/PatternMatcher;->setValue(Ljava/util/Calendar;Lcn/hutool/cron/pattern/Part;I)Ljava/util/Calendar;

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object p2
.end method
