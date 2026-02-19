.class public Lcn/hutool/core/lang/tree/Tree;
.super Ljava/util/LinkedHashMap;
.source "Tree.java"

# interfaces
.implements Lcn/hutool/core/lang/tree/Node;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/LinkedHashMap<",
        "Ljava/lang/String;",
        "Ljava/lang/Object;",
        ">;",
        "Lcn/hutool/core/lang/tree/Node<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private parent:Lcn/hutool/core/lang/tree/Tree;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcn/hutool/core/lang/tree/Tree<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final treeNodeConfig:Lcn/hutool/core/lang/tree/TreeNodeConfig;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 32
    invoke-direct {p0, v0}, Lcn/hutool/core/lang/tree/Tree;-><init>(Lcn/hutool/core/lang/tree/TreeNodeConfig;)V

    return-void
.end method

.method public constructor <init>(Lcn/hutool/core/lang/tree/TreeNodeConfig;)V
    .locals 1

    .line 40
    invoke-direct {p0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 41
    sget-object v0, Lcn/hutool/core/lang/tree/TreeNodeConfig;->DEFAULT_CONFIG:Lcn/hutool/core/lang/tree/TreeNodeConfig;

    invoke-static {p1, v0}, Lcn/hutool/core/util/ObjectUtil;->defaultIfNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/hutool/core/lang/tree/TreeNodeConfig;

    iput-object p1, p0, Lcn/hutool/core/lang/tree/Tree;->treeNodeConfig:Lcn/hutool/core/lang/tree/TreeNodeConfig;

    return-void
.end method

.method private cloneChildren()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcn/hutool/core/lang/tree/Tree<",
            "TT;>;>;"
        }
    .end annotation

    .line 328
    invoke-virtual {p0}, Lcn/hutool/core/lang/tree/Tree;->getChildren()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 332
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 333
    new-instance v2, Lcn/hutool/core/lang/tree/Tree$$ExternalSyntheticLambda1;

    invoke-direct {v2, v1}, Lcn/hutool/core/lang/tree/Tree$$ExternalSyntheticLambda1;-><init>(Ljava/util/List;)V

    invoke-interface {v0, v2}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    return-object v1
.end method

