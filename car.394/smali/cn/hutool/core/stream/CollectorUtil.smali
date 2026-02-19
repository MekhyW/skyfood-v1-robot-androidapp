.class public Lcn/hutool/core/stream/CollectorUtil;
.super Ljava/lang/Object;
.source "CollectorUtil.java"


# static fields
.field public static final CH_ID:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/util/stream/Collector$Characteristics;",
            ">;"
        }
    .end annotation
.end field

.field public static final CH_NOID:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/util/stream/Collector$Characteristics;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$J1SAREoo1lxpPgOl9q024MHRoqc(Ljava/util/StringJoiner;Ljava/util/StringJoiner;)Ljava/util/StringJoiner;
    .locals 0

    invoke-virtual {p0, p1}, Ljava/util/StringJoiner;->merge(Ljava/util/StringJoiner;)Ljava/util/StringJoiner;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$W533V4CTjQrA8f--FbCA9O-ia04(Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$butsdy1amoCniO_bl4Y5rer202k(Ljava/util/StringJoiner;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Ljava/util/StringJoiner;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$gDKEcGxnaIgU7sqXbIS8kj9NQtE()Ljava/util/ArrayList;
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public static synthetic $r8$lambda$vRrMgxufcyfM-dLnoWpTDbfiIIM()Ljava/util/HashMap;
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 33
    sget-object v0, Ljava/util/stream/Collector$Characteristics;->IDENTITY_FINISH:Ljava/util/stream/Collector$Characteristics;

    .line 34
    invoke-static {v0}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcn/hutool/core/stream/CollectorUtil;->CH_ID:Ljava/util/Set;

    .line 38
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcn/hutool/core/stream/CollectorUtil;->CH_NOID:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static groupingBy(Ljava/util/function/Function;)Ljava/util/stream/Collector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "K:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Function<",
            "-TT;+TK;>;)",
            "Ljava/util/stream/Collector<",
            "TT;*",
            "Ljava/util/Map<",
            "TK;",
            "Ljava/util/List<",
            "TT;>;>;>;"
        }
    .end annotation

    .line 154
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v0

    invoke-static {p0, v0}, Lcn/hutool/core/stream/CollectorUtil;->groupingBy(Ljava/util/function/Function;Ljava/util/stream/Collector;)Ljava/util/stream/Collector;

    move-result-object p0

    return-object p0
.end method

.method public static groupingBy(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/stream/Collector;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "K:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Function<",
            "-TT;+TK;>;",
            "Ljava/util/function/Function<",
            "-TT;+TR;>;)",
            "Ljava/util/stream/Collector<",
            "TT;*",
            "Ljava/util/Map<",
            "TK;",
            "Ljava/util/List<",
            "TR;>;>;>;"
        }
    .end annotation

    .line 311
    new-instance v0, Lcn/hutool/core/stream/CollectorUtil$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lcn/hutool/core/stream/CollectorUtil$$ExternalSyntheticLambda2;-><init>()V

    new-instance v1, Lcn/hutool/core/stream/CollectorUtil$$ExternalSyntheticLambda15;

    invoke-direct {v1}, Lcn/hutool/core/stream/CollectorUtil$$ExternalSyntheticLambda15;-><init>()V

    invoke-static {p0, p1, v0, v1}, Lcn/hutool/core/stream/CollectorUtil;->groupingBy(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Supplier;Ljava/util/function/Supplier;)Ljava/util/stream/Collector;

    move-result-object p0

    return-object p0
.end method

.method public static groupingBy(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Supplier;)Ljava/util/stream/Collector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "K:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            "C::",
            "Ljava/util/Collection<",
            "TR;>;>(",
            "Ljava/util/function/Function<",
            "-TT;+TK;>;",
            "Ljava/util/function/Function<",
            "-TT;+TR;>;",
            "Ljava/util/function/Supplier<",
            "TC;>;)",
            "Ljava/util/stream/Collector<",
            "TT;*",
            "Ljava/util/Map<",
            "TK;TC;>;>;"
        }
    .end annotation

    .line 294
    new-instance v0, Lcn/hutool/core/stream/CollectorUtil$$ExternalSyntheticLambda15;

    invoke-direct {v0}, Lcn/hutool/core/stream/CollectorUtil$$ExternalSyntheticLambda15;-><init>()V

    invoke-static {p0, p1, p2, v0}, Lcn/hutool/core/stream/CollectorUtil;->groupingBy(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Supplier;Ljava/util/function/Supplier;)Ljava/util/stream/Collector;

    move-result-object p0

    return-object p0
