.class public Lcn/hutool/core/annotation/MirroredAnnotationAttribute;
.super Lcn/hutool/core/annotation/AbstractWrappedAnnotationAttribute;
.source "MirroredAnnotationAttribute.java"


# direct methods
.method public constructor <init>(Lcn/hutool/core/annotation/AnnotationAttribute;Lcn/hutool/core/annotation/AnnotationAttribute;)V
    .locals 0

    .line 15
    invoke-direct {p0, p1, p2}, Lcn/hutool/core/annotation/AbstractWrappedAnnotationAttribute;-><init>(Lcn/hutool/core/annotation/AnnotationAttribute;Lcn/hutool/core/annotation/AnnotationAttribute;)V

    return-void
.end method


# virtual methods
.method public getValue()Ljava/lang/Object;
    .locals 5

    .line 20
    iget-object v0, p0, Lcn/hutool/core/annotation/MirroredAnnotationAttribute;->original:Lcn/hutool/core/annotation/AnnotationAttribute;

    invoke-interface {v0}, Lcn/hutool/core/annotation/AnnotationAttribute;->isValueEquivalentToDefaultValue()Z

    move-result v0

    .line 21
    iget-object v1, p0, Lcn/hutool/core/annotation/MirroredAnnotationAttribute;->linked:Lcn/hutool/core/annotation/AnnotationAttribute;

    invoke-interface {v1}, Lcn/hutool/core/annotation/AnnotationAttribute;->isValueEquivalentToDefaultValue()Z

    move-result v1

    .line 22
    iget-object v2, p0, Lcn/hutool/core/annotation/MirroredAnnotationAttribute;->original:Lcn/hutool/core/annotation/AnnotationAttribute;

    invoke-interface {v2}, Lcn/hutool/core/annotation/AnnotationAttribute;->getValue()Ljava/lang/Object;

    move-result-object v2

    .line 23
    iget-object v3, p0, Lcn/hutool/core/annotation/MirroredAnnotationAttribute;->linked:Lcn/hutool/core/annotation/AnnotationAttribute;

    invoke-interface {v3}, Lcn/hutool/core/annotation/AnnotationAttribute;->getValue()Ljava/lang/Object;

    move-result-object v3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    .line 27
    iget-object v1, p0, Lcn/hutool/core/annotation/MirroredAnnotationAttribute;->original:Lcn/hutool/core/annotation/AnnotationAttribute;

    .line 30
    invoke-interface {v1}, Lcn/hutool/core/annotation/AnnotationAttribute;->getAttribute()Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v4, 0x0

    aput-object v1, v0, v4

    iget-object v1, p0, Lcn/hutool/core/annotation/MirroredAnnotationAttribute;->linked:Lcn/hutool/core/annotation/AnnotationAttribute;

    invoke-interface {v1}, Lcn/hutool/core/annotation/AnnotationAttribute;->getAttribute()Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v4, 0x1

    aput-object v1, v0, v4

    const/4 v1, 0x2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    aput-object v3, v0, v1

    const-string v1, "the values of attributes [{}] and [{}] that mirror each other are different: [{}] <==> [{}]"

    .line 27
    invoke-static {v2, v3, v1, v0}, Lcn/hutool/core/lang/Assert;->equals(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v2

    :cond_0
    if-eqz v0, :cond_1

    move-object v2, v3

    :cond_1
    return-object v2
.end method

.method public isValueEquivalentToDefaultValue()Z
    .locals 1

    .line 46
    iget-object v0, p0, Lcn/hutool/core/annotation/MirroredAnnotationAttribute;->original:Lcn/hutool/core/annotation/AnnotationAttribute;

    invoke-interface {v0}, Lcn/hutool/core/annotation/AnnotationAttribute;->isValueEquivalentToDefaultValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/hutool/core/annotation/MirroredAnnotationAttribute;->linked:Lcn/hutool/core/annotation/AnnotationAttribute;

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
