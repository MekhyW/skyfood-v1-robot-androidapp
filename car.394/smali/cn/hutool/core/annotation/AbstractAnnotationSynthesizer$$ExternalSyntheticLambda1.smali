.class public final synthetic Lcn/hutool/core/annotation/AbstractAnnotationSynthesizer$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcn/hutool/core/annotation/AbstractAnnotationSynthesizer;


# direct methods
.method public synthetic constructor <init>(Lcn/hutool/core/annotation/AbstractAnnotationSynthesizer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/hutool/core/annotation/AbstractAnnotationSynthesizer$$ExternalSyntheticLambda1;->f$0:Lcn/hutool/core/annotation/AbstractAnnotationSynthesizer;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcn/hutool/core/annotation/AbstractAnnotationSynthesizer$$ExternalSyntheticLambda1;->f$0:Lcn/hutool/core/annotation/AbstractAnnotationSynthesizer;

    check-cast p1, Lcn/hutool/core/annotation/SynthesizedAnnotationPostProcessor;

    invoke-virtual {v0, p1}, Lcn/hutool/core/annotation/AbstractAnnotationSynthesizer;->lambda$new$1$cn-hutool-core-annotation-AbstractAnnotationSynthesizer(Lcn/hutool/core/annotation/SynthesizedAnnotationPostProcessor;)V

    return-void
.end method
