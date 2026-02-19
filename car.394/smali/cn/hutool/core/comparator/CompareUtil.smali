.class public Lcn/hutool/core/comparator/CompareUtil;
.super Ljava/lang/Object;
.source "CompareUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static compare(Ljava/lang/Comparable;Ljava/lang/Comparable;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Comparable<",
            "-TT;>;>(TT;TT;)I"
        }
    .end annotation

    const/4 v0, 0x0

    .line 59
    invoke-static {p0, p1, v0}, Lcn/hutool/core/comparator/CompareUtil;->compare(Ljava/lang/Comparable;Ljava/lang/Comparable;Z)I

    move-result p0

    return p0
.end method

.method public static compare(Ljava/lang/Comparable;Ljava/lang/Comparable;Z)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Comparable<",
            "-TT;>;>(TT;TT;Z)I"
        }
    .end annotation

    if-ne p0, p1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 v0, 0x1

    const/4 v1, -0x1

    if-nez p0, :cond_2

    if-eqz p2, :cond_1

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    return v0

    :cond_2
    if-nez p1, :cond_4

    if-eqz p2, :cond_3

    move v0, v1

    :cond_3
    return v0

    .line 80
    :cond_4
    invoke-interface {p0, p1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public static compare(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;TT;",
            "Ljava/util/Comparator<",
            "TT;>;)I"
        }
    .end annotation

    if-nez p2, :cond_0

    .line 44
    check-cast p0, Ljava/lang/Comparable;

    check-cast p1, Ljava/lang/Comparable;

    invoke-static {p0, p1}, Lcn/hutool/core/comparator/CompareUtil;->compare(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result p0

    return p0

    .line 46
    :cond_0
    invoke-interface {p2, p0, p1}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public static compare(Ljava/lang/Object;Ljava/lang/Object;Z)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;TT;Z)I"
        }
    .end annotation

    const/4 v0, 0x0

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x1

    const/4 v2, -0x1

    if-nez p0, :cond_2

    if-eqz p2, :cond_1

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    return v1

    :cond_2
    if-nez p1, :cond_4

    if-eqz p2, :cond_3

    move v1, v2

    :cond_3
    return v1

    .line 109
    :cond_4
    instance-of p2, p0, Ljava/lang/Comparable;

    if-eqz p2, :cond_5

    instance-of p2, p1, Ljava/lang/Comparable;

    if-eqz p2, :cond_5

    .line 111
    check-cast p0, Ljava/lang/Comparable;

    invoke-interface {p0, p1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result p0

    return p0

    .line 114
    :cond_5
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_6

    return v0

    .line 118
    :cond_6
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p2

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {p2, v0}, Ljava/lang/Integer;->compare(II)I

    move-result p2

    if-nez p2, :cond_7

    .line 120
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcn/hutool/core/comparator/CompareUtil;->compare(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result p2

    :cond_7
    return p2
.end method

.method public static varargs comparingIndexed(Ljava/util/function/Function;Z[Ljava/lang/Object;)Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Function<",
            "-TT;+TU;>;Z[TU;)",
            "Ljava/util/Comparator<",
            "TT;>;"
        }
    .end annotation

    .line 186
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    new-instance v0, Lcn/hutool/core/comparator/IndexedComparator;

    invoke-direct {v0, p1, p2}, Lcn/hutool/core/comparator/IndexedComparator;-><init>(Z[Ljava/lang/Object;)V

    .line 188
    new-instance p1, Lcn/hutool/core/comparator/CompareUtil$$ExternalSyntheticLambda2;

    invoke-direct {p1, v0, p0}, Lcn/hutool/core/comparator/CompareUtil$$ExternalSyntheticLambda2;-><init>(Lcn/hutool/core/comparator/IndexedComparator;Ljava/util/function/Function;)V

    return-object p1
.end method

.method public static varargs comparingIndexed(Ljava/util/function/Function;[Ljava/lang/Object;)Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Function<",
            "-TT;+TU;>;[TU;)",
            "Ljava/util/Comparator<",
            "TT;>;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 169
    invoke-static {p0, v0, p1}, Lcn/hutool/core/comparator/CompareUtil;->comparingIndexed(Ljava/util/function/Function;Z[Ljava/lang/Object;)Ljava/util/Comparator;

    move-result-object p0

    return-object p0
.end method

.method public static comparingPinyin(Ljava/util/function/Function;)Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Function<",
            "TT;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Comparator<",
            "TT;>;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 135
    invoke-static {p0, v0}, Lcn/hutool/core/comparator/CompareUtil;->comparingPinyin(Ljava/util/function/Function;Z)Ljava/util/Comparator;

    move-result-object p0

    return-object p0
.end method

.method public static comparingPinyin(Ljava/util/function/Function;Z)Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Function<",
            "TT;",
            "Ljava/lang/String;",
            ">;Z)",
            "Ljava/util/Comparator<",
            "TT;>;"
        }
    .end annotation

    .line 148
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    new-instance v0, Lcn/hutool/core/comparator/PinyinComparator;

    invoke-direct {v0}, Lcn/hutool/core/comparator/PinyinComparator;-><init>()V

    if-eqz p1, :cond_0

    .line 151
    new-instance p1, Lcn/hutool/core/comparator/CompareUtil$$ExternalSyntheticLambda0;

    invoke-direct {p1, v0, p0}, Lcn/hutool/core/comparator/CompareUtil$$ExternalSyntheticLambda0;-><init>(Lcn/hutool/core/comparator/PinyinComparator;Ljava/util/function/Function;)V

    return-object p1

    .line 153
    :cond_0
    new-instance p1, Lcn/hutool/core/comparator/CompareUtil$$ExternalSyntheticLambda1;

    invoke-direct {p1, v0, p0}, Lcn/hutool/core/comparator/CompareUtil$$ExternalSyntheticLambda1;-><init>(Lcn/hutool/core/comparator/PinyinComparator;Ljava/util/function/Function;)V

    return-object p1
.end method

.method static synthetic lambda$comparingIndexed$2(Lcn/hutool/core/comparator/IndexedComparator;Ljava/util/function/Function;Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 188
    invoke-interface {p1, p2}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-interface {p1, p3}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Lcn/hutool/core/comparator/IndexedComparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method static synthetic lambda$comparingPinyin$0(Lcn/hutool/core/comparator/PinyinComparator;Ljava/util/function/Function;Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 151
    invoke-interface {p1, p3}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    invoke-interface {p1, p2}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p3, p1}, Lcn/hutool/core/comparator/PinyinComparator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method static synthetic lambda$comparingPinyin$1(Lcn/hutool/core/comparator/PinyinComparator;Ljava/util/function/Function;Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 153
    invoke-interface {p1, p2}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-interface {p1, p3}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p2, p1}, Lcn/hutool/core/comparator/PinyinComparator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static naturalComparator()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Ljava/lang/Comparable<",
            "-TE;>;>()",
            "Ljava/util/Comparator<",
            "TE;>;"
        }
    .end annotation

    .line 23
    sget-object v0, Lcn/hutool/core/comparator/ComparableComparator;->INSTANCE:Lcn/hutool/core/comparator/ComparableComparator;

    return-object v0
.end method
