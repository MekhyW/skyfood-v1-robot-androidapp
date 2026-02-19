.class public Lcn/hutool/http/HttpConfig;
.super Ljava/lang/Object;
.source "HttpConfig.java"


# instance fields
.field blockSize:I

.field connectionTimeout:I

.field decodeUrl:Z

.field followRedirectsCookie:Z

.field hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

.field ignoreEOFError:Z

.field interceptorOnRedirect:Z

.field isDisableCache:Z

.field maxRedirectCount:I

.field proxy:Ljava/net/Proxy;

.field readTimeout:I

.field final requestInterceptors:Lcn/hutool/http/HttpInterceptor$Chain;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcn/hutool/http/HttpInterceptor$Chain<",
            "Lcn/hutool/http/HttpRequest;",
            ">;"
        }
    .end annotation
.end field

.field final responseInterceptors:Lcn/hutool/http/HttpInterceptor$Chain;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcn/hutool/http/HttpInterceptor$Chain<",
            "Lcn/hutool/http/HttpResponse;",
            ">;"
        }
    .end annotation
.end field

.field ssf:Ljavax/net/ssl/SSLSocketFactory;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    invoke-static {}, Lcn/hutool/http/HttpGlobalConfig;->getTimeout()I

    move-result v0

    iput v0, p0, Lcn/hutool/http/HttpConfig;->connectionTimeout:I

    .line 35
    invoke-static {}, Lcn/hutool/http/HttpGlobalConfig;->getTimeout()I

    move-result v0

    iput v0, p0, Lcn/hutool/http/HttpConfig;->readTimeout:I

    .line 45
    invoke-static {}, Lcn/hutool/http/HttpGlobalConfig;->getMaxRedirectCount()I

    move-result v0

    iput v0, p0, Lcn/hutool/http/HttpConfig;->maxRedirectCount:I

    .line 71
    invoke-static {}, Lcn/hutool/http/HttpGlobalConfig;->isIgnoreEOFError()Z

    move-result v0

    iput-boolean v0, p0, Lcn/hutool/http/HttpConfig;->ignoreEOFError:Z

    .line 77
    invoke-static {}, Lcn/hutool/http/HttpGlobalConfig;->isDecodeUrl()Z

    move-result v0

    iput-boolean v0, p0, Lcn/hutool/http/HttpConfig;->decodeUrl:Z

    .line 82
    sget-object v0, Lcn/hutool/http/GlobalInterceptor;->INSTANCE:Lcn/hutool/http/GlobalInterceptor;

    invoke-virtual {v0}, Lcn/hutool/http/GlobalInterceptor;->getCopiedRequestInterceptor()Lcn/hutool/http/HttpInterceptor$Chain;

    move-result-object v0

    iput-object v0, p0, Lcn/hutool/http/HttpConfig;->requestInterceptors:Lcn/hutool/http/HttpInterceptor$Chain;

    .line 86
    sget-object v0, Lcn/hutool/http/GlobalInterceptor;->INSTANCE:Lcn/hutool/http/GlobalInterceptor;

    invoke-virtual {v0}, Lcn/hutool/http/GlobalInterceptor;->getCopiedResponseInterceptor()Lcn/hutool/http/HttpInterceptor$Chain;

    move-result-object v0

    iput-object v0, p0, Lcn/hutool/http/HttpConfig;->responseInterceptors:Lcn/hutool/http/HttpInterceptor$Chain;

    return-void
.end method

.method public static create()Lcn/hutool/http/HttpConfig;
    .locals 1

    .line 25
    new-instance v0, Lcn/hutool/http/HttpConfig;

    invoke-direct {v0}, Lcn/hutool/http/HttpConfig;-><init>()V

    return-object v0
.end method


# virtual methods
.method public addRequestInterceptor(Lcn/hutool/http/HttpInterceptor;)Lcn/hutool/http/HttpConfig;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/hutool/http/HttpInterceptor<",
            "Lcn/hutool/http/HttpRequest;",
            ">;)",
            "Lcn/hutool/http/HttpConfig;"
        }
    .end annotation

    .line 280
    iget-object v0, p0, Lcn/hutool/http/HttpConfig;->requestInterceptors:Lcn/hutool/http/HttpInterceptor$Chain;

    invoke-virtual {v0, p1}, Lcn/hutool/http/HttpInterceptor$Chain;->addChain(Lcn/hutool/http/HttpInterceptor;)Lcn/hutool/http/HttpInterceptor$Chain;

    return-object p0
.end method

.method public addResponseInterceptor(Lcn/hutool/http/HttpInterceptor;)Lcn/hutool/http/HttpConfig;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/hutool/http/HttpInterceptor<",
            "Lcn/hutool/http/HttpResponse;",
            ">;)",
            "Lcn/hutool/http/HttpConfig;"
        }
    .end annotation

    .line 291
    iget-object v0, p0, Lcn/hutool/http/HttpConfig;->responseInterceptors:Lcn/hutool/http/HttpInterceptor$Chain;

    invoke-virtual {v0, p1}, Lcn/hutool/http/HttpInterceptor$Chain;->addChain(Lcn/hutool/http/HttpInterceptor;)Lcn/hutool/http/HttpInterceptor$Chain;

    return-object p0
