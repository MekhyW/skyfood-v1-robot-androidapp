.class public final synthetic Lcn/hutool/core/map/LinkedForestMap$TreeEntryNode$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcn/hutool/core/map/LinkedForestMap$TreeEntryNode;

.field public final synthetic f$1:Lcn/hutool/core/map/LinkedForestMap$TreeEntryNode;


# direct methods
.method public synthetic constructor <init>(Lcn/hutool/core/map/LinkedForestMap$TreeEntryNode;Lcn/hutool/core/map/LinkedForestMap$TreeEntryNode;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/hutool/core/map/LinkedForestMap$TreeEntryNode$$ExternalSyntheticLambda0;->f$0:Lcn/hutool/core/map/LinkedForestMap$TreeEntryNode;

    iput-object p2, p0, Lcn/hutool/core/map/LinkedForestMap$TreeEntryNode$$ExternalSyntheticLambda0;->f$1:Lcn/hutool/core/map/LinkedForestMap$TreeEntryNode;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcn/hutool/core/map/LinkedForestMap$TreeEntryNode$$ExternalSyntheticLambda0;->f$0:Lcn/hutool/core/map/LinkedForestMap$TreeEntryNode;

    iget-object v1, p0, Lcn/hutool/core/map/LinkedForestMap$TreeEntryNode$$ExternalSyntheticLambda0;->f$1:Lcn/hutool/core/map/LinkedForestMap$TreeEntryNode;

    check-cast p1, Lcn/hutool/core/map/LinkedForestMap$TreeEntryNode;

    invoke-virtual {v0, v1, p1}, Lcn/hutool/core/map/LinkedForestMap$TreeEntryNode;->lambda$addChild$8$cn-hutool-core-map-LinkedForestMap$TreeEntryNode(Lcn/hutool/core/map/LinkedForestMap$TreeEntryNode;Lcn/hutool/core/map/LinkedForestMap$TreeEntryNode;)V

    return-void
.end method
