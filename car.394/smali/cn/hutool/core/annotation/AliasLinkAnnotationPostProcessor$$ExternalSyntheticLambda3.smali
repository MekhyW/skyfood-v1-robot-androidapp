.class public final synthetic Lcn/hutool/core/annotation/AliasLinkAnnotationPostProcessor$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/UnaryOperator;


# instance fields
.field public final synthetic f$0:Ljava/util/function/BinaryOperator;

.field public final synthetic f$1:Lcn/hutool/core/annotation/AnnotationAttribute;


# direct methods
.method public synthetic constructor <init>(Ljava/util/function/BinaryOperator;Lcn/hutool/core/annotation/AnnotationAttribute;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/hutool/core/annotation/AliasLinkAnnotationPostProcessor$$ExternalSyntheticLambda3;->f$0:Ljava/util/function/BinaryOperator;

    iput-object p2, p0, Lcn/hutool/core/annotation/AliasLinkAnnotationPostProcessor$$ExternalSyntheticLambda3;->f$1:Lcn/hutool/core/annotation/AnnotationAttribute;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcn/hutool/core/annotation/AliasLinkAnnotationPostProcessor$$ExternalSyntheticLambda3;->f$0:Ljava/util/function/BinaryOperator;

    iget-object v1, p0, Lcn/hutool/core/annotation/AliasLinkAnnotationPostProcessor$$ExternalSyntheticLambda3;->f$1:Lcn/hutool/core/annotation/AnnotationAttribute;

    check-cast p1, Lcn/hutool/core/annotation/AnnotationAttribute;

    invoke-static {v0, v1, p1}, Lcn/hutool/core/annotation/AliasLinkAnnotationPostProcessor;->lambda$null$1(Ljava/util/function/BinaryOperator;Lcn/hutool/core/annotation/AnnotationAttribute;Lcn/hutool/core/annotation/AnnotationAttribute;)Lcn/hutool/core/annotation/AnnotationAttribute;

    move-result-object p1

    return-object p1
.end method
