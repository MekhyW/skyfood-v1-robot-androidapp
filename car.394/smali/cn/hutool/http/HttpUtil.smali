.class public Lcn/hutool/http/HttpUtil;
.super Ljava/lang/Object;
.source "HttpUtil.java"


# static fields
.field public static final CHARSET_PATTERN:Ljava/util/regex/Pattern;

.field public static final META_CHARSET_PATTERN:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "charset\\s*=\\s*([a-z0-9-]*)"

    const/4 v1, 0x2

    .line 42
    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcn/hutool/http/HttpUtil;->CHARSET_PATTERN:Ljava/util/regex/Pattern;

    const-string v0, "<meta[^>]*?charset\\s*=\\s*[\'\"]?([a-z0-9-]*)"

    .line 46
    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcn/hutool/http/HttpUtil;->META_CHARSET_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static buildBasicAuth(Ljava/lang/String;Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/lang/String;
    .locals 1

    const-string v0, ":"

    .line 880
    invoke-virtual {p0, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 881
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Basic "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p2}, Lcn/hutool/core/codec/Base64;->encode(Ljava/lang/CharSequence;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static closeCookie()V
    .locals 1

    const/4 v0, 0x0

    .line 891
    invoke-static {v0}, Lcn/hutool/http/cookie/GlobalCookieManager;->setCookieManager(Ljava/net/CookieManager;)V

    return-void
.end method

.method public static createGet(Ljava/lang/String;)Lcn/hutool/http/HttpRequest;
    .locals 1

    const/4 v0, 0x0

    .line 89
    invoke-static {p0, v0}, Lcn/hutool/http/HttpUtil;->createGet(Ljava/lang/String;Z)Lcn/hutool/http/HttpRequest;

    move-result-object p0

    return-object p0
.end method

.method public static createGet(Ljava/lang/String;Z)Lcn/hutool/http/HttpRequest;
    .locals 0

    .line 101
    invoke-static {p0}, Lcn/hutool/http/HttpRequest;->get(Ljava/lang/String;)Lcn/hutool/http/HttpRequest;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcn/hutool/http/HttpRequest;->setFollowRedirects(Z)Lcn/hutool/http/HttpRequest;

    move-result-object p0

    return-object p0
.end method

.method public static createPost(Ljava/lang/String;)Lcn/hutool/http/HttpRequest;
    .locals 0

    .line 112
    invoke-static {p0}, Lcn/hutool/http/HttpRequest;->post(Ljava/lang/String;)Lcn/hutool/http/HttpRequest;

    move-result-object p0

    return-object p0
.end method

.method public static createRequest(Lcn/hutool/http/Method;Ljava/lang/String;)Lcn/hutool/http/HttpRequest;
    .locals 0

    .line 78
    invoke-static {p1}, Lcn/hutool/http/HttpRequest;->of(Ljava/lang/String;)Lcn/hutool/http/HttpRequest;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcn/hutool/http/HttpRequest;->method(Lcn/hutool/http/Method;)Lcn/hutool/http/HttpRequest;

    move-result-object p0

    return-object p0
.end method

.method public static createServer(I)Lcn/hutool/http/server/SimpleServer;
    .locals 1

    .line 864
    new-instance v0, Lcn/hutool/http/server/SimpleServer;

    invoke-direct {v0, p0}, Lcn/hutool/http/server/SimpleServer;-><init>(I)V

    return-object v0
.end method

.method public static decodeParamMap(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/nio/charset/Charset;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 603
    invoke-static {p0, p1}, Lcn/hutool/core/net/url/UrlQuery;->of(Ljava/lang/String;Ljava/nio/charset/Charset;)Lcn/hutool/core/net/url/UrlQuery;

    move-result-object p0

    invoke-virtual {p0}, Lcn/hutool/core/net/url/UrlQuery;->getQueryMap()Ljava/util/Map;

    move-result-object p0

    .line 604
    invoke-static {p0}, Lcn/hutool/core/map/MapUtil;->isEmpty(Ljava/util/Map;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 605
    invoke-static {}, Lcn/hutool/core/map/MapUtil;->empty()Ljava/util/Map;

    move-result-object p0

    return-object p0

    .line 607
    :cond_0
    const-class p1, Ljava/lang/String;

    const-class v0, Ljava/lang/String;

    invoke-static {p1, v0, p0}, Lcn/hutool/core/convert/Convert;->toMap(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public static decodeParams(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 618
    invoke-static {p0, p1, v0}, Lcn/hutool/http/HttpUtil;->decodeParams(Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public static decodeParams(Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 631
    invoke-static {p1}, Lcn/hutool/core/util/CharsetUtil;->charset(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object p1

    invoke-static {p0, p1, p2}, Lcn/hutool/http/HttpUtil;->decodeParams(Ljava/lang/String;Ljava/nio/charset/Charset;Z)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public static decodeParams(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/nio/charset/Charset;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 643
    invoke-static {p0, p1, v0}, Lcn/hutool/http/HttpUtil;->decodeParams(Ljava/lang/String;Ljava/nio/charset/Charset;Z)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public static decodeParams(Ljava/lang/String;Ljava/nio/charset/Charset;Z)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/nio/charset/Charset;",
            "Z)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 656
    invoke-static {p0, p1, v0, p2}, Lcn/hutool/core/net/url/UrlQuery;->of(Ljava/lang/String;Ljava/nio/charset/Charset;ZZ)Lcn/hutool/core/net/url/UrlQuery;

    move-result-object p0

    invoke-virtual {p0}, Lcn/hutool/core/net/url/UrlQuery;->getQueryMap()Ljava/util/Map;

    move-result-object p0

    .line 657
    invoke-static {p0}, Lcn/hutool/core/map/MapUtil;->isEmpty(Ljava/util/Map;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 658
    invoke-static {}, Lcn/hutool/core/map/MapUtil;->empty()Ljava/util/Map;

    move-result-object p0

    return-object p0

    .line 661
    :cond_0
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 662
    new-instance p2, Lcn/hutool/http/HttpUtil$$ExternalSyntheticLambda1;

    invoke-direct {p2, p1}, Lcn/hutool/http/HttpUtil$$ExternalSyntheticLambda1;-><init>(Ljava/util/Map;)V

    invoke-interface {p0, p2}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    return-object p1
.end method

.method public static download(Ljava/lang/String;Ljava/io/OutputStream;Z)J
    .locals 1

    const/4 v0, 0x0

    .line 402
    invoke-static {p0, p1, p2, v0}, Lcn/hutool/http/HttpUtil;->download(Ljava/lang/String;Ljava/io/OutputStream;ZLcn/hutool/core/io/StreamProgress;)J

    move-result-wide p0

    return-wide p0
.end method

.method public static download(Ljava/lang/String;Ljava/io/OutputStream;ZLcn/hutool/core/io/StreamProgress;)J
    .locals 0

    .line 415
    invoke-static {p0, p1, p2, p3}, Lcn/hutool/http/HttpDownloader;->download(Ljava/lang/String;Ljava/io/OutputStream;ZLcn/hutool/core/io/StreamProgress;)J

    move-result-wide p0

    return-wide p0
.end method

.method public static downloadBytes(Ljava/lang/String;)[B
    .locals 0

    .line 426
    invoke-static {p0}, Lcn/hutool/http/HttpDownloader;->downloadBytes(Ljava/lang/String;)[B

    move-result-object p0

    return-object p0
.end method

.method public static downloadFile(Ljava/lang/String;Ljava/io/File;)J
    .locals 1

    const/4 v0, 0x0

    .line 287
    invoke-static {p0, p1, v0}, Lcn/hutool/http/HttpUtil;->downloadFile(Ljava/lang/String;Ljava/io/File;Lcn/hutool/core/io/StreamProgress;)J

    move-result-wide p0

    return-wide p0
.end method

.method public static downloadFile(Ljava/lang/String;Ljava/io/File;I)J
    .locals 1

    const/4 v0, 0x0

    .line 300
    invoke-static {p0, p1, p2, v0}, Lcn/hutool/http/HttpUtil;->downloadFile(Ljava/lang/String;Ljava/io/File;ILcn/hutool/core/io/StreamProgress;)J

    move-result-wide p0

    return-wide p0
.end method

.method public static downloadFile(Ljava/lang/String;Ljava/io/File;ILcn/hutool/core/io/StreamProgress;)J
    .locals 0

    .line 326
    invoke-static {p0, p1, p2, p3}, Lcn/hutool/http/HttpDownloader;->downloadFile(Ljava/lang/String;Ljava/io/File;ILcn/hutool/core/io/StreamProgress;)J

    move-result-wide p0

    return-wide p0
.end method

.method public static downloadFile(Ljava/lang/String;Ljava/io/File;Lcn/hutool/core/io/StreamProgress;)J
    .locals 1

    const/4 v0, -0x1

    .line 312
    invoke-static {p0, p1, v0, p2}, Lcn/hutool/http/HttpUtil;->downloadFile(Ljava/lang/String;Ljava/io/File;ILcn/hutool/core/io/StreamProgress;)J

    move-result-wide p0

    return-wide p0
.end method

.method public static downloadFile(Ljava/lang/String;Ljava/lang/String;)J
    .locals 0

    .line 276
    invoke-static {p1}, Lcn/hutool/core/io/FileUtil;->file(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    invoke-static {p0, p1}, Lcn/hutool/http/HttpUtil;->downloadFile(Ljava/lang/String;Ljava/io/File;)J

    move-result-wide p0

    return-wide p0
.end method

.method public static downloadFileFromUrl(Ljava/lang/String;Ljava/io/File;)Ljava/io/File;
    .locals 1

    const/4 v0, 0x0

    .line 350
    invoke-static {p0, p1, v0}, Lcn/hutool/http/HttpUtil;->downloadFileFromUrl(Ljava/lang/String;Ljava/io/File;Lcn/hutool/core/io/StreamProgress;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public static downloadFileFromUrl(Ljava/lang/String;Ljava/io/File;I)Ljava/io/File;
    .locals 1

    const/4 v0, 0x0

    .line 363
    invoke-static {p0, p1, p2, v0}, Lcn/hutool/http/HttpUtil;->downloadFileFromUrl(Ljava/lang/String;Ljava/io/File;ILcn/hutool/core/io/StreamProgress;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public static downloadFileFromUrl(Ljava/lang/String;Ljava/io/File;ILcn/hutool/core/io/StreamProgress;)Ljava/io/File;
    .locals 0

    .line 390
    invoke-static {p0, p1, p2, p3}, Lcn/hutool/http/HttpDownloader;->downloadForFile(Ljava/lang/String;Ljava/io/File;ILcn/hutool/core/io/StreamProgress;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public static downloadFileFromUrl(Ljava/lang/String;Ljava/io/File;Lcn/hutool/core/io/StreamProgress;)Ljava/io/File;
    .locals 1

    const/4 v0, -0x1

    .line 376
    invoke-static {p0, p1, v0, p2}, Lcn/hutool/http/HttpUtil;->downloadFileFromUrl(Ljava/lang/String;Ljava/io/File;ILcn/hutool/core/io/StreamProgress;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public static downloadFileFromUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .locals 0

    .line 338
    invoke-static {p1}, Lcn/hutool/core/io/FileUtil;->file(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    invoke-static {p0, p1}, Lcn/hutool/http/HttpUtil;->downloadFileFromUrl(Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public static downloadString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 242
    invoke-static {p1}, Lcn/hutool/core/util/CharsetUtil;->charset(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcn/hutool/http/HttpUtil;->downloadString(Ljava/lang/String;Ljava/nio/charset/Charset;Lcn/hutool/core/io/StreamProgress;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static downloadString(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 253
    invoke-static {p0, p1, v0}, Lcn/hutool/http/HttpUtil;->downloadString(Ljava/lang/String;Ljava/nio/charset/Charset;Lcn/hutool/core/io/StreamProgress;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static downloadString(Ljava/lang/String;Ljava/nio/charset/Charset;Lcn/hutool/core/io/StreamProgress;)Ljava/lang/String;
    .locals 0

    .line 265
    invoke-static {p0, p1, p2}, Lcn/hutool/http/HttpDownloader;->downloadString(Ljava/lang/String;Ljava/nio/charset/Charset;Lcn/hutool/core/io/StreamProgress;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static encodeParams(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/lang/String;
    .locals 2

    .line 503
    invoke-static {p0}, Lcn/hutool/core/util/StrUtil;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    const/16 v0, 0x3f

    .line 509
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-le v0, v1, :cond_1

    .line 512
    invoke-static {p0, v0}, Lcn/hutool/core/util/StrUtil;->subPre(Ljava/lang/CharSequence;I)Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    .line 513
    invoke-static {p0, v0}, Lcn/hutool/core/util/StrUtil;->subSuf(Ljava/lang/CharSequence;I)Ljava/lang/String;

    move-result-object p0

    .line 514
    invoke-static {p0}, Lcn/hutool/core/util/StrUtil;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    return-object v1

    :cond_1
    const/16 v0, 0x3d

    .line 518
    invoke-static {p0, v0}, Lcn/hutool/core/util/StrUtil;->contains(Ljava/lang/CharSequence;C)Z

    move-result v0

    if-nez v0, :cond_2

    return-object p0

    :cond_2
    const/4 v1, 0x0

    .line 526
    :cond_3
    invoke-static {p0, p1}, Lcn/hutool/http/HttpUtil;->normalizeParams(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p0

    .line 528
    invoke-static {v1}, Lcn/hutool/core/util/StrUtil;->isBlank(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_0

    :cond_4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "?"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static get(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 133
    invoke-static {}, Lcn/hutool/http/HttpGlobalConfig;->getTimeout()I

    move-result v0

    invoke-static {p0, v0}, Lcn/hutool/http/HttpUtil;->get(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static get(Ljava/lang/String;I)Ljava/lang/String;
    .locals 0

    .line 145
    invoke-static {p0}, Lcn/hutool/http/HttpRequest;->get(Ljava/lang/String;)Lcn/hutool/http/HttpRequest;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcn/hutool/http/HttpRequest;->timeout(I)Lcn/hutool/http/HttpRequest;

    move-result-object p0

    invoke-virtual {p0}, Lcn/hutool/http/HttpRequest;->execute()Lcn/hutool/http/HttpResponse;

    move-result-object p0

    invoke-virtual {p0}, Lcn/hutool/http/HttpResponse;->body()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static get(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/lang/String;
    .locals 0

    .line 123
    invoke-static {p0}, Lcn/hutool/http/HttpRequest;->get(Ljava/lang/String;)Lcn/hutool/http/HttpRequest;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcn/hutool/http/HttpRequest;->charset(Ljava/nio/charset/Charset;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcn/hutool/http/HttpRequest;

    invoke-virtual {p0}, Lcn/hutool/http/HttpRequest;->execute()Lcn/hutool/http/HttpResponse;

    move-result-object p0

    invoke-virtual {p0}, Lcn/hutool/http/HttpResponse;->body()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static get(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 156
    invoke-static {p0}, Lcn/hutool/http/HttpRequest;->get(Ljava/lang/String;)Lcn/hutool/http/HttpRequest;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcn/hutool/http/HttpRequest;->form(Ljava/util/Map;)Lcn/hutool/http/HttpRequest;

    move-result-object p0

    invoke-virtual {p0}, Lcn/hutool/http/HttpRequest;->execute()Lcn/hutool/http/HttpResponse;

    move-result-object p0

    invoke-virtual {p0}, Lcn/hutool/http/HttpResponse;->body()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static get(Ljava/lang/String;Ljava/util/Map;I)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;I)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 169
    invoke-static {p0}, Lcn/hutool/http/HttpRequest;->get(Ljava/lang/String;)Lcn/hutool/http/HttpRequest;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcn/hutool/http/HttpRequest;->form(Ljava/util/Map;)Lcn/hutool/http/HttpRequest;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcn/hutool/http/HttpRequest;->timeout(I)Lcn/hutool/http/HttpRequest;

    move-result-object p0

    invoke-virtual {p0}, Lcn/hutool/http/HttpRequest;->execute()Lcn/hutool/http/HttpResponse;

    move-result-object p0

    invoke-virtual {p0}, Lcn/hutool/http/HttpResponse;->body()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getCharset(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 754
    invoke-static {p0}, Lcn/hutool/core/util/StrUtil;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 757
    :cond_0
    sget-object v0, Lcn/hutool/http/HttpUtil;->CHARSET_PATTERN:Ljava/util/regex/Pattern;

    const/4 v1, 0x1

    invoke-static {v0, p0, v1}, Lcn/hutool/core/util/ReUtil;->get(Ljava/util/regex/Pattern;Ljava/lang/CharSequence;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getCharset(Ljava/net/HttpURLConnection;)Ljava/lang/String;
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 742
    :cond_0
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getContentType()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcn/hutool/http/HttpUtil;->getCharset(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getContentTypeByRequestBody(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 852
    invoke-static {p0}, Lcn/hutool/http/ContentType;->get(Ljava/lang/String;)Lcn/hutool/http/ContentType;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 853
    :cond_0
    invoke-virtual {p0}, Lcn/hutool/http/ContentType;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static getMimeType(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 835
    invoke-static {p0}, Lcn/hutool/core/io/FileUtil;->getMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getMimeType(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 824
    invoke-static {p0}, Lcn/hutool/http/HttpUtil;->getMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Lcn/hutool/core/util/ObjectUtil;->defaultIfNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public static getString(Ljava/io/InputStream;Ljava/nio/charset/Charset;Z)Ljava/lang/String;
    .locals 0

    .line 770
    invoke-static {p0}, Lcn/hutool/core/io/IoUtil;->readBytes(Ljava/io/InputStream;)[B

    move-result-object p0

    .line 771
    invoke-static {p0, p1, p2}, Lcn/hutool/http/HttpUtil;->getString([BLjava/nio/charset/Charset;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getString([BLjava/nio/charset/Charset;Z)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    if-nez p1, :cond_1

    .line 789
    sget-object p1, Lcn/hutool/core/util/CharsetUtil;->CHARSET_UTF_8:Ljava/nio/charset/Charset;

    .line 791
    :cond_1
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p0, p1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    if-eqz p2, :cond_5

    .line 793
    sget-object p2, Lcn/hutool/http/HttpUtil;->META_CHARSET_PATTERN:Ljava/util/regex/Pattern;

    const/4 v2, 0x1

    invoke-static {p2, v1, v2}, Lcn/hutool/core/util/ReUtil;->get(Ljava/util/regex/Pattern;Ljava/lang/CharSequence;I)Ljava/lang/String;

    move-result-object p2

    .line 794
    invoke-static {p2}, Lcn/hutool/core/util/StrUtil;->isNotBlank(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 797
    :try_start_0
    invoke-static {p2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const-string v2, "utf-8"

    .line 799
    invoke-static {p2, v2}, Lcn/hutool/core/util/StrUtil;->containsIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "utf8"

    invoke-static {p2, v2}, Lcn/hutool/core/util/StrUtil;->containsIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    :cond_2
    const-string v2, "gbk"

    .line 801
    invoke-static {p2, v2}, Lcn/hutool/core/util/StrUtil;->containsIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 802
    sget-object v0, Lcn/hutool/core/util/CharsetUtil;->CHARSET_GBK:Ljava/nio/charset/Charset;

    goto :goto_1

    .line 800
    :cond_3
    :goto_0
    sget-object v0, Lcn/hutool/core/util/CharsetUtil;->CHARSET_UTF_8:Ljava/nio/charset/Charset;

    :cond_4
    :goto_1
    if-eqz v0, :cond_5

    .line 806
    invoke-virtual {p1, v0}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    .line 807
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p0, v0}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    :cond_5
    return-object v1
.end method

.method public static isHttp(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "http:"

    .line 66
    invoke-static {p0, v0}, Lcn/hutool/core/util/StrUtil;->startWithIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method public static isHttps(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "https:"

    .line 55
    invoke-static {p0, v0}, Lcn/hutool/core/util/StrUtil;->startWithIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method static synthetic lambda$decodeParams$1(Ljava/util/Map;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 1

    .line 663
    invoke-static {p1}, Lcn/hutool/core/util/StrUtil;->str(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lcn/hutool/http/HttpUtil$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcn/hutool/http/HttpUtil$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    .line 665
    invoke-static {p2}, Lcn/hutool/core/util/StrUtil;->str(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method static synthetic lambda$null$0(Ljava/lang/String;)Ljava/util/List;
    .locals 1

    .line 663
    new-instance p0, Ljava/util/ArrayList;

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(I)V

    return-object p0
.end method

.method public static normalizeParams(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/lang/String;
    .locals 11

    .line 542
    invoke-static {p0}, Lcn/hutool/core/util/StrUtil;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 545
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x10

    invoke-static {v0}, Lcn/hutool/core/text/StrBuilder;->create(I)Lcn/hutool/core/text/StrBuilder;

    move-result-object v0

    .line 546
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v5, v2

    move v4, v3

    move v6, v4

    :goto_0
    const/16 v7, 0x26

    const/16 v8, 0x3d

    if-ge v4, v1, :cond_6

    .line 552
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-ne v9, v8, :cond_2

    if-nez v5, :cond_5

    if-ne v6, v4, :cond_1

    const-string v5, ""

    goto :goto_2

    .line 556
    :cond_1
    invoke-virtual {p0, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    :cond_2
    if-ne v9, v7, :cond_5

    if-eq v6, v4, :cond_4

    if-nez v5, :cond_3

    .line 563
    invoke-virtual {p0, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 564
    sget-object v6, Lcn/hutool/core/net/RFC3986;->QUERY_PARAM_NAME:Lcn/hutool/core/codec/PercentCodec;

    new-array v7, v3, [C

    invoke-virtual {v6, v5, p1, v7}, Lcn/hutool/core/codec/PercentCodec;->encode(Ljava/lang/CharSequence;Ljava/nio/charset/Charset;[C)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcn/hutool/core/text/StrBuilder;->append(Ljava/lang/CharSequence;)Lcn/hutool/core/text/StrBuilder;

    move-result-object v5

    invoke-virtual {v5, v8}, Lcn/hutool/core/text/StrBuilder;->append(C)Lcn/hutool/core/text/StrBuilder;

    goto :goto_1

    .line 566
    :cond_3
    sget-object v9, Lcn/hutool/core/net/RFC3986;->QUERY_PARAM_NAME:Lcn/hutool/core/codec/PercentCodec;

    new-array v10, v3, [C

    invoke-virtual {v9, v5, p1, v10}, Lcn/hutool/core/codec/PercentCodec;->encode(Ljava/lang/CharSequence;Ljava/nio/charset/Charset;[C)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcn/hutool/core/text/StrBuilder;->append(Ljava/lang/CharSequence;)Lcn/hutool/core/text/StrBuilder;

    move-result-object v5

    invoke-virtual {v5, v8}, Lcn/hutool/core/text/StrBuilder;->append(C)Lcn/hutool/core/text/StrBuilder;

    move-result-object v5

    sget-object v8, Lcn/hutool/core/net/RFC3986;->QUERY_PARAM_VALUE:Lcn/hutool/core/codec/PercentCodec;

    .line 567
    invoke-virtual {p0, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    new-array v9, v3, [C

    invoke-virtual {v8, v6, p1, v9}, Lcn/hutool/core/codec/PercentCodec;->encode(Ljava/lang/CharSequence;Ljava/nio/charset/Charset;[C)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcn/hutool/core/text/StrBuilder;->append(Ljava/lang/CharSequence;)Lcn/hutool/core/text/StrBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Lcn/hutool/core/text/StrBuilder;->append(C)Lcn/hutool/core/text/StrBuilder;

    :goto_1
    move-object v5, v2

    :cond_4
    :goto_2
    add-int/lit8 v6, v4, 0x1

    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_6
    if-eqz v5, :cond_7

    .line 577
    invoke-static {v5, p1}, Lcn/hutool/core/util/URLUtil;->encodeQuery(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/hutool/core/text/StrBuilder;->append(Ljava/lang/CharSequence;)Lcn/hutool/core/text/StrBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Lcn/hutool/core/text/StrBuilder;->append(C)Lcn/hutool/core/text/StrBuilder;

    :cond_7
    if-eq v6, v4, :cond_9

    if-nez v5, :cond_8

    if-lez v6, :cond_8

    .line 581
    invoke-virtual {v0, v8}, Lcn/hutool/core/text/StrBuilder;->append(C)Lcn/hutool/core/text/StrBuilder;

    .line 583
    :cond_8
    invoke-virtual {p0, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Lcn/hutool/core/util/URLUtil;->encodeQuery(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcn/hutool/core/text/StrBuilder;->append(Ljava/lang/CharSequence;)Lcn/hutool/core/text/StrBuilder;

    .line 587
    :cond_9
    invoke-virtual {v0}, Lcn/hutool/core/text/StrBuilder;->length()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    .line 588
    invoke-virtual {v0, p0}, Lcn/hutool/core/text/StrBuilder;->charAt(I)C

    move-result p1

    if-ne v7, p1, :cond_a

    .line 589
    invoke-virtual {v0, p0}, Lcn/hutool/core/text/StrBuilder;->delTo(I)Lcn/hutool/core/text/StrBuilder;

    .line 591
    :cond_a
    invoke-virtual {v0}, Lcn/hutool/core/text/StrBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static post(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 210
    invoke-static {}, Lcn/hutool/http/HttpGlobalConfig;->getTimeout()I

    move-result v0

    invoke-static {p0, p1, v0}, Lcn/hutool/http/HttpUtil;->post(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static post(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 0

    .line 229
    invoke-static {p0}, Lcn/hutool/http/HttpRequest;->post(Ljava/lang/String;)Lcn/hutool/http/HttpRequest;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcn/hutool/http/HttpRequest;->timeout(I)Lcn/hutool/http/HttpRequest;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcn/hutool/http/HttpRequest;->body(Ljava/lang/String;)Lcn/hutool/http/HttpRequest;

    move-result-object p0

    invoke-virtual {p0}, Lcn/hutool/http/HttpRequest;->execute()Lcn/hutool/http/HttpResponse;

    move-result-object p0

    invoke-virtual {p0}, Lcn/hutool/http/HttpResponse;->body()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static post(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 180
    invoke-static {}, Lcn/hutool/http/HttpGlobalConfig;->getTimeout()I

    move-result v0

    invoke-static {p0, p1, v0}, Lcn/hutool/http/HttpUtil;->post(Ljava/lang/String;Ljava/util/Map;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static post(Ljava/lang/String;Ljava/util/Map;I)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;I)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 193
    invoke-static {p0}, Lcn/hutool/http/HttpRequest;->post(Ljava/lang/String;)Lcn/hutool/http/HttpRequest;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcn/hutool/http/HttpRequest;->form(Ljava/util/Map;)Lcn/hutool/http/HttpRequest;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcn/hutool/http/HttpRequest;->timeout(I)Lcn/hutool/http/HttpRequest;

    move-result-object p0

    invoke-virtual {p0}, Lcn/hutool/http/HttpRequest;->execute()Lcn/hutool/http/HttpResponse;

    move-result-object p0

    invoke-virtual {p0}, Lcn/hutool/http/HttpResponse;->body()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static toParams(Ljava/util/Map;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 436
    sget-object v0, Lcn/hutool/core/util/CharsetUtil;->CHARSET_UTF_8:Ljava/nio/charset/Charset;

    invoke-static {p0, v0}, Lcn/hutool/http/HttpUtil;->toParams(Ljava/util/Map;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static toParams(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 450
    invoke-static {p1}, Lcn/hutool/core/util/CharsetUtil;->charset(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object p1

    invoke-static {p0, p1}, Lcn/hutool/http/HttpUtil;->toParams(Ljava/util/Map;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static toParams(Ljava/util/Map;Ljava/nio/charset/Charset;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;",
            "Ljava/nio/charset/Charset;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 469
    invoke-static {p0, p1, v0}, Lcn/hutool/http/HttpUtil;->toParams(Ljava/util/Map;Ljava/nio/charset/Charset;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static toParams(Ljava/util/Map;Ljava/nio/charset/Charset;Z)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;",
            "Ljava/nio/charset/Charset;",
            "Z)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 488
    invoke-static {p0, p2}, Lcn/hutool/core/net/url/UrlQuery;->of(Ljava/util/Map;Z)Lcn/hutool/core/net/url/UrlQuery;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcn/hutool/core/net/url/UrlQuery;->build(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static urlWithForm(Ljava/lang/String;Ljava/lang/String;Ljava/nio/charset/Charset;Z)Ljava/lang/String;
    .locals 3

    .line 700
    invoke-static {p1}, Lcn/hutool/core/util/StrUtil;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    const/16 v1, 0x3f

    if-eqz v0, :cond_1

    .line 702
    invoke-static {p0, v1}, Lcn/hutool/core/util/StrUtil;->contains(Ljava/lang/CharSequence;C)Z

    move-result p1

    if-eqz p1, :cond_0

    if-eqz p3, :cond_0

    .line 704
    invoke-static {p0, p2}, Lcn/hutool/http/HttpUtil;->encodeParams(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p0

    :cond_0
    return-object p0

    .line 710
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v0, v2

    add-int/lit8 v0, v0, 0x10

    invoke-static {v0}, Lcn/hutool/core/text/StrBuilder;->create(I)Lcn/hutool/core/text/StrBuilder;

    move-result-object v0

    .line 711
    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-lez v2, :cond_3

    if-eqz p3, :cond_2

    .line 714
    invoke-static {p0, p2}, Lcn/hutool/http/HttpUtil;->encodeParams(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_2
    move-object v1, p0

    :goto_0
    invoke-virtual {v0, v1}, Lcn/hutool/core/text/StrBuilder;->append(Ljava/lang/CharSequence;)Lcn/hutool/core/text/StrBuilder;

    const/16 v1, 0x26

    .line 715
    invoke-static {p0, v1}, Lcn/hutool/core/util/StrUtil;->endWith(Ljava/lang/CharSequence;C)Z

    move-result p0

    if-nez p0, :cond_4

    .line 717
    invoke-virtual {v0, v1}, Lcn/hutool/core/text/StrBuilder;->append(C)Lcn/hutool/core/text/StrBuilder;

    goto :goto_1

    .line 721
    :cond_3
    invoke-virtual {v0, p0}, Lcn/hutool/core/text/StrBuilder;->append(Ljava/lang/CharSequence;)Lcn/hutool/core/text/StrBuilder;

    if-gez v2, :cond_4

    .line 724
    invoke-virtual {v0, v1}, Lcn/hutool/core/text/StrBuilder;->append(C)Lcn/hutool/core/text/StrBuilder;

    :cond_4
    :goto_1
    if-eqz p3, :cond_5

    .line 727
    invoke-static {p1, p2}, Lcn/hutool/http/HttpUtil;->encodeParams(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p1

    :cond_5
    invoke-virtual {v0, p1}, Lcn/hutool/core/text/StrBuilder;->append(Ljava/lang/CharSequence;)Lcn/hutool/core/text/StrBuilder;

    .line 728
    invoke-virtual {v0}, Lcn/hutool/core/text/StrBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static urlWithForm(Ljava/lang/String;Ljava/util/Map;Ljava/nio/charset/Charset;Z)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/nio/charset/Charset;",
            "Z)",
            "Ljava/lang/String;"
        }
    .end annotation

    if-eqz p3, :cond_0

    const/16 p3, 0x3f

    .line 681
    invoke-static {p0, p3}, Lcn/hutool/core/util/StrUtil;->contains(Ljava/lang/CharSequence;C)Z

    move-result p3

    if-eqz p3, :cond_0

    .line 683
    invoke-static {p0, p2}, Lcn/hutool/http/HttpUtil;->encodeParams(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p0

    .line 687
    :cond_0
    invoke-static {p1, p2}, Lcn/hutool/http/HttpUtil;->toParams(Ljava/util/Map;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p1

    const/4 p3, 0x0

    invoke-static {p0, p1, p2, p3}, Lcn/hutool/http/HttpUtil;->urlWithForm(Ljava/lang/String;Ljava/lang/String;Ljava/nio/charset/Charset;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
