.class public final synthetic Lcn/hutool/core/map/LinkedForestMap$TreeEntryNode$$ExternalSyntheticLambda11;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/BiPredicate;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Ljava/lang/Integer;

    check-cast p2, Lcn/hutool/core/map/LinkedForestMap$TreeEntryNode;

    invoke-static {p1, p2}, Lcn/hutool/core/map/LinkedForestMap$TreeEntryNode;->lambda$traverseChildNodes$7(Ljava/lang/Integer;Lcn/hutool/core/map/LinkedForestMap$TreeEntryNode;)Z

    move-result p1

    return p1
.end method
