.class public Lcn/hutool/core/annotation/CacheableAnnotationAttribute;
.super Ljava/lang/Object;
.source "CacheableAnnotationAttribute.java"

# interfaces
.implements Lcn/hutool/core/annotation/AnnotationAttribute;


# instance fields
.field private final annotation:Ljava/lang/annotation/Annotation;

.field private final attribute:Ljava/lang/reflect/Method;

.field private defaultValue:Ljava/lang/Object;

.field private defaultValueInvoked:Z

.field private value:Ljava/lang/Object;

.field private valueInvoked:Z


# direct methods
.method public constructor <init>(Ljava/lang/annotation/Annotation;Ljava/lang/reflect/Method;)V
    .locals 3

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "annotation must not null"

    .line 27
    invoke-static {p1, v2, v1}, Lcn/hutool/core/lang/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "attribute must not null"

    new-array v2, v0, [Ljava/lang/Object;

    .line 28
    invoke-static {p2, v1, v2}, Lcn/hutool/core/lang/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    iput-object p1, p0, Lcn/hutool/core/annotation/CacheableAnnotationAttribute;->annotation:Ljava/lang/annotation/Annotation;

    .line 30
    iput-object p2, p0, Lcn/hutool/core/annotation/CacheableAnnotationAttribute;->attribute:Ljava/lang/reflect/Method;

    .line 31
    iput-boolean v0, p0, Lcn/hutool/core/annotation/CacheableAnnotationAttribute;->valueInvoked:Z

    .line 32
    iput-boolean v0, p0, Lcn/hutool/core/annotation/CacheableAnnotationAttribute;->defaultValueInvoked:Z

    return-void
.end method


# virtual methods
.method public getAnnotation()Ljava/lang/annotation/Annotation;
    .locals 1

    .line 37
    iget-object v0, p0, Lcn/hutool/core/annotation/CacheableAnnotationAttribute;->annotation:Ljava/lang/annotation/Annotation;

    return-object v0
.end method

.method public getAttribute()Ljava/lang/reflect/Method;
    .locals 1

    .line 42
    iget-object v0, p0, Lcn/hutool/core/annotation/CacheableAnnotationAttribute;->attribute:Ljava/lang/reflect/Method;

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 3

    .line 47
    iget-boolean v0, p0, Lcn/hutool/core/annotation/CacheableAnnotationAttribute;->valueInvoked:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 48
    iput-boolean v0, p0, Lcn/hutool/core/annotation/CacheableAnnotationAttribute;->valueInvoked:Z

    .line 49
    iget-object v0, p0, Lcn/hutool/core/annotation/CacheableAnnotationAttribute;->annotation:Ljava/lang/annotation/Annotation;

    iget-object v1, p0, Lcn/hutool/core/annotation/CacheableAnnotationAttribute;->attribute:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcn/hutool/core/util/ReflectUtil;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcn/hutool/core/annotation/CacheableAnnotationAttribute;->value:Ljava/lang/Object;

    .line 51
    :cond_0
    iget-object v0, p0, Lcn/hutool/core/annotation/CacheableAnnotationAttribute;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public isValueEquivalentToDefaultValue()Z
    .locals 2

    .line 56
    iget-boolean v0, p0, Lcn/hutool/core/annotation/CacheableAnnotationAttribute;->defaultValueInvoked:Z

    if-nez v0, :cond_0

    .line 57
    iget-object v0, p0, Lcn/hutool/core/annotation/CacheableAnnotationAttribute;->attribute:Ljava/lang/reflect/Method;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getDefaultValue()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcn/hutool/core/annotation/CacheableAnnotationAttribute;->defaultValue:Ljava/lang/Object;

    const/4 v0, 0x1

    .line 58
    iput-boolean v0, p0, Lcn/hutool/core/annotation/CacheableAnnotationAttribute;->defaultValueInvoked:Z

    .line 60
    :cond_0
    invoke-virtual {p0}, Lcn/hutool/core/annotation/CacheableAnnotationAttribute;->getValue()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcn/hutool/core/annotation/CacheableAnnotationAttribute;->defaultValue:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcn/hutool/core/util/ObjectUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
