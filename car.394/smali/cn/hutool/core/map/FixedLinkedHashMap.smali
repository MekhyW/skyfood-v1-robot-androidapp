.class public Lcn/hutool/core/map/FixedLinkedHashMap;
.super Ljava/util/LinkedHashMap;
.source "FixedLinkedHashMap.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/LinkedHashMap<",
        "TK;TV;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x8bb43da2f28459fL


# instance fields
.field private capacity:I

.field private removeListener:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(I)V
    .locals 3

    add-int/lit8 v0, p1, 0x1

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x1

    .line 33
    invoke-direct {p0, v0, v1, v2}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    .line 34
    iput p1, p0, Lcn/hutool/core/map/FixedLinkedHashMap;->capacity:I

    return-void
.end method


# virtual methods
.method public getCapacity()I
    .locals 1

    .line 43
    iget v0, p0, Lcn/hutool/core/map/FixedLinkedHashMap;->capacity:I

    return v0
.end method

.method protected removeEldestEntry(Ljava/util/Map$Entry;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;)Z"
        }
    .end annotation

    .line 67
    invoke-virtual {p0}, Lcn/hutool/core/map/FixedLinkedHashMap;->size()I

    move-result v0

    iget v1, p0, Lcn/hutool/core/map/FixedLinkedHashMap;->capacity:I

    if-le v0, v1, :cond_1

    .line 68
    iget-object v0, p0, Lcn/hutool/core/map/FixedLinkedHashMap;->removeListener:Ljava/util/function/Consumer;

    if-eqz v0, :cond_0

    .line 70
    invoke-interface {v0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_0
    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public setCapacity(I)V
    .locals 0

    .line 52
    iput p1, p0, Lcn/hutool/core/map/FixedLinkedHashMap;->capacity:I

    return-void
.end method

.method public setRemoveListener(Ljava/util/function/Consumer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;)V"
        }
    .end annotation

    .line 61
    iput-object p1, p0, Lcn/hutool/core/map/FixedLinkedHashMap;->removeListener:Ljava/util/function/Consumer;

    return-void
.end method
