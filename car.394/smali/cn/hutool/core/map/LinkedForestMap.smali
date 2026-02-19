.class public Lcn/hutool/core/map/LinkedForestMap;
.super Ljava/lang/Object;
.source "LinkedForestMap.java"

# interfaces
.implements Lcn/hutool/core/map/ForestMap;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/hutool/core/map/LinkedForestMap$EntryNodeWrapper;,
        Lcn/hutool/core/map/LinkedForestMap$TreeEntryNode;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcn/hutool/core/map/ForestMap<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field private final allowOverrideParent:Z

.field private final nodes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "TK;",
            "Lcn/hutool/core/map/LinkedForestMap$TreeEntryNode<",
            "TK;TV;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$cmFKevN0G7L5VEXcm3YsCxT1Ysg(Lcn/hutool/core/map/LinkedForestMap;Ljava/util/Map$Entry;)Ljava/util/Map$Entry;
    .locals 0

    invoke-direct {p0, p1}, Lcn/hutool/core/map/LinkedForestMap;->wrap(Ljava/util/Map$Entry;)Ljava/util/Map$Entry;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Z)V
    .locals 0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-boolean p1, p0, Lcn/hutool/core/map/LinkedForestMap;->allowOverrideParent:Z

    .line 49
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lcn/hutool/core/map/LinkedForestMap;->nodes:Ljava/util/Map;

    return-void
.end method

.method static synthetic lambda$linkNodes$3(Lcn/hutool/core/map/TreeEntry;Lcn/hutool/core/map/TreeEntry;)V
    .locals 0

    return-void
.end method

.method static synthetic lambda$linkNodes$4(Ljava/lang/Object;)Lcn/hutool/core/map/LinkedForestMap$TreeEntryNode;
    .locals 2

    .line 267
    new-instance v0, Lcn/hutool/core/map/LinkedForestMap$TreeEntryNode;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Lcn/hutool/core/map/LinkedForestMap$TreeEntryNode;-><init>(Lcn/hutool/core/map/LinkedForestMap$TreeEntryNode;Ljava/lang/Object;)V

    return-object v0
.end method

.method static synthetic lambda$putLinkedNodes$1(Ljava/lang/Object;Ljava/lang/Object;Lcn/hutool/core/map/TreeEntry;Lcn/hutool/core/map/TreeEntry;)V
    .locals 0

    .line 235
    invoke-interface {p2, p0}, Lcn/hutool/core/map/TreeEntry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    invoke-interface {p3, p1}, Lcn/hutool/core/map/TreeEntry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method static synthetic lambda$putLinkedNodes$2(Ljava/lang/Object;Lcn/hutool/core/map/TreeEntry;Lcn/hutool/core/map/TreeEntry;)V
    .locals 0

    .line 253
    invoke-interface {p2, p0}, Lcn/hutool/core/map/TreeEntry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method static synthetic lambda$remove$0(Lcn/hutool/core/map/LinkedForestMap$TreeEntryNode;Ljava/lang/Object;Lcn/hutool/core/map/TreeEntry;)V
    .locals 0

    .line 134
    check-cast p2, Lcn/hutool/core/map/LinkedForestMap$TreeEntryNode;

    invoke-virtual {p0, p2}, Lcn/hutool/core/map/LinkedForestMap$TreeEntryNode;->addChild(Lcn/hutool/core/map/LinkedForestMap$TreeEntryNode;)V

    return-void
.end method

.method private wrap(Ljava/util/Map$Entry;)Ljava/util/Map$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "TK;",
            "Lcn/hutool/core/map/LinkedForestMap$TreeEntryNode<",
            "TK;TV;>;>;)",
            "Ljava/util/Map$Entry<",
            "TK;",
            "Lcn/hutool/core/map/TreeEntry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 185
    new-instance v0, Lcn/hutool/core/map/LinkedForestMap$EntryNodeWrapper;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/hutool/core/map/TreeEntry;

    invoke-direct {v0, p1}, Lcn/hutool/core/map/LinkedForestMap$EntryNodeWrapper;-><init>(Lcn/hutool/core/map/TreeEntry;)V

    return-object v0
.end method


