.class public Lcn/hutool/core/lang/tree/TreeBuilder;
.super Ljava/lang/Object;
.source "TreeBuilder.java"

# interfaces
.implements Lcn/hutool/core/builder/Builder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcn/hutool/core/builder/Builder<",
        "Lcn/hutool/core/lang/tree/Tree<",
        "TE;>;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final idTreeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "TE;",
            "Lcn/hutool/core/lang/tree/Tree<",
            "TE;>;>;"
        }
    .end annotation
.end field

.field private isBuild:Z

.field private final root:Lcn/hutool/core/lang/tree/Tree;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcn/hutool/core/lang/tree/Tree<",
            "TE;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lcn/hutool/core/lang/tree/TreeNodeConfig;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;",
            "Lcn/hutool/core/lang/tree/TreeNodeConfig;",
            ")V"
        }
    .end annotation

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v0, Lcn/hutool/core/lang/tree/Tree;

    invoke-direct {v0, p2}, Lcn/hutool/core/lang/tree/Tree;-><init>(Lcn/hutool/core/lang/tree/TreeNodeConfig;)V

    iput-object v0, p0, Lcn/hutool/core/lang/tree/TreeBuilder;->root:Lcn/hutool/core/lang/tree/Tree;

    .line 57
    invoke-virtual {v0, p1}, Lcn/hutool/core/lang/tree/Tree;->setId(Ljava/lang/Object;)Lcn/hutool/core/lang/tree/Tree;

    .line 58
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lcn/hutool/core/lang/tree/TreeBuilder;->idTreeMap:Ljava/util/Map;

    return-void
.end method

