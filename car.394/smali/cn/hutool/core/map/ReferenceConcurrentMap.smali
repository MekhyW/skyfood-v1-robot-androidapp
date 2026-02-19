.class public Lcn/hutool/core/map/ReferenceConcurrentMap;
.super Ljava/lang/Object;
.source "ReferenceConcurrentMap.java"

# interfaces
.implements Ljava/util/concurrent/ConcurrentMap;
.implements Ljava/lang/Iterable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/hutool/core/map/ReferenceConcurrentMap$SoftKey;,
        Lcn/hutool/core/map/ReferenceConcurrentMap$WeakKey;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/ConcurrentMap<",
        "TK;TV;>;",
        "Ljava/lang/Iterable<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# instance fields
.field private final keyType:Lcn/hutool/core/util/ReferenceUtil$ReferenceType;

.field private final lastQueue:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue<",
            "TK;>;"
        }
    .end annotation
.end field

.field private purgeListener:Ljava/util/function/BiConsumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/BiConsumer<",
            "Ljava/lang/ref/Reference<",
            "+TK;>;TV;>;"
        }
    .end annotation
.end field

.field final raw:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/ref/Reference<",
            "TK;>;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/concurrent/ConcurrentMap;Lcn/hutool/core/util/ReferenceUtil$ReferenceType;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/ref/Reference<",
            "TK;>;TV;>;",
            "Lcn/hutool/core/util/ReferenceUtil$ReferenceType;",
            ")V"
        }
    .end annotation

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Lcn/hutool/core/map/ReferenceConcurrentMap;->raw:Ljava/util/concurrent/ConcurrentMap;

    .line 54
    iput-object p2, p0, Lcn/hutool/core/map/ReferenceConcurrentMap;->keyType:Lcn/hutool/core/util/ReferenceUtil$ReferenceType;

    .line 55
    new-instance p1, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {p1}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    iput-object p1, p0, Lcn/hutool/core/map/ReferenceConcurrentMap;->lastQueue:Ljava/lang/ref/ReferenceQueue;

    return-void
.end method

