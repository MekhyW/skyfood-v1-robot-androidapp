.class Lcn/hutool/core/map/multi/RowKeyTable$ColumnKeySet;
.super Ljava/util/AbstractSet;
.source "RowKeyTable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/hutool/core/map/multi/RowKeyTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ColumnKeySet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractSet<",
        "TC;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcn/hutool/core/map/multi/RowKeyTable;


# direct methods
.method private constructor <init>(Lcn/hutool/core/map/multi/RowKeyTable;)V
    .locals 0

    .line 166
    iput-object p1, p0, Lcn/hutool/core/map/multi/RowKeyTable$ColumnKeySet;->this$0:Lcn/hutool/core/map/multi/RowKeyTable;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/hutool/core/map/multi/RowKeyTable;Lcn/hutool/core/map/multi/RowKeyTable$1;)V
    .locals 0

    .line 166
    invoke-direct {p0, p1}, Lcn/hutool/core/map/multi/RowKeyTable$ColumnKeySet;-><init>(Lcn/hutool/core/map/multi/RowKeyTable;)V

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TC;>;"
        }
    .end annotation

    .line 170
    new-instance v0, Lcn/hutool/core/map/multi/RowKeyTable$ColumnKeyIterator;

    iget-object v1, p0, Lcn/hutool/core/map/multi/RowKeyTable$ColumnKeySet;->this$0:Lcn/hutool/core/map/multi/RowKeyTable;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcn/hutool/core/map/multi/RowKeyTable$ColumnKeyIterator;-><init>(Lcn/hutool/core/map/multi/RowKeyTable;Lcn/hutool/core/map/multi/RowKeyTable$1;)V

    return-object v0
.end method

.method public size()I
    .locals 1

    .line 175
    invoke-virtual {p0}, Lcn/hutool/core/map/multi/RowKeyTable$ColumnKeySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Lcn/hutool/core/collection/IterUtil;->size(Ljava/util/Iterator;)I

    move-result v0

    return v0
.end method
