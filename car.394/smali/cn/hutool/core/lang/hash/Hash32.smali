.class public interface abstract Lcn/hutool/core/lang/hash/Hash32;
.super Ljava/lang/Object;
.source "Hash32.java"

# interfaces
.implements Lcn/hutool/core/lang/hash/Hash;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcn/hutool/core/lang/hash/Hash<",
        "TT;>;"
    }
.end annotation

.annotation runtime Ljava/lang/FunctionalInterface;
.end annotation


# virtual methods
.method public hash(Ljava/lang/Object;)Ljava/lang/Number;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/lang/Number;"
        }
    .end annotation

    .line 22
    invoke-interface {p0, p1}, Lcn/hutool/core/lang/hash/Hash32;->hash32(Ljava/lang/Object;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public abstract hash32(Ljava/lang/Object;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation
.end method
