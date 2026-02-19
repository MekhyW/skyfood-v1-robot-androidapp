.class public final Lcn/hutool/core/net/url/UrlBuilder;
.super Ljava/lang/Object;
.source "UrlBuilder.java"

# interfaces
.implements Lcn/hutool/core/builder/Builder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcn/hutool/core/builder/Builder<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field private static final DEFAULT_SCHEME:Ljava/lang/String; = "http"

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private charset:Ljava/nio/charset/Charset;

.field private fragment:Ljava/lang/String;

.field private host:Ljava/lang/String;

.field private needEncodePercent:Z

.field private path:Lcn/hutool/core/net/url/UrlPath;

.field private port:I

.field private query:Lcn/hutool/core/net/url/UrlQuery;

.field private scheme:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 209
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 44
    iput v0, p0, Lcn/hutool/core/net/url/UrlBuilder;->port:I

    .line 210
    sget-object v0, Lcn/hutool/core/util/CharsetUtil;->CHARSET_UTF_8:Ljava/nio/charset/Charset;

    iput-object v0, p0, Lcn/hutool/core/net/url/UrlBuilder;->charset:Ljava/nio/charset/Charset;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILcn/hutool/core/net/url/UrlPath;Lcn/hutool/core/net/url/UrlQuery;Ljava/lang/String;Ljava/nio/charset/Charset;)V
    .locals 0

    .line 224
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 225
    iput-object p7, p0, Lcn/hutool/core/net/url/UrlBuilder;->charset:Ljava/nio/charset/Charset;

    .line 226
    iput-object p1, p0, Lcn/hutool/core/net/url/UrlBuilder;->scheme:Ljava/lang/String;

    .line 227
    iput-object p2, p0, Lcn/hutool/core/net/url/UrlBuilder;->host:Ljava/lang/String;

    .line 228
    iput p3, p0, Lcn/hutool/core/net/url/UrlBuilder;->port:I

    .line 229
    iput-object p4, p0, Lcn/hutool/core/net/url/UrlBuilder;->path:Lcn/hutool/core/net/url/UrlPath;

    .line 230
    iput-object p5, p0, Lcn/hutool/core/net/url/UrlBuilder;->query:Lcn/hutool/core/net/url/UrlQuery;

    .line 231
    invoke-virtual {p0, p6}, Lcn/hutool/core/net/url/UrlBuilder;->setFragment(Ljava/lang/String;)Lcn/hutool/core/net/url/UrlBuilder;

    if-eqz p7, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 233
    :goto_0
    iput-boolean p1, p0, Lcn/hutool/core/net/url/UrlBuilder;->needEncodePercent:Z

    return-void
.end method

.method public static create()Lcn/hutool/core/net/url/UrlBuilder;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 194
    new-instance v0, Lcn/hutool/core/net/url/UrlBuilder;

    invoke-direct {v0}, Lcn/hutool/core/net/url/UrlBuilder;-><init>()V

    return-object v0
.end method

.method public static of()Lcn/hutool/core/net/url/UrlBuilder;
    .locals 1

    .line 203
    new-instance v0, Lcn/hutool/core/net/url/UrlBuilder;

    invoke-direct {v0}, Lcn/hutool/core/net/url/UrlBuilder;-><init>()V

    return-object v0
.end method

.method public static of(Ljava/lang/String;)Lcn/hutool/core/net/url/UrlBuilder;
    .locals 1

    .line 126
    sget-object v0, Lcn/hutool/core/util/CharsetUtil;->CHARSET_UTF_8:Ljava/nio/charset/Charset;

    invoke-static {p0, v0}, Lcn/hutool/core/net/url/UrlBuilder;->of(Ljava/lang/String;Ljava/nio/charset/Charset;)Lcn/hutool/core/net/url/UrlBuilder;

    move-result-object p0

    return-object p0
.end method

.method public static of(Ljava/lang/String;Ljava/lang/String;ILcn/hutool/core/net/url/UrlPath;Lcn/hutool/core/net/url/UrlQuery;Ljava/lang/String;Ljava/nio/charset/Charset;)Lcn/hutool/core/net/url/UrlBuilder;
    .locals 9

    .line 183
    new-instance v8, Lcn/hutool/core/net/url/UrlBuilder;

    move-object v0, v8

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcn/hutool/core/net/url/UrlBuilder;-><init>(Ljava/lang/String;Ljava/lang/String;ILcn/hutool/core/net/url/UrlPath;Lcn/hutool/core/net/url/UrlQuery;Ljava/lang/String;Ljava/nio/charset/Charset;)V

    return-object v8
