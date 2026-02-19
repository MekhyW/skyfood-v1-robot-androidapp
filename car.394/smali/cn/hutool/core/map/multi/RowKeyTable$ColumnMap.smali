.class Lcn/hutool/core/map/multi/RowKeyTable$ColumnMap;
.super Ljava/util/AbstractMap;
.source "RowKeyTable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/hutool/core/map/multi/RowKeyTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ColumnMap"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractMap<",
        "TC;",
        "Ljava/util/Map<",
        "TR;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcn/hutool/core/map/multi/RowKeyTable;


# direct methods
.method private constructor <init>(Lcn/hutool/core/map/multi/RowKeyTable;)V
    .locals 0

    .line 133
    iput-object p1, p0, Lcn/hutool/core/map/multi/RowKeyTable$ColumnMap;->this$0:Lcn/hutool/core/map/multi/RowKeyTable;

    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/hutool/core/map/multi/RowKeyTable;Lcn/hutool/core/map/multi/RowKeyTable$1;)V
    .locals 0

    .line 133
    invoke-direct {p0, p1}, Lcn/hutool/core/map/multi/RowKeyTable$ColumnMap;-><init>(Lcn/hutool/core/map/multi/RowKeyTable;)V

    return-void
.end method


# virtual methods
.method public entrySet()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TC;",
            "Ljava/util/Map<",
            "TR;TV;>;>;>;"
        }
    .end annotation

    .line 136
    new-instance v0, Lcn/hutool/core/map/multi/RowKeyTable$ColumnMapEntrySet;

    iget-object v1, p0, Lcn/hutool/core/map/multi/RowKeyTable$ColumnMap;->this$0:Lcn/hutool/core/map/multi/RowKeyTable;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcn/hutool/core/map/multi/RowKeyTable$ColumnMapEntrySet;-><init>(Lcn/hutool/core/map/multi/RowKeyTable;Lcn/hutool/core/map/multi/RowKeyTable$1;)V

    return-object v0
.end method
