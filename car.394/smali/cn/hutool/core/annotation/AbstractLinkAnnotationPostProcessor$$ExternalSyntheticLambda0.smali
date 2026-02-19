.class public final synthetic Lcn/hutool/core/annotation/AbstractLinkAnnotationPostProcessor$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Lcn/hutool/core/annotation/AnnotationAttribute;


# direct methods
.method public synthetic constructor <init>(Lcn/hutool/core/annotation/AnnotationAttribute;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/hutool/core/annotation/AbstractLinkAnnotationPostProcessor$$ExternalSyntheticLambda0;->f$0:Lcn/hutool/core/annotation/AnnotationAttribute;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcn/hutool/core/annotation/AbstractLinkAnnotationPostProcessor$$ExternalSyntheticLambda0;->f$0:Lcn/hutool/core/annotation/AnnotationAttribute;

    check-cast p1, Lcn/hutool/core/annotation/AnnotationAttribute;

    invoke-static {v0, p1}, Lcn/hutool/core/annotation/AbstractLinkAnnotationPostProcessor;->lambda$getLinkAnnotation$1(Lcn/hutool/core/annotation/AnnotationAttribute;Lcn/hutool/core/annotation/AnnotationAttribute;)Lcn/hutool/core/annotation/Link;

    move-result-object p1

    return-object p1
.end method
