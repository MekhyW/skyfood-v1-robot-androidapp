.class public interface abstract Lcn/hutool/core/map/multi/Table;
.super Ljava/lang/Object;
.source "Table.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/hutool/core/map/multi/Table$Cell;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        "C:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "Lcn/hutool/core/map/multi/Table$Cell<",
        "TR;TC;TV;>;>;"
    }
.end annotation


# direct methods
.method public static synthetic lambda$contains$0(Ljava/lang/Object;Ljava/util/Map;)Ljava/lang/Boolean;
    .locals 0

    .line 34
    invoke-interface {p1, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$containsColumn$3(Ljava/lang/Object;Ljava/util/Map;)Ljava/lang/Boolean;
    .locals 0

    .line 86
    invoke-interface {p1, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$containsRow$1(Ljava/lang/Object;Ljava/util/Map;)Ljava/lang/Boolean;
    .locals 0

    .line 47
    invoke-interface {p1, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$get$5(Ljava/lang/Object;Ljava/util/Map;)Ljava/lang/Object;
    .locals 0

    .line 163
    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$getColumn$4(Ljava/lang/Object;Ljava/util/Map;)Ljava/util/Map;
    .locals 0

    .line 96
    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    return-object p0
.end method

.method public static synthetic lambda$getRow$2(Ljava/lang/Object;Ljava/util/Map;)Ljava/util/Map;
    .locals 0

    .line 57
    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    return-object p0
.end method


# virtual methods
.method public abstract cellSet()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcn/hutool/core/map/multi/Table$Cell<",
            "TR;TC;TV;>;>;"
        }
    .end annotation
.end method

.method public abstract clear()V
.end method

.method public columnKeySet()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TC;>;"
        }
    .end annotation

    .line 105
    invoke-interface {p0}, Lcn/hutool/core/map/multi/Table;->columnMap()Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Lcn/hutool/core/lang/Opt;->ofNullable(Ljava/lang/Object;)Lcn/hutool/core/lang/Opt;

    move-result-object v0

    new-instance v1, Lcn/hutool/core/map/multi/Table$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Lcn/hutool/core/map/multi/Table$$ExternalSyntheticLambda2;-><init>()V

    invoke-virtual {v0, v1}, Lcn/hutool/core/lang/Opt;->map(Ljava/util/function/Function;)Lcn/hutool/core/lang/Opt;

    move-result-object v0

    invoke-virtual {v0}, Lcn/hutool/core/lang/Opt;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    return-object v0
.end method

.method public columnKeys()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TC;>;"
        }
    .end annotation

    .line 115
    invoke-interface {p0}, Lcn/hutool/core/map/multi/Table;->columnMap()Ljava/util/Map;

    move-result-object v0

    .line 116
    invoke-static {v0}, Lcn/hutool/core/map/MapUtil;->isEmpty(Ljava/util/Map;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 117
    invoke-static {}, Lcn/hutool/core/collection/ListUtil;->empty()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 120
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 121
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 122
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public abstract columnMap()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "TC;",
            "Ljava/util/Map<",
            "TR;TV;>;>;"
        }
    .end annotation
.end method

.method public contains(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;TC;)Z"
        }
    .end annotation

    .line 34
    invoke-interface {p0, p1}, Lcn/hutool/core/map/multi/Table;->getRow(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p1

    invoke-static {p1}, Lcn/hutool/core/lang/Opt;->ofNullable(Ljava/lang/Object;)Lcn/hutool/core/lang/Opt;

    move-result-object p1

    new-instance v0, Lcn/hutool/core/map/multi/Table$$ExternalSyntheticLambda0;

    invoke-direct {v0, p2}, Lcn/hutool/core/map/multi/Table$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p1, v0}, Lcn/hutool/core/lang/Opt;->map(Ljava/util/function/Function;)Lcn/hutool/core/lang/Opt;

    move-result-object p1

    const/4 p2, 0x0

    .line 35
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcn/hutool/core/lang/Opt;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method