.method static synthetic lambda$compute$7(Ljava/util/function/BiFunction;Ljava/lang/Object;Ljava/lang/ref/Reference;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 213
    invoke-interface {p0, p1, p3}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$computeIfAbsent$1(Ljava/util/function/Function;Ljava/lang/Object;Ljava/lang/ref/Reference;)Ljava/lang/Object;
    .locals 0

    .line 137
    invoke-interface {p0, p1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$computeIfAbsent$3(Lcn/hutool/core/lang/func/Func0;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 154
    invoke-interface {p0}, Lcn/hutool/core/lang/func/Func0;->callWithRuntimeException()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$computeIfPresent$2(Ljava/util/function/BiFunction;Ljava/lang/Object;Ljava/lang/ref/Reference;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 143
    invoke-interface {p0, p1, p3}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$entrySet$5(Ljava/util/Map$Entry;)Ljava/util/AbstractMap$SimpleImmutableEntry;
    .locals 2

    .line 195
    new-instance v0, Ljava/util/AbstractMap$SimpleImmutableEntry;

    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/Reference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method static synthetic lambda$forEach$6(Ljava/util/function/BiConsumer;Ljava/lang/ref/Reference;Ljava/lang/Object;)V
    .locals 0

    .line 202
    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p0, p1, p2}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic lambda$keySet$4(Ljava/lang/ref/Reference;)Ljava/lang/Object;
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 181
    :cond_0
    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method static synthetic lambda$replaceAll$0(Ljava/util/function/BiFunction;Ljava/lang/ref/Reference;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 131
    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p0, p1, p2}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private ofKey(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)Ljava/lang/ref/Reference;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/lang/ref/ReferenceQueue<",
            "-TK;>;)",
            "Ljava/lang/ref/Reference<",
            "TK;>;"
        }
    .end annotation

    .line 244
    sget-object v0, Lcn/hutool/core/map/ReferenceConcurrentMap$1;->$SwitchMap$cn$hutool$core$util$ReferenceUtil$ReferenceType:[I

    iget-object v1, p0, Lcn/hutool/core/map/ReferenceConcurrentMap;->keyType:Lcn/hutool/core/util/ReferenceUtil$ReferenceType;

    invoke-virtual {v1}, Lcn/hutool/core/util/ReferenceUtil$ReferenceType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 248
    new-instance v0, Lcn/hutool/core/map/ReferenceConcurrentMap$SoftKey;

    invoke-direct {v0, p1, p2}, Lcn/hutool/core/map/ReferenceConcurrentMap$SoftKey;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    return-object v0

    .line 250
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Unsupported key type: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcn/hutool/core/map/ReferenceConcurrentMap;->keyType:Lcn/hutool/core/util/ReferenceUtil$ReferenceType;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 246
    :cond_1
    new-instance v0, Lcn/hutool/core/map/ReferenceConcurrentMap$WeakKey;

    invoke-direct {v0, p1, p2}, Lcn/hutool/core/map/ReferenceConcurrentMap$WeakKey;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    return-object v0
.end method

.method private purgeStaleKeys()V
    .locals 3

    .line 228
    :cond_0
    :goto_0
    iget-object v0, p0, Lcn/hutool/core/map/ReferenceConcurrentMap;->lastQueue:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v0}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 229
    iget-object v1, p0, Lcn/hutool/core/map/ReferenceConcurrentMap;->raw:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 230
    iget-object v2, p0, Lcn/hutool/core/map/ReferenceConcurrentMap;->purgeListener:Ljava/util/function/BiConsumer;

    if-eqz v2, :cond_0

    .line 231
    invoke-interface {v2, v0, v1}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 173
    iget-object v0, p0, Lcn/hutool/core/map/ReferenceConcurrentMap;->raw:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->clear()V

    .line 175
    :goto_0
    iget-object v0, p0, Lcn/hutool/core/map/ReferenceConcurrentMap;->lastQueue:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v0}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    return-void
.end method

.method public compute(Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/util/function/BiFunction<",
            "-TK;-TV;+TV;>;)TV;"
        }
    .end annotation

    .line 212
    invoke-direct {p0}, Lcn/hutool/core/map/ReferenceConcurrentMap;->purgeStaleKeys()V

    .line 213
    iget-object v0, p0, Lcn/hutool/core/map/ReferenceConcurrentMap;->raw:Ljava/util/concurrent/ConcurrentMap;

    iget-object v1, p0, Lcn/hutool/core/map/ReferenceConcurrentMap;->lastQueue:Ljava/lang/ref/ReferenceQueue;

    invoke-direct {p0, p1, v1}, Lcn/hutool/core/map/ReferenceConcurrentMap;->ofKey(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)Ljava/lang/ref/Reference;

    move-result-object v1

    new-instance v2, Lcn/hutool/core/map/ReferenceConcurrentMap$$ExternalSyntheticLambda1;

    invoke-direct {v2, p2, p1}, Lcn/hutool/core/map/ReferenceConcurrentMap$$ExternalSyntheticLambda1;-><init>(Ljava/util/function/BiFunction;Ljava/lang/Object;)V

    invoke-interface {v0, v1, v2}, Ljava/util/concurrent/ConcurrentMap;->compute(Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public computeIfAbsent(Ljava/lang/Object;Lcn/hutool/core/lang/func/Func0;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Lcn/hutool/core/lang/func/Func0<",
            "+TV;>;)TV;"
        }
    .end annotation

    .line 154
    new-instance v0, Lcn/hutool/core/map/ReferenceConcurrentMap$$ExternalSyntheticLambda8;

    invoke-direct {v0, p2}, Lcn/hutool/core/map/ReferenceConcurrentMap$$ExternalSyntheticLambda8;-><init>(Lcn/hutool/core/lang/func/Func0;)V

    invoke-virtual {p0, p1, v0}, Lcn/hutool/core/map/ReferenceConcurrentMap;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/util/function/Function<",
            "-TK;+TV;>;)TV;"
        }
    .end annotation

    .line 136
    invoke-direct {p0}, Lcn/hutool/core/map/ReferenceConcurrentMap;->purgeStaleKeys()V

    .line 137
    iget-object v0, p0, Lcn/hutool/core/map/ReferenceConcurrentMap;->raw:Ljava/util/concurrent/ConcurrentMap;

    iget-object v1, p0, Lcn/hutool/core/map/ReferenceConcurrentMap;->lastQueue:Ljava/lang/ref/ReferenceQueue;

    invoke-direct {p0, p1, v1}, Lcn/hutool/core/map/ReferenceConcurrentMap;->ofKey(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)Ljava/lang/ref/Reference;

    move-result-object v1

    new-instance v2, Lcn/hutool/core/map/ReferenceConcurrentMap$$ExternalSyntheticLambda3;

    invoke-direct {v2, p2, p1}, Lcn/hutool/core/map/ReferenceConcurrentMap$$ExternalSyntheticLambda3;-><init>(Ljava/util/function/Function;Ljava/lang/Object;)V

    invoke-interface {v0, v1, v2}, Ljava/util/concurrent/ConcurrentMap;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public computeIfPresent(Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/util/function/BiFunction<",
            "-TK;-TV;+TV;>;)TV;"
        }
    .end annotation

    .line 142
    invoke-direct {p0}, Lcn/hutool/core/map/ReferenceConcurrentMap;->purgeStaleKeys()V

    .line 143
    iget-object v0, p0, Lcn/hutool/core/map/ReferenceConcurrentMap;->raw:Ljava/util/concurrent/ConcurrentMap;

    iget-object v1, p0, Lcn/hutool/core/map/ReferenceConcurrentMap;->lastQueue:Ljava/lang/ref/ReferenceQueue;

    invoke-direct {p0, p1, v1}, Lcn/hutool/core/map/ReferenceConcurrentMap;->ofKey(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)Ljava/lang/ref/Reference;

    move-result-object v1

    new-instance v2, Lcn/hutool/core/map/ReferenceConcurrentMap$$ExternalSyntheticLambda7;

    invoke-direct {v2, p2, p1}, Lcn/hutool/core/map/ReferenceConcurrentMap$$ExternalSyntheticLambda7;-><init>(Ljava/util/function/BiFunction;Ljava/lang/Object;)V

    invoke-interface {v0, v1, v2}, Ljava/util/concurrent/ConcurrentMap;->computeIfPresent(Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 2

    .line 88
    invoke-direct {p0}, Lcn/hutool/core/map/ReferenceConcurrentMap;->purgeStaleKeys()V

    .line 90
    iget-object v0, p0, Lcn/hutool/core/map/ReferenceConcurrentMap;->raw:Ljava/util/concurrent/ConcurrentMap;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Lcn/hutool/core/map/ReferenceConcurrentMap;->ofKey(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)Ljava/lang/ref/Reference;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 1

    .line 95
    invoke-direct {p0}, Lcn/hutool/core/map/ReferenceConcurrentMap;->purgeStaleKeys()V

    .line 96
    iget-object v0, p0, Lcn/hutool/core/map/ReferenceConcurrentMap;->raw:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->containsValue(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public entrySet()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 193
    invoke-direct {p0}, Lcn/hutool/core/map/ReferenceConcurrentMap;->purgeStaleKeys()V

    .line 194
    iget-object v0, p0, Lcn/hutool/core/map/ReferenceConcurrentMap;->raw:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcn/hutool/core/map/ReferenceConcurrentMap$$ExternalSyntheticLambda4;

    invoke-direct {v1}, Lcn/hutool/core/map/ReferenceConcurrentMap$$ExternalSyntheticLambda4;-><init>()V

    .line 195
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 196
    invoke-static {}, Ljava/util/stream/Collectors;->toSet()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    return-object v0
.end method

.method public forEach(Ljava/util/function/BiConsumer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiConsumer<",
            "-TK;-TV;>;)V"
        }
    .end annotation

    .line 201
    invoke-direct {p0}, Lcn/hutool/core/map/ReferenceConcurrentMap;->purgeStaleKeys()V

    .line 202
    iget-object v0, p0, Lcn/hutool/core/map/ReferenceConcurrentMap;->raw:Ljava/util/concurrent/ConcurrentMap;

    new-instance v1, Lcn/hutool/core/map/ReferenceConcurrentMap$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1}, Lcn/hutool/core/map/ReferenceConcurrentMap$$ExternalSyntheticLambda0;-><init>(Ljava/util/function/BiConsumer;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ConcurrentMap;->forEach(Ljava/util/function/BiConsumer;)V

    return-void
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 81
    invoke-direct {p0}, Lcn/hutool/core/map/ReferenceConcurrentMap;->purgeStaleKeys()V

    .line 83
    iget-object v0, p0, Lcn/hutool/core/map/ReferenceConcurrentMap;->raw:Ljava/util/concurrent/ConcurrentMap;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Lcn/hutool/core/map/ReferenceConcurrentMap;->ofKey(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)Ljava/lang/ref/Reference;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public isEmpty()Z
    .locals 1

    .line 76
    invoke-virtual {p0}, Lcn/hutool/core/map/ReferenceConcurrentMap;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 207
    invoke-virtual {p0}, Lcn/hutool/core/map/ReferenceConcurrentMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public keySet()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation

    .line 181
    iget-object v0, p0, Lcn/hutool/core/map/ReferenceConcurrentMap;->raw:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->keySet()Ljava/util/Set;

    move-result-object v0

    new-instance v1, Lcn/hutool/core/map/ReferenceConcurrentMap$$ExternalSyntheticLambda6;

    invoke-direct {v1}, Lcn/hutool/core/map/ReferenceConcurrentMap$$ExternalSyntheticLambda6;-><init>()V

    invoke-static {v0, v1}, Lcn/hutool/core/collection/CollUtil;->trans(Ljava/util/Collection;Ljava/util/function/Function;)Ljava/util/Collection;

    move-result-object v0

    .line 182
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    return-object v1
.end method

.method public merge(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;",
            "Ljava/util/function/BiFunction<",
            "-TV;-TV;+TV;>;)TV;"
        }
    .end annotation

    .line 218
    invoke-direct {p0}, Lcn/hutool/core/map/ReferenceConcurrentMap;->purgeStaleKeys()V

    .line 219
    iget-object v0, p0, Lcn/hutool/core/map/ReferenceConcurrentMap;->raw:Ljava/util/concurrent/ConcurrentMap;

    iget-object v1, p0, Lcn/hutool/core/map/ReferenceConcurrentMap;->lastQueue:Ljava/lang/ref/ReferenceQueue;

    invoke-direct {p0, p1, v1}, Lcn/hutool/core/map/ReferenceConcurrentMap;->ofKey(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)Ljava/lang/ref/Reference;

    move-result-object p1

    invoke-interface {v0, p1, p2, p3}, Ljava/util/concurrent/ConcurrentMap;->merge(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .line 101
    invoke-direct {p0}, Lcn/hutool/core/map/ReferenceConcurrentMap;->purgeStaleKeys()V

    .line 102
    iget-object v0, p0, Lcn/hutool/core/map/ReferenceConcurrentMap;->raw:Ljava/util/concurrent/ConcurrentMap;

    iget-object v1, p0, Lcn/hutool/core/map/ReferenceConcurrentMap;->lastQueue:Ljava/lang/ref/ReferenceQueue;

    invoke-direct {p0, p1, v1}, Lcn/hutool/core/map/ReferenceConcurrentMap;->ofKey(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)Ljava/lang/ref/Reference;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+TK;+TV;>;)V"
        }
    .end annotation

    .line 113
    new-instance v0, Lcn/hutool/core/map/ReferenceConcurrentMap$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcn/hutool/core/map/ReferenceConcurrentMap$$ExternalSyntheticLambda2;-><init>(Lcn/hutool/core/map/ReferenceConcurrentMap;)V

    invoke-interface {p1, v0}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    return-void
.end method

.method public putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .line 107
    invoke-direct {p0}, Lcn/hutool/core/map/ReferenceConcurrentMap;->purgeStaleKeys()V

    .line 108
    iget-object v0, p0, Lcn/hutool/core/map/ReferenceConcurrentMap;->raw:Ljava/util/concurrent/ConcurrentMap;

    iget-object v1, p0, Lcn/hutool/core/map/ReferenceConcurrentMap;->lastQueue:Ljava/lang/ref/ReferenceQueue;

    invoke-direct {p0, p1, v1}, Lcn/hutool/core/map/ReferenceConcurrentMap;->ofKey(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)Ljava/lang/ref/Reference;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 159
    invoke-direct {p0}, Lcn/hutool/core/map/ReferenceConcurrentMap;->purgeStaleKeys()V

    .line 161
    iget-object v0, p0, Lcn/hutool/core/map/ReferenceConcurrentMap;->raw:Ljava/util/concurrent/ConcurrentMap;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Lcn/hutool/core/map/ReferenceConcurrentMap;->ofKey(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)Ljava/lang/ref/Reference;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public remove(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2

    .line 166
    invoke-direct {p0}, Lcn/hutool/core/map/ReferenceConcurrentMap;->purgeStaleKeys()V

    .line 168
    iget-object v0, p0, Lcn/hutool/core/map/ReferenceConcurrentMap;->raw:Ljava/util/concurrent/ConcurrentMap;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Lcn/hutool/core/map/ReferenceConcurrentMap;->ofKey(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)Ljava/lang/ref/Reference;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public replace(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .line 118
    invoke-direct {p0}, Lcn/hutool/core/map/ReferenceConcurrentMap;->purgeStaleKeys()V

    .line 119
    iget-object v0, p0, Lcn/hutool/core/map/ReferenceConcurrentMap;->raw:Ljava/util/concurrent/ConcurrentMap;

    iget-object v1, p0, Lcn/hutool/core/map/ReferenceConcurrentMap;->lastQueue:Ljava/lang/ref/ReferenceQueue;

    invoke-direct {p0, p1, v1}, Lcn/hutool/core/map/ReferenceConcurrentMap;->ofKey(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)Ljava/lang/ref/Reference;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Ljava/util/concurrent/ConcurrentMap;->replace(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public replace(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;TV;)Z"
        }
    .end annotation

    .line 124
    invoke-direct {p0}, Lcn/hutool/core/map/ReferenceConcurrentMap;->purgeStaleKeys()V

    .line 125
    iget-object v0, p0, Lcn/hutool/core/map/ReferenceConcurrentMap;->raw:Ljava/util/concurrent/ConcurrentMap;

    iget-object v1, p0, Lcn/hutool/core/map/ReferenceConcurrentMap;->lastQueue:Ljava/lang/ref/ReferenceQueue;

    invoke-direct {p0, p1, v1}, Lcn/hutool/core/map/ReferenceConcurrentMap;->ofKey(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)Ljava/lang/ref/Reference;

    move-result-object p1

    invoke-interface {v0, p1, p2, p3}, Ljava/util/concurrent/ConcurrentMap;->replace(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public replaceAll(Ljava/util/function/BiFunction;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiFunction<",
            "-TK;-TV;+TV;>;)V"
        }
    .end annotation

    .line 130
    invoke-direct {p0}, Lcn/hutool/core/map/ReferenceConcurrentMap;->purgeStaleKeys()V

    .line 131
    iget-object v0, p0, Lcn/hutool/core/map/ReferenceConcurrentMap;->raw:Ljava/util/concurrent/ConcurrentMap;

    new-instance v1, Lcn/hutool/core/map/ReferenceConcurrentMap$$ExternalSyntheticLambda5;

    invoke-direct {v1, p1}, Lcn/hutool/core/map/ReferenceConcurrentMap$$ExternalSyntheticLambda5;-><init>(Ljava/util/function/BiFunction;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ConcurrentMap;->replaceAll(Ljava/util/function/BiFunction;)V

    return-void
.end method

.method public setPurgeListener(Ljava/util/function/BiConsumer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiConsumer<",
            "Ljava/lang/ref/Reference<",
            "+TK;>;TV;>;)V"
        }
    .end annotation

    .line 65
    iput-object p1, p0, Lcn/hutool/core/map/ReferenceConcurrentMap;->purgeListener:Ljava/util/function/BiConsumer;

    return-void
.end method

.method public size()I
    .locals 1

    .line 70
    invoke-direct {p0}, Lcn/hutool/core/map/ReferenceConcurrentMap;->purgeStaleKeys()V

    .line 71
    iget-object v0, p0, Lcn/hutool/core/map/ReferenceConcurrentMap;->raw:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->size()I

    move-result v0

    return v0
.end method

.method public values()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    .line 187
    invoke-direct {p0}, Lcn/hutool/core/map/ReferenceConcurrentMap;->purgeStaleKeys()V

    .line 188
    iget-object v0, p0, Lcn/hutool/core/map/ReferenceConcurrentMap;->raw:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method
