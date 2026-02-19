.class public Lcn/hutool/core/map/WeakConcurrentMap;
.super Lcn/hutool/core/map/ReferenceConcurrentMap;
.source "WeakConcurrentMap.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcn/hutool/core/map/ReferenceConcurrentMap<",
        "TK;TV;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 23
    new-instance v0, Lcn/hutool/core/map/SafeConcurrentHashMap;

    invoke-direct {v0}, Lcn/hutool/core/map/SafeConcurrentHashMap;-><init>()V

    invoke-direct {p0, v0}, Lcn/hutool/core/map/WeakConcurrentMap;-><init>(Ljava/util/concurrent/ConcurrentMap;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/ConcurrentMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/ref/Reference<",
            "TK;>;TV;>;)V"
        }
    .end annotation

    .line 32
    sget-object v0, Lcn/hutool/core/util/ReferenceUtil$ReferenceType;->WEAK:Lcn/hutool/core/util/ReferenceUtil$ReferenceType;

    invoke-direct {p0, p1, v0}, Lcn/hutool/core/map/ReferenceConcurrentMap;-><init>(Ljava/util/concurrent/ConcurrentMap;Lcn/hutool/core/util/ReferenceUtil$ReferenceType;)V

    return-void
.end method