.method static synthetic lambda$cloneChildren$1(Ljava/util/List;Lcn/hutool/core/lang/tree/Tree;)V
    .locals 0

    .line 333
    invoke-virtual {p1}, Lcn/hutool/core/lang/tree/Tree;->cloneTree()Lcn/hutool/core/lang/tree/Tree;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method static synthetic lambda$walk$0(Ljava/util/function/Consumer;Lcn/hutool/core/lang/tree/Tree;)V
    .locals 0

    .line 199
    invoke-virtual {p1, p0}, Lcn/hutool/core/lang/tree/Tree;->walk(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private static printTree(Lcn/hutool/core/lang/tree/Tree;Ljava/io/PrintWriter;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/hutool/core/lang/tree/Tree<",
            "*>;",
            "Ljava/io/PrintWriter;",
            "I)V"
        }
    .end annotation

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/16 v1, 0x20

    .line 345
    invoke-static {v1, p2}, Lcn/hutool/core/util/StrUtil;->repeat(CI)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcn/hutool/core/lang/tree/Tree;->getName()Ljava/lang/CharSequence;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p0}, Lcn/hutool/core/lang/tree/Tree;->getId()Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string v1, "{}{}[{}]"

    invoke-static {v1, v0}, Lcn/hutool/core/util/StrUtil;->format(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 346
    invoke-virtual {p1}, Ljava/io/PrintWriter;->flush()V

    .line 348
    invoke-virtual {p0}, Lcn/hutool/core/lang/tree/Tree;->getChildren()Ljava/util/List;

    move-result-object p0

    .line 349
    invoke-static {p0}, Lcn/hutool/core/collection/CollUtil;->isNotEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 350
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/hutool/core/lang/tree/Tree;

    add-int/lit8 v1, p2, 0x2

    .line 351
    invoke-static {v0, p1, v1}, Lcn/hutool/core/lang/tree/Tree;->printTree(Lcn/hutool/core/lang/tree/Tree;Ljava/io/PrintWriter;I)V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public final varargs addChildren([Lcn/hutool/core/lang/tree/Tree;)Lcn/hutool/core/lang/tree/Tree;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcn/hutool/core/lang/tree/Tree<",
            "TT;>;)",
            "Lcn/hutool/core/lang/tree/Tree<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .line 277
    invoke-static {p1}, Lcn/hutool/core/util/ArrayUtil;->isNotEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 278
    invoke-virtual {p0}, Lcn/hutool/core/lang/tree/Tree;->getChildren()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    .line 280
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 281
    invoke-virtual {p0, v0}, Lcn/hutool/core/lang/tree/Tree;->setChildren(Ljava/util/List;)Lcn/hutool/core/lang/tree/Tree;

    .line 283
    :cond_0
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p1, v2

    .line 284
    invoke-virtual {v3, p0}, Lcn/hutool/core/lang/tree/Tree;->setParent(Lcn/hutool/core/lang/tree/Tree;)Lcn/hutool/core/lang/tree/Tree;

    .line 285
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method public cloneTree()Lcn/hutool/core/lang/tree/Tree;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcn/hutool/core/lang/tree/Tree<",
            "TT;>;"
        }
    .end annotation

    .line 317
    invoke-static {p0}, Lcn/hutool/core/util/ObjectUtil;->clone(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/hutool/core/lang/tree/Tree;

    .line 318
    invoke-direct {p0}, Lcn/hutool/core/lang/tree/Tree;->cloneChildren()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/hutool/core/lang/tree/Tree;->setChildren(Ljava/util/List;)Lcn/hutool/core/lang/tree/Tree;

    return-object v0
.end method

.method public filter(Lcn/hutool/core/lang/Filter;)Lcn/hutool/core/lang/tree/Tree;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/hutool/core/lang/Filter<",
            "Lcn/hutool/core/lang/tree/Tree<",
            "TT;>;>;)",
            "Lcn/hutool/core/lang/tree/Tree<",
            "TT;>;"
        }
    .end annotation

    .line 226
    invoke-interface {p1, p0}, Lcn/hutool/core/lang/Filter;->accept(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 231
    :cond_0
    invoke-virtual {p0}, Lcn/hutool/core/lang/tree/Tree;->getChildren()Ljava/util/List;

    move-result-object v0

    .line 232
    invoke-static {v0}, Lcn/hutool/core/collection/CollUtil;->isNotEmpty(Ljava/util/Collection;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    .line 234
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 236
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/hutool/core/lang/tree/Tree;

    .line 237
    invoke-virtual {v3, p1}, Lcn/hutool/core/lang/tree/Tree;->filter(Lcn/hutool/core/lang/Filter;)Lcn/hutool/core/lang/tree/Tree;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 239
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 242
    :cond_2
    invoke-static {v1}, Lcn/hutool/core/collection/CollUtil;->isNotEmpty(Ljava/util/Collection;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 244
    invoke-virtual {p0, v1}, Lcn/hutool/core/lang/tree/Tree;->setChildren(Ljava/util/List;)Lcn/hutool/core/lang/tree/Tree;

    move-result-object p1

    return-object p1

    .line 246
    :cond_3
    invoke-virtual {p0, v2}, Lcn/hutool/core/lang/tree/Tree;->setChildren(Ljava/util/List;)Lcn/hutool/core/lang/tree/Tree;

    :cond_4
    return-object v2
.end method

.method public filterNew(Lcn/hutool/core/lang/Filter;)Lcn/hutool/core/lang/tree/Tree;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/hutool/core/lang/Filter<",
            "Lcn/hutool/core/lang/tree/Tree<",
            "TT;>;>;)",
            "Lcn/hutool/core/lang/tree/Tree<",
            "TT;>;"
        }
    .end annotation

    .line 213
    invoke-virtual {p0}, Lcn/hutool/core/lang/tree/Tree;->cloneTree()Lcn/hutool/core/lang/tree/Tree;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/hutool/core/lang/tree/Tree;->filter(Lcn/hutool/core/lang/Filter;)Lcn/hutool/core/lang/tree/Tree;

    move-result-object p1

    return-object p1
.end method

.method public getChildren()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcn/hutool/core/lang/tree/Tree<",
            "TT;>;>;"
        }
    .end annotation

    .line 176
    iget-object v0, p0, Lcn/hutool/core/lang/tree/Tree;->treeNodeConfig:Lcn/hutool/core/lang/tree/TreeNodeConfig;

    invoke-virtual {v0}, Lcn/hutool/core/lang/tree/TreeNodeConfig;->getChildrenKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcn/hutool/core/lang/tree/Tree;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public getConfig()Lcn/hutool/core/lang/tree/TreeNodeConfig;
    .locals 1

    .line 52
    iget-object v0, p0, Lcn/hutool/core/lang/tree/Tree;->treeNodeConfig:Lcn/hutool/core/lang/tree/TreeNodeConfig;

    return-object v0
.end method

.method public getId()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 126
    iget-object v0, p0, Lcn/hutool/core/lang/tree/Tree;->treeNodeConfig:Lcn/hutool/core/lang/tree/TreeNodeConfig;

    invoke-virtual {v0}, Lcn/hutool/core/lang/tree/TreeNodeConfig;->getIdKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcn/hutool/core/lang/tree/Tree;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/CharSequence;
    .locals 1

    .line 149
    iget-object v0, p0, Lcn/hutool/core/lang/tree/Tree;->treeNodeConfig:Lcn/hutool/core/lang/tree/TreeNodeConfig;

    invoke-virtual {v0}, Lcn/hutool/core/lang/tree/TreeNodeConfig;->getNameKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcn/hutool/core/lang/tree/Tree;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getNode(Ljava/lang/Object;)Lcn/hutool/core/lang/tree/Tree;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lcn/hutool/core/lang/tree/Tree<",
            "TT;>;"
        }
    .end annotation

    .line 74
    invoke-static {p0, p1}, Lcn/hutool/core/lang/tree/TreeUtil;->getNode(Lcn/hutool/core/lang/tree/Tree;Ljava/lang/Object;)Lcn/hutool/core/lang/tree/Tree;

    move-result-object p1

    return-object p1
.end method

.method public getParent()Lcn/hutool/core/lang/tree/Tree;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcn/hutool/core/lang/tree/Tree<",
            "TT;>;"
        }
    .end annotation

    .line 62
    iget-object v0, p0, Lcn/hutool/core/lang/tree/Tree;->parent:Lcn/hutool/core/lang/tree/Tree;

    return-object v0
