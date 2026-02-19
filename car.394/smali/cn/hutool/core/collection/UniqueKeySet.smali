.class public Lcn/hutool/core/collection/UniqueKeySet;
.super Ljava/util/AbstractSet;
.source "UniqueKeySet.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractSet<",
        "TV;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field private final uniqueGenerator:Ljava/util/function/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Function<",
            "TV;TK;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(IFLjava/util/function/Function;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IF",
            "Ljava/util/function/Function<",
            "TV;TK;>;)V"
        }
    .end annotation

    .line 87
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p1, p2}, Ljava/util/HashMap;-><init>(IF)V

    invoke-static {v0}, Lcn/hutool/core/map/MapBuilder;->create(Ljava/util/Map;)Lcn/hutool/core/map/MapBuilder;

    move-result-object p1

    invoke-direct {p0, p1, p3}, Lcn/hutool/core/collection/UniqueKeySet;-><init>(Lcn/hutool/core/map/MapBuilder;Ljava/util/function/Function;)V

    return-void
.end method

.method public constructor <init>(Lcn/hutool/core/map/MapBuilder;Ljava/util/function/Function;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/hutool/core/map/MapBuilder<",
            "TK;TV;>;",
            "Ljava/util/function/Function<",
            "TV;TK;>;)V"
        }
    .end annotation

    .line 96
    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    .line 97
    invoke-virtual {p1}, Lcn/hutool/core/map/MapBuilder;->build()Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcn/hutool/core/collection/UniqueKeySet;->map:Ljava/util/Map;

    .line 98
    iput-object p2, p0, Lcn/hutool/core/collection/UniqueKeySet;->uniqueGenerator:Ljava/util/function/Function;

    return-void
.end method

.method public constructor <init>(Ljava/util/function/Function;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Function<",
            "TV;TK;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 42
    invoke-direct {p0, v0, p1}, Lcn/hutool/core/collection/UniqueKeySet;-><init>(ZLjava/util/function/Function;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/function/Function;Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Function<",
            "TV;TK;>;",
            "Ljava/util/Collection<",
            "+TV;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 53
    invoke-direct {p0, v0, p1, p2}, Lcn/hutool/core/collection/UniqueKeySet;-><init>(ZLjava/util/function/Function;Ljava/util/Collection;)V

    return-void
.end method

.method public constructor <init>(ZLjava/util/function/Function;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/function/Function<",
            "TV;TK;>;)V"
        }
    .end annotation

    .line 63
    invoke-static {p1}, Lcn/hutool/core/map/MapBuilder;->create(Z)Lcn/hutool/core/map/MapBuilder;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcn/hutool/core/collection/UniqueKeySet;-><init>(Lcn/hutool/core/map/MapBuilder;Ljava/util/function/Function;)V

    return-void
.end method

.method public constructor <init>(ZLjava/util/function/Function;Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/function/Function<",
            "TV;TK;>;",
            "Ljava/util/Collection<",
            "+TV;>;)V"
        }
    .end annotation

    .line 75
    invoke-direct {p0, p1, p2}, Lcn/hutool/core/collection/UniqueKeySet;-><init>(ZLjava/util/function/Function;)V

    .line 76
    invoke-virtual {p0, p3}, Lcn/hutool/core/collection/UniqueKeySet;->addAll(Ljava/util/Collection;)Z

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)Z"
        }
    .end annotation

    .line 126
    iget-object v0, p0, Lcn/hutool/core/collection/UniqueKeySet;->map:Ljava/util/Map;

    iget-object v1, p0, Lcn/hutool/core/collection/UniqueKeySet;->uniqueGenerator:Ljava/util/function/Function;

    invoke-interface {v1, p1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public addAllIfAbsent(Ljava/util/Collection;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+TV;>;)Z"
        }
    .end annotation

    .line 147
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 148
    invoke-virtual {p0, v1}, Lcn/hutool/core/collection/UniqueKeySet;->addIfAbsent(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public addIfAbsent(Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)Z"
        }
    .end annotation

    .line 136
    iget-object v0, p0, Lcn/hutool/core/collection/UniqueKeySet;->map:Ljava/util/Map;

    iget-object v1, p0, Lcn/hutool/core/collection/UniqueKeySet;->uniqueGenerator:Ljava/util/function/Function;

    invoke-interface {v1, p1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public clear()V
    .locals 1

    .line 162
    iget-object v0, p0, Lcn/hutool/core/collection/UniqueKeySet;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public clone()Lcn/hutool/core/collection/UniqueKeySet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcn/hutool/core/collection/UniqueKeySet<",
            "TK;TV;>;"
        }
    .end annotation

    .line 169
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/hutool/core/collection/UniqueKeySet;

    .line 170
    iget-object v1, p0, Lcn/hutool/core/collection/UniqueKeySet;->map:Ljava/util/Map;

    invoke-static {v1}, Lcn/hutool/core/util/ObjectUtil;->clone(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    iput-object v1, v0, Lcn/hutool/core/collection/UniqueKeySet;->map:Ljava/util/Map;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 173
    new-instance v1, Ljava/lang/InternalError;

    invoke-direct {v1, v0}, Ljava/lang/InternalError;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 28
    invoke-virtual {p0}, Lcn/hutool/core/collection/UniqueKeySet;->clone()Lcn/hutool/core/collection/UniqueKeySet;

    move-result-object v0

    return-object v0
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 2

    .line 121
    iget-object v0, p0, Lcn/hutool/core/collection/UniqueKeySet;->map:Ljava/util/Map;

    iget-object v1, p0, Lcn/hutool/core/collection/UniqueKeySet;->uniqueGenerator:Ljava/util/function/Function;

    invoke-interface {v1, p1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public isEmpty()Z
    .locals 1

    .line 115
    iget-object v0, p0, Lcn/hutool/core/collection/UniqueKeySet;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TV;>;"
        }
    .end annotation

    .line 105
    iget-object v0, p0, Lcn/hutool/core/collection/UniqueKeySet;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 2

    .line 157
    iget-object v0, p0, Lcn/hutool/core/collection/UniqueKeySet;->map:Ljava/util/Map;

    iget-object v1, p0, Lcn/hutool/core/collection/UniqueKeySet;->uniqueGenerator:Ljava/util/function/Function;

    invoke-interface {v1, p1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public size()I
    .locals 1

    .line 110
    iget-object v0, p0, Lcn/hutool/core/collection/UniqueKeySet;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method
