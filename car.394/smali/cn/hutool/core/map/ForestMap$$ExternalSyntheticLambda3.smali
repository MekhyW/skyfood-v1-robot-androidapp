.class public final synthetic Lcn/hutool/core/map/ForestMap$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/hutool/core/map/ForestMap$$ExternalSyntheticLambda3;->f$0:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcn/hutool/core/map/ForestMap$$ExternalSyntheticLambda3;->f$0:Ljava/lang/Object;

    check-cast p1, Lcn/hutool/core/map/TreeEntry;

    invoke-static {v0, p1}, Lcn/hutool/core/map/ForestMap;->lambda$getParentNode$2(Ljava/lang/Object;Lcn/hutool/core/map/TreeEntry;)Lcn/hutool/core/map/TreeEntry;

    move-result-object p1

    return-object p1
.end method