.end method

.method public static groupingBy(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Supplier;Ljava/util/function/Supplier;)Ljava/util/stream/Collector;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "K:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            "C::",
            "Ljava/util/Collection<",
            "TR;>;M::",
            "Ljava/util/Map<",
            "TK;TC;>;>(",
            "Ljava/util/function/Function<",
            "-TT;+TK;>;",
            "Ljava/util/function/Function<",
            "-TT;+TR;>;",
            "Ljava/util/function/Supplier<",
            "TC;>;",
            "Ljava/util/function/Supplier<",
            "TM;>;)",
            "Ljava/util/stream/Collector<",
            "TT;*TM;>;"
        }
    .end annotation

    .line 273
    invoke-static {p2}, Ljava/util/stream/Collectors;->toCollection(Ljava/util/function/Supplier;)Ljava/util/stream/Collector;

    move-result-object p2

    .line 272
    invoke-static {p1, p2}, Ljava/util/stream/Collectors;->mapping(Ljava/util/function/Function;Ljava/util/stream/Collector;)Ljava/util/stream/Collector;

    move-result-object p1

    invoke-static {p0, p3, p1}, Lcn/hutool/core/stream/CollectorUtil;->groupingBy(Ljava/util/function/Function;Ljava/util/function/Supplier;Ljava/util/stream/Collector;)Ljava/util/stream/Collector;

    move-result-object p0

    return-object p0
.end method

.method public static groupingBy(Ljava/util/function/Function;Ljava/util/function/Supplier;Ljava/util/stream/Collector;)Ljava/util/stream/Collector;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "K:",
            "Ljava/lang/Object;",
            "D:",
            "Ljava/lang/Object;",
            "A:",
            "Ljava/lang/Object;",
            "M::",
            "Ljava/util/Map<",
            "TK;TD;>;>(",
            "Ljava/util/function/Function<",
            "-TT;+TK;>;",
            "Ljava/util/function/Supplier<",
            "TM;>;",
            "Ljava/util/stream/Collector<",
            "-TT;TA;TD;>;)",
            "Ljava/util/stream/Collector<",
            "TT;*TM;>;"
        }
    .end annotation

    .line 104
    invoke-interface {p2}, Ljava/util/stream/Collector;->supplier()Ljava/util/function/Supplier;

    move-result-object v0

    .line 105
    invoke-interface {p2}, Ljava/util/stream/Collector;->accumulator()Ljava/util/function/BiConsumer;

    move-result-object v1

    .line 106
    new-instance v4, Lcn/hutool/core/stream/CollectorUtil$$ExternalSyntheticLambda6;

    invoke-direct {v4, p0, v0, v1}, Lcn/hutool/core/stream/CollectorUtil$$ExternalSyntheticLambda6;-><init>(Ljava/util/function/Function;Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;)V

    .line 111
    invoke-interface {p2}, Ljava/util/stream/Collector;->combiner()Ljava/util/function/BinaryOperator;

    move-result-object p0

    invoke-static {p0}, Lcn/hutool/core/stream/CollectorUtil;->mapMerger(Ljava/util/function/BinaryOperator;)Ljava/util/function/BinaryOperator;

    move-result-object v5

    .line 114
    invoke-interface {p2}, Ljava/util/stream/Collector;->characteristics()Ljava/util/Set;

    move-result-object p0

    sget-object v0, Ljava/util/stream/Collector$Characteristics;->IDENTITY_FINISH:Ljava/util/stream/Collector$Characteristics;

    invoke-interface {p0, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 115
    new-instance p0, Lcn/hutool/core/stream/SimpleCollector;

    sget-object p2, Lcn/hutool/core/stream/CollectorUtil;->CH_ID:Ljava/util/Set;

    invoke-direct {p0, p1, v4, v5, p2}, Lcn/hutool/core/stream/SimpleCollector;-><init>(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BinaryOperator;Ljava/util/Set;)V

    return-object p0

    .line 117
    :cond_0
    invoke-interface {p2}, Ljava/util/stream/Collector;->finisher()Ljava/util/function/Function;

    move-result-object p0

    .line 118
    new-instance v6, Lcn/hutool/core/stream/CollectorUtil$$ExternalSyntheticLambda7;

    invoke-direct {v6, p0}, Lcn/hutool/core/stream/CollectorUtil$$ExternalSyntheticLambda7;-><init>(Ljava/util/function/Function;)V

    .line 123
    new-instance p0, Lcn/hutool/core/stream/SimpleCollector;

    sget-object v7, Lcn/hutool/core/stream/CollectorUtil;->CH_NOID:Ljava/util/Set;

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v2 .. v7}, Lcn/hutool/core/stream/SimpleCollector;-><init>(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BinaryOperator;Ljava/util/function/Function;Ljava/util/Set;)V

    return-object p0