.end method

.method public disableCache()Lcn/hutool/http/HttpConfig;
    .locals 1

    const/4 v0, 0x1

    .line 146
    iput-boolean v0, p0, Lcn/hutool/http/HttpConfig;->isDisableCache:Z

    return-object p0
.end method

.method public setBlockSize(I)Lcn/hutool/http/HttpConfig;
    .locals 0

    .line 242
    iput p1, p0, Lcn/hutool/http/HttpConfig;->blockSize:I

    return-object p0
.end method

.method public setConnectionTimeout(I)Lcn/hutool/http/HttpConfig;
    .locals 0

    .line 125
    iput p1, p0, Lcn/hutool/http/HttpConfig;->connectionTimeout:I

    return-object p0
.end method

.method public setDecodeUrl(Z)Lcn/hutool/http/HttpConfig;
    .locals 0

    .line 269
    iput-boolean p1, p0, Lcn/hutool/http/HttpConfig;->decodeUrl:Z

    return-object p0
.end method

.method public setFollowRedirectsCookie(Z)Lcn/hutool/http/HttpConfig;
    .locals 0

    .line 314
    iput-boolean p1, p0, Lcn/hutool/http/HttpConfig;->followRedirectsCookie:Z

    return-object p0
.end method

.method public setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)Lcn/hutool/http/HttpConfig;
    .locals 0

    .line 171
    iput-object p1, p0, Lcn/hutool/http/HttpConfig;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    return-object p0
.end method

.method public setHttpProxy(Ljava/lang/String;I)Lcn/hutool/http/HttpConfig;
    .locals 3

    .line 183
    new-instance v0, Ljava/net/Proxy;

    sget-object v1, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    new-instance v2, Ljava/net/InetSocketAddress;

    invoke-direct {v2, p1, p2}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    invoke-direct {v0, v1, v2}, Ljava/net/Proxy;-><init>(Ljava/net/Proxy$Type;Ljava/net/SocketAddress;)V

    .line 185
    invoke-virtual {p0, v0}, Lcn/hutool/http/HttpConfig;->setProxy(Ljava/net/Proxy;)Lcn/hutool/http/HttpConfig;

    move-result-object p1

    return-object p1
.end method

.method public setIgnoreEOFError(Z)Lcn/hutool/http/HttpConfig;
    .locals 0

    .line 256
    iput-boolean p1, p0, Lcn/hutool/http/HttpConfig;->ignoreEOFError:Z

    return-object p0
.end method

.method public setInterceptorOnRedirect(Z)Lcn/hutool/http/HttpConfig;
    .locals 0

    .line 302
    iput-boolean p1, p0, Lcn/hutool/http/HttpConfig;->interceptorOnRedirect:Z

    return-object p0
.end method

.method public setMaxRedirectCount(I)Lcn/hutool/http/HttpConfig;
    .locals 1

    const/4 v0, 0x0

    .line 158
    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcn/hutool/http/HttpConfig;->maxRedirectCount:I

    return-object p0
.end method

.method public setProxy(Ljava/net/Proxy;)Lcn/hutool/http/HttpConfig;
    .locals 0

    .line 195
    iput-object p1, p0, Lcn/hutool/http/HttpConfig;->proxy:Ljava/net/Proxy;

    return-object p0
.end method

.method public setReadTimeout(I)Lcn/hutool/http/HttpConfig;
    .locals 0

    .line 136
    iput p1, p0, Lcn/hutool/http/HttpConfig;->readTimeout:I

    return-object p0
.end method

.method public setSSLProtocol(Ljava/lang/String;)Lcn/hutool/http/HttpConfig;
    .locals 2

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "protocol must be not blank!"

    .line 229
    invoke-static {p1, v1, v0}, Lcn/hutool/core/lang/Assert;->notBlank(Ljava/lang/CharSequence;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/CharSequence;

    .line 230
    invoke-static {p1}, Lcn/hutool/core/net/SSLUtil;->createSSLContext(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object p1

    invoke-virtual {p1}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcn/hutool/http/HttpConfig;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)Lcn/hutool/http/HttpConfig;

    return-object p0
.end method

.method public setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)Lcn/hutool/http/HttpConfig;
    .locals 0

    .line 208
    iput-object p1, p0, Lcn/hutool/http/HttpConfig;->ssf:Ljavax/net/ssl/SSLSocketFactory;

    return-object p0
.end method

.method public timeout(I)Lcn/hutool/http/HttpConfig;
    .locals 0

    .line 113
    invoke-virtual {p0, p1}, Lcn/hutool/http/HttpConfig;->setConnectionTimeout(I)Lcn/hutool/http/HttpConfig;

    .line 114
    invoke-virtual {p0, p1}, Lcn/hutool/http/HttpConfig;->setReadTimeout(I)Lcn/hutool/http/HttpConfig;

    return-object p0
.end method
