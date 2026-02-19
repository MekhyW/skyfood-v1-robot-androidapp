.class public Lcn/hutool/http/HttpRequest;
.super Lcn/hutool/http/HttpBase;
.source "HttpRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/hutool/http/HttpBase<",
        "Lcn/hutool/http/HttpRequest;",
        ">;"
    }
.end annotation


# instance fields
.field private config:Lcn/hutool/http/HttpConfig;

.field private cookie:Ljava/lang/String;

.field private form:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private httpConnection:Lcn/hutool/http/HttpConnection;

.field private isMultiPart:Z

.field private isRest:Z

.field private method:Lcn/hutool/http/Method;

.field private redirectCount:I

.field private url:Lcn/hutool/core/net/url/UrlBuilder;

.field private urlHandler:Ljava/net/URLStreamHandler;


# direct methods
.method public constructor <init>(Lcn/hutool/core/net/url/UrlBuilder;)V
    .locals 2

    .line 259
    invoke-direct {p0}, Lcn/hutool/http/HttpBase;-><init>()V

    .line 213
    invoke-static {}, Lcn/hutool/http/HttpConfig;->create()Lcn/hutool/http/HttpConfig;

    move-result-object v0

    iput-object v0, p0, Lcn/hutool/http/HttpRequest;->config:Lcn/hutool/http/HttpConfig;

    .line 216
    sget-object v0, Lcn/hutool/http/Method;->GET:Lcn/hutool/http/Method;

    iput-object v0, p0, Lcn/hutool/http/HttpRequest;->method:Lcn/hutool/http/Method;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "URL must be not null!"

    .line 260
    invoke-static {p1, v1, v0}, Lcn/hutool/core/lang/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/hutool/core/net/url/UrlBuilder;

    iput-object v0, p0, Lcn/hutool/http/HttpRequest;->url:Lcn/hutool/core/net/url/UrlBuilder;

    .line 262
    invoke-virtual {p1}, Lcn/hutool/core/net/url/UrlBuilder;->getCharset()Ljava/nio/charset/Charset;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 264
    invoke-virtual {p0, p1}, Lcn/hutool/http/HttpRequest;->charset(Ljava/nio/charset/Charset;)Ljava/lang/Object;

    .line 267
    :cond_0
    sget-object p1, Lcn/hutool/http/GlobalHeaders;->INSTANCE:Lcn/hutool/http/GlobalHeaders;

    iget-object p1, p1, Lcn/hutool/http/GlobalHeaders;->headers:Ljava/util/Map;

    invoke-virtual {p0, p1}, Lcn/hutool/http/HttpRequest;->header(Ljava/util/Map;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 251
    invoke-static {p1}, Lcn/hutool/core/net/url/UrlBuilder;->ofHttp(Ljava/lang/String;)Lcn/hutool/core/net/url/UrlBuilder;

    move-result-object p1

    invoke-direct {p0, p1}, Lcn/hutool/http/HttpRequest;-><init>(Lcn/hutool/core/net/url/UrlBuilder;)V

    return-void
.end method

.method public static closeCookie()V
    .locals 1

    const/4 v0, 0x0

    .line 209
    invoke-static {v0}, Lcn/hutool/http/cookie/GlobalCookieManager;->setCookieManager(Ljava/net/CookieManager;)V

    return-void
.end method

.method private createBody()Lcn/hutool/http/body/RequestBody;
    .locals 2

    .line 1368
    iget-object v0, p0, Lcn/hutool/http/HttpRequest;->body:Lcn/hutool/core/io/resource/Resource;

    if-eqz v0, :cond_0

    .line 1369
    iget-object v0, p0, Lcn/hutool/http/HttpRequest;->body:Lcn/hutool/core/io/resource/Resource;

    invoke-static {v0}, Lcn/hutool/http/body/ResourceBody;->create(Lcn/hutool/core/io/resource/Resource;)Lcn/hutool/http/body/ResourceBody;

    move-result-object v0

    return-object v0

    .line 1371
    :cond_0
    iget-object v0, p0, Lcn/hutool/http/HttpRequest;->form:Ljava/util/Map;

    iget-object v1, p0, Lcn/hutool/http/HttpRequest;->charset:Ljava/nio/charset/Charset;

    invoke-static {v0, v1}, Lcn/hutool/http/body/FormUrlEncodedBody;->create(Ljava/util/Map;Ljava/nio/charset/Charset;)Lcn/hutool/http/body/FormUrlEncodedBody;

    move-result-object v0

    return-object v0
.end method

.method public static delete(Ljava/lang/String;)Lcn/hutool/http/HttpRequest;
    .locals 1

    .line 116
    invoke-static {p0}, Lcn/hutool/http/HttpRequest;->of(Ljava/lang/String;)Lcn/hutool/http/HttpRequest;

    move-result-object p0

    sget-object v0, Lcn/hutool/http/Method;->DELETE:Lcn/hutool/http/Method;

    invoke-virtual {p0, v0}, Lcn/hutool/http/HttpRequest;->method(Lcn/hutool/http/Method;)Lcn/hutool/http/HttpRequest;

    move-result-object p0

    return-object p0
.end method

.method private doExecute(ZLcn/hutool/http/HttpInterceptor$Chain;Lcn/hutool/http/HttpInterceptor$Chain;)Lcn/hutool/http/HttpResponse;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lcn/hutool/http/HttpInterceptor$Chain<",
            "Lcn/hutool/http/HttpRequest;",
            ">;",
            "Lcn/hutool/http/HttpInterceptor$Chain<",
            "Lcn/hutool/http/HttpResponse;",
            ">;)",
            "Lcn/hutool/http/HttpResponse;"
        }
    .end annotation

    if-eqz p2, :cond_0

    .line 1179
    invoke-virtual {p2}, Lcn/hutool/http/HttpInterceptor$Chain;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/hutool/http/HttpInterceptor;

    .line 1180
    invoke-interface {v0, p0}, Lcn/hutool/http/HttpInterceptor;->process(Lcn/hutool/http/HttpBase;)V

    goto :goto_0

    .line 1185
    :cond_0
    invoke-direct {p0}, Lcn/hutool/http/HttpRequest;->urlWithParamIfGet()V

    .line 1187
    invoke-direct {p0}, Lcn/hutool/http/HttpRequest;->initConnection()V

    .line 1189
    invoke-direct {p0}, Lcn/hutool/http/HttpRequest;->send()V

    .line 1192
    invoke-direct {p0, p1}, Lcn/hutool/http/HttpRequest;->sendRedirectIfPossible(Z)Lcn/hutool/http/HttpResponse;

    move-result-object p2

    if-nez p2, :cond_1

    .line 1196
    new-instance p2, Lcn/hutool/http/HttpResponse;

    iget-object v1, p0, Lcn/hutool/http/HttpRequest;->httpConnection:Lcn/hutool/http/HttpConnection;

    iget-object v2, p0, Lcn/hutool/http/HttpRequest;->config:Lcn/hutool/http/HttpConfig;

    iget-object v3, p0, Lcn/hutool/http/HttpRequest;->charset:Ljava/nio/charset/Charset;

    invoke-direct {p0}, Lcn/hutool/http/HttpRequest;->isIgnoreResponseBody()Z

    move-result v5

    move-object v0, p2

    move v4, p1

    invoke-direct/range {v0 .. v5}, Lcn/hutool/http/HttpResponse;-><init>(Lcn/hutool/http/HttpConnection;Lcn/hutool/http/HttpConfig;Ljava/nio/charset/Charset;ZZ)V

    :cond_1
    if-eqz p3, :cond_2

    .line 1201
    invoke-virtual {p3}, Lcn/hutool/http/HttpInterceptor$Chain;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcn/hutool/http/HttpInterceptor;

    .line 1202
    invoke-interface {p3, p2}, Lcn/hutool/http/HttpInterceptor;->process(Lcn/hutool/http/HttpBase;)V

    goto :goto_1

    :cond_2
    return-object p2
.end method

.method public static get(Ljava/lang/String;)Lcn/hutool/http/HttpRequest;
    .locals 1

    .line 65
    invoke-static {p0}, Lcn/hutool/http/HttpRequest;->of(Ljava/lang/String;)Lcn/hutool/http/HttpRequest;

    move-result-object p0

    sget-object v0, Lcn/hutool/http/Method;->GET:Lcn/hutool/http/Method;

    invoke-virtual {p0, v0}, Lcn/hutool/http/HttpRequest;->method(Lcn/hutool/http/Method;)Lcn/hutool/http/HttpRequest;

    move-result-object p0

    return-object p0
.end method

.method public static getCookieManager()Ljava/net/CookieManager;
    .locals 1

    .line 188
    invoke-static {}, Lcn/hutool/http/cookie/GlobalCookieManager;->getCookieManager()Ljava/net/CookieManager;

    move-result-object v0

    return-object v0
.end method

.method public static head(Ljava/lang/String;)Lcn/hutool/http/HttpRequest;
    .locals 1

    .line 75
    invoke-static {p0}, Lcn/hutool/http/HttpRequest;->of(Ljava/lang/String;)Lcn/hutool/http/HttpRequest;

    move-result-object p0

    sget-object v0, Lcn/hutool/http/Method;->HEAD:Lcn/hutool/http/Method;

    invoke-virtual {p0, v0}, Lcn/hutool/http/HttpRequest;->method(Lcn/hutool/http/Method;)Lcn/hutool/http/HttpRequest;

    move-result-object p0

    return-object p0
