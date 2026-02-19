.class public final synthetic Lcn/hutool/core/map/multi/RowKeyTable$ColumnMapEntrySet$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Lcn/hutool/core/map/multi/RowKeyTable$ColumnMapEntrySet;


# direct methods
.method public synthetic constructor <init>(Lcn/hutool/core/map/multi/RowKeyTable$ColumnMapEntrySet;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/hutool/core/map/multi/RowKeyTable$ColumnMapEntrySet$$ExternalSyntheticLambda0;->f$0:Lcn/hutool/core/map/multi/RowKeyTable$ColumnMapEntrySet;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcn/hutool/core/map/multi/RowKeyTable$ColumnMapEntrySet$$ExternalSyntheticLambda0;->f$0:Lcn/hutool/core/map/multi/RowKeyTable$ColumnMapEntrySet;

    invoke-virtual {v0, p1}, Lcn/hutool/core/map/multi/RowKeyTable$ColumnMapEntrySet;->lambda$iterator$0$cn-hutool-core-map-multi-RowKeyTable$ColumnMapEntrySet(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object p1

    return-object p1
.end method
