.class public interface abstract annotation Lcn/hutool/core/annotation/Link;
.super Ljava/lang/Object;
.source "Link.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Lcn/hutool/core/annotation/Link;
        annotation = Ljava/lang/annotation/Annotation;
        attribute = ""
        type = .enum Lcn/hutool/core/annotation/RelationType;->MIRROR_FOR:Lcn/hutool/core/annotation/RelationType;
    .end subannotation
.end annotation

.annotation runtime Ljava/lang/annotation/Documented;
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->RUNTIME:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation runtime Ljava/lang/annotation/Target;
    value = {
        .enum Ljava/lang/annotation/ElementType;->METHOD:Ljava/lang/annotation/ElementType;,
        .enum Ljava/lang/annotation/ElementType;->ANNOTATION_TYPE:Ljava/lang/annotation/ElementType;
    }
.end annotation


# virtual methods
.method public abstract annotation()Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;"
        }
    .end annotation
.end method

.method public abstract attribute()Ljava/lang/String;
.end method

.method public abstract type()Lcn/hutool/core/annotation/RelationType;
.end method
