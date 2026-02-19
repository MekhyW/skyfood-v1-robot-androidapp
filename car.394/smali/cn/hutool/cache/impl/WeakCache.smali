.class public Lcn/hutool/cache/impl/WeakCache;
.super Lcn/hutool/cache/impl/TimedCache;
.source "WeakCache.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcn/hutool/cache/impl/TimedCache<",
        "TK;TV;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public static synthetic $r8$lambda$9Z5LV-q5jGlgrlCABfHI2MuMWQo(Ljava/lang/ref/Reference;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(J)V
    .locals 1

    .line 30
    new-instance v0, Lcn/hutool/core/map/WeakConcurrentMap;

    invoke-direct {v0}, Lcn/hutool/core/map/WeakConcurrentMap;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Lcn/hutool/cache/impl/TimedCache;-><init>(JLjava/util/Map;)V

    return-void
.end method

.method static synthetic lambda$setListener$0(Lcn/hutool/cache/CacheListener;Ljava/lang/ref/Reference;Lcn/hutool/cache/impl/CacheObj;)V
    .locals 1

    .line 39
    invoke-static {p1}, Lcn/hutool/core/lang/Opt;->ofNullable(Ljava/lang/Object;)Lcn/hutool/core/lang/Opt;

    move-result-object p1

    new-instance v0, Lcn/hutool/cache/impl/WeakCache$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcn/hutool/cache/impl/WeakCache$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {p1, v0}, Lcn/hutool/core/lang/Opt;->map(Ljava/util/function/Function;)Lcn/hutool/core/lang/Opt;

    move-result-object p1

    new-instance v0, Lcn/hutool/cache/impl/AbstractCache$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcn/hutool/cache/impl/AbstractCache$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {p1, v0}, Lcn/hutool/core/lang/Opt;->map(Ljava/util/function/Function;)Lcn/hutool/core/lang/Opt;

    move-result-object p1

    invoke-virtual {p1}, Lcn/hutool/core/lang/Opt;->get()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p2}, Lcn/hutool/cache/impl/CacheObj;->getValue()Ljava/lang/Object;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Lcn/hutool/cache/CacheListener;->onRemove(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic setListener(Lcn/hutool/cache/CacheListener;)Lcn/hutool/cache/Cache;
    .locals 0

    .line 22
    invoke-virtual {p0, p1}, Lcn/hutool/cache/impl/WeakCache;->setListener(Lcn/hutool/cache/CacheListener;)Lcn/hutool/cache/impl/WeakCache;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setListener(Lcn/hutool/cache/CacheListener;)Lcn/hutool/cache/impl/AbstractCache;
    .locals 0

    .line 22
    invoke-virtual {p0, p1}, Lcn/hutool/cache/impl/WeakCache;->setListener(Lcn/hutool/cache/CacheListener;)Lcn/hutool/cache/impl/WeakCache;

    move-result-object p1

    return-object p1
.end method

.method public setListener(Lcn/hutool/cache/CacheListener;)Lcn/hutool/cache/impl/WeakCache;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/hutool/cache/CacheListener<",
            "TK;TV;>;)",
            "Lcn/hutool/cache/impl/WeakCache<",
            "TK;TV;>;"
        }
    .end annotation

    .line 35
    invoke-super {p0, p1}, Lcn/hutool/cache/impl/TimedCache;->setListener(Lcn/hutool/cache/CacheListener;)Lcn/hutool/cache/impl/AbstractCache;

    .line 37
    iget-object v0, p0, Lcn/hutool/cache/impl/WeakCache;->cacheMap:Ljava/util/Map;

    check-cast v0, Lcn/hutool/core/map/WeakConcurrentMap;

    .line 39
    new-instance v1, Lcn/hutool/cache/impl/WeakCache$$ExternalSyntheticLambda1;

    invoke-direct {v1, p1}, Lcn/hutool/cache/impl/WeakCache$$ExternalSyntheticLambda1;-><init>(Lcn/hutool/cache/CacheListener;)V

    invoke-virtual {v0, v1}, Lcn/hutool/core/map/WeakConcurrentMap;->setPurgeListener(Ljava/util/function/BiConsumer;)V

    return-object p0
.end method
