.class public final synthetic Lcn/hutool/core/annotation/AliasAnnotationPostProcessor$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic f$0:Ljava/util/Map;

.field public final synthetic f$1:Lcn/hutool/core/map/ForestMap;


# direct methods
.method public synthetic constructor <init>(Ljava/util/Map;Lcn/hutool/core/map/ForestMap;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/hutool/core/annotation/AliasAnnotationPostProcessor$$ExternalSyntheticLambda3;->f$0:Ljava/util/Map;

    iput-object p2, p0, Lcn/hutool/core/annotation/AliasAnnotationPostProcessor$$ExternalSyntheticLambda3;->f$1:Lcn/hutool/core/map/ForestMap;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcn/hutool/core/annotation/AliasAnnotationPostProcessor$$ExternalSyntheticLambda3;->f$0:Ljava/util/Map;

    iget-object v1, p0, Lcn/hutool/core/annotation/AliasAnnotationPostProcessor$$ExternalSyntheticLambda3;->f$1:Lcn/hutool/core/map/ForestMap;

    check-cast p1, Ljava/lang/String;

    check-cast p2, Lcn/hutool/core/annotation/AnnotationAttribute;

    invoke-static {v0, v1, p1, p2}, Lcn/hutool/core/annotation/AliasAnnotationPostProcessor;->lambda$process$0(Ljava/util/Map;Lcn/hutool/core/map/ForestMap;Ljava/lang/String;Lcn/hutool/core/annotation/AnnotationAttribute;)V

    return-void
.end method
