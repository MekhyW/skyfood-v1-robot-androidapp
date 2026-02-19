.class public Lcn/hutool/core/map/BiMap;
.super Lcn/hutool/core/map/MapWrapper;
.source "BiMap.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcn/hutool/core/map/MapWrapper<",
        "TK;TV;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private inverse:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "TV;TK;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 28
    invoke-direct {p0, p1}, Lcn/hutool/core/map/MapWrapper;-><init>(Ljava/util/Map;)V

    return-void
.end method

.method private resetInverseMap()V
    .locals 1

    .line 129
    iget-object v0, p0, Lcn/hutool/core/map/BiMap;->inverse:Ljava/util/Map;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 130
    iput-object v0, p0, Lcn/hutool/core/map/BiMap;->inverse:Ljava/util/Map;

    :cond_0
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 63
    invoke-super {p0}, Lcn/hutool/core/map/MapWrapper;->clear()V

    const/4 v0, 0x0

    .line 64
    iput-object v0, p0, Lcn/hutool/core/map/BiMap;->inverse:Ljava/util/Map;

    return-void
.end method

.method public compute(Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/util/function/BiFunction<",
            "-TK;-TV;+TV;>;)TV;"
        }
    .end annotation

    .line 113
    invoke-super {p0, p1, p2}, Lcn/hutool/core/map/MapWrapper;->compute(Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;

    move-result-object p1

    .line 114
    invoke-direct {p0}, Lcn/hutool/core/map/BiMap;->resetInverseMap()V

    return-object p1
.end method

.method public computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/util/function/Function<",
            "-TK;+TV;>;)TV;"
        }
    .end annotation

    .line 99
    invoke-super {p0, p1, p2}, Lcn/hutool/core/map/MapWrapper;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p1

    .line 100
    invoke-direct {p0}, Lcn/hutool/core/map/BiMap;->resetInverseMap()V

    return-object p1
.end method

.method public computeIfPresent(Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/util/function/BiFunction<",
            "-TK;-TV;+TV;>;)TV;"
        }
    .end annotation

    .line 106
    invoke-super {p0, p1, p2}, Lcn/hutool/core/map/MapWrapper;->computeIfPresent(Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;

    move-result-object p1

    .line 107
    invoke-direct {p0}, Lcn/hutool/core/map/BiMap;->resetInverseMap()V

    return-object p1
.end method

.method public getInverse()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "TV;TK;>;"
        }
    .end annotation

    .line 73
    iget-object v0, p0, Lcn/hutool/core/map/BiMap;->inverse:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 74
    invoke-virtual {p0}, Lcn/hutool/core/map/BiMap;->getRaw()Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Lcn/hutool/core/map/MapUtil;->inverse(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcn/hutool/core/map/BiMap;->inverse:Ljava/util/Map;

    .line 76
    :cond_0
    iget-object v0, p0, Lcn/hutool/core/map/BiMap;->inverse:Ljava/util/Map;

    return-object v0
.end method

.method public getKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TK;"
        }
    .end annotation

    .line 86
    invoke-virtual {p0}, Lcn/hutool/core/map/BiMap;->getInverse()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method synthetic lambda$putAll$0$cn-hutool-core-map-BiMap(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    .line 43
    iget-object v0, p0, Lcn/hutool/core/map/BiMap;->inverse:Ljava/util/Map;

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public merge(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;",
            "Ljava/util/function/BiFunction<",
            "-TV;-TV;+TV;>;)TV;"
        }
    .end annotation

    .line 120
    invoke-super {p0, p1, p2, p3}, Lcn/hutool/core/map/MapWrapper;->merge(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;

    move-result-object p1

    .line 121
    invoke-direct {p0}, Lcn/hutool/core/map/BiMap;->resetInverseMap()V

    return-object p1
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .line 33
    iget-object v0, p0, Lcn/hutool/core/map/BiMap;->inverse:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 34
    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    :cond_0
    invoke-super {p0, p1, p2}, Lcn/hutool/core/map/MapWrapper;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+TK;+TV;>;)V"
        }
    .end annotation

    .line 41
    invoke-super {p0, p1}, Lcn/hutool/core/map/MapWrapper;->putAll(Ljava/util/Map;)V

    .line 42
    iget-object v0, p0, Lcn/hutool/core/map/BiMap;->inverse:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 43
    new-instance v0, Lcn/hutool/core/map/BiMap$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcn/hutool/core/map/BiMap$$ExternalSyntheticLambda0;-><init>(Lcn/hutool/core/map/BiMap;)V

    invoke-interface {p1, v0}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    :cond_0
    return-void
.end method

.method public putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .line 91
    iget-object v0, p0, Lcn/hutool/core/map/BiMap;->inverse:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 92
    invoke-interface {v0, p2, p1}, Ljava/util/Map;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    :cond_0
    invoke-super {p0, p1, p2}, Lcn/hutool/core/map/MapWrapper;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 49
    invoke-super {p0, p1}, Lcn/hutool/core/map/MapWrapper;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 50
    iget-object v0, p0, Lcn/hutool/core/map/BiMap;->inverse:Ljava/util/Map;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 51
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object p1
.end method

.method public remove(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    .line 58
    invoke-super {p0, p1, p2}, Lcn/hutool/core/map/MapWrapper;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/hutool/core/map/BiMap;->inverse:Ljava/util/Map;

    if-eqz v0, :cond_0

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
