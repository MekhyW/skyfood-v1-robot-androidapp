.class public Lcn/hutool/core/map/CaseInsensitiveTreeMap;
.super Lcn/hutool/core/map/CaseInsensitiveMap;
.source "CaseInsensitiveTreeMap.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcn/hutool/core/map/CaseInsensitiveMap<",
        "TK;TV;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x381c8ef407b8aa0eL


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    .line 26
    move-object v1, v0

    check-cast v1, Ljava/util/Comparator;

    invoke-direct {p0, v0}, Lcn/hutool/core/map/CaseInsensitiveTreeMap;-><init>(Ljava/util/Comparator;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Comparator;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "-TK;>;)V"
        }
    .end annotation

    .line 56
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0, p1}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    invoke-direct {p0, v0}, Lcn/hutool/core/map/CaseInsensitiveMap;-><init>(Ljava/util/Map;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+TK;+TV;>;)V"
        }
    .end annotation

    .line 36
    invoke-direct {p0}, Lcn/hutool/core/map/CaseInsensitiveTreeMap;-><init>()V

    .line 37
    invoke-virtual {p0, p1}, Lcn/hutool/core/map/CaseInsensitiveTreeMap;->putAll(Ljava/util/Map;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/SortedMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/SortedMap<",
            "+TK;+TV;>;)V"
        }
    .end annotation

    .line 47
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0, p1}, Ljava/util/TreeMap;-><init>(Ljava/util/Map;)V

    invoke-direct {p0, v0}, Lcn/hutool/core/map/CaseInsensitiveMap;-><init>(Ljava/util/Map;)V

    return-void
.end method
