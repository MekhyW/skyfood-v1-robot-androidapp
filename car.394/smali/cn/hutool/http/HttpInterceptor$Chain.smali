.class public Lcn/hutool/http/HttpInterceptor$Chain;
.super Ljava/lang/Object;
.source "HttpInterceptor.java"

# interfaces
.implements Lcn/hutool/core/lang/Chain;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/hutool/http/HttpInterceptor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Chain"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcn/hutool/http/HttpBase<",
        "TT;>;>",
        "Ljava/lang/Object;",
        "Lcn/hutool/core/lang/Chain<",
        "Lcn/hutool/http/HttpInterceptor<",
        "TT;>;",
        "Lcn/hutool/http/HttpInterceptor$Chain<",
        "TT;>;>;"
    }
.end annotation


# instance fields
.field private final interceptors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/hutool/http/HttpInterceptor<",
            "TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcn/hutool/http/HttpInterceptor$Chain;->interceptors:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public addChain(Lcn/hutool/http/HttpInterceptor;)Lcn/hutool/http/HttpInterceptor$Chain;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/hutool/http/HttpInterceptor<",
            "TT;>;)",
            "Lcn/hutool/http/HttpInterceptor$Chain<",
            "TT;>;"
        }
    .end annotation

    .line 36
    iget-object v0, p0, Lcn/hutool/http/HttpInterceptor$Chain;->interceptors:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public bridge synthetic addChain(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 31
    check-cast p1, Lcn/hutool/http/HttpInterceptor;

    invoke-virtual {p0, p1}, Lcn/hutool/http/HttpInterceptor$Chain;->addChain(Lcn/hutool/http/HttpInterceptor;)Lcn/hutool/http/HttpInterceptor$Chain;

    move-result-object p1

    return-object p1
.end method

.method public clear()Lcn/hutool/http/HttpInterceptor$Chain;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcn/hutool/http/HttpInterceptor$Chain<",
            "TT;>;"
        }
    .end annotation

    .line 52
    iget-object v0, p0, Lcn/hutool/http/HttpInterceptor$Chain;->interceptors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-object p0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lcn/hutool/http/HttpInterceptor<",
            "TT;>;>;"
        }
    .end annotation

    .line 42
    iget-object v0, p0, Lcn/hutool/http/HttpInterceptor$Chain;->interceptors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method
