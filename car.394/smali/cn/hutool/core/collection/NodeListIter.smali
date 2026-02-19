.class public Lcn/hutool/core/collection/NodeListIter;
.super Ljava/lang/Object;
.source "NodeListIter.java"

# interfaces
.implements Lcn/hutool/core/collection/ResettableIter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcn/hutool/core/collection/ResettableIter<",
        "Lorg/w3c/dom/Node;",
        ">;"
    }
.end annotation


# instance fields
.field private index:I

.field private final nodeList:Lorg/w3c/dom/NodeList;


# direct methods
.method public constructor <init>(Lorg/w3c/dom/NodeList;)V
    .locals 2

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 25
    iput v0, p0, Lcn/hutool/core/collection/NodeListIter;->index:I

    const-string v1, "NodeList must not be null."

    new-array v0, v0, [Ljava/lang/Object;

    .line 33
    invoke-static {p1, v1, v0}, Lcn/hutool/core/lang/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/w3c/dom/NodeList;

    iput-object p1, p0, Lcn/hutool/core/collection/NodeListIter;->nodeList:Lorg/w3c/dom/NodeList;

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    .line 38
    iget-object v0, p0, Lcn/hutool/core/collection/NodeListIter;->nodeList:Lorg/w3c/dom/NodeList;

    if-eqz v0, :cond_0

    iget v1, p0, Lcn/hutool/core/collection/NodeListIter;->index:I

    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v0

    if-ge v1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 19
    invoke-virtual {p0}, Lcn/hutool/core/collection/NodeListIter;->next()Lorg/w3c/dom/Node;

    move-result-object v0

    return-object v0
.end method

.method public next()Lorg/w3c/dom/Node;
    .locals 3

    .line 43
    iget-object v0, p0, Lcn/hutool/core/collection/NodeListIter;->nodeList:Lorg/w3c/dom/NodeList;

    if-eqz v0, :cond_0

    iget v1, p0, Lcn/hutool/core/collection/NodeListIter;->index:I

    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 44
    iget-object v0, p0, Lcn/hutool/core/collection/NodeListIter;->nodeList:Lorg/w3c/dom/NodeList;

    iget v1, p0, Lcn/hutool/core/collection/NodeListIter;->index:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcn/hutool/core/collection/NodeListIter;->index:I

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    return-object v0

    .line 46
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "underlying nodeList has no more elements"

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public remove()V
    .locals 2

    .line 56
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "remove() method not supported for a NodeListIterator."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x0

    .line 61
    iput v0, p0, Lcn/hutool/core/collection/NodeListIter;->index:I

    return-void
.end method
