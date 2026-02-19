.class public Lcn/hutool/core/collection/IterChain;
.super Ljava/lang/Object;
.source "IterChain.java"

# interfaces
.implements Ljava/util/Iterator;
.implements Lcn/hutool/core/lang/Chain;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TT;>;",
        "Lcn/hutool/core/lang/Chain<",
        "Ljava/util/Iterator<",
        "TT;>;",
        "Lcn/hutool/core/collection/IterChain<",
        "TT;>;>;"
    }
.end annotation


# instance fields
.field protected final allIterators:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/Iterator<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field protected currentIter:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/hutool/core/collection/IterChain;->allIterators:Ljava/util/List;

    const/4 v0, -0x1

    .line 50
    iput v0, p0, Lcn/hutool/core/collection/IterChain;->currentIter:I

    return-void
.end method

.method public varargs constructor <init>([Ljava/util/Iterator;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/util/Iterator<",
            "TT;>;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/hutool/core/collection/IterChain;->allIterators:Ljava/util/List;

    const/4 v0, -0x1

    .line 50
    iput v0, p0, Lcn/hutool/core/collection/IterChain;->currentIter:I

    .line 34
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 35
    invoke-virtual {p0, v2}, Lcn/hutool/core/collection/IterChain;->addChain(Ljava/util/Iterator;)Lcn/hutool/core/collection/IterChain;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public addChain(Ljava/util/Iterator;)Lcn/hutool/core/collection/IterChain;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "TT;>;)",
            "Lcn/hutool/core/collection/IterChain<",
            "TT;>;"
        }
    .end annotation

    .line 41
    iget-object v0, p0, Lcn/hutool/core/collection/IterChain;->allIterators:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 44
    iget-object v0, p0, Lcn/hutool/core/collection/IterChain;->allIterators:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0

    .line 42
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Duplicate iterator"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic addChain(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 17
    check-cast p1, Ljava/util/Iterator;

    invoke-virtual {p0, p1}, Lcn/hutool/core/collection/IterChain;->addChain(Ljava/util/Iterator;)Lcn/hutool/core/collection/IterChain;

    move-result-object p1

    return-object p1
.end method

.method public hasNext()Z
    .locals 4

    .line 54
    iget v0, p0, Lcn/hutool/core/collection/IterChain;->currentIter:I

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    .line 55
    iput v2, p0, Lcn/hutool/core/collection/IterChain;->currentIter:I

    .line 58
    :cond_0
    iget-object v0, p0, Lcn/hutool/core/collection/IterChain;->allIterators:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 59
    iget v1, p0, Lcn/hutool/core/collection/IterChain;->currentIter:I

    :goto_0
    if-ge v1, v0, :cond_2

    .line 60
    iget-object v3, p0, Lcn/hutool/core/collection/IterChain;->allIterators:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Iterator;

    .line 61
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 62
    iput v1, p0, Lcn/hutool/core/collection/IterChain;->currentIter:I

    const/4 v0, 0x1

    return v0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v2
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Iterator<",
            "TT;>;>;"
        }
    .end annotation

    .line 89
    iget-object v0, p0, Lcn/hutool/core/collection/IterChain;->allIterators:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public next()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 71
    invoke-virtual {p0}, Lcn/hutool/core/collection/IterChain;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 75
    iget-object v0, p0, Lcn/hutool/core/collection/IterChain;->allIterators:Ljava/util/List;

    iget v1, p0, Lcn/hutool/core/collection/IterChain;->currentIter:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 72
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public remove()V
    .locals 2

    .line 80
    iget v0, p0, Lcn/hutool/core/collection/IterChain;->currentIter:I

    const/4 v1, -0x1

    if-eq v1, v0, :cond_0

    .line 84
    iget-object v1, p0, Lcn/hutool/core/collection/IterChain;->allIterators:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    return-void

    .line 81
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "next() has not yet been called"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