# virtual methods
.method public clear()V
    .locals 2

    .line 144
    iget-object v0, p0, Lcn/hutool/core/map/LinkedForestMap;->nodes:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    new-instance v1, Lcn/hutool/core/map/LinkedForestMap$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Lcn/hutool/core/map/LinkedForestMap$$ExternalSyntheticLambda2;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/Collection;->forEach(Ljava/util/function/Consumer;)V

    .line 145
    iget-object v0, p0, Lcn/hutool/core/map/LinkedForestMap;->nodes:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 1

    .line 82
    iget-object v0, p0, Lcn/hutool/core/map/LinkedForestMap;->nodes:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 1

    .line 93
    iget-object v0, p0, Lcn/hutool/core/map/LinkedForestMap;->nodes:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public entrySet()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;",
            "Lcn/hutool/core/map/TreeEntry<",
            "TK;TV;>;>;>;"
        }
    .end annotation

    .line 176
    iget-object v0, p0, Lcn/hutool/core/map/LinkedForestMap;->nodes:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcn/hutool/core/map/LinkedForestMap$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0}, Lcn/hutool/core/map/LinkedForestMap$$ExternalSyntheticLambda6;-><init>(Lcn/hutool/core/map/LinkedForestMap;)V

    .line 177
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 178
    invoke-static {}, Ljava/util/stream/Collectors;->toSet()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    return-object v0
.end method

.method public get(Ljava/lang/Object;)Lcn/hutool/core/map/TreeEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lcn/hutool/core/map/TreeEntry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 104
    iget-object v0, p0, Lcn/hutool/core/map/LinkedForestMap;->nodes:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/hutool/core/map/TreeEntry;

    return-object p1
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 30
    invoke-virtual {p0, p1}, Lcn/hutool/core/map/LinkedForestMap;->get(Ljava/lang/Object;)Lcn/hutool/core/map/TreeEntry;

    move-result-object p1

    return-object p1
.end method

