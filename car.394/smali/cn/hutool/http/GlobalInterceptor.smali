.class public final enum Lcn/hutool/http/GlobalInterceptor;
.super Ljava/lang/Enum;
.source "GlobalInterceptor.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcn/hutool/http/GlobalInterceptor;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcn/hutool/http/GlobalInterceptor;

.field public static final enum INSTANCE:Lcn/hutool/http/GlobalInterceptor;


# instance fields
.field private final requestInterceptors:Lcn/hutool/http/HttpInterceptor$Chain;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcn/hutool/http/HttpInterceptor$Chain<",
            "Lcn/hutool/http/HttpRequest;",
            ">;"
        }
    .end annotation
.end field

.field private final responseInterceptors:Lcn/hutool/http/HttpInterceptor$Chain;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcn/hutool/http/HttpInterceptor$Chain<",
            "Lcn/hutool/http/HttpResponse;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 11
    new-instance v0, Lcn/hutool/http/GlobalInterceptor;

    const-string v1, "INSTANCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcn/hutool/http/GlobalInterceptor;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/hutool/http/GlobalInterceptor;->INSTANCE:Lcn/hutool/http/GlobalInterceptor;

    const/4 v1, 0x1

    new-array v1, v1, [Lcn/hutool/http/GlobalInterceptor;

    aput-object v0, v1, v2

    .line 10
    sput-object v1, Lcn/hutool/http/GlobalInterceptor;->$VALUES:[Lcn/hutool/http/GlobalInterceptor;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 10
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 13
    new-instance p1, Lcn/hutool/http/HttpInterceptor$Chain;

    invoke-direct {p1}, Lcn/hutool/http/HttpInterceptor$Chain;-><init>()V

    iput-object p1, p0, Lcn/hutool/http/GlobalInterceptor;->requestInterceptors:Lcn/hutool/http/HttpInterceptor$Chain;

    .line 14
    new-instance p1, Lcn/hutool/http/HttpInterceptor$Chain;

    invoke-direct {p1}, Lcn/hutool/http/HttpInterceptor$Chain;-><init>()V

    iput-object p1, p0, Lcn/hutool/http/GlobalInterceptor;->responseInterceptors:Lcn/hutool/http/HttpInterceptor$Chain;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcn/hutool/http/GlobalInterceptor;
    .locals 1

    .line 10
    const-class v0, Lcn/hutool/http/GlobalInterceptor;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcn/hutool/http/GlobalInterceptor;

    return-object p0
.end method

.method public static values()[Lcn/hutool/http/GlobalInterceptor;
    .locals 1

    .line 10
    sget-object v0, Lcn/hutool/http/GlobalInterceptor;->$VALUES:[Lcn/hutool/http/GlobalInterceptor;

    invoke-virtual {v0}, [Lcn/hutool/http/GlobalInterceptor;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/hutool/http/GlobalInterceptor;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized addRequestInterceptor(Lcn/hutool/http/HttpInterceptor;)Lcn/hutool/http/GlobalInterceptor;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/hutool/http/HttpInterceptor<",
            "Lcn/hutool/http/HttpRequest;",
            ">;)",
            "Lcn/hutool/http/GlobalInterceptor;"
        }
    .end annotation

    monitor-enter p0

    .line 23
    :try_start_0
    iget-object v0, p0, Lcn/hutool/http/GlobalInterceptor;->requestInterceptors:Lcn/hutool/http/HttpInterceptor$Chain;

    invoke-virtual {v0, p1}, Lcn/hutool/http/HttpInterceptor$Chain;->addChain(Lcn/hutool/http/HttpInterceptor;)Lcn/hutool/http/HttpInterceptor$Chain;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    monitor-exit p0

    return-object p0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized addResponseInterceptor(Lcn/hutool/http/HttpInterceptor;)Lcn/hutool/http/GlobalInterceptor;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/hutool/http/HttpInterceptor<",
            "Lcn/hutool/http/HttpResponse;",
            ">;)",
            "Lcn/hutool/http/GlobalInterceptor;"
        }
    .end annotation

    monitor-enter p0

    .line 34
    :try_start_0
    iget-object v0, p0, Lcn/hutool/http/GlobalInterceptor;->responseInterceptors:Lcn/hutool/http/HttpInterceptor$Chain;

    invoke-virtual {v0, p1}, Lcn/hutool/http/HttpInterceptor$Chain;->addChain(Lcn/hutool/http/HttpInterceptor;)Lcn/hutool/http/HttpInterceptor$Chain;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    monitor-exit p0

    return-object p0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public clear()Lcn/hutool/http/GlobalInterceptor;
    .locals 0

    .line 44
    invoke-virtual {p0}, Lcn/hutool/http/GlobalInterceptor;->clearRequest()Lcn/hutool/http/GlobalInterceptor;

    .line 45
    invoke-virtual {p0}, Lcn/hutool/http/GlobalInterceptor;->clearResponse()Lcn/hutool/http/GlobalInterceptor;

    return-object p0
.end method

.method public declared-synchronized clearRequest()Lcn/hutool/http/GlobalInterceptor;
    .locals 1

    monitor-enter p0

    .line 55
    :try_start_0
    iget-object v0, p0, Lcn/hutool/http/GlobalInterceptor;->requestInterceptors:Lcn/hutool/http/HttpInterceptor$Chain;

    invoke-virtual {v0}, Lcn/hutool/http/HttpInterceptor$Chain;->clear()Lcn/hutool/http/HttpInterceptor$Chain;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    monitor-exit p0

    return-object p0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized clearResponse()Lcn/hutool/http/GlobalInterceptor;
    .locals 1

    monitor-enter p0

    .line 65
    :try_start_0
    iget-object v0, p0, Lcn/hutool/http/GlobalInterceptor;->responseInterceptors:Lcn/hutool/http/HttpInterceptor$Chain;

    invoke-virtual {v0}, Lcn/hutool/http/HttpInterceptor$Chain;->clear()Lcn/hutool/http/HttpInterceptor$Chain;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    monitor-exit p0

    return-object p0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method getCopiedRequestInterceptor()Lcn/hutool/http/HttpInterceptor$Chain;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcn/hutool/http/HttpInterceptor$Chain<",
            "Lcn/hutool/http/HttpRequest;",
            ">;"
        }
    .end annotation

    .line 75
    new-instance v0, Lcn/hutool/http/HttpInterceptor$Chain;

    invoke-direct {v0}, Lcn/hutool/http/HttpInterceptor$Chain;-><init>()V

    .line 76
    iget-object v1, p0, Lcn/hutool/http/GlobalInterceptor;->requestInterceptors:Lcn/hutool/http/HttpInterceptor$Chain;

    invoke-virtual {v1}, Lcn/hutool/http/HttpInterceptor$Chain;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/hutool/http/HttpInterceptor;

    .line 77
    invoke-virtual {v0, v2}, Lcn/hutool/http/HttpInterceptor$Chain;->addChain(Lcn/hutool/http/HttpInterceptor;)Lcn/hutool/http/HttpInterceptor$Chain;

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method getCopiedResponseInterceptor()Lcn/hutool/http/HttpInterceptor$Chain;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcn/hutool/http/HttpInterceptor$Chain<",
            "Lcn/hutool/http/HttpResponse;",
            ">;"
        }
    .end annotation

    .line 88
    new-instance v0, Lcn/hutool/http/HttpInterceptor$Chain;

    invoke-direct {v0}, Lcn/hutool/http/HttpInterceptor$Chain;-><init>()V

    .line 89
    iget-object v1, p0, Lcn/hutool/http/GlobalInterceptor;->responseInterceptors:Lcn/hutool/http/HttpInterceptor$Chain;

    invoke-virtual {v1}, Lcn/hutool/http/HttpInterceptor$Chain;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/hutool/http/HttpInterceptor;

    .line 90
    invoke-virtual {v0, v2}, Lcn/hutool/http/HttpInterceptor$Chain;->addChain(Lcn/hutool/http/HttpInterceptor;)Lcn/hutool/http/HttpInterceptor$Chain;

    goto :goto_0

    :cond_0
    return-object v0
.end method
