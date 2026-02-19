.class public abstract Lcn/hutool/cache/impl/StampedCache;
.super Lcn/hutool/cache/impl/AbstractCache;
.source "StampedCache.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcn/hutool/cache/impl/AbstractCache<",
        "TK;TV;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field protected final lock:Ljava/util/concurrent/locks/StampedLock;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 16
    invoke-direct {p0}, Lcn/hutool/cache/impl/AbstractCache;-><init>()V

    .line 22
    new-instance v0, Ljava/util/concurrent/locks/StampedLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/StampedLock;-><init>()V

    iput-object v0, p0, Lcn/hutool/cache/impl/StampedCache;->lock:Ljava/util/concurrent/locks/StampedLock;

    return-void
.end method

.method private remove(Ljava/lang/Object;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;Z)V"
        }
    .end annotation

    .line 130
    iget-object v0, p0, Lcn/hutool/cache/impl/StampedCache;->lock:Ljava/util/concurrent/locks/StampedLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/StampedLock;->writeLock()J

    move-result-wide v0

    .line 133
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcn/hutool/cache/impl/StampedCache;->removeWithoutLock(Ljava/lang/Object;Z)Lcn/hutool/cache/impl/CacheObj;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 135
    iget-object p2, p0, Lcn/hutool/cache/impl/StampedCache;->lock:Ljava/util/concurrent/locks/StampedLock;

    invoke-virtual {p2, v0, v1}, Ljava/util/concurrent/locks/StampedLock;->unlockWrite(J)V

    if-eqz p1, :cond_0

    .line 138
    iget-object p2, p1, Lcn/hutool/cache/impl/CacheObj;->key:Ljava/lang/Object;

    iget-object p1, p1, Lcn/hutool/cache/impl/CacheObj;->obj:Ljava/lang/Object;

    invoke-virtual {p0, p2, p1}, Lcn/hutool/cache/impl/StampedCache;->onRemove(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    .line 135
    iget-object p2, p0, Lcn/hutool/cache/impl/StampedCache;->lock:Ljava/util/concurrent/locks/StampedLock;

    invoke-virtual {p2, v0, v1}, Ljava/util/concurrent/locks/StampedLock;->unlockWrite(J)V

    .line 136
    throw p1
.end method


# virtual methods
.method public cacheObjIterator()Ljava/util/Iterator;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lcn/hutool/cache/impl/CacheObj<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 89
    iget-object v0, p0, Lcn/hutool/cache/impl/StampedCache;->lock:Ljava/util/concurrent/locks/StampedLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/StampedLock;->readLock()J

    move-result-wide v0

    .line 91
    :try_start_0
    invoke-virtual {p0}, Lcn/hutool/cache/impl/StampedCache;->cacheObjIter()Ljava/util/Iterator;

    move-result-object v2

    invoke-static {v2}, Lcn/hutool/core/collection/CopiedIter;->copyOf(Ljava/util/Iterator;)Lcn/hutool/core/collection/CopiedIter;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 93
    iget-object v3, p0, Lcn/hutool/cache/impl/StampedCache;->lock:Ljava/util/concurrent/locks/StampedLock;

    invoke-virtual {v3, v0, v1}, Ljava/util/concurrent/locks/StampedLock;->unlockRead(J)V

    .line 95
    new-instance v0, Lcn/hutool/cache/impl/CacheObjIterator;

    invoke-direct {v0, v2}, Lcn/hutool/cache/impl/CacheObjIterator;-><init>(Ljava/util/Iterator;)V

    return-object v0

    :catchall_0
    move-exception v2

    .line 93
    iget-object v3, p0, Lcn/hutool/cache/impl/StampedCache;->lock:Ljava/util/concurrent/locks/StampedLock;

    invoke-virtual {v3, v0, v1}, Ljava/util/concurrent/locks/StampedLock;->unlockRead(J)V

    .line 94
    throw v2
.end method

.method public clear()V
    .locals 4

    .line 115
    iget-object v0, p0, Lcn/hutool/cache/impl/StampedCache;->lock:Ljava/util/concurrent/locks/StampedLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/StampedLock;->writeLock()J

    move-result-wide v0

    .line 117
    :try_start_0
    iget-object v2, p0, Lcn/hutool/cache/impl/StampedCache;->cacheMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 119
    iget-object v2, p0, Lcn/hutool/cache/impl/StampedCache;->lock:Ljava/util/concurrent/locks/StampedLock;

    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/locks/StampedLock;->unlockWrite(J)V

    return-void

    :catchall_0
    move-exception v2

    iget-object v3, p0, Lcn/hutool/cache/impl/StampedCache;->lock:Ljava/util/concurrent/locks/StampedLock;

    invoke-virtual {v3, v0, v1}, Ljava/util/concurrent/locks/StampedLock;->unlockWrite(J)V

    .line 120
    throw v2
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)Z"
        }
    .end annotation

    .line 36
    iget-object v0, p0, Lcn/hutool/cache/impl/StampedCache;->lock:Ljava/util/concurrent/locks/StampedLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/StampedLock;->readLock()J

    move-result-wide v0

    .line 39
    :try_start_0
    invoke-virtual {p0, p1}, Lcn/hutool/cache/impl/StampedCache;->getWithoutLock(Ljava/lang/Object;)Lcn/hutool/cache/impl/CacheObj;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v3, 0x0

    if-nez v2, :cond_0

    .line 49
    iget-object p1, p0, Lcn/hutool/cache/impl/StampedCache;->lock:Ljava/util/concurrent/locks/StampedLock;

    invoke-virtual {p1, v0, v1}, Ljava/util/concurrent/locks/StampedLock;->unlockRead(J)V

    return v3

    .line 44
    :cond_0
    :try_start_1
    invoke-virtual {v2}, Lcn/hutool/cache/impl/CacheObj;->isExpired()Z

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v4, 0x1

    if-nez v2, :cond_1

    .line 49
    iget-object p1, p0, Lcn/hutool/cache/impl/StampedCache;->lock:Ljava/util/concurrent/locks/StampedLock;

    invoke-virtual {p1, v0, v1}, Ljava/util/concurrent/locks/StampedLock;->unlockRead(J)V

    return v4

    :cond_1
    iget-object v2, p0, Lcn/hutool/cache/impl/StampedCache;->lock:Ljava/util/concurrent/locks/StampedLock;

    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/locks/StampedLock;->unlockRead(J)V

    .line 53
    invoke-direct {p0, p1, v4}, Lcn/hutool/cache/impl/StampedCache;->remove(Ljava/lang/Object;Z)V

    return v3

    :catchall_0
    move-exception p1

    .line 49
    iget-object v2, p0, Lcn/hutool/cache/impl/StampedCache;->lock:Ljava/util/concurrent/locks/StampedLock;

    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/locks/StampedLock;->unlockRead(J)V

    .line 50
    throw p1
