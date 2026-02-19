.class public final synthetic Lcn/hutool/core/annotation/AliasLinkAnnotationPostProcessor$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcn/hutool/core/annotation/AliasLinkAnnotationPostProcessor;

.field public final synthetic f$1:Lcn/hutool/core/annotation/AnnotationSynthesizer;

.field public final synthetic f$2:Lcn/hutool/core/annotation/AnnotationAttribute;

.field public final synthetic f$3:Ljava/util/function/BinaryOperator;


# direct methods
.method public synthetic constructor <init>(Lcn/hutool/core/annotation/AliasLinkAnnotationPostProcessor;Lcn/hutool/core/annotation/AnnotationSynthesizer;Lcn/hutool/core/annotation/AnnotationAttribute;Ljava/util/function/BinaryOperator;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/hutool/core/annotation/AliasLinkAnnotationPostProcessor$$ExternalSyntheticLambda0;->f$0:Lcn/hutool/core/annotation/AliasLinkAnnotationPostProcessor;

    iput-object p2, p0, Lcn/hutool/core/annotation/AliasLinkAnnotationPostProcessor$$ExternalSyntheticLambda0;->f$1:Lcn/hutool/core/annotation/AnnotationSynthesizer;

    iput-object p3, p0, Lcn/hutool/core/annotation/AliasLinkAnnotationPostProcessor$$ExternalSyntheticLambda0;->f$2:Lcn/hutool/core/annotation/AnnotationAttribute;

    iput-object p4, p0, Lcn/hutool/core/annotation/AliasLinkAnnotationPostProcessor$$ExternalSyntheticLambda0;->f$3:Ljava/util/function/BinaryOperator;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 4

    iget-object v0, p0, Lcn/hutool/core/annotation/AliasLinkAnnotationPostProcessor$$ExternalSyntheticLambda0;->f$0:Lcn/hutool/core/annotation/AliasLinkAnnotationPostProcessor;

    iget-object v1, p0, Lcn/hutool/core/annotation/AliasLinkAnnotationPostProcessor$$ExternalSyntheticLambda0;->f$1:Lcn/hutool/core/annotation/AnnotationSynthesizer;

    iget-object v2, p0, Lcn/hutool/core/annotation/AliasLinkAnnotationPostProcessor$$ExternalSyntheticLambda0;->f$2:Lcn/hutool/core/annotation/AnnotationAttribute;

    iget-object v3, p0, Lcn/hutool/core/annotation/AliasLinkAnnotationPostProcessor$$ExternalSyntheticLambda0;->f$3:Ljava/util/function/BinaryOperator;

    check-cast p1, Lcn/hutool/core/annotation/AnnotationAttribute;

    invoke-virtual {v0, v1, v2, v3, p1}, Lcn/hutool/core/annotation/AliasLinkAnnotationPostProcessor;->lambda$wrappingLinkedAttribute$0$cn-hutool-core-annotation-AliasLinkAnnotationPostProcessor(Lcn/hutool/core/annotation/AnnotationSynthesizer;Lcn/hutool/core/annotation/AnnotationAttribute;Ljava/util/function/BinaryOperator;Lcn/hutool/core/annotation/AnnotationAttribute;)V

    return-void
.end method
