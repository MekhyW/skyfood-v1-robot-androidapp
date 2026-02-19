.class public Lcn/hutool/core/lang/tree/TreeUtil;
.super Ljava/lang/Object;
.source "TreeUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static build(Ljava/util/List;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcn/hutool/core/lang/tree/TreeNode<",
            "Ljava/lang/Integer;",
            ">;>;)",
            "Ljava/util/List<",
            "Lcn/hutool/core/lang/tree/Tree<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 37
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p0, v0}, Lcn/hutool/core/lang/tree/TreeUtil;->build(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static build(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "Lcn/hutool/core/lang/tree/TreeNode<",
            "TE;>;>;TE;)",
            "Ljava/util/List<",
            "Lcn/hutool/core/lang/tree/Tree<",
            "TE;>;>;"
        }
    .end annotation

    .line 63
    sget-object v0, Lcn/hutool/core/lang/tree/TreeNodeConfig;->DEFAULT_CONFIG:Lcn/hutool/core/lang/tree/TreeNodeConfig;

    new-instance v1, Lcn/hutool/core/lang/tree/parser/DefaultNodeParser;

    invoke-direct {v1}, Lcn/hutool/core/lang/tree/parser/DefaultNodeParser;-><init>()V

    invoke-static {p0, p1, v0, v1}, Lcn/hutool/core/lang/tree/TreeUtil;->build(Ljava/util/List;Ljava/lang/Object;Lcn/hutool/core/lang/tree/TreeNodeConfig;Lcn/hutool/core/lang/tree/parser/NodeParser;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static build(Ljava/util/List;Ljava/lang/Object;Lcn/hutool/core/lang/tree/TreeNodeConfig;Lcn/hutool/core/lang/tree/parser/NodeParser;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;TE;",
            "Lcn/hutool/core/lang/tree/TreeNodeConfig;",
            "Lcn/hutool/core/lang/tree/parser/NodeParser<",
            "TT;TE;>;)",
            "Ljava/util/List<",
            "Lcn/hutool/core/lang/tree/Tree<",
            "TE;>;>;"
        }
    .end annotation

    .line 108
    invoke-static {p0, p1, p2, p3}, Lcn/hutool/core/lang/tree/TreeUtil;->buildSingle(Ljava/util/List;Ljava/lang/Object;Lcn/hutool/core/lang/tree/TreeNodeConfig;Lcn/hutool/core/lang/tree/parser/NodeParser;)Lcn/hutool/core/lang/tree/Tree;

    move-result-object p0

    invoke-virtual {p0}, Lcn/hutool/core/lang/tree/Tree;->getChildren()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static build(Ljava/util/List;Ljava/lang/Object;Lcn/hutool/core/lang/tree/parser/NodeParser;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;TE;",
            "Lcn/hutool/core/lang/tree/parser/NodeParser<",
            "TT;TE;>;)",
            "Ljava/util/List<",
            "Lcn/hutool/core/lang/tree/Tree<",
            "TE;>;>;"
        }
    .end annotation

    .line 93
    sget-object v0, Lcn/hutool/core/lang/tree/TreeNodeConfig;->DEFAULT_CONFIG:Lcn/hutool/core/lang/tree/TreeNodeConfig;

    invoke-static {p0, p1, v0, p2}, Lcn/hutool/core/lang/tree/TreeUtil;->build(Ljava/util/List;Ljava/lang/Object;Lcn/hutool/core/lang/tree/TreeNodeConfig;Lcn/hutool/core/lang/tree/parser/NodeParser;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static build(Ljava/util/Map;Ljava/lang/Object;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TE;",
            "Lcn/hutool/core/lang/tree/Tree<",
            "TE;>;>;TE;)",
            "Ljava/util/List<",
            "Lcn/hutool/core/lang/tree/Tree<",
            "TE;>;>;"
        }
    .end annotation

    .line 139
    invoke-static {p0, p1}, Lcn/hutool/core/lang/tree/TreeUtil;->buildSingle(Ljava/util/Map;Ljava/lang/Object;)Lcn/hutool/core/lang/tree/Tree;

    move-result-object p0

    invoke-virtual {p0}, Lcn/hutool/core/lang/tree/Tree;->getChildren()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static buildSingle(Ljava/util/List;)Lcn/hutool/core/lang/tree/Tree;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcn/hutool/core/lang/tree/TreeNode<",
            "Ljava/lang/Integer;",
            ">;>;)",
            "Lcn/hutool/core/lang/tree/Tree<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 27
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p0, v0}, Lcn/hutool/core/lang/tree/TreeUtil;->buildSingle(Ljava/util/List;Ljava/lang/Object;)Lcn/hutool/core/lang/tree/Tree;

    move-result-object p0

    return-object p0
.end method

.method public static buildSingle(Ljava/util/List;Ljava/lang/Object;)Lcn/hutool/core/lang/tree/Tree;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "Lcn/hutool/core/lang/tree/TreeNode<",
            "TE;>;>;TE;)",
            "Lcn/hutool/core/lang/tree/Tree<",
            "TE;>;"
        }
    .end annotation

    .line 51
    sget-object v0, Lcn/hutool/core/lang/tree/TreeNodeConfig;->DEFAULT_CONFIG:Lcn/hutool/core/lang/tree/TreeNodeConfig;

    new-instance v1, Lcn/hutool/core/lang/tree/parser/DefaultNodeParser;

    invoke-direct {v1}, Lcn/hutool/core/lang/tree/parser/DefaultNodeParser;-><init>()V

    invoke-static {p0, p1, v0, v1}, Lcn/hutool/core/lang/tree/TreeUtil;->buildSingle(Ljava/util/List;Ljava/lang/Object;Lcn/hutool/core/lang/tree/TreeNodeConfig;Lcn/hutool/core/lang/tree/parser/NodeParser;)Lcn/hutool/core/lang/tree/Tree;

    move-result-object p0

    return-object p0
.end method

.method public static buildSingle(Ljava/util/List;Ljava/lang/Object;Lcn/hutool/core/lang/tree/TreeNodeConfig;Lcn/hutool/core/lang/tree/parser/NodeParser;)Lcn/hutool/core/lang/tree/Tree;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;TE;",
            "Lcn/hutool/core/lang/tree/TreeNodeConfig;",
            "Lcn/hutool/core/lang/tree/parser/NodeParser<",
            "TT;TE;>;)",
            "Lcn/hutool/core/lang/tree/Tree<",
            "TE;>;"
        }
    .end annotation

    .line 125
    invoke-static {p1, p2}, Lcn/hutool/core/lang/tree/TreeBuilder;->of(Ljava/lang/Object;Lcn/hutool/core/lang/tree/TreeNodeConfig;)Lcn/hutool/core/lang/tree/TreeBuilder;

    move-result-object p2

    .line 126
    invoke-virtual {p2, p0, p1, p3}, Lcn/hutool/core/lang/tree/TreeBuilder;->append(Ljava/util/List;Ljava/lang/Object;Lcn/hutool/core/lang/tree/parser/NodeParser;)Lcn/hutool/core/lang/tree/TreeBuilder;

    move-result-object p0

    invoke-virtual {p0}, Lcn/hutool/core/lang/tree/TreeBuilder;->build()Lcn/hutool/core/lang/tree/Tree;

    move-result-object p0

    return-object p0
