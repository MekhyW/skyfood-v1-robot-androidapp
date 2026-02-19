.class public abstract Lcn/hutool/core/annotation/scanner/AbstractTypeAnnotationScanner;
.super Ljava/lang/Object;
.source "AbstractTypeAnnotationScanner.java"

# interfaces
.implements Lcn/hutool/core/annotation/scanner/AnnotationScanner;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/hutool/core/annotation/scanner/AbstractTypeAnnotationScanner$JdkProxyClassConverter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcn/hutool/core/annotation/scanner/AbstractTypeAnnotationScanner<",
        "TT;>;>",
        "Ljava/lang/Object;",
        "Lcn/hutool/core/annotation/scanner/AnnotationScanner;"
    }
.end annotation


# instance fields
.field private final converters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/function/UnaryOperator<",
            "Ljava/lang/Class<",
            "*>;>;>;"
        }
    .end annotation
.end field

.field private final excludeTypes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end field

.field private filter:Ljava/util/function/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Predicate<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end field

.field private hasConverters:Z

.field private includeInterfaces:Z

.field private includeSuperClass:Z

.field private final typedThis:Lcn/hutool/core/annotation/scanner/AbstractTypeAnnotationScanner;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(ZZLjava/util/function/Predicate;Ljava/util/Set;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ",
            "Ljava/util/function/Predicate<",
            "Ljava/lang/Class<",
            "*>;>;",
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "*>;>;)V"
        }
    .end annotation

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "filter must not null"

    .line 69
    invoke-static {p3, v2, v1}, Lcn/hutool/core/lang/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "excludeTypes must not null"

    new-array v0, v0, [Ljava/lang/Object;

    .line 70
    invoke-static {p4, v1, v0}, Lcn/hutool/core/lang/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    iput-boolean p1, p0, Lcn/hutool/core/annotation/scanner/AbstractTypeAnnotationScanner;->includeSuperClass:Z

    .line 72
    iput-boolean p2, p0, Lcn/hutool/core/annotation/scanner/AbstractTypeAnnotationScanner;->includeInterfaces:Z

    .line 73
    iput-object p3, p0, Lcn/hutool/core/annotation/scanner/AbstractTypeAnnotationScanner;->filter:Ljava/util/function/Predicate;

    .line 74
    iput-object p4, p0, Lcn/hutool/core/annotation/scanner/AbstractTypeAnnotationScanner;->excludeTypes:Ljava/util/Set;

    .line 75
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcn/hutool/core/annotation/scanner/AbstractTypeAnnotationScanner;->converters:Ljava/util/List;

    .line 76
    iput-object p0, p0, Lcn/hutool/core/annotation/scanner/AbstractTypeAnnotationScanner;->typedThis:Lcn/hutool/core/annotation/scanner/AbstractTypeAnnotationScanner;

    return-void
.end method

.method static synthetic lambda$null$0(Ljava/lang/annotation/Annotation;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method static synthetic lambda$scan$1(Ljava/util/function/Predicate;)Ljava/util/function/Predicate;
    .locals 0

    .line 167
    new-instance p0, Lcn/hutool/core/annotation/scanner/AbstractTypeAnnotationScanner$$ExternalSyntheticLambda1;

    invoke-direct {p0}, Lcn/hutool/core/annotation/scanner/AbstractTypeAnnotationScanner$$ExternalSyntheticLambda1;-><init>()V

    return-object p0
.end method


# virtual methods
.method public addConverters(Ljava/util/function/UnaryOperator;)Lcn/hutool/core/annotation/scanner/AbstractTypeAnnotationScanner;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/UnaryOperator<",
            "Ljava/lang/Class<",
            "*>;>;)TT;"
        }
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "converter must not null"

    .line 128
    invoke-static {p1, v1, v0}, Lcn/hutool/core/lang/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    iget-object v0, p0, Lcn/hutool/core/annotation/scanner/AbstractTypeAnnotationScanner;->converters:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 130
    iget-boolean p1, p0, Lcn/hutool/core/annotation/scanner/AbstractTypeAnnotationScanner;->hasConverters:Z

    if-nez p1, :cond_0

    .line 131
    iget-object p1, p0, Lcn/hutool/core/annotation/scanner/AbstractTypeAnnotationScanner;->converters:Ljava/util/List;

    invoke-static {p1}, Lcn/hutool/core/collection/CollUtil;->isNotEmpty(Ljava/util/Collection;)Z

    move-result p1

    iput-boolean p1, p0, Lcn/hutool/core/annotation/scanner/AbstractTypeAnnotationScanner;->hasConverters:Z

    .line 133
    :cond_0
    iget-object p1, p0, Lcn/hutool/core/annotation/scanner/AbstractTypeAnnotationScanner;->typedThis:Lcn/hutool/core/annotation/scanner/AbstractTypeAnnotationScanner;

    return-object p1
.end method

.method public varargs addExcludeTypes([Ljava/lang/Class;)Lcn/hutool/core/annotation/scanner/AbstractTypeAnnotationScanner;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class<",
            "*>;)TT;"
        }
    .end annotation

    .line 116
    iget-object v0, p0, Lcn/hutool/core/annotation/scanner/AbstractTypeAnnotationScanner;->excludeTypes:Ljava/util/Set;

    invoke-static {v0, p1}, Lcn/hutool/core/collection/CollUtil;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Ljava/util/Collection;

    .line 117
    iget-object p1, p0, Lcn/hutool/core/annotation/scanner/AbstractTypeAnnotationScanner;->typedThis:Lcn/hutool/core/annotation/scanner/AbstractTypeAnnotationScanner;

    return-object p1
.end method

.method protected convert(Ljava/lang/Class;)Ljava/lang/Class;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 270
    iget-boolean v0, p0, Lcn/hutool/core/annotation/scanner/AbstractTypeAnnotationScanner;->hasConverters:Z

    if-eqz v0, :cond_0

    .line 271
    iget-object v0, p0, Lcn/hutool/core/annotation/scanner/AbstractTypeAnnotationScanner;->converters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/function/UnaryOperator;

    .line 272
    invoke-interface {v1, p1}, Ljava/util/function/UnaryOperator;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Class;

    goto :goto_0

    :cond_0
    return-object p1
.end method

.method protected abstract getAnnotationsFromTargetClass(Ljava/lang/reflect/AnnotatedElement;ILjava/lang/Class;)[Ljava/lang/annotation/Annotation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/AnnotatedElement;",
            "I",
            "Ljava/lang/Class<",
            "*>;)[",
            "Ljava/lang/annotation/Annotation;"
        }
    .end annotation
.end method

.method protected abstract getClassFormAnnotatedElement(Ljava/lang/reflect/AnnotatedElement;)Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/AnnotatedElement;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end method

.method public isIncludeInterfaces()Z
    .locals 1

    .line 94
    iget-boolean v0, p0, Lcn/hutool/core/annotation/scanner/AbstractTypeAnnotationScanner;->includeInterfaces:Z

    return v0
.end method

.method public isIncludeSuperClass()Z
    .locals 1

    .line 85
    iget-boolean v0, p0, Lcn/hutool/core/annotation/scanner/AbstractTypeAnnotationScanner;->includeSuperClass:Z

    return v0
.end method

.method protected isNotNeedProcess(Ljava/util/Set;Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "*>;>;",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 227
    invoke-static {p2}, Lcn/hutool/core/util/ObjectUtil;->isNull(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 228
    invoke-interface {p1, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcn/hutool/core/annotation/scanner/AbstractTypeAnnotationScanner;->excludeTypes:Ljava/util/Set;

    .line 229
    invoke-interface {p1, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcn/hutool/core/annotation/scanner/AbstractTypeAnnotationScanner;->filter:Ljava/util/function/Predicate;

    .line 230
    invoke-interface {p1}, Ljava/util/function/Predicate;->negate()Ljava/util/function/Predicate;

    move-result-object p1

    invoke-interface {p1, p2}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public scan(Ljava/util/function/BiConsumer;Ljava/lang/reflect/AnnotatedElement;Ljava/util/function/Predicate;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiConsumer<",
            "Ljava/lang/Integer;",
            "Ljava/lang/annotation/Annotation;",
            ">;",
            "Ljava/lang/reflect/AnnotatedElement;",
            "Ljava/util/function/Predicate<",
            "Ljava/lang/annotation/Annotation;",
            ">;)V"
        }
    .end annotation

    .line 167
    new-instance v0, Lcn/hutool/core/annotation/scanner/AbstractTypeAnnotationScanner$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcn/hutool/core/annotation/scanner/AbstractTypeAnnotationScanner$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {p3, v0}, Lcn/hutool/core/util/ObjectUtil;->defaultIfNull(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/function/Predicate;

    .line 168
    invoke-virtual {p0, p2}, Lcn/hutool/core/annotation/scanner/AbstractTypeAnnotationScanner;->getClassFormAnnotatedElement(Ljava/lang/reflect/AnnotatedElement;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/util/List;

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v3, 0x0

    aput-object v0, v1, v3

    .line 169
    invoke-static {v1}, Lcn/hutool/core/collection/CollUtil;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-static {v2}, Lcn/hutool/core/collection/CollUtil;->newLinkedList([Ljava/lang/Object;)Ljava/util/LinkedList;

    move-result-object v0

    .line 170
    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    move v2, v3

    .line 172
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Deque;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_5

    .line 173
    invoke-interface {v0}, Ljava/util/Deque;->removeFirst()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 174
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 175
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Class;

    .line 176
    invoke-virtual {p0, v6}, Lcn/hutool/core/annotation/scanner/AbstractTypeAnnotationScanner;->convert(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v6

    .line 178
    invoke-virtual {p0, v1, v6}, Lcn/hutool/core/annotation/scanner/AbstractTypeAnnotationScanner;->isNotNeedProcess(Ljava/util/Set;Ljava/lang/Class;)Z

    move-result v7

    if-eqz v7, :cond_1

    goto :goto_1

    .line 181
    :cond_1
    invoke-interface {v1, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 183
    invoke-virtual {p0, v5, v6}, Lcn/hutool/core/annotation/scanner/AbstractTypeAnnotationScanner;->scanSuperClassIfNecessary(Ljava/util/List;Ljava/lang/Class;)V

    .line 185
    invoke-virtual {p0, v5, v6}, Lcn/hutool/core/annotation/scanner/AbstractTypeAnnotationScanner;->scanInterfaceIfNecessary(Ljava/util/List;Ljava/lang/Class;)V

    .line 187
    invoke-virtual {p0, p2, v2, v6}, Lcn/hutool/core/annotation/scanner/AbstractTypeAnnotationScanner;->getAnnotationsFromTargetClass(Ljava/lang/reflect/AnnotatedElement;ILjava/lang/Class;)[Ljava/lang/annotation/Annotation;

    move-result-object v6

    .line 188
    array-length v7, v6

    move v8, v3

    :goto_2
    if-ge v8, v7, :cond_3

    aget-object v9, v6, v8

    .line 189
    invoke-interface {v9}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v10

    invoke-static {v10}, Lcn/hutool/core/annotation/AnnotationUtil;->isNotJdkMateAnnotation(Ljava/lang/Class;)Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {p3, v9}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 190
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {p1, v10, v9}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 195
    :cond_4
    invoke-static {v5}, Lcn/hutool/core/collection/CollUtil;->isNotEmpty(Ljava/util/Collection;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 196
    invoke-interface {v0, v5}, Ljava/util/Deque;->addLast(Ljava/lang/Object;)V

    goto :goto_0

    :cond_5
    return-void
.end method

.method protected scanInterfaceIfNecessary(Ljava/util/List;Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "*>;>;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 240
    iget-boolean v0, p0, Lcn/hutool/core/annotation/scanner/AbstractTypeAnnotationScanner;->includeInterfaces:Z

    if-eqz v0, :cond_0

    .line 241
    invoke-virtual {p2}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object p2

    .line 242
    invoke-static {p2}, Lcn/hutool/core/util/ArrayUtil;->isNotEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 243
    invoke-static {p1, p2}, Lcn/hutool/core/collection/CollUtil;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Ljava/util/Collection;

    :cond_0
    return-void
.end method

.method protected scanSuperClassIfNecessary(Ljava/util/List;Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "*>;>;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 255
    iget-boolean v0, p0, Lcn/hutool/core/annotation/scanner/AbstractTypeAnnotationScanner;->includeSuperClass:Z

    if-eqz v0, :cond_0

    .line 256
    invoke-virtual {p2}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p2

    .line 257
    const-class v0, Ljava/lang/Object;

    invoke-static {p2, v0}, Lcn/hutool/core/util/ObjectUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Lcn/hutool/core/util/ObjectUtil;->isNotNull(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 258
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public setFilter(Ljava/util/function/Predicate;)Lcn/hutool/core/annotation/scanner/AbstractTypeAnnotationScanner;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "Ljava/lang/Class<",
            "*>;>;)TT;"
        }
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "filter must not null"

    .line 104
    invoke-static {p1, v1, v0}, Lcn/hutool/core/lang/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    iput-object p1, p0, Lcn/hutool/core/annotation/scanner/AbstractTypeAnnotationScanner;->filter:Ljava/util/function/Predicate;

    .line 106
    iget-object p1, p0, Lcn/hutool/core/annotation/scanner/AbstractTypeAnnotationScanner;->typedThis:Lcn/hutool/core/annotation/scanner/AbstractTypeAnnotationScanner;

    return-object p1
.end method

.method protected setIncludeInterfaces(Z)Lcn/hutool/core/annotation/scanner/AbstractTypeAnnotationScanner;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TT;"
        }
    .end annotation

    .line 154
    iput-boolean p1, p0, Lcn/hutool/core/annotation/scanner/AbstractTypeAnnotationScanner;->includeInterfaces:Z

    .line 155
    iget-object p1, p0, Lcn/hutool/core/annotation/scanner/AbstractTypeAnnotationScanner;->typedThis:Lcn/hutool/core/annotation/scanner/AbstractTypeAnnotationScanner;

    return-object p1
.end method

.method protected setIncludeSuperClass(Z)Lcn/hutool/core/annotation/scanner/AbstractTypeAnnotationScanner;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TT;"
        }
    .end annotation

    .line 143
    iput-boolean p1, p0, Lcn/hutool/core/annotation/scanner/AbstractTypeAnnotationScanner;->includeSuperClass:Z

    .line 144
    iget-object p1, p0, Lcn/hutool/core/annotation/scanner/AbstractTypeAnnotationScanner;->typedThis:Lcn/hutool/core/annotation/scanner/AbstractTypeAnnotationScanner;

    return-object p1
.end method
