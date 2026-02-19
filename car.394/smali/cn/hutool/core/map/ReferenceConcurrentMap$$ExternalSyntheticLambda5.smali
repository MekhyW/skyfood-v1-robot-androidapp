.class public final synthetic Lcn/hutool/core/map/ReferenceConcurrentMap$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/BiFunction;


# instance fields
.field public final synthetic f$0:Ljava/util/function/BiFunction;


# direct methods
.method public synthetic constructor <init>(Ljava/util/function/BiFunction;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/hutool/core/map/ReferenceConcurrentMap$$ExternalSyntheticLambda5;->f$0:Ljava/util/function/BiFunction;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcn/hutool/core/map/ReferenceConcurrentMap$$ExternalSyntheticLambda5;->f$0:Ljava/util/function/BiFunction;

    check-cast p1, Ljava/lang/ref/Reference;

    invoke-static {v0, p1, p2}, Lcn/hutool/core/map/ReferenceConcurrentMap;->lambda$replaceAll$0(Ljava/util/function/BiFunction;Ljava/lang/ref/Reference;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
