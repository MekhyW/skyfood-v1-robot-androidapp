.class public Lcn/hutool/core/annotation/CacheableSynthesizedAnnotationAttributeProcessor;
.super Ljava/lang/Object;
.source "CacheableSynthesizedAnnotationAttributeProcessor.java"

# interfaces
.implements Lcn/hutool/core/annotation/SynthesizedAnnotationAttributeProcessor;


# instance fields
.field private final annotationComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcn/hutool/core/annotation/Hierarchical;",
            ">;"
        }
    .end annotation
.end field

.field private final valueCaches:Lcn/hutool/core/map/multi/Table;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcn/hutool/core/map/multi/Table<",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 43
    sget-object v0, Lcn/hutool/core/annotation/Hierarchical;->DEFAULT_HIERARCHICAL_COMPARATOR:Ljava/util/Comparator;

    invoke-direct {p0, v0}, Lcn/hutool/core/annotation/CacheableSynthesizedAnnotationAttributeProcessor;-><init>(Ljava/util/Comparator;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Comparator;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "Lcn/hutool/core/annotation/Hierarchical;",
            ">;)V"
        }
    .end annotation

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Lcn/hutool/core/map/multi/RowKeyTable;

    invoke-direct {v0}, Lcn/hutool/core/map/multi/RowKeyTable;-><init>()V

    iput-object v0, p0, Lcn/hutool/core/annotation/CacheableSynthesizedAnnotationAttributeProcessor;->valueCaches:Lcn/hutool/core/map/multi/Table;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "annotationComparator must not null"

    .line 33
    invoke-static {p1, v1, v0}, Lcn/hutool/core/lang/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    iput-object p1, p0, Lcn/hutool/core/annotation/CacheableSynthesizedAnnotationAttributeProcessor;->annotationComparator:Ljava/util/Comparator;

    return-void
.end method

.method static synthetic lambda$getAttributeValue$0(Ljava/lang/String;Ljava/lang/Class;Lcn/hutool/core/annotation/SynthesizedAnnotation;)Z
    .locals 0

    .line 55
    invoke-interface {p2, p0, p1}, Lcn/hutool/core/annotation/SynthesizedAnnotation;->hasAttribute(Ljava/lang/String;Ljava/lang/Class;)Z

    move-result p0

    return p0
.end method

.method static synthetic lambda$getAttributeValue$1(Ljava/lang/String;Lcn/hutool/core/annotation/SynthesizedAnnotation;)Ljava/lang/Object;
    .locals 0

    .line 57
    invoke-interface {p1, p0}, Lcn/hutool/core/annotation/SynthesizedAnnotation;->getAttributeValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getAttributeValue(Ljava/lang/String;Ljava/lang/Class;Ljava/util/Collection;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/util/Collection<",
            "+",
            "Lcn/hutool/core/annotation/SynthesizedAnnotation;",
            ">;)TT;"
        }
    .end annotation

    .line 49
    iget-object v0, p0, Lcn/hutool/core/annotation/CacheableSynthesizedAnnotationAttributeProcessor;->valueCaches:Lcn/hutool/core/map/multi/Table;

    invoke-interface {v0, p1, p2}, Lcn/hutool/core/map/multi/Table;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 51
    invoke-static {v0}, Lcn/hutool/core/util/ObjectUtil;->isNotNull(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 54
    :cond_0
    invoke-interface {p3}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p3

    new-instance v0, Lcn/hutool/core/annotation/CacheableSynthesizedAnnotationAttributeProcessor$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1, p2}, Lcn/hutool/core/annotation/CacheableSynthesizedAnnotationAttributeProcessor$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 55
    invoke-interface {p3, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p3

    iget-object v0, p0, Lcn/hutool/core/annotation/CacheableSynthesizedAnnotationAttributeProcessor;->annotationComparator:Ljava/util/Comparator;

    .line 56
    invoke-interface {p3, v0}, Ljava/util/stream/Stream;->min(Ljava/util/Comparator;)Ljava/util/Optional;

    move-result-object p3

    new-instance v0, Lcn/hutool/core/annotation/CacheableSynthesizedAnnotationAttributeProcessor$$ExternalSyntheticLambda1;

    invoke-direct {v0, p1}, Lcn/hutool/core/annotation/CacheableSynthesizedAnnotationAttributeProcessor$$ExternalSyntheticLambda1;-><init>(Ljava/lang/String;)V

    .line 57
    invoke-virtual {p3, v0}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p3

    const/4 v0, 0x0

    .line 58
    invoke-virtual {p3, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    .line 59
    iget-object v0, p0, Lcn/hutool/core/annotation/CacheableSynthesizedAnnotationAttributeProcessor;->valueCaches:Lcn/hutool/core/map/multi/Table;

    invoke-interface {v0, p1, p2, p3}, Lcn/hutool/core/map/multi/Table;->put(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p3
.end method
