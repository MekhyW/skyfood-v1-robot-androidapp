.class public Lcn/hutool/core/collection/ConcurrentHashSet;
.super Ljava/util/AbstractSet;
.source "ConcurrentHashSet.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractSet<",
        "TE;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final PRESENT:Ljava/lang/Boolean;

.field private static final serialVersionUID:J = 0x6efe33a3732d332eL


# instance fields
.field private final map:Lcn/hutool/core/map/SafeConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcn/hutool/core/map/SafeConcurrentHashMap<",
            "TE;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x1

    .line 21
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcn/hutool/core/collection/ConcurrentHashSet;->PRESENT:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 29
    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    .line 30
    new-instance v0, Lcn/hutool/core/map/SafeConcurrentHashMap;

    invoke-direct {v0}, Lcn/hutool/core/map/SafeConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcn/hutool/core/collection/ConcurrentHashSet;->map:Lcn/hutool/core/map/SafeConcurrentHashMap;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 39
    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    .line 40
    new-instance v0, Lcn/hutool/core/map/SafeConcurrentHashMap;

    invoke-direct {v0, p1}, Lcn/hutool/core/map/SafeConcurrentHashMap;-><init>(I)V

    iput-object v0, p0, Lcn/hutool/core/collection/ConcurrentHashSet;->map:Lcn/hutool/core/map/SafeConcurrentHashMap;

    return-void
.end method

.method public constructor <init>(IF)V
    .locals 1

    .line 49
    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    .line 50
    new-instance v0, Lcn/hutool/core/map/SafeConcurrentHashMap;

    invoke-direct {v0, p1, p2}, Lcn/hutool/core/map/SafeConcurrentHashMap;-><init>(IF)V

    iput-object v0, p0, Lcn/hutool/core/collection/ConcurrentHashSet;->map:Lcn/hutool/core/map/SafeConcurrentHashMap;

    return-void
.end method

.method public constructor <init>(IFI)V
    .locals 1

    .line 60
    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    .line 61
    new-instance v0, Lcn/hutool/core/map/SafeConcurrentHashMap;

    invoke-direct {v0, p1, p2, p3}, Lcn/hutool/core/map/SafeConcurrentHashMap;-><init>(IFI)V

    iput-object v0, p0, Lcn/hutool/core/collection/ConcurrentHashSet;->map:Lcn/hutool/core/map/SafeConcurrentHashMap;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Iterable;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "TE;>;)V"
        }
    .end annotation

    .line 68
    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    .line 69
    instance-of v0, p1, Ljava/util/Collection;

    if-eqz v0, :cond_0

    .line 70
    check-cast p1, Ljava/util/Collection;

    .line 71
    new-instance v0, Lcn/hutool/core/map/SafeConcurrentHashMap;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x3f400000    # 0.75f

    div-float/2addr v1, v2

    float-to-int v1, v1

    invoke-direct {v0, v1}, Lcn/hutool/core/map/SafeConcurrentHashMap;-><init>(I)V

    iput-object v0, p0, Lcn/hutool/core/collection/ConcurrentHashSet;->map:Lcn/hutool/core/map/SafeConcurrentHashMap;

    .line 72
    invoke-virtual {p0, p1}, Lcn/hutool/core/collection/ConcurrentHashSet;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 74
    :cond_0
    new-instance v0, Lcn/hutool/core/map/SafeConcurrentHashMap;

    invoke-direct {v0}, Lcn/hutool/core/map/SafeConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcn/hutool/core/collection/ConcurrentHashSet;->map:Lcn/hutool/core/map/SafeConcurrentHashMap;

    .line 75
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 76
    invoke-virtual {p0, v0}, Lcn/hutool/core/collection/ConcurrentHashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .line 105
    iget-object v0, p0, Lcn/hutool/core/collection/ConcurrentHashSet;->map:Lcn/hutool/core/map/SafeConcurrentHashMap;

    sget-object v1, Lcn/hutool/core/collection/ConcurrentHashSet;->PRESENT:Ljava/lang/Boolean;

    invoke-virtual {v0, p1, v1}, Lcn/hutool/core/map/SafeConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public clear()V
    .locals 1

    .line 115
    iget-object v0, p0, Lcn/hutool/core/collection/ConcurrentHashSet;->map:Lcn/hutool/core/map/SafeConcurrentHashMap;

    invoke-virtual {v0}, Lcn/hutool/core/map/SafeConcurrentHashMap;->clear()V

    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1

    .line 100
    iget-object v0, p0, Lcn/hutool/core/collection/ConcurrentHashSet;->map:Lcn/hutool/core/map/SafeConcurrentHashMap;

    invoke-virtual {v0, p1}, Lcn/hutool/core/map/SafeConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public isEmpty()Z
    .locals 1

    .line 94
    iget-object v0, p0, Lcn/hutool/core/collection/ConcurrentHashSet;->map:Lcn/hutool/core/map/SafeConcurrentHashMap;

    invoke-virtual {v0}, Lcn/hutool/core/map/SafeConcurrentHashMap;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation

    .line 84
    iget-object v0, p0, Lcn/hutool/core/collection/ConcurrentHashSet;->map:Lcn/hutool/core/map/SafeConcurrentHashMap;

    invoke-virtual {v0}, Lcn/hutool/core/map/SafeConcurrentHashMap;->keySet()Ljava/util/concurrent/ConcurrentHashMap$KeySetView;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap$KeySetView;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 2

    .line 110
    sget-object v0, Lcn/hutool/core/collection/ConcurrentHashSet;->PRESENT:Ljava/lang/Boolean;

    iget-object v1, p0, Lcn/hutool/core/collection/ConcurrentHashSet;->map:Lcn/hutool/core/map/SafeConcurrentHashMap;

    invoke-virtual {v1, p1}, Lcn/hutool/core/map/SafeConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public size()I
    .locals 1

    .line 89
    iget-object v0, p0, Lcn/hutool/core/collection/ConcurrentHashSet;->map:Lcn/hutool/core/map/SafeConcurrentHashMap;

    invoke-virtual {v0}, Lcn/hutool/core/map/SafeConcurrentHashMap;->size()I

    move-result v0

    return v0
.end method
