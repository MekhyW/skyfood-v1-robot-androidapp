.class public Lcn/hutool/core/collection/CollStreamUtil;
.super Ljava/lang/Object;
.source "CollStreamUtil.java"


# direct methods
.method public static synthetic $r8$lambda$FDXLTR4yi3xm4jEaatcWobsKlrw()Ljava/util/HashMap;
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    return-object v0
.end method

.method public static synthetic $r8$lambda$MONmVWgYou0Amt0mksQUYWhkM0c(Ljava/util/HashMap;Ljava/util/Map;)V
    .locals 0

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    return-void
.end method

.method public static synthetic $r8$lambda$hWpmawqjQhjJotBrvOxYRVnG6dI(Ljava/lang/Object;)Z
    .locals 0

    invoke-static {p0}, Ljava/util/Objects;->nonNull(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static group2Map(Ljava/util/Collection;Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Object;",
            "U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "TE;>;",
            "Ljava/util/function/Function<",
            "TE;TT;>;",
            "Ljava/util/function/Function<",
            "TE;TU;>;)",
            "Ljava/util/Map<",
            "TT;",
            "Ljava/util/Map<",
            "TU;TE;>;>;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 181
    invoke-static {p0, p1, p2, v0}, Lcn/hutool/core/collection/CollStreamUtil;->group2Map(Ljava/util/Collection;Ljava/util/function/Function;Ljava/util/function/Function;Z)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public static group2Map(Ljava/util/Collection;Ljava/util/function/Function;Ljava/util/function/Function;Z)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Object;",
            "U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "TE;>;",
            "Ljava/util/function/Function<",
            "TE;TT;>;",
            "Ljava/util/function/Function<",
            "TE;TU;>;Z)",
            "Ljava/util/Map<",
            "TT;",
            "Ljava/util/Map<",
            "TU;TE;>;>;"
        }
    .end annotation

    .line 199
    invoke-static {p0}, Lcn/hutool/core/collection/CollUtil;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 202
    :cond_0
    invoke-static {}, Ljava/util/function/Function;->identity()Ljava/util/function/Function;

    move-result-object v0

    new-instance v1, Lcn/hutool/core/collection/CollStreamUtil$$ExternalSyntheticLambda6;

    invoke-direct {v1}, Lcn/hutool/core/collection/CollStreamUtil$$ExternalSyntheticLambda6;-><init>()V

    invoke-static {p2, v0, v1}, Lcn/hutool/core/stream/CollectorUtil;->toMap(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/BinaryOperator;)Ljava/util/stream/Collector;

    move-result-object p2

    invoke-static {p0, p1, p2, p3}, Lcn/hutool/core/collection/CollStreamUtil;->groupBy(Ljava/util/Collection;Ljava/util/function/Function;Ljava/util/stream/Collector;Z)Ljava/util/Map;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    .line 200
    invoke-static {p0}, Lcn/hutool/core/map/MapUtil;->newHashMap(I)Ljava/util/HashMap;

    move-result-object p0

    return-object p0
.end method

.method public static groupBy(Ljava/util/Collection;Ljava/util/function/Function;Ljava/util/stream/Collector;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            "K:",
            "Ljava/lang/Object;",
            "D:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "TE;>;",
            "Ljava/util/function/Function<",
            "TE;TK;>;",
            "Ljava/util/stream/Collector<",
            "TE;*TD;>;)",
            "Ljava/util/Map<",
            "TK;TD;>;"
        }
    .end annotation

    .line 256
    invoke-static {p0}, Lcn/hutool/core/collection/CollUtil;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 257
    invoke-static {v1}, Lcn/hutool/core/map/MapUtil;->newHashMap(I)Ljava/util/HashMap;

    move-result-object p0

    return-object p0

    .line 259
    :cond_0
    invoke-static {p0, p1, p2, v1}, Lcn/hutool/core/collection/CollStreamUtil;->groupBy(Ljava/util/Collection;Ljava/util/function/Function;Ljava/util/stream/Collector;Z)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public static groupBy(Ljava/util/Collection;Ljava/util/function/Function;Ljava/util/stream/Collector;Z)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            "K:",
            "Ljava/lang/Object;",
            "D:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "TE;>;",
            "Ljava/util/function/Function<",
            "TE;TK;>;",
            "Ljava/util/stream/Collector<",
            "TE;*TD;>;Z)",
            "Ljava/util/Map<",
            "TK;TD;>;"
        }
    .end annotation

    .line 277
    invoke-static {p0}, Lcn/hutool/core/collection/CollUtil;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    .line 278
    invoke-static {p0}, Lcn/hutool/core/map/MapUtil;->newHashMap(I)Ljava/util/HashMap;

    move-result-object p0

    return-object p0

    .line 280
    :cond_0
    invoke-static {p0, p3}, Lcn/hutool/core/stream/StreamUtil;->of(Ljava/lang/Iterable;Z)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-static {p1, p2}, Lcn/hutool/core/stream/CollectorUtil;->groupingBy(Ljava/util/function/Function;Ljava/util/stream/Collector;)Ljava/util/stream/Collector;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    return-object p0
