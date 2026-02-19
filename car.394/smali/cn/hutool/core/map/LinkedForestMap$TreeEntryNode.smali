.class public Lcn/hutool/core/map/LinkedForestMap$TreeEntryNode;
.super Ljava/lang/Object;
.source "LinkedForestMap.java"

# interfaces
.implements Lcn/hutool/core/map/TreeEntry;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/hutool/core/map/LinkedForestMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TreeEntryNode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcn/hutool/core/map/TreeEntry<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field private final children:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "TK;",
            "Lcn/hutool/core/map/LinkedForestMap$TreeEntryNode<",
            "TK;TV;>;>;"
        }
    .end annotation
.end field

.field private final key:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field private parent:Lcn/hutool/core/map/LinkedForestMap$TreeEntryNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcn/hutool/core/map/LinkedForestMap$TreeEntryNode<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field private root:Lcn/hutool/core/map/LinkedForestMap$TreeEntryNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcn/hutool/core/map/LinkedForestMap$TreeEntryNode<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field private value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field

.field private weight:I


# direct methods
.method public constructor <init>(Lcn/hutool/core/map/LinkedForestMap$TreeEntryNode;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/hutool/core/map/LinkedForestMap$TreeEntryNode<",
            "TK;TV;>;TK;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 365
    invoke-direct {p0, p1, p2, v0}, Lcn/hutool/core/map/LinkedForestMap$TreeEntryNode;-><init>(Lcn/hutool/core/map/LinkedForestMap$TreeEntryNode;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Lcn/hutool/core/map/LinkedForestMap$TreeEntryNode;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/hutool/core/map/LinkedForestMap$TreeEntryNode<",
            "TK;TV;>;TK;TV;)V"
        }
    .end annotation

    .line 375
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 376
    iput-object p1, p0, Lcn/hutool/core/map/LinkedForestMap$TreeEntryNode;->parent:Lcn/hutool/core/map/LinkedForestMap$TreeEntryNode;

    .line 377
    iput-object p2, p0, Lcn/hutool/core/map/LinkedForestMap$TreeEntryNode;->key:Ljava/lang/Object;

    .line 378
    iput-object p3, p0, Lcn/hutool/core/map/LinkedForestMap$TreeEntryNode;->value:Ljava/lang/Object;

    .line 379
    new-instance p2, Ljava/util/LinkedHashMap;

    invoke-direct {p2}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p2, p0, Lcn/hutool/core/map/LinkedForestMap$TreeEntryNode;->children:Ljava/util/Map;

    .line 380
    invoke-static {p1}, Lcn/hutool/core/util/ObjectUtil;->isNull(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 381
    iput-object p0, p0, Lcn/hutool/core/map/LinkedForestMap$TreeEntryNode;->root:Lcn/hutool/core/map/LinkedForestMap$TreeEntryNode;

    const/4 p1, 0x0

    .line 382
    iput p1, p0, Lcn/hutool/core/map/LinkedForestMap$TreeEntryNode;->weight:I

    goto :goto_0

    .line 384
    :cond_0
    invoke-virtual {p1, p0}, Lcn/hutool/core/map/LinkedForestMap$TreeEntryNode;->addChild(Lcn/hutool/core/map/LinkedForestMap$TreeEntryNode;)V

    .line 385
    iget p2, p1, Lcn/hutool/core/map/LinkedForestMap$TreeEntryNode;->weight:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p0, Lcn/hutool/core/map/LinkedForestMap$TreeEntryNode;->weight:I

    .line 386
    iget-object p1, p1, Lcn/hutool/core/map/LinkedForestMap$TreeEntryNode;->root:Lcn/hutool/core/map/LinkedForestMap$TreeEntryNode;

    iput-object p1, p0, Lcn/hutool/core/map/LinkedForestMap$TreeEntryNode;->root:Lcn/hutool/core/map/LinkedForestMap$TreeEntryNode;

    :goto_0
    return-void
.end method

.method static synthetic lambda$forEachChild$6(Ljava/util/function/Consumer;Ljava/lang/Integer;Lcn/hutool/core/map/LinkedForestMap$TreeEntryNode;)V
    .locals 0

    .line 512
    invoke-interface {p0, p2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic lambda$getChild$11(Ljava/lang/Integer;Lcn/hutool/core/map/LinkedForestMap$TreeEntryNode;)V
    .locals 0

    return-void
.end method

.method static synthetic lambda$getChild$12(Ljava/lang/Object;Ljava/lang/Integer;Lcn/hutool/core/map/LinkedForestMap$TreeEntryNode;)Z
    .locals 0

    .line 626
    invoke-virtual {p2, p0}, Lcn/hutool/core/map/LinkedForestMap$TreeEntryNode;->equalsKey(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method static synthetic lambda$getChildren$13(Ljava/util/Map;Ljava/lang/Integer;Lcn/hutool/core/map/LinkedForestMap$TreeEntryNode;)V
    .locals 0

    .line 647
    invoke-virtual {p2}, Lcn/hutool/core/map/LinkedForestMap$TreeEntryNode;->getKey()Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcn/hutool/core/map/TreeEntry;

    return-void
.end method

.method static synthetic lambda$getParent$4(Lcn/hutool/core/map/LinkedForestMap$TreeEntryNode;)V
    .locals 0

    return-void
.end method

.method static synthetic lambda$getParent$5(Ljava/lang/Object;Lcn/hutool/core/map/LinkedForestMap$TreeEntryNode;)Z
    .locals 0

    .line 501
    invoke-virtual {p1, p0}, Lcn/hutool/core/map/LinkedForestMap$TreeEntryNode;->equalsKey(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method static synthetic lambda$getRoot$2(Lcn/hutool/core/map/LinkedForestMap$TreeEntryNode;)V
    .locals 0

    return-void
.end method

.method static synthetic lambda$getRoot$3(Lcn/hutool/core/map/LinkedForestMap$TreeEntryNode;)Z
    .locals 0

    .line 477
    invoke-virtual {p0}, Lcn/hutool/core/map/LinkedForestMap$TreeEntryNode;->hasParent()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method static synthetic lambda$null$0(Lcn/hutool/core/map/LinkedForestMap$TreeEntryNode;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method static synthetic lambda$removeDeclaredChild$10(Lcn/hutool/core/map/LinkedForestMap$TreeEntryNode;Ljava/lang/Integer;Lcn/hutool/core/map/LinkedForestMap$TreeEntryNode;)V
    .locals 0

    .line 612
    iput-object p0, p2, Lcn/hutool/core/map/LinkedForestMap$TreeEntryNode;->root:Lcn/hutool/core/map/LinkedForestMap$TreeEntryNode;

    .line 613
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    iput p0, p2, Lcn/hutool/core/map/LinkedForestMap$TreeEntryNode;->weight:I

    return-void
.end method

.method static synthetic lambda$traverseChildNodes$7(Ljava/lang/Integer;Lcn/hutool/core/map/LinkedForestMap$TreeEntryNode;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method static synthetic lambda$traverseParentNodes$1(Ljava/util/function/Predicate;)Ljava/util/function/Predicate;
    .locals 0

    .line 445
    new-instance p0, Lcn/hutool/core/map/LinkedForestMap$TreeEntryNode$$ExternalSyntheticLambda2;

    invoke-direct {p0}, Lcn/hutool/core/map/LinkedForestMap$TreeEntryNode$$ExternalSyntheticLambda2;-><init>()V

    return-object p0
.end method


# virtual methods
.method addChild(Lcn/hutool/core/map/LinkedForestMap$TreeEntryNode;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/hutool/core/map/LinkedForestMap$TreeEntryNode<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 573
    iget-object v0, p1, Lcn/hutool/core/map/LinkedForestMap$TreeEntryNode;->key:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lcn/hutool/core/map/LinkedForestMap$TreeEntryNode;->containsChild(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 578
    :cond_0
    new-instance v0, Lcn/hutool/core/map/LinkedForestMap$TreeEntryNode$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lcn/hutool/core/map/LinkedForestMap$TreeEntryNode$$ExternalSyntheticLambda0;-><init>(Lcn/hutool/core/map/LinkedForestMap$TreeEntryNode;Lcn/hutool/core/map/LinkedForestMap$TreeEntryNode;)V

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v0, v2}, Lcn/hutool/core/map/LinkedForestMap$TreeEntryNode;->traverseParentNodes(ZLjava/util/function/Consumer;Ljava/util/function/Predicate;)Lcn/hutool/core/map/LinkedForestMap$TreeEntryNode;

    .line 585
    iput-object p0, p1, Lcn/hutool/core/map/LinkedForestMap$TreeEntryNode;->parent:Lcn/hutool/core/map/LinkedForestMap$TreeEntryNode;

    .line 586
    new-instance v0, Lcn/hutool/core/map/LinkedForestMap$TreeEntryNode$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0}, Lcn/hutool/core/map/LinkedForestMap$TreeEntryNode$$ExternalSyntheticLambda5;-><init>(Lcn/hutool/core/map/LinkedForestMap$TreeEntryNode;)V

    invoke-virtual {p1, v1, v0, v2}, Lcn/hutool/core/map/LinkedForestMap$TreeEntryNode;->traverseChildNodes(ZLjava/util/function/BiConsumer;Ljava/util/function/BiPredicate;)Lcn/hutool/core/map/LinkedForestMap$TreeEntryNode;

    .line 592
    iget-object v0, p0, Lcn/hutool/core/map/LinkedForestMap$TreeEntryNode;->children:Ljava/util/Map;

    iget-object v1, p1, Lcn/hutool/core/map/LinkedForestMap$TreeEntryNode;->key:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method clear()V
    .locals 2

    const/4 v0, 0x0

    .line 655
    iput-object v0, p0, Lcn/hutool/core/map/LinkedForestMap$TreeEntryNode;->root:Lcn/hutool/core/map/LinkedForestMap$TreeEntryNode;

    .line 656
    iget-object v1, p0, Lcn/hutool/core/map/LinkedForestMap$TreeEntryNode;->children:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 657
    iput-object v0, p0, Lcn/hutool/core/map/LinkedForestMap$TreeEntryNode;->parent:Lcn/hutool/core/map/LinkedForestMap$TreeEntryNode;

    return-void
.end method

.method copy(Ljava/lang/Object;)Lcn/hutool/core/map/LinkedForestMap$TreeEntryNode;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)",
            "Lcn/hutool/core/map/LinkedForestMap$TreeEntryNode<",
            "TK;TV;>;"
        }
    .end annotation

    .line 697
    new-instance v0, Lcn/hutool/core/map/LinkedForestMap$TreeEntryNode;

    iget-object v1, p0, Lcn/hutool/core/map/LinkedForestMap$TreeEntryNode;->parent:Lcn/hutool/core/map/LinkedForestMap$TreeEntryNode;

    iget-object v2, p0, Lcn/hutool/core/map/LinkedForestMap$TreeEntryNode;->key:Ljava/lang/Object;

    iget-object v3, p0, Lcn/hutool/core/map/LinkedForestMap$TreeEntryNode;->value:Ljava/lang/Object;

    invoke-static {p1, v3}, Lcn/hutool/core/util/ObjectUtil;->defaultIfNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-direct {v0, v1, v2, p1}, Lcn/hutool/core/map/LinkedForestMap$TreeEntryNode;-><init>(Lcn/hutool/core/map/LinkedForestMap$TreeEntryNode;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 698
    iget-object p1, v0, Lcn/hutool/core/map/LinkedForestMap$TreeEntryNode;->children:Ljava/util/Map;

    iget-object v1, p0, Lcn/hutool/core/map/LinkedForestMap$TreeEntryNode;->children:Ljava/util/Map;

    invoke-interface {p1, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    if-eqz p1, :cond_2

    .line 672
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/hutool/core/util/ClassUtil;->isAssignable(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 675
    :cond_1
    check-cast p1, Lcn/hutool/core/map/TreeEntry;

    .line 676
    invoke-virtual {p0}, Lcn/hutool/core/map/LinkedForestMap$TreeEntryNode;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1}, Lcn/hutool/core/map/TreeEntry;->getKey()Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p1}, Lcn/hutool/core/util/ObjectUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public equalsKey(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)Z"
        }
    .end annotation

    .line 522
    invoke-virtual {p0}, Lcn/hutool/core/map/LinkedForestMap$TreeEntryNode;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, p1}, Lcn/hutool/core/util/ObjectUtil;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public forEachChild(ZLjava/util/function/Consumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/function/Consumer<",
            "Lcn/hutool/core/map/TreeEntry<",
            "TK;TV;>;>;)V"
        }
    .end annotation

    .line 512
    new-instance v0, Lcn/hutool/core/map/LinkedForestMap$TreeEntryNode$$ExternalSyntheticLambda8;

    invoke-direct {v0, p2}, Lcn/hutool/core/map/LinkedForestMap$TreeEntryNode$$ExternalSyntheticLambda8;-><init>(Ljava/util/function/Consumer;)V

    const/4 p2, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcn/hutool/core/map/LinkedForestMap$TreeEntryNode;->traverseChildNodes(ZLjava/util/function/BiConsumer;Ljava/util/function/BiPredicate;)Lcn/hutool/core/map/LinkedForestMap$TreeEntryNode;

    return-void
.end method

.method public getChild(Ljava/lang/Object;)Lcn/hutool/core/map/LinkedForestMap$TreeEntryNode;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Lcn/hutool/core/map/LinkedForestMap$TreeEntryNode<",
            "TK;TV;>;"
        }
    .end annotation

    .line 625
    new-instance v0, Lcn/hutool/core/map/LinkedForestMap$TreeEntryNode$$ExternalSyntheticLambda9;

    invoke-direct {v0}, Lcn/hutool/core/map/LinkedForestMap$TreeEntryNode$$ExternalSyntheticLambda9;-><init>()V

    new-instance v1, Lcn/hutool/core/map/LinkedForestMap$TreeEntryNode$$ExternalSyntheticLambda10;

    invoke-direct {v1, p1}, Lcn/hutool/core/map/LinkedForestMap$TreeEntryNode$$ExternalSyntheticLambda10;-><init>(Ljava/lang/Object;)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcn/hutool/core/map/LinkedForestMap$TreeEntryNode;->traverseChildNodes(ZLjava/util/function/BiConsumer;Ljava/util/function/BiPredicate;)Lcn/hutool/core/map/LinkedForestMap$TreeEntryNode;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getChild(Ljava/lang/Object;)Lcn/hutool/core/map/TreeEntry;
    .locals 0

    .line 326
    invoke-virtual {p0, p1}, Lcn/hutool/core/map/LinkedForestMap$TreeEntryNode;->getChild(Ljava/lang/Object;)Lcn/hutool/core/map/LinkedForestMap$TreeEntryNode;

    move-result-object p1

    return-object p1
.end method

.method public getChildren()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "TK;",
            "Lcn/hutool/core/map/TreeEntry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 646
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 647
    new-instance v1, Lcn/hutool/core/map/LinkedForestMap$TreeEntryNode$$ExternalSyntheticLambda7;

    invoke-direct {v1, v0}, Lcn/hutool/core/map/LinkedForestMap$TreeEntryNode$$ExternalSyntheticLambda7;-><init>(Ljava/util/Map;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0, v3, v1, v2}, Lcn/hutool/core/map/LinkedForestMap$TreeEntryNode;->traverseChildNodes(ZLjava/util/function/BiConsumer;Ljava/util/function/BiPredicate;)Lcn/hutool/core/map/LinkedForestMap$TreeEntryNode;

    return-object v0
.end method

.method public getDeclaredChildren()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "TK;",
            "Lcn/hutool/core/map/TreeEntry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 636
    new-instance v0, Ljava/util/LinkedHashMap;

    iget-object v1, p0, Lcn/hutool/core/map/LinkedForestMap$TreeEntryNode;->children:Ljava/util/Map;

    invoke-direct {v0, v1}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method public getDeclaredParent()Lcn/hutool/core/map/LinkedForestMap$TreeEntryNode;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcn/hutool/core/map/LinkedForestMap$TreeEntryNode<",
            "TK;TV;>;"
        }
    .end annotation

    .line 489
    iget-object v0, p0, Lcn/hutool/core/map/LinkedForestMap$TreeEntryNode;->parent:Lcn/hutool/core/map/LinkedForestMap$TreeEntryNode;

    return-object v0
.end method

.method public bridge synthetic getDeclaredParent()Lcn/hutool/core/map/TreeEntry;
    .locals 1

    .line 326
    invoke-virtual {p0}, Lcn/hutool/core/map/LinkedForestMap$TreeEntryNode;->getDeclaredParent()Lcn/hutool/core/map/LinkedForestMap$TreeEntryNode;

    move-result-object v0

    return-object v0
.end method

.method public getKey()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 397
    iget-object v0, p0, Lcn/hutool/core/map/LinkedForestMap$TreeEntryNode;->key:Ljava/lang/Object;

    return-object v0
.end method

.method public getParent(Ljava/lang/Object;)Lcn/hutool/core/map/LinkedForestMap$TreeEntryNode;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Lcn/hutool/core/map/LinkedForestMap$TreeEntryNode<",
            "TK;TV;>;"
        }
    .end annotation

    .line 500
    new-instance v0, Lcn/hutool/core/map/LinkedForestMap$TreeEntryNode$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Lcn/hutool/core/map/LinkedForestMap$TreeEntryNode$$ExternalSyntheticLambda3;-><init>()V

    new-instance v1, Lcn/hutool/core/map/LinkedForestMap$TreeEntryNode$$ExternalSyntheticLambda4;

    invoke-direct {v1, p1}, Lcn/hutool/core/map/LinkedForestMap$TreeEntryNode$$ExternalSyntheticLambda4;-><init>(Ljava/lang/Object;)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcn/hutool/core/map/LinkedForestMap$TreeEntryNode;->traverseParentNodes(ZLjava/util/function/Consumer;Ljava/util/function/Predicate;)Lcn/hutool/core/map/LinkedForestMap$TreeEntryNode;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getParent(Ljava/lang/Object;)Lcn/hutool/core/map/TreeEntry;
    .locals 0

    .line 326
    invoke-virtual {p0, p1}, Lcn/hutool/core/map/LinkedForestMap$TreeEntryNode;->getParent(Ljava/lang/Object;)Lcn/hutool/core/map/LinkedForestMap$TreeEntryNode;

    move-result-object p1

    return-object p1
.end method

.method public getRoot()Lcn/hutool/core/map/LinkedForestMap$TreeEntryNode;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcn/hutool/core/map/LinkedForestMap$TreeEntryNode<",
            "TK;TV;>;"
        }
    .end annotation

    .line 473
    iget-object v0, p0, Lcn/hutool/core/map/LinkedForestMap$TreeEntryNode;->root:Lcn/hutool/core/map/LinkedForestMap$TreeEntryNode;

    invoke-static {v0}, Lcn/hutool/core/util/ObjectUtil;->isNotNull(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 474
    iget-object v0, p0, Lcn/hutool/core/map/LinkedForestMap$TreeEntryNode;->root:Lcn/hutool/core/map/LinkedForestMap$TreeEntryNode;

    return-object v0

    .line 476
    :cond_0
    new-instance v0, Lcn/hutool/core/map/LinkedForestMap$TreeEntryNode$$ExternalSyntheticLambda12;

    invoke-direct {v0}, Lcn/hutool/core/map/LinkedForestMap$TreeEntryNode$$ExternalSyntheticLambda12;-><init>()V

    new-instance v1, Lcn/hutool/core/map/LinkedForestMap$TreeEntryNode$$ExternalSyntheticLambda13;

    invoke-direct {v1}, Lcn/hutool/core/map/LinkedForestMap$TreeEntryNode$$ExternalSyntheticLambda13;-><init>()V

    const/4 v2, 0x1

    invoke-virtual {p0, v2, v0, v1}, Lcn/hutool/core/map/LinkedForestMap$TreeEntryNode;->traverseParentNodes(ZLjava/util/function/Consumer;Ljava/util/function/Predicate;)Lcn/hutool/core/map/LinkedForestMap$TreeEntryNode;

    move-result-object v0

    iput-object v0, p0, Lcn/hutool/core/map/LinkedForestMap$TreeEntryNode;->root:Lcn/hutool/core/map/LinkedForestMap$TreeEntryNode;

    return-object v0
.end method

.method public bridge synthetic getRoot()Lcn/hutool/core/map/TreeEntry;
    .locals 1

    .line 326
    invoke-virtual {p0}, Lcn/hutool/core/map/LinkedForestMap$TreeEntryNode;->getRoot()Lcn/hutool/core/map/LinkedForestMap$TreeEntryNode;

    move-result-object v0

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 417
    iget-object v0, p0, Lcn/hutool/core/map/LinkedForestMap$TreeEntryNode;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public getWeight()I
    .locals 1

    .line 407
    iget v0, p0, Lcn/hutool/core/map/LinkedForestMap$TreeEntryNode;->weight:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 687
    invoke-virtual {p0}, Lcn/hutool/core/map/LinkedForestMap$TreeEntryNode;->getKey()Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isRoot()Z
    .locals 1

    .line 463
    invoke-virtual {p0}, Lcn/hutool/core/map/LinkedForestMap$TreeEntryNode;->getRoot()Lcn/hutool/core/map/LinkedForestMap$TreeEntryNode;

    move-result-object v0

    if-ne v0, p0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method synthetic lambda$addChild$8$cn-hutool-core-map-LinkedForestMap$TreeEntryNode(Lcn/hutool/core/map/LinkedForestMap$TreeEntryNode;Lcn/hutool/core/map/LinkedForestMap$TreeEntryNode;)V
    .locals 3

    .line 578
    iget-object p2, p2, Lcn/hutool/core/map/LinkedForestMap$TreeEntryNode;->key:Ljava/lang/Object;

    iget-object p1, p1, Lcn/hutool/core/map/LinkedForestMap$TreeEntryNode;->key:Ljava/lang/Object;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcn/hutool/core/map/LinkedForestMap$TreeEntryNode;->key:Ljava/lang/Object;

    aput-object v2, v0, v1

    const-string v1, "circular reference between [{}] and [{}]!"

    invoke-static {p2, p1, v1, v0}, Lcn/hutool/core/lang/Assert;->notEquals(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method synthetic lambda$addChild$9$cn-hutool-core-map-LinkedForestMap$TreeEntryNode(Ljava/lang/Integer;Lcn/hutool/core/map/LinkedForestMap$TreeEntryNode;)V
    .locals 1

    .line 587
    invoke-virtual {p0}, Lcn/hutool/core/map/LinkedForestMap$TreeEntryNode;->getRoot()Lcn/hutool/core/map/LinkedForestMap$TreeEntryNode;

    move-result-object v0

    iput-object v0, p2, Lcn/hutool/core/map/LinkedForestMap$TreeEntryNode;->root:Lcn/hutool/core/map/LinkedForestMap$TreeEntryNode;

    .line 588
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0}, Lcn/hutool/core/map/LinkedForestMap$TreeEntryNode;->getWeight()I

    move-result v0

    add-int/2addr p1, v0

    add-int/lit8 p1, p1, 0x1

    iput p1, p2, Lcn/hutool/core/map/LinkedForestMap$TreeEntryNode;->weight:I

    return-void
.end method

.method removeDeclaredChild(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)V"
        }
    .end annotation

    .line 601
    iget-object v0, p0, Lcn/hutool/core/map/LinkedForestMap$TreeEntryNode;->children:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/hutool/core/map/LinkedForestMap$TreeEntryNode;

    .line 602
    invoke-static {v0}, Lcn/hutool/core/util/ObjectUtil;->isNull(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 607
    :cond_0
    iget-object v1, p0, Lcn/hutool/core/map/LinkedForestMap$TreeEntryNode;->children:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x0

    .line 610
    iput-object p1, v0, Lcn/hutool/core/map/LinkedForestMap$TreeEntryNode;->parent:Lcn/hutool/core/map/LinkedForestMap$TreeEntryNode;

    .line 611
    new-instance v1, Lcn/hutool/core/map/LinkedForestMap$TreeEntryNode$$ExternalSyntheticLambda1;

    invoke-direct {v1, v0}, Lcn/hutool/core/map/LinkedForestMap$TreeEntryNode$$ExternalSyntheticLambda1;-><init>(Lcn/hutool/core/map/LinkedForestMap$TreeEntryNode;)V

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1, p1}, Lcn/hutool/core/map/LinkedForestMap$TreeEntryNode;->traverseChildNodes(ZLjava/util/function/BiConsumer;Ljava/util/function/BiPredicate;)Lcn/hutool/core/map/LinkedForestMap$TreeEntryNode;

    return-void
