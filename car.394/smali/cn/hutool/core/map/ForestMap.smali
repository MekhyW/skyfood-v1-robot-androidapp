.class public interface abstract Lcn/hutool/core/map/ForestMap;
.super Ljava/lang/Object;
.source "ForestMap.java"

# interfaces
.implements Ljava/util/Map;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Map<",
        "TK;",
        "Lcn/hutool/core/map/TreeEntry<",
        "TK;TV;>;>;"
    }
.end annotation


# direct methods
.method public static synthetic $r8$lambda$YmreBo50yTKBwLIHxuI7TVCElsQ()Ljava/util/List;
    .locals 1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic lambda$containsChildNode$4(Ljava/lang/Object;Lcn/hutool/core/map/TreeEntry;)Ljava/lang/Boolean;
    .locals 0

    .line 301
    invoke-interface {p1, p0}, Lcn/hutool/core/map/TreeEntry;->containsChild(Ljava/lang/Object;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$containsParentNode$3(Ljava/lang/Object;Lcn/hutool/core/map/TreeEntry;)Ljava/lang/Boolean;
    .locals 0

    .line 274
    invoke-interface {p1, p0}, Lcn/hutool/core/map/TreeEntry;->containsParent(Ljava/lang/Object;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$getParentNode$2(Ljava/lang/Object;Lcn/hutool/core/map/TreeEntry;)Lcn/hutool/core/map/TreeEntry;
    .locals 0

    .line 261
    invoke-interface {p1, p0}, Lcn/hutool/core/map/TreeEntry;->getParent(Ljava/lang/Object;)Lcn/hutool/core/map/TreeEntry;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$putAll$0(Lcn/hutool/core/map/ForestMap;Ljava/lang/Object;Lcn/hutool/core/map/TreeEntry;)V
    .locals 2
    .param p0, "_this"    # Lcn/hutool/core/map/ForestMap;

    .line 54
    invoke-interface {p2}, Lcn/hutool/core/map/TreeEntry;->hasParent()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 55
    invoke-interface {p2}, Lcn/hutool/core/map/TreeEntry;->getDeclaredParent()Lcn/hutool/core/map/TreeEntry;

    move-result-object p1

    .line 56
    invoke-interface {p1}, Lcn/hutool/core/map/TreeEntry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1}, Lcn/hutool/core/map/TreeEntry;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p2}, Lcn/hutool/core/map/TreeEntry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p2}, Lcn/hutool/core/map/TreeEntry;->getValue()Ljava/lang/Object;

    move-result-object p2

    invoke-interface {p0, v0, p1, v1, p2}, Lcn/hutool/core/map/ForestMap;->putLinkedNodes(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 58
    :cond_0
    invoke-interface {p2}, Lcn/hutool/core/map/TreeEntry;->getKey()Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p2}, Lcn/hutool/core/map/TreeEntry;->getValue()Ljava/lang/Object;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Lcn/hutool/core/map/ForestMap;->putNode(Ljava/lang/Object;Ljava/lang/Object;)Lcn/hutool/core/map/TreeEntry;

    :goto_0
    return-void
.end method

