.class public abstract Lcn/hutool/core/annotation/AbstractAnnotationSynthesizer;
.super Ljava/lang/Object;
.source "AbstractAnnotationSynthesizer.java"

# interfaces
.implements Lcn/hutool/core/annotation/AnnotationSynthesizer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcn/hutool/core/annotation/AnnotationSynthesizer;"
    }
.end annotation


# instance fields
.field protected final annotationScanner:Lcn/hutool/core/annotation/scanner/AnnotationScanner;

.field protected final annotationSelector:Lcn/hutool/core/annotation/SynthesizedAnnotationSelector;

.field protected final postProcessors:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lcn/hutool/core/annotation/SynthesizedAnnotationPostProcessor;",
            ">;"
        }
    .end annotation
.end field

.field protected final source:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field protected final synthesizedAnnotationMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;",
            "Lcn/hutool/core/annotation/SynthesizedAnnotation;",
            ">;"
        }
    .end annotation
.end field

.field private final synthesizedProxyAnnotations:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;",
            "Ljava/lang/annotation/Annotation;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Ljava/lang/Object;Lcn/hutool/core/annotation/SynthesizedAnnotationSelector;Ljava/util/Collection;Lcn/hutool/core/annotation/scanner/AnnotationScanner;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcn/hutool/core/annotation/SynthesizedAnnotationSelector;",
            "Ljava/util/Collection<",
            "Lcn/hutool/core/annotation/SynthesizedAnnotationPostProcessor;",
            ">;",
            "Lcn/hutool/core/annotation/scanner/AnnotationScanner;",
            ")V"
        }
    .end annotation

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "source must not null"

    .line 65
    invoke-static {p1, v2, v1}, Lcn/hutool/core/lang/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "annotationSelector must not null"

    new-array v2, v0, [Ljava/lang/Object;

    .line 66
    invoke-static {p2, v1, v2}, Lcn/hutool/core/lang/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "annotationPostProcessors must not null"

    new-array v2, v0, [Ljava/lang/Object;

    .line 67
    invoke-static {p3, v1, v2}, Lcn/hutool/core/lang/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "annotationScanner must not null"

    new-array v0, v0, [Ljava/lang/Object;

    .line 68
    invoke-static {p3, v1, v0}, Lcn/hutool/core/lang/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    iput-object p1, p0, Lcn/hutool/core/annotation/AbstractAnnotationSynthesizer;->source:Ljava/lang/Object;

    .line 71
    iput-object p2, p0, Lcn/hutool/core/annotation/AbstractAnnotationSynthesizer;->annotationSelector:Lcn/hutool/core/annotation/SynthesizedAnnotationSelector;

    .line 72
    iput-object p4, p0, Lcn/hutool/core/annotation/AbstractAnnotationSynthesizer;->annotationScanner:Lcn/hutool/core/annotation/scanner/AnnotationScanner;

    .line 73
    new-instance p1, Lcn/hutool/core/annotation/AbstractAnnotationSynthesizer$$ExternalSyntheticLambda0;

    invoke-direct {p1}, Lcn/hutool/core/annotation/AbstractAnnotationSynthesizer$$ExternalSyntheticLambda0;-><init>()V

    .line 74
    invoke-static {p1}, Ljava/util/Comparator;->comparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    move-result-object p1

    invoke-static {p3, p1}, Lcn/hutool/core/collection/CollUtil;->sort(Ljava/util/Collection;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object p1

    .line 73
    invoke-static {p1}, Lcn/hutool/core/collection/CollUtil;->unmodifiable(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object p1

    iput-object p1, p0, Lcn/hutool/core/annotation/AbstractAnnotationSynthesizer;->postProcessors:Ljava/util/Collection;

    .line 76
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lcn/hutool/core/annotation/AbstractAnnotationSynthesizer;->synthesizedProxyAnnotations:Ljava/util/Map;

    .line 77
    invoke-virtual {p0}, Lcn/hutool/core/annotation/AbstractAnnotationSynthesizer;->loadAnnotations()Ljava/util/Map;

    move-result-object p1

    invoke-static {p1}, Lcn/hutool/core/map/MapUtil;->unmodifiable(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcn/hutool/core/annotation/AbstractAnnotationSynthesizer;->synthesizedAnnotationMap:Ljava/util/Map;

    .line 78
    new-instance p1, Lcn/hutool/core/annotation/AbstractAnnotationSynthesizer$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0}, Lcn/hutool/core/annotation/AbstractAnnotationSynthesizer$$ExternalSyntheticLambda1;-><init>(Lcn/hutool/core/annotation/AbstractAnnotationSynthesizer;)V

    invoke-interface {p3, p1}, Ljava/util/Collection;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method


# virtual methods
.method public getAllSynthesizedAnnotation()Ljava/util/Map;
    .locals 1
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

    .line 148
    iget-object v0, p0, Lcn/hutool/core/annotation/AbstractAnnotationSynthesizer;->synthesizedAnnotationMap:Ljava/util/Map;

    return-object v0
.end method

.method public getAnnotationPostProcessors()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcn/hutool/core/annotation/SynthesizedAnnotationPostProcessor;",
            ">;"
        }
    .end annotation

    .line 127
    iget-object v0, p0, Lcn/hutool/core/annotation/AbstractAnnotationSynthesizer;->postProcessors:Ljava/util/Collection;

    return-object v0
.end method

.method public getAnnotationSelector()Lcn/hutool/core/annotation/SynthesizedAnnotationSelector;
    .locals 1

    .line 117
    iget-object v0, p0, Lcn/hutool/core/annotation/AbstractAnnotationSynthesizer;->annotationSelector:Lcn/hutool/core/annotation/SynthesizedAnnotationSelector;

    return-object v0
.end method

.method public getSource()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 107
    iget-object v0, p0, Lcn/hutool/core/annotation/AbstractAnnotationSynthesizer;->source:Ljava/lang/Object;

    return-object v0
.end method

.method public getSynthesizedAnnotation(Ljava/lang/Class;)Lcn/hutool/core/annotation/SynthesizedAnnotation;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcn/hutool/core/annotation/SynthesizedAnnotation;"
        }
    .end annotation

    .line 138
    iget-object v0, p0, Lcn/hutool/core/annotation/AbstractAnnotationSynthesizer;->synthesizedAnnotationMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/hutool/core/annotation/SynthesizedAnnotation;

    return-object p1
.end method

.method synthetic lambda$new$1$cn-hutool-core-annotation-AbstractAnnotationSynthesizer(Lcn/hutool/core/annotation/SynthesizedAnnotationPostProcessor;)V
    .locals 2

    .line 79
    iget-object v0, p0, Lcn/hutool/core/annotation/AbstractAnnotationSynthesizer;->synthesizedAnnotationMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    new-instance v1, Lcn/hutool/core/annotation/AbstractAnnotationSynthesizer$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1}, Lcn/hutool/core/annotation/AbstractAnnotationSynthesizer$$ExternalSyntheticLambda3;-><init>(Lcn/hutool/core/annotation/AbstractAnnotationSynthesizer;Lcn/hutool/core/annotation/SynthesizedAnnotationPostProcessor;)V

    invoke-interface {v0, v1}, Ljava/util/Collection;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method synthetic lambda$null$0$cn-hutool-core-annotation-AbstractAnnotationSynthesizer(Lcn/hutool/core/annotation/SynthesizedAnnotationPostProcessor;Lcn/hutool/core/annotation/SynthesizedAnnotation;)V
    .locals 0

    .line 79
    invoke-interface {p1, p2, p0}, Lcn/hutool/core/annotation/SynthesizedAnnotationPostProcessor;->process(Lcn/hutool/core/annotation/SynthesizedAnnotation;Lcn/hutool/core/annotation/AnnotationSynthesizer;)V

    return-void
.end method

.method synthetic lambda$synthesize$2$cn-hutool-core-annotation-AbstractAnnotationSynthesizer(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;
    .locals 1

    .line 162
    iget-object p2, p0, Lcn/hutool/core/annotation/AbstractAnnotationSynthesizer;->synthesizedAnnotationMap:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcn/hutool/core/annotation/SynthesizedAnnotation;

    .line 163
    invoke-static {p2}, Lcn/hutool/core/util/ObjectUtil;->isNull(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 164
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcn/hutool/core/annotation/AbstractAnnotationSynthesizer;->synthesize(Ljava/lang/Class;Lcn/hutool/core/annotation/SynthesizedAnnotation;)Ljava/lang/annotation/Annotation;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method protected abstract loadAnnotations()Ljava/util/Map;
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

.method public synthesize(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Ljava/lang/annotation/Annotation;",
            ">(",
            "Ljava/lang/Class<",
            "TA;>;)TA;"
        }
    .end annotation

    .line 161
    iget-object v0, p0, Lcn/hutool/core/annotation/AbstractAnnotationSynthesizer;->synthesizedProxyAnnotations:Ljava/util/Map;

    new-instance v1, Lcn/hutool/core/annotation/AbstractAnnotationSynthesizer$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1}, Lcn/hutool/core/annotation/AbstractAnnotationSynthesizer$$ExternalSyntheticLambda2;-><init>(Lcn/hutool/core/annotation/AbstractAnnotationSynthesizer;Ljava/lang/Class;)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/annotation/Annotation;

    return-object p1
.end method

.method protected abstract synthesize(Ljava/lang/Class;Lcn/hutool/core/annotation/SynthesizedAnnotation;)Ljava/lang/annotation/Annotation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Ljava/lang/annotation/Annotation;",
            ">(",
            "Ljava/lang/Class<",
            "TA;>;",
            "Lcn/hutool/core/annotation/SynthesizedAnnotation;",
            ")TA;"
        }
    .end annotation
.end method
