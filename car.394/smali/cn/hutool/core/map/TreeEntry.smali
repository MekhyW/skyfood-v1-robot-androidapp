.class public interface abstract Lcn/hutool/core/map/TreeEntry;
.super Ljava/lang/Object;
.source "TreeEntry.java"

# interfaces
.implements Ljava/util/Map$Entry;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;"
    }
.end annotation


# virtual methods
.method public containsChild(Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)Z"
        }
    .end annotation

    .line 140
    invoke-interface {p0, p1}, Lcn/hutool/core/map/TreeEntry;->getChild(Ljava/lang/Object;)Lcn/hutool/core/map/TreeEntry;

    move-result-object p1

    invoke-static {p1}, Lcn/hutool/core/util/ObjectUtil;->isNotNull(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public containsParent(Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)Z"
        }
    .end annotation

    .line 89
    invoke-interface {p0, p1}, Lcn/hutool/core/map/TreeEntry;->getParent(Ljava/lang/Object;)Lcn/hutool/core/map/TreeEntry;

    move-result-object p1

    invoke-static {p1}, Lcn/hutool/core/util/ObjectUtil;->isNotNull(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public abstract equals(Ljava/lang/Object;)Z
.end method

.method public abstract forEachChild(ZLjava/util/function/Consumer;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/function/Consumer<",
            "Lcn/hutool/core/map/TreeEntry<",
            "TK;TV;>;>;)V"
        }
    .end annotation
.end method

.method public abstract getChild(Ljava/lang/Object;)Lcn/hutool/core/map/TreeEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Lcn/hutool/core/map/TreeEntry<",
            "TK;TV;>;"
        }
    .end annotation
.end method

.method public abstract getChildren()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "TK;",
            "Lcn/hutool/core/map/TreeEntry<",
            "TK;TV;>;>;"
        }
    .end annotation
.end method

.method public abstract getDeclaredChildren()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "TK;",
            "Lcn/hutool/core/map/TreeEntry<",
            "TK;TV;>;>;"
        }
    .end annotation
.end method

.method public abstract getDeclaredParent()Lcn/hutool/core/map/TreeEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcn/hutool/core/map/TreeEntry<",
            "TK;TV;>;"
        }
    .end annotation
.end method

.method public abstract getParent(Ljava/lang/Object;)Lcn/hutool/core/map/TreeEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Lcn/hutool/core/map/TreeEntry<",
            "TK;TV;>;"
        }
    .end annotation
.end method

.method public abstract getRoot()Lcn/hutool/core/map/TreeEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcn/hutool/core/map/TreeEntry<",
            "TK;TV;>;"
        }
    .end annotation
.end method

.method public abstract getWeight()I
.end method

.method public hasChildren()Z
    .locals 1

    .line 122
    invoke-interface {p0}, Lcn/hutool/core/map/TreeEntry;->getDeclaredChildren()Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Lcn/hutool/core/collection/CollUtil;->isNotEmpty(Ljava/util/Map;)Z

    move-result v0

    return v0
.end method

.method public hasParent()Z
    .locals 1

    .line 64
    invoke-interface {p0}, Lcn/hutool/core/map/TreeEntry;->getDeclaredParent()Lcn/hutool/core/map/TreeEntry;

    move-result-object v0

    invoke-static {v0}, Lcn/hutool/core/util/ObjectUtil;->isNotNull(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public abstract hashCode()I
.end method