.end method

.method public static groupingBy(Ljava/util/function/Function;Ljava/util/stream/Collector;)Ljava/util/stream/Collector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "K:",
            "Ljava/lang/Object;",
            "A:",
            "Ljava/lang/Object;",
            "D:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Function<",
            "-TT;+TK;>;",
            "Ljava/util/stream/Collector<",
            "-TT;TA;TD;>;)",
            "Ljava/util/stream/Collector<",
            "TT;*",
            "Ljava/util/Map<",
            "TK;TD;>;>;"
        }
    .end annotation

    .line 141
    new-instance v0, Lcn/hutool/core/stream/CollectorUtil$$ExternalSyntheticLambda15;

    invoke-direct {v0}, Lcn/hutool/core/stream/CollectorUtil$$ExternalSyntheticLambda15;-><init>()V

    invoke-static {p0, v0, p1}, Lcn/hutool/core/stream/CollectorUtil;->groupingBy(Ljava/util/function/Function;Ljava/util/function/Supplier;Ljava/util/stream/Collector;)Ljava/util/stream/Collector;

    move-result-object p0

    return-object p0
.end method

.method public static joining(Ljava/lang/CharSequence;)Ljava/util/stream/Collector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/CharSequence;",
            ")",
            "Ljava/util/stream/Collector<",
            "TT;*",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 48
    new-instance v0, Lcn/hutool/core/stream/CollectorUtil$$ExternalSyntheticLambda17;

    invoke-direct {v0}, Lcn/hutool/core/stream/CollectorUtil$$ExternalSyntheticLambda17;-><init>()V

    invoke-static {p0, v0}, Lcn/hutool/core/stream/CollectorUtil;->joining(Ljava/lang/CharSequence;Ljava/util/function/Function;)Ljava/util/stream/Collector;

    move-result-object p0

    return-object p0
.end method

.method public static joining(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/util/function/Function;)Ljava/util/stream/Collector;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/CharSequence;",
            "Ljava/util/function/Function<",
            "TT;+",
            "Ljava/lang/CharSequence;",
            ">;)",
            "Ljava/util/stream/Collector<",
            "TT;*",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 78
    new-instance v6, Lcn/hutool/core/stream/SimpleCollector;

    new-instance v1, Lcn/hutool/core/stream/CollectorUtil$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, p2}, Lcn/hutool/core/stream/CollectorUtil$$ExternalSyntheticLambda0;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    new-instance v2, Lcn/hutool/core/stream/CollectorUtil$$ExternalSyntheticLambda10;

    invoke-direct {v2, p3}, Lcn/hutool/core/stream/CollectorUtil$$ExternalSyntheticLambda10;-><init>(Ljava/util/function/Function;)V

    new-instance v3, Lcn/hutool/core/stream/CollectorUtil$$ExternalSyntheticLambda11;

    invoke-direct {v3}, Lcn/hutool/core/stream/CollectorUtil$$ExternalSyntheticLambda11;-><init>()V

    new-instance v4, Lcn/hutool/core/stream/CollectorUtil$$ExternalSyntheticLambda12;

    invoke-direct {v4}, Lcn/hutool/core/stream/CollectorUtil$$ExternalSyntheticLambda12;-><init>()V

    .line 83
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v5

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcn/hutool/core/stream/SimpleCollector;-><init>(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BinaryOperator;Ljava/util/function/Function;Ljava/util/Set;)V

    return-object v6
