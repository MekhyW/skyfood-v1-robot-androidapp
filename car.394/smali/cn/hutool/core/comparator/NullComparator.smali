.class public Lcn/hutool/core/comparator/NullComparator;
.super Ljava/lang/Object;
.source "NullComparator.java"

# interfaces
.implements Ljava/util/Comparator;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "TT;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field protected final comparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "TT;>;"
        }
    .end annotation
.end field

.field protected final nullGreater:Z


# direct methods
.method public constructor <init>(ZLjava/util/Comparator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/Comparator<",
            "-TT;>;)V"
        }
    .end annotation

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-boolean p1, p0, Lcn/hutool/core/comparator/NullComparator;->nullGreater:Z

    .line 32
    iput-object p2, p0, Lcn/hutool/core/comparator/NullComparator;->comparator:Ljava/util/Comparator;

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)I"
        }
    .end annotation

    if-ne p1, p2, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 v0, 0x1

    const/4 v1, -0x1

    if-nez p1, :cond_2

    .line 40
    iget-boolean p1, p0, Lcn/hutool/core/comparator/NullComparator;->nullGreater:Z

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    return v0

    :cond_2
    if-nez p2, :cond_4

    .line 42
    iget-boolean p1, p0, Lcn/hutool/core/comparator/NullComparator;->nullGreater:Z

    if-eqz p1, :cond_3

    move v0, v1

    :cond_3
    return v0

    .line 44
    :cond_4
    invoke-virtual {p0, p1, p2}, Lcn/hutool/core/comparator/NullComparator;->doCompare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method protected doCompare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)I"
        }
    .end annotation

    .line 64
    iget-object v0, p0, Lcn/hutool/core/comparator/NullComparator;->comparator:Ljava/util/Comparator;

    if-nez v0, :cond_1

    .line 65
    instance-of v0, p1, Ljava/lang/Comparable;

    if-eqz v0, :cond_0

    instance-of v0, p2, Ljava/lang/Comparable;

    if-eqz v0, :cond_0

    .line 66
    check-cast p1, Ljava/lang/Comparable;

    invoke-interface {p1, p2}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1

    .line 71
    :cond_1
    invoke-interface {v0, p1, p2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public thenComparing(Ljava/util/Comparator;)Ljava/util/Comparator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "-TT;>;)",
            "Ljava/util/Comparator<",
            "TT;>;"
        }
    .end annotation

    .line 50
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    new-instance v0, Lcn/hutool/core/comparator/NullComparator;

    iget-boolean v1, p0, Lcn/hutool/core/comparator/NullComparator;->nullGreater:Z

    iget-object v2, p0, Lcn/hutool/core/comparator/NullComparator;->comparator:Ljava/util/Comparator;

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v2, p1}, Ljava/util/Comparator;->thenComparing(Ljava/util/Comparator;)Ljava/util/Comparator;

    move-result-object p1

    :goto_0
    invoke-direct {v0, v1, p1}, Lcn/hutool/core/comparator/NullComparator;-><init>(ZLjava/util/Comparator;)V

    return-object v0
.end method