.method public static synthetic lambda$putAllNode$1(Lcn/hutool/core/map/ForestMap;Ljava/util/function/Function;Ljava/util/function/Function;ZLjava/lang/Object;)V
    .locals 2
    .param p0, "_this"    # Lcn/hutool/core/map/ForestMap;

    .line 102
    invoke-interface {p1, p4}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 103
    invoke-interface {p2, p4}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 106
    invoke-static {p1}, Lcn/hutool/core/util/ObjectUtil;->isNotNull(Ljava/lang/Object;)Z

    move-result v0

    .line 107
    invoke-static {p2}, Lcn/hutool/core/util/ObjectUtil;->isNotNull(Ljava/lang/Object;)Z

    move-result v1

    if-eqz p3, :cond_3

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    if-nez v0, :cond_1

    if-nez v1, :cond_1

    return-void

    :cond_1
    if-eqz v0, :cond_2

    .line 121
    invoke-interface {p0, p1, p4}, Lcn/hutool/core/map/ForestMap;->putNode(Ljava/lang/Object;Ljava/lang/Object;)Lcn/hutool/core/map/TreeEntry;

    return-void

    :cond_2
    const/4 p1, 0x0

    .line 126
    invoke-interface {p0, p2, p1}, Lcn/hutool/core/map/ForestMap;->putNode(Ljava/lang/Object;Ljava/lang/Object;)Lcn/hutool/core/map/TreeEntry;

    return-void

    .line 109
    :cond_3
    :goto_0
    invoke-interface {p0, p2, p1}, Lcn/hutool/core/map/ForestMap;->linkNodes(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 110
    invoke-interface {p0, p1}, Lcn/hutool/core/map/ForestMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/hutool/core/map/TreeEntry;

    invoke-interface {p1, p4}, Lcn/hutool/core/map/TreeEntry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public abstract clear()V
.end method

.method public containsChildNode(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TK;)Z"
        }
    .end annotation

    .line 300
    invoke-interface {p0, p1}, Lcn/hutool/core/map/ForestMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lcn/hutool/core/lang/Opt;->ofNullable(Ljava/lang/Object;)Lcn/hutool/core/lang/Opt;

    move-result-object p1

    new-instance v0, Lcn/hutool/core/map/ForestMap$$ExternalSyntheticLambda4;

    invoke-direct {v0, p2}, Lcn/hutool/core/map/ForestMap$$ExternalSyntheticLambda4;-><init>(Ljava/lang/Object;)V

    .line 301
    invoke-virtual {p1, v0}, Lcn/hutool/core/lang/Opt;->map(Ljava/util/function/Function;)Lcn/hutool/core/lang/Opt;

    move-result-object p1

    const/4 p2, 0x0

    .line 302
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcn/hutool/core/lang/Opt;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method

.method public containsParentNode(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TK;)Z"
        }
    .end annotation

    .line 273
    invoke-interface {p0, p1}, Lcn/hutool/core/map/ForestMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lcn/hutool/core/lang/Opt;->ofNullable(Ljava/lang/Object;)Lcn/hutool/core/lang/Opt;

    move-result-object p1

    new-instance v0, Lcn/hutool/core/map/ForestMap$$ExternalSyntheticLambda5;

    invoke-direct {v0, p2}, Lcn/hutool/core/map/ForestMap$$ExternalSyntheticLambda5;-><init>(Ljava/lang/Object;)V

    .line 274
    invoke-virtual {p1, v0}, Lcn/hutool/core/lang/Opt;->map(Ljava/util/function/Function;)Lcn/hutool/core/lang/Opt;

    move-result-object p1

    const/4 p2, 0x0

    .line 275
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcn/hutool/core/lang/Opt;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method

