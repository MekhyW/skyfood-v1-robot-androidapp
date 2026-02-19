.class public Lcn/hutool/core/lang/Opt;
.super Ljava/lang/Object;
.source "Opt.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final EMPTY:Lcn/hutool/core/lang/Opt;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcn/hutool/core/lang/Opt<",
            "*>;"
        }
    .end annotation
.end field


# instance fields
.field private exception:Ljava/lang/Exception;

.field private final value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$QudUYxRsEL7wk3xxxUTiZrFqTtM(Ljava/lang/String;)Ljava/util/NoSuchElementException;
    .locals 1

    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0, p0}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 30
    new-instance v0, Lcn/hutool/core/lang/Opt;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcn/hutool/core/lang/Opt;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcn/hutool/core/lang/Opt;->EMPTY:Lcn/hutool/core/lang/Opt;

    return-void
.end method

.method private constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    iput-object p1, p0, Lcn/hutool/core/lang/Opt;->value:Ljava/lang/Object;

    return-void
.end method

.method public static empty()Lcn/hutool/core/lang/Opt;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lcn/hutool/core/lang/Opt<",
            "TT;>;"
        }
    .end annotation

    .line 40
    sget-object v0, Lcn/hutool/core/lang/Opt;->EMPTY:Lcn/hutool/core/lang/Opt;

    return-object v0
.end method

.method static synthetic lambda$peeks$0(Lcn/hutool/core/lang/Opt;Lcn/hutool/core/lang/Opt;)Lcn/hutool/core/lang/Opt;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public static of(Ljava/lang/Object;)Lcn/hutool/core/lang/Opt;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lcn/hutool/core/lang/Opt<",
            "TT;>;"
        }
    .end annotation

    .line 52
    new-instance v0, Lcn/hutool/core/lang/Opt;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-direct {v0, p0}, Lcn/hutool/core/lang/Opt;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static ofBlankAble(Ljava/lang/Object;)Lcn/hutool/core/lang/Opt;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lcn/hutool/core/lang/Opt<",
            "TT;>;"
        }
    .end annotation

    .line 75
    invoke-static {p0}, Lcn/hutool/core/util/StrUtil;->isBlankIfStr(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcn/hutool/core/lang/Opt;->empty()Lcn/hutool/core/lang/Opt;

    move-result-object p0

    goto :goto_0

    :cond_0
    new-instance v0, Lcn/hutool/core/lang/Opt;

    invoke-direct {v0, p0}, Lcn/hutool/core/lang/Opt;-><init>(Ljava/lang/Object;)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method

.method public static ofEmptyAble(Ljava/util/Collection;)Lcn/hutool/core/lang/Opt;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R::",
            "Ljava/util/Collection<",
            "TT;>;>(TR;)",
            "Lcn/hutool/core/lang/Opt<",
            "TR;>;"
        }
    .end annotation

    .line 88
    invoke-static {p0}, Lcn/hutool/core/collection/CollectionUtil;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcn/hutool/core/lang/Opt;->empty()Lcn/hutool/core/lang/Opt;

    move-result-object p0

    goto :goto_0

    :cond_0
    new-instance v0, Lcn/hutool/core/lang/Opt;

    invoke-direct {v0, p0}, Lcn/hutool/core/lang/Opt;-><init>(Ljava/lang/Object;)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method

.method public static ofNullable(Ljava/lang/Object;)Lcn/hutool/core/lang/Opt;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lcn/hutool/core/lang/Opt<",
            "TT;>;"
        }
    .end annotation

    if-nez p0, :cond_0

    .line 63
    invoke-static {}, Lcn/hutool/core/lang/Opt;->empty()Lcn/hutool/core/lang/Opt;

    move-result-object p0

    goto :goto_0

    :cond_0
    new-instance v0, Lcn/hutool/core/lang/Opt;

    invoke-direct {v0, p0}, Lcn/hutool/core/lang/Opt;-><init>(Ljava/lang/Object;)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method

