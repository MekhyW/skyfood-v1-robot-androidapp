.class public Lcn/hutool/cache/impl/FIFOCache;
.super Lcn/hutool/cache/impl/StampedCache;
.source "FIFOCache.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcn/hutool/cache/impl/StampedCache<",
        "TK;TV;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>(I)V
    .locals 2

    const-wide/16 v0, 0x0

    .line 28
    invoke-direct {p0, p1, v0, v1}, Lcn/hutool/cache/impl/FIFOCache;-><init>(IJ)V

    return-void
.end method

.method public constructor <init>(IJ)V
    .locals 1

    .line 37
    invoke-direct {p0}, Lcn/hutool/cache/impl/StampedCache;-><init>()V

    .line 38
    iput p1, p0, Lcn/hutool/cache/impl/FIFOCache;->capacity:I

    .line 39
    iput-wide p2, p0, Lcn/hutool/cache/impl/FIFOCache;->timeout:J

    .line 40
    new-instance p2, Ljava/util/LinkedHashMap;

    add-int/lit8 p1, p1, 0x1

    const/high16 p3, 0x3f800000    # 1.0f

    const/4 v0, 0x0

    invoke-direct {p2, p1, p3, v0}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    iput-object p2, p0, Lcn/hutool/cache/impl/FIFOCache;->cacheMap:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method protected pruneCache()I
    .locals 6

    .line 53
    invoke-virtual {p0}, Lcn/hutool/cache/impl/FIFOCache;->cacheObjIter()Ljava/util/Iterator;

    move-result-object v0

    .line 54
    invoke-virtual {p0}, Lcn/hutool/cache/impl/FIFOCache;->isPruneExpiredActive()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    move v1, v2

    .line 56
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 57
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/hutool/cache/impl/CacheObj;

    .line 58
    invoke-virtual {v4}, Lcn/hutool/cache/impl/CacheObj;->isExpired()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 59
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 60
    iget-object v5, v4, Lcn/hutool/cache/impl/CacheObj;->key:Ljava/lang/Object;

    iget-object v4, v4, Lcn/hutool/cache/impl/CacheObj;->obj:Ljava/lang/Object;

    invoke-virtual {p0, v5, v4}, Lcn/hutool/cache/impl/FIFOCache;->onRemove(Ljava/lang/Object;Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    if-nez v3, :cond_0

    move-object v3, v4

    goto :goto_0

    .line 69
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcn/hutool/cache/impl/CacheObj;

    :cond_3
    move v1, v2

    .line 73
    :cond_4
    invoke-virtual {p0}, Lcn/hutool/cache/impl/FIFOCache;->isFull()Z

    move-result v0

    if-eqz v0, :cond_5

    if-eqz v3, :cond_5

    .line 74
    iget-object v0, v3, Lcn/hutool/cache/impl/CacheObj;->key:Ljava/lang/Object;

    invoke-virtual {p0, v0, v2}, Lcn/hutool/cache/impl/FIFOCache;->removeWithoutLock(Ljava/lang/Object;Z)Lcn/hutool/cache/impl/CacheObj;

    .line 75
    iget-object v0, v3, Lcn/hutool/cache/impl/CacheObj;->key:Ljava/lang/Object;

    iget-object v2, v3, Lcn/hutool/cache/impl/CacheObj;->obj:Ljava/lang/Object;

    invoke-virtual {p0, v0, v2}, Lcn/hutool/cache/impl/FIFOCache;->onRemove(Ljava/lang/Object;Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    :cond_5
    return v1
.end method
