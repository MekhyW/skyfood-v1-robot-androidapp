.class Lcn/hutool/core/map/multi/RowKeyTable$Column$EntrySet;
.super Ljava/util/AbstractSet;
.source "RowKeyTable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/hutool/core/map/multi/RowKeyTable$Column;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EntrySet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractSet<",
        "Ljava/util/Map$Entry<",
        "TR;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcn/hutool/core/map/multi/RowKeyTable$Column;


# direct methods
.method private constructor <init>(Lcn/hutool/core/map/multi/RowKeyTable$Column;)V
    .locals 0

    .line 231
    iput-object p1, p0, Lcn/hutool/core/map/multi/RowKeyTable$Column$EntrySet;->this$1:Lcn/hutool/core/map/multi/RowKeyTable$Column;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/hutool/core/map/multi/RowKeyTable$Column;Lcn/hutool/core/map/multi/RowKeyTable$1;)V
    .locals 0

    .line 231
    invoke-direct {p0, p1}, Lcn/hutool/core/map/multi/RowKeyTable$Column$EntrySet;-><init>(Lcn/hutool/core/map/multi/RowKeyTable$Column;)V

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TR;TV;>;>;"
        }
    .end annotation

    .line 235
    new-instance v0, Lcn/hutool/core/map/multi/RowKeyTable$Column$EntrySetIterator;

    iget-object v1, p0, Lcn/hutool/core/map/multi/RowKeyTable$Column$EntrySet;->this$1:Lcn/hutool/core/map/multi/RowKeyTable$Column;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcn/hutool/core/map/multi/RowKeyTable$Column$EntrySetIterator;-><init>(Lcn/hutool/core/map/multi/RowKeyTable$Column;Lcn/hutool/core/map/multi/RowKeyTable$1;)V

    return-object v0
.end method

.method public size()I
    .locals 4

    .line 241
    iget-object v0, p0, Lcn/hutool/core/map/multi/RowKeyTable$Column$EntrySet;->this$1:Lcn/hutool/core/map/multi/RowKeyTable$Column;

    iget-object v0, v0, Lcn/hutool/core/map/multi/RowKeyTable$Column;->this$0:Lcn/hutool/core/map/multi/RowKeyTable;

    iget-object v0, v0, Lcn/hutool/core/map/multi/RowKeyTable;->raw:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 242
    iget-object v3, p0, Lcn/hutool/core/map/multi/RowKeyTable$Column$EntrySet;->this$1:Lcn/hutool/core/map/multi/RowKeyTable$Column;

    iget-object v3, v3, Lcn/hutool/core/map/multi/RowKeyTable$Column;->columnKey:Ljava/lang/Object;

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method