.method public static ofTry(Lcn/hutool/core/lang/func/Func0;)Lcn/hutool/core/lang/Opt;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcn/hutool/core/lang/func/Func0<",
            "TT;>;)",
            "Lcn/hutool/core/lang/Opt<",
            "TT;>;"
        }
    .end annotation

    .line 98
    :try_start_0
    invoke-interface {p0}, Lcn/hutool/core/lang/func/Func0;->call()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcn/hutool/core/lang/Opt;->ofNullable(Ljava/lang/Object;)Lcn/hutool/core/lang/Opt;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 100
    new-instance v0, Lcn/hutool/core/lang/Opt;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcn/hutool/core/lang/Opt;-><init>(Ljava/lang/Object;)V

    .line 101
    iput-object p0, v0, Lcn/hutool/core/lang/Opt;->exception:Ljava/lang/Exception;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    .line 517
    :cond_0
    instance-of v0, p1, Lcn/hutool/core/lang/Opt;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    .line 521
    :cond_1
    check-cast p1, Lcn/hutool/core/lang/Opt;

    .line 522
    iget-object v0, p0, Lcn/hutool/core/lang/Opt;->value:Ljava/lang/Object;

    iget-object p1, p1, Lcn/hutool/core/lang/Opt;->value:Ljava/lang/Object;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public exceptionOrElse(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TT;"
        }
    .end annotation

    .line 421
    invoke-virtual {p0}, Lcn/hutool/core/lang/Opt;->isFail()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcn/hutool/core/lang/Opt;->value:Ljava/lang/Object;

    :goto_0
    return-object p1
.end method

.method public filter(Ljava/util/function/Predicate;)Lcn/hutool/core/lang/Opt;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "-TT;>;)",
            "Lcn/hutool/core/lang/Opt<",
            "TT;>;"
        }
    .end annotation

    .line 256
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 257
    invoke-virtual {p0}, Lcn/hutool/core/lang/Opt;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 260
    :cond_0
    iget-object v0, p0, Lcn/hutool/core/lang/Opt;->value:Ljava/lang/Object;

    invoke-interface {p1, v0}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    move-object p1, p0

    goto :goto_0

    :cond_1
    invoke-static {}, Lcn/hutool/core/lang/Opt;->empty()Lcn/hutool/core/lang/Opt;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public flatMap(Ljava/util/function/Function;)Lcn/hutool/core/lang/Opt;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Function<",
            "-TT;+",
            "Lcn/hutool/core/lang/Opt<",
            "+TU;>;>;)",
            "Lcn/hutool/core/lang/Opt<",
            "TU;>;"
        }
    .end annotation

    .line 295
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 296
    invoke-virtual {p0}, Lcn/hutool/core/lang/Opt;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 297
    invoke-static {}, Lcn/hutool/core/lang/Opt;->empty()Lcn/hutool/core/lang/Opt;

    move-result-object p1

    return-object p1

    .line 300
    :cond_0
    iget-object v0, p0, Lcn/hutool/core/lang/Opt;->value:Ljava/lang/Object;

    invoke-interface {p1, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/hutool/core/lang/Opt;

    .line 301
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/hutool/core/lang/Opt;

    return-object p1
.end method

.method public flattedMap(Ljava/util/function/Function;)Lcn/hutool/core/lang/Opt;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Function<",
            "-TT;+",
            "Ljava/util/Optional<",
            "+TU;>;>;)",
            "Lcn/hutool/core/lang/Opt<",
            "TU;>;"
        }
    .end annotation

    .line 319
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 320
    invoke-virtual {p0}, Lcn/hutool/core/lang/Opt;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 321
    invoke-static {}, Lcn/hutool/core/lang/Opt;->empty()Lcn/hutool/core/lang/Opt;

    move-result-object p1

    return-object p1

    .line 323
    :cond_0
    iget-object v0, p0, Lcn/hutool/core/lang/Opt;->value:Ljava/lang/Object;

    invoke-interface {p1, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Optional;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lcn/hutool/core/lang/Opt;->ofNullable(Ljava/lang/Object;)Lcn/hutool/core/lang/Opt;

    move-result-object p1

    return-object p1
.end method

.method public get()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 133
    iget-object v0, p0, Lcn/hutool/core/lang/Opt;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public getException()Ljava/lang/Exception;
    .locals 1

    .line 154
    iget-object v0, p0, Lcn/hutool/core/lang/Opt;->exception:Ljava/lang/Exception;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 532
    iget-object v0, p0, Lcn/hutool/core/lang/Opt;->value:Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public ifPresent(Ljava/util/function/Consumer;)Lcn/hutool/core/lang/Opt;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-TT;>;)",
            "Lcn/hutool/core/lang/Opt<",
            "TT;>;"
        }
    .end annotation

    .line 190
    invoke-virtual {p0}, Lcn/hutool/core/lang/Opt;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 191
    iget-object v0, p0, Lcn/hutool/core/lang/Opt;->value:Ljava/lang/Object;

    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_0
    return-object p0