.method public containsColumn(Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;)Z"
        }
    .end annotation

    .line 86
    invoke-interface {p0}, Lcn/hutool/core/map/multi/Table;->columnMap()Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Lcn/hutool/core/lang/Opt;->ofNullable(Ljava/lang/Object;)Lcn/hutool/core/lang/Opt;

    move-result-object v0

    new-instance v1, Lcn/hutool/core/map/multi/Table$$ExternalSyntheticLambda1;

    invoke-direct {v1, p1}, Lcn/hutool/core/map/multi/Table$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcn/hutool/core/lang/Opt;->map(Ljava/util/function/Function;)Lcn/hutool/core/lang/Opt;

    move-result-object p1

    invoke-virtual {p1}, Lcn/hutool/core/lang/Opt;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method

.method public containsRow(Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)Z"
        }
    .end annotation

    .line 47
    invoke-interface {p0}, Lcn/hutool/core/map/multi/Table;->rowMap()Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Lcn/hutool/core/lang/Opt;->ofNullable(Ljava/lang/Object;)Lcn/hutool/core/lang/Opt;

    move-result-object v0

    new-instance v1, Lcn/hutool/core/map/multi/Table$$ExternalSyntheticLambda6;

    invoke-direct {v1, p1}, Lcn/hutool/core/map/multi/Table$$ExternalSyntheticLambda6;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcn/hutool/core/lang/Opt;->map(Ljava/util/function/Function;)Lcn/hutool/core/lang/Opt;

    move-result-object p1

    invoke-virtual {p1}, Lcn/hutool/core/lang/Opt;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)Z"
        }
    .end annotation

    .line 144
    invoke-interface {p0}, Lcn/hutool/core/map/multi/Table;->rowMap()Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Lcn/hutool/core/lang/Opt;->ofNullable(Ljava/lang/Object;)Lcn/hutool/core/lang/Opt;

    move-result-object v0

    new-instance v1, Lcn/hutool/core/map/ForestMap$$ExternalSyntheticLambda7;

    invoke-direct {v1}, Lcn/hutool/core/map/ForestMap$$ExternalSyntheticLambda7;-><init>()V

    invoke-virtual {v0, v1}, Lcn/hutool/core/lang/Opt;->map(Ljava/util/function/Function;)Lcn/hutool/core/lang/Opt;

    move-result-object v0

    invoke-virtual {v0}, Lcn/hutool/core/lang/Opt;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    if-eqz v0, :cond_1

    .line 146
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 147
    invoke-interface {v1, p1}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public forEach(Lcn/hutool/core/lang/func/Consumer3;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/hutool/core/lang/func/Consumer3<",
            "-TR;-TC;-TV;>;)V"
        }
    .end annotation

    .line 248
    invoke-interface {p0}, Lcn/hutool/core/map/multi/Table;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/hutool/core/map/multi/Table$Cell;

    .line 249
    invoke-interface {v1}, Lcn/hutool/core/map/multi/Table$Cell;->getRowKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1}, Lcn/hutool/core/map/multi/Table$Cell;->getColumnKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1}, Lcn/hutool/core/map/multi/Table$Cell;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v2, v3, v1}, Lcn/hutool/core/lang/func/Consumer3;->accept(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;TC;)TV;"
        }
    .end annotation

    .line 163
    invoke-interface {p0, p1}, Lcn/hutool/core/map/multi/Table;->getRow(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p1

    invoke-static {p1}, Lcn/hutool/core/lang/Opt;->ofNullable(Ljava/lang/Object;)Lcn/hutool/core/lang/Opt;

    move-result-object p1

    new-instance v0, Lcn/hutool/core/map/multi/Table$$ExternalSyntheticLambda3;

    invoke-direct {v0, p2}, Lcn/hutool/core/map/multi/Table$$ExternalSyntheticLambda3;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p1, v0}, Lcn/hutool/core/lang/Opt;->map(Ljava/util/function/Function;)Lcn/hutool/core/lang/Opt;

    move-result-object p1

    invoke-virtual {p1}, Lcn/hutool/core/lang/Opt;->get()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getColumn(Ljava/lang/Object;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;)",
            "Ljava/util/Map<",
            "TR;TV;>;"
        }
    .end annotation

    .line 96
    invoke-interface {p0}, Lcn/hutool/core/map/multi/Table;->columnMap()Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Lcn/hutool/core/lang/Opt;->ofNullable(Ljava/lang/Object;)Lcn/hutool/core/lang/Opt;

    move-result-object v0

    new-instance v1, Lcn/hutool/core/map/multi/Table$$ExternalSyntheticLambda5;

    invoke-direct {v1, p1}, Lcn/hutool/core/map/multi/Table$$ExternalSyntheticLambda5;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcn/hutool/core/lang/Opt;->map(Ljava/util/function/Function;)Lcn/hutool/core/lang/Opt;

    move-result-object p1

    invoke-virtual {p1}, Lcn/hutool/core/lang/Opt;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    return-object p1
