.class public final synthetic Lcn/hutool/core/map/LinkedForestMap$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic f$0:Lcn/hutool/core/map/LinkedForestMap$TreeEntryNode;


# direct methods
.method public synthetic constructor <init>(Lcn/hutool/core/map/LinkedForestMap$TreeEntryNode;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/hutool/core/map/LinkedForestMap$$ExternalSyntheticLambda5;->f$0:Lcn/hutool/core/map/LinkedForestMap$TreeEntryNode;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcn/hutool/core/map/LinkedForestMap$$ExternalSyntheticLambda5;->f$0:Lcn/hutool/core/map/LinkedForestMap$TreeEntryNode;

    check-cast p2, Lcn/hutool/core/map/TreeEntry;

    invoke-static {v0, p1, p2}, Lcn/hutool/core/map/LinkedForestMap;->lambda$remove$0(Lcn/hutool/core/map/LinkedForestMap$TreeEntryNode;Ljava/lang/Object;Lcn/hutool/core/map/TreeEntry;)V

    return-void
.end method