.end method

.method public static buildSingle(Ljava/util/List;Ljava/lang/Object;Lcn/hutool/core/lang/tree/parser/NodeParser;)Lcn/hutool/core/lang/tree/Tree;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;TE;",
            "Lcn/hutool/core/lang/tree/parser/NodeParser<",
            "TT;TE;>;)",
            "Lcn/hutool/core/lang/tree/Tree<",
            "TE;>;"
        }
    .end annotation

    .line 79
    sget-object v0, Lcn/hutool/core/lang/tree/TreeNodeConfig;->DEFAULT_CONFIG:Lcn/hutool/core/lang/tree/TreeNodeConfig;

    invoke-static {p0, p1, v0, p2}, Lcn/hutool/core/lang/tree/TreeUtil;->buildSingle(Ljava/util/List;Ljava/lang/Object;Lcn/hutool/core/lang/tree/TreeNodeConfig;Lcn/hutool/core/lang/tree/parser/NodeParser;)Lcn/hutool/core/lang/tree/Tree;

    move-result-object p0

    return-object p0
.end method

.method public static buildSingle(Ljava/util/Map;Ljava/lang/Object;)Lcn/hutool/core/lang/tree/Tree;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TE;",
            "Lcn/hutool/core/lang/tree/Tree<",
            "TE;>;>;TE;)",
            "Lcn/hutool/core/lang/tree/Tree<",
            "TE;>;"
        }
    .end annotation

    .line 153
    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, Lcn/hutool/core/collection/IterUtil;->getFirstNoneNull(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/hutool/core/lang/tree/Tree;

    if-eqz v0, :cond_0

    .line 155
    invoke-virtual {v0}, Lcn/hutool/core/lang/tree/Tree;->getConfig()Lcn/hutool/core/lang/tree/TreeNodeConfig;

    move-result-object v0

    .line 156
    invoke-static {p1, v0}, Lcn/hutool/core/lang/tree/TreeBuilder;->of(Ljava/lang/Object;Lcn/hutool/core/lang/tree/TreeNodeConfig;)Lcn/hutool/core/lang/tree/TreeBuilder;

    move-result-object p1

    .line 157
    invoke-virtual {p1, p0}, Lcn/hutool/core/lang/tree/TreeBuilder;->append(Ljava/util/Map;)Lcn/hutool/core/lang/tree/TreeBuilder;

    move-result-object p0

    .line 158
    invoke-virtual {p0}, Lcn/hutool/core/lang/tree/TreeBuilder;->build()Lcn/hutool/core/lang/tree/Tree;

    move-result-object p0

    return-object p0

    .line 161
    :cond_0
    invoke-static {p1}, Lcn/hutool/core/lang/tree/TreeUtil;->createEmptyNode(Ljava/lang/Object;)Lcn/hutool/core/lang/tree/Tree;

    move-result-object p0

    return-object p0
.end method

.method public static createEmptyNode(Ljava/lang/Object;)Lcn/hutool/core/lang/tree/Tree;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(TE;)",
            "Lcn/hutool/core/lang/tree/Tree<",
            "TE;>;"
        }
    .end annotation

    .line 242
    new-instance v0, Lcn/hutool/core/lang/tree/Tree;

    invoke-direct {v0}, Lcn/hutool/core/lang/tree/Tree;-><init>()V

    invoke-virtual {v0, p0}, Lcn/hutool/core/lang/tree/Tree;->setId(Ljava/lang/Object;)Lcn/hutool/core/lang/tree/Tree;

    move-result-object p0

    return-object p0
