.class public Lcn/hutool/core/map/multi/CollectionValueMap;
.super Lcn/hutool/core/map/multi/AbsCollValueMap;
.source "CollectionValueMap.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcn/hutool/core/map/multi/AbsCollValueMap<",
        "TK;TV;",
        "Ljava/util/Collection<",
        "TV;>;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x7d149244b3424bc7L


# instance fields
.field private final collectionCreateFunc:Lcn/hutool/core/lang/func/Func0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcn/hutool/core/lang/func/Func0<",
            "Ljava/util/Collection<",
            "TV;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$0kqpn3_hWro_HKst0MkaLRSrdwU()Ljava/util/ArrayList;
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public constructor <init>()V
    .locals 1

    const/16 v0, 0x10

    .line 30
    invoke-direct {p0, v0}, Lcn/hutool/core/map/multi/CollectionValueMap;-><init>(I)V

    return-void
.end method

.method public constructor <init>(FLjava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F",
            "Ljava/util/Map<",
            "+TK;+",
            "Ljava/util/Collection<",
            "TV;>;>;)V"
        }
    .end annotation

    .line 58
    new-instance v0, Lcn/hutool/core/map/multi/CollectionValueMap$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcn/hutool/core/map/multi/CollectionValueMap$$ExternalSyntheticLambda0;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Lcn/hutool/core/map/multi/CollectionValueMap;-><init>(FLjava/util/Map;Lcn/hutool/core/lang/func/Func0;)V

    return-void
.end method

.method public constructor <init>(FLjava/util/Map;Lcn/hutool/core/lang/func/Func0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F",
            "Ljava/util/Map<",
            "+TK;+",
            "Ljava/util/Collection<",
            "TV;>;>;",
            "Lcn/hutool/core/lang/func/Func0<",
            "Ljava/util/Collection<",
            "TV;>;>;)V"
        }
    .end annotation

    .line 80
    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v0

    invoke-direct {p0, v0, p1, p3}, Lcn/hutool/core/map/multi/CollectionValueMap;-><init>(IFLcn/hutool/core/lang/func/Func0;)V

    .line 81
    invoke-virtual {p0, p2}, Lcn/hutool/core/map/multi/CollectionValueMap;->putAll(Ljava/util/Map;)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    const/high16 v0, 0x3f400000    # 0.75f

    .line 39
    invoke-direct {p0, p1, v0}, Lcn/hutool/core/map/multi/CollectionValueMap;-><init>(IF)V

    return-void
.end method

.method public constructor <init>(IF)V
    .locals 1

    .line 68
    new-instance v0, Lcn/hutool/core/map/multi/CollectionValueMap$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcn/hutool/core/map/multi/CollectionValueMap$$ExternalSyntheticLambda0;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Lcn/hutool/core/map/multi/CollectionValueMap;-><init>(IFLcn/hutool/core/lang/func/Func0;)V

    return-void
.end method

.method public constructor <init>(IFLcn/hutool/core/lang/func/Func0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IF",
            "Lcn/hutool/core/lang/func/Func0<",
            "Ljava/util/Collection<",
            "TV;>;>;)V"
        }
    .end annotation

    .line 93
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p1, p2}, Ljava/util/HashMap;-><init>(IF)V

    invoke-direct {p0, v0}, Lcn/hutool/core/map/multi/AbsCollValueMap;-><init>(Ljava/util/Map;)V

    .line 94
    iput-object p3, p0, Lcn/hutool/core/map/multi/CollectionValueMap;->collectionCreateFunc:Lcn/hutool/core/lang/func/Func0;

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+TK;+",
            "Ljava/util/Collection<",
            "TV;>;>;)V"
        }
    .end annotation

    const/high16 v0, 0x3f400000    # 0.75f

    .line 48
    invoke-direct {p0, v0, p1}, Lcn/hutool/core/map/multi/CollectionValueMap;-><init>(FLjava/util/Map;)V

    return-void
.end method


# virtual methods
.method protected createCollection()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    .line 100
    iget-object v0, p0, Lcn/hutool/core/map/multi/CollectionValueMap;->collectionCreateFunc:Lcn/hutool/core/lang/func/Func0;

    invoke-interface {v0}, Lcn/hutool/core/lang/func/Func0;->callWithRuntimeException()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    return-object v0
.end method
