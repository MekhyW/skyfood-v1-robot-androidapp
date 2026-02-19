.class Lcn/hutool/core/map/multi/AbsTable$CellIterator;
.super Ljava/lang/Object;
.source "AbsTable.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/hutool/core/map/multi/AbsTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CellIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Lcn/hutool/core/map/multi/Table$Cell<",
        "TR;TC;TV;>;>;"
    }
.end annotation


# instance fields
.field columnIterator:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TC;TV;>;>;"
        }
    .end annotation
.end field

.field rowEntry:Ljava/util/Map$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map$Entry<",
            "TR;",
            "Ljava/util/Map<",
            "TC;TV;>;>;"
        }
    .end annotation
.end field

.field final rowIterator:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TR;",
            "Ljava/util/Map<",
            "TC;TV;>;>;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcn/hutool/core/map/multi/AbsTable;


# direct methods
.method private constructor <init>(Lcn/hutool/core/map/multi/AbsTable;)V
    .locals 0

    .line 147
    iput-object p1, p0, Lcn/hutool/core/map/multi/AbsTable$CellIterator;->this$0:Lcn/hutool/core/map/multi/AbsTable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 148
    invoke-virtual {p1}, Lcn/hutool/core/map/multi/AbsTable;->rowMap()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    iput-object p1, p0, Lcn/hutool/core/map/multi/AbsTable$CellIterator;->rowIterator:Ljava/util/Iterator;

    .line 150
    invoke-static {}, Lcn/hutool/core/collection/IterUtil;->empty()Ljava/util/Iterator;

    move-result-object p1

    iput-object p1, p0, Lcn/hutool/core/map/multi/AbsTable$CellIterator;->columnIterator:Ljava/util/Iterator;

    return-void
.end method

.method synthetic constructor <init>(Lcn/hutool/core/map/multi/AbsTable;Lcn/hutool/core/map/multi/AbsTable$1;)V
    .locals 0

    .line 147
    invoke-direct {p0, p1}, Lcn/hutool/core/map/multi/AbsTable$CellIterator;-><init>(Lcn/hutool/core/map/multi/AbsTable;)V

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .line 154
    iget-object v0, p0, Lcn/hutool/core/map/multi/AbsTable$CellIterator;->rowIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcn/hutool/core/map/multi/AbsTable$CellIterator;->columnIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public next()Lcn/hutool/core/map/multi/Table$Cell;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcn/hutool/core/map/multi/Table$Cell<",
            "TR;TC;TV;>;"
        }
    .end annotation

    .line 159
    iget-object v0, p0, Lcn/hutool/core/map/multi/AbsTable$CellIterator;->columnIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 160
    iget-object v0, p0, Lcn/hutool/core/map/multi/AbsTable$CellIterator;->rowIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    iput-object v0, p0, Lcn/hutool/core/map/multi/AbsTable$CellIterator;->rowEntry:Ljava/util/Map$Entry;

    .line 161
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lcn/hutool/core/map/multi/AbsTable$CellIterator;->columnIterator:Ljava/util/Iterator;

    .line 163
    :cond_0
    iget-object v0, p0, Lcn/hutool/core/map/multi/AbsTable$CellIterator;->columnIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 164
    new-instance v1, Lcn/hutool/core/map/multi/AbsTable$SimpleCell;

    iget-object v2, p0, Lcn/hutool/core/map/multi/AbsTable$CellIterator;->rowEntry:Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-direct {v1, v2, v3, v0}, Lcn/hutool/core/map/multi/AbsTable$SimpleCell;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 147
    invoke-virtual {p0}, Lcn/hutool/core/map/multi/AbsTable$CellIterator;->next()Lcn/hutool/core/map/multi/Table$Cell;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 1

    .line 169
    iget-object v0, p0, Lcn/hutool/core/map/multi/AbsTable$CellIterator;->columnIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 170
    iget-object v0, p0, Lcn/hutool/core/map/multi/AbsTable$CellIterator;->rowEntry:Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 171
    iget-object v0, p0, Lcn/hutool/core/map/multi/AbsTable$CellIterator;->rowIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    :cond_0
    return-void
.end method