.method public getChildNodes(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/Collection<",
            "Lcn/hutool/core/map/TreeEntry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 327
    invoke-interface {p0, p1}, Lcn/hutool/core/map/ForestMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lcn/hutool/core/lang/Opt;->ofNullable(Ljava/lang/Object;)Lcn/hutool/core/lang/Opt;

    move-result-object p1

    new-instance v0, Lcn/hutool/core/map/ForestMap$$ExternalSyntheticLambda6;

    invoke-direct {v0}, Lcn/hutool/core/map/ForestMap$$ExternalSyntheticLambda6;-><init>()V

    .line 328
    invoke-virtual {p1, v0}, Lcn/hutool/core/lang/Opt;->map(Ljava/util/function/Function;)Lcn/hutool/core/lang/Opt;

    move-result-object p1

    new-instance v0, Lcn/hutool/core/map/ForestMap$$ExternalSyntheticLambda7;

    invoke-direct {v0}, Lcn/hutool/core/map/ForestMap$$ExternalSyntheticLambda7;-><init>()V

    .line 329
    invoke-virtual {p1, v0}, Lcn/hutool/core/lang/Opt;->map(Ljava/util/function/Function;)Lcn/hutool/core/lang/Opt;

    move-result-object p1

    new-instance v0, Lcn/hutool/core/map/ForestMap$$ExternalSyntheticLambda8;

    invoke-direct {v0}, Lcn/hutool/core/map/ForestMap$$ExternalSyntheticLambda8;-><init>()V

    .line 330
    invoke-virtual {p1, v0}, Lcn/hutool/core/lang/Opt;->orElseGet(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    return-object p1
.end method

.method public getDeclaredChildNodes(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/Collection<",
            "Lcn/hutool/core/map/TreeEntry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 313
    invoke-interface {p0, p1}, Lcn/hutool/core/map/ForestMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lcn/hutool/core/lang/Opt;->ofNullable(Ljava/lang/Object;)Lcn/hutool/core/lang/Opt;

    move-result-object p1

    new-instance v0, Lcn/hutool/core/map/ForestMap$$ExternalSyntheticLambda11;

    invoke-direct {v0}, Lcn/hutool/core/map/ForestMap$$ExternalSyntheticLambda11;-><init>()V

    .line 314
    invoke-virtual {p1, v0}, Lcn/hutool/core/lang/Opt;->map(Ljava/util/function/Function;)Lcn/hutool/core/lang/Opt;

    move-result-object p1

    new-instance v0, Lcn/hutool/core/map/ForestMap$$ExternalSyntheticLambda7;

    invoke-direct {v0}, Lcn/hutool/core/map/ForestMap$$ExternalSyntheticLambda7;-><init>()V

    .line 315
    invoke-virtual {p1, v0}, Lcn/hutool/core/lang/Opt;->map(Ljava/util/function/Function;)Lcn/hutool/core/lang/Opt;

    move-result-object p1

    new-instance v0, Lcn/hutool/core/map/ForestMap$$ExternalSyntheticLambda8;

    invoke-direct {v0}, Lcn/hutool/core/map/ForestMap$$ExternalSyntheticLambda8;-><init>()V

    .line 316
    invoke-virtual {p1, v0}, Lcn/hutool/core/lang/Opt;->orElseGet(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    return-object p1
.end method

.method public getDeclaredParentNode(Ljava/lang/Object;)Lcn/hutool/core/map/TreeEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Lcn/hutool/core/map/TreeEntry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 247
    invoke-interface {p0, p1}, Lcn/hutool/core/map/ForestMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lcn/hutool/core/lang/Opt;->ofNullable(Ljava/lang/Object;)Lcn/hutool/core/lang/Opt;

    move-result-object p1

    new-instance v0, Lcn/hutool/core/map/ForestMap$$ExternalSyntheticLambda10;

    invoke-direct {v0}, Lcn/hutool/core/map/ForestMap$$ExternalSyntheticLambda10;-><init>()V

    .line 248
    invoke-virtual {p1, v0}, Lcn/hutool/core/lang/Opt;->map(Ljava/util/function/Function;)Lcn/hutool/core/lang/Opt;

    move-result-object p1

    const/4 v0, 0x0

    .line 249
    invoke-virtual {p1, v0}, Lcn/hutool/core/lang/Opt;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/hutool/core/map/TreeEntry;

    return-object p1
.end method

.method public getNodeValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    .line 285
    invoke-interface {p0, p1}, Lcn/hutool/core/map/ForestMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lcn/hutool/core/lang/Opt;->ofNullable(Ljava/lang/Object;)Lcn/hutool/core/lang/Opt;

    move-result-object p1

    new-instance v0, Lcn/hutool/core/map/ForestMap$$ExternalSyntheticLambda9;

    invoke-direct {v0}, Lcn/hutool/core/map/ForestMap$$ExternalSyntheticLambda9;-><init>()V

    .line 286
    invoke-virtual {p1, v0}, Lcn/hutool/core/lang/Opt;->map(Ljava/util/function/Function;)Lcn/hutool/core/lang/Opt;

    move-result-object p1

    .line 287
    invoke-virtual {p1}, Lcn/hutool/core/lang/Opt;->get()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getParentNode(Ljava/lang/Object;Ljava/lang/Object;)Lcn/hutool/core/map/TreeEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TK;)",
            "Lcn/hutool/core/map/TreeEntry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 260
    invoke-interface {p0, p1}, Lcn/hutool/core/map/ForestMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lcn/hutool/core/lang/Opt;->ofNullable(Ljava/lang/Object;)Lcn/hutool/core/lang/Opt;

    move-result-object p1

    new-instance v0, Lcn/hutool/core/map/ForestMap$$ExternalSyntheticLambda3;

    invoke-direct {v0, p2}, Lcn/hutool/core/map/ForestMap$$ExternalSyntheticLambda3;-><init>(Ljava/lang/Object;)V

    .line 261
    invoke-virtual {p1, v0}, Lcn/hutool/core/lang/Opt;->map(Ljava/util/function/Function;)Lcn/hutool/core/lang/Opt;

    move-result-object p1

    const/4 p2, 0x0

    .line 262
    invoke-virtual {p1, p2}, Lcn/hutool/core/lang/Opt;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/hutool/core/map/TreeEntry;

    return-object p1
.end method

.method public getRootNode(Ljava/lang/Object;)Lcn/hutool/core/map/TreeEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Lcn/hutool/core/map/TreeEntry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 234
    invoke-interface {p0, p1}, Lcn/hutool/core/map/ForestMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lcn/hutool/core/lang/Opt;->ofNullable(Ljava/lang/Object;)Lcn/hutool/core/lang/Opt;

    move-result-object p1

    new-instance v0, Lcn/hutool/core/map/ForestMap$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcn/hutool/core/map/ForestMap$$ExternalSyntheticLambda0;-><init>()V

    .line 235
    invoke-virtual {p1, v0}, Lcn/hutool/core/lang/Opt;->map(Ljava/util/function/Function;)Lcn/hutool/core/lang/Opt;

    move-result-object p1

    const/4 v0, 0x0

    .line 236
    invoke-virtual {p1, v0}, Lcn/hutool/core/lang/Opt;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/hutool/core/map/TreeEntry;

    return-object p1
.end method

.method public getTreeNodes(Ljava/lang/Object;)Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/Set<",
            "Lcn/hutool/core/map/TreeEntry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 217
    invoke-interface {p0, p1}, Lcn/hutool/core/map/ForestMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/hutool/core/map/TreeEntry;

    .line 218
    invoke-static {p1}, Lcn/hutool/core/util/ObjectUtil;->isNull(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 219
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [Lcn/hutool/core/map/TreeEntry;

    const/4 v1, 0x0

    .line 221
    invoke-interface {p1}, Lcn/hutool/core/map/TreeEntry;->getRoot()Lcn/hutool/core/map/TreeEntry;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcn/hutool/core/collection/CollUtil;->newLinkedHashSet([Ljava/lang/Object;)Ljava/util/LinkedHashSet;

    move-result-object v0

    .line 222
    invoke-interface {p1}, Lcn/hutool/core/map/TreeEntry;->getRoot()Lcn/hutool/core/map/TreeEntry;

    move-result-object p1

    invoke-interface {p1}, Lcn/hutool/core/map/TreeEntry;->getChildren()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-static {v0, p1}, Lcn/hutool/core/collection/CollUtil;->addAll(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/Collection;

    return-object v0
.end method

.method public linkNodes(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TK;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 187
    invoke-interface {p0, p1, p2, v0}, Lcn/hutool/core/map/ForestMap;->linkNodes(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/function/BiConsumer;)V

    return-void
.end method

.method public abstract linkNodes(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/function/BiConsumer;)V
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
.end method

.method public put(Ljava/lang/Object;Lcn/hutool/core/map/TreeEntry;)Lcn/hutool/core/map/TreeEntry;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Lcn/hutool/core/map/TreeEntry<",
            "TK;TV;>;)",
            "Lcn/hutool/core/map/TreeEntry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 40
    invoke-interface {p2}, Lcn/hutool/core/map/TreeEntry;->getValue()Ljava/lang/Object;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Lcn/hutool/core/map/ForestMap;->putNode(Ljava/lang/Object;Ljava/lang/Object;)Lcn/hutool/core/map/TreeEntry;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 22
    check-cast p2, Lcn/hutool/core/map/TreeEntry;

    invoke-interface {p0, p1, p2}, Lcn/hutool/core/map/ForestMap;->put(Ljava/lang/Object;Lcn/hutool/core/map/TreeEntry;)Lcn/hutool/core/map/TreeEntry;

    move-result-object p1

    return-object p1
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+TK;+",
            "Lcn/hutool/core/map/TreeEntry<",
            "TK;TV;>;>;)V"
        }
    .end annotation

    .line 50
    invoke-static {p1}, Lcn/hutool/core/collection/CollUtil;->isEmpty(Ljava/util/Map;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 53
    :cond_0
    new-instance v0, Lcn/hutool/core/map/ForestMap$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcn/hutool/core/map/ForestMap$$ExternalSyntheticLambda2;-><init>(Lcn/hutool/core/map/ForestMap;)V

    invoke-interface {p1, v0}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    return-void
.end method

.method public putAllNode(Ljava/util/Collection;Ljava/util/function/Function;Ljava/util/function/Function;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Ljava/util/Collection<",
            "TV;>;>(TC;",
            "Ljava/util/function/Function<",
            "TV;TK;>;",
            "Ljava/util/function/Function<",
            "TV;TK;>;Z)V"
        }
    .end annotation

    .line 98
    invoke-static {p1}, Lcn/hutool/core/collection/CollUtil;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 101
    :cond_0
    new-instance v0, Lcn/hutool/core/map/ForestMap$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p2, p3, p4}, Lcn/hutool/core/map/ForestMap$$ExternalSyntheticLambda1;-><init>(Lcn/hutool/core/map/ForestMap;Ljava/util/function/Function;Ljava/util/function/Function;Z)V

    invoke-interface {p1, v0}, Ljava/util/Collection;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public abstract putLinkedNodes(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TK;TV;)V"
        }
    .end annotation
.end method

.method public putLinkedNodes(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;TK;TV;)V"
        }
    .end annotation

    .line 162
    invoke-interface {p0, p1, p2}, Lcn/hutool/core/map/ForestMap;->putNode(Ljava/lang/Object;Ljava/lang/Object;)Lcn/hutool/core/map/TreeEntry;

    .line 163
    invoke-interface {p0, p3, p4}, Lcn/hutool/core/map/ForestMap;->putNode(Ljava/lang/Object;Ljava/lang/Object;)Lcn/hutool/core/map/TreeEntry;

    .line 164
    invoke-interface {p0, p1, p3}, Lcn/hutool/core/map/ForestMap;->linkNodes(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public abstract putNode(Ljava/lang/Object;Ljava/lang/Object;)Lcn/hutool/core/map/TreeEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)",
            "Lcn/hutool/core/map/TreeEntry<",
            "TK;TV;>;"
        }
    .end annotation
.end method

.method public abstract remove(Ljava/lang/Object;)Lcn/hutool/core/map/TreeEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lcn/hutool/core/map/TreeEntry<",
            "TK;TV;>;"
        }
    .end annotation
.end method

.method public bridge synthetic remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 22
    invoke-interface {p0, p1}, Lcn/hutool/core/map/ForestMap;->remove(Ljava/lang/Object;)Lcn/hutool/core/map/TreeEntry;

    move-result-object p1

    return-object p1
.end method

.method public abstract unlinkNode(Ljava/lang/Object;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TK;)V"
        }
    .end annotation
.end method