.end method

.method public static of(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/nio/charset/Charset;)Lcn/hutool/core/net/url/UrlBuilder;
    .locals 7

    .line 166
    invoke-static {p3, p6}, Lcn/hutool/core/net/url/UrlPath;->of(Ljava/lang/CharSequence;Ljava/nio/charset/Charset;)Lcn/hutool/core/net/url/UrlPath;

    move-result-object v3

    const/4 p3, 0x0

    .line 167
    invoke-static {p4, p6, p3}, Lcn/hutool/core/net/url/UrlQuery;->of(Ljava/lang/String;Ljava/nio/charset/Charset;Z)Lcn/hutool/core/net/url/UrlQuery;

    move-result-object v4

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v5, p5

    move-object v6, p6

    .line 165
    invoke-static/range {v0 .. v6}, Lcn/hutool/core/net/url/UrlBuilder;->of(Ljava/lang/String;Ljava/lang/String;ILcn/hutool/core/net/url/UrlPath;Lcn/hutool/core/net/url/UrlQuery;Ljava/lang/String;Ljava/nio/charset/Charset;)Lcn/hutool/core/net/url/UrlBuilder;

    move-result-object p0

    return-object p0
.end method

.method public static of(Ljava/lang/String;Ljava/nio/charset/Charset;)Lcn/hutool/core/net/url/UrlBuilder;
    .locals 2

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Url must be not blank!"

    .line 137
    invoke-static {p0, v1, v0}, Lcn/hutool/core/lang/Assert;->notBlank(Ljava/lang/CharSequence;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/CharSequence;

    .line 138
    invoke-static {p0}, Lcn/hutool/core/util/StrUtil;->trim(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcn/hutool/core/util/URLUtil;->url(Ljava/lang/String;)Ljava/net/URL;

    move-result-object p0

    invoke-static {p0, p1}, Lcn/hutool/core/net/url/UrlBuilder;->of(Ljava/net/URL;Ljava/nio/charset/Charset;)Lcn/hutool/core/net/url/UrlBuilder;

    move-result-object p0

    return-object p0
.end method

.method public static of(Ljava/net/URI;Ljava/nio/charset/Charset;)Lcn/hutool/core/net/url/UrlBuilder;
    .locals 7

    .line 76
    invoke-virtual {p0}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Ljava/net/URI;->getPort()I

    move-result v2

    invoke-virtual {p0}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Ljava/net/URI;->getRawQuery()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Ljava/net/URI;->getFragment()Ljava/lang/String;

    move-result-object v5

    move-object v6, p1

    invoke-static/range {v0 .. v6}, Lcn/hutool/core/net/url/UrlBuilder;->of(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/nio/charset/Charset;)Lcn/hutool/core/net/url/UrlBuilder;

    move-result-object p0

    return-object p0
.end method

.method public static of(Ljava/net/URL;Ljava/nio/charset/Charset;)Lcn/hutool/core/net/url/UrlBuilder;
    .locals 7

    .line 149
    invoke-virtual {p0}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Ljava/net/URL;->getPort()I

    move-result v2

    invoke-virtual {p0}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Ljava/net/URL;->getQuery()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Ljava/net/URL;->getRef()Ljava/lang/String;

    move-result-object v5

    move-object v6, p1

    invoke-static/range {v0 .. v6}, Lcn/hutool/core/net/url/UrlBuilder;->of(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/nio/charset/Charset;)Lcn/hutool/core/net/url/UrlBuilder;

    move-result-object p0

    return-object p0
.end method

.method public static ofHttp(Ljava/lang/String;)Lcn/hutool/core/net/url/UrlBuilder;
    .locals 1

    .line 99
    sget-object v0, Lcn/hutool/core/util/CharsetUtil;->CHARSET_UTF_8:Ljava/nio/charset/Charset;

    invoke-static {p0, v0}, Lcn/hutool/core/net/url/UrlBuilder;->ofHttp(Ljava/lang/String;Ljava/nio/charset/Charset;)Lcn/hutool/core/net/url/UrlBuilder;

    move-result-object p0

    return-object p0
.end method

.method public static ofHttp(Ljava/lang/String;Ljava/nio/charset/Charset;)Lcn/hutool/core/net/url/UrlBuilder;
    .locals 4

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "Http url must be not blank!"

    .line 110
    invoke-static {p0, v2, v1}, Lcn/hutool/core/lang/Assert;->notBlank(Ljava/lang/CharSequence;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/CharSequence;

    .line 111
    invoke-static {p0}, Lcn/hutool/core/util/StrUtil;->trimStart(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/CharSequence;

    const-string v2, "http://"

    aput-object v2, v1, v0

    const/4 v0, 0x1

    const-string v3, "https://"

    aput-object v3, v1, v0

    .line 113
    invoke-static {p0, v1}, Lcn/hutool/core/util/StrUtil;->startWithAnyIgnoreCase(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 114
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 116
    :cond_0
    invoke-static {p0, p1}, Lcn/hutool/core/net/url/UrlBuilder;->of(Ljava/lang/String;Ljava/nio/charset/Charset;)Lcn/hutool/core/net/url/UrlBuilder;

    move-result-object p0

    return-object p0
.end method

.method public static ofHttpWithoutEncode(Ljava/lang/String;)Lcn/hutool/core/net/url/UrlBuilder;
    .locals 1

    const/4 v0, 0x0

    .line 88
    invoke-static {p0, v0}, Lcn/hutool/core/net/url/UrlBuilder;->ofHttp(Ljava/lang/String;Ljava/nio/charset/Charset;)Lcn/hutool/core/net/url/UrlBuilder;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public addPath(Ljava/lang/CharSequence;)Lcn/hutool/core/net/url/UrlBuilder;
    .locals 1

    .line 380
    iget-object v0, p0, Lcn/hutool/core/net/url/UrlBuilder;->charset:Ljava/nio/charset/Charset;

    invoke-static {p1, v0}, Lcn/hutool/core/net/url/UrlPath;->of(Ljava/lang/CharSequence;Ljava/nio/charset/Charset;)Lcn/hutool/core/net/url/UrlPath;

    move-result-object p1

    invoke-virtual {p1}, Lcn/hutool/core/net/url/UrlPath;->getSegments()Ljava/util/List;

    move-result-object p1

    new-instance v0, Lcn/hutool/core/net/url/UrlBuilder$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcn/hutool/core/net/url/UrlBuilder$$ExternalSyntheticLambda0;-><init>(Lcn/hutool/core/net/url/UrlBuilder;)V

    invoke-interface {p1, v0}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    return-object p0
.end method

.method public addPathSegment(Ljava/lang/CharSequence;)Lcn/hutool/core/net/url/UrlBuilder;
    .locals 1

    .line 392
    invoke-static {p1}, Lcn/hutool/core/util/StrUtil;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 395
    :cond_0
    iget-object v0, p0, Lcn/hutool/core/net/url/UrlBuilder;->path:Lcn/hutool/core/net/url/UrlPath;

    if-nez v0, :cond_1

    .line 396
    new-instance v0, Lcn/hutool/core/net/url/UrlPath;

    invoke-direct {v0}, Lcn/hutool/core/net/url/UrlPath;-><init>()V

    iput-object v0, p0, Lcn/hutool/core/net/url/UrlBuilder;->path:Lcn/hutool/core/net/url/UrlPath;

    .line 398
    :cond_1
    iget-object v0, p0, Lcn/hutool/core/net/url/UrlBuilder;->path:Lcn/hutool/core/net/url/UrlPath;

    invoke-virtual {v0, p1}, Lcn/hutool/core/net/url/UrlPath;->add(Ljava/lang/CharSequence;)Lcn/hutool/core/net/url/UrlPath;

    return-object p0
.end method

.method public addQuery(Ljava/lang/String;Ljava/lang/Object;)Lcn/hutool/core/net/url/UrlBuilder;
    .locals 1

    .line 452
    invoke-static {p1}, Lcn/hutool/core/util/StrUtil;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 456
    :cond_0
    iget-object v0, p0, Lcn/hutool/core/net/url/UrlBuilder;->query:Lcn/hutool/core/net/url/UrlQuery;

    if-nez v0, :cond_1

    .line 457
    new-instance v0, Lcn/hutool/core/net/url/UrlQuery;

    invoke-direct {v0}, Lcn/hutool/core/net/url/UrlQuery;-><init>()V

    iput-object v0, p0, Lcn/hutool/core/net/url/UrlBuilder;->query:Lcn/hutool/core/net/url/UrlQuery;

    .line 459
    :cond_1
    iget-object v0, p0, Lcn/hutool/core/net/url/UrlBuilder;->query:Lcn/hutool/core/net/url/UrlQuery;

    invoke-virtual {v0, p1, p2}, Lcn/hutool/core/net/url/UrlQuery;->add(Ljava/lang/CharSequence;Ljava/lang/Object;)Lcn/hutool/core/net/url/UrlQuery;

    return-object p0
.end method

.method public appendPath(Ljava/lang/CharSequence;)Lcn/hutool/core/net/url/UrlBuilder;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 411
    invoke-virtual {p0, p1}, Lcn/hutool/core/net/url/UrlBuilder;->addPath(Ljava/lang/CharSequence;)Lcn/hutool/core/net/url/UrlBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic build()Ljava/lang/Object;
    .locals 1

    .line 29
    invoke-virtual {p0}, Lcn/hutool/core/net/url/UrlBuilder;->build()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public build()Ljava/lang/String;
    .locals 1

    .line 523
    invoke-virtual {p0}, Lcn/hutool/core/net/url/UrlBuilder;->toURL()Ljava/net/URL;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAuthority()Ljava/lang/String;
    .locals 2

    .line 325
    iget v0, p0, Lcn/hutool/core/net/url/UrlBuilder;->port:I

    if-gez v0, :cond_0

    iget-object v0, p0, Lcn/hutool/core/net/url/UrlBuilder;->host:Ljava/lang/String;

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcn/hutool/core/net/url/UrlBuilder;->host:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcn/hutool/core/net/url/UrlBuilder;->port:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getCharset()Ljava/nio/charset/Charset;
    .locals 1

    .line 502
    iget-object v0, p0, Lcn/hutool/core/net/url/UrlBuilder;->charset:Ljava/nio/charset/Charset;

    return-object v0
.end method

.method public getFragment()Ljava/lang/String;
    .locals 1

    .line 469
    iget-object v0, p0, Lcn/hutool/core/net/url/UrlBuilder;->fragment:Ljava/lang/String;

    return-object v0
.end method

.method public getFragmentEncoded()Ljava/lang/String;
    .locals 4

    .line 478
    iget-boolean v0, p0, Lcn/hutool/core/net/url/UrlBuilder;->needEncodePercent:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [C

    const/4 v1, 0x0

    const/16 v2, 0x25

    aput-char v2, v0, v1

    .line 479
    :goto_0
    sget-object v1, Lcn/hutool/core/net/RFC3986;->FRAGMENT:Lcn/hutool/core/codec/PercentCodec;

    iget-object v2, p0, Lcn/hutool/core/net/url/UrlBuilder;->fragment:Ljava/lang/String;

    iget-object v3, p0, Lcn/hutool/core/net/url/UrlBuilder;->charset:Ljava/nio/charset/Charset;

    invoke-virtual {v1, v2, v3, v0}, Lcn/hutool/core/codec/PercentCodec;->encode(Ljava/lang/CharSequence;Ljava/nio/charset/Charset;[C)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHost()Ljava/lang/String;
    .locals 1

    .line 271
    iget-object v0, p0, Lcn/hutool/core/net/url/UrlBuilder;->host:Ljava/lang/String;

    return-object v0
.end method

.method public getPath()Lcn/hutool/core/net/url/UrlPath;
    .locals 1

    .line 334
    iget-object v0, p0, Lcn/hutool/core/net/url/UrlBuilder;->path:Lcn/hutool/core/net/url/UrlPath;

    return-object v0
.end method

.method public getPathStr()Ljava/lang/String;
    .locals 3

    .line 343
    iget-object v0, p0, Lcn/hutool/core/net/url/UrlBuilder;->path:Lcn/hutool/core/net/url/UrlPath;

    if-nez v0, :cond_0

    const-string v0, "/"

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcn/hutool/core/net/url/UrlBuilder;->charset:Ljava/nio/charset/Charset;

    iget-boolean v2, p0, Lcn/hutool/core/net/url/UrlBuilder;->needEncodePercent:Z

    invoke-virtual {v0, v1, v2}, Lcn/hutool/core/net/url/UrlPath;->build(Ljava/nio/charset/Charset;Z)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getPort()I
    .locals 1

    .line 291
    iget v0, p0, Lcn/hutool/core/net/url/UrlBuilder;->port:I

    return v0
.end method

.method public getPortWithDefault()I
    .locals 1

    .line 300
    invoke-virtual {p0}, Lcn/hutool/core/net/url/UrlBuilder;->getPort()I

    move-result v0

    if-lez v0, :cond_0

    return v0

    .line 304
    :cond_0
    invoke-virtual {p0}, Lcn/hutool/core/net/url/UrlBuilder;->toURL()Ljava/net/URL;

    move-result-object v0

    .line 305
    invoke-virtual {v0}, Ljava/net/URL;->getDefaultPort()I

    move-result v0

    return v0
.end method

.method public getQuery()Lcn/hutool/core/net/url/UrlQuery;
    .locals 1

    .line 421
    iget-object v0, p0, Lcn/hutool/core/net/url/UrlBuilder;->query:Lcn/hutool/core/net/url/UrlQuery;

    return-object v0
.end method

.method public getQueryStr()Ljava/lang/String;
    .locals 3

    .line 430
    iget-object v0, p0, Lcn/hutool/core/net/url/UrlBuilder;->query:Lcn/hutool/core/net/url/UrlQuery;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcn/hutool/core/net/url/UrlBuilder;->charset:Ljava/nio/charset/Charset;

    iget-boolean v2, p0, Lcn/hutool/core/net/url/UrlBuilder;->needEncodePercent:Z

    invoke-virtual {v0, v1, v2}, Lcn/hutool/core/net/url/UrlQuery;->build(Ljava/nio/charset/Charset;Z)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getScheme()Ljava/lang/String;
    .locals 1

    .line 242
    iget-object v0, p0, Lcn/hutool/core/net/url/UrlBuilder;->scheme:Ljava/lang/String;

    return-object v0
.end method

.method public getSchemeWithDefault()Ljava/lang/String;
    .locals 2

    .line 251
    iget-object v0, p0, Lcn/hutool/core/net/url/UrlBuilder;->scheme:Ljava/lang/String;

    const-string v1, "http"

    invoke-static {v0, v1}, Lcn/hutool/core/util/StrUtil;->emptyToDefault(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setCharset(Ljava/nio/charset/Charset;)Lcn/hutool/core/net/url/UrlBuilder;
    .locals 0

    .line 512
    iput-object p1, p0, Lcn/hutool/core/net/url/UrlBuilder;->charset:Ljava/nio/charset/Charset;

    return-object p0
.end method

.method public setFragment(Ljava/lang/String;)Lcn/hutool/core/net/url/UrlBuilder;
    .locals 1

    .line 489
    invoke-static {p1}, Lcn/hutool/core/util/StrUtil;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 490
    iput-object v0, p0, Lcn/hutool/core/net/url/UrlBuilder;->fragment:Ljava/lang/String;

    :cond_0
    const-string v0, "#"

    .line 492
    invoke-static {p1, v0}, Lcn/hutool/core/util/StrUtil;->removePrefix(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcn/hutool/core/net/url/UrlBuilder;->fragment:Ljava/lang/String;

    return-object p0
.end method

.method public setHost(Ljava/lang/String;)Lcn/hutool/core/net/url/UrlBuilder;
    .locals 0

    .line 281
    iput-object p1, p0, Lcn/hutool/core/net/url/UrlBuilder;->host:Ljava/lang/String;

    return-object p0
.end method

.method public setPath(Lcn/hutool/core/net/url/UrlPath;)Lcn/hutool/core/net/url/UrlBuilder;
    .locals 0

    .line 369
    iput-object p1, p0, Lcn/hutool/core/net/url/UrlBuilder;->path:Lcn/hutool/core/net/url/UrlPath;

    return-object p0
.end method

.method public setPort(I)Lcn/hutool/core/net/url/UrlBuilder;
    .locals 0

    .line 315
    iput p1, p0, Lcn/hutool/core/net/url/UrlBuilder;->port:I

    return-object p0
.end method

.method public setQuery(Lcn/hutool/core/net/url/UrlQuery;)Lcn/hutool/core/net/url/UrlBuilder;
    .locals 0

    .line 440
    iput-object p1, p0, Lcn/hutool/core/net/url/UrlBuilder;->query:Lcn/hutool/core/net/url/UrlQuery;

    return-object p0
.end method

.method public setScheme(Ljava/lang/String;)Lcn/hutool/core/net/url/UrlBuilder;
    .locals 0

    .line 261
    iput-object p1, p0, Lcn/hutool/core/net/url/UrlBuilder;->scheme:Ljava/lang/String;

    return-object p0
.end method

.method public setWithEndTag(Z)Lcn/hutool/core/net/url/UrlBuilder;
    .locals 1

    .line 354
    iget-object v0, p0, Lcn/hutool/core/net/url/UrlBuilder;->path:Lcn/hutool/core/net/url/UrlPath;

    if-nez v0, :cond_0

    .line 355
    new-instance v0, Lcn/hutool/core/net/url/UrlPath;

    invoke-direct {v0}, Lcn/hutool/core/net/url/UrlPath;-><init>()V

    iput-object v0, p0, Lcn/hutool/core/net/url/UrlBuilder;->path:Lcn/hutool/core/net/url/UrlPath;

    .line 358
    :cond_0
    iget-object v0, p0, Lcn/hutool/core/net/url/UrlBuilder;->path:Lcn/hutool/core/net/url/UrlPath;

    invoke-virtual {v0, p1}, Lcn/hutool/core/net/url/UrlPath;->setWithEndTag(Z)Lcn/hutool/core/net/url/UrlPath;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 580
    invoke-virtual {p0}, Lcn/hutool/core/net/url/UrlBuilder;->build()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toURI()Ljava/net/URI;
    .locals 1

    .line 572
    :try_start_0
    invoke-virtual {p0}, Lcn/hutool/core/net/url/UrlBuilder;->toURL()Ljava/net/URL;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URL;->toURI()Ljava/net/URI;

    move-result-object v0
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public toURL()Ljava/net/URL;
    .locals 1

    const/4 v0, 0x0

    .line 532
    invoke-virtual {p0, v0}, Lcn/hutool/core/net/url/UrlBuilder;->toURL(Ljava/net/URLStreamHandler;)Ljava/net/URL;

    move-result-object v0

    return-object v0
.end method

.method public toURL(Ljava/net/URLStreamHandler;)Ljava/net/URL;
    .locals 9

    .line 542
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 545
    invoke-virtual {p0}, Lcn/hutool/core/net/url/UrlBuilder;->getPathStr()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 548
    invoke-virtual {p0}, Lcn/hutool/core/net/url/UrlBuilder;->getQueryStr()Ljava/lang/String;

    move-result-object v1

    .line 549
    invoke-static {v1}, Lcn/hutool/core/util/StrUtil;->isNotBlank(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x3f

    .line 550
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 554
    :cond_0
    iget-object v1, p0, Lcn/hutool/core/net/url/UrlBuilder;->fragment:Ljava/lang/String;

    invoke-static {v1}, Lcn/hutool/core/util/StrUtil;->isNotBlank(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0x23

    .line 555
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcn/hutool/core/net/url/UrlBuilder;->getFragmentEncoded()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 559
    :cond_1
    :try_start_0
    new-instance v1, Ljava/net/URL;

    invoke-virtual {p0}, Lcn/hutool/core/net/url/UrlBuilder;->getSchemeWithDefault()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcn/hutool/core/net/url/UrlBuilder;->host:Ljava/lang/String;

    iget v6, p0, Lcn/hutool/core/net/url/UrlBuilder;->port:I

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object v3, v1

    move-object v8, p1

    invoke-direct/range {v3 .. v8}, Ljava/net/URL;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/net/URLStreamHandler;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    const/4 p1, 0x0

    return-object p1
.end method
