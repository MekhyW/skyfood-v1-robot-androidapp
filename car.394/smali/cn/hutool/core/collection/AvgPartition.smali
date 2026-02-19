.class public Lcn/hutool/core/collection/AvgPartition;
.super Lcn/hutool/core/collection/Partition;
.source "AvgPartition.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcn/hutool/core/collection/Partition<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final limit:I

.field final remainder:I


# direct methods
.method public constructor <init>(Ljava/util/List;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;I)V"
        }
    .end annotation

    .line 35
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-gtz p2, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, p2

    :goto_0
    div-int/2addr v0, v2

    invoke-direct {p0, p1, v0}, Lcn/hutool/core/collection/Partition;-><init>(Ljava/util/List;I)V

    const/4 v0, 0x0

    if-lez p2, :cond_1

    goto :goto_1

    :cond_1
    move v1, v0

    :goto_1
    const-string v2, "Partition limit must be > 0"

    new-array v0, v0, [Ljava/lang/Object;

    .line 36
    invoke-static {v1, v2, v0}, Lcn/hutool/core/lang/Assert;->isTrue(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 37
    iput p2, p0, Lcn/hutool/core/collection/AvgPartition;->limit:I

    .line 38
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    rem-int/2addr p1, p2

    iput p1, p0, Lcn/hutool/core/collection/AvgPartition;->remainder:I

    return-void
.end method


# virtual methods
.method public bridge synthetic get(I)Ljava/lang/Object;
    .locals 0

    .line 22
    invoke-virtual {p0, p1}, Lcn/hutool/core/collection/AvgPartition;->get(I)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public get(I)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 43
    iget v0, p0, Lcn/hutool/core/collection/AvgPartition;->size:I

    .line 44
    iget v1, p0, Lcn/hutool/core/collection/AvgPartition;->remainder:I

    mul-int v2, p1, v0

    .line 46
    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result v3

    add-int/2addr v2, v3

    add-int/2addr v0, v2

    add-int/lit8 p1, p1, 0x1

    if-gt p1, v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    .line 52
    :cond_0
    iget-object p1, p0, Lcn/hutool/core/collection/AvgPartition;->list:Ljava/util/List;

    invoke-interface {p1, v2, v0}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public size()I
    .locals 1

    .line 57
    iget v0, p0, Lcn/hutool/core/collection/AvgPartition;->limit:I

    return v0
.end method
