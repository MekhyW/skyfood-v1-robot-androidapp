.class public final synthetic Lcn/hutool/core/map/MapUtil$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Ljava/util/function/BiFunction;


# direct methods
.method public synthetic constructor <init>(Ljava/util/function/BiFunction;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/hutool/core/map/MapUtil$$ExternalSyntheticLambda4;->f$0:Ljava/util/function/BiFunction;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcn/hutool/core/map/MapUtil$$ExternalSyntheticLambda4;->f$0:Ljava/util/function/BiFunction;

    check-cast p1, Ljava/util/Map$Entry;

    invoke-static {v0, p1}, Lcn/hutool/core/map/MapUtil;->lambda$map$2(Ljava/util/function/BiFunction;Ljava/util/Map$Entry;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