.method private buildFromMap()V
    .locals 7

    .line 241
    iget-object v0, p0, Lcn/hutool/core/lang/tree/TreeBuilder;->idTreeMap:Ljava/util/Map;

    invoke-static {v0}, Lcn/hutool/core/map/MapUtil;->isEmpty(Ljava/util/Map;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 245
    :cond_0
    iget-object v0, p0, Lcn/hutool/core/lang/tree/TreeBuilder;->idTreeMap:Ljava/util/Map;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcn/hutool/core/map/MapUtil;->sortByValue(Ljava/util/Map;Z)Ljava/util/Map;

    move-result-object v0

    .line 247
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/hutool/core/lang/tree/Tree;

    if-nez v3, :cond_2

    goto :goto_0

    .line 251
    :cond_2
    invoke-virtual {v3}, Lcn/hutool/core/lang/tree/Tree;->getParentId()Ljava/lang/Object;

    move-result-object v4

    .line 252
    iget-object v5, p0, Lcn/hutool/core/lang/tree/TreeBuilder;->root:Lcn/hutool/core/lang/tree/Tree;

    invoke-virtual {v5}, Lcn/hutool/core/lang/tree/Tree;->getId()Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5, v4}, Lcn/hutool/core/util/ObjectUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_3

    .line 253
    iget-object v4, p0, Lcn/hutool/core/lang/tree/TreeBuilder;->root:Lcn/hutool/core/lang/tree/Tree;

    new-array v5, v6, [Lcn/hutool/core/lang/tree/Tree;

    aput-object v3, v5, v1

    invoke-virtual {v4, v5}, Lcn/hutool/core/lang/tree/Tree;->addChildren([Lcn/hutool/core/lang/tree/Tree;)Lcn/hutool/core/lang/tree/Tree;

    goto :goto_0

    .line 257
    :cond_3
    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/hutool/core/lang/tree/Tree;

    if-eqz v4, :cond_1

    new-array v5, v6, [Lcn/hutool/core/lang/tree/Tree;

    aput-object v3, v5, v1

    .line 259
    invoke-virtual {v4, v5}, Lcn/hutool/core/lang/tree/Tree;->addChildren([Lcn/hutool/core/lang/tree/Tree;)Lcn/hutool/core/lang/tree/Tree;

    goto :goto_0

    :cond_4
    return-void
.end method

.method private checkBuilt()V
    .locals 3

    .line 305
    iget-boolean v0, p0, Lcn/hutool/core/lang/tree/TreeBuilder;->isBuild:Z

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Current tree has been built."

    invoke-static {v0, v2, v1}, Lcn/hutool/core/lang/Assert;->isFalse(ZLjava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private cutTree()V
    .locals 3

    .line 268
    iget-object v0, p0, Lcn/hutool/core/lang/tree/TreeBuilder;->root:Lcn/hutool/core/lang/tree/Tree;

    invoke-virtual {v0}, Lcn/hutool/core/lang/tree/Tree;->getConfig()Lcn/hutool/core/lang/tree/TreeNodeConfig;

    move-result-object v0

    .line 269
    invoke-virtual {v0}, Lcn/hutool/core/lang/tree/TreeNodeConfig;->getDeep()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 270
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-gez v1, :cond_0

    goto :goto_0

    .line 273
    :cond_0
    iget-object v1, p0, Lcn/hutool/core/lang/tree/TreeBuilder;->root:Lcn/hutool/core/lang/tree/Tree;

    const/4 v2, 0x0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v1, v2, v0}, Lcn/hutool/core/lang/tree/TreeBuilder;->cutTree(Lcn/hutool/core/lang/tree/Tree;II)V

    :cond_1
    :goto_0
    return-void
.end method

.method private cutTree(Lcn/hutool/core/lang/tree/Tree;II)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/hutool/core/lang/tree/Tree<",
            "TE;>;II)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    if-ne p2, p3, :cond_1

    const/4 p2, 0x0

    .line 289
    invoke-virtual {p1, p2}, Lcn/hutool/core/lang/tree/Tree;->setChildren(Ljava/util/List;)Lcn/hutool/core/lang/tree/Tree;

    return-void

    .line 293
    :cond_1
    invoke-virtual {p1}, Lcn/hutool/core/lang/tree/Tree;->getChildren()Ljava/util/List;

    move-result-object p1

    .line 294
    invoke-static {p1}, Lcn/hutool/core/collection/CollUtil;->isNotEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 295
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/hutool/core/lang/tree/Tree;

    add-int/lit8 v1, p2, 0x1

    .line 296
    invoke-direct {p0, v0, v1, p3}, Lcn/hutool/core/lang/tree/TreeBuilder;->cutTree(Lcn/hutool/core/lang/tree/Tree;II)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static of(Ljava/lang/Object;)Lcn/hutool/core/lang/tree/TreeBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lcn/hutool/core/lang/tree/TreeBuilder<",
            "TT;>;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 34
    invoke-static {p0, v0}, Lcn/hutool/core/lang/tree/TreeBuilder;->of(Ljava/lang/Object;Lcn/hutool/core/lang/tree/TreeNodeConfig;)Lcn/hutool/core/lang/tree/TreeBuilder;

    move-result-object p0

    return-object p0
.end method

.method public static of(Ljava/lang/Object;Lcn/hutool/core/lang/tree/TreeNodeConfig;)Lcn/hutool/core/lang/tree/TreeBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lcn/hutool/core/lang/tree/TreeNodeConfig;",
            ")",
            "Lcn/hutool/core/lang/tree/TreeBuilder<",
            "TT;>;"
        }
    .end annotation

    .line 46
    new-instance v0, Lcn/hutool/core/lang/tree/TreeBuilder;

    invoke-direct {v0, p0, p1}, Lcn/hutool/core/lang/tree/TreeBuilder;-><init>(Ljava/lang/Object;Lcn/hutool/core/lang/tree/TreeNodeConfig;)V

    return-object v0
.end method


# virtual methods
.method public append(Ljava/lang/Iterable;)Lcn/hutool/core/lang/tree/TreeBuilder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Lcn/hutool/core/lang/tree/Tree<",
            "TE;>;>;)",
            "Lcn/hutool/core/lang/tree/TreeBuilder<",
            "TE;>;"
        }
    .end annotation

    .line 143
    invoke-direct {p0}, Lcn/hutool/core/lang/tree/TreeBuilder;->checkBuilt()V

    .line 145
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/hutool/core/lang/tree/Tree;

    .line 146
    iget-object v1, p0, Lcn/hutool/core/lang/tree/TreeBuilder;->idTreeMap:Ljava/util/Map;

    invoke-virtual {v0}, Lcn/hutool/core/lang/tree/Tree;->getId()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public append(Ljava/util/List;Lcn/hutool/core/lang/tree/parser/NodeParser;)Lcn/hutool/core/lang/tree/TreeBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;",
            "Lcn/hutool/core/lang/tree/parser/NodeParser<",
            "TT;TE;>;)",
            "Lcn/hutool/core/lang/tree/TreeBuilder<",
            "TE;>;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 160
    invoke-virtual {p0, p1, v0, p2}, Lcn/hutool/core/lang/tree/TreeBuilder;->append(Ljava/util/List;Ljava/lang/Object;Lcn/hutool/core/lang/tree/parser/NodeParser;)Lcn/hutool/core/lang/tree/TreeBuilder;

    move-result-object p1

    return-object p1
.end method

.method public append(Ljava/util/List;Ljava/lang/Object;Lcn/hutool/core/lang/tree/parser/NodeParser;)Lcn/hutool/core/lang/tree/TreeBuilder;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;TE;",
            "Lcn/hutool/core/lang/tree/parser/NodeParser<",
            "TT;TE;>;)",
            "Lcn/hutool/core/lang/tree/TreeBuilder<",
            "TE;>;"
        }
    .end annotation

    .line 174
    invoke-direct {p0}, Lcn/hutool/core/lang/tree/TreeBuilder;->checkBuilt()V

    .line 176
    iget-object v0, p0, Lcn/hutool/core/lang/tree/TreeBuilder;->root:Lcn/hutool/core/lang/tree/Tree;

    invoke-virtual {v0}, Lcn/hutool/core/lang/tree/Tree;->getConfig()Lcn/hutool/core/lang/tree/TreeNodeConfig;

    move-result-object v0

    .line 177
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v3}, Ljava/util/LinkedHashMap;-><init>(IF)V

    .line 179
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 180
    new-instance v3, Lcn/hutool/core/lang/tree/Tree;

    invoke-direct {v3, v0}, Lcn/hutool/core/lang/tree/Tree;-><init>(Lcn/hutool/core/lang/tree/TreeNodeConfig;)V

    .line 181
    invoke-interface {p3, v2, v3}, Lcn/hutool/core/lang/tree/parser/NodeParser;->parse(Ljava/lang/Object;Lcn/hutool/core/lang/tree/Tree;)V

    if-eqz p2, :cond_1

    .line 182
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v3}, Lcn/hutool/core/lang/tree/Tree;->getId()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    .line 183
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "rootId type is node.getId().getClass()!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 185
    :cond_1
    :goto_1
    invoke-virtual {v3}, Lcn/hutool/core/lang/tree/Tree;->getId()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 187
    :cond_2
    invoke-virtual {p0, v1}, Lcn/hutool/core/lang/tree/TreeBuilder;->append(Ljava/util/Map;)Lcn/hutool/core/lang/tree/TreeBuilder;

    move-result-object p1

    return-object p1
