.class public Lcn/hutool/core/lang/Tuple;
.super Lcn/hutool/core/clone/CloneSupport;
.source "Tuple.java"

# interfaces
.implements Ljava/lang/Iterable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/hutool/core/clone/CloneSupport<",
        "Lcn/hutool/core/lang/Tuple;",
        ">;",
        "Ljava/lang/Iterable<",
        "Ljava/lang/Object;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x6ab5e59b2f5b1e0dL


# instance fields
.field private cacheHash:Z

.field private hashCode:I

.field private final members:[Ljava/lang/Object;


# direct methods
.method public varargs constructor <init>([Ljava/lang/Object;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Lcn/hutool/core/clone/CloneSupport;-><init>()V

    .line 36
    iput-object p1, p0, Lcn/hutool/core/lang/Tuple;->members:[Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .locals 1

    .line 101
    iget-object v0, p0, Lcn/hutool/core/lang/Tuple;->members:[Ljava/lang/Object;

    invoke-static {v0, p1}, Lcn/hutool/core/util/ArrayUtil;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 v0, 0x0

    if-nez p1, :cond_1

    return v0

    .line 158
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_2

    return v0

    .line 161
    :cond_2
    check-cast p1, Lcn/hutool/core/lang/Tuple;

    .line 162
    iget-object v0, p0, Lcn/hutool/core/lang/Tuple;->members:[Ljava/lang/Object;

    iget-object p1, p1, Lcn/hutool/core/lang/Tuple;->members:[Ljava/lang/Object;

    invoke-static {v0, p1}, Ljava/util/Arrays;->deepEquals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public get(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I)TT;"
        }
    .end annotation

    .line 48
    iget-object v0, p0, Lcn/hutool/core/lang/Tuple;->members:[Ljava/lang/Object;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public getMembers()[Ljava/lang/Object;
    .locals 1

    .line 57
    iget-object v0, p0, Lcn/hutool/core/lang/Tuple;->members:[Ljava/lang/Object;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 138
    iget-boolean v0, p0, Lcn/hutool/core/lang/Tuple;->cacheHash:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcn/hutool/core/lang/Tuple;->hashCode:I

    if-eqz v0, :cond_0

    return v0

    .line 143
    :cond_0
    iget-object v0, p0, Lcn/hutool/core/lang/Tuple;->members:[Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Arrays;->deepHashCode([Ljava/lang/Object;)I

    move-result v0

    const/16 v1, 0x1f

    add-int/2addr v1, v0

    .line 144
    iget-boolean v0, p0, Lcn/hutool/core/lang/Tuple;->cacheHash:Z

    if-eqz v0, :cond_1

    .line 145
    iput v1, p0, Lcn/hutool/core/lang/Tuple;->hashCode:I

    :cond_1
    return v1
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 172
    new-instance v0, Lcn/hutool/core/collection/ArrayIter;

    iget-object v1, p0, Lcn/hutool/core/lang/Tuple;->members:[Ljava/lang/Object;

    invoke-direct {v0, v1}, Lcn/hutool/core/collection/ArrayIter;-><init>([Ljava/lang/Object;)V

    return-object v0
.end method

.method public final parallelStream()Ljava/util/stream/Stream;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/stream/Stream<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 121
    invoke-virtual {p0}, Lcn/hutool/core/lang/Tuple;->spliterator()Ljava/util/Spliterator;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Ljava/util/stream/StreamSupport;->stream(Ljava/util/Spliterator;Z)Ljava/util/stream/Stream;

    move-result-object v0

    return-object v0
.end method

.method public setCacheHash(Z)Lcn/hutool/core/lang/Tuple;
    .locals 0

    .line 79
    iput-boolean p1, p0, Lcn/hutool/core/lang/Tuple;->cacheHash:Z

    return-object p0
.end method

.method public size()I
    .locals 1

    .line 90
    iget-object v0, p0, Lcn/hutool/core/lang/Tuple;->members:[Ljava/lang/Object;

    array-length v0, v0

    return v0
.end method

.method public final spliterator()Ljava/util/Spliterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Spliterator<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 177
    iget-object v0, p0, Lcn/hutool/core/lang/Tuple;->members:[Ljava/lang/Object;

    const/16 v1, 0x10

    invoke-static {v0, v1}, Ljava/util/Spliterators;->spliterator([Ljava/lang/Object;I)Ljava/util/Spliterator;

    move-result-object v0

    return-object v0
.end method

.method public final stream()Ljava/util/stream/Stream;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/stream/Stream<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 111
    iget-object v0, p0, Lcn/hutool/core/lang/Tuple;->members:[Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    return-object v0
.end method

.method public final sub(II)Lcn/hutool/core/lang/Tuple;
    .locals 2

    .line 133
    new-instance v0, Lcn/hutool/core/lang/Tuple;

    iget-object v1, p0, Lcn/hutool/core/lang/Tuple;->members:[Ljava/lang/Object;

    invoke-static {v1, p1, p2}, Lcn/hutool/core/util/ArrayUtil;->sub([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object p1

    invoke-direct {v0, p1}, Lcn/hutool/core/lang/Tuple;-><init>([Ljava/lang/Object;)V

    return-object v0
.end method

.method public final toList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 67
    iget-object v0, p0, Lcn/hutool/core/lang/Tuple;->members:[Ljava/lang/Object;

    invoke-static {v0}, Lcn/hutool/core/collection/ListUtil;->toList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 167
    iget-object v0, p0, Lcn/hutool/core/lang/Tuple;->members:[Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
