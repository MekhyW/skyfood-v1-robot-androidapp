.class public final synthetic Lcn/hutool/core/map/MapUtil$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcn/hutool/core/lang/Editor;


# instance fields
.field public final synthetic f$0:Lcn/hutool/core/lang/Filter;


# direct methods
.method public synthetic constructor <init>(Lcn/hutool/core/lang/Filter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/hutool/core/map/MapUtil$$ExternalSyntheticLambda0;->f$0:Lcn/hutool/core/lang/Filter;

    return-void
.end method


# virtual methods
.method public final edit(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcn/hutool/core/map/MapUtil$$ExternalSyntheticLambda0;->f$0:Lcn/hutool/core/lang/Filter;

    check-cast p1, Ljava/util/Map$Entry;

    invoke-static {v0, p1}, Lcn/hutool/core/map/MapUtil;->lambda$filter$1(Lcn/hutool/core/lang/Filter;Ljava/util/Map$Entry;)Ljava/util/Map$Entry;

    move-result-object p1

    return-object p1
.end method
