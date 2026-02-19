.class public Lcn/hutool/core/util/ArrayUtil;
.super Lcn/hutool/core/util/PrimitiveArrayUtil;
.source "ArrayUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Lcn/hutool/core/util/PrimitiveArrayUtil;-><init>()V

    return-void
.end method

.method public static varargs addAll([[Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([[TT;)[TT;"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .line 552
    array-length v0, p0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    .line 553
    aget-object p0, p0, v2

    return-object p0

    .line 557
    :cond_0
    array-length v0, p0

    move v1, v2

    move v3, v1

    :goto_0
    if-ge v1, v0, :cond_2

    aget-object v4, p0, v1

    .line 558
    invoke-static {v4}, Lcn/hutool/core/util/ArrayUtil;->isNotEmpty([Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 559
    array-length v4, v4

    add-int/2addr v3, v4

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 562
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0, v3}, Lcn/hutool/core/util/ArrayUtil;->newArray(Ljava/lang/Class;I)[Ljava/lang/Object;

    move-result-object v0

    .line 565
    array-length v1, p0

    move v3, v2

    move v4, v3

    :goto_1
    if-ge v3, v1, :cond_4

    aget-object v5, p0, v3

    .line 566
    invoke-static {v5}, Lcn/hutool/core/util/ArrayUtil;->isNotEmpty([Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 567
    array-length v6, v5

    invoke-static {v5, v2, v0, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 568
    array-length v5, v5

    add-int/2addr v4, v5

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    return-object v0
.end method

.method public static varargs append(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "[TT;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .line 330
    invoke-static {p0}, Lcn/hutool/core/util/ArrayUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    .line 333
    :cond_0
    invoke-static {p0}, Lcn/hutool/core/util/ArrayUtil;->length(Ljava/lang/Object;)I

    move-result v0

    invoke-static {p0, v0, p1}, Lcn/hutool/core/util/ArrayUtil;->insert(Ljava/lang/Object;I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static varargs append([Ljava/lang/Object;[Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;[TT;)[TT;"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .line 313
    invoke-static {p0}, Lcn/hutool/core/util/ArrayUtil;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    .line 316
    :cond_0
    array-length v0, p0

    invoke-static {p0, v0, p1}, Lcn/hutool/core/util/ArrayUtil;->insert([Ljava/lang/Object;I[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static cast(Ljava/lang/Class;Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            ")[",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    if-eqz p1, :cond_3

    .line 288
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_2

    if-nez p0, :cond_0

    .line 292
    check-cast p1, [Ljava/lang/Object;

    check-cast p1, [Ljava/lang/Object;

    return-object p1

    .line 295
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p0

    .line 296
    :cond_1
    check-cast p1, [Ljava/lang/Object;

    check-cast p1, [Ljava/lang/Object;

    .line 297
    array-length v0, p1

    invoke-static {p0, v0}, Lcn/hutool/core/util/ArrayUtil;->newArray(Ljava/lang/Class;I)[Ljava/lang/Object;

    move-result-object p0

    .line 298
    array-length v0, p1

    const/4 v1, 0x0

    invoke-static {p1, v1, p0, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p0

    .line 289
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Argument [arrayObj] is not array !"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 286
    :cond_3
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Argument [arrayObj] is null !"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static clone(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)TT;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 634
    :cond_0
    invoke-static {p0}, Lcn/hutool/core/util/ArrayUtil;->isArray(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 636
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    .line 637
    invoke-virtual {v0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 638
    invoke-static {p0}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v1

    .line 639
    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    add-int/lit8 v2, v1, -0x1

    if-lez v1, :cond_2

    .line 641
    invoke-static {p0, v2}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v2, v1}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    move v1, v2

    goto :goto_0

    .line 644
    :cond_1
    check-cast p0, [Ljava/lang/Object;

    check-cast p0, [Ljava/lang/Object;

    invoke-virtual {p0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    :cond_2
    return-object v0
.end method

.method public static clone([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 619
    :cond_0
    invoke-virtual {p0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/Object;

    return-object p0
.end method

.method public static contains([Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;TT;)Z"
        }
    .end annotation

    .line 897
    invoke-static {p0, p1}, Lcn/hutool/core/util/ArrayUtil;->indexOf([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p0

    const/4 p1, -0x1

    if-le p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static varargs containsAll([Ljava/lang/Object;[Ljava/lang/Object;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;[TT;)Z"
        }
    .end annotation

    .line 930
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p1, v2

    .line 931
    invoke-static {p0, v3}, Lcn/hutool/core/util/ArrayUtil;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    return v1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public static varargs containsAny([Ljava/lang/Object;[Ljava/lang/Object;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;[TT;)Z"
        }
    .end annotation

    .line 911
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p1, v2

    .line 912
    invoke-static {p0, v3}, Lcn/hutool/core/util/ArrayUtil;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public static containsIgnoreCase([Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    .locals 0

    .line 947
    invoke-static {p0, p1}, Lcn/hutool/core/util/ArrayUtil;->indexOfIgnoreCase([Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I

    move-result p0

    const/4 p1, -0x1

    if-le p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static copy(Ljava/lang/Object;ILjava/lang/Object;II)Ljava/lang/Object;
    .locals 0

    .line 588
    invoke-static {p0, p1, p2, p3, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p2
.end method

.method public static copy(Ljava/lang/Object;Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    .line 604
    invoke-static {p0, v0, p1, v0, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p1
.end method

.method public static defaultIfEmpty([Ljava/lang/Object;[Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;[TT;)[TT;"
        }
    .end annotation

    .line 62
    invoke-static {p0}, Lcn/hutool/core/util/ArrayUtil;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object p0, p1

    :cond_0
    return-object p0
.end method

.method public static distinct([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .line 1647
    invoke-static {p0}, Lcn/hutool/core/util/ArrayUtil;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 1651
    :cond_0
    new-instance v0, Ljava/util/LinkedHashSet;

    array-length v1, p0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2}, Ljava/util/LinkedHashSet;-><init>(IF)V

    .line 1652
    invoke-static {v0, p0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 1653
    invoke-static {p0}, Lcn/hutool/core/util/ArrayUtil;->getComponentType(Ljava/lang/Object;)Ljava/lang/Class;

    move-result-object p0

    invoke-static {v0, p0}, Lcn/hutool/core/util/ArrayUtil;->toArray(Ljava/util/Collection;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static distinct([Ljava/lang/Object;Ljava/util/function/Function;Z)[Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "K:",
            "Ljava/lang/Object;",
            ">([TT;",
            "Ljava/util/function/Function<",
            "TT;TK;>;Z)[TT;"
        }
    .end annotation

    .line 1670
    invoke-static {p0}, Lcn/hutool/core/util/ArrayUtil;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 1674
    :cond_0
    new-instance v0, Lcn/hutool/core/collection/UniqueKeySet;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p1}, Lcn/hutool/core/collection/UniqueKeySet;-><init>(ZLjava/util/function/Function;)V

    if-eqz p2, :cond_1

    .line 1676
    invoke-static {v0, p0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    goto :goto_1

    .line 1678
    :cond_1
    array-length p1, p0

    const/4 p2, 0x0

    :goto_0
    if-ge p2, p1, :cond_2

    aget-object v1, p0, p2

    .line 1679
    invoke-virtual {v0, v1}, Lcn/hutool/core/collection/UniqueKeySet;->addIfAbsent(Ljava/lang/Object;)Z

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 1682
    :cond_2
    :goto_1
    invoke-static {p0}, Lcn/hutool/core/util/ArrayUtil;->getComponentType(Ljava/lang/Object;)Ljava/lang/Class;

    move-result-object p0

    invoke-static {v0, p0}, Lcn/hutool/core/util/ArrayUtil;->toArray(Ljava/util/Collection;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static edit([Ljava/lang/Object;Lcn/hutool/core/lang/Editor;)[Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;",
            "Lcn/hutool/core/lang/Editor<",
            "TT;>;)[TT;"
        }
    .end annotation

    if-nez p1, :cond_0

    return-object p0

    .line 672
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 674
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, p0, v2

    .line 675
    invoke-interface {p1, v3}, Lcn/hutool/core/lang/Editor;->edit(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 677
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 680
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    invoke-static {p0, p1}, Lcn/hutool/core/util/ArrayUtil;->newArray(Ljava/lang/Class;I)[Ljava/lang/Object;

    move-result-object p0

    .line 681
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static varargs emptyCount([Ljava/lang/Object;)I
    .locals 4

    .line 1569
    invoke-static {p0}, Lcn/hutool/core/util/ArrayUtil;->isNotEmpty([Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 1570
    array-length v0, p0

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v3, p0, v1

    .line 1571
    invoke-static {v3}, Lcn/hutool/core/util/ObjectUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    add-int/lit8 v2, v2, 0x1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    move v1, v2

    :cond_2
    return v1
.end method

.method public static equals(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    aput-object p1, v1, v0

    .line 1764
    invoke-static {v1}, Lcn/hutool/core/util/ArrayUtil;->hasNull([Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v2

    .line 1768
    :cond_1
    invoke-static {p0}, Lcn/hutool/core/util/ArrayUtil;->isArray(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "First is not a Array !"

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lcn/hutool/core/lang/Assert;->isTrue(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 1769
    invoke-static {p1}, Lcn/hutool/core/util/ArrayUtil;->isArray(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "Second is not a Array !"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcn/hutool/core/lang/Assert;->isTrue(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 1771
    instance-of v0, p0, [J

    if-eqz v0, :cond_2

    .line 1772
    check-cast p0, [J

    check-cast p0, [J

    check-cast p1, [J

    check-cast p1, [J

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([J[J)Z

    move-result p0

    return p0

    .line 1773
    :cond_2
    instance-of v0, p0, [I

    if-eqz v0, :cond_3

    .line 1774
    check-cast p0, [I

    check-cast p0, [I

    check-cast p1, [I

    check-cast p1, [I

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result p0

    return p0

    .line 1775
    :cond_3
    instance-of v0, p0, [S

    if-eqz v0, :cond_4

    .line 1776
    check-cast p0, [S

    check-cast p0, [S

    check-cast p1, [S

    check-cast p1, [S

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([S[S)Z

    move-result p0

    return p0

    .line 1777
    :cond_4
    instance-of v0, p0, [C

    if-eqz v0, :cond_5

    .line 1778
    check-cast p0, [C

    check-cast p0, [C

    check-cast p1, [C

    check-cast p1, [C

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([C[C)Z

    move-result p0

    return p0

    .line 1779
    :cond_5
    instance-of v0, p0, [B

    if-eqz v0, :cond_6

    .line 1780
    check-cast p0, [B

    check-cast p0, [B

    check-cast p1, [B

    check-cast p1, [B

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p0

    return p0

    .line 1781
    :cond_6
    instance-of v0, p0, [D

    if-eqz v0, :cond_7

    .line 1782
    check-cast p0, [D

    check-cast p0, [D

    check-cast p1, [D

    check-cast p1, [D

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([D[D)Z

    move-result p0

    return p0

    .line 1783
    :cond_7
    instance-of v0, p0, [F

    if-eqz v0, :cond_8

    .line 1784
    check-cast p0, [F

    check-cast p0, [F

    check-cast p1, [F

    check-cast p1, [F

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([F[F)Z

    move-result p0

    return p0

    .line 1785
    :cond_8
    instance-of v0, p0, [Z

    if-eqz v0, :cond_9

    .line 1786
    check-cast p0, [Z

    check-cast p0, [Z

    check-cast p1, [Z

    check-cast p1, [Z

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([Z[Z)Z

    move-result p0

    return p0

    .line 1789
    :cond_9
    check-cast p0, [Ljava/lang/Object;

    check-cast p0, [Ljava/lang/Object;

    check-cast p1, [Ljava/lang/Object;

    check-cast p1, [Ljava/lang/Object;

    invoke-static {p0, p1}, Ljava/util/Arrays;->deepEquals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static filter([Ljava/lang/Object;Lcn/hutool/core/lang/Filter;)[Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;",
            "Lcn/hutool/core/lang/Filter<",
            "TT;>;)[TT;"
        }
    .end annotation

    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 702
    :cond_0
    new-instance v0, Lcn/hutool/core/util/ArrayUtil$$ExternalSyntheticLambda3;

    invoke-direct {v0, p1}, Lcn/hutool/core/util/ArrayUtil$$ExternalSyntheticLambda3;-><init>(Lcn/hutool/core/lang/Filter;)V

    invoke-static {p0, v0}, Lcn/hutool/core/util/ArrayUtil;->edit([Ljava/lang/Object;Lcn/hutool/core/lang/Editor;)[Ljava/lang/Object;

    move-result-object p0

    :cond_1
    :goto_0
    return-object p0
.end method

.method public static varargs firstMatch(Lcn/hutool/core/lang/Matcher;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcn/hutool/core/lang/Matcher<",
            "TT;>;[TT;)TT;"
        }
    .end annotation

    .line 168
    invoke-static {p0, p1}, Lcn/hutool/core/util/ArrayUtil;->matchIndex(Lcn/hutool/core/lang/Matcher;[Ljava/lang/Object;)I

    move-result p0

    if-gez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 173
    :cond_0
    aget-object p0, p1, p0

    return-object p0
.end method

.method public static varargs firstNonNull([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)TT;"
        }
    .end annotation

    .line 154
    new-instance v0, Lcn/hutool/core/util/ArrayUtil$$ExternalSyntheticLambda4;

    invoke-direct {v0}, Lcn/hutool/core/util/ArrayUtil$$ExternalSyntheticLambda4;-><init>()V

    invoke-static {v0, p0}, Lcn/hutool/core/util/ArrayUtil;->firstMatch(Lcn/hutool/core/lang/Matcher;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static get(Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "I)TT;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    if-gez p1, :cond_1

    .line 1020
    invoke-static {p0}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v1

    add-int/2addr p1, v1

    .line 1023
    :cond_1
    :try_start_0
    invoke-static {p0, p1}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    return-object v0
.end method

.method public static varargs getAny(Ljava/lang/Object;[I)[Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "[I)[TT;"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const/4 v0, 0x0

    if-nez p1, :cond_1

    .line 1042
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p0

    invoke-static {p0, v0}, Lcn/hutool/core/util/ArrayUtil;->newArray(Ljava/lang/Class;I)[Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 1045
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    array-length v2, p1

    invoke-static {v1, v2}, Lcn/hutool/core/util/ArrayUtil;->newArray(Ljava/lang/Class;I)[Ljava/lang/Object;

    move-result-object v1

    .line 1046
    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_2

    .line 1047
    aget v2, p1, v0

    invoke-static {p0, v2}, Lcn/hutool/core/util/ArrayUtil;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method public static getArrayType(Ljava/lang/Class;)Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 269
    invoke-static {p0, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    return-object p0
.end method

.method public static getComponentType(Ljava/lang/Class;)Ljava/lang/Class;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 257
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static getComponentType(Ljava/lang/Object;)Ljava/lang/Class;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 246
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static varargs hasEmpty([Ljava/lang/Object;)Z
    .locals 4

    .line 1587
    invoke-static {p0}, Lcn/hutool/core/util/ArrayUtil;->isNotEmpty([Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 1588
    array-length v0, p0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p0, v2

    .line 1589
    invoke-static {v3}, Lcn/hutool/core/util/ObjectUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public static varargs hasNull([Ljava/lang/Object;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)Z"
        }
    .end annotation

    .line 120
    invoke-static {p0}, Lcn/hutool/core/util/ArrayUtil;->isNotEmpty([Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 121
    array-length v0, p0

    move v3, v1

    :goto_0
    if-ge v3, v0, :cond_1

    aget-object v4, p0, v3

    .line 122
    invoke-static {v4}, Lcn/hutool/core/util/ObjectUtil;->isNull(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    return v2

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    if-nez p0, :cond_2

    move v1, v2

    :cond_2
    return v1
.end method

.method public static indexOf([Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;",
            "Ljava/lang/Object;",
            ")I"
        }
    .end annotation

    .line 829
    new-instance v0, Lcn/hutool/core/util/ArrayUtil$$ExternalSyntheticLambda1;

    invoke-direct {v0, p1}, Lcn/hutool/core/util/ArrayUtil$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Object;)V

    invoke-static {v0, p0}, Lcn/hutool/core/util/ArrayUtil;->matchIndex(Lcn/hutool/core/lang/Matcher;[Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public static indexOf([Ljava/lang/Object;Ljava/lang/Object;I)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;",
            "Ljava/lang/Object;",
            "I)I"
        }
    .end annotation

    .line 816
    new-instance v0, Lcn/hutool/core/util/ArrayUtil$$ExternalSyntheticLambda2;

    invoke-direct {v0, p1}, Lcn/hutool/core/util/ArrayUtil$$ExternalSyntheticLambda2;-><init>(Ljava/lang/Object;)V

    invoke-static {v0, p2, p0}, Lcn/hutool/core/util/ArrayUtil;->matchIndex(Lcn/hutool/core/lang/Matcher;I[Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public static indexOfIgnoreCase([Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I
    .locals 2

    if-eqz p0, :cond_1

    const/4 v0, 0x0

    .line 842
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_1

    .line 843
    aget-object v1, p0, v0

    invoke-static {v1, p1}, Lcn/hutool/core/util/StrUtil;->equalsIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public static indexOfSub([Ljava/lang/Object;I[Ljava/lang/Object;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;I[TT;)I"
        }
    .end annotation

    .line 1830
    invoke-static {p0}, Lcn/hutool/core/util/ArrayUtil;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_4

    invoke-static {p2}, Lcn/hutool/core/util/ArrayUtil;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    array-length v0, p2

    array-length v2, p0

    if-le v0, v2, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    .line 1833
    aget-object v2, p2, v0

    invoke-static {p0, v2, p1}, Lcn/hutool/core/util/ArrayUtil;->indexOf([Ljava/lang/Object;Ljava/lang/Object;I)I

    move-result p1

    if-ltz p1, :cond_4

    .line 1834
    array-length v2, p2

    add-int/2addr v2, p1

    array-length v3, p0

    if-le v2, v3, :cond_1

    goto :goto_1

    .line 1838
    :cond_1
    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_3

    add-int v1, v0, p1

    .line 1839
    aget-object v1, p0, v1

    aget-object v2, p2, v0

    invoke-static {v1, v2}, Lcn/hutool/core/util/ObjectUtil;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    add-int/lit8 p1, p1, 0x1

    .line 1840
    invoke-static {p0, p1, p2}, Lcn/hutool/core/util/ArrayUtil;->indexOfSub([Ljava/lang/Object;I[Ljava/lang/Object;)I

    move-result p0

    return p0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return p1

    :cond_4
    :goto_1
    return v1
.end method

.method public static indexOfSub([Ljava/lang/Object;[Ljava/lang/Object;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;[TT;)I"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1816
    invoke-static {p0, v0, p1}, Lcn/hutool/core/util/ArrayUtil;->indexOfSub([Ljava/lang/Object;I[Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public static varargs insert(Ljava/lang/Object;I[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "I[TT;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 454
    invoke-static {p2}, Lcn/hutool/core/util/ArrayUtil;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 457
    :cond_0
    invoke-static {p0}, Lcn/hutool/core/util/ArrayUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-object p2

    .line 461
    :cond_1
    invoke-static {p0}, Lcn/hutool/core/util/ArrayUtil;->length(Ljava/lang/Object;)I

    move-result v0

    if-gez p1, :cond_2

    .line 463
    rem-int/2addr p1, v0

    add-int/2addr p1, v0

    .line 467
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    .line 470
    invoke-virtual {v1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 471
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v2, p2}, Lcn/hutool/core/convert/Convert;->convert(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_0

    :cond_3
    move-object v2, p2

    .line 473
    :goto_0
    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result v3

    array-length v4, p2

    add-int/2addr v3, v4

    invoke-static {v1, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v1

    .line 474
    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result v3

    const/4 v4, 0x0

    invoke-static {p0, v4, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 475
    array-length v3, p2

    invoke-static {v2, v4, v1, p1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    if-ge p1, v0, :cond_4

    .line 477
    array-length p2, p2

    add-int/2addr p2, p1

    sub-int/2addr v0, p1

    invoke-static {p0, p1, v1, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_4
    return-object v1
.end method

.method public static varargs insert([Ljava/lang/Object;I[Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;I[TT;)[TT;"
        }
    .end annotation

    .line 437
    invoke-static {p0, p1, p2}, Lcn/hutool/core/util/ArrayUtil;->insert(Ljava/lang/Object;I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/Object;

    check-cast p0, [Ljava/lang/Object;

    return-object p0
.end method

.method public static varargs isAllEmpty([Ljava/lang/Object;)Z
    .locals 4

    .line 1605
    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p0, v2

    .line 1606
    invoke-static {v3}, Lcn/hutool/core/util/ObjectUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    return v1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public static varargs isAllNotEmpty([Ljava/lang/Object;)Z
    .locals 0

    .line 1621
    invoke-static {p0}, Lcn/hutool/core/util/ArrayUtil;->hasEmpty([Ljava/lang/Object;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static varargs isAllNotNull([Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)Z"
        }
    .end annotation

    .line 1634
    invoke-static {p0}, Lcn/hutool/core/util/ArrayUtil;->hasNull([Ljava/lang/Object;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static varargs isAllNull([Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)Z"
        }
    .end annotation

    .line 141
    invoke-static {p0}, Lcn/hutool/core/util/ArrayUtil;->firstNonNull([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isArray(Ljava/lang/Object;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 1000
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->isArray()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isEmpty(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-eqz p0, :cond_2

    .line 76
    invoke-static {p0}, Lcn/hutool/core/util/ArrayUtil;->isArray(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 77
    invoke-static {p0}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    return v0

    :cond_1
    return v2

    :cond_2
    return v0
.end method

.method public static isEmpty([Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)Z"
        }
    .end annotation

    if-eqz p0, :cond_1

    .line 49
    array-length p0, p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static isNotEmpty(Ljava/lang/Object;)Z
    .locals 0

    .line 107
    invoke-static {p0}, Lcn/hutool/core/util/ArrayUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static isNotEmpty([Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)Z"
        }
    .end annotation

    if-eqz p0, :cond_0

    .line 94
    array-length p0, p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isSorted([Ljava/lang/Comparable;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Comparable<",
            "-TT;>;>([TT;)Z"
        }
    .end annotation

    .line 1927
    invoke-static {p0}, Lcn/hutool/core/util/ArrayUtil;->isSortedASC([Ljava/lang/Comparable;)Z

    move-result p0

    return p0
.end method

.method public static isSorted([Ljava/lang/Object;Ljava/util/Comparator;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;",
            "Ljava/util/Comparator<",
            "-TT;>;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_3

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v0

    .line 1909
    :cond_1
    array-length v2, p0

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    if-ge v1, v2, :cond_2

    .line 1910
    aget-object v2, p0, v1

    add-int/lit8 v1, v1, 0x1

    aget-object v3, p0, v1

    invoke-interface {p1, v2, v3}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    if-lez v2, :cond_1

    return v0

    :cond_2
    return v3

    :cond_3
    :goto_0
    return v0
.end method

.method public static isSortedASC([Ljava/lang/Comparable;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Comparable<",
            "-TT;>;>([TT;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    move v1, v0

    .line 1945
    :cond_1
    array-length v2, p0

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    if-ge v1, v2, :cond_2

    .line 1946
    aget-object v2, p0, v1

    add-int/lit8 v1, v1, 0x1

    aget-object v3, p0, v1

    invoke-interface {v2, v3}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v2

    if-lez v2, :cond_1

    return v0

    :cond_2
    return v3
.end method

.method public static isSortedDESC([Ljava/lang/Comparable;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Comparable<",
            "-TT;>;>([TT;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    move v1, v0

    .line 1968
    :cond_1
    array-length v2, p0

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    if-ge v1, v2, :cond_2

    .line 1969
    aget-object v2, p0, v1

    add-int/lit8 v1, v1, 0x1

    aget-object v3, p0, v1

    invoke-interface {v2, v3}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v2

    if-gez v2, :cond_1

    return v0

    :cond_2
    return v3
.end method

.method public static isSub([Ljava/lang/Object;[Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;[TT;)Z"
        }
    .end annotation

    .line 1803
    invoke-static {p0, p1}, Lcn/hutool/core/util/ArrayUtil;->indexOfSub([Ljava/lang/Object;[Ljava/lang/Object;)I

    move-result p0

    const/4 p1, -0x1

    if-le p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static join(Ljava/lang/Object;Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1271
    :cond_0
    invoke-static {p0}, Lcn/hutool/core/util/ArrayUtil;->isArray(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1275
    invoke-static {p1}, Lcn/hutool/core/text/StrJoiner;->of(Ljava/lang/CharSequence;)Lcn/hutool/core/text/StrJoiner;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcn/hutool/core/text/StrJoiner;->append(Ljava/lang/Object;)Lcn/hutool/core/text/StrJoiner;

    move-result-object p0

    invoke-virtual {p0}, Lcn/hutool/core/text/StrJoiner;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1272
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    aput-object p0, v0, v1

    const-string p0, "[{}] is not a Array!"

    invoke-static {p0, v0}, Lcn/hutool/core/util/StrUtil;->format(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static join([Ljava/lang/Object;Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;",
            "Ljava/lang/CharSequence;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1220
    invoke-static {p0, p1, v0, v0}, Lcn/hutool/core/util/ArrayUtil;->join([Ljava/lang/Object;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static join([Ljava/lang/Object;Ljava/lang/CharSequence;Lcn/hutool/core/lang/Editor;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;",
            "Ljava/lang/CharSequence;",
            "Lcn/hutool/core/lang/Editor<",
            "TT;>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1257
    invoke-static {p1}, Lcn/hutool/core/text/StrJoiner;->of(Ljava/lang/CharSequence;)Lcn/hutool/core/text/StrJoiner;

    move-result-object p1

    new-instance v0, Lcn/hutool/core/util/ArrayUtil$$ExternalSyntheticLambda6;

    invoke-direct {v0, p2}, Lcn/hutool/core/util/ArrayUtil$$ExternalSyntheticLambda6;-><init>(Lcn/hutool/core/lang/Editor;)V

    invoke-virtual {p1, p0, v0}, Lcn/hutool/core/text/StrJoiner;->append([Ljava/lang/Object;Ljava/util/function/Function;)Lcn/hutool/core/text/StrJoiner;

    move-result-object p0

    invoke-virtual {p0}, Lcn/hutool/core/text/StrJoiner;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static join([Ljava/lang/Object;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1239
    :cond_0
    invoke-static {p1, p2, p3}, Lcn/hutool/core/text/StrJoiner;->of(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Lcn/hutool/core/text/StrJoiner;

    move-result-object p1

    const/4 p2, 0x1

    .line 1241
    invoke-virtual {p1, p2}, Lcn/hutool/core/text/StrJoiner;->setWrapElement(Z)Lcn/hutool/core/text/StrJoiner;

    move-result-object p1

    .line 1242
    invoke-virtual {p1, p0}, Lcn/hutool/core/text/StrJoiner;->append([Ljava/lang/Object;)Lcn/hutool/core/text/StrJoiner;

    move-result-object p0

    .line 1243
    invoke-virtual {p0}, Lcn/hutool/core/text/StrJoiner;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$filter$0(Lcn/hutool/core/lang/Filter;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 702
    invoke-interface {p0, p1}, Lcn/hutool/core/lang/Filter;->accept(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method static synthetic lambda$indexOf$3(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 816
    invoke-static {p0, p1}, Lcn/hutool/core/util/ObjectUtil;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method static synthetic lambda$indexOf$4(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 829
    invoke-static {p0, p1}, Lcn/hutool/core/util/ObjectUtil;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method static synthetic lambda$join$5(Lcn/hutool/core/lang/Editor;Ljava/lang/Object;)Ljava/lang/CharSequence;
    .locals 0

    .line 1257
    invoke-interface {p0, p1}, Lcn/hutool/core/lang/Editor;->edit(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$nullToEmpty$2(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    if-nez p0, :cond_0

    const-string p0, ""

    :cond_0
    return-object p0
.end method

.method static synthetic lambda$removeNull$1(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    return-object p0
.end method

.method public static lastIndexOf([Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;",
            "Ljava/lang/Object;",
            ")I"
        }
    .end annotation

    .line 861
    invoke-static {p0}, Lcn/hutool/core/util/ArrayUtil;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, -0x1

    return p0

    .line 864
    :cond_0
    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    invoke-static {p0, p1, v0}, Lcn/hutool/core/util/ArrayUtil;->lastIndexOf([Ljava/lang/Object;Ljava/lang/Object;I)I

    move-result p0

    return p0
.end method

.method public static lastIndexOf([Ljava/lang/Object;Ljava/lang/Object;I)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;",
            "Ljava/lang/Object;",
            "I)I"
        }
    .end annotation

    .line 878
    invoke-static {p0}, Lcn/hutool/core/util/ArrayUtil;->isNotEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_0
    if-ltz p2, :cond_1

    .line 880
    aget-object v0, p0, p2

    invoke-static {p1, v0}, Lcn/hutool/core/util/ObjectUtil;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return p2

    :cond_0
    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public static lastIndexOfSub([Ljava/lang/Object;I[Ljava/lang/Object;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;I[TT;)I"
        }
    .end annotation

    .line 1874
    invoke-static {p0}, Lcn/hutool/core/util/ArrayUtil;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_4

    invoke-static {p2}, Lcn/hutool/core/util/ArrayUtil;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    array-length v0, p2

    array-length v2, p0

    if-gt v0, v2, :cond_4

    if-gez p1, :cond_0

    goto :goto_1

    :cond_0
    const/4 p1, 0x0

    .line 1878
    aget-object v0, p2, p1

    invoke-static {p0, v0}, Lcn/hutool/core/util/ArrayUtil;->lastIndexOf([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_4

    .line 1879
    array-length v2, p2

    add-int/2addr v2, v0

    array-length v3, p0

    if-le v2, v3, :cond_1

    goto :goto_1

    .line 1883
    :cond_1
    :goto_0
    array-length v1, p2

    if-ge p1, v1, :cond_3

    add-int v1, p1, v0

    .line 1884
    aget-object v1, p0, v1

    aget-object v2, p2, p1

    invoke-static {v1, v2}, Lcn/hutool/core/util/ObjectUtil;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    add-int/lit8 v0, v0, -0x1

    .line 1885
    invoke-static {p0, v0, p2}, Lcn/hutool/core/util/ArrayUtil;->lastIndexOfSub([Ljava/lang/Object;I[Ljava/lang/Object;)I

    move-result p0

    return p0

    :cond_2
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_3
    return v0

    :cond_4
    :goto_1
    return v1
.end method

.method public static lastIndexOfSub([Ljava/lang/Object;[Ljava/lang/Object;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;[TT;)I"
        }
    .end annotation

    .line 1857
    invoke-static {p0}, Lcn/hutool/core/util/ArrayUtil;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1}, Lcn/hutool/core/util/ArrayUtil;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1860
    :cond_0
    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    invoke-static {p0, v0, p1}, Lcn/hutool/core/util/ArrayUtil;->lastIndexOfSub([Ljava/lang/Object;I[Ljava/lang/Object;)I

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, -0x1

    return p0
.end method

.method public static length(Ljava/lang/Object;)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 1208
    :cond_0
    invoke-static {p0}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public static map([Ljava/lang/Object;Ljava/util/function/Function;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">([TT;",
            "Ljava/util/function/Function<",
            "-TT;+TR;>;)",
            "Ljava/util/List<",
            "TR;>;"
        }
    .end annotation

    .line 1735
    invoke-static {p0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method public static map(Ljava/lang/Object;Ljava/lang/Class;Ljava/util/function/Function;)[Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class<",
            "TR;>;",
            "Ljava/util/function/Function<",
            "-TT;+TR;>;)[TR;"
        }
    .end annotation

    .line 1716
    invoke-static {p0}, Lcn/hutool/core/util/ArrayUtil;->length(Ljava/lang/Object;)I

    move-result v0

    .line 1717
    invoke-static {p1, v0}, Lcn/hutool/core/util/ArrayUtil;->newArray(Ljava/lang/Class;I)[Ljava/lang/Object;

    move-result-object p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 1719
    invoke-static {p0, v1}, Lcn/hutool/core/util/ArrayUtil;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, p1, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object p1
.end method

.method public static map([Ljava/lang/Object;Ljava/lang/Class;Ljava/util/function/Function;)[Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">([TT;",
            "Ljava/lang/Class<",
            "TR;>;",
            "Ljava/util/function/Function<",
            "-TT;+TR;>;)[TR;"
        }
    .end annotation

    .line 1697
    array-length v0, p0

    invoke-static {p1, v0}, Lcn/hutool/core/util/ArrayUtil;->newArray(Ljava/lang/Class;I)[Ljava/lang/Object;

    move-result-object p1

    const/4 v0, 0x0

    .line 1698
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    .line 1699
    aget-object v1, p0, v0

    invoke-interface {p2, v1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    aput-object v1, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object p1
.end method

.method public static mapToSet([Ljava/lang/Object;Ljava/util/function/Function;)Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">([TT;",
            "Ljava/util/function/Function<",
            "-TT;+TR;>;)",
            "Ljava/util/Set<",
            "TR;>;"
        }
    .end annotation

    .line 1749
    invoke-static {p0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-static {}, Ljava/util/stream/Collectors;->toSet()Ljava/util/stream/Collector;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Set;

    return-object p0
.end method

.method public static varargs matchIndex(Lcn/hutool/core/lang/Matcher;I[Ljava/lang/Object;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcn/hutool/core/lang/Matcher<",
            "TT;>;I[TT;)I"
        }
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Matcher must be not null !"

    .line 202
    invoke-static {p0, v1, v0}, Lcn/hutool/core/lang/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    invoke-static {p2}, Lcn/hutool/core/util/ArrayUtil;->isNotEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 204
    :goto_0
    array-length v0, p2

    if-ge p1, v0, :cond_1

    .line 205
    aget-object v0, p2, p1

    invoke-interface {p0, v0}, Lcn/hutool/core/lang/Matcher;->match(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return p1

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public static varargs matchIndex(Lcn/hutool/core/lang/Matcher;[Ljava/lang/Object;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcn/hutool/core/lang/Matcher<",
            "TT;>;[TT;)I"
        }
    .end annotation

    const/4 v0, 0x0

    .line 187
    invoke-static {p0, v0, p1}, Lcn/hutool/core/util/ArrayUtil;->matchIndex(Lcn/hutool/core/lang/Matcher;I[Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public static max([Ljava/lang/Comparable;)Ljava/lang/Comparable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Comparable<",
            "-TT;>;>([TT;)TT;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1459
    invoke-static {p0, v0}, Lcn/hutool/core/util/ArrayUtil;->max([Ljava/lang/Comparable;Ljava/util/Comparator;)Ljava/lang/Comparable;

    move-result-object p0

    return-object p0
.end method

.method public static max([Ljava/lang/Comparable;Ljava/util/Comparator;)Ljava/lang/Comparable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Comparable<",
            "-TT;>;>([TT;",
            "Ljava/util/Comparator<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 1472
    invoke-static {p0}, Lcn/hutool/core/util/ArrayUtil;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    .line 1475
    aget-object v0, p0, v0

    const/4 v1, 0x1

    .line 1476
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    .line 1477
    aget-object v2, p0, v1

    invoke-static {v0, v2, p1}, Lcn/hutool/core/comparator/CompareUtil;->compare(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result v2

    if-gez v2, :cond_0

    .line 1478
    aget-object v0, p0, v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0

    .line 1473
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Number array must not empty !"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static min([Ljava/lang/Comparable;)Ljava/lang/Comparable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Comparable<",
            "-TT;>;>([TT;)TT;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1425
    invoke-static {p0, v0}, Lcn/hutool/core/util/ArrayUtil;->min([Ljava/lang/Comparable;Ljava/util/Comparator;)Ljava/lang/Comparable;

    move-result-object p0

    return-object p0
.end method

.method public static min([Ljava/lang/Comparable;Ljava/util/Comparator;)Ljava/lang/Comparable;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Comparable<",
            "-TT;>;>([TT;",
            "Ljava/util/Comparator<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 1438
    invoke-static {p0}, Lcn/hutool/core/util/ArrayUtil;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    .line 1441
    aget-object v1, p0, v0

    .line 1442
    array-length v2, p0

    :goto_0
    if-ge v0, v2, :cond_1

    aget-object v3, p0, v0

    .line 1443
    invoke-static {v1, v3, p1}, Lcn/hutool/core/comparator/CompareUtil;->compare(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result v4

    if-lez v4, :cond_0

    move-object v1, v3

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object v1

    .line 1439
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Number array must not empty !"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 235
    new-array p0, p0, [Ljava/lang/Object;

    return-object p0
.end method

.method public static newArray(Ljava/lang/Class;I)[Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "*>;I)[TT;"
        }
    .end annotation

    .line 224
    invoke-static {p0, p1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/Object;

    check-cast p0, [Ljava/lang/Object;

    return-object p0
.end method

.method public static nullToEmpty([Ljava/lang/String;)[Ljava/lang/String;
    .locals 1

    .line 752
    new-instance v0, Lcn/hutool/core/util/ArrayUtil$$ExternalSyntheticLambda5;

    invoke-direct {v0}, Lcn/hutool/core/util/ArrayUtil$$ExternalSyntheticLambda5;-><init>()V

    invoke-static {p0, v0}, Lcn/hutool/core/util/ArrayUtil;->edit([Ljava/lang/Object;Lcn/hutool/core/lang/Editor;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method

.method public static remove([Ljava/lang/Object;I)[Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;I)[TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 1353
    invoke-static {p0, p1}, Lcn/hutool/core/util/ArrayUtil;->remove(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/Object;

    check-cast p0, [Ljava/lang/Object;

    return-object p0
.end method

.method public static removeBlank([Ljava/lang/CharSequence;)[Ljava/lang/CharSequence;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/CharSequence;",
            ">([TT;)[TT;"
        }
    .end annotation

    .line 741
    new-instance v0, Lcn/hutool/core/collection/CollUtil$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcn/hutool/core/collection/CollUtil$$ExternalSyntheticLambda1;-><init>()V

    invoke-static {p0, v0}, Lcn/hutool/core/util/ArrayUtil;->filter([Ljava/lang/Object;Lcn/hutool/core/lang/Filter;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/CharSequence;

    return-object p0
.end method

.method public static removeEle([Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;TT;)[TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 1370
    invoke-static {p0, p1}, Lcn/hutool/core/util/ArrayUtil;->indexOf([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p1

    invoke-static {p0, p1}, Lcn/hutool/core/util/ArrayUtil;->remove([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static removeEmpty([Ljava/lang/CharSequence;)[Ljava/lang/CharSequence;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/CharSequence;",
            ">([TT;)[TT;"
        }
    .end annotation

    .line 729
    new-instance v0, Lcn/hutool/core/collection/CollUtil$$ExternalSyntheticLambda8;

    invoke-direct {v0}, Lcn/hutool/core/collection/CollUtil$$ExternalSyntheticLambda8;-><init>()V

    invoke-static {p0, v0}, Lcn/hutool/core/util/ArrayUtil;->filter([Ljava/lang/Object;Lcn/hutool/core/lang/Filter;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/CharSequence;

    return-object p0
.end method

.method public static removeNull([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .line 714
    new-instance v0, Lcn/hutool/core/util/ArrayUtil$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcn/hutool/core/util/ArrayUtil$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {p0, v0}, Lcn/hutool/core/util/ArrayUtil;->edit([Ljava/lang/Object;Lcn/hutool/core/lang/Editor;)[Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static varargs replace([Ljava/lang/Object;I[Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;I[TT;)[TT;"
        }
    .end annotation

    .line 395
    invoke-static {p2}, Lcn/hutool/core/util/ArrayUtil;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 398
    :cond_0
    invoke-static {p0}, Lcn/hutool/core/util/ArrayUtil;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-object p2

    :cond_1
    const/4 v0, 0x0

    if-gez p1, :cond_2

    .line 403
    invoke-static {p0, v0, p2}, Lcn/hutool/core/util/ArrayUtil;->insert([Ljava/lang/Object;I[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 405
    :cond_2
    array-length v1, p0

    if-lt p1, v1, :cond_3

    .line 407
    invoke-static {p0, p2}, Lcn/hutool/core/util/ArrayUtil;->append([Ljava/lang/Object;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 410
    :cond_3
    array-length v1, p0

    array-length v2, p2

    add-int/2addr v2, p1

    if-lt v1, v2, :cond_4

    .line 411
    array-length v1, p2

    invoke-static {p2, v0, p0, p1, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p0

    .line 416
    :cond_4
    array-length v1, p2

    add-int/2addr v1, p1

    .line 417
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v2, v1}, Lcn/hutool/core/util/ArrayUtil;->newArray(Ljava/lang/Class;I)[Ljava/lang/Object;

    move-result-object v1

    .line 418
    invoke-static {p0, v0, v1, v0, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 419
    array-length p0, p2

    invoke-static {p2, v0, v1, p1, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1
.end method

.method public static resize(Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 3

    if-gez p1, :cond_0

    return-object p0

    :cond_0
    if-nez p0, :cond_1

    const/4 p0, 0x0

    return-object p0

    .line 520
    :cond_1
    invoke-static {p0}, Lcn/hutool/core/util/ArrayUtil;->length(Ljava/lang/Object;)I

    move-result v0

    .line 521
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1, p1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v1

    if-lez p1, :cond_2

    .line 522
    invoke-static {p0}, Lcn/hutool/core/util/ArrayUtil;->isNotEmpty(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 524
    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    const/4 v0, 0x0

    invoke-static {p0, v0, v1, v0, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_2
    return-object v1
.end method

.method public static resize([Ljava/lang/Object;I)[Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;I)[TT;"
        }
    .end annotation

    .line 539
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcn/hutool/core/util/ArrayUtil;->resize([Ljava/lang/Object;ILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static resize([Ljava/lang/Object;ILjava/lang/Class;)[Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;I",
            "Ljava/lang/Class<",
            "*>;)[TT;"
        }
    .end annotation

    if-gez p1, :cond_0

    return-object p0

    .line 497
    :cond_0
    invoke-static {p2, p1}, Lcn/hutool/core/util/ArrayUtil;->newArray(Ljava/lang/Class;I)[Ljava/lang/Object;

    move-result-object p2

    if-lez p1, :cond_1

    .line 498
    invoke-static {p0}, Lcn/hutool/core/util/ArrayUtil;->isNotEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 499
    array-length v0, p0

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    const/4 v0, 0x0

    invoke-static {p0, v0, p2, v0, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    return-object p2
.end method

.method public static reverse([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1411
    array-length v1, p0

    invoke-static {p0, v0, v1}, Lcn/hutool/core/util/ArrayUtil;->reverse([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static reverse([Ljava/lang/Object;II)[Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;II)[TT;"
        }
    .end annotation

    .line 1386
    invoke-static {p0}, Lcn/hutool/core/util/ArrayUtil;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    const/4 v0, 0x0

    .line 1389
    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 1390
    array-length v0, p0

    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    :goto_0
    if-le p2, p1, :cond_1

    .line 1393
    aget-object v0, p0, p2

    .line 1394
    aget-object v1, p0, p1

    aput-object v1, p0, p2

    .line 1395
    aput-object v0, p0, p1

    add-int/lit8 p2, p2, -0x1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method public static setOrAppend(Ljava/lang/Object;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 373
    invoke-static {p0}, Lcn/hutool/core/util/ArrayUtil;->length(Ljava/lang/Object;)I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 374
    invoke-static {p0, p1, p2}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    return-object p0

    :cond_0
    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p2, p1, v0

    .line 377
    invoke-static {p0, p1}, Lcn/hutool/core/util/ArrayUtil;->append(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static setOrAppend([Ljava/lang/Object;ILjava/lang/Object;)[Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;ITT;)[TT;"
        }
    .end annotation

    .line 347
    array-length v0, p0

    if-ge p1, v0, :cond_0

    .line 348
    invoke-static {p0, p1, p2}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    return-object p0

    .line 351
    :cond_0
    invoke-static {p0}, Lcn/hutool/core/util/ArrayUtil;->isEmpty([Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_1

    .line 354
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-static {p1, v1}, Lcn/hutool/core/util/ArrayUtil;->newArray(Ljava/lang/Class;I)[Ljava/lang/Object;

    move-result-object p1

    .line 355
    aput-object p2, p1, v0

    .line 356
    invoke-static {p0, p1}, Lcn/hutool/core/util/ArrayUtil;->append([Ljava/lang/Object;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_1
    new-array p1, v1, [Ljava/lang/Object;

    aput-object p2, p1, v0

    .line 358
    invoke-static {p0, p1}, Lcn/hutool/core/util/ArrayUtil;->append([Ljava/lang/Object;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static shuffle([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .line 1496
    invoke-static {}, Lcn/hutool/core/util/RandomUtil;->getRandom()Ljava/util/concurrent/ThreadLocalRandom;

    move-result-object v0

    invoke-static {p0, v0}, Lcn/hutool/core/util/ArrayUtil;->shuffle([Ljava/lang/Object;Ljava/util/Random;)[Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static shuffle([Ljava/lang/Object;Ljava/util/Random;)[Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;",
            "Ljava/util/Random;",
            ")[TT;"
        }
    .end annotation

    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    .line 1510
    array-length v0, p0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    goto :goto_1

    .line 1514
    :cond_0
    array-length v0, p0

    :goto_0
    if-le v0, v1, :cond_1

    add-int/lit8 v2, v0, -0x1

    .line 1515
    invoke-virtual {p1, v0}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    invoke-static {p0, v2, v3}, Lcn/hutool/core/util/ArrayUtil;->swap([Ljava/lang/Object;II)[Ljava/lang/Object;

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-object p0
.end method

.method public static sub(Ljava/lang/Object;II)[Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x1

    .line 1098
    invoke-static {p0, p1, p2, v0}, Lcn/hutool/core/util/ArrayUtil;->sub(Ljava/lang/Object;III)[Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static sub(Ljava/lang/Object;III)[Ljava/lang/Object;
    .locals 3

    .line 1112
    invoke-static {p0}, Lcn/hutool/core/util/ArrayUtil;->length(Ljava/lang/Object;)I

    move-result v0

    if-gez p1, :cond_0

    add-int/2addr p1, v0

    :cond_0
    if-gez p2, :cond_1

    add-int/2addr p2, v0

    :cond_1
    const/4 v1, 0x0

    if-ne p1, v0, :cond_2

    new-array p0, v1, [Ljava/lang/Object;

    return-object p0

    :cond_2
    if-le p1, p2, :cond_3

    goto :goto_0

    :cond_3
    move v2, p2

    move p2, p1

    move p1, v2

    :goto_0
    if-le p1, v0, :cond_4

    if-lt p2, v0, :cond_5

    new-array p0, v1, [Ljava/lang/Object;

    return-object p0

    :cond_4
    move v0, p1

    :cond_5
    const/4 p1, 0x1

    if-gt p3, p1, :cond_6

    move p3, p1

    .line 1138
    :cond_6
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    :goto_1
    if-ge p2, v0, :cond_7

    .line 1140
    invoke-static {p0, p2}, Lcn/hutool/core/util/ArrayUtil;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/2addr p2, p3

    goto :goto_1

    .line 1143
    :cond_7
    invoke-virtual {p1}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static sub([Ljava/lang/Object;II)[Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;II)[TT;"
        }
    .end annotation

    .line 1064
    invoke-static {p0}, Lcn/hutool/core/util/ArrayUtil;->length(Ljava/lang/Object;)I

    move-result v0

    if-gez p1, :cond_0

    add-int/2addr p1, v0

    :cond_0
    if-gez p2, :cond_1

    add-int/2addr p2, v0

    :cond_1
    const/4 v1, 0x0

    if-ne p1, v0, :cond_2

    .line 1072
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p0

    invoke-static {p0, v1}, Lcn/hutool/core/util/ArrayUtil;->newArray(Ljava/lang/Class;I)[Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_2
    if-le p1, p2, :cond_3

    goto :goto_0

    :cond_3
    move v2, p2

    move p2, p1

    move p1, v2

    :goto_0
    if-le p1, v0, :cond_4

    if-lt p2, v0, :cond_5

    .line 1081
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p0

    invoke-static {p0, v1}, Lcn/hutool/core/util/ArrayUtil;->newArray(Ljava/lang/Class;I)[Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_4
    move v0, p1

    .line 1085
    :cond_5
    invoke-static {p0, p2, v0}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static swap(Ljava/lang/Object;II)Ljava/lang/Object;
    .locals 2

    .line 1551
    invoke-static {p0}, Lcn/hutool/core/util/ArrayUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1554
    invoke-static {p0, p1}, Lcn/hutool/core/util/ArrayUtil;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    .line 1555
    invoke-static {p0, p2}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p0, p1, v1}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 1556
    invoke-static {p0, p2, v0}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    return-object p0

    .line 1552
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Array must not empty !"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static swap([Ljava/lang/Object;II)[Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;II)[TT;"
        }
    .end annotation

    .line 1532
    invoke-static {p0}, Lcn/hutool/core/util/ArrayUtil;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1535
    aget-object v0, p0, p1

    .line 1536
    aget-object v1, p0, p2

    aput-object v1, p0, p1

    .line 1537
    aput-object v0, p0, p2

    return-object p0

    .line 1533
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Array must not empty !"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static toArray(Ljava/nio/ByteBuffer;)[B
    .locals 2

    .line 1286
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1287
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->limit()I

    move-result p0

    invoke-static {v0, v1, p0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    return-object p0

    .line 1289
    :cond_0
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    const/4 v1, 0x0

    .line 1290
    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 1291
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    .line 1292
    new-array v1, v1, [B

    .line 1293
    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 1294
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    return-object v1
.end method

.method public static toArray(Ljava/lang/Iterable;Ljava/lang/Class;)[Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "TT;>;",
            "Ljava/lang/Class<",
            "TT;>;)[TT;"
        }
    .end annotation

    .line 1322
    invoke-static {p0}, Lcn/hutool/core/collection/CollectionUtil;->toCollection(Ljava/lang/Iterable;)Ljava/util/Collection;

    move-result-object p0

    invoke-static {p0, p1}, Lcn/hutool/core/util/ArrayUtil;->toArray(Ljava/util/Collection;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static toArray(Ljava/util/Collection;Ljava/lang/Class;)[Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "TT;>;",
            "Ljava/lang/Class<",
            "TT;>;)[TT;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1335
    invoke-static {p1, v0}, Lcn/hutool/core/util/ArrayUtil;->newArray(Ljava/lang/Class;I)[Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static toArray(Ljava/util/Iterator;Ljava/lang/Class;)[Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Iterator<",
            "TT;>;",
            "Ljava/lang/Class<",
            "TT;>;)[TT;"
        }
    .end annotation

    .line 1309
    invoke-static {p0}, Lcn/hutool/core/collection/CollUtil;->newArrayList(Ljava/util/Iterator;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-static {p0, p1}, Lcn/hutool/core/util/ArrayUtil;->toArray(Ljava/util/Collection;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static toString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1157
    :cond_0
    instance-of v0, p0, [J

    if-eqz v0, :cond_1

    .line 1158
    check-cast p0, [J

    check-cast p0, [J

    invoke-static {p0}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1159
    :cond_1
    instance-of v0, p0, [I

    if-eqz v0, :cond_2

    .line 1160
    check-cast p0, [I

    check-cast p0, [I

    invoke-static {p0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1161
    :cond_2
    instance-of v0, p0, [S

    if-eqz v0, :cond_3

    .line 1162
    check-cast p0, [S

    check-cast p0, [S

    invoke-static {p0}, Ljava/util/Arrays;->toString([S)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1163
    :cond_3
    instance-of v0, p0, [C

    if-eqz v0, :cond_4

    .line 1164
    check-cast p0, [C

    check-cast p0, [C

    invoke-static {p0}, Ljava/util/Arrays;->toString([C)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1165
    :cond_4
    instance-of v0, p0, [B

    if-eqz v0, :cond_5

    .line 1166
    check-cast p0, [B

    check-cast p0, [B

    invoke-static {p0}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1167
    :cond_5
    instance-of v0, p0, [Z

    if-eqz v0, :cond_6

    .line 1168
    check-cast p0, [Z

    check-cast p0, [Z

    invoke-static {p0}, Ljava/util/Arrays;->toString([Z)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1169
    :cond_6
    instance-of v0, p0, [F

    if-eqz v0, :cond_7

    .line 1170
    check-cast p0, [F

    check-cast p0, [F

    invoke-static {p0}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1171
    :cond_7
    instance-of v0, p0, [D

    if-eqz v0, :cond_8

    .line 1172
    check-cast p0, [D

    check-cast p0, [D

    invoke-static {p0}, Ljava/util/Arrays;->toString([D)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1173
    :cond_8
    invoke-static {p0}, Lcn/hutool/core/util/ArrayUtil;->isArray(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1176
    :try_start_0
    move-object v0, p0

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Arrays;->deepToString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 1182
    :catch_0
    :cond_9
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static wrap(Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 6

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 963
    :cond_0
    invoke-static {p0}, Lcn/hutool/core/util/ArrayUtil;->isArray(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_9

    .line 965
    :try_start_0
    move-object v0, p0

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 967
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    .line 968
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v4

    const/4 v5, -0x1

    sparse-switch v4, :sswitch_data_0

    :goto_0
    move v1, v5

    goto/16 :goto_1

    :sswitch_0
    const-string v1, "short"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x7

    goto :goto_1

    :sswitch_1
    const-string v1, "float"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x6

    goto :goto_1

    :sswitch_2
    const-string v1, "boolean"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x5

    goto :goto_1

    :sswitch_3
    const-string v1, "long"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_0

    :cond_4
    const/4 v1, 0x4

    goto :goto_1

    :sswitch_4
    const-string v1, "char"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    goto :goto_0

    :cond_5
    const/4 v1, 0x3

    goto :goto_1

    :sswitch_5
    const-string v1, "byte"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    goto :goto_0

    :cond_6
    const/4 v1, 0x2

    goto :goto_1

    :sswitch_6
    const-string v1, "int"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    goto :goto_0

    :cond_7
    move v1, v2

    goto :goto_1

    :sswitch_7
    const-string v2, "double"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    goto :goto_0

    :cond_8
    :goto_1
    packed-switch v1, :pswitch_data_0

    .line 986
    new-instance p0, Lcn/hutool/core/exceptions/UtilException;

    invoke-direct {p0, v0}, Lcn/hutool/core/exceptions/UtilException;-><init>(Ljava/lang/Throwable;)V

    throw p0

    .line 974
    :pswitch_0
    check-cast p0, [S

    check-cast p0, [S

    invoke-static {p0}, Lcn/hutool/core/util/ArrayUtil;->wrap([S)[Ljava/lang/Short;

    move-result-object p0

    return-object p0

    .line 982
    :pswitch_1
    check-cast p0, [F

    check-cast p0, [F

    invoke-static {p0}, Lcn/hutool/core/util/ArrayUtil;->wrap([F)[Ljava/lang/Float;

    move-result-object p0

    return-object p0

    .line 980
    :pswitch_2
    check-cast p0, [Z

    check-cast p0, [Z

    invoke-static {p0}, Lcn/hutool/core/util/ArrayUtil;->wrap([Z)[Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    .line 970
    :pswitch_3
    check-cast p0, [J

    check-cast p0, [J

    invoke-static {p0}, Lcn/hutool/core/util/ArrayUtil;->wrap([J)[Ljava/lang/Long;

    move-result-object p0

    return-object p0

    .line 976
    :pswitch_4
    check-cast p0, [C

    check-cast p0, [C

    invoke-static {p0}, Lcn/hutool/core/util/ArrayUtil;->wrap([C)[Ljava/lang/Character;

    move-result-object p0

    return-object p0

    .line 978
    :pswitch_5
    check-cast p0, [B

    check-cast p0, [B

    invoke-static {p0}, Lcn/hutool/core/util/ArrayUtil;->wrap([B)[Ljava/lang/Byte;

    move-result-object p0

    return-object p0

    .line 972
    :pswitch_6
    check-cast p0, [I

    check-cast p0, [I

    invoke-static {p0}, Lcn/hutool/core/util/ArrayUtil;->wrap([I)[Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    .line 984
    :pswitch_7
    check-cast p0, [D

    check-cast p0, [D

    invoke-static {p0}, Lcn/hutool/core/util/ArrayUtil;->wrap([D)[Ljava/lang/Double;

    move-result-object p0

    return-object p0

    .line 990
    :cond_9
    new-instance v0, Lcn/hutool/core/exceptions/UtilException;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    aput-object p0, v2, v1

    const-string p0, "[{}] is not Array!"

    invoke-static {p0, v2}, Lcn/hutool/core/util/StrUtil;->format(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcn/hutool/core/exceptions/UtilException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_data_0
    .sparse-switch
        -0x4f08842f -> :sswitch_7
        0x197ef -> :sswitch_6
        0x2e6108 -> :sswitch_5
        0x2e9356 -> :sswitch_4
        0x32c67c -> :sswitch_3
        0x3db6c28 -> :sswitch_2
        0x5d0225c -> :sswitch_1
        0x685847c -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static zip([Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">([TK;[TV;)",
            "Ljava/util/Map<",
            "TK;TV;>;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 800
    invoke-static {p0, p1, v0}, Lcn/hutool/core/util/ArrayUtil;->zip([Ljava/lang/Object;[Ljava/lang/Object;Z)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public static zip([Ljava/lang/Object;[Ljava/lang/Object;Z)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">([TK;[TV;Z)",
            "Ljava/util/Map<",
            "TK;TV;>;"
        }
    .end annotation

    .line 772
    invoke-static {p0}, Lcn/hutool/core/util/ArrayUtil;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p1}, Lcn/hutool/core/util/ArrayUtil;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 776
    :cond_0
    array-length v0, p0

    array-length v1, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 777
    invoke-static {v0, p2}, Lcn/hutool/core/map/MapUtil;->newHashMap(IZ)Ljava/util/HashMap;

    move-result-object p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 779
    aget-object v2, p0, v1

    aget-object v3, p1, v1

    invoke-interface {p2, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object p2

    :cond_2
    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method
