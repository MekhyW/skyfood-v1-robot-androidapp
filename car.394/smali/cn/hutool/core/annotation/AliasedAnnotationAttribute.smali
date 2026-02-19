.class public Lcn/hutool/core/annotation/AliasedAnnotationAttribute;
.super Lcn/hutool/core/annotation/AbstractWrappedAnnotationAttribute;
.source "AliasedAnnotationAttribute.java"


# direct methods
.method protected constructor <init>(Lcn/hutool/core/annotation/AnnotationAttribute;Lcn/hutool/core/annotation/AnnotationAttribute;)V
    .locals 0

    .line 14
    invoke-direct {p0, p1, p2}, Lcn/hutool/core/annotation/AbstractWrappedAnnotationAttribute;-><init>(Lcn/hutool/core/annotation/AnnotationAttribute;Lcn/hutool/core/annotation/AnnotationAttribute;)V

    return-void
.end method


# virtual methods
.method public getValue()Ljava/lang/Object;
    .locals 1

    .line 24
    iget-object v0, p0, Lcn/hutool/core/annotation/AliasedAnnotationAttribute;->linked:Lcn/hutool/core/annotation/AnnotationAttribute;

    invoke-interface {v0}, Lcn/hutool/core/annotation/AnnotationAttribute;->isValueEquivalentToDefaultValue()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0}, Lcn/hutool/core/annotation/AbstractWrappedAnnotationAttribute;->getValue()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcn/hutool/core/annotation/AliasedAnnotationAttribute;->linked:Lcn/hutool/core/annotation/AnnotationAttribute;

    invoke-interface {v0}, Lcn/hutool/core/annotation/AnnotationAttribute;->getValue()Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public isValueEquivalentToDefaultValue()Z
    .locals 1

    .line 34
    iget-object v0, p0, Lcn/hutool/core/annotation/AliasedAnnotationAttribute;->linked:Lcn/hutool/core/annotation/AnnotationAttribute;

    invoke-interface {v0}, Lcn/hutool/core/annotation/AnnotationAttribute;->isValueEquivalentToDefaultValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/hutool/core/annotation/AliasedAnnotationAttribute;->original:Lcn/hutool/core/annotation/AnnotationAttribute;

    invoke-interface {v0}, Lcn/hutool/core/annotation/AnnotationAttribute;->isValueEquivalentToDefaultValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