.end method

.method public getParentId()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 138
    iget-object v0, p0, Lcn/hutool/core/lang/tree/Tree;->treeNodeConfig:Lcn/hutool/core/lang/tree/TreeNodeConfig;

    invoke-virtual {v0}, Lcn/hutool/core/lang/tree/TreeNodeConfig;->getParentIdKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcn/hutool/core/lang/tree/Tree;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getParentsName(Ljava/lang/Object;Z)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;Z)",
            "Ljava/util/List<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    .line 90
    invoke-virtual {p0, p1}, Lcn/hutool/core/lang/tree/Tree;->getNode(Ljava/lang/Object;)Lcn/hutool/core/lang/tree/Tree;

    move-result-object p1

    invoke-static {p1, p2}, Lcn/hutool/core/lang/tree/TreeUtil;->getParentsName(Lcn/hutool/core/lang/tree/Tree;Z)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getParentsName(Z)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    .line 105
    invoke-static {p0, p1}, Lcn/hutool/core/lang/tree/TreeUtil;->getParentsName(Lcn/hutool/core/lang/tree/Tree;Z)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getWeight()Ljava/lang/Comparable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Comparable<",
            "*>;"
        }
    .end annotation

    .line 160
    iget-object v0, p0, Lcn/hutool/core/lang/tree/Tree;->treeNodeConfig:Lcn/hutool/core/lang/tree/TreeNodeConfig;

    invoke-virtual {v0}, Lcn/hutool/core/lang/tree/TreeNodeConfig;->getWeightKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcn/hutool/core/lang/tree/Tree;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Comparable;

    return-object v0