.end method

.method public static joining(Ljava/lang/CharSequence;Ljava/util/function/Function;)Ljava/util/stream/Collector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/CharSequence;",
            "Ljava/util/function/Function<",
            "TT;+",
            "Ljava/lang/CharSequence;",
            ">;)",
            "Ljava/util/stream/Collector<",
            "TT;*",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, ""

    .line 61
    invoke-static {p0, v0, v0, p1}, Lcn/hutool/core/stream/CollectorUtil;->joining(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/util/function/Function;)Ljava/util/stream/Collector;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$groupingBy$3(Ljava/util/function/Function;Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/Map;Ljava/lang/Object;)V
    .locals 1

    .line 107
    invoke-static {p4}, Lcn/hutool/core/lang/Opt;->ofNullable(Ljava/lang/Object;)Lcn/hutool/core/lang/Opt;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcn/hutool/core/lang/Opt;->map(Ljava/util/function/Function;)Lcn/hutool/core/lang/Opt;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcn/hutool/core/lang/Opt;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 108
    new-instance v0, Lcn/hutool/core/stream/CollectorUtil$$ExternalSyntheticLambda8;

    invoke-direct {v0, p1}, Lcn/hutool/core/stream/CollectorUtil$$ExternalSyntheticLambda8;-><init>(Ljava/util/function/Supplier;)V

    invoke-interface {p3, p0, v0}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p0

    .line 109
    invoke-interface {p2, p0, p4}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic lambda$groupingBy$5(Ljava/util/function/Function;Ljava/util/Map;)Ljava/util/Map;
    .locals 1

    .line 119
    new-instance v0, Lcn/hutool/core/stream/CollectorUtil$$ExternalSyntheticLambda14;

    invoke-direct {v0, p0}, Lcn/hutool/core/stream/CollectorUtil$$ExternalSyntheticLambda14;-><init>(Ljava/util/function/Function;)V

    invoke-interface {p1, v0}, Ljava/util/Map;->replaceAll(Ljava/util/function/BiFunction;)V

    return-object p1
.end method

.method static synthetic lambda$joining$0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/util/StringJoiner;
    .locals 1

    .line 79
    new-instance v0, Ljava/util/StringJoiner;

    invoke-direct {v0, p0, p1, p2}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    return-object v0
.end method

.method static synthetic lambda$joining$1(Ljava/util/function/Function;Ljava/util/StringJoiner;Ljava/lang/Object;)V
    .locals 0

    .line 80
    invoke-interface {p0, p2}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/CharSequence;

    invoke-virtual {p1, p0}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    return-void
.end method