.end method

.method private initConnection()V
    .locals 3

    .line 1213
    iget-object v0, p0, Lcn/hutool/http/HttpRequest;->httpConnection:Lcn/hutool/http/HttpConnection;

    if-eqz v0, :cond_0

    .line 1215
    invoke-virtual {v0}, Lcn/hutool/http/HttpConnection;->disconnectQuietly()Lcn/hutool/http/HttpConnection;

    .line 1218
    :cond_0
    iget-object v0, p0, Lcn/hutool/http/HttpRequest;->url:Lcn/hutool/core/net/url/UrlBuilder;

    iget-object v1, p0, Lcn/hutool/http/HttpRequest;->charset:Ljava/nio/charset/Charset;

    .line 1221
    invoke-virtual {v0, v1}, Lcn/hutool/core/net/url/UrlBuilder;->setCharset(Ljava/nio/charset/Charset;)Lcn/hutool/core/net/url/UrlBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/hutool/http/HttpRequest;->urlHandler:Ljava/net/URLStreamHandler;

    invoke-virtual {v0, v1}, Lcn/hutool/core/net/url/UrlBuilder;->toURL(Ljava/net/URLStreamHandler;)Ljava/net/URL;

    move-result-object v0

    iget-object v1, p0, Lcn/hutool/http/HttpRequest;->config:Lcn/hutool/http/HttpConfig;

    iget-object v1, v1, Lcn/hutool/http/HttpConfig;->proxy:Ljava/net/Proxy;

    invoke-static {v0, v1}, Lcn/hutool/http/HttpConnection;->create(Ljava/net/URL;Ljava/net/Proxy;)Lcn/hutool/http/HttpConnection;

    move-result-object v0

    iget-object v1, p0, Lcn/hutool/http/HttpRequest;->config:Lcn/hutool/http/HttpConfig;

    iget v1, v1, Lcn/hutool/http/HttpConfig;->connectionTimeout:I

    .line 1222
    invoke-virtual {v0, v1}, Lcn/hutool/http/HttpConnection;->setConnectTimeout(I)Lcn/hutool/http/HttpConnection;

    move-result-object v0

    iget-object v1, p0, Lcn/hutool/http/HttpRequest;->config:Lcn/hutool/http/HttpConfig;

    iget v1, v1, Lcn/hutool/http/HttpConfig;->readTimeout:I

    .line 1223
    invoke-virtual {v0, v1}, Lcn/hutool/http/HttpConnection;->setReadTimeout(I)Lcn/hutool/http/HttpConnection;

    move-result-object v0

    iget-object v1, p0, Lcn/hutool/http/HttpRequest;->method:Lcn/hutool/http/Method;

    .line 1224
    invoke-virtual {v0, v1}, Lcn/hutool/http/HttpConnection;->setMethod(Lcn/hutool/http/Method;)Lcn/hutool/http/HttpConnection;

    move-result-object v0

    iget-object v1, p0, Lcn/hutool/http/HttpRequest;->config:Lcn/hutool/http/HttpConfig;

    iget-object v1, v1, Lcn/hutool/http/HttpConfig;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    iget-object v2, p0, Lcn/hutool/http/HttpRequest;->config:Lcn/hutool/http/HttpConfig;

    iget-object v2, v2, Lcn/hutool/http/HttpConfig;->ssf:Ljavax/net/ssl/SSLSocketFactory;

    .line 1225
    invoke-virtual {v0, v1, v2}, Lcn/hutool/http/HttpConnection;->setHttpsInfo(Ljavax/net/ssl/HostnameVerifier;Ljavax/net/ssl/SSLSocketFactory;)Lcn/hutool/http/HttpConnection;

    move-result-object v0

    const/4 v1, 0x0

    .line 1227
    invoke-virtual {v0, v1}, Lcn/hutool/http/HttpConnection;->setInstanceFollowRedirects(Z)Lcn/hutool/http/HttpConnection;

    move-result-object v0

    iget-object v1, p0, Lcn/hutool/http/HttpRequest;->config:Lcn/hutool/http/HttpConfig;

    iget v1, v1, Lcn/hutool/http/HttpConfig;->blockSize:I

    .line 1229
    invoke-virtual {v0, v1}, Lcn/hutool/http/HttpConnection;->setChunkedStreamingMode(I)Lcn/hutool/http/HttpConnection;

    move-result-object v0

    iget-object v1, p0, Lcn/hutool/http/HttpRequest;->headers:Ljava/util/Map;

    const/4 v2, 0x1

    .line 1231
    invoke-virtual {v0, v1, v2}, Lcn/hutool/http/HttpConnection;->header(Ljava/util/Map;Z)Lcn/hutool/http/HttpConnection;

    move-result-object v0

    iput-object v0, p0, Lcn/hutool/http/HttpRequest;->httpConnection:Lcn/hutool/http/HttpConnection;

    .line 1233
    iget-object v1, p0, Lcn/hutool/http/HttpRequest;->cookie:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 1235
    invoke-virtual {v0, v1}, Lcn/hutool/http/HttpConnection;->setCookie(Ljava/lang/String;)Lcn/hutool/http/HttpConnection;

    goto :goto_0

    .line 1238
    :cond_1
    invoke-static {v0}, Lcn/hutool/http/cookie/GlobalCookieManager;->add(Lcn/hutool/http/HttpConnection;)V

    .line 1242
    :goto_0
    iget-object v0, p0, Lcn/hutool/http/HttpRequest;->config:Lcn/hutool/http/HttpConfig;

    iget-boolean v0, v0, Lcn/hutool/http/HttpConfig;->isDisableCache:Z

    if-eqz v0, :cond_2

    .line 1243
    iget-object v0, p0, Lcn/hutool/http/HttpRequest;->httpConnection:Lcn/hutool/http/HttpConnection;

    invoke-virtual {v0}, Lcn/hutool/http/HttpConnection;->disableCache()Lcn/hutool/http/HttpConnection;

    :cond_2
    return-void
.end method

