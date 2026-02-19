.class public Lcn/hutool/core/map/multi/RowKeyTable;
.super Lcn/hutool/core/map/multi/AbsTable;
.source "RowKeyTable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/hutool/core/map/multi/RowKeyTable$Column;,
        Lcn/hutool/core/map/multi/RowKeyTable$ColumnKeyIterator;,
        Lcn/hutool/core/map/multi/RowKeyTable$ColumnKeySet;,
        Lcn/hutool/core/map/multi/RowKeyTable$ColumnMapEntrySet;,
        Lcn/hutool/core/map/multi/RowKeyTable$ColumnMap;
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
        "Lcn/hutool/core/map/multi/AbsTable<",
        "TR;TC;TV;>;"
    }
.end annotation


# instance fields
.field final columnBuilder:Lcn/hutool/core/builder/Builder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcn/hutool/core/builder/Builder<",
            "+",
            "Ljava/util/Map<",
            "TC;TV;>;>;"
        }
    .end annotation
.end field

.field private columnKeySet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "TC;>;"
        }
    .end annotation
.end field

.field private columnMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "TC;",
            "Ljava/util/Map<",
            "TR;TV;>;>;"
        }
    .end annotation
.end field

.field final raw:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "TR;",
            "Ljava/util/Map<",
            "TC;TV;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$PF6FMzP5lRgq8z0BvTRM-1qfuyM()Ljava/util/HashMap;
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    return-object v0
.end method

.method public constructor <init>()V
    .locals 1

    .line 44
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-direct {p0, v0}, Lcn/hutool/core/map/multi/RowKeyTable;-><init>(Ljava/util/Map;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "TR;",
            "Ljava/util/Map<",
            "TC;TV;>;>;)V"
        }
    .end annotation

    .line 63
    new-instance v0, Lcn/hutool/core/map/multi/RowKeyTable$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcn/hutool/core/map/multi/RowKeyTable$$ExternalSyntheticLambda0;-><init>()V

    invoke-direct {p0, p1, v0}, Lcn/hutool/core/map/multi/RowKeyTable;-><init>(Ljava/util/Map;Lcn/hutool/core/builder/Builder;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;Lcn/hutool/core/builder/Builder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "TR;",
            "Ljava/util/Map<",
            "TC;TV;>;>;",
            "Lcn/hutool/core/builder/Builder<",
            "+",
            "Ljava/util/Map<",
            "TC;TV;>;>;)V"
        }
    .end annotation

    .line 72
    invoke-direct {p0}, Lcn/hutool/core/map/multi/AbsTable;-><init>()V

    .line 73
    iput-object p1, p0, Lcn/hutool/core/map/multi/RowKeyTable;->raw:Ljava/util/Map;

    if-nez p2, :cond_0

    .line 74
    new-instance p2, Lcn/hutool/core/map/multi/RowKeyTable$$ExternalSyntheticLambda0;

    invoke-direct {p2}, Lcn/hutool/core/map/multi/RowKeyTable$$ExternalSyntheticLambda0;-><init>()V

    :cond_0
    iput-object p2, p0, Lcn/hutool/core/map/multi/RowKeyTable;->columnBuilder:Lcn/hutool/core/builder/Builder;

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 2

    .line 54
    invoke-static {p1}, Lcn/hutool/core/map/MapUtil;->newHashMap(Z)Ljava/util/HashMap;

    move-result-object v0

    new-instance v1, Lcn/hutool/core/map/multi/RowKeyTable$$ExternalSyntheticLambda2;

    invoke-direct {v1, p1}, Lcn/hutool/core/map/multi/RowKeyTable$$ExternalSyntheticLambda2;-><init>(Z)V

    invoke-direct {p0, v0, v1}, Lcn/hutool/core/map/multi/RowKeyTable;-><init>(Ljava/util/Map;Lcn/hutool/core/builder/Builder;)V

    return-void
.end method

