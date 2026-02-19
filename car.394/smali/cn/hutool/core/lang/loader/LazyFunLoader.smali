.class public Lcn/hutool/core/lang/loader/LazyFunLoader;
.super Lcn/hutool/core/lang/loader/LazyLoader;
.source "LazyFunLoader.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcn/hutool/core/lang/loader/LazyLoader<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private supplier:Ljava/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Supplier<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/function/Supplier;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Supplier<",
            "TT;>;)V"
        }
    .end annotation

    .line 44
    invoke-direct {p0}, Lcn/hutool/core/lang/loader/LazyLoader;-><init>()V

    .line 45
    invoke-static {p1}, Lcn/hutool/core/lang/Assert;->notNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    iput-object p1, p0, Lcn/hutool/core/lang/loader/LazyFunLoader;->supplier:Ljava/util/function/Supplier;

    return-void
.end method

.method public static on(Ljava/util/function/Supplier;)Lcn/hutool/core/lang/loader/LazyFunLoader;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Supplier<",
            "TT;>;)",
            "Lcn/hutool/core/lang/loader/LazyFunLoader<",
            "TT;>;"
        }
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "supplier must be not null!"

    .line 35
    invoke-static {p0, v1, v0}, Lcn/hutool/core/lang/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    new-instance v0, Lcn/hutool/core/lang/loader/LazyFunLoader;

    invoke-direct {v0, p0}, Lcn/hutool/core/lang/loader/LazyFunLoader;-><init>(Ljava/util/function/Supplier;)V

    return-object v0
.end method


# virtual methods
.method public ifInitialized(Ljava/util/function/Consumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "TT;>;)V"
        }
    .end annotation

    .line 71
    invoke-static {p1}, Lcn/hutool/core/lang/Assert;->notNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    invoke-virtual {p0}, Lcn/hutool/core/lang/loader/LazyFunLoader;->isInitialize()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 75
    invoke-virtual {p0}, Lcn/hutool/core/lang/loader/LazyFunLoader;->get()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method protected init()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 51
    iget-object v0, p0, Lcn/hutool/core/lang/loader/LazyFunLoader;->supplier:Ljava/util/function/Supplier;

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    .line 52
    iput-object v1, p0, Lcn/hutool/core/lang/loader/LazyFunLoader;->supplier:Ljava/util/function/Supplier;

    return-object v0
.end method

.method public isInitialize()Z
    .locals 1

    .line 62
    iget-object v0, p0, Lcn/hutool/core/lang/loader/LazyFunLoader;->supplier:Ljava/util/function/Supplier;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
