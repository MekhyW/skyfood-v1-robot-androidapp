.class public final synthetic Lcn/hutool/core/map/multi/RowKeyTable$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcn/hutool/core/builder/Builder;
.implements Ljava/io/Serializable;


# instance fields
.field public final synthetic f$0:Z


# direct methods
.method public synthetic constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcn/hutool/core/map/multi/RowKeyTable$$ExternalSyntheticLambda2;->f$0:Z

    return-void
.end method


# virtual methods
.method public final build()Ljava/lang/Object;
    .locals 1

    iget-boolean v0, p0, Lcn/hutool/core/map/multi/RowKeyTable$$ExternalSyntheticLambda2;->f$0:Z

    invoke-static {v0}, Lcn/hutool/core/map/multi/RowKeyTable;->lambda$new$9e12e91d$1(Z)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method
