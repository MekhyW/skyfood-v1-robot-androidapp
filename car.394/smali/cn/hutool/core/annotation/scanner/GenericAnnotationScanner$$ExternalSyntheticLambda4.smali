.class public final synthetic Lcn/hutool/core/annotation/scanner/GenericAnnotationScanner$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic f$0:Ljava/util/function/Predicate;

.field public final synthetic f$1:Lcn/hutool/core/map/multi/ListValueMap;


# direct methods
.method public synthetic constructor <init>(Ljava/util/function/Predicate;Lcn/hutool/core/map/multi/ListValueMap;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/hutool/core/annotation/scanner/GenericAnnotationScanner$$ExternalSyntheticLambda4;->f$0:Ljava/util/function/Predicate;

    iput-object p2, p0, Lcn/hutool/core/annotation/scanner/GenericAnnotationScanner$$ExternalSyntheticLambda4;->f$1:Lcn/hutool/core/map/multi/ListValueMap;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcn/hutool/core/annotation/scanner/GenericAnnotationScanner$$ExternalSyntheticLambda4;->f$0:Ljava/util/function/Predicate;

    iget-object v1, p0, Lcn/hutool/core/annotation/scanner/GenericAnnotationScanner$$ExternalSyntheticLambda4;->f$1:Lcn/hutool/core/map/multi/ListValueMap;

    check-cast p1, Ljava/lang/Integer;

    check-cast p2, Ljava/lang/annotation/Annotation;

    invoke-static {v0, v1, p1, p2}, Lcn/hutool/core/annotation/scanner/GenericAnnotationScanner;->lambda$scanElements$4(Ljava/util/function/Predicate;Lcn/hutool/core/map/multi/ListValueMap;Ljava/lang/Integer;Ljava/lang/annotation/Annotation;)V

    return-void
.end method
