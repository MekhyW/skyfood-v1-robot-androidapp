.class public interface abstract Lcn/hutool/core/annotation/AnnotationAttribute;
.super Ljava/lang/Object;
.source "AnnotationAttribute.java"


# virtual methods
.method public abstract getAnnotation()Ljava/lang/annotation/Annotation;
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

    .line 92
    invoke-interface {p0}, Lcn/hutool/core/annotation/AnnotationAttribute;->getAttribute()Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p1

    return-object p1
.end method

.method public getAnnotationType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 47
    invoke-interface {p0}, Lcn/hutool/core/annotation/AnnotationAttribute;->getAttribute()Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public abstract getAttribute()Ljava/lang/reflect/Method;
.end method

.method public getAttributeName()Ljava/lang/String;
    .locals 1

    .line 56
    invoke-interface {p0}, Lcn/hutool/core/annotation/AnnotationAttribute;->getAttribute()Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

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

    .line 81
    invoke-interface {p0}, Lcn/hutool/core/annotation/AnnotationAttribute;->getAttribute()Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 3

    .line 65
    invoke-interface {p0}, Lcn/hutool/core/annotation/AnnotationAttribute;->getAnnotation()Ljava/lang/annotation/Annotation;

    move-result-object v0

    invoke-interface {p0}, Lcn/hutool/core/annotation/AnnotationAttribute;->getAttribute()Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcn/hutool/core/util/ReflectUtil;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public abstract isValueEquivalentToDefaultValue()Z
.end method

.method public isWrapped()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
