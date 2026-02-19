.class public Lcn/hutool/core/lang/Range;
.super Ljava/lang/Object;
.source "Range.java"

# interfaces
.implements Ljava/lang/Iterable;
.implements Ljava/util/Iterator;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/hutool/core/lang/Range$Stepper;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "TT;>;",
        "Ljava/util/Iterator<",
        "TT;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final end:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final includeEnd:Z

.field private final includeStart:Z

.field private index:I

.field private lock:Ljava/util/concurrent/locks/Lock;

.field private next:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final start:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final stepper:Lcn/hutool/core/lang/Range$Stepper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcn/hutool/core/lang/Range$Stepper<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lcn/hutool/core/lang/Range$Stepper;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcn/hutool/core/lang/Range$Stepper<",
            "TT;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 66
    invoke-direct {p0, p1, v0, p2}, Lcn/hutool/core/lang/Range;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lcn/hutool/core/lang/Range$Stepper;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Lcn/hutool/core/lang/Range$Stepper;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;",
            "Lcn/hutool/core/lang/Range$Stepper<",
            "TT;>;)V"
        }
    .end annotation

    const/4 v4, 0x1

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 77
    invoke-direct/range {v0 .. v5}, Lcn/hutool/core/lang/Range;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lcn/hutool/core/lang/Range$Stepper;ZZ)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Lcn/hutool/core/lang/Range$Stepper;ZZ)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;",
            "Lcn/hutool/core/lang/Range$Stepper<",
            "TT;>;ZZ)V"
        }
    .end annotation

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcn/hutool/core/lang/Range;->lock:Ljava/util/concurrent/locks/Lock;

    const/4 v0, 0x0

    .line 49
    iput v0, p0, Lcn/hutool/core/lang/Range;->index:I

    const-string v1, "First element must be not null!"

    new-array v0, v0, [Ljava/lang/Object;

    .line 90
    invoke-static {p1, v1, v0}, Lcn/hutool/core/lang/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    iput-object p1, p0, Lcn/hutool/core/lang/Range;->start:Ljava/lang/Object;

    .line 92
    iput-object p2, p0, Lcn/hutool/core/lang/Range;->end:Ljava/lang/Object;

    .line 93
    iput-object p3, p0, Lcn/hutool/core/lang/Range;->stepper:Lcn/hutool/core/lang/Range$Stepper;

    .line 94
    invoke-direct {p0, p1}, Lcn/hutool/core/lang/Range;->safeStep(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcn/hutool/core/lang/Range;->next:Ljava/lang/Object;

    .line 95
    iput-boolean p4, p0, Lcn/hutool/core/lang/Range;->includeStart:Z

    .line 96
    iput-boolean p5, p0, Lcn/hutool/core/lang/Range;->includeEnd:Z

    return-void
.end method

.method private nextUncheck()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 146
    iget v0, p0, Lcn/hutool/core/lang/Range;->index:I

    if-nez v0, :cond_0

    .line 147
    iget-object v1, p0, Lcn/hutool/core/lang/Range;->start:Ljava/lang/Object;

    .line 148
    iget-boolean v2, p0, Lcn/hutool/core/lang/Range;->includeStart:Z

    if-nez v2, :cond_1

    add-int/lit8 v0, v0, 0x1

    .line 150
    iput v0, p0, Lcn/hutool/core/lang/Range;->index:I

    .line 151
    invoke-direct {p0}, Lcn/hutool/core/lang/Range;->nextUncheck()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 154
    :cond_0
    iget-object v1, p0, Lcn/hutool/core/lang/Range;->next:Ljava/lang/Object;

    .line 155
    invoke-direct {p0, v1}, Lcn/hutool/core/lang/Range;->safeStep(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcn/hutool/core/lang/Range;->next:Ljava/lang/Object;

    .line 158
    :cond_1
    iget v0, p0, Lcn/hutool/core/lang/Range;->index:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcn/hutool/core/lang/Range;->index:I

    return-object v1
.end method

.method private safeStep(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TT;"
        }
    .end annotation

    .line 169
    iget v0, p0, Lcn/hutool/core/lang/Range;->index:I

    .line 172
    :try_start_0
    iget-object v1, p0, Lcn/hutool/core/lang/Range;->stepper:Lcn/hutool/core/lang/Range$Stepper;

    iget-object v2, p0, Lcn/hutool/core/lang/Range;->end:Ljava/lang/Object;

    invoke-interface {v1, p1, v2, v0}, Lcn/hutool/core/lang/Range$Stepper;->step(Ljava/lang/Object;Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method


# virtual methods
.method public disableLock()Lcn/hutool/core/lang/Range;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcn/hutool/core/lang/Range<",
            "TT;>;"
        }
    .end annotation

    .line 106
    new-instance v0, Lcn/hutool/core/thread/lock/NoLock;

    invoke-direct {v0}, Lcn/hutool/core/thread/lock/NoLock;-><init>()V

    iput-object v0, p0, Lcn/hutool/core/lang/Range;->lock:Ljava/util/concurrent/locks/Lock;

    return-object p0
.end method

.method public hasNext()Z
    .locals 4

    .line 112
    iget-object v0, p0, Lcn/hutool/core/lang/Range;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 114
    :try_start_0
    iget v0, p0, Lcn/hutool/core/lang/Range;->index:I

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcn/hutool/core/lang/Range;->includeStart:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Lcn/hutool/core/lang/Range;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return v1

    .line 117
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcn/hutool/core/lang/Range;->next:Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 123
    :goto_0
    iget-object v0, p0, Lcn/hutool/core/lang/Range;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return v2

    .line 119
    :cond_1
    :try_start_2
    iget-boolean v3, p0, Lcn/hutool/core/lang/Range;->includeEnd:Z

    if-nez v3, :cond_2

    iget-object v3, p0, Lcn/hutool/core/lang/Range;->end:Ljava/lang/Object;

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v0, :cond_2

    goto :goto_0

    .line 123
    :cond_2
    iget-object v0, p0, Lcn/hutool/core/lang/Range;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return v1

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcn/hutool/core/lang/Range;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 124
    throw v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TT;>;"
        }
    .end annotation

    return-object p0
.end method

.method public next()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 130
    iget-object v0, p0, Lcn/hutool/core/lang/Range;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 132
    :try_start_0
    invoke-virtual {p0}, Lcn/hutool/core/lang/Range;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 135
    invoke-direct {p0}, Lcn/hutool/core/lang/Range;->nextUncheck()Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 137
    iget-object v1, p0, Lcn/hutool/core/lang/Range;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object v0

    .line 133
    :cond_0
    :try_start_1
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "Has no next range!"

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    .line 137
    iget-object v1, p0, Lcn/hutool/core/lang/Range;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 138
    throw v0
.end method

.method public remove()V
    .locals 2

    .line 182
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Can not remove ranged element!"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public reset()Lcn/hutool/core/lang/Range;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcn/hutool/core/lang/Range<",
            "TT;>;"
        }
    .end annotation

    .line 196
    iget-object v0, p0, Lcn/hutool/core/lang/Range;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    const/4 v0, 0x0

    .line 198
    :try_start_0
    iput v0, p0, Lcn/hutool/core/lang/Range;->index:I

    .line 199
    iget-object v0, p0, Lcn/hutool/core/lang/Range;->start:Ljava/lang/Object;

    invoke-direct {p0, v0}, Lcn/hutool/core/lang/Range;->safeStep(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcn/hutool/core/lang/Range;->next:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 201
    iget-object v0, p0, Lcn/hutool/core/lang/Range;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object p0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcn/hutool/core/lang/Range;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 202
    throw v0
.end method