.end method

.method public static getNode(Lcn/hutool/core/lang/tree/Tree;Ljava/lang/Object;)Lcn/hutool/core/lang/tree/Tree;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcn/hutool/core/lang/tree/Tree<",
            "TT;>;TT;)",
            "Lcn/hutool/core/lang/tree/Tree<",
            "TT;>;"
        }
    .end annotation

    .line 175
    invoke-virtual {p0}, Lcn/hutool/core/lang/tree/Tree;->getId()Ljava/lang/Object;

    move-result-object v0

    invoke-static {p1, v0}, Lcn/hutool/core/util/ObjectUtil;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 179
    :cond_0
    invoke-virtual {p0}, Lcn/hutool/core/lang/tree/Tree;->getChildren()Ljava/util/List;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_1

    return-object v0

    .line 186
    :cond_1
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/hutool/core/lang/tree/Tree;

    .line 187
    invoke-virtual {v1, p1}, Lcn/hutool/core/lang/tree/Tree;->getNode(Ljava/lang/Object;)Lcn/hutool/core/lang/tree/Tree;

    move-result-object v1

    if-eqz v1, :cond_2

    return-object v1

    :cond_3
    return-object v0
.end method

.method public static getParentsName(Lcn/hutool/core/lang/tree/Tree;Z)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcn/hutool/core/lang/tree/Tree<",
            "TT;>;Z)",
            "Ljava/util/List<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    .line 211
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    if-eqz p1, :cond_1

    .line 217
    invoke-virtual {p0}, Lcn/hutool/core/lang/tree/Tree;->getName()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 220
    :cond_1
    invoke-virtual {p0}, Lcn/hutool/core/lang/tree/Tree;->getParent()Lcn/hutool/core/lang/tree/Tree;

    move-result-object p0

    :cond_2
    :goto_0
    if-eqz p0, :cond_4

    .line 223
    invoke-virtual {p0}, Lcn/hutool/core/lang/tree/Tree;->getName()Ljava/lang/CharSequence;

    move-result-object p1

    .line 224
    invoke-virtual {p0}, Lcn/hutool/core/lang/tree/Tree;->getParent()Lcn/hutool/core/lang/tree/Tree;

    move-result-object p0

    if-nez p1, :cond_3

    if-eqz p0, :cond_2

    .line 227
    :cond_3
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    return-object v0
.end method