.method static synthetic lambda$columnKeys$1(Ljava/util/List;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 209
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method static synthetic lambda$new$9e12e91d$1(Z)Ljava/util/Map;
    .locals 0

    .line 54
    invoke-static {p0}, Lcn/hutool/core/map/MapUtil;->newHashMap(Z)Ljava/util/HashMap;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 108
    iget-object v0, p0, Lcn/hutool/core/map/multi/RowKeyTable;->raw:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
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

    .line 160
    iget-object v0, p0, Lcn/hutool/core/map/multi/RowKeyTable;->columnKeySet:Ljava/util/Set;

    if-nez v0, :cond_0

    .line 161
    new-instance v0, Lcn/hutool/core/map/multi/RowKeyTable$ColumnKeySet;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcn/hutool/core/map/multi/RowKeyTable$ColumnKeySet;-><init>(Lcn/hutool/core/map/multi/RowKeyTable;Lcn/hutool/core/map/multi/RowKeyTable$1;)V

    iput-object v0, p0, Lcn/hutool/core/map/multi/RowKeyTable;->columnKeySet:Ljava/util/Set;

    :cond_0
    return-object v0
.end method

.method public columnKeys()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TC;>;"
        }
    .end annotation

    .line 206
    iget-object v0, p0, Lcn/hutool/core/map/multi/RowKeyTable;->raw:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    .line 207
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v2

    mul-int/lit8 v2, v2, 0x10

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 208
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 209
    new-instance v3, Lcn/hutool/core/map/multi/RowKeyTable$$ExternalSyntheticLambda1;

    invoke-direct {v3, v1}, Lcn/hutool/core/map/multi/RowKeyTable$$ExternalSyntheticLambda1;-><init>(Ljava/util/List;)V

    invoke-interface {v2, v3}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public columnMap()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "TC;",
            "Ljava/util/Map<",
            "TR;TV;>;>;"
        }
    .end annotation

    .line 127
    iget-object v0, p0, Lcn/hutool/core/map/multi/RowKeyTable;->columnMap:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 128
    new-instance v0, Lcn/hutool/core/map/multi/RowKeyTable$ColumnMap;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcn/hutool/core/map/multi/RowKeyTable$ColumnMap;-><init>(Lcn/hutool/core/map/multi/RowKeyTable;Lcn/hutool/core/map/multi/RowKeyTable$1;)V

    iput-object v0, p0, Lcn/hutool/core/map/multi/RowKeyTable;->columnMap:Ljava/util/Map;

    :cond_0
    return-object v0
.end method

.method public containsColumn(Ljava/lang/Object;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 116
    :cond_0
    iget-object v1, p0, Lcn/hutool/core/map/multi/RowKeyTable;->raw:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    if-eqz v2, :cond_1

    .line 117
    invoke-interface {v2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_2
    return v0
.end method

.method public getColumn(Ljava/lang/Object;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;)",
            "Ljava/util/Map<",
            "TR;TV;>;"
        }
    .end annotation

    .line 216
    new-instance v0, Lcn/hutool/core/map/multi/RowKeyTable$Column;

    invoke-direct {v0, p0, p1}, Lcn/hutool/core/map/multi/RowKeyTable$Column;-><init>(Lcn/hutool/core/map/multi/RowKeyTable;Ljava/lang/Object;)V

    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 103
    iget-object v0, p0, Lcn/hutool/core/map/multi/RowKeyTable;->raw:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    return v0
.end method

.method synthetic lambda$put$0$cn-hutool-core-map-multi-RowKeyTable(Ljava/lang/Object;)Ljava/util/Map;
    .locals 0

    .line 85
    iget-object p1, p0, Lcn/hutool/core/map/multi/RowKeyTable;->columnBuilder:Lcn/hutool/core/builder/Builder;

    invoke-interface {p1}, Lcn/hutool/core/builder/Builder;->build()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    return-object p1
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;TC;TV;)TV;"
        }
    .end annotation

    .line 85
    iget-object v0, p0, Lcn/hutool/core/map/multi/RowKeyTable;->raw:Ljava/util/Map;

    new-instance v1, Lcn/hutool/core/map/multi/RowKeyTable$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcn/hutool/core/map/multi/RowKeyTable$$ExternalSyntheticLambda3;-><init>(Lcn/hutool/core/map/multi/RowKeyTable;)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public remove(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;TC;)TV;"
        }
    .end annotation

    .line 90
    invoke-virtual {p0, p1}, Lcn/hutool/core/map/multi/RowKeyTable;->getRow(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 94
    :cond_0
    invoke-interface {v0, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 95
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 96
    iget-object v0, p0, Lcn/hutool/core/map/multi/RowKeyTable;->raw:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object p2
.end method

.method public rowMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "TR;",
            "Ljava/util/Map<",
            "TC;TV;>;>;"
        }
    .end annotation

    .line 80
    iget-object v0, p0, Lcn/hutool/core/map/multi/RowKeyTable;->raw:Ljava/util/Map;

    return-object v0
.end method
