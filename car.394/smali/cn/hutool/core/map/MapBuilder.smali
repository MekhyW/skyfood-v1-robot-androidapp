.class public Lcn/hutool/core/map/MapBuilder;
.super Ljava/lang/Object;
.source "MapBuilder.java"

# interfaces
.implements Lcn/hutool/core/builder/Builder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcn/hutool/core/builder/Builder<",
        "Ljava/util/Map<",
        "TK;TV;>;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-object p1, p0, Lcn/hutool/core/map/MapBuilder;->map:Ljava/util/Map;

    return-void
.end method

.method public static create()Lcn/hutool/core/map/MapBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Lcn/hutool/core/map/MapBuilder<",
            "TK;TV;>;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 30
    invoke-static {v0}, Lcn/hutool/core/map/MapBuilder;->create(Z)Lcn/hutool/core/map/MapBuilder;

    move-result-object v0

    return-object v0
.end method

.method public static create(Ljava/util/Map;)Lcn/hutool/core/map/MapBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TK;TV;>;)",
            "Lcn/hutool/core/map/MapBuilder<",
            "TK;TV;>;"
        }
    .end annotation

    .line 56
    new-instance v0, Lcn/hutool/core/map/MapBuilder;

    invoke-direct {v0, p0}, Lcn/hutool/core/map/MapBuilder;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method public static create(Z)Lcn/hutool/core/map/MapBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(Z)",
            "Lcn/hutool/core/map/MapBuilder<",
            "TK;TV;>;"
        }
    .end annotation

    .line 43
    invoke-static {p0}, Lcn/hutool/core/map/MapUtil;->newHashMap(Z)Ljava/util/HashMap;

    move-result-object p0

    invoke-static {p0}, Lcn/hutool/core/map/MapBuilder;->create(Ljava/util/Map;)Lcn/hutool/core/map/MapBuilder;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic build()Ljava/lang/Object;
    .locals 1

    .line 16
    invoke-virtual {p0}, Lcn/hutool/core/map/MapBuilder;->build()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public build()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "TK;TV;>;"
        }
    .end annotation

    .line 151
    invoke-virtual {p0}, Lcn/hutool/core/map/MapBuilder;->map()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcn/hutool/core/map/MapBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcn/hutool/core/map/MapBuilder<",
            "TK;TV;>;"
        }
    .end annotation

    .line 130
    iget-object v0, p0, Lcn/hutool/core/map/MapBuilder;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-object p0
.end method

.method public join(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 162
    iget-object v0, p0, Lcn/hutool/core/map/MapBuilder;->map:Ljava/util/Map;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-static {v0, p1, p2, v1}, Lcn/hutool/core/map/MapUtil;->join(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public join(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 2

    .line 185
    iget-object v0, p0, Lcn/hutool/core/map/MapBuilder;->map:Ljava/util/Map;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-static {v0, p1, p2, p3, v1}, Lcn/hutool/core/map/MapUtil;->join(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public joinIgnoreNull(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 173
    iget-object v0, p0, Lcn/hutool/core/map/MapBuilder;->map:Ljava/util/Map;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-static {v0, p1, p2, v1}, Lcn/hutool/core/map/MapUtil;->joinIgnoreNull(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public map()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "TK;TV;>;"
        }
    .end annotation

    .line 140
    iget-object v0, p0, Lcn/hutool/core/map/MapBuilder;->map:Ljava/util/Map;

    return-object v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Lcn/hutool/core/map/MapBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)",
            "Lcn/hutool/core/map/MapBuilder<",
            "TK;TV;>;"
        }
    .end annotation

    .line 76
    iget-object v0, p0, Lcn/hutool/core/map/MapBuilder;->map:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public put(ZLjava/lang/Object;Ljava/lang/Object;)Lcn/hutool/core/map/MapBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZTK;TV;)",
            "Lcn/hutool/core/map/MapBuilder<",
            "TK;TV;>;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 91
    invoke-virtual {p0, p2, p3}, Lcn/hutool/core/map/MapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcn/hutool/core/map/MapBuilder;

    :cond_0
    return-object p0
.end method

.method public put(ZLjava/lang/Object;Ljava/util/function/Supplier;)Lcn/hutool/core/map/MapBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZTK;",
            "Ljava/util/function/Supplier<",
            "TV;>;)",
            "Lcn/hutool/core/map/MapBuilder<",
            "TK;TV;>;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 107
    invoke-interface {p3}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Lcn/hutool/core/map/MapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcn/hutool/core/map/MapBuilder;

    :cond_0
    return-object p0
.end method

.method public putAll(Ljava/util/Map;)Lcn/hutool/core/map/MapBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "TK;TV;>;)",
            "Lcn/hutool/core/map/MapBuilder<",
            "TK;TV;>;"
        }
    .end annotation

    .line 119
    iget-object v0, p0, Lcn/hutool/core/map/MapBuilder;->map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-object p0
.end method
