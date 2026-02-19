.class Lcn/hutool/core/map/ReferenceConcurrentMap$WeakKey;
.super Ljava/lang/ref/WeakReference;
.source "ReferenceConcurrentMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/hutool/core/map/ReferenceConcurrentMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WeakKey"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/ref/WeakReference<",
        "TK;>;"
    }
.end annotation


# instance fields
.field private final hashCode:I


# direct methods
.method constructor <init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/lang/ref/ReferenceQueue<",
            "-TK;>;)V"
        }
    .end annotation

    .line 268
    invoke-direct {p0, p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    .line 269
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    iput p1, p0, Lcn/hutool/core/map/ReferenceConcurrentMap$WeakKey;->hashCode:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p1, p0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 281
    :cond_0
    instance-of v0, p1, Lcn/hutool/core/map/ReferenceConcurrentMap$WeakKey;

    if-eqz v0, :cond_1

    .line 282
    check-cast p1, Lcn/hutool/core/map/ReferenceConcurrentMap$WeakKey;

    invoke-virtual {p1}, Lcn/hutool/core/map/ReferenceConcurrentMap$WeakKey;->get()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0}, Lcn/hutool/core/map/ReferenceConcurrentMap$WeakKey;->get()Ljava/lang/Object;

    move-result-object v0

    invoke-static {p1, v0}, Lcn/hutool/core/util/ObjectUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public hashCode()I
    .locals 1

    .line 274
    iget v0, p0, Lcn/hutool/core/map/ReferenceConcurrentMap$WeakKey;->hashCode:I

    return v0
.end method
