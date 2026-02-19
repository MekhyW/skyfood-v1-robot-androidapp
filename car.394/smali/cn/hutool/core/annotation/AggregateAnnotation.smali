.class public interface abstract Lcn/hutool/core/annotation/AggregateAnnotation;
.super Ljava/lang/Object;
.source "AggregateAnnotation.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# virtual methods
.method public abstract getAnnotations()[Ljava/lang/annotation/Annotation;
.end method

.method public abstract isAnnotationPresent(Ljava/lang/Class;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;)Z"
        }
    .end annotation
.end method
