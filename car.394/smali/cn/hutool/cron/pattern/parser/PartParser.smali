.class public Lcn/hutool/cron/pattern/parser/PartParser;
.super Ljava/lang/Object;
.source "PartParser.java"


# instance fields
.field private final part:Lcn/hutool/cron/pattern/Part;


# direct methods
.method public constructor <init>(Lcn/hutool/cron/pattern/Part;)V
    .locals 0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Lcn/hutool/cron/pattern/parser/PartParser;->part:Lcn/hutool/cron/pattern/Part;

    return-void
.end method

.method private static isMatchAllStr(Ljava/lang/String;)Z
    .locals 2

    .line 228
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ne v1, v0, :cond_0

    const-string v0, "*"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "?"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method public static of(Lcn/hutool/cron/pattern/Part;)Lcn/hutool/cron/pattern/parser/PartParser;
    .locals 1

    .line 47
    new-instance v0, Lcn/hutool/cron/pattern/parser/PartParser;

    invoke-direct {v0, p0}, Lcn/hutool/cron/pattern/parser/PartParser;-><init>(Lcn/hutool/cron/pattern/Part;)V

    return-object v0
.end method

.method private parseAlias(Ljava/lang/String;)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/hutool/cron/CronException;
        }
    .end annotation

    const-string v0, "L"

    .line 271
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 273
    iget-object p1, p0, Lcn/hutool/cron/pattern/parser/PartParser;->part:Lcn/hutool/cron/pattern/Part;

    invoke-virtual {p1}, Lcn/hutool/cron/pattern/Part;->getMax()I

    move-result p1

    return p1

    .line 276
    :cond_0
    sget-object v0, Lcn/hutool/cron/pattern/parser/PartParser$1;->$SwitchMap$cn$hutool$cron$pattern$Part:[I

    iget-object v1, p0, Lcn/hutool/cron/pattern/parser/PartParser;->part:Lcn/hutool/cron/pattern/Part;

    invoke-virtual {v1}, Lcn/hutool/cron/pattern/Part;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 282
    invoke-static {p1}, Lcn/hutool/core/date/Week;->of(Ljava/lang/String;)Lcn/hutool/core/date/Week;

    move-result-object p1

    invoke-virtual {p1}, Lcn/hutool/core/date/Week;->ordinal()I

    move-result p1

    return p1

    .line 285
    :cond_1
    new-instance v0, Lcn/hutool/cron/CronException;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, "Invalid alias value: [{}]"

    invoke-direct {v0, p1, v1}, Lcn/hutool/cron/CronException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    .line 279
    :cond_2
    invoke-static {p1}, Lcn/hutool/core/date/Month;->of(Ljava/lang/String;)Lcn/hutool/core/date/Month;

    move-result-object p1

    invoke-virtual {p1}, Lcn/hutool/core/date/Month;->getValueBaseOne()I

    move-result p1

    return p1
.end method

.method private parseArray(Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 103
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/16 v1, 0x2c

    .line 105
    invoke-static {p1, v1}, Lcn/hutool/core/util/StrUtil;->split(Ljava/lang/CharSequence;C)Ljava/util/List;

    move-result-object p1

    .line 106
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 107
    invoke-direct {p0, v1}, Lcn/hutool/cron/pattern/parser/PartParser;->parseStep(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/hutool/core/collection/CollUtil;->addAllIfNotContains(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private parseNumber(Ljava/lang/String;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/hutool/cron/CronException;
        }
    .end annotation

    .line 241
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 243
    :catch_0
    invoke-direct {p0, p1}, Lcn/hutool/cron/pattern/parser/PartParser;->parseAlias(Ljava/lang/String;)I

    move-result p1

    :goto_0
    if-gez p1, :cond_0

    .line 248
    iget-object v0, p0, Lcn/hutool/cron/pattern/parser/PartParser;->part:Lcn/hutool/cron/pattern/Part;

    invoke-virtual {v0}, Lcn/hutool/cron/pattern/Part;->getMax()I

    move-result v0

    add-int/2addr p1, v0

    .line 252
    :cond_0
    sget-object v0, Lcn/hutool/cron/pattern/Part;->DAY_OF_WEEK:Lcn/hutool/cron/pattern/Part;

    iget-object v1, p0, Lcn/hutool/cron/pattern/parser/PartParser;->part:Lcn/hutool/cron/pattern/Part;

    invoke-virtual {v0, v1}, Lcn/hutool/cron/pattern/Part;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcn/hutool/core/date/Week;->SUNDAY:Lcn/hutool/core/date/Week;

    invoke-virtual {v0}, Lcn/hutool/core/date/Week;->getIso8601Value()I

    move-result v0

    if-ne v0, p1, :cond_1

    .line 253
    sget-object p1, Lcn/hutool/core/date/Week;->SUNDAY:Lcn/hutool/core/date/Week;

    invoke-virtual {p1}, Lcn/hutool/core/date/Week;->ordinal()I

    move-result p1

    .line 256
    :cond_1
    iget-object v0, p0, Lcn/hutool/cron/pattern/parser/PartParser;->part:Lcn/hutool/cron/pattern/Part;

    invoke-virtual {v0, p1}, Lcn/hutool/cron/pattern/Part;->checkValue(I)I

    move-result p1

    return p1
.end method

.method private parseRange(Ljava/lang/String;I)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 158
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 161
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x2

    if-gt v1, v4, :cond_5

    .line 163
    iget-object v1, p0, Lcn/hutool/cron/pattern/parser/PartParser;->part:Lcn/hutool/cron/pattern/Part;

    invoke-virtual {v1}, Lcn/hutool/cron/pattern/Part;->getMin()I

    move-result v1

    .line 164
    invoke-static {p1}, Lcn/hutool/cron/pattern/parser/PartParser;->isMatchAllStr(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 165
    invoke-direct {p0, p1}, Lcn/hutool/cron/pattern/parser/PartParser;->parseNumber(Ljava/lang/String;)I

    move-result p1

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result v1

    goto :goto_0

    :cond_0
    if-ge p2, v3, :cond_1

    move p2, v3

    :cond_1
    :goto_0
    if-lez p2, :cond_3

    .line 173
    iget-object p1, p0, Lcn/hutool/cron/pattern/parser/PartParser;->part:Lcn/hutool/cron/pattern/Part;

    invoke-virtual {p1}, Lcn/hutool/cron/pattern/Part;->getMax()I

    move-result p1

    if-gt v1, p1, :cond_2

    :goto_1
    if-gt v1, p1, :cond_4

    .line 179
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/2addr v1, p2

    goto :goto_1

    .line 175
    :cond_2
    new-instance p2, Lcn/hutool/cron/CronException;

    new-array v0, v4, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v3

    const-string p1, "Invalid value {} > {}"

    invoke-direct {p2, p1, v0}, Lcn/hutool/cron/CronException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p2

    .line 183
    :cond_3
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    return-object v0

    :cond_5
    const/16 v1, 0x2d

    .line 189
    invoke-static {p1, v1}, Lcn/hutool/core/util/StrUtil;->split(Ljava/lang/CharSequence;C)Ljava/util/List;

    move-result-object v1

    .line 190
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-ne v5, v3, :cond_7

    .line 192
    invoke-direct {p0, p1}, Lcn/hutool/cron/pattern/parser/PartParser;->parseNumber(Ljava/lang/String;)I

    move-result p1

    if-lez p2, :cond_6

    .line 194
    iget-object v1, p0, Lcn/hutool/cron/pattern/parser/PartParser;->part:Lcn/hutool/cron/pattern/Part;

    invoke-virtual {v1}, Lcn/hutool/cron/pattern/Part;->getMax()I

    move-result v1

    invoke-static {p1, v1, p2, v0}, Lcn/hutool/core/util/NumberUtil;->appendRange(IIILjava/util/Collection;)Ljava/util/Collection;

    goto :goto_2

    .line 196
    :cond_6
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_7
    if-ne v5, v4, :cond_b

    .line 199
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-direct {p0, p1}, Lcn/hutool/cron/pattern/parser/PartParser;->parseNumber(Ljava/lang/String;)I

    move-result p1

    .line 200
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v1}, Lcn/hutool/cron/pattern/parser/PartParser;->parseNumber(Ljava/lang/String;)I

    move-result v1

    if-ge p2, v3, :cond_8

    move p2, v3

    :cond_8
    if-ge p1, v1, :cond_9

    .line 206
    invoke-static {p1, v1, p2, v0}, Lcn/hutool/core/util/NumberUtil;->appendRange(IIILjava/util/Collection;)Ljava/util/Collection;

    goto :goto_2

    :cond_9
    if-le p1, v1, :cond_a

    .line 208
    iget-object v2, p0, Lcn/hutool/cron/pattern/parser/PartParser;->part:Lcn/hutool/cron/pattern/Part;

    invoke-virtual {v2}, Lcn/hutool/cron/pattern/Part;->getMax()I

    move-result v2

    invoke-static {p1, v2, p2, v0}, Lcn/hutool/core/util/NumberUtil;->appendRange(IIILjava/util/Collection;)Ljava/util/Collection;

    .line 209
    iget-object p1, p0, Lcn/hutool/cron/pattern/parser/PartParser;->part:Lcn/hutool/cron/pattern/Part;

    invoke-virtual {p1}, Lcn/hutool/cron/pattern/Part;->getMin()I

    move-result p1

    invoke-static {p1, v1, p2, v0}, Lcn/hutool/core/util/NumberUtil;->appendRange(IIILjava/util/Collection;)Ljava/util/Collection;

    goto :goto_2

    .line 211
    :cond_a
    iget-object v1, p0, Lcn/hutool/cron/pattern/parser/PartParser;->part:Lcn/hutool/cron/pattern/Part;

    invoke-virtual {v1}, Lcn/hutool/cron/pattern/Part;->getMax()I

    move-result v1

    invoke-static {p1, v1, p2, v0}, Lcn/hutool/core/util/NumberUtil;->appendRange(IIILjava/util/Collection;)Ljava/util/Collection;

    :goto_2
    return-object v0

    .line 214
    :cond_b
    new-instance p2, Lcn/hutool/cron/CronException;

    new-array v0, v3, [Ljava/lang/Object;

    aput-object p1, v0, v2

    const-string p1, "Invalid syntax of field: [{}]"

    invoke-direct {p2, p1, v0}, Lcn/hutool/cron/CronException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p2
.end method

.method private parseStep(Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const/16 v0, 0x2f

    .line 125
    invoke-static {p1, v0}, Lcn/hutool/core/util/StrUtil;->split(Ljava/lang/CharSequence;C)Ljava/util/List;

    move-result-object v0

    .line 126
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const/4 v0, -0x1

    .line 130
    invoke-direct {p0, p1, v0}, Lcn/hutool/cron/pattern/parser/PartParser;->parseRange(Ljava/lang/String;I)Ljava/util/List;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 v3, 0x2

    const/4 v4, 0x0

    if-ne v1, v3, :cond_2

    .line 132
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v1}, Lcn/hutool/cron/pattern/parser/PartParser;->parseNumber(Ljava/lang/String;)I

    move-result v1

    if-lt v1, v2, :cond_1

    .line 136
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-direct {p0, p1, v1}, Lcn/hutool/cron/pattern/parser/PartParser;->parseRange(Ljava/lang/String;I)Ljava/util/List;

    move-result-object p1

    :goto_0
    return-object p1

    .line 134
    :cond_1
    new-instance v0, Lcn/hutool/cron/CronException;

    new-array v1, v2, [Ljava/lang/Object;

    aput-object p1, v1, v4

    const-string p1, "Non positive divisor for field: [{}]"

    invoke-direct {v0, p1, v1}, Lcn/hutool/cron/CronException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    .line 138
    :cond_2
    new-instance v0, Lcn/hutool/cron/CronException;

    new-array v1, v2, [Ljava/lang/Object;

    aput-object p1, v1, v4

    const-string p1, "Invalid syntax of field: [{}]"

    invoke-direct {v0, p1, v1}, Lcn/hutool/cron/CronException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0
.end method


# virtual methods
.method public parse(Ljava/lang/String;)Lcn/hutool/cron/pattern/matcher/PartMatcher;
    .locals 3

    .line 71
    invoke-static {p1}, Lcn/hutool/cron/pattern/parser/PartParser;->isMatchAllStr(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 73
    new-instance p1, Lcn/hutool/cron/pattern/matcher/AlwaysTrueMatcher;

    invoke-direct {p1}, Lcn/hutool/cron/pattern/matcher/AlwaysTrueMatcher;-><init>()V

    return-object p1

    .line 76
    :cond_0
    invoke-direct {p0, p1}, Lcn/hutool/cron/pattern/parser/PartParser;->parseArray(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 77
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_3

    .line 81
    sget-object p1, Lcn/hutool/cron/pattern/parser/PartParser$1;->$SwitchMap$cn$hutool$cron$pattern$Part:[I

    iget-object v1, p0, Lcn/hutool/cron/pattern/parser/PartParser;->part:Lcn/hutool/cron/pattern/Part;

    invoke-virtual {v1}, Lcn/hutool/cron/pattern/Part;->ordinal()I

    move-result v1

    aget p1, p1, v1

    if-eq p1, v2, :cond_2

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    .line 87
    new-instance p1, Lcn/hutool/cron/pattern/matcher/BoolArrayMatcher;

    invoke-direct {p1, v0}, Lcn/hutool/cron/pattern/matcher/BoolArrayMatcher;-><init>(Ljava/util/List;)V

    return-object p1

    .line 85
    :cond_1
    new-instance p1, Lcn/hutool/cron/pattern/matcher/YearValueMatcher;

    invoke-direct {p1, v0}, Lcn/hutool/cron/pattern/matcher/YearValueMatcher;-><init>(Ljava/util/Collection;)V

    return-object p1

    .line 83
    :cond_2
    new-instance p1, Lcn/hutool/cron/pattern/matcher/DayOfMonthMatcher;

    invoke-direct {p1, v0}, Lcn/hutool/cron/pattern/matcher/DayOfMonthMatcher;-><init>(Ljava/util/List;)V

    return-object p1

    .line 78
    :cond_3
    new-instance v0, Lcn/hutool/cron/CronException;

    new-array v1, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, "Invalid part value: [{}]"

    invoke-direct {v0, p1, v1}, Lcn/hutool/cron/CronException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0
.end method