.method public isEmpty()Z
    .locals 1

    .line 71
    iget-object v0, p0, Lcn/hutool/core/map/LinkedForestMap;->nodes:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public keySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation

    .line 155
    iget-object v0, p0, Lcn/hutool/core/map/LinkedForestMap;->nodes:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public linkNodes(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/function/BiConsumer;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TK;",
            "Ljava/util/function/BiConsumer<",
            "Lcn/hutool/core/map/TreeEntry<",
            "TK;TV;>;",
            "Lcn/hutool/core/map/TreeEntry<",
            "TK;TV;>;>;)V"
        }
    .end annotation

    .line 265
    new-instance v0, Lcn/hutool/core/map/LinkedForestMap$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Lcn/hutool/core/map/LinkedForestMap$$ExternalSyntheticLambda3;-><init>()V

    invoke-static {p3, v0}, Lcn/hutool/core/util/ObjectUtil;->defaultIfNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/function/BiConsumer;

    .line 267
    iget-object v0, p0, Lcn/hutool/core/map/LinkedForestMap;->nodes:Ljava/util/Map;

    new-instance v1, Lcn/hutool/core/map/LinkedForestMap$$ExternalSyntheticLambda4;

    invoke-direct {v1}, Lcn/hutool/core/map/LinkedForestMap$$ExternalSyntheticLambda4;-><init>()V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/hutool/core/map/LinkedForestMap$TreeEntryNode;

    .line 268
    iget-object v1, p0, Lcn/hutool/core/map/LinkedForestMap;->nodes:Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/hutool/core/map/LinkedForestMap$TreeEntryNode;

    .line 271
    invoke-static {v1}, Lcn/hutool/core/util/ObjectUtil;->isNull(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 272
    new-instance p1, Lcn/hutool/core/map/LinkedForestMap$TreeEntryNode;

    invoke-direct {p1, v0, p2}, Lcn/hutool/core/map/LinkedForestMap$TreeEntryNode;-><init>(Lcn/hutool/core/map/LinkedForestMap$TreeEntryNode;Ljava/lang/Object;)V

    .line 273
    invoke-interface {p3, v0, p1}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 274
    iget-object p3, p0, Lcn/hutool/core/map/LinkedForestMap;->nodes:Ljava/util/Map;

    invoke-interface {p3, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 279
    :cond_0
    invoke-virtual {v1}, Lcn/hutool/core/map/LinkedForestMap$TreeEntryNode;->getDeclaredParent()Lcn/hutool/core/map/LinkedForestMap$TreeEntryNode;

    move-result-object p2

    invoke-static {v0, p2}, Lcn/hutool/core/util/ObjectUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 280
    invoke-interface {p3, v0, v1}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    .line 285
    :cond_1
    invoke-virtual {v1}, Lcn/hutool/core/map/LinkedForestMap$TreeEntryNode;->hasParent()Z

    move-result p2

    if-nez p2, :cond_2

    .line 286
    invoke-virtual {v0, v1}, Lcn/hutool/core/map/LinkedForestMap$TreeEntryNode;->addChild(Lcn/hutool/core/map/LinkedForestMap$TreeEntryNode;)V

    goto :goto_0

    .line 289
    :cond_2
    iget-boolean p2, p0, Lcn/hutool/core/map/LinkedForestMap;->allowOverrideParent:Z

    if-eqz p2, :cond_3

    .line 290
    invoke-virtual {v1}, Lcn/hutool/core/map/LinkedForestMap$TreeEntryNode;->getDeclaredParent()Lcn/hutool/core/map/LinkedForestMap$TreeEntryNode;

    move-result-object p1

    invoke-virtual {v1}, Lcn/hutool/core/map/LinkedForestMap$TreeEntryNode;->getKey()Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcn/hutool/core/map/LinkedForestMap$TreeEntryNode;->removeDeclaredChild(Ljava/lang/Object;)V

    .line 291
    invoke-virtual {v0, v1}, Lcn/hutool/core/map/LinkedForestMap$TreeEntryNode;->addChild(Lcn/hutool/core/map/LinkedForestMap$TreeEntryNode;)V

    .line 300
    :goto_0
    invoke-interface {p3, v0, v1}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    .line 295
    :cond_3
    new-instance p2, Ljava/lang/IllegalArgumentException;

    const/4 p3, 0x3

    new-array p3, p3, [Ljava/lang/Object;

    const/4 v0, 0x0

    .line 297
    invoke-virtual {v1}, Lcn/hutool/core/map/LinkedForestMap$TreeEntryNode;->getKey()Ljava/lang/Object;

    move-result-object v2

    aput-object v2, p3, v0

    invoke-virtual {v1}, Lcn/hutool/core/map/LinkedForestMap$TreeEntryNode;->getDeclaredParent()Lcn/hutool/core/map/LinkedForestMap$TreeEntryNode;

    move-result-object v0

    invoke-virtual {v0}, Lcn/hutool/core/map/LinkedForestMap$TreeEntryNode;->getKey()Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x1

    aput-object v0, p3, v1

    const/4 v0, 0x2

    aput-object p1, p3, v0

    const-string p1, "[{}] has been used as child of [{}], can not be overwrite as child of [{}]"

    .line 295
    invoke-static {p1, p3}, Lcn/hutool/core/util/StrUtil;->format(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public putLinkedNodes(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TK;TV;)V"
        }
    .end annotation

    .line 253
    new-instance v0, Lcn/hutool/core/map/LinkedForestMap$$ExternalSyntheticLambda1;

    invoke-direct {v0, p3}, Lcn/hutool/core/map/LinkedForestMap$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p0, p1, p2, v0}, Lcn/hutool/core/map/LinkedForestMap;->linkNodes(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/function/BiConsumer;)V

    return-void
.end method

.method public putLinkedNodes(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;TK;TV;)V"
        }
    .end annotation

    .line 234
    new-instance v0, Lcn/hutool/core/map/LinkedForestMap$$ExternalSyntheticLambda0;

    invoke-direct {v0, p2, p4}, Lcn/hutool/core/map/LinkedForestMap$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, p1, p3, v0}, Lcn/hutool/core/map/LinkedForestMap;->linkNodes(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/function/BiConsumer;)V

    return-void
.end method

