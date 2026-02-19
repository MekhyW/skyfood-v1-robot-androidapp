.class public Lcn/hutool/http/HttpResponse;
.super Lcn/hutool/http/HttpBase;
.source "HttpResponse.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/hutool/http/HttpBase<",
        "Lcn/hutool/http/HttpResponse;",
        ">;",
        "Ljava/io/Closeable;"
    }
.end annotation


# instance fields
.field private charsetFromResponse:Ljava/nio/charset/Charset;

.field protected config:Lcn/hutool/http/HttpConfig;

.field protected httpConnection:Lcn/hutool/http/HttpConnection;

.field private final ignoreBody:Z

.field protected in:Ljava/io/InputStream;

.field private volatile isAsync:Z

.field protected status:I


# direct methods
.method protected constructor <init>(Lcn/hutool/http/HttpConnection;Lcn/hutool/http/HttpConfig;Ljava/nio/charset/Charset;ZZ)V
    .locals 0

    .line 76
    invoke-direct {p0}, Lcn/hutool/http/HttpBase;-><init>()V

    .line 77
    iput-object p1, p0, Lcn/hutool/http/HttpResponse;->httpConnection:Lcn/hutool/http/HttpConnection;

    .line 78
    iput-object p2, p0, Lcn/hutool/http/HttpResponse;->config:Lcn/hutool/http/HttpConfig;

    .line 79
    iput-object p3, p0, Lcn/hutool/http/HttpResponse;->charset:Ljava/nio/charset/Charset;

    .line 80
    iput-boolean p4, p0, Lcn/hutool/http/HttpResponse;->isAsync:Z

    .line 81
    iput-boolean p5, p0, Lcn/hutool/http/HttpResponse;->ignoreBody:Z

    .line 82
    invoke-direct {p0}, Lcn/hutool/http/HttpResponse;->initWithDisconnect()Lcn/hutool/http/HttpResponse;

    return-void
.end method

.method private static copyBody(Ljava/io/InputStream;Ljava/io/OutputStream;JLcn/hutool/core/io/StreamProgress;Z)J
    .locals 6

    if-eqz p1, :cond_2

    const/16 v2, 0x2000

    move-object v0, p0

    move-object v1, p1

    move-wide v3, p2

    move-object v5, p4

    .line 631
    :try_start_0
    invoke-static/range {v0 .. v5}, Lcn/hutool/core/io/IoUtil;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;IJLcn/hutool/core/io/StreamProgress;)J

    move-result-wide p0
    :try_end_0
    .catch Lcn/hutool/core/io/IORuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    if-eqz p5, :cond_1

    .line 635
    invoke-virtual {p0}, Lcn/hutool/core/io/IORuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    instance-of p1, p1, Ljava/io/EOFException;

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcn/hutool/core/io/IORuntimeException;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Premature EOF"

    invoke-static {p1, p2}, Lcn/hutool/core/util/StrUtil;->containsIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    const-wide/16 p0, -0x1

    :goto_0
    return-wide p0

    .line 638
    :cond_1
    throw p0

    .line 626
    :cond_2
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "[out] is null!"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private forceSync()Lcn/hutool/http/HttpResponse;
    .locals 3

    const/4 v0, 0x0

    .line 578
    :try_start_0
    iget-object v1, p0, Lcn/hutool/http/HttpResponse;->in:Ljava/io/InputStream;

    invoke-direct {p0, v1}, Lcn/hutool/http/HttpResponse;->readBody(Ljava/io/InputStream;)V
    :try_end_0
    .catch Lcn/hutool/core/io/IORuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 587
    iget-boolean v1, p0, Lcn/hutool/http/HttpResponse;->isAsync:Z

    if-eqz v1, :cond_0

    .line 588
    :goto_0
    iput-boolean v0, p0, Lcn/hutool/http/HttpResponse;->isAsync:Z

    .line 590
    :cond_0
    invoke-virtual {p0}, Lcn/hutool/http/HttpResponse;->close()V

    goto :goto_1

    :catchall_0
    move-exception v1

    goto :goto_2

    :catch_0
    move-exception v1

    .line 581
    :try_start_1
    invoke-virtual {v1}, Lcn/hutool/core/io/IORuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    instance-of v2, v2, Ljava/io/FileNotFoundException;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_1

    .line 587
    iget-boolean v1, p0, Lcn/hutool/http/HttpResponse;->isAsync:Z

    if-eqz v1, :cond_0

    goto :goto_0

    :goto_1
    return-object p0

    .line 584
    :cond_1
    :try_start_2
    new-instance v2, Lcn/hutool/http/HttpException;

    invoke-direct {v2, v1}, Lcn/hutool/http/HttpException;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 587
    :goto_2
    iget-boolean v2, p0, Lcn/hutool/http/HttpResponse;->isAsync:Z

    if-eqz v2, :cond_2

    .line 588
    iput-boolean v0, p0, Lcn/hutool/http/HttpResponse;->isAsync:Z

    .line 590
    :cond_2
    invoke-virtual {p0}, Lcn/hutool/http/HttpResponse;->close()V

    .line 591
    throw v1
