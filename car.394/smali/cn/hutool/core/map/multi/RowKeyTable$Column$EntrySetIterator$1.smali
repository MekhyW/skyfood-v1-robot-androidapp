.class Lcn/hutool/core/map/multi/RowKeyTable$Column$EntrySetIterator$1;
.super Lcn/hutool/core/map/AbsEntry;
.source "RowKeyTable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/hutool/core/map/multi/RowKeyTable$Column$EntrySetIterator;->computeNext()Ljava/util/Map$Entry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/hutool/core/map/AbsEntry<",
        "TR;TV;>;"
    }
.end annotation


# instance fields
.field final synthetic this$2:Lcn/hutool/core/map/multi/RowKeyTable$Column$EntrySetIterator;

.field final synthetic val$entry:Ljava/util/Map$Entry;


# direct methods
.method constructor <init>(Lcn/hutool/core/map/multi/RowKeyTable$Column$EntrySetIterator;Ljava/util/Map$Entry;)V
    .locals 0

    .line 258
    iput-object p1, p0, Lcn/hutool/core/map/multi/RowKeyTable$Column$EntrySetIterator$1;->this$2:Lcn/hutool/core/map/multi/RowKeyTable$Column$EntrySetIterator;

    iput-object p2, p0, Lcn/hutool/core/map/multi/RowKeyTable$Column$EntrySetIterator$1;->val$entry:Ljava/util/Map$Entry;

    invoke-direct {p0}, Lcn/hutool/core/map/AbsEntry;-><init>()V

    return-void
.end method


# virtual methods
.method public getKey()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TR;"
        }
    .end annotation

    .line 261
    iget-object v0, p0, Lcn/hutool/core/map/multi/RowKeyTable$Column$EntrySetIterator$1;->val$entry:Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 266
    iget-object v0, p0, Lcn/hutool/core/map/multi/RowKeyTable$Column$EntrySetIterator$1;->val$entry:Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    iget-object v1, p0, Lcn/hutool/core/map/multi/RowKeyTable$Column$EntrySetIterator$1;->this$2:Lcn/hutool/core/map/multi/RowKeyTable$Column$EntrySetIterator;

    iget-object v1, v1, Lcn/hutool/core/map/multi/RowKeyTable$Column$EntrySetIterator;->this$1:Lcn/hutool/core/map/multi/RowKeyTable$Column;

    iget-object v1, v1, Lcn/hutool/core/map/multi/RowKeyTable$Column;->columnKey:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TV;"
        }
    .end annotation

    .line 271
    iget-object v0, p0, Lcn/hutool/core/map/multi/RowKeyTable$Column$EntrySetIterator$1;->val$entry:Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    iget-object v1, p0, Lcn/hutool/core/map/multi/RowKeyTable$Column$EntrySetIterator$1;->this$2:Lcn/hutool/core/map/multi/RowKeyTable$Column$EntrySetIterator;

    iget-object v1, v1, Lcn/hutool/core/map/multi/RowKeyTable$Column$EntrySetIterator;->this$1:Lcn/hutool/core/map/multi/RowKeyTable$Column;

    iget-object v1, v1, Lcn/hutool/core/map/multi/RowKeyTable$Column;->columnKey:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
