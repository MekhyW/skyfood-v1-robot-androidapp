.class public final synthetic Lcn/hutool/core/annotation/GenericSynthesizedAggregateAnnotation$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic f$0:Lcn/hutool/core/annotation/GenericSynthesizedAggregateAnnotation;

.field public final synthetic f$1:Ljava/util/Map;

.field public final synthetic f$2:Ljava/lang/annotation/Annotation;


# direct methods
.method public synthetic constructor <init>(Lcn/hutool/core/annotation/GenericSynthesizedAggregateAnnotation;Ljava/util/Map;Ljava/lang/annotation/Annotation;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/hutool/core/annotation/GenericSynthesizedAggregateAnnotation$$ExternalSyntheticLambda3;->f$0:Lcn/hutool/core/annotation/GenericSynthesizedAggregateAnnotation;

    iput-object p2, p0, Lcn/hutool/core/annotation/GenericSynthesizedAggregateAnnotation$$ExternalSyntheticLambda3;->f$1:Ljava/util/Map;

    iput-object p3, p0, Lcn/hutool/core/annotation/GenericSynthesizedAggregateAnnotation$$ExternalSyntheticLambda3;->f$2:Ljava/lang/annotation/Annotation;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcn/hutool/core/annotation/GenericSynthesizedAggregateAnnotation$$ExternalSyntheticLambda3;->f$0:Lcn/hutool/core/annotation/GenericSynthesizedAggregateAnnotation;

    iget-object v1, p0, Lcn/hutool/core/annotation/GenericSynthesizedAggregateAnnotation$$ExternalSyntheticLambda3;->f$1:Ljava/util/Map;

    iget-object v2, p0, Lcn/hutool/core/annotation/GenericSynthesizedAggregateAnnotation$$ExternalSyntheticLambda3;->f$2:Ljava/lang/annotation/Annotation;

    check-cast p1, Ljava/lang/Integer;

    check-cast p2, Ljava/lang/annotation/Annotation;

    invoke-virtual {v0, v1, v2, p1, p2}, Lcn/hutool/core/annotation/GenericSynthesizedAggregateAnnotation;->lambda$loadAnnotations$0$cn-hutool-core-annotation-GenericSynthesizedAggregateAnnotation(Ljava/util/Map;Ljava/lang/annotation/Annotation;Ljava/lang/Integer;Ljava/lang/annotation/Annotation;)V

    return-void
.end method
