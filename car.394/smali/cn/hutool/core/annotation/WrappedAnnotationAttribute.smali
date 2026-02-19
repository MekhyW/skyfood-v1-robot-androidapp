.class public interface abstract Lcn/hutool/core/annotation/WrappedAnnotationAttribute;
.super Ljava/lang/Object;
.source "WrappedAnnotationAttribute.java"

# interfaces
.implements Lcn/hutool/core/annotation/AnnotationAttribute;


# virtual methods
.method public abstract getAllLinkedNonWrappedAttributes()Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcn/hutool/core/annotation/AnnotationAttribute;",
            ">;"
        }
    .end annotation
.end method

.method public getAnnotation()Ljava/lang/annotation/Annotation;
    .locals 1

    .line 71
    invoke-interface {p0}, Lcn/hutool/core/annotation/WrappedAnnotationAttribute;->getOriginal()Lcn/hutool/core/annotation/AnnotationAttribute;

    move-result-object v0

    invoke-interface {v0}, Lcn/hutool/core/annotation/AnnotationAttribute;->getAnnotation()Ljava/lang/annotation/Annotation;

    move-result-object v0

    return-object v0
.end method

.method public getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/annotation/Annotation;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 112
    invoke-interface {p0}, Lcn/hutool/core/annotation/WrappedAnnotationAttribute;->getOriginal()Lcn/hutool/core/annotation/AnnotationAttribute;

    move-result-object v0

    invoke-interface {v0, p1}, Lcn/hutool/core/annotation/AnnotationAttribute;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p1

    return-object p1
.end method

.method public getAttribute()Ljava/lang/reflect/Method;
    .locals 1

    .line 81
    invoke-interface {p0}, Lcn/hutool/core/annotation/WrappedAnnotationAttribute;->getOriginal()Lcn/hutool/core/annotation/AnnotationAttribute;

    move-result-object v0

    invoke-interface {v0}, Lcn/hutool/core/annotation/AnnotationAttribute;->getAttribute()Ljava/lang/reflect/Method;

    move-result-object v0

    return-object v0
.end method

.method public getAttributeType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 101
    invoke-interface {p0}, Lcn/hutool/core/annotation/WrappedAnnotationAttribute;->getOriginal()Lcn/hutool/core/annotation/AnnotationAttribute;

    move-result-object v0

    invoke-interface {v0}, Lcn/hutool/core/annotation/AnnotationAttribute;->getAttributeType()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public abstract getLinked()Lcn/hutool/core/annotation/AnnotationAttribute;
.end method

.method public abstract getNonWrappedOriginal()Lcn/hutool/core/annotation/AnnotationAttribute;
.end method

.method public abstract getOriginal()Lcn/hutool/core/annotation/AnnotationAttribute;
.end method

.method public abstract isValueEquivalentToDefaultValue()Z
.end method

.method public isWrapped()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
