.class public Lcn/hutool/cron/pattern/parser/PatternParser;
.super Ljava/lang/Object;
.source "PatternParser.java"


# static fields
.field private static final DAY_OF_MONTH_VALUE_PARSER:Lcn/hutool/cron/pattern/parser/PartParser;

.field private static final DAY_OF_WEEK_VALUE_PARSER:Lcn/hutool/cron/pattern/parser/PartParser;

.field private static final HOUR_VALUE_PARSER:Lcn/hutool/cron/pattern/parser/PartParser;

.field private static final MINUTE_VALUE_PARSER:Lcn/hutool/cron/pattern/parser/PartParser;

.field private static final MONTH_VALUE_PARSER:Lcn/hutool/cron/pattern/parser/PartParser;

.field private static final SECOND_VALUE_PARSER:Lcn/hutool/cron/pattern/parser/PartParser;

.field private static final YEAR_VALUE_PARSER:Lcn/hutool/cron/pattern/parser/PartParser;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 22
    sget-object v0, Lcn/hutool/cron/pattern/Part;->SECOND:Lcn/hutool/cron/pattern/Part;

    invoke-static {v0}, Lcn/hutool/cron/pattern/parser/PartParser;->of(Lcn/hutool/cron/pattern/Part;)Lcn/hutool/cron/pattern/parser/PartParser;

    move-result-object v0

    sput-object v0, Lcn/hutool/cron/pattern/parser/PatternParser;->SECOND_VALUE_PARSER:Lcn/hutool/cron/pattern/parser/PartParser;

    .line 23
    sget-object v0, Lcn/hutool/cron/pattern/Part;->MINUTE:Lcn/hutool/cron/pattern/Part;

    invoke-static {v0}, Lcn/hutool/cron/pattern/parser/PartParser;->of(Lcn/hutool/cron/pattern/Part;)Lcn/hutool/cron/pattern/parser/PartParser;

    move-result-object v0

    sput-object v0, Lcn/hutool/cron/pattern/parser/PatternParser;->MINUTE_VALUE_PARSER:Lcn/hutool/cron/pattern/parser/PartParser;

    .line 24
    sget-object v0, Lcn/hutool/cron/pattern/Part;->HOUR:Lcn/hutool/cron/pattern/Part;

    invoke-static {v0}, Lcn/hutool/cron/pattern/parser/PartParser;->of(Lcn/hutool/cron/pattern/Part;)Lcn/hutool/cron/pattern/parser/PartParser;

    move-result-object v0

    sput-object v0, Lcn/hutool/cron/pattern/parser/PatternParser;->HOUR_VALUE_PARSER:Lcn/hutool/cron/pattern/parser/PartParser;

    .line 25
    sget-object v0, Lcn/hutool/cron/pattern/Part;->DAY_OF_MONTH:Lcn/hutool/cron/pattern/Part;

    invoke-static {v0}, Lcn/hutool/cron/pattern/parser/PartParser;->of(Lcn/hutool/cron/pattern/Part;)Lcn/hutool/cron/pattern/parser/PartParser;

    move-result-object v0

    sput-object v0, Lcn/hutool/cron/pattern/parser/PatternParser;->DAY_OF_MONTH_VALUE_PARSER:Lcn/hutool/cron/pattern/parser/PartParser;

    .line 26
    sget-object v0, Lcn/hutool/cron/pattern/Part;->MONTH:Lcn/hutool/cron/pattern/Part;

    invoke-static {v0}, Lcn/hutool/cron/pattern/parser/PartParser;->of(Lcn/hutool/cron/pattern/Part;)Lcn/hutool/cron/pattern/parser/PartParser;

    move-result-object v0

    sput-object v0, Lcn/hutool/cron/pattern/parser/PatternParser;->MONTH_VALUE_PARSER:Lcn/hutool/cron/pattern/parser/PartParser;

    .line 27
    sget-object v0, Lcn/hutool/cron/pattern/Part;->DAY_OF_WEEK:Lcn/hutool/cron/pattern/Part;

    invoke-static {v0}, Lcn/hutool/cron/pattern/parser/PartParser;->of(Lcn/hutool/cron/pattern/Part;)Lcn/hutool/cron/pattern/parser/PartParser;

    move-result-object v0

    sput-object v0, Lcn/hutool/cron/pattern/parser/PatternParser;->DAY_OF_WEEK_VALUE_PARSER:Lcn/hutool/cron/pattern/parser/PartParser;

    .line 28
    sget-object v0, Lcn/hutool/cron/pattern/Part;->YEAR:Lcn/hutool/cron/pattern/Part;

    invoke-static {v0}, Lcn/hutool/cron/pattern/parser/PartParser;->of(Lcn/hutool/cron/pattern/Part;)Lcn/hutool/cron/pattern/parser/PartParser;

    move-result-object v0

    sput-object v0, Lcn/hutool/cron/pattern/parser/PatternParser;->YEAR_VALUE_PARSER:Lcn/hutool/cron/pattern/parser/PartParser;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic lambda$parseSingle$0(Ljava/lang/String;)Lcn/hutool/cron/CronException;
    .locals 3

    .line 67
    new-instance v0, Lcn/hutool/cron/CronException;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const-string p0, "Pattern [{}] is invalid, it must be 5-7 parts!"

    invoke-direct {v0, p0, v1}, Lcn/hutool/cron/CronException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0
