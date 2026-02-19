.class public Lcn/hutool/core/collection/FilterIter;
.super Ljava/lang/Object;
.source "FilterIter.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TE;>;"
    }
.end annotation


# instance fields
.field private final filter:Lcn/hutool/core/lang/Filter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcn/hutool/core/lang/Filter<",
            "-TE;>;"
        }
    .end annotation
.end field

.field private final iterator:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "+TE;>;"
        }
    .end annotation
.end field

.field private nextObject:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field

.field private nextObjectSet:Z


# direct methods
.method public constructor <init>(Ljava/util/Iterator;Lcn/hutool/core/lang/Filter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "+TE;>;",
            "Lcn/hutool/core/lang/Filter<",
            "-TE;>;)V"
        }
    .end annotation

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 28
    iput-boolean v0, p0, Lcn/hutool/core/collection/FilterIter;->nextObjectSet:Z

    .line 37
    invoke-static {p1}, Lcn/hutool/core/lang/Assert;->notNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Iterator;

    iput-object p1, p0, Lcn/hutool/core/collection/FilterIter;->iterator:Ljava/util/Iterator;

    .line 38
    iput-object p2, p0, Lcn/hutool/core/collection/FilterIter;->filter:Lcn/hutool/core/lang/Filter;

    return-void
.end method

.method private setNextObject()Z
    .locals 2

    .line 85
    :cond_0
    iget-object v0, p0, Lcn/hutool/core/collection/FilterIter;->iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 86
    iget-object v0, p0, Lcn/hutool/core/collection/FilterIter;->iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 87
    iget-object v1, p0, Lcn/hutool/core/collection/FilterIter;->filter:Lcn/hutool/core/lang/Filter;

    if-eqz v1, :cond_1

    invoke-interface {v1, v0}, Lcn/hutool/core/lang/Filter;->accept(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 88
    :cond_1
    iput-object v0, p0, Lcn/hutool/core/collection/FilterIter;->nextObject:Ljava/lang/Object;

    const/4 v0, 0x1

    .line 89
    iput-boolean v0, p0, Lcn/hutool/core/collection/FilterIter;->nextObjectSet:Z

    return v0

    :cond_2
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public getFilter()Lcn/hutool/core/lang/Filter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcn/hutool/core/lang/Filter<",
            "-TE;>;"
        }
    .end annotation

    .line 78
    iget-object v0, p0, Lcn/hutool/core/collection/FilterIter;->filter:Lcn/hutool/core/lang/Filter;

    return-object v0
.end method

.method public getIterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "+TE;>;"
        }
    .end annotation

    .line 69
    iget-object v0, p0, Lcn/hutool/core/collection/FilterIter;->iterator:Ljava/util/Iterator;

    return-object v0
.end method

.method public hasNext()Z
    .locals 1

    .line 43
    iget-boolean v0, p0, Lcn/hutool/core/collection/FilterIter;->nextObjectSet:Z

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcn/hutool/core/collection/FilterIter;->setNextObject()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 48
    iget-boolean v0, p0, Lcn/hutool/core/collection/FilterIter;->nextObjectSet:Z

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcn/hutool/core/collection/FilterIter;->setNextObject()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 49
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 51
    iput-boolean v0, p0, Lcn/hutool/core/collection/FilterIter;->nextObjectSet:Z

    .line 52
    iget-object v0, p0, Lcn/hutool/core/collection/FilterIter;->nextObject:Ljava/lang/Object;

    return-object v0
.end method

.method public remove()V
    .locals 2

    .line 57
    iget-boolean v0, p0, Lcn/hutool/core/collection/FilterIter;->nextObjectSet:Z

    if-nez v0, :cond_0

    .line 60
    iget-object v0, p0, Lcn/hutool/core/collection/FilterIter;->iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    return-void

    .line 58
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "remove() cannot be called"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