.method private isIgnoreResponseBody()Z
    .locals 2

    .line 1396
    sget-object v0, Lcn/hutool/http/Method;->HEAD:Lcn/hutool/http/Method;

    iget-object v1, p0, Lcn/hutool/http/HttpRequest;->method:Lcn/hutool/http/Method;

    if-eq v0, v1, :cond_1

    sget-object v0, Lcn/hutool/http/Method;->CONNECT:Lcn/hutool/http/Method;

    iget-object v1, p0, Lcn/hutool/http/HttpRequest;->method:Lcn/hutool/http/Method;

    if-eq v0, v1, :cond_1

    sget-object v0, Lcn/hutool/http/Method;->OPTIONS:Lcn/hutool/http/Method;

    iget-object v1, p0, Lcn/hutool/http/HttpRequest;->method:Lcn/hutool/http/Method;

    if-eq v0, v1, :cond_1

    sget-object v0, Lcn/hutool/http/Method;->TRACE:Lcn/hutool/http/Method;

    iget-object v1, p0, Lcn/hutool/http/HttpRequest;->method:Lcn/hutool/http/Method;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private isMultipart()Z
    .locals 3

    .line 1414
    iget-boolean v0, p0, Lcn/hutool/http/HttpRequest;->isMultiPart:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 1418
    :cond_0
    sget-object v0, Lcn/hutool/http/Header;->CONTENT_TYPE:Lcn/hutool/http/Header;

    invoke-virtual {p0, v0}, Lcn/hutool/http/HttpRequest;->header(Lcn/hutool/http/Header;)Ljava/lang/String;

    move-result-object v0

    .line 1419
    invoke-static {v0}, Lcn/hutool/core/util/StrUtil;->isNotEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v2, Lcn/hutool/http/ContentType;->MULTIPART:Lcn/hutool/http/ContentType;

    .line 1420
    invoke-virtual {v2}, Lcn/hutool/http/ContentType;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method static synthetic lambda$fileForm$0(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .line 678
    instance-of v0, p2, Lcn/hutool/core/io/resource/Resource;

    if-eqz v0, :cond_0

    .line 679
    check-cast p2, Lcn/hutool/core/io/resource/Resource;

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public static of(Lcn/hutool/core/net/url/UrlBuilder;)Lcn/hutool/http/HttpRequest;
    .locals 1

    .line 166
    new-instance v0, Lcn/hutool/http/HttpRequest;

    invoke-direct {v0, p0}, Lcn/hutool/http/HttpRequest;-><init>(Lcn/hutool/core/net/url/UrlBuilder;)V

    return-object v0
.end method

.method public static of(Ljava/lang/String;)Lcn/hutool/http/HttpRequest;
    .locals 1

    .line 140
    invoke-static {}, Lcn/hutool/http/HttpGlobalConfig;->isDecodeUrl()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcn/hutool/http/HttpRequest;->DEFAULT_CHARSET:Ljava/nio/charset/Charset;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {p0, v0}, Lcn/hutool/http/HttpRequest;->of(Ljava/lang/String;Ljava/nio/charset/Charset;)Lcn/hutool/http/HttpRequest;

    move-result-object p0

    return-object p0
.end method

.method public static of(Ljava/lang/String;Ljava/nio/charset/Charset;)Lcn/hutool/http/HttpRequest;
    .locals 0

    .line 155
    invoke-static {p0, p1}, Lcn/hutool/core/net/url/UrlBuilder;->ofHttp(Ljava/lang/String;Ljava/nio/charset/Charset;)Lcn/hutool/core/net/url/UrlBuilder;

    move-result-object p0

    invoke-static {p0}, Lcn/hutool/http/HttpRequest;->of(Lcn/hutool/core/net/url/UrlBuilder;)Lcn/hutool/http/HttpRequest;

    move-result-object p0

    return-object p0
.end method

.method public static options(Ljava/lang/String;)Lcn/hutool/http/HttpRequest;
    .locals 1

    .line 85
    invoke-static {p0}, Lcn/hutool/http/HttpRequest;->of(Ljava/lang/String;)Lcn/hutool/http/HttpRequest;

    move-result-object p0

    sget-object v0, Lcn/hutool/http/Method;->OPTIONS:Lcn/hutool/http/Method;

    invoke-virtual {p0, v0}, Lcn/hutool/http/HttpRequest;->method(Lcn/hutool/http/Method;)Lcn/hutool/http/HttpRequest;

    move-result-object p0

    return-object p0
.end method

.method public static patch(Ljava/lang/String;)Lcn/hutool/http/HttpRequest;
    .locals 1

    .line 106
    invoke-static {p0}, Lcn/hutool/http/HttpRequest;->of(Ljava/lang/String;)Lcn/hutool/http/HttpRequest;

    move-result-object p0

    sget-object v0, Lcn/hutool/http/Method;->PATCH:Lcn/hutool/http/Method;

    invoke-virtual {p0, v0}, Lcn/hutool/http/HttpRequest;->method(Lcn/hutool/http/Method;)Lcn/hutool/http/HttpRequest;

    move-result-object p0

    return-object p0
.end method

.method public static post(Ljava/lang/String;)Lcn/hutool/http/HttpRequest;
    .locals 1

    .line 55
    invoke-static {p0}, Lcn/hutool/http/HttpRequest;->of(Ljava/lang/String;)Lcn/hutool/http/HttpRequest;

    move-result-object p0

    sget-object v0, Lcn/hutool/http/Method;->POST:Lcn/hutool/http/Method;

    invoke-virtual {p0, v0}, Lcn/hutool/http/HttpRequest;->method(Lcn/hutool/http/Method;)Lcn/hutool/http/HttpRequest;

    move-result-object p0

    return-object p0
.end method

.method public static put(Ljava/lang/String;)Lcn/hutool/http/HttpRequest;
    .locals 1

    .line 95
    invoke-static {p0}, Lcn/hutool/http/HttpRequest;->of(Ljava/lang/String;)Lcn/hutool/http/HttpRequest;

    move-result-object p0

    sget-object v0, Lcn/hutool/http/Method;->PUT:Lcn/hutool/http/Method;

    invoke-virtual {p0, v0}, Lcn/hutool/http/HttpRequest;->method(Lcn/hutool/http/Method;)Lcn/hutool/http/HttpRequest;

    move-result-object p0

    return-object p0
.end method

.method private putToForm(Ljava/lang/String;Ljava/lang/Object;)Lcn/hutool/http/HttpRequest;
    .locals 2

    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    goto :goto_0

    .line 1434
    :cond_0
    iget-object v0, p0, Lcn/hutool/http/HttpRequest;->form:Ljava/util/Map;

    if-nez v0, :cond_1

    .line 1435
    new-instance v0, Lcn/hutool/core/map/TableMap;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Lcn/hutool/core/map/TableMap;-><init>(I)V

    iput-object v0, p0, Lcn/hutool/http/HttpRequest;->form:Ljava/util/Map;

    .line 1437
    :cond_1
    iget-object v0, p0, Lcn/hutool/http/HttpRequest;->form:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    :goto_0
    return-object p0
.end method

.method private send()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/hutool/core/io/IORuntimeException;
        }
    .end annotation

    .line 1326
    :try_start_0
    sget-object v0, Lcn/hutool/http/Method;->POST:Lcn/hutool/http/Method;

    iget-object v1, p0, Lcn/hutool/http/HttpRequest;->method:Lcn/hutool/http/Method;

    invoke-virtual {v0, v1}, Lcn/hutool/http/Method;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcn/hutool/http/Method;->PUT:Lcn/hutool/http/Method;

    iget-object v1, p0, Lcn/hutool/http/HttpRequest;->method:Lcn/hutool/http/Method;

    .line 1327
    invoke-virtual {v0, v1}, Lcn/hutool/http/Method;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcn/hutool/http/Method;->DELETE:Lcn/hutool/http/Method;

    iget-object v1, p0, Lcn/hutool/http/HttpRequest;->method:Lcn/hutool/http/Method;

    .line 1328
    invoke-virtual {v0, v1}, Lcn/hutool/http/Method;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcn/hutool/http/HttpRequest;->isRest:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1336
    :cond_0
    iget-object v0, p0, Lcn/hutool/http/HttpRequest;->httpConnection:Lcn/hutool/http/HttpConnection;

    invoke-virtual {v0}, Lcn/hutool/http/HttpConnection;->connect()Lcn/hutool/http/HttpConnection;

    goto :goto_1

    .line 1330
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcn/hutool/http/HttpRequest;->isMultipart()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1331
    invoke-direct {p0}, Lcn/hutool/http/HttpRequest;->sendMultipart()V

    goto :goto_1

    .line 1333
    :cond_2
    invoke-direct {p0}, Lcn/hutool/http/HttpRequest;->sendFormUrlEncoded()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-void

    :catch_0
    move-exception v0

    .line 1340
    iget-object v1, p0, Lcn/hutool/http/HttpRequest;->httpConnection:Lcn/hutool/http/HttpConnection;

    invoke-virtual {v1}, Lcn/hutool/http/HttpConnection;->disconnectQuietly()Lcn/hutool/http/HttpConnection;

    .line 1341
    new-instance v1, Lcn/hutool/core/io/IORuntimeException;

    invoke-direct {v1, v0}, Lcn/hutool/core/io/IORuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private sendFormUrlEncoded()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1352
    sget-object v0, Lcn/hutool/http/Header;->CONTENT_TYPE:Lcn/hutool/http/Header;

    invoke-virtual {p0, v0}, Lcn/hutool/http/HttpRequest;->header(Lcn/hutool/http/Header;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/hutool/core/util/StrUtil;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1354
    iget-object v0, p0, Lcn/hutool/http/HttpRequest;->httpConnection:Lcn/hutool/http/HttpConnection;

    sget-object v1, Lcn/hutool/http/Header;->CONTENT_TYPE:Lcn/hutool/http/Header;

    sget-object v2, Lcn/hutool/http/ContentType;->FORM_URLENCODED:Lcn/hutool/http/ContentType;

    iget-object v3, p0, Lcn/hutool/http/HttpRequest;->charset:Ljava/nio/charset/Charset;

    invoke-virtual {v2, v3}, Lcn/hutool/http/ContentType;->toString(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcn/hutool/http/HttpConnection;->header(Lcn/hutool/http/Header;Ljava/lang/String;Z)Lcn/hutool/http/HttpConnection;

    .line 1358
    :cond_0
    invoke-direct {p0}, Lcn/hutool/http/HttpRequest;->createBody()Lcn/hutool/http/body/RequestBody;

    move-result-object v0

    iget-object v1, p0, Lcn/hutool/http/HttpRequest;->httpConnection:Lcn/hutool/http/HttpConnection;

    invoke-virtual {v1}, Lcn/hutool/http/HttpConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-interface {v0, v1}, Lcn/hutool/http/body/RequestBody;->writeClose(Ljava/io/OutputStream;)V

    return-void
.end method

.method private sendMultipart()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1382
    iget-object v0, p0, Lcn/hutool/http/HttpRequest;->form:Ljava/util/Map;

    iget-object v1, p0, Lcn/hutool/http/HttpRequest;->charset:Ljava/nio/charset/Charset;

    invoke-static {v0, v1}, Lcn/hutool/http/body/MultipartBody;->create(Ljava/util/Map;Ljava/nio/charset/Charset;)Lcn/hutool/http/body/MultipartBody;

    move-result-object v0

    .line 1384
    iget-object v1, p0, Lcn/hutool/http/HttpRequest;->httpConnection:Lcn/hutool/http/HttpConnection;

    sget-object v2, Lcn/hutool/http/Header;->CONTENT_TYPE:Lcn/hutool/http/Header;

    invoke-virtual {v0}, Lcn/hutool/http/body/MultipartBody;->getContentType()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Lcn/hutool/http/HttpConnection;->header(Lcn/hutool/http/Header;Ljava/lang/String;Z)Lcn/hutool/http/HttpConnection;

    .line 1385
    iget-object v1, p0, Lcn/hutool/http/HttpRequest;->httpConnection:Lcn/hutool/http/HttpConnection;

    invoke-virtual {v1}, Lcn/hutool/http/HttpConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/hutool/http/body/MultipartBody;->writeClose(Ljava/io/OutputStream;)V

    return-void
.end method

.method private sendRedirectIfPossible(Z)Lcn/hutool/http/HttpResponse;
    .locals 9

    .line 1277
    iget-object v0, p0, Lcn/hutool/http/HttpRequest;->config:Lcn/hutool/http/HttpConfig;

    iget v0, v0, Lcn/hutool/http/HttpConfig;->maxRedirectCount:I

    const/4 v1, 0x0

    if-lez v0, :cond_5

    .line 1280
    :try_start_0
    iget-object v0, p0, Lcn/hutool/http/HttpRequest;->httpConnection:Lcn/hutool/http/HttpConnection;

    invoke-virtual {v0}, Lcn/hutool/http/HttpConnection;->responseCode()I

    move-result v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1288
    iget-object v2, p0, Lcn/hutool/http/HttpRequest;->config:Lcn/hutool/http/HttpConfig;

    iget-boolean v2, v2, Lcn/hutool/http/HttpConfig;->followRedirectsCookie:Z

    if-eqz v2, :cond_0

    .line 1289
    iget-object v2, p0, Lcn/hutool/http/HttpRequest;->httpConnection:Lcn/hutool/http/HttpConnection;

    invoke-static {v2}, Lcn/hutool/http/cookie/GlobalCookieManager;->store(Lcn/hutool/http/HttpConnection;)V

    :cond_0
    const/16 v2, 0xc8

    if-eq v0, v2, :cond_5

    .line 1292
    invoke-static {v0}, Lcn/hutool/http/HttpStatus;->isRedirected(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1294
    iget-object v0, p0, Lcn/hutool/http/HttpRequest;->httpConnection:Lcn/hutool/http/HttpConnection;

    sget-object v2, Lcn/hutool/http/Header;->LOCATION:Lcn/hutool/http/Header;

    invoke-virtual {v0, v2}, Lcn/hutool/http/HttpConnection;->header(Lcn/hutool/http/Header;)Ljava/lang/String;

    move-result-object v0

    .line 1295
    invoke-static {v0}, Lcn/hutool/http/HttpUtil;->isHttp(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {v0}, Lcn/hutool/http/HttpUtil;->isHttps(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "/"

    .line 1298
    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1299
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcn/hutool/http/HttpRequest;->url:Lcn/hutool/core/net/url/UrlBuilder;

    invoke-virtual {v4}, Lcn/hutool/core/net/url/UrlBuilder;->getPathStr()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v2}, Lcn/hutool/core/util/StrUtil;->addSuffixIfNot(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    move-object v5, v0

    .line 1301
    iget-object v0, p0, Lcn/hutool/http/HttpRequest;->url:Lcn/hutool/core/net/url/UrlBuilder;

    invoke-virtual {v0}, Lcn/hutool/core/net/url/UrlBuilder;->getScheme()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcn/hutool/http/HttpRequest;->url:Lcn/hutool/core/net/url/UrlBuilder;

    invoke-virtual {v0}, Lcn/hutool/core/net/url/UrlBuilder;->getHost()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcn/hutool/http/HttpRequest;->url:Lcn/hutool/core/net/url/UrlBuilder;

    invoke-virtual {v0}, Lcn/hutool/core/net/url/UrlBuilder;->getPort()I

    move-result v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    iget-object v8, p0, Lcn/hutool/http/HttpRequest;->charset:Ljava/nio/charset/Charset;

    invoke-static/range {v2 .. v8}, Lcn/hutool/core/net/url/UrlBuilder;->of(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/nio/charset/Charset;)Lcn/hutool/core/net/url/UrlBuilder;

    move-result-object v0

    goto :goto_0

    .line 1304
    :cond_2
    invoke-static {v0}, Lcn/hutool/core/net/url/UrlBuilder;->ofHttpWithoutEncode(Ljava/lang/String;)Lcn/hutool/core/net/url/UrlBuilder;

    move-result-object v0

    .line 1306
    :goto_0
    invoke-virtual {p0, v0}, Lcn/hutool/http/HttpRequest;->setUrl(Lcn/hutool/core/net/url/UrlBuilder;)Lcn/hutool/http/HttpRequest;

    .line 1307
    iget v0, p0, Lcn/hutool/http/HttpRequest;->redirectCount:I

    iget-object v2, p0, Lcn/hutool/http/HttpRequest;->config:Lcn/hutool/http/HttpConfig;

    iget v2, v2, Lcn/hutool/http/HttpConfig;->maxRedirectCount:I

    if-ge v0, v2, :cond_5

    .line 1308
    iget v0, p0, Lcn/hutool/http/HttpRequest;->redirectCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcn/hutool/http/HttpRequest;->redirectCount:I

    .line 1310
    iget-object v0, p0, Lcn/hutool/http/HttpRequest;->config:Lcn/hutool/http/HttpConfig;

    iget-boolean v0, v0, Lcn/hutool/http/HttpConfig;->interceptorOnRedirect:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcn/hutool/http/HttpRequest;->config:Lcn/hutool/http/HttpConfig;

    iget-object v0, v0, Lcn/hutool/http/HttpConfig;->requestInterceptors:Lcn/hutool/http/HttpInterceptor$Chain;

    goto :goto_1

    :cond_3
    move-object v0, v1

    :goto_1
    iget-object v2, p0, Lcn/hutool/http/HttpRequest;->config:Lcn/hutool/http/HttpConfig;

    iget-boolean v2, v2, Lcn/hutool/http/HttpConfig;->interceptorOnRedirect:Z

    if-eqz v2, :cond_4

    iget-object v1, p0, Lcn/hutool/http/HttpRequest;->config:Lcn/hutool/http/HttpConfig;

    iget-object v1, v1, Lcn/hutool/http/HttpConfig;->responseInterceptors:Lcn/hutool/http/HttpInterceptor$Chain;

    :cond_4
    invoke-direct {p0, p1, v0, v1}, Lcn/hutool/http/HttpRequest;->doExecute(ZLcn/hutool/http/HttpInterceptor$Chain;Lcn/hutool/http/HttpInterceptor$Chain;)Lcn/hutool/http/HttpResponse;

    move-result-object p1

    return-object p1

    :catch_0
    move-exception p1

    .line 1283
    iget-object v0, p0, Lcn/hutool/http/HttpRequest;->httpConnection:Lcn/hutool/http/HttpConnection;

    invoke-virtual {v0}, Lcn/hutool/http/HttpConnection;->disconnectQuietly()Lcn/hutool/http/HttpConnection;

    .line 1284
    new-instance v0, Lcn/hutool/http/HttpException;

    invoke-direct {v0, p1}, Lcn/hutool/http/HttpException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :cond_5
    return-object v1
.end method

.method public static setCookieManager(Ljava/net/CookieManager;)V
    .locals 0

    .line 199
    invoke-static {p0}, Lcn/hutool/http/cookie/GlobalCookieManager;->setCookieManager(Ljava/net/CookieManager;)V

    return-void
.end method

.method public static setGlobalTimeout(I)V
    .locals 0

    .line 177
    invoke-static {p0}, Lcn/hutool/http/HttpGlobalConfig;->setTimeout(I)V

    return-void
.end method

.method public static trace(Ljava/lang/String;)Lcn/hutool/http/HttpRequest;
    .locals 1

    .line 126
    invoke-static {p0}, Lcn/hutool/http/HttpRequest;->of(Ljava/lang/String;)Lcn/hutool/http/HttpRequest;

    move-result-object p0

    sget-object v0, Lcn/hutool/http/Method;->TRACE:Lcn/hutool/http/Method;

    invoke-virtual {p0, v0}, Lcn/hutool/http/HttpRequest;->method(Lcn/hutool/http/Method;)Lcn/hutool/http/HttpRequest;

    move-result-object p0

    return-object p0
.end method

.method private urlWithParamIfGet()V
    .locals 3

    .line 1253
    sget-object v0, Lcn/hutool/http/Method;->GET:Lcn/hutool/http/Method;

    iget-object v1, p0, Lcn/hutool/http/HttpRequest;->method:Lcn/hutool/http/Method;

    invoke-virtual {v0, v1}, Lcn/hutool/http/Method;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcn/hutool/http/HttpRequest;->isRest:Z

    if-nez v0, :cond_2

    iget v0, p0, Lcn/hutool/http/HttpRequest;->redirectCount:I

    if-gtz v0, :cond_2

    .line 1254
    iget-object v0, p0, Lcn/hutool/http/HttpRequest;->url:Lcn/hutool/core/net/url/UrlBuilder;

    invoke-virtual {v0}, Lcn/hutool/core/net/url/UrlBuilder;->getQuery()Lcn/hutool/core/net/url/UrlQuery;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1256
    new-instance v0, Lcn/hutool/core/net/url/UrlQuery;

    invoke-direct {v0}, Lcn/hutool/core/net/url/UrlQuery;-><init>()V

    .line 1257
    iget-object v1, p0, Lcn/hutool/http/HttpRequest;->url:Lcn/hutool/core/net/url/UrlBuilder;

    invoke-virtual {v1, v0}, Lcn/hutool/core/net/url/UrlBuilder;->setQuery(Lcn/hutool/core/net/url/UrlQuery;)Lcn/hutool/core/net/url/UrlBuilder;

    .line 1261
    :cond_0
    iget-object v1, p0, Lcn/hutool/http/HttpRequest;->body:Lcn/hutool/core/io/resource/Resource;

    if-eqz v1, :cond_1

    .line 1262
    iget-object v1, p0, Lcn/hutool/http/HttpRequest;->body:Lcn/hutool/core/io/resource/Resource;

    invoke-interface {v1}, Lcn/hutool/core/io/resource/Resource;->readBytes()[B

    move-result-object v1

    iget-object v2, p0, Lcn/hutool/http/HttpRequest;->charset:Ljava/nio/charset/Charset;

    invoke-static {v1, v2}, Lcn/hutool/core/util/StrUtil;->str([BLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcn/hutool/http/HttpRequest;->charset:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1, v2}, Lcn/hutool/core/net/url/UrlQuery;->parse(Ljava/lang/String;Ljava/nio/charset/Charset;)Lcn/hutool/core/net/url/UrlQuery;

    goto :goto_0

    .line 1264
    :cond_1
    iget-object v1, p0, Lcn/hutool/http/HttpRequest;->form:Ljava/util/Map;

    invoke-virtual {v0, v1}, Lcn/hutool/core/net/url/UrlQuery;->addAll(Ljava/util/Map;)Lcn/hutool/core/net/url/UrlQuery;

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public addInterceptor(Lcn/hutool/http/HttpInterceptor;)Lcn/hutool/http/HttpRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/hutool/http/HttpInterceptor<",
            "Lcn/hutool/http/HttpRequest;",
            ">;)",
            "Lcn/hutool/http/HttpRequest;"
        }
    .end annotation

    .line 995
    invoke-virtual {p0, p1}, Lcn/hutool/http/HttpRequest;->addRequestInterceptor(Lcn/hutool/http/HttpInterceptor;)Lcn/hutool/http/HttpRequest;

    move-result-object p1

    return-object p1
.end method

.method public addRequestInterceptor(Lcn/hutool/http/HttpInterceptor;)Lcn/hutool/http/HttpRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/hutool/http/HttpInterceptor<",
            "Lcn/hutool/http/HttpRequest;",
            ">;)",
            "Lcn/hutool/http/HttpRequest;"
        }
    .end annotation

    .line 1006
    iget-object v0, p0, Lcn/hutool/http/HttpRequest;->config:Lcn/hutool/http/HttpConfig;

    invoke-virtual {v0, p1}, Lcn/hutool/http/HttpConfig;->addRequestInterceptor(Lcn/hutool/http/HttpInterceptor;)Lcn/hutool/http/HttpConfig;

    return-object p0
.end method

.method public addResponseInterceptor(Lcn/hutool/http/HttpInterceptor;)Lcn/hutool/http/HttpRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/hutool/http/HttpInterceptor<",
            "Lcn/hutool/http/HttpResponse;",
            ">;)",
            "Lcn/hutool/http/HttpRequest;"
        }
    .end annotation

    .line 1018
    iget-object v0, p0, Lcn/hutool/http/HttpRequest;->config:Lcn/hutool/http/HttpConfig;

    invoke-virtual {v0, p1}, Lcn/hutool/http/HttpConfig;->addResponseInterceptor(Lcn/hutool/http/HttpInterceptor;)Lcn/hutool/http/HttpConfig;

    return-object p0
.end method

.method public auth(Ljava/lang/String;)Lcn/hutool/http/HttpRequest;
    .locals 2

    .line 1131
    sget-object v0, Lcn/hutool/http/Header;->AUTHORIZATION:Lcn/hutool/http/Header;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, p1, v1}, Lcn/hutool/http/HttpRequest;->header(Lcn/hutool/http/Header;Ljava/lang/String;Z)Ljava/lang/Object;

    return-object p0
.end method

.method public basicAuth(Ljava/lang/String;Ljava/lang/String;)Lcn/hutool/http/HttpRequest;
    .locals 1

    .line 1094
    iget-object v0, p0, Lcn/hutool/http/HttpRequest;->charset:Ljava/nio/charset/Charset;

    invoke-static {p1, p2, v0}, Lcn/hutool/http/HttpUtil;->buildBasicAuth(Ljava/lang/String;Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcn/hutool/http/HttpRequest;->auth(Ljava/lang/String;)Lcn/hutool/http/HttpRequest;

    move-result-object p1

    return-object p1
.end method

.method public basicProxyAuth(Ljava/lang/String;Ljava/lang/String;)Lcn/hutool/http/HttpRequest;
    .locals 1

    .line 1109
    iget-object v0, p0, Lcn/hutool/http/HttpRequest;->charset:Ljava/nio/charset/Charset;

    invoke-static {p1, p2, v0}, Lcn/hutool/http/HttpUtil;->buildBasicAuth(Ljava/lang/String;Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcn/hutool/http/HttpRequest;->proxyAuth(Ljava/lang/String;)Lcn/hutool/http/HttpRequest;

    move-result-object p1

    return-object p1
.end method

.method public bearerAuth(Ljava/lang/String;)Lcn/hutool/http/HttpRequest;
    .locals 2

    .line 1120
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Bearer "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcn/hutool/http/HttpRequest;->auth(Ljava/lang/String;)Lcn/hutool/http/HttpRequest;

    move-result-object p1

    return-object p1
.end method

.method public body(Lcn/hutool/core/io/resource/Resource;)Lcn/hutool/http/HttpRequest;
    .locals 0

    if-eqz p1, :cond_0

    .line 768
    iput-object p1, p0, Lcn/hutool/http/HttpRequest;->body:Lcn/hutool/core/io/resource/Resource;

    :cond_0
    return-object p0
.end method

.method public body(Ljava/lang/String;)Lcn/hutool/http/HttpRequest;
    .locals 1

    const/4 v0, 0x0

    .line 701
    invoke-virtual {p0, p1, v0}, Lcn/hutool/http/HttpRequest;->body(Ljava/lang/String;Ljava/lang/String;)Lcn/hutool/http/HttpRequest;

    move-result-object p1

    return-object p1
.end method

.method public body(Ljava/lang/String;Ljava/lang/String;)Lcn/hutool/http/HttpRequest;
    .locals 3

    .line 718
    iget-object v0, p0, Lcn/hutool/http/HttpRequest;->charset:Ljava/nio/charset/Charset;

    invoke-static {p1, v0}, Lcn/hutool/core/util/StrUtil;->bytes(Ljava/lang/CharSequence;Ljava/nio/charset/Charset;)[B

    move-result-object v0

    .line 719
    invoke-virtual {p0, v0}, Lcn/hutool/http/HttpRequest;->body([B)Lcn/hutool/http/HttpRequest;

    const/4 v1, 0x0

    .line 720
    iput-object v1, p0, Lcn/hutool/http/HttpRequest;->form:Ljava/util/Map;

    if-eqz p2, :cond_0

    .line 724
    invoke-virtual {p0, p2}, Lcn/hutool/http/HttpRequest;->contentType(Ljava/lang/String;)Lcn/hutool/http/HttpRequest;

    goto :goto_0

    .line 727
    :cond_0
    invoke-static {p1}, Lcn/hutool/http/HttpUtil;->getContentTypeByRequestBody(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 728
    sget-object p1, Lcn/hutool/http/Header;->CONTENT_TYPE:Lcn/hutool/http/Header;

    invoke-virtual {p0, p1}, Lcn/hutool/http/HttpRequest;->header(Lcn/hutool/http/Header;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/hutool/http/ContentType;->isDefault(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 729
    iget-object p1, p0, Lcn/hutool/http/HttpRequest;->charset:Ljava/nio/charset/Charset;

    if-eqz p1, :cond_1

    .line 731
    iget-object p1, p0, Lcn/hutool/http/HttpRequest;->charset:Ljava/nio/charset/Charset;

    invoke-static {p2, p1}, Lcn/hutool/http/ContentType;->build(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p1

    move-object p2, p1

    .line 733
    :cond_1
    invoke-virtual {p0, p2}, Lcn/hutool/http/HttpRequest;->contentType(Ljava/lang/String;)Lcn/hutool/http/HttpRequest;

    :cond_2
    :goto_0
    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/CharSequence;

    const/4 v1, 0x0

    const-string v2, "json"

    aput-object v2, p1, v1

    const-string v1, "xml"

    const/4 v2, 0x1

    aput-object v1, p1, v2

    .line 738
    invoke-static {p2, p1}, Lcn/hutool/core/util/StrUtil;->containsAnyIgnoreCase(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 739
    iput-boolean v2, p0, Lcn/hutool/http/HttpRequest;->isRest:Z

    .line 740
    array-length p1, v0

    invoke-virtual {p0, p1}, Lcn/hutool/http/HttpRequest;->contentLength(I)Lcn/hutool/http/HttpRequest;

    :cond_3
    return-object p0
.end method

.method public body([B)Lcn/hutool/http/HttpRequest;
    .locals 1

    .line 753
    invoke-static {p1}, Lcn/hutool/core/util/ArrayUtil;->isNotEmpty([B)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 754
    new-instance v0, Lcn/hutool/core/io/resource/BytesResource;

    invoke-direct {v0, p1}, Lcn/hutool/core/io/resource/BytesResource;-><init>([B)V

    invoke-virtual {p0, v0}, Lcn/hutool/http/HttpRequest;->body(Lcn/hutool/core/io/resource/Resource;)Lcn/hutool/http/HttpRequest;

    move-result-object p1

    return-object p1

    :cond_0
    return-object p0
.end method

.method public contentLength(I)Lcn/hutool/http/HttpRequest;
    .locals 1

    .line 417
    sget-object v0, Lcn/hutool/http/Header;->CONTENT_LENGTH:Lcn/hutool/http/Header;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcn/hutool/http/HttpRequest;->header(Lcn/hutool/http/Header;Ljava/lang/String;)Ljava/lang/Object;

    return-object p0
.end method

.method public contentLength()Ljava/lang/String;
    .locals 1

    .line 407
    sget-object v0, Lcn/hutool/http/Header;->CONTENT_LENGTH:Lcn/hutool/http/Header;

    invoke-virtual {p0, v0}, Lcn/hutool/http/HttpRequest;->header(Lcn/hutool/http/Header;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public contentType(Ljava/lang/String;)Lcn/hutool/http/HttpRequest;
    .locals 1

    .line 374
    sget-object v0, Lcn/hutool/http/Header;->CONTENT_TYPE:Lcn/hutool/http/Header;

    invoke-virtual {p0, v0, p1}, Lcn/hutool/http/HttpRequest;->header(Lcn/hutool/http/Header;Ljava/lang/String;)Ljava/lang/Object;

    return-object p0
.end method

.method public cookie(Ljava/lang/String;)Lcn/hutool/http/HttpRequest;
    .locals 0

    .line 459
    iput-object p1, p0, Lcn/hutool/http/HttpRequest;->cookie:Ljava/lang/String;

    return-object p0
.end method

.method public cookie(Ljava/util/Collection;)Lcn/hutool/http/HttpRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/net/HttpCookie;",
            ">;)",
            "Lcn/hutool/http/HttpRequest;"
        }
    .end annotation

    .line 430
    invoke-static {p1}, Lcn/hutool/core/collection/CollUtil;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/net/HttpCookie;

    invoke-interface {p1, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/net/HttpCookie;

    :goto_0
    invoke-virtual {p0, p1}, Lcn/hutool/http/HttpRequest;->cookie([Ljava/net/HttpCookie;)Lcn/hutool/http/HttpRequest;

    move-result-object p1

    return-object p1
.end method

.method public varargs cookie([Ljava/net/HttpCookie;)Lcn/hutool/http/HttpRequest;
    .locals 1

    .line 442
    invoke-static {p1}, Lcn/hutool/core/util/ArrayUtil;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 443
    invoke-virtual {p0}, Lcn/hutool/http/HttpRequest;->disableCookie()Lcn/hutool/http/HttpRequest;

    move-result-object p1

    return-object p1

    :cond_0
    const-string v0, "; "

    .line 447
    invoke-static {p1, v0}, Lcn/hutool/core/util/ArrayUtil;->join([Ljava/lang/Object;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcn/hutool/http/HttpRequest;->cookie(Ljava/lang/String;)Lcn/hutool/http/HttpRequest;

    move-result-object p1

    return-object p1
.end method

.method public disableCache()Lcn/hutool/http/HttpRequest;
    .locals 1

    .line 835
    iget-object v0, p0, Lcn/hutool/http/HttpRequest;->config:Lcn/hutool/http/HttpConfig;

    invoke-virtual {v0}, Lcn/hutool/http/HttpConfig;->disableCache()Lcn/hutool/http/HttpConfig;

    return-object p0
.end method

.method public disableCookie()Lcn/hutool/http/HttpRequest;
    .locals 1

    const-string v0, ""

    .line 472
    invoke-virtual {p0, v0}, Lcn/hutool/http/HttpRequest;->cookie(Ljava/lang/String;)Lcn/hutool/http/HttpRequest;

    move-result-object v0

    return-object v0
.end method

.method public enableDefaultCookie()Lcn/hutool/http/HttpRequest;
    .locals 2

    const/4 v0, 0x0

    .line 481
    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcn/hutool/http/HttpRequest;->cookie(Ljava/lang/String;)Lcn/hutool/http/HttpRequest;

    move-result-object v0

    return-object v0
.end method

.method public execute()Lcn/hutool/http/HttpResponse;
    .locals 1

    const/4 v0, 0x0

    .line 1028
    invoke-virtual {p0, v0}, Lcn/hutool/http/HttpRequest;->execute(Z)Lcn/hutool/http/HttpResponse;

    move-result-object v0

    return-object v0
.end method

.method public execute(Z)Lcn/hutool/http/HttpResponse;
    .locals 2

    .line 1052
    iget-object v0, p0, Lcn/hutool/http/HttpRequest;->config:Lcn/hutool/http/HttpConfig;

    iget-object v0, v0, Lcn/hutool/http/HttpConfig;->requestInterceptors:Lcn/hutool/http/HttpInterceptor$Chain;

    iget-object v1, p0, Lcn/hutool/http/HttpRequest;->config:Lcn/hutool/http/HttpConfig;

    iget-object v1, v1, Lcn/hutool/http/HttpConfig;->responseInterceptors:Lcn/hutool/http/HttpInterceptor$Chain;

    invoke-direct {p0, p1, v0, v1}, Lcn/hutool/http/HttpRequest;->doExecute(ZLcn/hutool/http/HttpInterceptor$Chain;Lcn/hutool/http/HttpInterceptor$Chain;)Lcn/hutool/http/HttpResponse;

    move-result-object p1

    return-object p1
.end method

.method public executeAsync()Lcn/hutool/http/HttpResponse;
    .locals 1

    const/4 v0, 0x1

    .line 1042
    invoke-virtual {p0, v0}, Lcn/hutool/http/HttpRequest;->execute(Z)Lcn/hutool/http/HttpResponse;

    move-result-object v0

    return-object v0
.end method

.method public fileForm()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcn/hutool/core/io/resource/Resource;",
            ">;"
        }
    .end annotation

    .line 676
    invoke-static {}, Lcn/hutool/core/map/MapUtil;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    .line 677
    iget-object v1, p0, Lcn/hutool/http/HttpRequest;->form:Ljava/util/Map;

    new-instance v2, Lcn/hutool/http/HttpRequest$$ExternalSyntheticLambda1;

    invoke-direct {v2, v0}, Lcn/hutool/http/HttpRequest$$ExternalSyntheticLambda1;-><init>(Ljava/util/Map;)V

    invoke-interface {v1, v2}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    return-object v0
.end method

.method public form(Ljava/lang/String;Lcn/hutool/core/io/resource/Resource;)Lcn/hutool/http/HttpRequest;
    .locals 2

    if-eqz p2, :cond_1

    .line 650
    invoke-virtual {p0}, Lcn/hutool/http/HttpRequest;->isKeepAlive()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 651
    invoke-virtual {p0, v1}, Lcn/hutool/http/HttpRequest;->keepAlive(Z)Lcn/hutool/http/HttpRequest;

    .line 654
    :cond_0
    iput-boolean v1, p0, Lcn/hutool/http/HttpRequest;->isMultiPart:Z

    .line 655
    invoke-direct {p0, p1, p2}, Lcn/hutool/http/HttpRequest;->putToForm(Ljava/lang/String;Ljava/lang/Object;)Lcn/hutool/http/HttpRequest;

    move-result-object p1

    return-object p1

    :cond_1
    return-object p0
.end method

.method public form(Ljava/lang/String;Ljava/io/File;)Lcn/hutool/http/HttpRequest;
    .locals 1

    .line 603
    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcn/hutool/http/HttpRequest;->form(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;)Lcn/hutool/http/HttpRequest;

    move-result-object p1

    return-object p1
.end method

.method public form(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;)Lcn/hutool/http/HttpRequest;
    .locals 1

    if-eqz p2, :cond_0

    .line 617
    new-instance v0, Lcn/hutool/core/io/resource/FileResource;

    invoke-direct {v0, p2, p3}, Lcn/hutool/core/io/resource/FileResource;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {p0, p1, v0}, Lcn/hutool/http/HttpRequest;->form(Ljava/lang/String;Lcn/hutool/core/io/resource/Resource;)Lcn/hutool/http/HttpRequest;

    :cond_0
    return-object p0
.end method

.method public form(Ljava/lang/String;Ljava/lang/Object;)Lcn/hutool/http/HttpRequest;
    .locals 3

    .line 495
    invoke-static {p1}, Lcn/hutool/core/util/StrUtil;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    invoke-static {p2}, Lcn/hutool/core/util/ObjectUtil;->isNull(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    .line 500
    iput-object v0, p0, Lcn/hutool/http/HttpRequest;->body:Lcn/hutool/core/io/resource/Resource;

    .line 502
    instance-of v1, p2, Ljava/io/File;

    if-eqz v1, :cond_1

    .line 504
    check-cast p2, Ljava/io/File;

    invoke-virtual {p0, p1, p2}, Lcn/hutool/http/HttpRequest;->form(Ljava/lang/String;Ljava/io/File;)Lcn/hutool/http/HttpRequest;

    move-result-object p1

    return-object p1

    .line 507
    :cond_1
    instance-of v1, p2, Lcn/hutool/core/io/resource/Resource;

    if-eqz v1, :cond_2

    .line 508
    check-cast p2, Lcn/hutool/core/io/resource/Resource;

    invoke-virtual {p0, p1, p2}, Lcn/hutool/http/HttpRequest;->form(Ljava/lang/String;Lcn/hutool/core/io/resource/Resource;)Lcn/hutool/http/HttpRequest;

    move-result-object p1

    return-object p1

    .line 513
    :cond_2
    instance-of v1, p2, Ljava/lang/Iterable;

    const-string v2, ","

    if-eqz v1, :cond_3

    .line 515
    check-cast p2, Ljava/lang/Iterable;

    invoke-static {p2, v2}, Lcn/hutool/core/collection/CollUtil;->join(Ljava/lang/Iterable;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 516
    :cond_3
    invoke-static {p2}, Lcn/hutool/core/util/ArrayUtil;->isArray(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 517
    const-class v0, Ljava/io/File;

    invoke-static {p2}, Lcn/hutool/core/util/ArrayUtil;->getComponentType(Ljava/lang/Object;)Ljava/lang/Class;

    move-result-object v1

    if-ne v0, v1, :cond_4

    .line 519
    check-cast p2, [Ljava/io/File;

    check-cast p2, [Ljava/io/File;

    invoke-virtual {p0, p1, p2}, Lcn/hutool/http/HttpRequest;->form(Ljava/lang/String;[Ljava/io/File;)Lcn/hutool/http/HttpRequest;

    move-result-object p1

    return-object p1

    .line 522
    :cond_4
    check-cast p2, [Ljava/lang/Object;

    check-cast p2, [Ljava/lang/Object;

    invoke-static {p2, v2}, Lcn/hutool/core/util/ArrayUtil;->join([Ljava/lang/Object;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 525
    :cond_5
    invoke-static {p2, v0}, Lcn/hutool/core/convert/Convert;->toStr(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 528
    :goto_0
    invoke-direct {p0, p1, p2}, Lcn/hutool/http/HttpRequest;->putToForm(Ljava/lang/String;Ljava/lang/Object;)Lcn/hutool/http/HttpRequest;

    move-result-object p1

    return-object p1

    :cond_6
    :goto_1
    return-object p0
.end method

.method public varargs form(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Lcn/hutool/http/HttpRequest;
    .locals 1

    .line 540
    invoke-virtual {p0, p1, p2}, Lcn/hutool/http/HttpRequest;->form(Ljava/lang/String;Ljava/lang/Object;)Lcn/hutool/http/HttpRequest;

    const/4 p1, 0x0

    .line 542
    :goto_0
    array-length p2, p3

    if-ge p1, p2, :cond_0

    .line 543
    aget-object p2, p3, p1

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    add-int/lit8 v0, p1, 0x1

    aget-object v0, p3, v0

    invoke-virtual {p0, p2, v0}, Lcn/hutool/http/HttpRequest;->form(Ljava/lang/String;Ljava/lang/Object;)Lcn/hutool/http/HttpRequest;

    add-int/lit8 p1, p1, 0x2

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public form(Ljava/lang/String;[BLjava/lang/String;)Lcn/hutool/http/HttpRequest;
    .locals 1

    if-eqz p2, :cond_0

    .line 634
    new-instance v0, Lcn/hutool/core/io/resource/BytesResource;

    invoke-direct {v0, p2, p3}, Lcn/hutool/core/io/resource/BytesResource;-><init>([BLjava/lang/String;)V

    invoke-virtual {p0, p1, v0}, Lcn/hutool/http/HttpRequest;->form(Ljava/lang/String;Lcn/hutool/core/io/resource/Resource;)Lcn/hutool/http/HttpRequest;

    :cond_0
    return-object p0
.end method

.method public varargs form(Ljava/lang/String;[Ljava/io/File;)Lcn/hutool/http/HttpRequest;
    .locals 2

    .line 584
    invoke-static {p2}, Lcn/hutool/core/util/ArrayUtil;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    const/4 v0, 0x1

    .line 587
    array-length v1, p2

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    .line 588
    aget-object p2, p2, v0

    .line 589
    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcn/hutool/http/HttpRequest;->form(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;)Lcn/hutool/http/HttpRequest;

    move-result-object p1

    return-object p1

    .line 591
    :cond_1
    new-instance v0, Lcn/hutool/core/io/resource/MultiFileResource;

    invoke-direct {v0, p2}, Lcn/hutool/core/io/resource/MultiFileResource;-><init>([Ljava/io/File;)V

    invoke-virtual {p0, p1, v0}, Lcn/hutool/http/HttpRequest;->form(Ljava/lang/String;Lcn/hutool/core/io/resource/Resource;)Lcn/hutool/http/HttpRequest;

    move-result-object p1

    return-object p1
.end method

.method public form(Ljava/util/Map;)Lcn/hutool/http/HttpRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcn/hutool/http/HttpRequest;"
        }
    .end annotation

    .line 555
    invoke-static {p1}, Lcn/hutool/core/map/MapUtil;->isNotEmpty(Ljava/util/Map;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 556
    new-instance v0, Lcn/hutool/http/HttpRequest$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcn/hutool/http/HttpRequest$$ExternalSyntheticLambda2;-><init>(Lcn/hutool/http/HttpRequest;)V

    invoke-interface {p1, v0}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    :cond_0
    return-object p0
.end method

.method public form()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 666
    iget-object v0, p0, Lcn/hutool/http/HttpRequest;->form:Ljava/util/Map;

    return-object v0
.end method

.method public formStr(Ljava/util/Map;)Lcn/hutool/http/HttpRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcn/hutool/http/HttpRequest;"
        }
    .end annotation

    .line 569
    invoke-static {p1}, Lcn/hutool/core/map/MapUtil;->isNotEmpty(Ljava/util/Map;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 570
    new-instance v0, Lcn/hutool/http/HttpRequest$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcn/hutool/http/HttpRequest$$ExternalSyntheticLambda0;-><init>(Lcn/hutool/http/HttpRequest;)V

    invoke-interface {p1, v0}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    :cond_0
    return-object p0
.end method

.method public getConnection()Lcn/hutool/http/HttpConnection;
    .locals 1

    .line 351
    iget-object v0, p0, Lcn/hutool/http/HttpRequest;->httpConnection:Lcn/hutool/http/HttpConnection;

    return-object v0
.end method

.method public getMethod()Lcn/hutool/http/Method;
    .locals 1

    .line 328
    iget-object v0, p0, Lcn/hutool/http/HttpRequest;->method:Lcn/hutool/http/Method;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 277
    iget-object v0, p0, Lcn/hutool/http/HttpRequest;->url:Lcn/hutool/core/net/url/UrlBuilder;

    invoke-virtual {v0}, Lcn/hutool/core/net/url/UrlBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isKeepAlive()Z
    .locals 2

    .line 393
    sget-object v0, Lcn/hutool/http/Header;->CONNECTION:Lcn/hutool/http/Header;

    invoke-virtual {p0, v0}, Lcn/hutool/http/HttpRequest;->header(Lcn/hutool/http/Header;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "HTTP/1.0"

    .line 395
    iget-object v1, p0, Lcn/hutool/http/HttpRequest;->httpVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0

    :cond_0
    const-string v1, "close"

    .line 398
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public keepAlive(Z)Lcn/hutool/http/HttpRequest;
    .locals 1

    .line 385
    sget-object v0, Lcn/hutool/http/Header;->CONNECTION:Lcn/hutool/http/Header;

    if-eqz p1, :cond_0

    const-string p1, "Keep-Alive"

    goto :goto_0

    :cond_0
    const-string p1, "Close"

    :goto_0
    invoke-virtual {p0, v0, p1}, Lcn/hutool/http/HttpRequest;->header(Lcn/hutool/http/Header;Ljava/lang/String;)Ljava/lang/Object;

    return-object p0
.end method

.method public method(Lcn/hutool/http/Method;)Lcn/hutool/http/HttpRequest;
    .locals 0

    .line 361
    iput-object p1, p0, Lcn/hutool/http/HttpRequest;->method:Lcn/hutool/http/Method;

    return-object p0
.end method

.method public proxyAuth(Ljava/lang/String;)Lcn/hutool/http/HttpRequest;
    .locals 2

    .line 1143
    sget-object v0, Lcn/hutool/http/Header;->PROXY_AUTHORIZATION:Lcn/hutool/http/Header;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, p1, v1}, Lcn/hutool/http/HttpRequest;->header(Lcn/hutool/http/Header;Ljava/lang/String;Z)Ljava/lang/Object;

    return-object p0
.end method

.method public setChunkedStreamingMode(I)Lcn/hutool/http/HttpRequest;
    .locals 1

    .line 982
    iget-object v0, p0, Lcn/hutool/http/HttpRequest;->config:Lcn/hutool/http/HttpConfig;

    invoke-virtual {v0, p1}, Lcn/hutool/http/HttpConfig;->setBlockSize(I)Lcn/hutool/http/HttpConfig;

    return-object p0
.end method

.method public setConfig(Lcn/hutool/http/HttpConfig;)Lcn/hutool/http/HttpRequest;
    .locals 0

    .line 782
    iput-object p1, p0, Lcn/hutool/http/HttpRequest;->config:Lcn/hutool/http/HttpConfig;

    return-object p0
.end method

.method public setConnectionTimeout(I)Lcn/hutool/http/HttpRequest;
    .locals 1

    .line 813
    iget-object v0, p0, Lcn/hutool/http/HttpRequest;->config:Lcn/hutool/http/HttpConfig;

    invoke-virtual {v0, p1}, Lcn/hutool/http/HttpConfig;->setConnectionTimeout(I)Lcn/hutool/http/HttpConfig;

    return-object p0
.end method

.method public setFollowRedirects(Z)Lcn/hutool/http/HttpRequest;
    .locals 0

    if-eqz p1, :cond_0

    .line 854
    iget-object p1, p0, Lcn/hutool/http/HttpRequest;->config:Lcn/hutool/http/HttpConfig;

    iget p1, p1, Lcn/hutool/http/HttpConfig;->maxRedirectCount:I

    if-gtz p1, :cond_1

    const/4 p1, 0x2

    .line 856
    invoke-virtual {p0, p1}, Lcn/hutool/http/HttpRequest;->setMaxRedirectCount(I)Lcn/hutool/http/HttpRequest;

    move-result-object p1

    return-object p1

    .line 860
    :cond_0
    iget-object p1, p0, Lcn/hutool/http/HttpRequest;->config:Lcn/hutool/http/HttpConfig;

    iget p1, p1, Lcn/hutool/http/HttpConfig;->maxRedirectCount:I

    if-gez p1, :cond_1

    const/4 p1, 0x0

    .line 861
    invoke-virtual {p0, p1}, Lcn/hutool/http/HttpRequest;->setMaxRedirectCount(I)Lcn/hutool/http/HttpRequest;

    move-result-object p1

    return-object p1

    :cond_1
    return-object p0
.end method

.method public setFollowRedirectsCookie(Z)Lcn/hutool/http/HttpRequest;
    .locals 1

    .line 873
    iget-object v0, p0, Lcn/hutool/http/HttpRequest;->config:Lcn/hutool/http/HttpConfig;

    invoke-virtual {v0, p1}, Lcn/hutool/http/HttpConfig;->setFollowRedirectsCookie(Z)Lcn/hutool/http/HttpConfig;

    return-object p0
.end method

.method public setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)Lcn/hutool/http/HttpRequest;
    .locals 1

    .line 898
    iget-object v0, p0, Lcn/hutool/http/HttpRequest;->config:Lcn/hutool/http/HttpConfig;

    invoke-virtual {v0, p1}, Lcn/hutool/http/HttpConfig;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)Lcn/hutool/http/HttpConfig;

    return-object p0
.end method

.method public setHttpProxy(Ljava/lang/String;I)Lcn/hutool/http/HttpRequest;
    .locals 1

    .line 911
    iget-object v0, p0, Lcn/hutool/http/HttpRequest;->config:Lcn/hutool/http/HttpConfig;

    invoke-virtual {v0, p1, p2}, Lcn/hutool/http/HttpConfig;->setHttpProxy(Ljava/lang/String;I)Lcn/hutool/http/HttpConfig;

    return-object p0
.end method

.method public setMaxRedirectCount(I)Lcn/hutool/http/HttpRequest;
    .locals 1

    .line 886
    iget-object v0, p0, Lcn/hutool/http/HttpRequest;->config:Lcn/hutool/http/HttpConfig;

    invoke-virtual {v0, p1}, Lcn/hutool/http/HttpConfig;->setMaxRedirectCount(I)Lcn/hutool/http/HttpConfig;

    return-object p0
.end method

.method public setMethod(Lcn/hutool/http/Method;)Lcn/hutool/http/HttpRequest;
    .locals 0

    .line 340
    invoke-virtual {p0, p1}, Lcn/hutool/http/HttpRequest;->method(Lcn/hutool/http/Method;)Lcn/hutool/http/HttpRequest;

    move-result-object p1

    return-object p1
.end method

.method public setProxy(Ljava/net/Proxy;)Lcn/hutool/http/HttpRequest;
    .locals 1

    .line 922
    iget-object v0, p0, Lcn/hutool/http/HttpRequest;->config:Lcn/hutool/http/HttpConfig;

    invoke-virtual {v0, p1}, Lcn/hutool/http/HttpConfig;->setProxy(Ljava/net/Proxy;)Lcn/hutool/http/HttpConfig;

    return-object p0
.end method

.method public setReadTimeout(I)Lcn/hutool/http/HttpRequest;
    .locals 1

    .line 825
    iget-object v0, p0, Lcn/hutool/http/HttpRequest;->config:Lcn/hutool/http/HttpConfig;

    invoke-virtual {v0, p1}, Lcn/hutool/http/HttpConfig;->setReadTimeout(I)Lcn/hutool/http/HttpConfig;

    return-object p0
.end method

.method public setRest(Z)Lcn/hutool/http/HttpRequest;
    .locals 0

    .line 969
    iput-boolean p1, p0, Lcn/hutool/http/HttpRequest;->isRest:Z

    return-object p0
.end method

.method public setSSLProtocol(Ljava/lang/String;)Lcn/hutool/http/HttpRequest;
    .locals 1

    .line 956
    iget-object v0, p0, Lcn/hutool/http/HttpRequest;->config:Lcn/hutool/http/HttpConfig;

    invoke-virtual {v0, p1}, Lcn/hutool/http/HttpConfig;->setSSLProtocol(Ljava/lang/String;)Lcn/hutool/http/HttpConfig;

    return-object p0
.end method

.method public setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)Lcn/hutool/http/HttpRequest;
    .locals 1

    .line 935
    iget-object v0, p0, Lcn/hutool/http/HttpRequest;->config:Lcn/hutool/http/HttpConfig;

    invoke-virtual {v0, p1}, Lcn/hutool/http/HttpConfig;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)Lcn/hutool/http/HttpConfig;

    return-object p0
.end method

.method public setUrl(Lcn/hutool/core/net/url/UrlBuilder;)Lcn/hutool/http/HttpRequest;
    .locals 0

    .line 299
    iput-object p1, p0, Lcn/hutool/http/HttpRequest;->url:Lcn/hutool/core/net/url/UrlBuilder;

    return-object p0
.end method

.method public setUrl(Ljava/lang/String;)Lcn/hutool/http/HttpRequest;
    .locals 1

    .line 288
    iget-object v0, p0, Lcn/hutool/http/HttpRequest;->charset:Ljava/nio/charset/Charset;

    invoke-static {p1, v0}, Lcn/hutool/core/net/url/UrlBuilder;->ofHttp(Ljava/lang/String;Ljava/nio/charset/Charset;)Lcn/hutool/core/net/url/UrlBuilder;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcn/hutool/http/HttpRequest;->setUrl(Lcn/hutool/core/net/url/UrlBuilder;)Lcn/hutool/http/HttpRequest;

    move-result-object p1

    return-object p1
.end method

.method public setUrlHandler(Ljava/net/URLStreamHandler;)Lcn/hutool/http/HttpRequest;
    .locals 0

    .line 317
    iput-object p1, p0, Lcn/hutool/http/HttpRequest;->urlHandler:Ljava/net/URLStreamHandler;

    return-object p0
.end method

.method public then(Ljava/util/function/Consumer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Lcn/hutool/http/HttpResponse;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x1

    .line 1063
    invoke-virtual {p0, v0}, Lcn/hutool/http/HttpRequest;->execute(Z)Lcn/hutool/http/HttpResponse;

    move-result-object v0

    .line 1064
    :try_start_0
    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 1065
    invoke-virtual {v0}, Lcn/hutool/http/HttpResponse;->close()V

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    .line 1063
    :try_start_1
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v1

    if-eqz v0, :cond_1

    .line 1065
    :try_start_2
    invoke-virtual {v0}, Lcn/hutool/http/HttpResponse;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v0

    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw v1
.end method

.method public thenFunction(Ljava/util/function/Function;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Function<",
            "Lcn/hutool/http/HttpResponse;",
            "TT;>;)TT;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 1078
    invoke-virtual {p0, v0}, Lcn/hutool/http/HttpRequest;->execute(Z)Lcn/hutool/http/HttpResponse;

    move-result-object v0

    .line 1079
    :try_start_0
    invoke-interface {p1, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 1080
    invoke-virtual {v0}, Lcn/hutool/http/HttpResponse;->close()V

    :cond_0
    return-object p1

    :catchall_0
    move-exception p1

    .line 1078
    :try_start_1
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v1

    if-eqz v0, :cond_1

    .line 1080
    :try_start_2
    invoke-virtual {v0}, Lcn/hutool/http/HttpResponse;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v0

    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw v1
.end method

.method public timeout(I)Lcn/hutool/http/HttpRequest;
    .locals 1

    .line 801
    iget-object v0, p0, Lcn/hutool/http/HttpRequest;->config:Lcn/hutool/http/HttpConfig;

    invoke-virtual {v0, p1}, Lcn/hutool/http/HttpConfig;->timeout(I)Lcn/hutool/http/HttpConfig;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .line 1149
    invoke-static {}, Lcn/hutool/core/util/StrUtil;->builder()Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Request Url: "

    .line 1150
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcn/hutool/http/HttpRequest;->url:Lcn/hutool/core/net/url/UrlBuilder;

    iget-object v3, p0, Lcn/hutool/http/HttpRequest;->charset:Ljava/nio/charset/Charset;

    invoke-virtual {v2, v3}, Lcn/hutool/core/net/url/UrlBuilder;->setCharset(Ljava/nio/charset/Charset;)Lcn/hutool/core/net/url/UrlBuilder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\r\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Request Headers: "

    .line 1153
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1154
    iget-object v1, p0, Lcn/hutool/http/HttpRequest;->headers:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const-string v4, "    "

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 1155
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1156
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 1155
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    .line 1156
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Iterable;

    const-string v5, ","

    invoke-static {v3, v5}, Lcn/hutool/core/collection/CollUtil;->join(Ljava/lang/Iterable;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1157
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    const-string v1, "Request Body: "

    .line 1161
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1162
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcn/hutool/http/HttpRequest;->createBody()Lcn/hutool/http/body/RequestBody;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1163
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
