.class public interface abstract Lcn/hutool/core/annotation/AnnotationSynthesizer;
.super Ljava/lang/Object;
.source "AnnotationSynthesizer.java"


# virtual methods
.method public abstract getAllSynthesizedAnnotation()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;",
            "Lcn/hutool/core/annotation/SynthesizedAnnotation;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getAnnotationPostProcessors()Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcn/hutool/core/annotation/SynthesizedAnnotationPostProcessor;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getAnnotationSelector()Lcn/hutool/core/annotation/SynthesizedAnnotationSelector;
.end method

.method public abstract getSource()Ljava/lang/Object;
.end method

.method public abstract getSynthesizedAnnotation(Ljava/lang/Class;)Lcn/hutool/core/annotation/SynthesizedAnnotation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcn/hutool/core/annotation/SynthesizedAnnotation;"
        }
    .end annotation
.end method

.method public abstract synthesize(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/annotation/Annotation;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation
.end method
