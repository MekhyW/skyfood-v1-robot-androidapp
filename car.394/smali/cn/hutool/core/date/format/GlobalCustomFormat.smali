.class public Lcn/hutool/core/date/format/GlobalCustomFormat;
.super Ljava/lang/Object;
.source "GlobalCustomFormat.java"


# static fields
.field public static final FORMAT_MILLISECONDS:Ljava/lang/String; = "#SSS"

.field public static final FORMAT_SECONDS:Ljava/lang/String; = "#sss"

.field private static final formatterMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/CharSequence;",
            "Ljava/util/function/Function<",
            "Ljava/util/Date;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final parserMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/CharSequence;",
            "Ljava/util/function/Function<",
            "Ljava/lang/CharSequence;",
            "Ljava/util/Date;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 34
    new-instance v0, Lcn/hutool/core/map/SafeConcurrentHashMap;

    invoke-direct {v0}, Lcn/hutool/core/map/SafeConcurrentHashMap;-><init>()V

    sput-object v0, Lcn/hutool/core/date/format/GlobalCustomFormat;->formatterMap:Ljava/util/Map;

    .line 35
    new-instance v0, Lcn/hutool/core/map/SafeConcurrentHashMap;

    invoke-direct {v0}, Lcn/hutool/core/map/SafeConcurrentHashMap;-><init>()V

    sput-object v0, Lcn/hutool/core/date/format/GlobalCustomFormat;->parserMap:Ljava/util/Map;

    .line 38
    new-instance v0, Lcn/hutool/core/date/format/GlobalCustomFormat$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcn/hutool/core/date/format/GlobalCustomFormat$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "#sss"

    invoke-static {v1, v0}, Lcn/hutool/core/date/format/GlobalCustomFormat;->putFormatter(Ljava/lang/String;Ljava/util/function/Function;)V

    .line 39
    new-instance v0, Lcn/hutool/core/date/format/GlobalCustomFormat$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcn/hutool/core/date/format/GlobalCustomFormat$$ExternalSyntheticLambda1;-><init>()V

    invoke-static {v1, v0}, Lcn/hutool/core/date/format/GlobalCustomFormat;->putParser(Ljava/lang/String;Ljava/util/function/Function;)V

    .line 41
    new-instance v0, Lcn/hutool/core/date/format/GlobalCustomFormat$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lcn/hutool/core/date/format/GlobalCustomFormat$$ExternalSyntheticLambda2;-><init>()V

    const-string v1, "#SSS"

    invoke-static {v1, v0}, Lcn/hutool/core/date/format/GlobalCustomFormat;->putFormatter(Ljava/lang/String;Ljava/util/function/Function;)V

    .line 42
    new-instance v0, Lcn/hutool/core/date/format/GlobalCustomFormat$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Lcn/hutool/core/date/format/GlobalCustomFormat$$ExternalSyntheticLambda3;-><init>()V

    invoke-static {v1, v0}, Lcn/hutool/core/date/format/GlobalCustomFormat;->putParser(Ljava/lang/String;Ljava/util/function/Function;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static format(Ljava/time/temporal/TemporalAccessor;Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 0

    .line 105
    invoke-static {p0}, Lcn/hutool/core/date/DateUtil;->date(Ljava/time/temporal/TemporalAccessor;)Lcn/hutool/core/date/DateTime;

    move-result-object p0

    invoke-static {p0, p1}, Lcn/hutool/core/date/format/GlobalCustomFormat;->format(Ljava/util/Date;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static format(Ljava/util/Date;Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 1

    .line 87
    sget-object v0, Lcn/hutool/core/date/format/GlobalCustomFormat;->formatterMap:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 88
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/function/Function;

    if-eqz p1, :cond_0

    .line 90
    invoke-interface {p1, p0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static isCustomFormat(Ljava/lang/String;)Z
    .locals 1

    .line 76
    sget-object v0, Lcn/hutool/core/date/format/GlobalCustomFormat;->formatterMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method static synthetic lambda$static$0(Ljava/util/Date;)Ljava/lang/String;
    .locals 4

    .line 38
    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->floorDiv(JJ)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$static$1(Ljava/lang/CharSequence;)Ljava/util/Date;
    .locals 4

    .line 39
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->multiplyExact(JJ)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcn/hutool/core/date/DateUtil;->date(J)Lcn/hutool/core/date/DateTime;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$static$2(Ljava/util/Date;)Ljava/lang/String;
    .locals 2

    .line 41
    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$static$3(Ljava/lang/CharSequence;)Ljava/util/Date;
    .locals 2

    .line 42
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcn/hutool/core/date/DateUtil;->date(J)Lcn/hutool/core/date/DateTime;

    move-result-object p0

    return-object p0
.end method

.method public static parse(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/util/Date;
    .locals 1

    .line 116
    sget-object v0, Lcn/hutool/core/date/format/GlobalCustomFormat;->parserMap:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 117
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/function/Function;

    if-eqz p1, :cond_0

    .line 119
    invoke-interface {p1, p0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Date;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static putFormatter(Ljava/lang/String;Ljava/util/function/Function;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/function/Function<",
            "Ljava/util/Date;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "Format must be not null !"

    .line 52
    invoke-static {p0, v2, v1}, Lcn/hutool/core/lang/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "Function must be not null !"

    new-array v0, v0, [Ljava/lang/Object;

    .line 53
    invoke-static {p1, v1, v0}, Lcn/hutool/core/lang/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    sget-object v0, Lcn/hutool/core/date/format/GlobalCustomFormat;->formatterMap:Ljava/util/Map;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static putParser(Ljava/lang/String;Ljava/util/function/Function;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/function/Function<",
            "Ljava/lang/CharSequence;",
            "Ljava/util/Date;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "Format must be not null !"

    .line 64
    invoke-static {p0, v2, v1}, Lcn/hutool/core/lang/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "Function must be not null !"

    new-array v0, v0, [Ljava/lang/Object;

    .line 65
    invoke-static {p1, v1, v0}, Lcn/hutool/core/lang/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    sget-object v0, Lcn/hutool/core/date/format/GlobalCustomFormat;->parserMap:Ljava/util/Map;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
