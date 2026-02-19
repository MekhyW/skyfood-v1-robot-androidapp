.class public final synthetic Lcn/hutool/core/map/ForestMap$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcn/hutool/core/map/ForestMap;

.field public final synthetic f$1:Ljava/util/function/Function;

.field public final synthetic f$2:Ljava/util/function/Function;

.field public final synthetic f$3:Z


# direct methods
.method public synthetic constructor <init>(Lcn/hutool/core/map/ForestMap;Ljava/util/function/Function;Ljava/util/function/Function;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/hutool/core/map/ForestMap$$ExternalSyntheticLambda1;->f$0:Lcn/hutool/core/map/ForestMap;

    iput-object p2, p0, Lcn/hutool/core/map/ForestMap$$ExternalSyntheticLambda1;->f$1:Ljava/util/function/Function;

    iput-object p3, p0, Lcn/hutool/core/map/ForestMap$$ExternalSyntheticLambda1;->f$2:Ljava/util/function/Function;

    iput-boolean p4, p0, Lcn/hutool/core/map/ForestMap$$ExternalSyntheticLambda1;->f$3:Z

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 4

    iget-object v0, p0, Lcn/hutool/core/map/ForestMap$$ExternalSyntheticLambda1;->f$0:Lcn/hutool/core/map/ForestMap;

    iget-object v1, p0, Lcn/hutool/core/map/ForestMap$$ExternalSyntheticLambda1;->f$1:Ljava/util/function/Function;

    iget-object v2, p0, Lcn/hutool/core/map/ForestMap$$ExternalSyntheticLambda1;->f$2:Ljava/util/function/Function;

    iget-boolean v3, p0, Lcn/hutool/core/map/ForestMap$$ExternalSyntheticLambda1;->f$3:Z

    invoke-static {v0, v1, v2, v3, p1}, Lcn/hutool/core/map/ForestMap;->lambda$putAllNode$1(Lcn/hutool/core/map/ForestMap;Ljava/util/function/Function;Ljava/util/function/Function;ZLjava/lang/Object;)V

    return-void
.end method
