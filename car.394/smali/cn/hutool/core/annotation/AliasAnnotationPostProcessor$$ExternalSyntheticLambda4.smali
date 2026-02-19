.class public final synthetic Lcn/hutool/core/annotation/AliasAnnotationPostProcessor$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic f$0:Lcn/hutool/core/map/ForestMap;

.field public final synthetic f$1:Ljava/util/Map;


# direct methods
.method public synthetic constructor <init>(Lcn/hutool/core/map/ForestMap;Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/hutool/core/annotation/AliasAnnotationPostProcessor$$ExternalSyntheticLambda4;->f$0:Lcn/hutool/core/map/ForestMap;

    iput-object p2, p0, Lcn/hutool/core/annotation/AliasAnnotationPostProcessor$$ExternalSyntheticLambda4;->f$1:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcn/hutool/core/annotation/AliasAnnotationPostProcessor$$ExternalSyntheticLambda4;->f$0:Lcn/hutool/core/map/ForestMap;

    iget-object v1, p0, Lcn/hutool/core/annotation/AliasAnnotationPostProcessor$$ExternalSyntheticLambda4;->f$1:Ljava/util/Map;

    check-cast p1, Ljava/lang/String;

    check-cast p2, Lcn/hutool/core/annotation/AnnotationAttribute;

    invoke-static {v0, v1, p1, p2}, Lcn/hutool/core/annotation/AliasAnnotationPostProcessor;->lambda$process$1(Lcn/hutool/core/map/ForestMap;Ljava/util/Map;Ljava/lang/String;Lcn/hutool/core/annotation/AnnotationAttribute;)V

    return-void
.end method
