.class public Lcom/reglink/common/KeyedLRU;
.super Ljava/lang/Object;
.source "KeyedLRU.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/reglink/common/KeyedLRU$Listener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private LRU:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "TK;>;"
        }
    .end annotation
.end field

.field private MaxCacheNum:I

.field private hashMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field listener:Lcom/reglink/common/KeyedLRU$Listener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/reglink/common/KeyedLRU$Listener<",
            "TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/reglink/common/KeyedLRU;->hashMap:Ljava/util/HashMap;

    .line 11
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/reglink/common/KeyedLRU;->LRU:Ljava/util/LinkedList;

    .line 20
    iput p1, p0, Lcom/reglink/common/KeyedLRU;->MaxCacheNum:I

    return-void
.end method

.method private put(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)V"
        }
    .end annotation

    .line 27
    iget-object v0, p0, Lcom/reglink/common/KeyedLRU;->LRU:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 29
    iget-object v1, p0, Lcom/reglink/common/KeyedLRU;->LRU:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->remove(I)Ljava/lang/Object;

    .line 30
    :cond_0
    iget-object v0, p0, Lcom/reglink/common/KeyedLRU;->LRU:Ljava/util/LinkedList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Ljava/util/LinkedList;->add(ILjava/lang/Object;)V

    .line 32
    :cond_1
    iget-object v0, p0, Lcom/reglink/common/KeyedLRU;->hashMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    iget-object p1, p0, Lcom/reglink/common/KeyedLRU;->LRU:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result p1

    iget p2, p0, Lcom/reglink/common/KeyedLRU;->MaxCacheNum:I

    if-le p1, p2, :cond_2

    .line 34
    iget-object p1, p0, Lcom/reglink/common/KeyedLRU;->LRU:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    invoke-virtual {p1, p2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object p1

    .line 35
    iget-object p2, p0, Lcom/reglink/common/KeyedLRU;->hashMap:Ljava/util/HashMap;

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 36
    iget-object v0, p0, Lcom/reglink/common/KeyedLRU;->LRU:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->remove(I)Ljava/lang/Object;

    .line 37
    iget-object v0, p0, Lcom/reglink/common/KeyedLRU;->hashMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    iget-object v0, p0, Lcom/reglink/common/KeyedLRU;->listener:Lcom/reglink/common/KeyedLRU$Listener;

    if-eqz v0, :cond_2

    .line 40
    invoke-interface {v0, p1, p2}, Lcom/reglink/common/KeyedLRU$Listener;->onRemove(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    return-void
.end method


# virtual methods
.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    .line 45
    iget-object v0, p0, Lcom/reglink/common/KeyedLRU;->hashMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 47
    invoke-direct {p0, p1, v0}, Lcom/reglink/common/KeyedLRU;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    .line 50
    :cond_0
    iget-object v0, p0, Lcom/reglink/common/KeyedLRU;->listener:Lcom/reglink/common/KeyedLRU$Listener;

    if-eqz v0, :cond_1

    .line 51
    invoke-interface {v0, p1}, Lcom/reglink/common/KeyedLRU$Listener;->onNotFound(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 53
    invoke-direct {p0, p1, v0}, Lcom/reglink/common/KeyedLRU;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public setListener(Lcom/reglink/common/KeyedLRU$Listener;)V
    .locals 0

    .line 24
    iput-object p1, p0, Lcom/reglink/common/KeyedLRU;->listener:Lcom/reglink/common/KeyedLRU$Listener;

    return-void
.end method