.end method

.method public static groupBy2Key(Ljava/util/Collection;Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            "K:",
            "Ljava/lang/Object;",
            "U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "TE;>;",
            "Ljava/util/function/Function<",
            "TE;TK;>;",
            "Ljava/util/function/Function<",
            "TE;TU;>;)",
            "Ljava/util/Map<",
            "TK;",
            "Ljava/util/Map<",
            "TU;",
            "Ljava/util/List<",
            "TE;>;>;>;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 143
    invoke-static {p0, p1, p2, v0}, Lcn/hutool/core/collection/CollStreamUtil;->groupBy2Key(Ljava/util/Collection;Ljava/util/function/Function;Ljava/util/function/Function;Z)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public static groupBy2Key(Ljava/util/Collection;Ljava/util/function/Function;Ljava/util/function/Function;Z)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            "K:",
            "Ljava/lang/Object;",
            "U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "TE;>;",
            "Ljava/util/function/Function<",
            "TE;TK;>;",
            "Ljava/util/function/Function<",
            "TE;TU;>;Z)",
            "Ljava/util/Map<",
            "TK;",
            "Ljava/util/Map<",
            "TU;",
            "Ljava/util/List<",
            "TE;>;>;>;"
        }
    .end annotation

    .line 162
    invoke-static {p0}, Lcn/hutool/core/collection/CollUtil;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    .line 163
    invoke-static {p0}, Lcn/hutool/core/map/MapUtil;->newHashMap(I)Ljava/util/HashMap;

    move-result-object p0

    return-object p0

    .line 165
    :cond_0
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v0

    invoke-static {p2, v0}, Lcn/hutool/core/stream/CollectorUtil;->groupingBy(Ljava/util/function/Function;Ljava/util/stream/Collector;)Ljava/util/stream/Collector;

    move-result-object p2

    invoke-static {p0, p1, p2, p3}, Lcn/hutool/core/collection/CollStreamUtil;->groupBy(Ljava/util/Collection;Ljava/util/function/Function;Ljava/util/stream/Collector;Z)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public static groupByKey(Ljava/util/Collection;Ljava/util/function/Function;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            "K:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "TE;>;",
            "Ljava/util/function/Function<",
            "TE;TK;>;)",
            "Ljava/util/Map<",
            "TK;",
            "Ljava/util/List<",
            "TE;>;>;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 109
    invoke-static {p0, p1, v0}, Lcn/hutool/core/collection/CollStreamUtil;->groupByKey(Ljava/util/Collection;Ljava/util/function/Function;Z)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public static groupByKey(Ljava/util/Collection;Ljava/util/function/Function;Z)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            "K:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "TE;>;",
            "Ljava/util/function/Function<",
            "TE;TK;>;Z)",
            "Ljava/util/Map<",
            "TK;",
            "Ljava/util/List<",
            "TE;>;>;"
        }
    .end annotation

    .line 124
    invoke-static {p0}, Lcn/hutool/core/collection/CollUtil;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    .line 125
    invoke-static {p0}, Lcn/hutool/core/map/MapUtil;->newHashMap(I)Ljava/util/HashMap;

    move-result-object p0

    return-object p0

    .line 127
    :cond_0
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v0

    invoke-static {p0, p1, v0, p2}, Lcn/hutool/core/collection/CollStreamUtil;->groupBy(Ljava/util/Collection;Ljava/util/function/Function;Ljava/util/stream/Collector;Z)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public static groupKeyValue(Ljava/util/Collection;Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            "K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "TE;>;",
            "Ljava/util/function/Function<",
            "TE;TK;>;",
            "Ljava/util/function/Function<",
            "TE;TV;>;)",
            "Ljava/util/Map<",
            "TK;",
            "Ljava/util/List<",
            "TV;>;>;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 219
    invoke-static {p0, p1, p2, v0}, Lcn/hutool/core/collection/CollStreamUtil;->groupKeyValue(Ljava/util/Collection;Ljava/util/function/Function;Ljava/util/function/Function;Z)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public static groupKeyValue(Ljava/util/Collection;Ljava/util/function/Function;Ljava/util/function/Function;Z)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            "K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "TE;>;",
            "Ljava/util/function/Function<",
            "TE;TK;>;",
            "Ljava/util/function/Function<",
            "TE;TV;>;Z)",
            "Ljava/util/Map<",
            "TK;",
            "Ljava/util/List<",
            "TV;>;>;"
        }
    .end annotation

    .line 237
    invoke-static {p0}, Lcn/hutool/core/collection/CollUtil;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    .line 238
    invoke-static {p0}, Lcn/hutool/core/map/MapUtil;->newHashMap(I)Ljava/util/HashMap;

    move-result-object p0

    return-object p0

    .line 240
    :cond_0
    new-instance v0, Lcn/hutool/core/collection/CollStreamUtil$$ExternalSyntheticLambda1;

    invoke-direct {v0, p2}, Lcn/hutool/core/collection/CollStreamUtil$$ExternalSyntheticLambda1;-><init>(Ljava/util/function/Function;)V

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object p2

    invoke-static {v0, p2}, Ljava/util/stream/Collectors;->mapping(Ljava/util/function/Function;Ljava/util/stream/Collector;)Ljava/util/stream/Collector;

    move-result-object p2

    invoke-static {p0, p1, p2, p3}, Lcn/hutool/core/collection/CollStreamUtil;->groupBy(Ljava/util/Collection;Ljava/util/function/Function;Ljava/util/stream/Collector;Z)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$group2Map$2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    return-object p0
