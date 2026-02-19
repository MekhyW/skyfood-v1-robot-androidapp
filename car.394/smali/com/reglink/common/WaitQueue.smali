.class public Lcom/reglink/common/WaitQueue;
.super Ljava/lang/Object;
.source "WaitQueue.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/reglink/common/WaitQueue$WaitObject;,
        Lcom/reglink/common/WaitQueue$CompletionCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Key:",
        "Ljava/lang/Object;",
        "Result:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Synchronization"


# instance fields
.field private final activatedWaitObjects:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/reglink/common/WaitQueue<",
            "TKey;TResult;>.WaitObject;>;"
        }
    .end annotation
.end field

.field private defaultTimeout:I

.field private final freeWaitObjects:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/reglink/common/WaitQueue<",
            "TKey;TResult;>.WaitObject;>;"
        }
    .end annotation
.end field

.field private log:Z

.field private final waitQueue:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/reglink/common/WaitQueue<",
            "TKey;TResult;>.WaitObject;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 19
    iput-boolean v0, p0, Lcom/reglink/common/WaitQueue;->log:Z

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/reglink/common/WaitQueue;->freeWaitObjects:Ljava/util/ArrayList;

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/reglink/common/WaitQueue;->activatedWaitObjects:Ljava/util/ArrayList;

    .line 22
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/reglink/common/WaitQueue;->waitQueue:Ljava/util/concurrent/CopyOnWriteArrayList;

    const/4 v0, -0x1

    .line 24
    iput v0, p0, Lcom/reglink/common/WaitQueue;->defaultTimeout:I

    return-void
.end method

.method private cleanWaitQueue()V
    .locals 11

    .line 217
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 220
    iget-object v2, p0, Lcom/reglink/common/WaitQueue;->waitQueue:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/reglink/common/WaitQueue$WaitObject;

    .line 221
    invoke-virtual {v4}, Lcom/reglink/common/WaitQueue$WaitObject;->isInvalidated()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 222
    iget-object v5, v4, Lcom/reglink/common/WaitQueue$WaitObject;->event:Lcom/reglink/common/AutoResetEvent;

    invoke-virtual {v5}, Lcom/reglink/common/AutoResetEvent;->signalAll()V

    .line 223
    invoke-direct {p0, v4}, Lcom/reglink/common/WaitQueue;->recycleWaitObj(Lcom/reglink/common/WaitQueue$WaitObject;)V

    if-nez v3, :cond_1

    .line 225
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 227
    :cond_1
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 228
    :cond_2
    iget-wide v5, v4, Lcom/reglink/common/WaitQueue$WaitObject;->timeout:J

    const-wide/16 v7, -0x1

    cmp-long v5, v5, v7

    if-eqz v5, :cond_0

    iget-wide v5, v4, Lcom/reglink/common/WaitQueue$WaitObject;->submitTime:J

    sub-long v5, v0, v5

    iget-wide v7, v4, Lcom/reglink/common/WaitQueue$WaitObject;->timeout:J

    const-wide/16 v9, 0x2

    mul-long/2addr v7, v9

    cmp-long v5, v5, v7

    if-ltz v5, :cond_0

    .line 229
    iget-object v5, v4, Lcom/reglink/common/WaitQueue$WaitObject;->event:Lcom/reglink/common/AutoResetEvent;

    invoke-virtual {v5}, Lcom/reglink/common/AutoResetEvent;->signalAll()V

    .line 230
    invoke-direct {p0, v4}, Lcom/reglink/common/WaitQueue;->recycleWaitObj(Lcom/reglink/common/WaitQueue$WaitObject;)V

    if-nez v3, :cond_3

    .line 232
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 234
    :cond_3
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    if-eqz v3, :cond_6

    .line 238
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/reglink/common/WaitQueue$WaitObject;

    .line 239
    iget-object v2, p0, Lcom/reglink/common/WaitQueue;->waitQueue:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 241
    :cond_5
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    :cond_6
    return-void
.end method

