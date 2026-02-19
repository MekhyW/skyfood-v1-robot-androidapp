.class public Lcn/hutool/core/thread/lock/NoReadWriteLock;
.super Ljava/lang/Object;
.source "NoReadWriteLock.java"

# interfaces
.implements Ljava/util/concurrent/locks/ReadWriteLock;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public readLock()Ljava/util/concurrent/locks/Lock;
    .locals 1

    .line 15
    sget-object v0, Lcn/hutool/core/thread/lock/NoLock;->INSTANCE:Lcn/hutool/core/thread/lock/NoLock;

    return-object v0
.end method

.method public writeLock()Ljava/util/concurrent/locks/Lock;
    .locals 1

    .line 20
    sget-object v0, Lcn/hutool/core/thread/lock/NoLock;->INSTANCE:Lcn/hutool/core/thread/lock/NoLock;

    return-object v0
.end method
