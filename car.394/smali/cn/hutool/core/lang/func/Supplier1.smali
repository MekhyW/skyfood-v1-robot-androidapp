.class public interface abstract Lcn/hutool/core/lang/func/Supplier1;
.super Ljava/lang/Object;
.source "Supplier1.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "P1:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation runtime Ljava/lang/FunctionalInterface;
.end annotation


# direct methods
.method public static synthetic lambda$toSupplier$0(Lcn/hutool/core/lang/func/Supplier1;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p0, "_this"    # Lcn/hutool/core/lang/func/Supplier1;

    .line 30
    invoke-interface {p0, p1}, Lcn/hutool/core/lang/func/Supplier1;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public abstract get(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TP1;)TT;"
        }
    .end annotation
.end method

.method public toSupplier(Ljava/lang/Object;)Ljava/util/function/Supplier;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TP1;)",
            "Ljava/util/function/Supplier<",
            "TT;>;"
        }
    .end annotation

    .line 30
    new-instance v0, Lcn/hutool/core/lang/func/Supplier1$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lcn/hutool/core/lang/func/Supplier1$$ExternalSyntheticLambda0;-><init>(Lcn/hutool/core/lang/func/Supplier1;Ljava/lang/Object;)V

    return-object v0
.end method