.method private obtainWaitObj()Lcom/reglink/common/WaitQueue$WaitObject;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/reglink/common/WaitQueue<",
            "TKey;TResult;>.WaitObject;"
        }
    .end annotation

    .line 59
    iget-object v0, p0, Lcom/reglink/common/WaitQueue;->freeWaitObjects:Ljava/util/ArrayList;

    monitor-enter v0

    .line 60
    :try_start_0
    iget-object v1, p0, Lcom/reglink/common/WaitQueue;->freeWaitObjects:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 61
    new-instance v1, Lcom/reglink/common/WaitQueue$WaitObject;

    invoke-direct {v1, p0, v2}, Lcom/reglink/common/WaitQueue$WaitObject;-><init>(Lcom/reglink/common/WaitQueue;Lcom/reglink/common/WaitQueue$1;)V

    .line 62
    new-instance v3, Lcom/reglink/common/AutoResetEvent;

    invoke-direct {v3}, Lcom/reglink/common/AutoResetEvent;-><init>()V

    iput-object v3, v1, Lcom/reglink/common/WaitQueue$WaitObject;->event:Lcom/reglink/common/AutoResetEvent;

    goto :goto_0

    .line 64
    :cond_0
    iget-object v1, p0, Lcom/reglink/common/WaitQueue;->freeWaitObjects:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/reglink/common/WaitQueue$WaitObject;

    .line 65
    iget-object v3, p0, Lcom/reglink/common/WaitQueue;->freeWaitObjects:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 66
    iget-object v3, p0, Lcom/reglink/common/WaitQueue;->activatedWaitObjects:Ljava/util/ArrayList;

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 67
    :try_start_1
    iget-object v4, p0, Lcom/reglink/common/WaitQueue;->activatedWaitObjects:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 68
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 70
    :goto_0
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 71
    iput-object v2, v1, Lcom/reglink/common/WaitQueue$WaitObject;->callback:Lcom/reglink/common/WaitQueue$CompletionCallback;

    const-wide/16 v3, 0x0

    .line 72
    iput-wide v3, v1, Lcom/reglink/common/WaitQueue$WaitObject;->submitTime:J

    .line 73
    iget v0, p0, Lcom/reglink/common/WaitQueue;->defaultTimeout:I

    int-to-long v3, v0

    iput-wide v3, v1, Lcom/reglink/common/WaitQueue$WaitObject;->timeout:J

    .line 74
    iput-object v2, v1, Lcom/reglink/common/WaitQueue$WaitObject;->reply:Ljava/lang/Object;

    .line 75
    iput-object v2, v1, Lcom/reglink/common/WaitQueue$WaitObject;->key:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 76
    iput v0, v1, Lcom/reglink/common/WaitQueue$WaitObject;->flag:I

    return-object v1

    :catchall_0
    move-exception v1

    .line 68
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v1

    :catchall_1
    move-exception v1

    .line 70
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v1
.end method

.method private recycleWaitObj(Lcom/reglink/common/WaitQueue$WaitObject;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/reglink/common/WaitQueue<",
            "TKey;TResult;>.WaitObject;)V"
        }
    .end annotation

    .line 80
    iget-object v0, p0, Lcom/reglink/common/WaitQueue;->freeWaitObjects:Ljava/util/ArrayList;

    monitor-enter v0

    .line 81
    :try_start_0
    iget-object v1, p0, Lcom/reglink/common/WaitQueue;->activatedWaitObjects:Ljava/util/ArrayList;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 82
    :try_start_1
    iget-object v2, p0, Lcom/reglink/common/WaitQueue;->activatedWaitObjects:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 83
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 84
    :try_start_2
    iget-object v1, p0, Lcom/reglink/common/WaitQueue;->freeWaitObjects:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/16 v2, 0x14

    if-ge v1, v2, :cond_0

    .line 85
    iget-object v1, p0, Lcom/reglink/common/WaitQueue;->freeWaitObjects:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 87
    :cond_0
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-void

    :catchall_0
    move-exception p1

    .line 83
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p1

    :catchall_1
    move-exception p1

    .line 87
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p1
.end method

