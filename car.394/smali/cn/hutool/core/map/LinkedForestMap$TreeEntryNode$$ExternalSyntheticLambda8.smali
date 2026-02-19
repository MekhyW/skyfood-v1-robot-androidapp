.class public final synthetic Lcn/hutool/core/map/LinkedForestMap$TreeEntryNode$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic f$0:Ljava/util/function/Consumer;


# direct methods
.method public synthetic constructor <init>(Ljava/util/function/Consumer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/hutool/core/map/LinkedForestMap$TreeEntryNode$$ExternalSyntheticLambda8;->f$0:Ljava/util/function/Consumer;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcn/hutool/core/map/LinkedForestMap$TreeEntryNode$$ExternalSyntheticLambda8;->f$0:Ljava/util/function/Consumer;

    check-cast p1, Ljava/lang/Integer;

    check-cast p2, Lcn/hutool/core/map/LinkedForestMap$TreeEntryNode;

    invoke-static {v0, p1, p2}, Lcn/hutool/core/map/LinkedForestMap$TreeEntryNode;->lambda$forEachChild$6(Ljava/util/function/Consumer;Ljava/lang/Integer;Lcn/hutool/core/map/LinkedForestMap$TreeEntryNode;)V

    return-void
.end method