.end method

.method private init()Lcn/hutool/http/HttpResponse;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/hutool/http/HttpException;
        }
    .end annotation

    .line 528
    :try_start_0
    iget-object v0, p0, Lcn/hutool/http/HttpResponse;->httpConnection:Lcn/hutool/http/HttpConnection;

    invoke-virtual {v0}, Lcn/hutool/http/HttpConnection;->responseCode()I

    move-result v0

    iput v0, p0, Lcn/hutool/http/HttpResponse;->status:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 530
    instance-of v1, v0, Ljava/io/FileNotFoundException;

    if-eqz v1, :cond_2

    .line 539
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcn/hutool/http/HttpResponse;->httpConnection:Lcn/hutool/http/HttpConnection;

    invoke-virtual {v0}, Lcn/hutool/http/HttpConnection;->headers()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcn/hutool/http/HttpResponse;->headers:Ljava/util/Map;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    .line 546
    :catch_1
    iget-object v0, p0, Lcn/hutool/http/HttpResponse;->httpConnection:Lcn/hutool/http/HttpConnection;

    invoke-static {v0}, Lcn/hutool/http/cookie/GlobalCookieManager;->store(Lcn/hutool/http/HttpConnection;)V

    .line 549
    iget-object v0, p0, Lcn/hutool/http/HttpResponse;->httpConnection:Lcn/hutool/http/HttpConnection;

    invoke-virtual {v0}, Lcn/hutool/http/HttpConnection;->getCharset()Ljava/nio/charset/Charset;

    move-result-object v0

    .line 550
    iput-object v0, p0, Lcn/hutool/http/HttpResponse;->charsetFromResponse:Ljava/nio/charset/Charset;

    if-eqz v0, :cond_0

    .line 552
    iput-object v0, p0, Lcn/hutool/http/HttpResponse;->charset:Ljava/nio/charset/Charset;

    .line 556
    :cond_0
    new-instance v0, Lcn/hutool/http/HttpInputStream;

    invoke-direct {v0, p0}, Lcn/hutool/http/HttpInputStream;-><init>(Lcn/hutool/http/HttpResponse;)V

    iput-object v0, p0, Lcn/hutool/http/HttpResponse;->in:Ljava/io/InputStream;

    .line 559
    iget-boolean v0, p0, Lcn/hutool/http/HttpResponse;->isAsync:Z

    if-eqz v0, :cond_1

    move-object v0, p0

    goto :goto_1

    :cond_1
    invoke-direct {p0}, Lcn/hutool/http/HttpResponse;->forceSync()Lcn/hutool/http/HttpResponse;

    move-result-object v0

    :goto_1
    return-object v0

    .line 531
    :cond_2
    new-instance v1, Lcn/hutool/http/HttpException;

    invoke-direct {v1, v0}, Lcn/hutool/http/HttpException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private initWithDisconnect()Lcn/hutool/http/HttpResponse;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/hutool/http/HttpException;
        }
    .end annotation

    .line 504
    :try_start_0
    invoke-direct {p0}, Lcn/hutool/http/HttpResponse;->init()Lcn/hutool/http/HttpResponse;
    :try_end_0
    .catch Lcn/hutool/http/HttpException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception v0

    .line 506
    iget-object v1, p0, Lcn/hutool/http/HttpResponse;->httpConnection:Lcn/hutool/http/HttpConnection;

    invoke-virtual {v1}, Lcn/hutool/http/HttpConnection;->disconnectQuietly()Lcn/hutool/http/HttpConnection;

    .line 507
    throw v0
.end method

