.class public final synthetic Lcn/hutool/core/annotation/scanner/GenericAnnotationScanner$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcn/hutool/core/annotation/scanner/GenericAnnotationScanner;

.field public final synthetic f$1:Ljava/util/function/BiConsumer;

.field public final synthetic f$2:Ljava/lang/Integer;

.field public final synthetic f$3:Ljava/util/function/Predicate;


# direct methods
.method public synthetic constructor <init>(Lcn/hutool/core/annotation/scanner/GenericAnnotationScanner;Ljava/util/function/BiConsumer;Ljava/lang/Integer;Ljava/util/function/Predicate;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/hutool/core/annotation/scanner/GenericAnnotationScanner$$ExternalSyntheticLambda1;->f$0:Lcn/hutool/core/annotation/scanner/GenericAnnotationScanner;

    iput-object p2, p0, Lcn/hutool/core/annotation/scanner/GenericAnnotationScanner$$ExternalSyntheticLambda1;->f$1:Ljava/util/function/BiConsumer;

    iput-object p3, p0, Lcn/hutool/core/annotation/scanner/GenericAnnotationScanner$$ExternalSyntheticLambda1;->f$2:Ljava/lang/Integer;

    iput-object p4, p0, Lcn/hutool/core/annotation/scanner/GenericAnnotationScanner$$ExternalSyntheticLambda1;->f$3:Ljava/util/function/Predicate;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 4

    iget-object v0, p0, Lcn/hutool/core/annotation/scanner/GenericAnnotationScanner$$ExternalSyntheticLambda1;->f$0:Lcn/hutool/core/annotation/scanner/GenericAnnotationScanner;

    iget-object v1, p0, Lcn/hutool/core/annotation/scanner/GenericAnnotationScanner$$ExternalSyntheticLambda1;->f$1:Ljava/util/function/BiConsumer;

    iget-object v2, p0, Lcn/hutool/core/annotation/scanner/GenericAnnotationScanner$$ExternalSyntheticLambda1;->f$2:Ljava/lang/Integer;

    iget-object v3, p0, Lcn/hutool/core/annotation/scanner/GenericAnnotationScanner$$ExternalSyntheticLambda1;->f$3:Ljava/util/function/Predicate;

    check-cast p1, Ljava/lang/annotation/Annotation;

    invoke-virtual {v0, v1, v2, v3, p1}, Lcn/hutool/core/annotation/scanner/GenericAnnotationScanner;->lambda$null$5$cn-hutool-core-annotation-scanner-GenericAnnotationScanner(Ljava/util/function/BiConsumer;Ljava/lang/Integer;Ljava/util/function/Predicate;Ljava/lang/annotation/Annotation;)V

    return-void
.end method
