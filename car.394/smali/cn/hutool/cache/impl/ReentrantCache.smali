.class public abstract Lcn/hutool/cache/impl/ReentrantCache;
.super Lcn/hutool/cache/impl/AbstractCache;
.source "ReentrantCache.java"


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
.field protected final lock:Ljava/util/concurrent/locks/ReentrantLock;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 17
    invoke-direct {p0}, Lcn/hutool/cache/impl/AbstractCache;-><init>()V

    .line 22
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcn/hutool/cache/impl/ReentrantCache;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    return-void
.end method

.method private remove(Ljava/lang/Object;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;Z)V"
        }
    .end annotation

    .line 135
    iget-object v0, p0, Lcn/hutool/cache/impl/ReentrantCache;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 138
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcn/hutool/cache/impl/ReentrantCache;->removeWithoutLock(Ljava/lang/Object;Z)Lcn/hutool/cache/impl/CacheObj;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 140
    iget-object p2, p0, Lcn/hutool/cache/impl/ReentrantCache;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    if-eqz p1, :cond_0

    .line 143
    iget-object p2, p1, Lcn/hutool/cache/impl/CacheObj;->key:Ljava/lang/Object;

    iget-object p1, p1, Lcn/hutool/cache/impl/CacheObj;->obj:Ljava/lang/Object;

    invoke-virtual {p0, p2, p1}, Lcn/hutool/cache/impl/ReentrantCache;->onRemove(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    .line 140
    iget-object p2, p0, Lcn/hutool/cache/impl/ReentrantCache;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 141
    throw p1
.end method


# virtual methods
.method public cacheObjIterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lcn/hutool/cache/impl/CacheObj<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 84
    iget-object v0, p0, Lcn/hutool/cache/impl/ReentrantCache;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 86
    :try_start_0
    invoke-virtual {p0}, Lcn/hutool/cache/impl/ReentrantCache;->cacheObjIter()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Lcn/hutool/core/collection/CopiedIter;->copyOf(Ljava/util/Iterator;)Lcn/hutool/core/collection/CopiedIter;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 88
    iget-object v1, p0, Lcn/hutool/cache/impl/ReentrantCache;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 90
    new-instance v1, Lcn/hutool/cache/impl/CacheObjIterator;

    invoke-direct {v1, v0}, Lcn/hutool/cache/impl/CacheObjIterator;-><init>(Ljava/util/Iterator;)V

    return-object v1

    :catchall_0
    move-exception v0

    .line 88
    iget-object v1, p0, Lcn/hutool/cache/impl/ReentrantCache;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 89
    throw v0
.end method

.method public clear()V
    .locals 2

    .line 110
    iget-object v0, p0, Lcn/hutool/cache/impl/ReentrantCache;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 112
    :try_start_0
    iget-object v0, p0, Lcn/hutool/cache/impl/ReentrantCache;->cacheMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 114
    iget-object v0, p0, Lcn/hutool/cache/impl/ReentrantCache;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcn/hutool/cache/impl/ReentrantCache;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 115
    throw v0
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)Z"
        }
    .end annotation

    .line 36
    iget-object v0, p0, Lcn/hutool/cache/impl/ReentrantCache;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 39
    :try_start_0
    invoke-virtual {p0, p1}, Lcn/hutool/cache/impl/ReentrantCache;->getWithoutLock(Ljava/lang/Object;)Lcn/hutool/cache/impl/CacheObj;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 49
    iget-object p1, p0, Lcn/hutool/cache/impl/ReentrantCache;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v1

    .line 44
    :cond_0
    :try_start_1
    invoke-virtual {v0}, Lcn/hutool/cache/impl/CacheObj;->isExpired()Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    .line 49
    iget-object p1, p0, Lcn/hutool/cache/impl/ReentrantCache;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v2

    :cond_1
    iget-object v0, p0, Lcn/hutool/cache/impl/ReentrantCache;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 53
    invoke-direct {p0, p1, v2}, Lcn/hutool/cache/impl/ReentrantCache;->remove(Ljava/lang/Object;Z)V

    return v1

    :catchall_0
    move-exception p1

    .line 49
    iget-object v0, p0, Lcn/hutool/cache/impl/ReentrantCache;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 50
    throw p1
.end method

.method public get(Ljava/lang/Object;Z)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;Z)TV;"
        }
    .end annotation

    .line 60
    iget-object v0, p0, Lcn/hutool/cache/impl/ReentrantCache;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 62
    :try_start_0
    invoke-virtual {p0, p1}, Lcn/hutool/cache/impl/ReentrantCache;->getWithoutLock(Ljava/lang/Object;)Lcn/hutool/cache/impl/CacheObj;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    iget-object v1, p0, Lcn/hutool/cache/impl/ReentrantCache;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 69
    iget-object p1, p0, Lcn/hutool/cache/impl/ReentrantCache;->missCount:Ljava/util/concurrent/atomic/LongAdder;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/LongAdder;->increment()V

    return-object v1

    .line 71
    :cond_0
    invoke-virtual {v0}, Lcn/hutool/cache/impl/CacheObj;->isExpired()Z

    move-result v2

    if-nez v2, :cond_1

    .line 72
    iget-object p1, p0, Lcn/hutool/cache/impl/ReentrantCache;->hitCount:Ljava/util/concurrent/atomic/LongAdder;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/LongAdder;->increment()V

    .line 73
    invoke-virtual {v0, p2}, Lcn/hutool/cache/impl/CacheObj;->get(Z)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p2, 0x1

    .line 77
    invoke-direct {p0, p1, p2}, Lcn/hutool/cache/impl/ReentrantCache;->remove(Ljava/lang/Object;Z)V

    return-object v1

    :catchall_0
    move-exception p1

    .line 64
    iget-object p2, p0, Lcn/hutool/cache/impl/ReentrantCache;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 65
    throw p1
.end method

.method public final prune()I
    .locals 2

    .line 95
    iget-object v0, p0, Lcn/hutool/cache/impl/ReentrantCache;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 97
    :try_start_0
    invoke-virtual {p0}, Lcn/hutool/cache/impl/ReentrantCache;->pruneCache()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 99
    iget-object v1, p0, Lcn/hutool/cache/impl/ReentrantCache;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcn/hutool/cache/impl/ReentrantCache;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 100
    throw v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;J)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;J)V"
        }
    .end annotation

    .line 26
    iget-object v0, p0, Lcn/hutool/cache/impl/ReentrantCache;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 28
    :try_start_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcn/hutool/cache/impl/ReentrantCache;->putWithoutLock(Ljava/lang/Object;Ljava/lang/Object;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    iget-object p1, p0, Lcn/hutool/cache/impl/ReentrantCache;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lcn/hutool/cache/impl/ReentrantCache;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

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

    .line 105
    invoke-direct {p0, p1, v0}, Lcn/hutool/cache/impl/ReentrantCache;->remove(Ljava/lang/Object;Z)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 120
    iget-object v0, p0, Lcn/hutool/cache/impl/ReentrantCache;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 122
    :try_start_0
    invoke-super {p0}, Lcn/hutool/cache/impl/AbstractCache;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 124
    iget-object v1, p0, Lcn/hutool/cache/impl/ReentrantCache;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcn/hutool/cache/impl/ReentrantCache;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 125
    throw v0
.end method