.end method

.method public hasChild()Z
    .locals 1

    .line 186
    invoke-virtual {p0}, Lcn/hutool/core/lang/tree/Tree;->getChildren()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcn/hutool/core/collection/CollUtil;->isNotEmpty(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public putExtra(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Key must be not empty !"

    .line 298
    invoke-static {p1, v1, v0}, Lcn/hutool/core/lang/Assert;->notEmpty(Ljava/lang/CharSequence;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/CharSequence;

    .line 299
    invoke-virtual {p0, p1, p2}, Lcn/hutool/core/lang/tree/Tree;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setChildren(Ljava/util/List;)Lcn/hutool/core/lang/tree/Tree;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcn/hutool/core/lang/tree/Tree<",
            "TT;>;>;)",
            "Lcn/hutool/core/lang/tree/Tree<",
            "TT;>;"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 262
    iget-object v0, p0, Lcn/hutool/core/lang/tree/Tree;->treeNodeConfig:Lcn/hutool/core/lang/tree/TreeNodeConfig;

    invoke-virtual {v0}, Lcn/hutool/core/lang/tree/TreeNodeConfig;->getChildrenKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcn/hutool/core/lang/tree/Tree;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 264
    :cond_0
    iget-object v0, p0, Lcn/hutool/core/lang/tree/Tree;->treeNodeConfig:Lcn/hutool/core/lang/tree/TreeNodeConfig;

    invoke-virtual {v0}, Lcn/hutool/core/lang/tree/TreeNodeConfig;->getChildrenKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcn/hutool/core/lang/tree/Tree;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public bridge synthetic setId(Ljava/lang/Object;)Lcn/hutool/core/lang/tree/Node;
    .locals 0

    .line 25
    invoke-virtual {p0, p1}, Lcn/hutool/core/lang/tree/Tree;->setId(Ljava/lang/Object;)Lcn/hutool/core/lang/tree/Tree;

    move-result-object p1

    return-object p1
.end method

.method public setId(Ljava/lang/Object;)Lcn/hutool/core/lang/tree/Tree;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lcn/hutool/core/lang/tree/Tree<",
            "TT;>;"
        }
    .end annotation

    .line 131
    iget-object v0, p0, Lcn/hutool/core/lang/tree/Tree;->treeNodeConfig:Lcn/hutool/core/lang/tree/TreeNodeConfig;

    invoke-virtual {v0}, Lcn/hutool/core/lang/tree/TreeNodeConfig;->getIdKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcn/hutool/core/lang/tree/Tree;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public bridge synthetic setName(Ljava/lang/CharSequence;)Lcn/hutool/core/lang/tree/Node;
    .locals 0

    .line 25
    invoke-virtual {p0, p1}, Lcn/hutool/core/lang/tree/Tree;->setName(Ljava/lang/CharSequence;)Lcn/hutool/core/lang/tree/Tree;

    move-result-object p1

    return-object p1
.end method

.method public setName(Ljava/lang/CharSequence;)Lcn/hutool/core/lang/tree/Tree;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            ")",
            "Lcn/hutool/core/lang/tree/Tree<",
            "TT;>;"
        }
    .end annotation

    .line 154
    iget-object v0, p0, Lcn/hutool/core/lang/tree/Tree;->treeNodeConfig:Lcn/hutool/core/lang/tree/TreeNodeConfig;

    invoke-virtual {v0}, Lcn/hutool/core/lang/tree/TreeNodeConfig;->getNameKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcn/hutool/core/lang/tree/Tree;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public setParent(Lcn/hutool/core/lang/tree/Tree;)Lcn/hutool/core/lang/tree/Tree;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/hutool/core/lang/tree/Tree<",
            "TT;>;)",
            "Lcn/hutool/core/lang/tree/Tree<",
            "TT;>;"
        }
    .end annotation

    .line 116
    iput-object p1, p0, Lcn/hutool/core/lang/tree/Tree;->parent:Lcn/hutool/core/lang/tree/Tree;

    if-eqz p1, :cond_0

    .line 118
    invoke-virtual {p1}, Lcn/hutool/core/lang/tree/Tree;->getId()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcn/hutool/core/lang/tree/Tree;->setParentId(Ljava/lang/Object;)Lcn/hutool/core/lang/tree/Tree;

    :cond_0
    return-object p0
