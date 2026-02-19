.class public Lcn/hutool/core/builder/GenericBuilder;
.super Ljava/lang/Object;
.source "GenericBuilder.java"

# interfaces
.implements Lcn/hutool/core/builder/Builder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcn/hutool/core/builder/Builder<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final instant:Ljava/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Supplier<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final modifiers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/function/Consumer<",
            "TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/function/Supplier;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Supplier<",
            "TT;>;)V"
        }
    .end annotation

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/hutool/core/builder/GenericBuilder;->modifiers:Ljava/util/List;

    .line 83
    iput-object p1, p0, Lcn/hutool/core/builder/GenericBuilder;->instant:Ljava/util/function/Supplier;

    return-void
.end method

.method static synthetic lambda$build$2(Ljava/lang/Object;Ljava/util/function/Consumer;)V
    .locals 0

    .line 231
    invoke-interface {p1, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic lambda$with$0(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 204
    invoke-interface {p0, p2, p1}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic lambda$with$1(Lcn/hutool/core/lang/func/Consumer3;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 219
    invoke-interface {p0, p3, p1, p2}, Lcn/hutool/core/lang/func/Consumer3;->accept(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public static of(Lcn/hutool/core/lang/func/Supplier1;Ljava/lang/Object;)Lcn/hutool/core/builder/GenericBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "P1:",
            "Ljava/lang/Object;",
            ">(",
            "Lcn/hutool/core/lang/func/Supplier1<",
            "TT;TP1;>;TP1;)",
            "Lcn/hutool/core/builder/GenericBuilder<",
            "TT;>;"
        }
    .end annotation

    .line 107
    invoke-interface {p0, p1}, Lcn/hutool/core/lang/func/Supplier1;->toSupplier(Ljava/lang/Object;)Ljava/util/function/Supplier;

    move-result-object p0

    invoke-static {p0}, Lcn/hutool/core/builder/GenericBuilder;->of(Ljava/util/function/Supplier;)Lcn/hutool/core/builder/GenericBuilder;

    move-result-object p0

    return-object p0
.end method

.method public static of(Lcn/hutool/core/lang/func/Supplier2;Ljava/lang/Object;Ljava/lang/Object;)Lcn/hutool/core/builder/GenericBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "P1:",
            "Ljava/lang/Object;",
            "P2:",
            "Ljava/lang/Object;",
            ">(",
            "Lcn/hutool/core/lang/func/Supplier2<",
            "TT;TP1;TP2;>;TP1;TP2;)",
            "Lcn/hutool/core/builder/GenericBuilder<",
            "TT;>;"
        }
    .end annotation

    .line 122
    invoke-interface {p0, p1, p2}, Lcn/hutool/core/lang/func/Supplier2;->toSupplier(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/function/Supplier;

    move-result-object p0

    invoke-static {p0}, Lcn/hutool/core/builder/GenericBuilder;->of(Ljava/util/function/Supplier;)Lcn/hutool/core/builder/GenericBuilder;

    move-result-object p0

    return-object p0
.end method

.method public static of(Lcn/hutool/core/lang/func/Supplier3;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcn/hutool/core/builder/GenericBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "P1:",
            "Ljava/lang/Object;",
            "P2:",
            "Ljava/lang/Object;",
            "P3:",
            "Ljava/lang/Object;",
            ">(",
            "Lcn/hutool/core/lang/func/Supplier3<",
            "TT;TP1;TP2;TP3;>;TP1;TP2;TP3;)",
            "Lcn/hutool/core/builder/GenericBuilder<",
            "TT;>;"
        }
    .end annotation

    .line 139
    invoke-interface {p0, p1, p2, p3}, Lcn/hutool/core/lang/func/Supplier3;->toSupplier(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/function/Supplier;

    move-result-object p0

    invoke-static {p0}, Lcn/hutool/core/builder/GenericBuilder;->of(Ljava/util/function/Supplier;)Lcn/hutool/core/builder/GenericBuilder;

    move-result-object p0

    return-object p0
.end method

.method public static of(Lcn/hutool/core/lang/func/Supplier4;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcn/hutool/core/builder/GenericBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "P1:",
            "Ljava/lang/Object;",
            "P2:",
            "Ljava/lang/Object;",
            "P3:",
            "Ljava/lang/Object;",
            "P4:",
            "Ljava/lang/Object;",
            ">(",
            "Lcn/hutool/core/lang/func/Supplier4<",
            "TT;TP1;TP2;TP3;TP4;>;TP1;TP2;TP3;TP4;)",
            "Lcn/hutool/core/builder/GenericBuilder<",
            "TT;>;"
        }
    .end annotation

    .line 158
    invoke-interface {p0, p1, p2, p3, p4}, Lcn/hutool/core/lang/func/Supplier4;->toSupplier(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/function/Supplier;

    move-result-object p0

    invoke-static {p0}, Lcn/hutool/core/builder/GenericBuilder;->of(Ljava/util/function/Supplier;)Lcn/hutool/core/builder/GenericBuilder;

    move-result-object p0

    return-object p0
.end method

.method public static of(Lcn/hutool/core/lang/func/Supplier5;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcn/hutool/core/builder/GenericBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "P1:",
            "Ljava/lang/Object;",
            "P2:",
            "Ljava/lang/Object;",
            "P3:",
            "Ljava/lang/Object;",
            "P4:",
            "Ljava/lang/Object;",
            "P5:",
            "Ljava/lang/Object;",
            ">(",
            "Lcn/hutool/core/lang/func/Supplier5<",
            "TT;TP1;TP2;TP3;TP4;TP5;>;TP1;TP2;TP3;TP4;TP5;)",
            "Lcn/hutool/core/builder/GenericBuilder<",
            "TT;>;"
        }
    .end annotation

    .line 179
    invoke-interface/range {p0 .. p5}, Lcn/hutool/core/lang/func/Supplier5;->toSupplier(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/function/Supplier;

    move-result-object p0

    invoke-static {p0}, Lcn/hutool/core/builder/GenericBuilder;->of(Ljava/util/function/Supplier;)Lcn/hutool/core/builder/GenericBuilder;

    move-result-object p0

    return-object p0
.end method

.method public static of(Ljava/util/function/Supplier;)Lcn/hutool/core/builder/GenericBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Supplier<",
            "TT;>;)",
            "Lcn/hutool/core/builder/GenericBuilder<",
            "TT;>;"
        }
    .end annotation

    .line 94
    new-instance v0, Lcn/hutool/core/builder/GenericBuilder;

    invoke-direct {v0, p0}, Lcn/hutool/core/builder/GenericBuilder;-><init>(Ljava/util/function/Supplier;)V

    return-object v0
.end method


# virtual methods
.method public build()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 230
    iget-object v0, p0, Lcn/hutool/core/builder/GenericBuilder;->instant:Ljava/util/function/Supplier;

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    .line 231
    iget-object v1, p0, Lcn/hutool/core/builder/GenericBuilder;->modifiers:Ljava/util/List;

    new-instance v2, Lcn/hutool/core/builder/GenericBuilder$$ExternalSyntheticLambda1;

    invoke-direct {v2, v0}, Lcn/hutool/core/builder/GenericBuilder$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Object;)V

    invoke-interface {v1, v2}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 232
    iget-object v1, p0, Lcn/hutool/core/builder/GenericBuilder;->modifiers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    return-object v0
.end method

.method public with(Lcn/hutool/core/lang/func/Consumer3;Ljava/lang/Object;Ljava/lang/Object;)Lcn/hutool/core/builder/GenericBuilder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P1:",
            "Ljava/lang/Object;",
            "P2:",
            "Ljava/lang/Object;",
            ">(",
            "Lcn/hutool/core/lang/func/Consumer3<",
            "TT;TP1;TP2;>;TP1;TP2;)",
            "Lcn/hutool/core/builder/GenericBuilder<",
            "TT;>;"
        }
    .end annotation

    .line 219
    iget-object v0, p0, Lcn/hutool/core/builder/GenericBuilder;->modifiers:Ljava/util/List;

    new-instance v1, Lcn/hutool/core/builder/GenericBuilder$$ExternalSyntheticLambda2;

    invoke-direct {v1, p1, p2, p3}, Lcn/hutool/core/builder/GenericBuilder$$ExternalSyntheticLambda2;-><init>(Lcn/hutool/core/lang/func/Consumer3;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public with(Ljava/util/function/BiConsumer;Ljava/lang/Object;)Lcn/hutool/core/builder/GenericBuilder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P1:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/BiConsumer<",
            "TT;TP1;>;TP1;)",
            "Lcn/hutool/core/builder/GenericBuilder<",
            "TT;>;"
        }
    .end annotation

    .line 204
    iget-object v0, p0, Lcn/hutool/core/builder/GenericBuilder;->modifiers:Ljava/util/List;

    new-instance v1, Lcn/hutool/core/builder/GenericBuilder$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1, p2}, Lcn/hutool/core/builder/GenericBuilder$$ExternalSyntheticLambda0;-><init>(Ljava/util/function/BiConsumer;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public with(Ljava/util/function/Consumer;)Lcn/hutool/core/builder/GenericBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "TT;>;)",
            "Lcn/hutool/core/builder/GenericBuilder<",
            "TT;>;"
        }
    .end annotation

    .line 190
    iget-object v0, p0, Lcn/hutool/core/builder/GenericBuilder;->modifiers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method