.end method

.method public get(Ljava/lang/Object;Z)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;Z)TV;"
        }
    .end annotation

    .line 60
    iget-object v0, p0, Lcn/hutool/cache/impl/StampedCache;->lock:Ljava/util/concurrent/locks/StampedLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/StampedLock;->tryOptimisticRead()J

    move-result-wide v0

    .line 61
    invoke-virtual {p0, p1}, Lcn/hutool/cache/impl/StampedCache;->getWithoutLock(Ljava/lang/Object;)Lcn/hutool/cache/impl/CacheObj;

    move-result-object v2

    .line 62
    iget-object v3, p0, Lcn/hutool/cache/impl/StampedCache;->lock:Ljava/util/concurrent/locks/StampedLock;

    invoke-virtual {v3, v0, v1}, Ljava/util/concurrent/locks/StampedLock;->validate(J)Z

    move-result v0

    if-nez v0, :cond_0

    .line 64
    iget-object v0, p0, Lcn/hutool/cache/impl/StampedCache;->lock:Ljava/util/concurrent/locks/StampedLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/StampedLock;->readLock()J

    move-result-wide v0

    .line 66
    :try_start_0
    invoke-virtual {p0, p1}, Lcn/hutool/cache/impl/StampedCache;->getWithoutLock(Ljava/lang/Object;)Lcn/hutool/cache/impl/CacheObj;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 68
    iget-object v3, p0, Lcn/hutool/cache/impl/StampedCache;->lock:Ljava/util/concurrent/locks/StampedLock;

    invoke-virtual {v3, v0, v1}, Ljava/util/concurrent/locks/StampedLock;->unlockRead(J)V

    goto :goto_0

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lcn/hutool/cache/impl/StampedCache;->lock:Ljava/util/concurrent/locks/StampedLock;

    invoke-virtual {p2, v0, v1}, Ljava/util/concurrent/locks/StampedLock;->unlockRead(J)V

    .line 69
    throw p1

    :cond_0
    :goto_0
    const/4 v0, 0x0

    if-nez v2, :cond_1

    .line 74
    iget-object p1, p0, Lcn/hutool/cache/impl/StampedCache;->missCount:Ljava/util/concurrent/atomic/LongAdder;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/LongAdder;->increment()V

    return-object v0

    .line 76
    :cond_1
    invoke-virtual {v2}, Lcn/hutool/cache/impl/CacheObj;->isExpired()Z

    move-result v1

    if-nez v1, :cond_2

    .line 77
    iget-object p1, p0, Lcn/hutool/cache/impl/StampedCache;->hitCount:Ljava/util/concurrent/atomic/LongAdder;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/LongAdder;->increment()V

    .line 78
    invoke-virtual {v2, p2}, Lcn/hutool/cache/impl/CacheObj;->get(Z)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_2
    const/4 p2, 0x1

    .line 82
    invoke-direct {p0, p1, p2}, Lcn/hutool/cache/impl/StampedCache;->remove(Ljava/lang/Object;Z)V

    return-object v0
