.class public final synthetic Lcn/hutool/core/map/LinkedForestMap$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/hutool/core/map/LinkedForestMap$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcn/hutool/core/map/LinkedForestMap$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    check-cast p1, Lcn/hutool/core/map/TreeEntry;

    check-cast p2, Lcn/hutool/core/map/TreeEntry;

    invoke-static {v0, p1, p2}, Lcn/hutool/core/map/LinkedForestMap;->lambda$putLinkedNodes$2(Ljava/lang/Object;Lcn/hutool/core/map/TreeEntry;Lcn/hutool/core/map/TreeEntry;)V

    return-void
.end method
