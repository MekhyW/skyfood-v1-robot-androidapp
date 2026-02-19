.class public Lcn/hutool/core/lang/intern/WeakInterner;
.super Ljava/lang/Object;
.source "WeakInterner.java"

# interfaces
.implements Lcn/hutool/core/lang/intern/Interner;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcn/hutool/core/lang/intern/Interner<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final cache:Lcn/hutool/core/map/WeakConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcn/hutool/core/map/WeakConcurrentMap<",
            "TT;",
            "Ljava/lang/ref/WeakReference<",
            "TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$hKNqwV331SKEEhgAXisno-9Dk3g(Ljava/lang/Object;)Ljava/lang/ref/WeakReference;
    .locals 1

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public constructor <init>()V
    .locals 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Lcn/hutool/core/map/WeakConcurrentMap;

    invoke-direct {v0}, Lcn/hutool/core/map/WeakConcurrentMap;-><init>()V

    iput-object v0, p0, Lcn/hutool/core/lang/intern/WeakInterner;->cache:Lcn/hutool/core/map/WeakConcurrentMap;

    return-void
.end method


# virtual methods
.method public intern(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TT;"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 23
    :cond_0
    iget-object v0, p0, Lcn/hutool/core/lang/intern/WeakInterner;->cache:Lcn/hutool/core/map/WeakConcurrentMap;

    new-instance v1, Lcn/hutool/core/lang/intern/WeakInterner$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcn/hutool/core/lang/intern/WeakInterner$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {v0, p1, v1}, Lcn/hutool/core/map/WeakConcurrentMap;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0
.end method
