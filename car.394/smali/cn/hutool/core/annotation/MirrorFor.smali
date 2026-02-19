.class public interface abstract annotation Lcn/hutool/core/annotation/MirrorFor;
.super Ljava/lang/Object;
.source "MirrorFor.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation runtime Lcn/hutool/core/annotation/Link;
    type = .enum Lcn/hutool/core/annotation/RelationType;->MIRROR_FOR:Lcn/hutool/core/annotation/RelationType;
.end annotation

.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Lcn/hutool/core/annotation/MirrorFor;
        annotation = Ljava/lang/annotation/Annotation;
        attribute = ""
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
    .annotation runtime Lcn/hutool/core/annotation/Link;
        annotation = Lcn/hutool/core/annotation/Link;
        attribute = "annotation"
        type = .enum Lcn/hutool/core/annotation/RelationType;->FORCE_ALIAS_FOR:Lcn/hutool/core/annotation/RelationType;
    .end annotation

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
    .annotation runtime Lcn/hutool/core/annotation/Link;
        annotation = Lcn/hutool/core/annotation/Link;
        attribute = "attribute"
        type = .enum Lcn/hutool/core/annotation/RelationType;->FORCE_ALIAS_FOR:Lcn/hutool/core/annotation/RelationType;
    .end annotation
.end method