.end method

.method public getRow(Ljava/lang/Object;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)",
            "Ljava/util/Map<",
            "TC;TV;>;"
        }
    .end annotation

    .line 57
    invoke-interface {p0}, Lcn/hutool/core/map/multi/Table;->rowMap()Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Lcn/hutool/core/lang/Opt;->ofNullable(Ljava/lang/Object;)Lcn/hutool/core/lang/Opt;

    move-result-object v0

    new-instance v1, Lcn/hutool/core/map/multi/Table$$ExternalSyntheticLambda4;

    invoke-direct {v1, p1}, Lcn/hutool/core/map/multi/Table$$ExternalSyntheticLambda4;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcn/hutool/core/lang/Opt;->map(Ljava/util/function/Function;)Lcn/hutool/core/lang/Opt;

    move-result-object p1

    invoke-virtual {p1}, Lcn/hutool/core/lang/Opt;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    return-object p1
.end method

.method public abstract isEmpty()Z
.end method

.method public abstract put(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;TC;TV;)TV;"
        }
    .end annotation
.end method

.method public putAll(Lcn/hutool/core/map/multi/Table;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/hutool/core/map/multi/Table<",
            "+TR;+TC;+TV;>;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 198
    invoke-interface {p1}, Lcn/hutool/core/map/multi/Table;->cellSet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/hutool/core/map/multi/Table$Cell;

    .line 199
    invoke-interface {v0}, Lcn/hutool/core/map/multi/Table$Cell;->getRowKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0}, Lcn/hutool/core/map/multi/Table$Cell;->getColumnKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0}, Lcn/hutool/core/map/multi/Table$Cell;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p0, v1, v2, v0}, Lcn/hutool/core/map/multi/Table;->put(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public abstract remove(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;TC;)TV;"
        }
    .end annotation
.end method

.method public rowKeySet()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TR;>;"
        }
    .end annotation

    .line 66
    invoke-interface {p0}, Lcn/hutool/core/map/multi/Table;->rowMap()Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Lcn/hutool/core/lang/Opt;->ofNullable(Ljava/lang/Object;)Lcn/hutool/core/lang/Opt;

    move-result-object v0

    new-instance v1, Lcn/hutool/core/map/multi/Table$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Lcn/hutool/core/map/multi/Table$$ExternalSyntheticLambda2;-><init>()V

    invoke-virtual {v0, v1}, Lcn/hutool/core/lang/Opt;->map(Ljava/util/function/Function;)Lcn/hutool/core/lang/Opt;

    move-result-object v0

    invoke-virtual {v0}, Lcn/hutool/core/lang/Opt;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    return-object v0
.end method

.method public abstract rowMap()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "TR;",
            "Ljava/util/Map<",
            "TC;TV;>;>;"
        }
    .end annotation
.end method

.method public size()I
    .locals 3

    .line 226
    invoke-interface {p0}, Lcn/hutool/core/map/multi/Table;->rowMap()Ljava/util/Map;

    move-result-object v0

    .line 227
    invoke-static {v0}, Lcn/hutool/core/map/MapUtil;->isEmpty(Ljava/util/Map;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return v2

    .line 231
    :cond_0
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 232
    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    add-int/2addr v2, v1

    goto :goto_0

    :cond_1
    return v2
.end method

.method public abstract values()Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation
.end method
