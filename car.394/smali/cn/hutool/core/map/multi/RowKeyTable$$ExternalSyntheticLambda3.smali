.class public final synthetic Lcn/hutool/core/map/multi/RowKeyTable$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Lcn/hutool/core/map/multi/RowKeyTable;


# direct methods
.method public synthetic constructor <init>(Lcn/hutool/core/map/multi/RowKeyTable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/hutool/core/map/multi/RowKeyTable$$ExternalSyntheticLambda3;->f$0:Lcn/hutool/core/map/multi/RowKeyTable;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcn/hutool/core/map/multi/RowKeyTable$$ExternalSyntheticLambda3;->f$0:Lcn/hutool/core/map/multi/RowKeyTable;

    invoke-virtual {v0, p1}, Lcn/hutool/core/map/multi/RowKeyTable;->lambda$put$0$cn-hutool-core-map-multi-RowKeyTable(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method