.end method

.method static synthetic lambda$groupKeyValue$3(Ljava/util/function/Function;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 240
    invoke-static {p1}, Lcn/hutool/core/lang/Opt;->ofNullable(Ljava/lang/Object;)Lcn/hutool/core/lang/Opt;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcn/hutool/core/lang/Opt;->map(Ljava/util/function/Function;)Lcn/hutool/core/lang/Opt;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcn/hutool/core/lang/Opt;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$toIdentityMap$0(Ljava/util/function/Function;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 60
    invoke-static {p1}, Lcn/hutool/core/lang/Opt;->ofNullable(Ljava/lang/Object;)Lcn/hutool/core/lang/Opt;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcn/hutool/core/lang/Opt;->map(Ljava/util/function/Function;)Lcn/hutool/core/lang/Opt;

    move-result-object p0

    invoke-virtual {p0}, Lcn/hutool/core/lang/Opt;->get()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$toMap$1(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/HashMap;Ljava/lang/Object;)V
    .locals 0

    .line 94
    invoke-interface {p0, p3}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-interface {p1, p3}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p2, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static merge(Ljava/util/Map;Ljava/util/Map;Ljava/util/function/BiFunction;)Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "X:",
            "Ljava/lang/Object;",
            "Y:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TK;TX;>;",
            "Ljava/util/Map<",
            "TK;TY;>;",
            "Ljava/util/function/BiFunction<",
            "TX;TY;TV;>;)",
            "Ljava/util/Map<",
            "TK;TV;>;"
        }
    .end annotation

    .line 367
    invoke-static {p0}, Lcn/hutool/core/map/MapUtil;->isEmpty(Ljava/util/Map;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcn/hutool/core/map/MapUtil;->isEmpty(Ljava/util/Map;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 368
    invoke-static {v1}, Lcn/hutool/core/map/MapUtil;->newHashMap(I)Ljava/util/HashMap;

    move-result-object p0

    return-object p0

    .line 369
    :cond_0
    invoke-static {p0}, Lcn/hutool/core/map/MapUtil;->isEmpty(Ljava/util/Map;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 370
    invoke-static {v1}, Lcn/hutool/core/map/MapUtil;->newHashMap(I)Ljava/util/HashMap;

    move-result-object p0

    goto :goto_0

    .line 371
    :cond_1
    invoke-static {p1}, Lcn/hutool/core/map/MapUtil;->isEmpty(Ljava/util/Map;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 372
    invoke-static {v1}, Lcn/hutool/core/map/MapUtil;->newHashMap(I)Ljava/util/HashMap;

    move-result-object p1

    .line 374
    :cond_2
    :goto_0
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 375
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 376
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 377
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    invoke-static {v1}, Lcn/hutool/core/map/MapUtil;->newHashMap(I)Ljava/util/HashMap;

    move-result-object v1

    .line 378
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 379
    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 380
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 381
    invoke-interface {p2, v3, v4}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 383
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_4
    return-object v1
.end method

.method public static toIdentityMap(Ljava/util/Collection;Ljava/util/function/Function;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            "K:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "TV;>;",
            "Ljava/util/function/Function<",
            "TV;TK;>;)",
            "Ljava/util/Map<",
            "TK;TV;>;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 41
    invoke-static {p0, p1, v0}, Lcn/hutool/core/collection/CollStreamUtil;->toIdentityMap(Ljava/util/Collection;Ljava/util/function/Function;Z)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public static toIdentityMap(Ljava/util/Collection;Ljava/util/function/Function;Z)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            "K:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "TV;>;",
            "Ljava/util/function/Function<",
            "TV;TK;>;Z)",
            "Ljava/util/Map<",
            "TK;TV;>;"
        }
    .end annotation

    .line 57
    invoke-static {p0}, Lcn/hutool/core/collection/CollUtil;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    .line 58
    invoke-static {p0}, Lcn/hutool/core/map/MapUtil;->newHashMap(I)Ljava/util/HashMap;

    move-result-object p0

    return-object p0

    .line 60
    :cond_0
    new-instance v0, Lcn/hutool/core/collection/CollStreamUtil$$ExternalSyntheticLambda2;

    invoke-direct {v0, p1}, Lcn/hutool/core/collection/CollStreamUtil$$ExternalSyntheticLambda2;-><init>(Ljava/util/function/Function;)V

    invoke-static {}, Ljava/util/function/Function;->identity()Ljava/util/function/Function;

    move-result-object p1

    invoke-static {p0, v0, p1, p2}, Lcn/hutool/core/collection/CollStreamUtil;->toMap(Ljava/util/Collection;Ljava/util/function/Function;Ljava/util/function/Function;Z)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public static toList(Ljava/util/Collection;Ljava/util/function/Function;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "TE;>;",
            "Ljava/util/function/Function<",
            "TE;TT;>;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 294
    invoke-static {p0, p1, v0}, Lcn/hutool/core/collection/CollStreamUtil;->toList(Ljava/util/Collection;Ljava/util/function/Function;Z)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static toList(Ljava/util/Collection;Ljava/util/function/Function;Z)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "TE;>;",
            "Ljava/util/function/Function<",
            "TE;TT;>;Z)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 309
    invoke-static {p0}, Lcn/hutool/core/collection/CollUtil;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Object;

    .line 310
    invoke-static {p0}, Lcn/hutool/core/collection/CollUtil;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0

    .line 312
    :cond_0
    invoke-static {p0, p2}, Lcn/hutool/core/stream/StreamUtil;->of(Ljava/lang/Iterable;Z)Ljava/util/stream/Stream;

    move-result-object p0

    .line 313
    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p1, Lcn/hutool/core/collection/CollStreamUtil$$ExternalSyntheticLambda0;

    invoke-direct {p1}, Lcn/hutool/core/collection/CollStreamUtil$$ExternalSyntheticLambda0;-><init>()V

    .line 314
    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    .line 315
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method public static toMap(Ljava/util/Collection;Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            "K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "TE;>;",
            "Ljava/util/function/Function<",
            "TE;TK;>;",
            "Ljava/util/function/Function<",
            "TE;TV;>;)",
            "Ljava/util/Map<",
            "TK;TV;>;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 76
    invoke-static {p0, p1, p2, v0}, Lcn/hutool/core/collection/CollStreamUtil;->toMap(Ljava/util/Collection;Ljava/util/function/Function;Ljava/util/function/Function;Z)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public static toMap(Ljava/util/Collection;Ljava/util/function/Function;Ljava/util/function/Function;Z)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            "K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "TE;>;",
            "Ljava/util/function/Function<",
            "TE;TK;>;",
            "Ljava/util/function/Function<",
            "TE;TV;>;Z)",
            "Ljava/util/Map<",
            "TK;TV;>;"
        }
    .end annotation

    .line 90
    invoke-static {p0}, Lcn/hutool/core/collection/CollUtil;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    .line 91
    invoke-static {p0}, Lcn/hutool/core/map/MapUtil;->newHashMap(I)Ljava/util/HashMap;

    move-result-object p0

    return-object p0

    .line 93
    :cond_0
    invoke-static {p0, p3}, Lcn/hutool/core/stream/StreamUtil;->of(Ljava/lang/Iterable;Z)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p3, Lcn/hutool/core/collection/CollStreamUtil$$ExternalSyntheticLambda3;

    invoke-direct {p3}, Lcn/hutool/core/collection/CollStreamUtil$$ExternalSyntheticLambda3;-><init>()V

    new-instance v0, Lcn/hutool/core/collection/CollStreamUtil$$ExternalSyntheticLambda4;

    invoke-direct {v0, p1, p2}, Lcn/hutool/core/collection/CollStreamUtil$$ExternalSyntheticLambda4;-><init>(Ljava/util/function/Function;Ljava/util/function/Function;)V

    new-instance p1, Lcn/hutool/core/collection/CollStreamUtil$$ExternalSyntheticLambda5;

    invoke-direct {p1}, Lcn/hutool/core/collection/CollStreamUtil$$ExternalSyntheticLambda5;-><init>()V

    .line 94
    invoke-interface {p0, p3, v0, p1}, Ljava/util/stream/Stream;->collect(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BiConsumer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    return-object p0
.end method

.method public static toSet(Ljava/util/Collection;Ljava/util/function/Function;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "TE;>;",
            "Ljava/util/function/Function<",
            "TE;TT;>;)",
            "Ljava/util/Set<",
            "TT;>;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 329
    invoke-static {p0, p1, v0}, Lcn/hutool/core/collection/CollStreamUtil;->toSet(Ljava/util/Collection;Ljava/util/function/Function;Z)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public static toSet(Ljava/util/Collection;Ljava/util/function/Function;Z)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "TE;>;",
            "Ljava/util/function/Function<",
            "TE;TT;>;Z)",
            "Ljava/util/Set<",
            "TT;>;"
        }
    .end annotation

    .line 344
    invoke-static {p0}, Lcn/hutool/core/collection/CollUtil;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Object;

    .line 345
    invoke-static {p0}, Lcn/hutool/core/collection/CollUtil;->newHashSet([Ljava/lang/Object;)Ljava/util/HashSet;

    move-result-object p0

    return-object p0

    .line 347
    :cond_0
    invoke-static {p0, p2}, Lcn/hutool/core/stream/StreamUtil;->of(Ljava/lang/Iterable;Z)Ljava/util/stream/Stream;

    move-result-object p0

    .line 348
    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p1, Lcn/hutool/core/collection/CollStreamUtil$$ExternalSyntheticLambda0;

    invoke-direct {p1}, Lcn/hutool/core/collection/CollStreamUtil$$ExternalSyntheticLambda0;-><init>()V

    .line 349
    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    .line 350
    invoke-static {}, Ljava/util/stream/Collectors;->toSet()Ljava/util/stream/Collector;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Set;

    return-object p0
.end method