.end method

.method public ifPresentOrElse(Ljava/util/function/Consumer;Lcn/hutool/core/lang/func/VoidFunc0;)Lcn/hutool/core/lang/Opt;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-TT;>;",
            "Lcn/hutool/core/lang/func/VoidFunc0;",
            ")",
            "Lcn/hutool/core/lang/Opt<",
            "TT;>;"
        }
    .end annotation

    .line 212
    invoke-virtual {p0}, Lcn/hutool/core/lang/Opt;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 213
    iget-object p2, p0, Lcn/hutool/core/lang/Opt;->value:Ljava/lang/Object;

    invoke-interface {p1, p2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_0

    .line 215
    :cond_0
    invoke-interface {p2}, Lcn/hutool/core/lang/func/VoidFunc0;->callWithRuntimeException()V

    :goto_0
    return-object p0
.end method

.method public isEmpty()Z
    .locals 1

    .line 143
    iget-object v0, p0, Lcn/hutool/core/lang/Opt;->value:Ljava/lang/Object;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isFail()Z
    .locals 1

    .line 165
    iget-object v0, p0, Lcn/hutool/core/lang/Opt;->exception:Ljava/lang/Exception;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isPresent()Z
    .locals 1

    .line 174
    iget-object v0, p0, Lcn/hutool/core/lang/Opt;->value:Ljava/lang/Object;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public map(Ljava/util/function/Function;)Lcn/hutool/core/lang/Opt;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Function<",
            "-TT;+TU;>;)",
            "Lcn/hutool/core/lang/Opt<",
            "TU;>;"
        }
    .end annotation

    .line 275
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 276
    invoke-virtual {p0}, Lcn/hutool/core/lang/Opt;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 277
    invoke-static {}, Lcn/hutool/core/lang/Opt;->empty()Lcn/hutool/core/lang/Opt;

    move-result-object p1

    return-object p1

    .line 279
    :cond_0
    iget-object v0, p0, Lcn/hutool/core/lang/Opt;->value:Ljava/lang/Object;

    invoke-interface {p1, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lcn/hutool/core/lang/Opt;->ofNullable(Ljava/lang/Object;)Lcn/hutool/core/lang/Opt;

    move-result-object p1

    return-object p1
.end method

.method public mapOrElse(Ljava/util/function/Function;Lcn/hutool/core/lang/func/VoidFunc0;)Lcn/hutool/core/lang/Opt;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Function<",
            "-TT;+TU;>;",
            "Lcn/hutool/core/lang/func/VoidFunc0;",
            ")",
            "Lcn/hutool/core/lang/Opt<",
            "TU;>;"
        }
    .end annotation

    .line 238
    invoke-virtual {p0}, Lcn/hutool/core/lang/Opt;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 239
    iget-object p2, p0, Lcn/hutool/core/lang/Opt;->value:Ljava/lang/Object;

    invoke-interface {p1, p2}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lcn/hutool/core/lang/Opt;->ofNullable(Ljava/lang/Object;)Lcn/hutool/core/lang/Opt;

    move-result-object p1

    return-object p1

    .line 241
    :cond_0
    invoke-interface {p2}, Lcn/hutool/core/lang/func/VoidFunc0;->callWithRuntimeException()V

    .line 242
    invoke-static {}, Lcn/hutool/core/lang/Opt;->empty()Lcn/hutool/core/lang/Opt;

    move-result-object p1

    return-object p1
.end method

