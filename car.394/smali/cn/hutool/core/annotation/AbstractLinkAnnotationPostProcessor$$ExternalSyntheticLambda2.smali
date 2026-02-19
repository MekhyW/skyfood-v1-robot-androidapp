.class public final synthetic Lcn/hutool/core/annotation/AbstractLinkAnnotationPostProcessor$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic f$0:Lcn/hutool/core/annotation/AbstractLinkAnnotationPostProcessor;

.field public final synthetic f$1:Lcn/hutool/core/annotation/AnnotationSynthesizer;

.field public final synthetic f$2:Lcn/hutool/core/annotation/SynthesizedAnnotation;


# direct methods
.method public synthetic constructor <init>(Lcn/hutool/core/annotation/AbstractLinkAnnotationPostProcessor;Lcn/hutool/core/annotation/AnnotationSynthesizer;Lcn/hutool/core/annotation/SynthesizedAnnotation;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/hutool/core/annotation/AbstractLinkAnnotationPostProcessor$$ExternalSyntheticLambda2;->f$0:Lcn/hutool/core/annotation/AbstractLinkAnnotationPostProcessor;

    iput-object p2, p0, Lcn/hutool/core/annotation/AbstractLinkAnnotationPostProcessor$$ExternalSyntheticLambda2;->f$1:Lcn/hutool/core/annotation/AnnotationSynthesizer;

    iput-object p3, p0, Lcn/hutool/core/annotation/AbstractLinkAnnotationPostProcessor$$ExternalSyntheticLambda2;->f$2:Lcn/hutool/core/annotation/SynthesizedAnnotation;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcn/hutool/core/annotation/AbstractLinkAnnotationPostProcessor$$ExternalSyntheticLambda2;->f$0:Lcn/hutool/core/annotation/AbstractLinkAnnotationPostProcessor;

    iget-object v1, p0, Lcn/hutool/core/annotation/AbstractLinkAnnotationPostProcessor$$ExternalSyntheticLambda2;->f$1:Lcn/hutool/core/annotation/AnnotationSynthesizer;

    iget-object v2, p0, Lcn/hutool/core/annotation/AbstractLinkAnnotationPostProcessor$$ExternalSyntheticLambda2;->f$2:Lcn/hutool/core/annotation/SynthesizedAnnotation;

    check-cast p1, Ljava/lang/String;

    check-cast p2, Lcn/hutool/core/annotation/AnnotationAttribute;

    invoke-virtual {v0, v1, v2, p1, p2}, Lcn/hutool/core/annotation/AbstractLinkAnnotationPostProcessor;->lambda$process$0$cn-hutool-core-annotation-AbstractLinkAnnotationPostProcessor(Lcn/hutool/core/annotation/AnnotationSynthesizer;Lcn/hutool/core/annotation/SynthesizedAnnotation;Ljava/lang/String;Lcn/hutool/core/annotation/AnnotationAttribute;)V

    return-void
.end method
