.class public interface abstract Lcn/hutool/core/lang/hash/Hash64;
.super Ljava/lang/Object;
.source "Hash64.java"

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
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/lang/Number;"
        }
    .end annotation

    .line 22
    invoke-interface {p0, p1}, Lcn/hutool/core/lang/hash/Hash64;->hash64(Ljava/lang/Object;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method public abstract hash64(Ljava/lang/Object;)J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)J"
        }
    .end annotation
.end method
