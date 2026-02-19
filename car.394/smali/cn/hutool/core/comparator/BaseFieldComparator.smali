.class public abstract Lcn/hutool/core/comparator/BaseFieldComparator;
.super Ljava/lang/Object;
.source "BaseFieldComparator.java"

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

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x30543344c633bf13L


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private compare(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Comparable;Ljava/lang/Comparable;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;",
            "Ljava/lang/Comparable;",
            "Ljava/lang/Comparable;",
            ")I"
        }
    .end annotation

    .line 53
    invoke-static {p3, p4}, Lcn/hutool/core/util/ObjectUtil;->compare(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result p3

    if-nez p3, :cond_0

    const/4 p3, 0x1

    .line 56
    invoke-static {p1, p2, p3}, Lcn/hutool/core/comparator/CompareUtil;->compare(Ljava/lang/Object;Ljava/lang/Object;Z)I

    move-result p3

    :cond_0
    return p3
.end method


# virtual methods
.method protected compareItem(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Field;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;",
            "Ljava/lang/reflect/Field;",
            ")I"
        }
    .end annotation

    if-ne p1, p2, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    if-nez p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    if-nez p2, :cond_2

    const/4 p1, -0x1

    return p1

    .line 42
    :cond_2
    :try_start_0
    invoke-static {p1, p3}, Lcn/hutool/core/util/ReflectUtil;->getFieldValue(Ljava/lang/Object;Ljava/lang/reflect/Field;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Comparable;

    .line 43
    invoke-static {p2, p3}, Lcn/hutool/core/util/ReflectUtil;->getFieldValue(Ljava/lang/Object;Ljava/lang/reflect/Field;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Comparable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    invoke-direct {p0, p1, p2, v0, p3}, Lcn/hutool/core/comparator/BaseFieldComparator;->compare(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result p1

    return p1

    :catch_0
    move-exception p1

    .line 45
    new-instance p2, Lcn/hutool/core/comparator/ComparatorException;

    invoke-direct {p2, p1}, Lcn/hutool/core/comparator/ComparatorException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method
