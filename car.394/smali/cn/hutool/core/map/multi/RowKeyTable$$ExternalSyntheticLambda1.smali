.class public final synthetic Lcn/hutool/core/map/multi/RowKeyTable$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic f$0:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/hutool/core/map/multi/RowKeyTable$$ExternalSyntheticLambda1;->f$0:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcn/hutool/core/map/multi/RowKeyTable$$ExternalSyntheticLambda1;->f$0:Ljava/util/List;

    invoke-static {v0, p1, p2}, Lcn/hutool/core/map/multi/RowKeyTable;->lambda$columnKeys$1(Ljava/util/List;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method
