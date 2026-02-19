.class Lcn/hutool/core/map/multi/RowKeyTable$Column$EntrySetIterator;
.super Lcn/hutool/core/collection/ComputeIter;
.source "RowKeyTable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/hutool/core/map/multi/RowKeyTable$Column;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EntrySetIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/hutool/core/collection/ComputeIter<",
        "Ljava/util/Map$Entry<",
        "TR;TV;>;>;"
    }
.end annotation


# instance fields
.field final iterator:Ljava/util/Iterator;
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

.field final synthetic this$1:Lcn/hutool/core/map/multi/RowKeyTable$Column;


# direct methods
.method private constructor <init>(Lcn/hutool/core/map/multi/RowKeyTable$Column;)V
    .locals 0

    .line 250
    iput-object p1, p0, Lcn/hutool/core/map/multi/RowKeyTable$Column$EntrySetIterator;->this$1:Lcn/hutool/core/map/multi/RowKeyTable$Column;

    invoke-direct {p0}, Lcn/hutool/core/collection/ComputeIter;-><init>()V

    .line 251
    iget-object p1, p1, Lcn/hutool/core/map/multi/RowKeyTable$Column;->this$0:Lcn/hutool/core/map/multi/RowKeyTable;

    iget-object p1, p1, Lcn/hutool/core/map/multi/RowKeyTable;->raw:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    iput-object p1, p0, Lcn/hutool/core/map/multi/RowKeyTable$Column$EntrySetIterator;->iterator:Ljava/util/Iterator;

    return-void
.end method

.method synthetic constructor <init>(Lcn/hutool/core/map/multi/RowKeyTable$Column;Lcn/hutool/core/map/multi/RowKeyTable$1;)V
    .locals 0

    .line 250
    invoke-direct {p0, p1}, Lcn/hutool/core/map/multi/RowKeyTable$Column$EntrySetIterator;-><init>(Lcn/hutool/core/map/multi/RowKeyTable$Column;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic computeNext()Ljava/lang/Object;
    .locals 1

    .line 250
    invoke-virtual {p0}, Lcn/hutool/core/map/multi/RowKeyTable$Column$EntrySetIterator;->computeNext()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method protected computeNext()Ljava/util/Map$Entry;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry<",
            "TR;TV;>;"
        }
    .end annotation

    .line 255
    :cond_0
    iget-object v0, p0, Lcn/hutool/core/map/multi/RowKeyTable$Column$EntrySetIterator;->iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 256
    iget-object v0, p0, Lcn/hutool/core/map/multi/RowKeyTable$Column$EntrySetIterator;->iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 257
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    iget-object v2, p0, Lcn/hutool/core/map/multi/RowKeyTable$Column$EntrySetIterator;->this$1:Lcn/hutool/core/map/multi/RowKeyTable$Column;

    iget-object v2, v2, Lcn/hutool/core/map/multi/RowKeyTable$Column;->columnKey:Ljava/lang/Object;

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 258
    new-instance v1, Lcn/hutool/core/map/multi/RowKeyTable$Column$EntrySetIterator$1;

    invoke-direct {v1, p0, v0}, Lcn/hutool/core/map/multi/RowKeyTable$Column$EntrySetIterator$1;-><init>(Lcn/hutool/core/map/multi/RowKeyTable$Column$EntrySetIterator;Ljava/util/Map$Entry;)V

    return-object v1

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method