.method private removeIfInvalidate(Lcom/reglink/common/WaitQueue$WaitObject;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/reglink/common/WaitQueue<",
            "TKey;TResult;>.WaitObject;)V"
        }
    .end annotation

    .line 210
    invoke-virtual {p1}, Lcom/reglink/common/WaitQueue$WaitObject;->isInvalidated()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 212
    iget-object v0, p0, Lcom/reglink/common/WaitQueue;->waitQueue:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public asyncCallback(Ljava/lang/Object;Lcom/reglink/common/WaitQueue$CompletionCallback;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TKey;",
            "Lcom/reglink/common/WaitQueue$CompletionCallback;",
            ")V"
        }
    .end annotation

    .line 123
    invoke-direct {p0}, Lcom/reglink/common/WaitQueue;->obtainWaitObj()Lcom/reglink/common/WaitQueue$WaitObject;

    move-result-object v0

    .line 124
    iput-object p1, v0, Lcom/reglink/common/WaitQueue$WaitObject;->key:Ljava/lang/Object;

    .line 125
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/reglink/common/WaitQueue$WaitObject;->submitTime:J

    const/4 p1, 0x0

    .line 126
    invoke-virtual {v0, p1}, Lcom/reglink/common/WaitQueue$WaitObject;->setComplete(Z)V

    .line 127
    iput-object p2, v0, Lcom/reglink/common/WaitQueue$WaitObject;->callback:Lcom/reglink/common/WaitQueue$CompletionCallback;

    .line 129
    iget-object p1, p0, Lcom/reglink/common/WaitQueue;->waitQueue:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public isWaiting(Ljava/lang/Object;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TKey;)Z"
        }
    .end annotation

    .line 98
    iget-object v0, p0, Lcom/reglink/common/WaitQueue;->waitQueue:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/reglink/common/WaitQueue$WaitObject;

    .line 99
    iget-object v2, v1, Lcom/reglink/common/WaitQueue$WaitObject;->key:Ljava/lang/Object;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/reglink/common/WaitQueue$WaitObject;->isComplete()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public notifyAll(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    .line 247
    iget-object v0, p0, Lcom/reglink/common/WaitQueue;->waitQueue:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/reglink/common/WaitQueue$WaitObject;

    const/4 v2, 0x1

    .line 248
    invoke-virtual {v1, v2}, Lcom/reglink/common/WaitQueue$WaitObject;->setComplete(Z)V

    .line 249
    iput-object p1, v1, Lcom/reglink/common/WaitQueue$WaitObject;->reply:Ljava/lang/Object;

    .line 250
    iget-object v1, v1, Lcom/reglink/common/WaitQueue$WaitObject;->event:Lcom/reglink/common/AutoResetEvent;

    invoke-virtual {v1}, Lcom/reglink/common/AutoResetEvent;->signalAll()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public notifyComplete(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TKey;TResult;)Z"
        }
    .end annotation

    .line 184
    iget-object v0, p0, Lcom/reglink/common/WaitQueue;->waitQueue:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/reglink/common/WaitQueue$WaitObject;

    .line 185
    iget-object v4, v3, Lcom/reglink/common/WaitQueue$WaitObject;->key:Ljava/lang/Object;

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v2, 0x1

    .line 187
    invoke-virtual {v3, v2}, Lcom/reglink/common/WaitQueue$WaitObject;->setComplete(Z)V

    .line 188
    iput-object p2, v3, Lcom/reglink/common/WaitQueue$WaitObject;->reply:Ljava/lang/Object;

    .line 189
    iget-object v4, v3, Lcom/reglink/common/WaitQueue$WaitObject;->callback:Lcom/reglink/common/WaitQueue$CompletionCallback;

    if-eqz v4, :cond_1

    .line 191
    invoke-virtual {v3}, Lcom/reglink/common/WaitQueue$WaitObject;->invalidate()V

    .line 192
    iget-object v1, v3, Lcom/reglink/common/WaitQueue$WaitObject;->callback:Lcom/reglink/common/WaitQueue$CompletionCallback;

    invoke-interface {v1, p1, p2}, Lcom/reglink/common/WaitQueue$CompletionCallback;->completion(Ljava/lang/Object;Ljava/lang/Object;)V

    move v1, v2

    .line 194
    :cond_1
    iget-object v3, v3, Lcom/reglink/common/WaitQueue$WaitObject;->event:Lcom/reglink/common/AutoResetEvent;

    invoke-virtual {v3}, Lcom/reglink/common/AutoResetEvent;->signalAll()V

    goto :goto_0

    :cond_2
    if-eqz v1, :cond_3

    .line 201
    invoke-direct {p0}, Lcom/reglink/common/WaitQueue;->cleanWaitQueue()V

    :cond_3
    if-nez v2, :cond_5

    .line 204
    iget-boolean p1, p0, Lcom/reglink/common/WaitQueue;->log:Z

    if-eqz p1, :cond_4

    const-string p1, "Synchronization"

    const-string p2, "notifyComplete >>> \u6ca1\u6709\u627e\u5230\u76f8\u5e94\u7684\u7b49\u5f85\u7ebf\u7a0b\uff0c\u53ef\u80fd\u5df2\u7ecf\u8d85\u65f6"

    invoke-static {p1, p2}, Lcom/reglink/common/LogUtil;->LOGW(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    :cond_4
    invoke-direct {p0}, Lcom/reglink/common/WaitQueue;->cleanWaitQueue()V

    :cond_5
    return v2
.end method

.method public setDefaultTimeout(I)V
    .locals 0

    .line 257
    iput p1, p0, Lcom/reglink/common/WaitQueue;->defaultTimeout:I

    return-void
.end method

.method public setLogEnabled(Z)V
    .locals 0

    .line 91
    iput-boolean p1, p0, Lcom/reglink/common/WaitQueue;->log:Z

    return-void
.end method

.method public submit(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TKey;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 111
    invoke-direct {p0}, Lcom/reglink/common/WaitQueue;->obtainWaitObj()Lcom/reglink/common/WaitQueue$WaitObject;

    move-result-object v0

    .line 112
    iput-object p1, v0, Lcom/reglink/common/WaitQueue$WaitObject;->key:Ljava/lang/Object;

    .line 113
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/reglink/common/WaitQueue$WaitObject;->submitTime:J

    const/4 p1, 0x0

    .line 114
    invoke-virtual {v0, p1}, Lcom/reglink/common/WaitQueue$WaitObject;->setComplete(Z)V

    .line 116
    iget-object p1, p0, Lcom/reglink/common/WaitQueue;->waitQueue:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public submitAndWait(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TKey;)TResult;"
        }
    .end annotation

    .line 170
    invoke-virtual {p0, p1}, Lcom/reglink/common/WaitQueue;->submit(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 171
    invoke-virtual {p0, p1}, Lcom/reglink/common/WaitQueue;->waitResult(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public submitAndWait(Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TKey;I)TResult;"
        }
    .end annotation

    .line 175
    invoke-virtual {p0, p1}, Lcom/reglink/common/WaitQueue;->submit(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 176
    invoke-virtual {p0, p1, p2}, Lcom/reglink/common/WaitQueue;->waitResult(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public waitResult(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TResult;"
        }
    .end annotation

    const/4 v0, -0x1

    .line 135
    invoke-virtual {p0, p1, v0}, Lcom/reglink/common/WaitQueue;->waitResult(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public waitResult(Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "I)TResult;"
        }
    .end annotation

    .line 139
    check-cast p1, Lcom/reglink/common/WaitQueue$WaitObject;

    .line 140
    invoke-virtual {p1}, Lcom/reglink/common/WaitQueue$WaitObject;->isComplete()Z

    move-result v0

    if-nez v0, :cond_2

    if-gez p2, :cond_1

    .line 142
    iget p2, p0, Lcom/reglink/common/WaitQueue;->defaultTimeout:I

    if-gez p2, :cond_0

    const-wide/16 v0, -0x1

    .line 143
    iput-wide v0, p1, Lcom/reglink/common/WaitQueue$WaitObject;->timeout:J

    .line 144
    iget-object p2, p1, Lcom/reglink/common/WaitQueue$WaitObject;->event:Lcom/reglink/common/AutoResetEvent;

    invoke-virtual {p2}, Lcom/reglink/common/AutoResetEvent;->await()Z

    goto :goto_0

    :cond_0
    int-to-long v0, p2

    .line 146
    iput-wide v0, p1, Lcom/reglink/common/WaitQueue$WaitObject;->timeout:J

    .line 147
    iget-object p2, p1, Lcom/reglink/common/WaitQueue$WaitObject;->event:Lcom/reglink/common/AutoResetEvent;

    iget v0, p0, Lcom/reglink/common/WaitQueue;->defaultTimeout:I

    int-to-long v0, v0

    invoke-virtual {p2, v0, v1}, Lcom/reglink/common/AutoResetEvent;->await(J)Z

    goto :goto_0

    :cond_1
    int-to-long v0, p2

    .line 150
    iput-wide v0, p1, Lcom/reglink/common/WaitQueue$WaitObject;->timeout:J

    .line 151
    iget-object p2, p1, Lcom/reglink/common/WaitQueue$WaitObject;->event:Lcom/reglink/common/AutoResetEvent;

    invoke-virtual {p2, v0, v1}, Lcom/reglink/common/AutoResetEvent;->await(J)Z

    .line 154
    :cond_2
    :goto_0
    invoke-virtual {p1}, Lcom/reglink/common/WaitQueue$WaitObject;->isComplete()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 155
    iget-object p2, p1, Lcom/reglink/common/WaitQueue$WaitObject;->reply:Ljava/lang/Object;

    goto :goto_1

    .line 157
    :cond_3
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 158
    iget-wide v2, p1, Lcom/reglink/common/WaitQueue$WaitObject;->submitTime:J

    sub-long/2addr v0, v2

    .line 159
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v2, "waitResult isComplete == false >>> timeout:"

    invoke-direct {p2, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "Synchronization"

    invoke-static {v0, p2}, Lcom/reglink/common/LogUtil;->LOGE(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p2, 0x0

    .line 162
    :goto_1
    invoke-direct {p0, p1}, Lcom/reglink/common/WaitQueue;->recycleWaitObj(Lcom/reglink/common/WaitQueue$WaitObject;)V

    .line 164
    iget-object v0, p0, Lcom/reglink/common/WaitQueue;->waitQueue:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    return-object p2
.end method