.method public or(Ljava/util/function/Supplier;)Lcn/hutool/core/lang/Opt;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Supplier<",
            "+",
            "Lcn/hutool/core/lang/Opt<",
            "+TT;>;>;)",
            "Lcn/hutool/core/lang/Opt<",
            "TT;>;"
        }
    .end annotation

    .line 374
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 375
    invoke-virtual {p0}, Lcn/hutool/core/lang/Opt;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 378
    :cond_0
    invoke-interface {p1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/hutool/core/lang/Opt;

    .line 379
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/hutool/core/lang/Opt;

    return-object p1
.end method

.method public orElse(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TT;"
        }
    .end annotation

    .line 410
    invoke-virtual {p0}, Lcn/hutool/core/lang/Opt;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcn/hutool/core/lang/Opt;->value:Ljava/lang/Object;

    :cond_0
    return-object p1
.end method

.method public orElseGet(Ljava/util/function/Supplier;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Supplier<",
            "+TT;>;)TT;"
        }
    .end annotation

    .line 432
    invoke-virtual {p0}, Lcn/hutool/core/lang/Opt;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcn/hutool/core/lang/Opt;->value:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public orElseThrow()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 442
    new-instance v0, Lcn/hutool/core/lang/Opt$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lcn/hutool/core/lang/Opt$$ExternalSyntheticLambda2;-><init>()V

    const-string v1, "No value present"

    invoke-virtual {p0, v0, v1}, Lcn/hutool/core/lang/Opt;->orElseThrow(Ljava/util/function/Function;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public orElseThrow(Ljava/util/function/Function;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/Throwable;",
            ">(",
            "Ljava/util/function/Function<",
            "Ljava/lang/String;",
            "+TX;>;",
            "Ljava/lang/String;",
            ")TT;^TX;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 480
    invoke-virtual {p0}, Lcn/hutool/core/lang/Opt;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 481
    iget-object p1, p0, Lcn/hutool/core/lang/Opt;->value:Ljava/lang/Object;

    return-object p1

    .line 483
    :cond_0
    invoke-interface {p1, p2}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Throwable;

    throw p1
.end method

.method public orElseThrow(Ljava/util/function/Supplier;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/Throwable;",
            ">(",
            "Ljava/util/function/Supplier<",
            "+TX;>;)TT;^TX;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 456
    invoke-virtual {p0}, Lcn/hutool/core/lang/Opt;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 457
    iget-object p1, p0, Lcn/hutool/core/lang/Opt;->value:Ljava/lang/Object;

    return-object p1

    .line 459
    :cond_0
    invoke-interface {p1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Throwable;

    throw p1
.end method

.method public peek(Ljava/util/function/Consumer;)Lcn/hutool/core/lang/Opt;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "TT;>;)",
            "Lcn/hutool/core/lang/Opt<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .line 339
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 340
    invoke-virtual {p0}, Lcn/hutool/core/lang/Opt;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 341
    invoke-static {}, Lcn/hutool/core/lang/Opt;->empty()Lcn/hutool/core/lang/Opt;

    move-result-object p1

    return-object p1

    .line 343
    :cond_0
    iget-object v0, p0, Lcn/hutool/core/lang/Opt;->value:Ljava/lang/Object;

    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-object p0
.end method

.method public final varargs peeks([Ljava/util/function/Consumer;)Lcn/hutool/core/lang/Opt;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/util/function/Consumer<",
            "TT;>;)",
            "Lcn/hutool/core/lang/Opt<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .line 363
    invoke-static {p1}, Ljava/util/stream/Stream;->of([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lcn/hutool/core/lang/Opt$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcn/hutool/core/lang/Opt$$ExternalSyntheticLambda0;-><init>()V

    new-instance v1, Lcn/hutool/core/lang/Opt$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lcn/hutool/core/lang/Opt$$ExternalSyntheticLambda1;-><init>()V

    invoke-interface {p1, p0, v0, v1}, Ljava/util/stream/Stream;->reduce(Ljava/lang/Object;Ljava/util/function/BiFunction;Ljava/util/function/BinaryOperator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/hutool/core/lang/Opt;

    return-object p1
.end method

.method public stream()Ljava/util/stream/Stream;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/stream/Stream<",
            "TT;>;"
        }
    .end annotation

    .line 396
    invoke-virtual {p0}, Lcn/hutool/core/lang/Opt;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 397
    invoke-static {}, Ljava/util/stream/Stream;->empty()Ljava/util/stream/Stream;

    move-result-object v0

    return-object v0

    .line 399
    :cond_0
    iget-object v0, p0, Lcn/hutool/core/lang/Opt;->value:Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/stream/Stream;->of(Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    return-object v0
.end method

.method public toOptional()Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "TT;>;"
        }
    .end annotation

    .line 494
    iget-object v0, p0, Lcn/hutool/core/lang/Opt;->value:Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 542
    iget-object v0, p0, Lcn/hutool/core/lang/Opt;->value:Ljava/lang/Object;

    invoke-static {v0}, Lcn/hutool/core/util/StrUtil;->toStringOrNull(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