.method public putNode(Ljava/lang/Object;Ljava/lang/Object;)Lcn/hutool/core/map/LinkedForestMap$TreeEntryNode;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)",
            "Lcn/hutool/core/map/LinkedForestMap$TreeEntryNode<",
            "TK;TV;>;"
        }
    .end annotation

    .line 203
    iget-object v0, p0, Lcn/hutool/core/map/LinkedForestMap;->nodes:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/hutool/core/map/LinkedForestMap$TreeEntryNode;

    .line 204
    invoke-static {v0}, Lcn/hutool/core/util/ObjectUtil;->isNotNull(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 205
    invoke-virtual {v0}, Lcn/hutool/core/map/LinkedForestMap$TreeEntryNode;->getValue()Ljava/lang/Object;

    move-result-object p1

    .line 206
    invoke-virtual {v0, p2}, Lcn/hutool/core/map/LinkedForestMap$TreeEntryNode;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    invoke-virtual {v0, p1}, Lcn/hutool/core/map/LinkedForestMap$TreeEntryNode;->copy(Ljava/lang/Object;)Lcn/hutool/core/map/LinkedForestMap$TreeEntryNode;

    move-result-object p1

    return-object p1

    .line 209
    :cond_0
    new-instance v0, Lcn/hutool/core/map/LinkedForestMap$TreeEntryNode;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1, p2}, Lcn/hutool/core/map/LinkedForestMap$TreeEntryNode;-><init>(Lcn/hutool/core/map/LinkedForestMap$TreeEntryNode;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 210
    iget-object p2, p0, Lcn/hutool/core/map/LinkedForestMap;->nodes:Ljava/util/Map;

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v1
.end method

.method public bridge synthetic putNode(Ljava/lang/Object;Ljava/lang/Object;)Lcn/hutool/core/map/TreeEntry;
    .locals 0

    .line 30
    invoke-virtual {p0, p1, p2}, Lcn/hutool/core/map/LinkedForestMap;->putNode(Ljava/lang/Object;Ljava/lang/Object;)Lcn/hutool/core/map/LinkedForestMap$TreeEntryNode;

    move-result-object p1

    return-object p1
.end method

.method public remove(Ljava/lang/Object;)Lcn/hutool/core/map/TreeEntry;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lcn/hutool/core/map/TreeEntry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 122
    iget-object v0, p0, Lcn/hutool/core/map/LinkedForestMap;->nodes:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/hutool/core/map/LinkedForestMap$TreeEntryNode;

    .line 123
    invoke-static {p1}, Lcn/hutool/core/util/ObjectUtil;->isNull(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 129
    :cond_0
    invoke-virtual {p1}, Lcn/hutool/core/map/LinkedForestMap$TreeEntryNode;->hasParent()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 130
    invoke-virtual {p1}, Lcn/hutool/core/map/LinkedForestMap$TreeEntryNode;->getDeclaredParent()Lcn/hutool/core/map/LinkedForestMap$TreeEntryNode;

    move-result-object v0

    .line 131
    invoke-virtual {p1}, Lcn/hutool/core/map/LinkedForestMap$TreeEntryNode;->getChildren()Ljava/util/Map;

    move-result-object v1

    .line 132
    invoke-virtual {p1}, Lcn/hutool/core/map/LinkedForestMap$TreeEntryNode;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcn/hutool/core/map/LinkedForestMap$TreeEntryNode;->removeDeclaredChild(Ljava/lang/Object;)V

    .line 133
    invoke-virtual {p1}, Lcn/hutool/core/map/LinkedForestMap$TreeEntryNode;->clear()V

    .line 134
    new-instance v2, Lcn/hutool/core/map/LinkedForestMap$$ExternalSyntheticLambda5;

    invoke-direct {v2, v0}, Lcn/hutool/core/map/LinkedForestMap$$ExternalSyntheticLambda5;-><init>(Lcn/hutool/core/map/LinkedForestMap$TreeEntryNode;)V

    invoke-interface {v1, v2}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    :cond_1
    return-object p1
.end method

.method public bridge synthetic remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 30
    invoke-virtual {p0, p1}, Lcn/hutool/core/map/LinkedForestMap;->remove(Ljava/lang/Object;)Lcn/hutool/core/map/TreeEntry;

    move-result-object p1

    return-object p1
.end method

.method public size()I
    .locals 1

    .line 61
    iget-object v0, p0, Lcn/hutool/core/map/LinkedForestMap;->nodes:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public unlinkNode(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TK;)V"
        }
    .end annotation

    .line 311
    iget-object p1, p0, Lcn/hutool/core/map/LinkedForestMap;->nodes:Ljava/util/Map;

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/hutool/core/map/LinkedForestMap$TreeEntryNode;

    .line 312
    invoke-static {p1}, Lcn/hutool/core/util/ObjectUtil;->isNull(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    return-void

    .line 315
    :cond_0
    invoke-virtual {p1}, Lcn/hutool/core/map/LinkedForestMap$TreeEntryNode;->hasParent()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 316
    invoke-virtual {p1}, Lcn/hutool/core/map/LinkedForestMap$TreeEntryNode;->getDeclaredParent()Lcn/hutool/core/map/LinkedForestMap$TreeEntryNode;

    move-result-object p2

    invoke-virtual {p1}, Lcn/hutool/core/map/LinkedForestMap$TreeEntryNode;->getKey()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcn/hutool/core/map/LinkedForestMap$TreeEntryNode;->removeDeclaredChild(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public values()Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcn/hutool/core/map/TreeEntry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 165
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcn/hutool/core/map/LinkedForestMap;->nodes:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method