.end method

.method public setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TV;"
        }
    .end annotation

    .line 428
    invoke-virtual {p0}, Lcn/hutool/core/map/LinkedForestMap$TreeEntryNode;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 429
    iput-object p1, p0, Lcn/hutool/core/map/LinkedForestMap$TreeEntryNode;->value:Ljava/lang/Object;

    return-object v0
.end method

.method traverseChildNodes(ZLjava/util/function/BiConsumer;Ljava/util/function/BiPredicate;)Lcn/hutool/core/map/LinkedForestMap$TreeEntryNode;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/function/BiConsumer<",
            "Ljava/lang/Integer;",
            "Lcn/hutool/core/map/LinkedForestMap$TreeEntryNode<",
            "TK;TV;>;>;",
            "Ljava/util/function/BiPredicate<",
            "Ljava/lang/Integer;",
            "Lcn/hutool/core/map/LinkedForestMap$TreeEntryNode<",
            "TK;TV;>;>;)",
            "Lcn/hutool/core/map/LinkedForestMap$TreeEntryNode<",
            "TK;TV;>;"
        }
    .end annotation

    .line 537
    new-instance v0, Lcn/hutool/core/map/LinkedForestMap$TreeEntryNode$$ExternalSyntheticLambda11;

    invoke-direct {v0}, Lcn/hutool/core/map/LinkedForestMap$TreeEntryNode$$ExternalSyntheticLambda11;-><init>()V

    invoke-static {p3, v0}, Lcn/hutool/core/util/ObjectUtil;->defaultIfNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/function/BiPredicate;

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/util/List;

    new-array v2, v0, [Lcn/hutool/core/map/LinkedForestMap$TreeEntryNode;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    .line 538
    invoke-static {v2}, Lcn/hutool/core/collection/CollUtil;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v1}, Lcn/hutool/core/collection/CollUtil;->newLinkedList([Ljava/lang/Object;)Ljava/util/LinkedList;

    move-result-object v1

    xor-int/lit8 v2, p1, 0x1

    const/4 v3, 0x0

    .line 542
    :goto_0
    invoke-interface {v1}, Ljava/util/Deque;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_4

    .line 543
    invoke-interface {v1}, Ljava/util/Deque;->removeFirst()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 544
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 545
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcn/hutool/core/map/LinkedForestMap$TreeEntryNode;

    if-eqz p1, :cond_0

    .line 547
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {p2, v6, v5}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 548
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {p3, v6, v5}, Ljava/util/function/BiPredicate;->test(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    return-object v5

    :cond_0
    move p1, v0

    .line 554
    :cond_1
    iget-object v5, v5, Lcn/hutool/core/map/LinkedForestMap$TreeEntryNode;->children:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-static {v4, v5}, Lcn/hutool/core/collection/CollUtil;->addAll(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/Collection;

    goto :goto_1

    .line 556
    :cond_2
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    .line 557
    invoke-interface {v1, v4}, Ljava/util/Deque;->addLast(Ljava/lang/Object;)V

    .line 559
    :cond_3
    invoke-static {v4}, Lcn/hutool/core/collection/CollUtil;->getLast(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/hutool/core/map/LinkedForestMap$TreeEntryNode;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    return-object v3
.end method

.method traverseParentNodes(ZLjava/util/function/Consumer;Ljava/util/function/Predicate;)Lcn/hutool/core/map/LinkedForestMap$TreeEntryNode;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/function/Consumer<",
            "Lcn/hutool/core/map/LinkedForestMap$TreeEntryNode<",
            "TK;TV;>;>;",
            "Ljava/util/function/Predicate<",
            "Lcn/hutool/core/map/LinkedForestMap$TreeEntryNode<",
            "TK;TV;>;>;)",
            "Lcn/hutool/core/map/LinkedForestMap$TreeEntryNode<",
            "TK;TV;>;"
        }
    .end annotation

    .line 445
    new-instance v0, Lcn/hutool/core/map/LinkedForestMap$TreeEntryNode$$ExternalSyntheticLambda6;

    invoke-direct {v0}, Lcn/hutool/core/map/LinkedForestMap$TreeEntryNode$$ExternalSyntheticLambda6;-><init>()V

    invoke-static {p3, v0}, Lcn/hutool/core/util/ObjectUtil;->defaultIfNull(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/function/Predicate;

    if-eqz p1, :cond_0

    move-object p1, p0

    goto :goto_0

    .line 446
    :cond_0
    iget-object p1, p0, Lcn/hutool/core/map/LinkedForestMap$TreeEntryNode;->parent:Lcn/hutool/core/map/LinkedForestMap$TreeEntryNode;

    .line 447
    :goto_0
    invoke-static {p1}, Lcn/hutool/core/util/ObjectUtil;->isNotNull(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 448
    invoke-interface {p2, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 449
    invoke-interface {p3, p1}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    .line 452
    :cond_1
    iget-object p1, p1, Lcn/hutool/core/map/LinkedForestMap$TreeEntryNode;->parent:Lcn/hutool/core/map/LinkedForestMap$TreeEntryNode;

    goto :goto_0

    :cond_2
    :goto_1
    return-object p1
.end method
