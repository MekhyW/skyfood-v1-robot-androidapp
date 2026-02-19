.class public Lcn/hutool/core/collection/PartitionIter;
.super Ljava/lang/Object;
.source "PartitionIter.java"

# interfaces
.implements Lcn/hutool/core/collection/IterableIter;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcn/hutool/core/collection/IterableIter<",
        "Ljava/util/List<",
        "TT;>;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field protected final iterator:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "TT;>;"
        }
    .end annotation
.end field

.field protected final partitionSize:I


# direct methods
.method public constructor <init>(Ljava/util/Iterator;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "TT;>;I)V"
        }
    .end annotation

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcn/hutool/core/collection/PartitionIter;->iterator:Ljava/util/Iterator;

    .line 40
    iput p2, p0, Lcn/hutool/core/collection/PartitionIter;->partitionSize:I

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .line 45
    iget-object v0, p0, Lcn/hutool/core/collection/PartitionIter;->iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 20
    invoke-virtual {p0}, Lcn/hutool/core/collection/PartitionIter;->next()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public next()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    iget v1, p0, Lcn/hutool/core/collection/PartitionIter;->partitionSize:I

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    .line 51
    :goto_0
    iget v2, p0, Lcn/hutool/core/collection/PartitionIter;->partitionSize:I

    if-ge v1, v2, :cond_1

    .line 52
    iget-object v2, p0, Lcn/hutool/core/collection/PartitionIter;->iterator:Ljava/util/Iterator;

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    .line 55
    :cond_0
    iget-object v2, p0, Lcn/hutool/core/collection/PartitionIter;->iterator:Ljava/util/Iterator;

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-object v0
.end method