.end method

.method public append(Ljava/util/Map;)Lcn/hutool/core/lang/tree/TreeBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "TE;",
            "Lcn/hutool/core/lang/tree/Tree<",
            "TE;>;>;)",
            "Lcn/hutool/core/lang/tree/TreeBuilder<",
            "TE;>;"
        }
    .end annotation

    .line 130
    invoke-direct {p0}, Lcn/hutool/core/lang/tree/TreeBuilder;->checkBuilt()V

    .line 132
    iget-object v0, p0, Lcn/hutool/core/lang/tree/TreeBuilder;->idTreeMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-object p0
.end method

.method public build()Lcn/hutool/core/lang/tree/Tree;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcn/hutool/core/lang/tree/Tree<",
            "TE;>;"
        }
    .end annotation

    .line 204
    invoke-direct {p0}, Lcn/hutool/core/lang/tree/TreeBuilder;->checkBuilt()V

    .line 206
    invoke-direct {p0}, Lcn/hutool/core/lang/tree/TreeBuilder;->buildFromMap()V

    .line 207
    invoke-direct {p0}, Lcn/hutool/core/lang/tree/TreeBuilder;->cutTree()V

    const/4 v0, 0x1

    .line 209
    iput-boolean v0, p0, Lcn/hutool/core/lang/tree/TreeBuilder;->isBuild:Z

    .line 210
    iget-object v0, p0, Lcn/hutool/core/lang/tree/TreeBuilder;->idTreeMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 212
    iget-object v0, p0, Lcn/hutool/core/lang/tree/TreeBuilder;->root:Lcn/hutool/core/lang/tree/Tree;

    return-object v0
.end method

.method public bridge synthetic build()Ljava/lang/Object;
    .locals 1

    .line 19
    invoke-virtual {p0}, Lcn/hutool/core/lang/tree/TreeBuilder;->build()Lcn/hutool/core/lang/tree/Tree;

    move-result-object v0

    return-object v0
.end method

