.class public final synthetic Lcn/hutool/core/annotation/AbstractLinkAnnotationPostProcessor$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:[Lcn/hutool/core/annotation/RelationType;


# direct methods
.method public synthetic constructor <init>([Lcn/hutool/core/annotation/RelationType;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/hutool/core/annotation/AbstractLinkAnnotationPostProcessor$$ExternalSyntheticLambda1;->f$0:[Lcn/hutool/core/annotation/RelationType;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcn/hutool/core/annotation/AbstractLinkAnnotationPostProcessor$$ExternalSyntheticLambda1;->f$0:[Lcn/hutool/core/annotation/RelationType;

    check-cast p1, Lcn/hutool/core/annotation/Link;

    invoke-static {v0, p1}, Lcn/hutool/core/annotation/AbstractLinkAnnotationPostProcessor;->lambda$getLinkAnnotation$2([Lcn/hutool/core/annotation/RelationType;Lcn/hutool/core/annotation/Link;)Z

    move-result p1

    return p1
.end method
