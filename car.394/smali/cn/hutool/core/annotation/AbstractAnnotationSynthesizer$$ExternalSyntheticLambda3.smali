.class public final synthetic Lcn/hutool/core/annotation/AbstractAnnotationSynthesizer$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcn/hutool/core/annotation/AbstractAnnotationSynthesizer;

.field public final synthetic f$1:Lcn/hutool/core/annotation/SynthesizedAnnotationPostProcessor;


# direct methods
.method public synthetic constructor <init>(Lcn/hutool/core/annotation/AbstractAnnotationSynthesizer;Lcn/hutool/core/annotation/SynthesizedAnnotationPostProcessor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/hutool/core/annotation/AbstractAnnotationSynthesizer$$ExternalSyntheticLambda3;->f$0:Lcn/hutool/core/annotation/AbstractAnnotationSynthesizer;

    iput-object p2, p0, Lcn/hutool/core/annotation/AbstractAnnotationSynthesizer$$ExternalSyntheticLambda3;->f$1:Lcn/hutool/core/annotation/SynthesizedAnnotationPostProcessor;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcn/hutool/core/annotation/AbstractAnnotationSynthesizer$$ExternalSyntheticLambda3;->f$0:Lcn/hutool/core/annotation/AbstractAnnotationSynthesizer;

    iget-object v1, p0, Lcn/hutool/core/annotation/AbstractAnnotationSynthesizer$$ExternalSyntheticLambda3;->f$1:Lcn/hutool/core/annotation/SynthesizedAnnotationPostProcessor;

    check-cast p1, Lcn/hutool/core/annotation/SynthesizedAnnotation;

    invoke-virtual {v0, v1, p1}, Lcn/hutool/core/annotation/AbstractAnnotationSynthesizer;->lambda$null$0$cn-hutool-core-annotation-AbstractAnnotationSynthesizer(Lcn/hutool/core/annotation/SynthesizedAnnotationPostProcessor;Lcn/hutool/core/annotation/SynthesizedAnnotation;)V

    return-void
.end method