.method private readBody(Ljava/io/InputStream;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/hutool/core/io/IORuntimeException;
        }
    .end annotation

    .line 602
    iget-boolean v0, p0, Lcn/hutool/http/HttpResponse;->ignoreBody:Z

    if-eqz v0, :cond_0

    return-void

    .line 606
    :cond_0
    invoke-virtual {p0}, Lcn/hutool/http/HttpResponse;->contentLength()J

    move-result-wide v3

    .line 607
    new-instance v0, Lcn/hutool/core/io/FastByteArrayOutputStream;

    long-to-int v1, v3

    invoke-direct {v0, v1}, Lcn/hutool/core/io/FastByteArrayOutputStream;-><init>(I)V

    const/4 v5, 0x0

    .line 608
    iget-object v1, p0, Lcn/hutool/http/HttpResponse;->config:Lcn/hutool/http/HttpConfig;

    iget-boolean v6, v1, Lcn/hutool/http/HttpConfig;->ignoreEOFError:Z

    move-object v1, p1

    move-object v2, v0

    invoke-static/range {v1 .. v6}, Lcn/hutool/http/HttpResponse;->copyBody(Ljava/io/InputStream;Ljava/io/OutputStream;JLcn/hutool/core/io/StreamProgress;Z)J

    .line 609
    new-instance p1, Lcn/hutool/core/io/resource/BytesResource;

    invoke-virtual {v0}, Lcn/hutool/core/io/FastByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-direct {p1, v0}, Lcn/hutool/core/io/resource/BytesResource;-><init>([B)V

    iput-object p1, p0, Lcn/hutool/http/HttpResponse;->body:Lcn/hutool/core/io/resource/Resource;

    return-void
.end method


# virtual methods
.method public body([B)Lcn/hutool/http/HttpResponse;
    .locals 1

    .line 267
    invoke-virtual {p0}, Lcn/hutool/http/HttpResponse;->sync()Lcn/hutool/http/HttpResponse;

    if-eqz p1, :cond_0

    .line 269
    new-instance v0, Lcn/hutool/core/io/resource/BytesResource;

    invoke-direct {v0, p1}, Lcn/hutool/core/io/resource/BytesResource;-><init>([B)V

    iput-object v0, p0, Lcn/hutool/http/HttpResponse;->body:Lcn/hutool/core/io/resource/Resource;

    :cond_0
    return-object p0
.end method

.method public body()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/hutool/http/HttpException;
        }
    .end annotation

    .line 281
    invoke-virtual {p0}, Lcn/hutool/http/HttpResponse;->bodyBytes()[B

    move-result-object v0

    iget-object v1, p0, Lcn/hutool/http/HttpResponse;->charset:Ljava/nio/charset/Charset;

    iget-object v2, p0, Lcn/hutool/http/HttpResponse;->charsetFromResponse:Ljava/nio/charset/Charset;

    if-nez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-static {v0, v1, v2}, Lcn/hutool/http/HttpUtil;->getString([BLjava/nio/charset/Charset;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bodyBytes()[B
    .locals 1

    .line 255
    invoke-virtual {p0}, Lcn/hutool/http/HttpResponse;->sync()Lcn/hutool/http/HttpResponse;

    .line 256
    invoke-super {p0}, Lcn/hutool/http/HttpBase;->bodyBytes()[B

    move-result-object v0

    return-object v0
.end method

.method public bodyStream()Ljava/io/InputStream;
    .locals 1

    .line 241
    iget-boolean v0, p0, Lcn/hutool/http/HttpResponse;->isAsync:Z

    if-eqz v0, :cond_0

    .line 242
    iget-object v0, p0, Lcn/hutool/http/HttpResponse;->in:Ljava/io/InputStream;

    return-object v0

    .line 244
    :cond_0
    iget-object v0, p0, Lcn/hutool/http/HttpResponse;->body:Lcn/hutool/core/io/resource/Resource;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcn/hutool/http/HttpResponse;->body:Lcn/hutool/core/io/resource/Resource;

    invoke-interface {v0}, Lcn/hutool/core/io/resource/Resource;->getStream()Ljava/io/InputStream;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public close()V
    .locals 1

    .line 418
    iget-object v0, p0, Lcn/hutool/http/HttpResponse;->in:Ljava/io/InputStream;

    invoke-static {v0}, Lcn/hutool/core/io/IoUtil;->close(Ljava/io/Closeable;)V

    const/4 v0, 0x0

    .line 419
    iput-object v0, p0, Lcn/hutool/http/HttpResponse;->in:Ljava/io/InputStream;

    .line 421
    iget-object v0, p0, Lcn/hutool/http/HttpResponse;->httpConnection:Lcn/hutool/http/HttpConnection;

    invoke-virtual {v0}, Lcn/hutool/http/HttpConnection;->disconnectQuietly()Lcn/hutool/http/HttpConnection;

    return-void
.end method

.method public completeFileNameFromHeader(Ljava/io/File;)Ljava/io/File;
    .locals 3

    .line 446
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_0

    return-object p1

    :cond_0
    const/4 v0, 0x0

    .line 452
    invoke-virtual {p0, v0}, Lcn/hutool/http/HttpResponse;->getFileNameFromDisposition(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 453
    invoke-static {v0}, Lcn/hutool/core/util/StrUtil;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 454
    iget-object v0, p0, Lcn/hutool/http/HttpResponse;->httpConnection:Lcn/hutool/http/HttpConnection;

    invoke-virtual {v0}, Lcn/hutool/http/HttpConnection;->getUrl()Ljava/net/URL;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x2f

    .line 456
    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcn/hutool/core/util/StrUtil;->subSuf(Ljava/lang/CharSequence;I)Ljava/lang/String;

    move-result-object v1

    .line 457
    invoke-static {v1}, Lcn/hutool/core/util/StrUtil;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 459
    iget-object v1, p0, Lcn/hutool/http/HttpResponse;->charset:Ljava/nio/charset/Charset;

    invoke-static {v0, v1}, Lcn/hutool/core/util/URLUtil;->encodeQuery(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 462
    :cond_1
    iget-object v0, p0, Lcn/hutool/http/HttpResponse;->charset:Ljava/nio/charset/Charset;

    invoke-static {v1, v0}, Lcn/hutool/core/util/URLUtil;->decode(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    .line 465
    :cond_2
    :goto_0
    invoke-static {p1, v0}, Lcn/hutool/core/io/FileUtil;->file(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    return-object p1
.end method

.method public contentEncoding()Ljava/lang/String;
    .locals 1

    .line 123
    sget-object v0, Lcn/hutool/http/Header;->CONTENT_ENCODING:Lcn/hutool/http/Header;

    invoke-virtual {p0, v0}, Lcn/hutool/http/HttpResponse;->header(Lcn/hutool/http/Header;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public contentLength()J
    .locals 7

    .line 138
    sget-object v0, Lcn/hutool/http/Header;->CONTENT_LENGTH:Lcn/hutool/http/Header;

    invoke-virtual {p0, v0}, Lcn/hutool/http/HttpResponse;->header(Lcn/hutool/http/Header;)Ljava/lang/String;

    move-result-object v0

    const-wide/16 v1, -0x1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v0, v3}, Lcn/hutool/core/convert/Convert;->toLong(Ljava/lang/Object;Ljava/lang/Long;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-lez v0, :cond_0

    .line 139
    invoke-virtual {p0}, Lcn/hutool/http/HttpResponse;->isChunked()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcn/hutool/http/HttpResponse;->contentEncoding()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/hutool/core/util/StrUtil;->isNotBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move-wide v1, v3

    :cond_1
    :goto_0
    return-wide v1
.end method

.method public getCookie(Ljava/lang/String;)Ljava/net/HttpCookie;
    .locals 3

    .line 206
    invoke-virtual {p0}, Lcn/hutool/http/HttpResponse;->getCookies()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 208
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/HttpCookie;

    .line 209
    invoke-virtual {v1}, Ljava/net/HttpCookie;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getCookieStr()Ljava/lang/String;
    .locals 1

    .line 185
    sget-object v0, Lcn/hutool/http/Header;->SET_COOKIE:Lcn/hutool/http/Header;

    invoke-virtual {p0, v0}, Lcn/hutool/http/HttpResponse;->header(Lcn/hutool/http/Header;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCookieValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 225
    invoke-virtual {p0, p1}, Lcn/hutool/http/HttpResponse;->getCookie(Ljava/lang/String;)Ljava/net/HttpCookie;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 226
    :cond_0
    invoke-virtual {p1}, Ljava/net/HttpCookie;->getValue()Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public getCookies()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/net/HttpCookie;",
            ">;"
        }
    .end annotation

    .line 195
    iget-object v0, p0, Lcn/hutool/http/HttpResponse;->httpConnection:Lcn/hutool/http/HttpConnection;

    invoke-static {v0}, Lcn/hutool/http/cookie/GlobalCookieManager;->getCookies(Lcn/hutool/http/HttpConnection;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getFileNameFromDisposition(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const-string v0, "filename"

    .line 475
    invoke-static {p1, v0}, Lcn/hutool/core/util/ObjUtil;->defaultIfNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 477
    sget-object v0, Lcn/hutool/http/Header;->CONTENT_DISPOSITION:Lcn/hutool/http/Header;

    invoke-virtual {p0, v0}, Lcn/hutool/http/HttpResponse;->header(Lcn/hutool/http/Header;)Ljava/lang/String;

    move-result-object v0

    .line 478
    invoke-static {v0}, Lcn/hutool/core/util/StrUtil;->isNotBlank(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 479
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "=\"(.*?)\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Lcn/hutool/core/util/ReUtil;->get(Ljava/lang/String;Ljava/lang/CharSequence;I)Ljava/lang/String;

    move-result-object v1

    .line 480
    invoke-static {v1}, Lcn/hutool/core/util/StrUtil;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 481
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, v2}, Lcn/hutool/core/util/StrUtil;->subAfter(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return-object v1
.end method

.method public getStatus()I
    .locals 1

    .line 91
    iget v0, p0, Lcn/hutool/http/HttpResponse;->status:I

    return v0
.end method

.method public isChunked()Z
    .locals 2

    .line 174
    sget-object v0, Lcn/hutool/http/Header;->TRANSFER_ENCODING:Lcn/hutool/http/Header;

    invoke-virtual {p0, v0}, Lcn/hutool/http/HttpResponse;->header(Lcn/hutool/http/Header;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Chunked"

    .line 175
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isDeflate()Z
    .locals 2

    .line 163
    invoke-virtual {p0}, Lcn/hutool/http/HttpResponse;->contentEncoding()Ljava/lang/String;

    move-result-object v0

    const-string v1, "deflate"

    .line 164
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isGzip()Z
    .locals 2

    .line 152
    invoke-virtual {p0}, Lcn/hutool/http/HttpResponse;->contentEncoding()Ljava/lang/String;

    move-result-object v0

    const-string v1, "gzip"

    .line 153
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isOk()Z
    .locals 2

    .line 101
    iget v0, p0, Lcn/hutool/http/HttpResponse;->status:I

    const/16 v1, 0xc8

    if-lt v0, v1, :cond_0

    const/16 v1, 0x12c

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public sync()Lcn/hutool/http/HttpResponse;
    .locals 1

    .line 112
    iget-boolean v0, p0, Lcn/hutool/http/HttpResponse;->isAsync:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcn/hutool/http/HttpResponse;->forceSync()Lcn/hutool/http/HttpResponse;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, p0

    :goto_0
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 426
    invoke-static {}, Lcn/hutool/core/util/StrUtil;->builder()Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Response Headers: "

    .line 427
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\r\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 428
    iget-object v1, p0, Lcn/hutool/http/HttpResponse;->headers:Ljava/util/Map;

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

    .line 429
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    const-string v1, "Response Body: "

    .line 432
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 433
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcn/hutool/http/HttpResponse;->body()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 435
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeBody(Ljava/io/File;)J
    .locals 2

    const/4 v0, 0x0

    .line 399
    invoke-virtual {p0, p1, v0}, Lcn/hutool/http/HttpResponse;->writeBody(Ljava/io/File;Lcn/hutool/core/io/StreamProgress;)J

    move-result-wide v0

    return-wide v0
.end method

.method public writeBody(Ljava/io/File;Lcn/hutool/core/io/StreamProgress;)J
    .locals 2

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "[targetFileOrDir] must be not null!"

    .line 319
    invoke-static {p1, v1, v0}, Lcn/hutool/core/lang/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 321
    invoke-virtual {p0, p1}, Lcn/hutool/http/HttpResponse;->completeFileNameFromHeader(Ljava/io/File;)Ljava/io/File;

    move-result-object p1

    .line 322
    invoke-static {p1}, Lcn/hutool/core/io/FileUtil;->getOutputStream(Ljava/io/File;)Ljava/io/BufferedOutputStream;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0, p2}, Lcn/hutool/http/HttpResponse;->writeBody(Ljava/io/OutputStream;ZLcn/hutool/core/io/StreamProgress;)J

    move-result-wide p1

    return-wide p1
.end method

.method public writeBody(Ljava/io/File;Ljava/lang/String;Lcn/hutool/core/io/StreamProgress;)J
    .locals 2

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "[targetFileOrDir] must be not null!"

    .line 339
    invoke-static {p1, v1, v0}, Lcn/hutool/core/lang/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 341
    invoke-virtual {p0, p1}, Lcn/hutool/http/HttpResponse;->completeFileNameFromHeader(Ljava/io/File;)Ljava/io/File;

    move-result-object p1

    .line 343
    invoke-static {p2}, Lcn/hutool/core/util/StrUtil;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p2, ".temp"

    goto :goto_0

    :cond_0
    const-string v0, "."

    .line 346
    invoke-static {p2, v0}, Lcn/hutool/core/util/StrUtil;->addPrefixIfNot(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    .line 350
    :goto_0
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    .line 352
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 355
    new-instance v1, Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p1

    invoke-direct {v1, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 359
    :try_start_0
    invoke-virtual {p0, v1, p3}, Lcn/hutool/http/HttpResponse;->writeBody(Ljava/io/File;Lcn/hutool/core/io/StreamProgress;)J

    move-result-wide p1

    const/4 p3, 0x1

    .line 361
    invoke-static {v1, v0, p3}, Lcn/hutool/core/io/FileUtil;->rename(Ljava/io/File;Ljava/lang/String;Z)Ljava/io/File;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-wide p1

    :catchall_0
    move-exception p1

    .line 364
    invoke-static {v1}, Lcn/hutool/core/io/FileUtil;->del(Ljava/io/File;)Z

    .line 365
    new-instance p2, Lcn/hutool/http/HttpException;

    invoke-direct {p2, p1}, Lcn/hutool/http/HttpException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public writeBody(Ljava/io/OutputStream;ZLcn/hutool/core/io/StreamProgress;)J
    .locals 8

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "[out] must be not null!"

    .line 296
    invoke-static {p1, v1, v0}, Lcn/hutool/core/lang/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 297
    invoke-virtual {p0}, Lcn/hutool/http/HttpResponse;->contentLength()J

    move-result-wide v4

    .line 299
    :try_start_0
    invoke-virtual {p0}, Lcn/hutool/http/HttpResponse;->bodyStream()Ljava/io/InputStream;

    move-result-object v2

    iget-object v0, p0, Lcn/hutool/http/HttpResponse;->config:Lcn/hutool/http/HttpConfig;

    iget-boolean v7, v0, Lcn/hutool/http/HttpConfig;->ignoreEOFError:Z

    move-object v3, p1

    move-object v6, p3

    invoke-static/range {v2 .. v7}, Lcn/hutool/http/HttpResponse;->copyBody(Ljava/io/InputStream;Ljava/io/OutputStream;JLcn/hutool/core/io/StreamProgress;Z)J

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 301
    invoke-static {p0}, Lcn/hutool/core/io/IoUtil;->close(Ljava/io/Closeable;)V

    if-eqz p2, :cond_0

    .line 303
    invoke-static {p1}, Lcn/hutool/core/io/IoUtil;->close(Ljava/io/Closeable;)V

    :cond_0
    return-wide v0

    :catchall_0
    move-exception p3

    .line 301
    invoke-static {p0}, Lcn/hutool/core/io/IoUtil;->close(Ljava/io/Closeable;)V

    if-eqz p2, :cond_1

    .line 303
    invoke-static {p1}, Lcn/hutool/core/io/IoUtil;->close(Ljava/io/Closeable;)V

    .line 305
    :cond_1
    throw p3
.end method

.method public writeBody(Ljava/lang/String;)J
    .locals 2

    .line 412
    invoke-static {p1}, Lcn/hutool/core/io/FileUtil;->file(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcn/hutool/http/HttpResponse;->writeBody(Ljava/io/File;)J

    move-result-wide v0

    return-wide v0
.end method

.method public writeBodyForFile(Ljava/io/File;Lcn/hutool/core/io/StreamProgress;)Ljava/io/File;
    .locals 2

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "[targetFileOrDir] must be not null!"

    .line 381
    invoke-static {p1, v1, v0}, Lcn/hutool/core/lang/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 383
    invoke-virtual {p0, p1}, Lcn/hutool/http/HttpResponse;->completeFileNameFromHeader(Ljava/io/File;)Ljava/io/File;

    move-result-object p1

    .line 384
    invoke-static {p1}, Lcn/hutool/core/io/FileUtil;->getOutputStream(Ljava/io/File;)Ljava/io/BufferedOutputStream;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1, p2}, Lcn/hutool/http/HttpResponse;->writeBody(Ljava/io/OutputStream;ZLcn/hutool/core/io/StreamProgress;)J

    return-object p1
.end method
