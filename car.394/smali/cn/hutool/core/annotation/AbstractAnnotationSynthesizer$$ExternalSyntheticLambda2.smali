.class public final synthetic Lcn/hutool/core/annotation/AbstractAnnotationSynthesizer$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Lcn/hutool/core/annotation/AbstractAnnotationSynthesizer;

.field public final synthetic f$1:Ljava/lang/Class;


# direct methods
.method public synthetic constructor <init>(Lcn/hutool/core/annotation/AbstractAnnotationSynthesizer;Ljava/lang/Class;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/hutool/core/annotation/AbstractAnnotationSynthesizer$$ExternalSyntheticLambda2;->f$0:Lcn/hutool/core/annotation/AbstractAnnotationSynthesizer;

    iput-object p2, p0, Lcn/hutool/core/annotation/AbstractAnnotationSynthesizer$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcn/hutool/core/annotation/AbstractAnnotationSynthesizer$$ExternalSyntheticLambda2;->f$0:Lcn/hutool/core/annotation/AbstractAnnotationSynthesizer;

    iget-object v1, p0, Lcn/hutool/core/annotation/AbstractAnnotationSynthesizer$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Class;

    check-cast p1, Ljava/lang/Class;

    invoke-virtual {v0, v1, p1}, Lcn/hutool/core/annotation/AbstractAnnotationSynthesizer;->lambda$synthesize$2$cn-hutool-core-annotation-AbstractAnnotationSynthesizer(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p1

    return-object p1
.end method
