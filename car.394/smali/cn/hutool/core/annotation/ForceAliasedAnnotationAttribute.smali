.class public Lcn/hutool/core/annotation/ForceAliasedAnnotationAttribute;
.super Lcn/hutool/core/annotation/AbstractWrappedAnnotationAttribute;
.source "ForceAliasedAnnotationAttribute.java"


# direct methods
.method protected constructor <init>(Lcn/hutool/core/annotation/AnnotationAttribute;Lcn/hutool/core/annotation/AnnotationAttribute;)V
    .locals 0

    .line 16
    invoke-direct {p0, p1, p2}, Lcn/hutool/core/annotation/AbstractWrappedAnnotationAttribute;-><init>(Lcn/hutool/core/annotation/AnnotationAttribute;Lcn/hutool/core/annotation/AnnotationAttribute;)V

    return-void
.end method


# virtual methods
.method public getAttributeType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 46
    iget-object v0, p0, Lcn/hutool/core/annotation/ForceAliasedAnnotationAttribute;->linked:Lcn/hutool/core/annotation/AnnotationAttribute;

    invoke-interface {v0}, Lcn/hutool/core/annotation/AnnotationAttribute;->getAttributeType()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1

    .line 26
    iget-object v0, p0, Lcn/hutool/core/annotation/ForceAliasedAnnotationAttribute;->linked:Lcn/hutool/core/annotation/AnnotationAttribute;

    invoke-interface {v0}, Lcn/hutool/core/annotation/AnnotationAttribute;->getValue()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public isValueEquivalentToDefaultValue()Z
    .locals 1

    .line 36
    iget-object v0, p0, Lcn/hutool/core/annotation/ForceAliasedAnnotationAttribute;->linked:Lcn/hutool/core/annotation/AnnotationAttribute;

    invoke-interface {v0}, Lcn/hutool/core/annotation/AnnotationAttribute;->isValueEquivalentToDefaultValue()Z

    move-result v0

    return v0
.end method
