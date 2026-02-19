.class public final synthetic Lcn/hutool/core/map/LinkedForestMap$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Lcn/hutool/core/map/LinkedForestMap;


# direct methods
.method public synthetic constructor <init>(Lcn/hutool/core/map/LinkedForestMap;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/hutool/core/map/LinkedForestMap$$ExternalSyntheticLambda6;->f$0:Lcn/hutool/core/map/LinkedForestMap;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcn/hutool/core/map/LinkedForestMap$$ExternalSyntheticLambda6;->f$0:Lcn/hutool/core/map/LinkedForestMap;

    check-cast p1, Ljava/util/Map$Entry;

    invoke-static {v0, p1}, Lcn/hutool/core/map/LinkedForestMap;->$r8$lambda$cmFKevN0G7L5VEXcm3YsCxT1Ysg(Lcn/hutool/core/map/LinkedForestMap;Ljava/util/Map$Entry;)Ljava/util/Map$Entry;

    move-result-object p1

    return-object p1
.end method