.method public buildList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcn/hutool/core/lang/tree/Tree<",
            "TE;>;>;"
        }
    .end annotation

    .line 230
    iget-boolean v0, p0, Lcn/hutool/core/lang/tree/TreeBuilder;->isBuild:Z

    if-eqz v0, :cond_0

    .line 232
    iget-object v0, p0, Lcn/hutool/core/lang/tree/TreeBuilder;->root:Lcn/hutool/core/lang/tree/Tree;

    invoke-virtual {v0}, Lcn/hutool/core/lang/tree/Tree;->getChildren()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 234
    :cond_0
    invoke-virtual {p0}, Lcn/hutool/core/lang/tree/TreeBuilder;->build()Lcn/hutool/core/lang/tree/Tree;

    move-result-object v0

    invoke-virtual {v0}, Lcn/hutool/core/lang/tree/Tree;->getChildren()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public putExtra(Ljava/lang/String;Ljava/lang/Object;)Lcn/hutool/core/lang/tree/TreeBuilder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")",
            "Lcn/hutool/core/lang/tree/TreeBuilder<",
            "TE;>;"
        }
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Key must be not empty !"

    .line 118
    invoke-static {p1, v1, v0}, Lcn/hutool/core/lang/Assert;->notEmpty(Ljava/lang/CharSequence;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/CharSequence;

    .line 119
    iget-object v0, p0, Lcn/hutool/core/lang/tree/TreeBuilder;->root:Lcn/hutool/core/lang/tree/Tree;

    invoke-virtual {v0, p1, p2}, Lcn/hutool/core/lang/tree/Tree;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public reset()Lcn/hutool/core/lang/tree/TreeBuilder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcn/hutool/core/lang/tree/TreeBuilder<",
            "TE;>;"
        }
    .end annotation

    .line 196
    iget-object v0, p0, Lcn/hutool/core/lang/tree/TreeBuilder;->idTreeMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 197
    iget-object v0, p0, Lcn/hutool/core/lang/tree/TreeBuilder;->root:Lcn/hutool/core/lang/tree/Tree;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/hutool/core/lang/tree/Tree;->setChildren(Ljava/util/List;)Lcn/hutool/core/lang/tree/Tree;

    const/4 v0, 0x0

    .line 198
    iput-boolean v0, p0, Lcn/hutool/core/lang/tree/TreeBuilder;->isBuild:Z

    return-object p0
.end method

.method public setId(Ljava/lang/Object;)Lcn/hutool/core/lang/tree/TreeBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Lcn/hutool/core/lang/tree/TreeBuilder<",
            "TE;>;"
        }
    .end annotation

    .line 69
    iget-object v0, p0, Lcn/hutool/core/lang/tree/TreeBuilder;->root:Lcn/hutool/core/lang/tree/Tree;

    invoke-virtual {v0, p1}, Lcn/hutool/core/lang/tree/Tree;->setId(Ljava/lang/Object;)Lcn/hutool/core/lang/tree/Tree;

    return-object p0
.end method

.method public setName(Ljava/lang/CharSequence;)Lcn/hutool/core/lang/tree/TreeBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            ")",
            "Lcn/hutool/core/lang/tree/TreeBuilder<",
            "TE;>;"
        }
    .end annotation

    .line 93
    iget-object v0, p0, Lcn/hutool/core/lang/tree/TreeBuilder;->root:Lcn/hutool/core/lang/tree/Tree;

    invoke-virtual {v0, p1}, Lcn/hutool/core/lang/tree/Tree;->setName(Ljava/lang/CharSequence;)Lcn/hutool/core/lang/tree/Tree;

    return-object p0
.end method

.method public setParentId(Ljava/lang/Object;)Lcn/hutool/core/lang/tree/TreeBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Lcn/hutool/core/lang/tree/TreeBuilder<",
            "TE;>;"
        }
    .end annotation

    .line 81
    iget-object v0, p0, Lcn/hutool/core/lang/tree/TreeBuilder;->root:Lcn/hutool/core/lang/tree/Tree;

    invoke-virtual {v0, p1}, Lcn/hutool/core/lang/tree/Tree;->setParentId(Ljava/lang/Object;)Lcn/hutool/core/lang/tree/Tree;

    return-object p0
.end method

.method public setWeight(Ljava/lang/Comparable;)Lcn/hutool/core/lang/tree/TreeBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Comparable<",
            "*>;)",
            "Lcn/hutool/core/lang/tree/TreeBuilder<",
            "TE;>;"
        }
    .end annotation

    .line 105
    iget-object v0, p0, Lcn/hutool/core/lang/tree/TreeBuilder;->root:Lcn/hutool/core/lang/tree/Tree;

    invoke-virtual {v0, p1}, Lcn/hutool/core/lang/tree/Tree;->setWeight(Ljava/lang/Comparable;)Lcn/hutool/core/lang/tree/Tree;

    return-object p0
.end method
