.class public Lcn/hutool/core/comparator/FuncComparator;
.super Lcn/hutool/core/comparator/NullComparator;
.source "FuncComparator.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcn/hutool/core/comparator/NullComparator<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final func:Ljava/util/function/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Function<",
            "TT;",
            "Ljava/lang/Comparable<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ZLjava/util/function/Function;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/function/Function<",
            "TT;",
            "Ljava/lang/Comparable<",
            "*>;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 25
    invoke-direct {p0, p1, v0}, Lcn/hutool/core/comparator/NullComparator;-><init>(ZLjava/util/Comparator;)V

    .line 26
    iput-object p2, p0, Lcn/hutool/core/comparator/FuncComparator;->func:Ljava/util/function/Function;

    return-void
.end method

.method private compare(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Comparable;Ljava/lang/Comparable;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;",
            "Ljava/lang/Comparable;",
            "Ljava/lang/Comparable;",
            ")I"
        }
    .end annotation

    .line 56
    iget-boolean v0, p0, Lcn/hutool/core/comparator/FuncComparator;->nullGreater:Z

    invoke-static {p3, p4, v0}, Lcn/hutool/core/util/ObjectUtil;->compare(Ljava/lang/Comparable;Ljava/lang/Comparable;Z)I

    move-result p3

    if-nez p3, :cond_0

    .line 59
    iget-boolean p3, p0, Lcn/hutool/core/comparator/FuncComparator;->nullGreater:Z

    invoke-static {p1, p2, p3}, Lcn/hutool/core/comparator/CompareUtil;->compare(Ljava/lang/Object;Ljava/lang/Object;Z)I

    move-result p3

    :cond_0
    return p3
.end method


# virtual methods
.method protected doCompare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)I"
        }
    .end annotation

    .line 34
    :try_start_0
    iget-object v0, p0, Lcn/hutool/core/comparator/FuncComparator;->func:Ljava/util/function/Function;

    invoke-interface {v0, p1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Comparable;

    .line 35
    iget-object v1, p0, Lcn/hutool/core/comparator/FuncComparator;->func:Ljava/util/function/Function;

    invoke-interface {v1, p2}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Comparable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    invoke-direct {p0, p1, p2, v0, v1}, Lcn/hutool/core/comparator/FuncComparator;->compare(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result p1

    return p1

    :catch_0
    move-exception p1

    .line 37
    new-instance p2, Lcn/hutool/core/comparator/ComparatorException;

    invoke-direct {p2, p1}, Lcn/hutool/core/comparator/ComparatorException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method