.end method

.method public final prune()I
    .locals 4

    .line 100
    iget-object v0, p0, Lcn/hutool/cache/impl/StampedCache;->lock:Ljava/util/concurrent/locks/StampedLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/StampedLock;->writeLock()J

    move-result-wide v0

    .line 102
    :try_start_0
    invoke-virtual {p0}, Lcn/hutool/cache/impl/StampedCache;->pruneCache()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 104
    iget-object v3, p0, Lcn/hutool/cache/impl/StampedCache;->lock:Ljava/util/concurrent/locks/StampedLock;

    invoke-virtual {v3, v0, v1}, Ljava/util/concurrent/locks/StampedLock;->unlockWrite(J)V

    return v2

    :catchall_0
    move-exception v2

    iget-object v3, p0, Lcn/hutool/cache/impl/StampedCache;->lock:Ljava/util/concurrent/locks/StampedLock;

    invoke-virtual {v3, v0, v1}, Ljava/util/concurrent/locks/StampedLock;->unlockWrite(J)V

    .line 105
    throw v2
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;J)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;J)V"
        }
    .end annotation

    .line 26
    iget-object v0, p0, Lcn/hutool/cache/impl/StampedCache;->lock:Ljava/util/concurrent/locks/StampedLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/StampedLock;->writeLock()J

    move-result-wide v0

    .line 28
    :try_start_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcn/hutool/cache/impl/StampedCache;->putWithoutLock(Ljava/lang/Object;Ljava/lang/Object;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    iget-object p1, p0, Lcn/hutool/cache/impl/StampedCache;->lock:Ljava/util/concurrent/locks/StampedLock;

    invoke-virtual {p1, v0, v1}, Ljava/util/concurrent/locks/StampedLock;->unlockWrite(J)V

    return-void

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lcn/hutool/cache/impl/StampedCache;->lock:Ljava/util/concurrent/locks/StampedLock;

    invoke-virtual {p2, v0, v1}, Ljava/util/concurrent/locks/StampedLock;->unlockWrite(J)V

    .line 31
    throw p1
.end method

.method public remove(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 110
    invoke-direct {p0, p1, v0}, Lcn/hutool/cache/impl/StampedCache;->remove(Ljava/lang/Object;Z)V

    return-void
.end method