.method static synthetic lambda$mapMerger$7(Ljava/util/function/BinaryOperator;Ljava/util/Map;Ljava/util/Map;)Ljava/util/Map;
    .locals 2

    .line 209
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 210
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v1, v0, p0}, Ljava/util/Map;->merge(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-object p1
.end method

.method static synthetic lambda$null$11(Ljava/lang/Object;)Ljava/util/List;
    .locals 0

    .line 246
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method static synthetic lambda$null$12(Ljava/util/Map;Ljava/lang/Object;Ljava/util/List;)V
    .locals 1

    .line 246
    new-instance v0, Lcn/hutool/core/stream/CollectorUtil$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcn/hutool/core/stream/CollectorUtil$$ExternalSyntheticLambda1;-><init>()V

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    invoke-interface {p0, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method static synthetic lambda$null$2(Ljava/util/function/Supplier;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 108
    invoke-interface {p0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$null$4(Ljava/util/function/Function;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 119
    invoke-interface {p0, p2}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$null$8(Ljava/lang/Object;)Ljava/util/List;
    .locals 0

    .line 243
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method static synthetic lambda$null$9(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    .line 243
    new-instance v0, Lcn/hutool/core/stream/CollectorUtil$$ExternalSyntheticLambda13;

    invoke-direct {v0}, Lcn/hutool/core/stream/CollectorUtil$$ExternalSyntheticLambda13;-><init>()V

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    invoke-interface {p0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method static synthetic lambda$reduceListMap$10(Ljava/util/function/Supplier;Ljava/util/Map;)Ljava/util/Map;
    .locals 1

    .line 242
    invoke-interface {p0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    .line 243
    new-instance v0, Lcn/hutool/core/stream/CollectorUtil$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lcn/hutool/core/stream/CollectorUtil$$ExternalSyntheticLambda3;-><init>(Ljava/util/Map;)V

    invoke-interface {p1, v0}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    return-object p0
.end method

.method static synthetic lambda$reduceListMap$13(Ljava/util/Map;Ljava/util/Map;)Ljava/util/Map;
    .locals 1

    .line 246
    new-instance v0, Lcn/hutool/core/stream/CollectorUtil$$ExternalSyntheticLambda16;

    invoke-direct {v0, p0}, Lcn/hutool/core/stream/CollectorUtil$$ExternalSyntheticLambda16;-><init>(Ljava/util/Map;)V

    invoke-interface {p1, v0}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    return-object p0
.end method

.method static synthetic lambda$toMap$6(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/Map;Ljava/lang/Object;)V
    .locals 1

    .line 194
    invoke-static {p3}, Lcn/hutool/core/lang/Opt;->ofNullable(Ljava/lang/Object;)Lcn/hutool/core/lang/Opt;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcn/hutool/core/lang/Opt;->map(Ljava/util/function/Function;)Lcn/hutool/core/lang/Opt;

    move-result-object p0

    invoke-virtual {p0}, Lcn/hutool/core/lang/Opt;->get()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p3}, Lcn/hutool/core/lang/Opt;->ofNullable(Ljava/lang/Object;)Lcn/hutool/core/lang/Opt;

    move-result-object p3

    invoke-virtual {p3, p1}, Lcn/hutool/core/lang/Opt;->map(Ljava/util/function/Function;)Lcn/hutool/core/lang/Opt;

    move-result-object p1

    invoke-virtual {p1}, Lcn/hutool/core/lang/Opt;->get()Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p2, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static mapMerger(Ljava/util/function/BinaryOperator;)Ljava/util/function/BinaryOperator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            "M::",
            "Ljava/util/Map<",
            "TK;TV;>;>(",
            "Ljava/util/function/BinaryOperator<",
            "TV;>;)",
            "Ljava/util/function/BinaryOperator<",
            "TM;>;"
        }
    .end annotation

    .line 208
    new-instance v0, Lcn/hutool/core/stream/CollectorUtil$$ExternalSyntheticLambda9;

    invoke-direct {v0, p0}, Lcn/hutool/core/stream/CollectorUtil$$ExternalSyntheticLambda9;-><init>(Ljava/util/function/BinaryOperator;)V

    return-object v0
.end method

.method public static reduceListMap()Ljava/util/stream/Collector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/stream/Collector<",
            "Ljava/util/Map<",
            "TK;TV;>;*",
            "Ljava/util/Map<",
            "TK;",
            "Ljava/util/List<",
            "TV;>;>;>;"
        }
    .end annotation

    .line 226
    new-instance v0, Lcn/hutool/core/stream/CollectorUtil$$ExternalSyntheticLambda15;

    invoke-direct {v0}, Lcn/hutool/core/stream/CollectorUtil$$ExternalSyntheticLambda15;-><init>()V

    invoke-static {v0}, Lcn/hutool/core/stream/CollectorUtil;->reduceListMap(Ljava/util/function/Supplier;)Ljava/util/stream/Collector;

    move-result-object v0

    return-object v0
.end method

.method public static reduceListMap(Ljava/util/function/Supplier;)Ljava/util/stream/Collector;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            "R::",
            "Ljava/util/Map<",
            "TK;",
            "Ljava/util/List<",
            "TV;>;>;>(",
            "Ljava/util/function/Supplier<",
            "TR;>;)",
            "Ljava/util/stream/Collector<",
            "Ljava/util/Map<",
            "TK;TV;>;*TR;>;"
        }
    .end annotation

    .line 241
    invoke-interface {p0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    new-instance v1, Lcn/hutool/core/stream/CollectorUtil$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lcn/hutool/core/stream/CollectorUtil$$ExternalSyntheticLambda4;-><init>(Ljava/util/function/Supplier;)V

    new-instance p0, Lcn/hutool/core/stream/CollectorUtil$$ExternalSyntheticLambda5;

    invoke-direct {p0}, Lcn/hutool/core/stream/CollectorUtil$$ExternalSyntheticLambda5;-><init>()V

    invoke-static {v0, v1, p0}, Ljava/util/stream/Collectors;->reducing(Ljava/lang/Object;Ljava/util/function/Function;Ljava/util/function/BinaryOperator;)Ljava/util/stream/Collector;

    move-result-object p0

    return-object p0
.end method

.method public static toMap(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/BinaryOperator;)Ljava/util/stream/Collector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "K:",
            "Ljava/lang/Object;",
            "U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Function<",
            "-TT;+TK;>;",
            "Ljava/util/function/Function<",
            "-TT;+TU;>;",
            "Ljava/util/function/BinaryOperator<",
            "TU;>;)",
            "Ljava/util/stream/Collector<",
            "TT;*",
            "Ljava/util/Map<",
            "TK;TU;>;>;"
        }
    .end annotation

    .line 172
    new-instance v0, Lcn/hutool/core/stream/CollectorUtil$$ExternalSyntheticLambda15;

    invoke-direct {v0}, Lcn/hutool/core/stream/CollectorUtil$$ExternalSyntheticLambda15;-><init>()V

    invoke-static {p0, p1, p2, v0}, Lcn/hutool/core/stream/CollectorUtil;->toMap(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/BinaryOperator;Ljava/util/function/Supplier;)Ljava/util/stream/Collector;

    move-result-object p0

    return-object p0
.end method

.method public static toMap(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/BinaryOperator;Ljava/util/function/Supplier;)Ljava/util/stream/Collector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "K:",
            "Ljava/lang/Object;",
            "U:",
            "Ljava/lang/Object;",
            "M::",
            "Ljava/util/Map<",
            "TK;TU;>;>(",
            "Ljava/util/function/Function<",
            "-TT;+TK;>;",
            "Ljava/util/function/Function<",
            "-TT;+TU;>;",
            "Ljava/util/function/BinaryOperator<",
            "TU;>;",
            "Ljava/util/function/Supplier<",
            "TM;>;)",
            "Ljava/util/stream/Collector<",
            "TT;*TM;>;"
        }
    .end annotation

    .line 193
    new-instance v0, Lcn/hutool/core/stream/CollectorUtil$$ExternalSyntheticLambda18;

    invoke-direct {v0, p0, p1}, Lcn/hutool/core/stream/CollectorUtil$$ExternalSyntheticLambda18;-><init>(Ljava/util/function/Function;Ljava/util/function/Function;)V

    .line 195
    new-instance p0, Lcn/hutool/core/stream/SimpleCollector;

    invoke-static {p2}, Lcn/hutool/core/stream/CollectorUtil;->mapMerger(Ljava/util/function/BinaryOperator;)Ljava/util/function/BinaryOperator;

    move-result-object p1

    sget-object p2, Lcn/hutool/core/stream/CollectorUtil;->CH_ID:Ljava/util/Set;

    invoke-direct {p0, p3, v0, p1, p2}, Lcn/hutool/core/stream/SimpleCollector;-><init>(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BinaryOperator;Ljava/util/Set;)V

    return-object p0
.end method