.end method

.method public bridge synthetic setParentId(Ljava/lang/Object;)Lcn/hutool/core/lang/tree/Node;
    .locals 0

    .line 25
    invoke-virtual {p0, p1}, Lcn/hutool/core/lang/tree/Tree;->setParentId(Ljava/lang/Object;)Lcn/hutool/core/lang/tree/Tree;

    move-result-object p1

    return-object p1
.end method

.method public setParentId(Ljava/lang/Object;)Lcn/hutool/core/lang/tree/Tree;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lcn/hutool/core/lang/tree/Tree<",
            "TT;>;"
        }
    .end annotation

    .line 143
    iget-object v0, p0, Lcn/hutool/core/lang/tree/Tree;->treeNodeConfig:Lcn/hutool/core/lang/tree/TreeNodeConfig;

    invoke-virtual {v0}, Lcn/hutool/core/lang/tree/TreeNodeConfig;->getParentIdKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcn/hutool/core/lang/tree/Tree;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public bridge synthetic setWeight(Ljava/lang/Comparable;)Lcn/hutool/core/lang/tree/Node;
    .locals 0

    .line 25
    invoke-virtual {p0, p1}, Lcn/hutool/core/lang/tree/Tree;->setWeight(Ljava/lang/Comparable;)Lcn/hutool/core/lang/tree/Tree;

    move-result-object p1

    return-object p1
.end method

.method public setWeight(Ljava/lang/Comparable;)Lcn/hutool/core/lang/tree/Tree;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Comparable<",
            "*>;)",
            "Lcn/hutool/core/lang/tree/Tree<",
            "TT;>;"
        }
    .end annotation

    .line 165
    iget-object v0, p0, Lcn/hutool/core/lang/tree/Tree;->treeNodeConfig:Lcn/hutool/core/lang/tree/TreeNodeConfig;

    invoke-virtual {v0}, Lcn/hutool/core/lang/tree/TreeNodeConfig;->getWeightKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcn/hutool/core/lang/tree/Tree;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 304
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 305
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Lcn/hutool/core/lang/tree/Tree;->printTree(Lcn/hutool/core/lang/tree/Tree;Ljava/io/PrintWriter;I)V

    .line 306
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public walk(Ljava/util/function/Consumer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Lcn/hutool/core/lang/tree/Tree<",
            "TT;>;>;)V"
        }
    .end annotation

    .line 196
    invoke-interface {p1, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 197
    invoke-virtual {p0}, Lcn/hutool/core/lang/tree/Tree;->getChildren()Ljava/util/List;

    move-result-object v0

    .line 198
    invoke-static {v0}, Lcn/hutool/core/collection/CollUtil;->isNotEmpty(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 199
    new-instance v1, Lcn/hutool/core/lang/tree/Tree$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1}, Lcn/hutool/core/lang/tree/Tree$$ExternalSyntheticLambda0;-><init>(Ljava/util/function/Consumer;)V

    invoke-interface {v0, v1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    :cond_0
    return-void
.end method
