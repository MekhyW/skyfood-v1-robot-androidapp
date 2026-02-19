.class public Lcn/hutool/core/collection/RandomAccessAvgPartition;
.super Lcn/hutool/core/collection/AvgPartition;
.source "RandomAccessAvgPartition.java"

# interfaces
.implements Ljava/util/RandomAccess;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcn/hutool/core/collection/AvgPartition<",
        "TT;>;",
        "Ljava/util/RandomAccess;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/util/List;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;I)V"
        }
    .end annotation

    .line 30
    invoke-direct {p0, p1, p2}, Lcn/hutool/core/collection/AvgPartition;-><init>(Ljava/util/List;I)V

    return-void
.end method
