.class public interface abstract Lcn/hutool/core/lang/hash/Hash128;
.super Ljava/lang/Object;
.source "Hash128.java"

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

    .line 23
    invoke-interface {p0, p1}, Lcn/hutool/core/lang/hash/Hash128;->hash128(Ljava/lang/Object;)Lcn/hutool/core/lang/hash/Number128;

    move-result-object p1

    return-object p1
.end method

.method public abstract hash128(Ljava/lang/Object;)Lcn/hutool/core/lang/hash/Number128;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lcn/hutool/core/lang/hash/Number128;"
        }
    .end annotation
.end method