.end method

.method public static parse(Ljava/lang/String;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcn/hutool/cron/pattern/matcher/PatternMatcher;",
            ">;"
        }
    .end annotation

    .line 37
    invoke-static {p0}, Lcn/hutool/cron/pattern/parser/PatternParser;->parseGroupPattern(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private static parseGroupPattern(Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcn/hutool/cron/pattern/matcher/PatternMatcher;",
            ">;"
        }
    .end annotation

    const/16 v0, 0x7c

    .line 50
    invoke-static {p0, v0}, Lcn/hutool/core/util/StrUtil;->splitTrim(Ljava/lang/CharSequence;C)Ljava/util/List;

    move-result-object p0

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 52
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 53
    invoke-static {v1}, Lcn/hutool/cron/pattern/parser/PatternParser;->parseSingle(Ljava/lang/String;)Lcn/hutool/cron/pattern/matcher/PatternMatcher;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private static parseSingle(Ljava/lang/String;)Lcn/hutool/cron/pattern/matcher/PatternMatcher;
    .locals 11

    const-string v0, "\\s+"

    .line 65
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 66
    array-length v1, v0

    new-instance v2, Lcn/hutool/cron/pattern/parser/PatternParser$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcn/hutool/cron/pattern/parser/PatternParser$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;)V

    const/4 p0, 0x5

    const/4 v3, 0x7

    invoke-static {v1, p0, v3, v2}, Lcn/hutool/core/lang/Assert;->checkBetween(IIILjava/util/function/Supplier;)I

    .line 71
    array-length p0, v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v4, 0x6

    if-eq p0, v4, :cond_1

    array-length p0, v0

    if-ne p0, v3, :cond_0

    goto :goto_0

    :cond_0
    move p0, v2

    goto :goto_1

    :cond_1
    :goto_0
    move p0, v1

    :goto_1
    if-ne v1, p0, :cond_2

    .line 76
    aget-object v1, v0, v2

    goto :goto_2

    :cond_2
    const-string v1, "0"

    .line 80
    :goto_2
    array-length v2, v0

    if-ne v2, v3, :cond_3

    .line 81
    sget-object v2, Lcn/hutool/cron/pattern/parser/PatternParser;->YEAR_VALUE_PARSER:Lcn/hutool/cron/pattern/parser/PartParser;

    aget-object v3, v0, v4

    invoke-virtual {v2, v3}, Lcn/hutool/cron/pattern/parser/PartParser;->parse(Ljava/lang/String;)Lcn/hutool/cron/pattern/matcher/PartMatcher;

    move-result-object v2

    goto :goto_3

    .line 83
    :cond_3
    sget-object v2, Lcn/hutool/cron/pattern/matcher/AlwaysTrueMatcher;->INSTANCE:Lcn/hutool/cron/pattern/matcher/AlwaysTrueMatcher;

    :goto_3
    move-object v10, v2

    .line 86
    new-instance v2, Lcn/hutool/cron/pattern/matcher/PatternMatcher;

    sget-object v3, Lcn/hutool/cron/pattern/parser/PatternParser;->SECOND_VALUE_PARSER:Lcn/hutool/cron/pattern/parser/PartParser;

    .line 88
    invoke-virtual {v3, v1}, Lcn/hutool/cron/pattern/parser/PartParser;->parse(Ljava/lang/String;)Lcn/hutool/cron/pattern/matcher/PartMatcher;

    move-result-object v4

    sget-object v1, Lcn/hutool/cron/pattern/parser/PatternParser;->MINUTE_VALUE_PARSER:Lcn/hutool/cron/pattern/parser/PartParser;

    aget-object v3, v0, p0

    .line 90
    invoke-virtual {v1, v3}, Lcn/hutool/cron/pattern/parser/PartParser;->parse(Ljava/lang/String;)Lcn/hutool/cron/pattern/matcher/PartMatcher;

    move-result-object v5

    sget-object v1, Lcn/hutool/cron/pattern/parser/PatternParser;->HOUR_VALUE_PARSER:Lcn/hutool/cron/pattern/parser/PartParser;

    add-int/lit8 v3, p0, 0x1

    aget-object v3, v0, v3

    .line 92
    invoke-virtual {v1, v3}, Lcn/hutool/cron/pattern/parser/PartParser;->parse(Ljava/lang/String;)Lcn/hutool/cron/pattern/matcher/PartMatcher;

    move-result-object v6

    sget-object v1, Lcn/hutool/cron/pattern/parser/PatternParser;->DAY_OF_MONTH_VALUE_PARSER:Lcn/hutool/cron/pattern/parser/PartParser;

    add-int/lit8 v3, p0, 0x2

    aget-object v3, v0, v3

    .line 94
    invoke-virtual {v1, v3}, Lcn/hutool/cron/pattern/parser/PartParser;->parse(Ljava/lang/String;)Lcn/hutool/cron/pattern/matcher/PartMatcher;

    move-result-object v7

    sget-object v1, Lcn/hutool/cron/pattern/parser/PatternParser;->MONTH_VALUE_PARSER:Lcn/hutool/cron/pattern/parser/PartParser;

    add-int/lit8 v3, p0, 0x3

    aget-object v3, v0, v3

    .line 96
    invoke-virtual {v1, v3}, Lcn/hutool/cron/pattern/parser/PartParser;->parse(Ljava/lang/String;)Lcn/hutool/cron/pattern/matcher/PartMatcher;

    move-result-object v8

    sget-object v1, Lcn/hutool/cron/pattern/parser/PatternParser;->DAY_OF_WEEK_VALUE_PARSER:Lcn/hutool/cron/pattern/parser/PartParser;

    add-int/lit8 p0, p0, 0x4

    aget-object p0, v0, p0

    .line 98
    invoke-virtual {v1, p0}, Lcn/hutool/cron/pattern/parser/PartParser;->parse(Ljava/lang/String;)Lcn/hutool/cron/pattern/matcher/PartMatcher;

    move-result-object v9

    move-object v3, v2

    invoke-direct/range {v3 .. v10}, Lcn/hutool/cron/pattern/matcher/PatternMatcher;-><init>(Lcn/hutool/cron/pattern/matcher/PartMatcher;Lcn/hutool/cron/pattern/matcher/PartMatcher;Lcn/hutool/cron/pattern/matcher/PartMatcher;Lcn/hutool/cron/pattern/matcher/PartMatcher;Lcn/hutool/cron/pattern/matcher/PartMatcher;Lcn/hutool/cron/pattern/matcher/PartMatcher;Lcn/hutool/cron/pattern/matcher/PartMatcher;)V

    return-object v2
.end method
