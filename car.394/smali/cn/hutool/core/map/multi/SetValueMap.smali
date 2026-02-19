.class public Lcn/hutool/core/map/multi/SetValueMap;
.super Lcn/hutool/core/map/multi/AbsCollValueMap;
.source "SetValueMap.java"


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
        "Ljava/util/Set<",
        "TV;>;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x53e0a9e6c1a891bbL


# direct methods
.method public constructor <init>()V
    .locals 1

    const/16 v0, 0x10

    .line 26
    invoke-direct {p0, v0}, Lcn/hutool/core/map/multi/SetValueMap;-><init>(I)V

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

    .line 54
    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v0

    invoke-direct {p0, v0, p1}, Lcn/hutool/core/map/multi/SetValueMap;-><init>(IF)V

    .line 55
    invoke-virtual {p0, p2}, Lcn/hutool/core/map/multi/SetValueMap;->putAllValues(Ljava/util/Map;)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    const/high16 v0, 0x3f400000    # 0.75f

    .line 35
    invoke-direct {p0, p1, v0}, Lcn/hutool/core/map/multi/SetValueMap;-><init>(IF)V

    return-void
.end method

.method public constructor <init>(IF)V
    .locals 1

    .line 65
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p1, p2}, Ljava/util/HashMap;-><init>(IF)V

    invoke-direct {p0, v0}, Lcn/hutool/core/map/multi/AbsCollValueMap;-><init>(Ljava/util/Map;)V

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

    .line 44
    invoke-direct {p0, v0, p1}, Lcn/hutool/core/map/multi/SetValueMap;-><init>(FLjava/util/Map;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic createCollection()Ljava/util/Collection;
    .locals 1

    .line 18
    invoke-virtual {p0}, Lcn/hutool/core/map/multi/SetValueMap;->createCollection()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method protected createCollection()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TV;>;"
        }
    .end annotation

    .line 71
    new-instance v0, Ljava/util/LinkedHashSet;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/LinkedHashSet;-><init>(I)V

    return-object v0
.end method
