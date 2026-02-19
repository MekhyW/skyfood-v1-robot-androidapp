.class Lcn/hutool/core/map/multi/AbsTable$CellSet;
.super Ljava/util/AbstractSet;
.source "AbsTable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/hutool/core/map/multi/AbsTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CellSet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractSet<",
        "Lcn/hutool/core/map/multi/Table$Cell<",
        "TR;TC;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcn/hutool/core/map/multi/AbsTable;


# direct methods
.method private constructor <init>(Lcn/hutool/core/map/multi/AbsTable;)V
    .locals 0

    .line 99
    iput-object p1, p0, Lcn/hutool/core/map/multi/AbsTable$CellSet;->this$0:Lcn/hutool/core/map/multi/AbsTable;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/hutool/core/map/multi/AbsTable;Lcn/hutool/core/map/multi/AbsTable$1;)V
    .locals 0

    .line 99
    invoke-direct {p0, p1}, Lcn/hutool/core/map/multi/AbsTable$CellSet;-><init>(Lcn/hutool/core/map/multi/AbsTable;)V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 123
    iget-object v0, p0, Lcn/hutool/core/map/multi/AbsTable$CellSet;->this$0:Lcn/hutool/core/map/multi/AbsTable;

    invoke-virtual {v0}, Lcn/hutool/core/map/multi/AbsTable;->clear()V

    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 2

    .line 102
    instance-of v0, p1, Lcn/hutool/core/map/multi/Table$Cell;

    if-eqz v0, :cond_0

    .line 103
    check-cast p1, Lcn/hutool/core/map/multi/Table$Cell;

    .line 104
    iget-object v0, p0, Lcn/hutool/core/map/multi/AbsTable$CellSet;->this$0:Lcn/hutool/core/map/multi/AbsTable;

    invoke-interface {p1}, Lcn/hutool/core/map/multi/Table$Cell;->getRowKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/hutool/core/map/multi/AbsTable;->getRow(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 106
    invoke-interface {p1}, Lcn/hutool/core/map/multi/Table$Cell;->getColumnKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1}, Lcn/hutool/core/map/multi/Table$Cell;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p1}, Lcn/hutool/core/util/ObjectUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lcn/hutool/core/map/multi/Table$Cell<",
            "TR;TC;TV;>;>;"
        }
    .end annotation

    .line 128
    new-instance v0, Lcn/hutool/core/map/multi/AbsTable$CellIterator;

    iget-object v1, p0, Lcn/hutool/core/map/multi/AbsTable$CellSet;->this$0:Lcn/hutool/core/map/multi/AbsTable;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcn/hutool/core/map/multi/AbsTable$CellIterator;-><init>(Lcn/hutool/core/map/multi/AbsTable;Lcn/hutool/core/map/multi/AbsTable$1;)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 2

    .line 114
    invoke-virtual {p0, p1}, Lcn/hutool/core/map/multi/AbsTable$CellSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 115
    check-cast p1, Lcn/hutool/core/map/multi/Table$Cell;

    .line 116
    iget-object v0, p0, Lcn/hutool/core/map/multi/AbsTable$CellSet;->this$0:Lcn/hutool/core/map/multi/AbsTable;

    invoke-interface {p1}, Lcn/hutool/core/map/multi/Table$Cell;->getRowKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1}, Lcn/hutool/core/map/multi/Table$Cell;->getColumnKey()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcn/hutool/core/map/multi/AbsTable;->remove(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public size()I
    .locals 1

    .line 133
    iget-object v0, p0, Lcn/hutool/core/map/multi/AbsTable$CellSet;->this$0:Lcn/hutool/core/map/multi/AbsTable;

    invoke-virtual {v0}, Lcn/hutool/core/map/multi/AbsTable;->size()I

    move-result v0

    return v0
.end method
