.class public Lcn/hutool/http/HttpDownloader;
.super Ljava/lang/Object;
.source "HttpDownloader.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static download(Ljava/lang/String;Ljava/io/OutputStream;ZLcn/hutool/core/io/StreamProgress;)J
    .locals 2

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "[out] is null !"

    .line 96
    invoke-static {p1, v1, v0}, Lcn/hutool/core/lang/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, -0x1

    .line 98
    invoke-static {p0, v0}, Lcn/hutool/http/HttpDownloader;->requestDownload(Ljava/lang/String;I)Lcn/hutool/http/HttpResponse;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3}, Lcn/hutool/http/HttpResponse;->writeBody(Ljava/io/OutputStream;ZLcn/hutool/core/io/StreamProgress;)J

    move-result-wide p0

    return-wide p0
.end method

.method public static downloadBytes(Ljava/lang/String;)[B
    .locals 1

    const/4 v0, -0x1

    .line 40
    invoke-static {p0, v0}, Lcn/hutool/http/HttpDownloader;->requestDownload(Ljava/lang/String;I)Lcn/hutool/http/HttpResponse;

    move-result-object p0

    invoke-virtual {p0}, Lcn/hutool/http/HttpResponse;->bodyBytes()[B

    move-result-object p0

    return-object p0
.end method

.method public static downloadFile(Ljava/lang/String;Ljava/io/File;ILcn/hutool/core/io/StreamProgress;)J
    .locals 0

    .line 53
    invoke-static {p0, p2}, Lcn/hutool/http/HttpDownloader;->requestDownload(Ljava/lang/String;I)Lcn/hutool/http/HttpResponse;

    move-result-object p0

    invoke-virtual {p0, p1, p3}, Lcn/hutool/http/HttpResponse;->writeBody(Ljava/io/File;Lcn/hutool/core/io/StreamProgress;)J

    move-result-wide p0

    return-wide p0
.end method

.method public static downloadFile(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;ILcn/hutool/core/io/StreamProgress;)J
    .locals 0

    .line 70
    invoke-static {p0, p3}, Lcn/hutool/http/HttpDownloader;->requestDownload(Ljava/lang/String;I)Lcn/hutool/http/HttpResponse;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p4}, Lcn/hutool/http/HttpResponse;->writeBody(Ljava/io/File;Ljava/lang/String;Lcn/hutool/core/io/StreamProgress;)J

    move-result-wide p0

    return-wide p0
.end method

.method public static downloadForFile(Ljava/lang/String;Ljava/io/File;ILcn/hutool/core/io/StreamProgress;)Ljava/io/File;
    .locals 0

    .line 83
    invoke-static {p0, p2}, Lcn/hutool/http/HttpDownloader;->requestDownload(Ljava/lang/String;I)Lcn/hutool/http/HttpResponse;

    move-result-object p0

    invoke-virtual {p0, p1, p3}, Lcn/hutool/http/HttpResponse;->writeBodyForFile(Ljava/io/File;Lcn/hutool/core/io/StreamProgress;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public static downloadString(Ljava/lang/String;Ljava/nio/charset/Charset;Lcn/hutool/core/io/StreamProgress;)Ljava/lang/String;
    .locals 2

    .line 28
    new-instance v0, Lcn/hutool/core/io/FastByteArrayOutputStream;

    invoke-direct {v0}, Lcn/hutool/core/io/FastByteArrayOutputStream;-><init>()V

    const/4 v1, 0x1

    .line 29
    invoke-static {p0, v0, v1, p2}, Lcn/hutool/http/HttpDownloader;->download(Ljava/lang/String;Ljava/io/OutputStream;ZLcn/hutool/core/io/StreamProgress;)J

    if-nez p1, :cond_0

    .line 30
    invoke-virtual {v0}, Lcn/hutool/core/io/FastByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lcn/hutool/core/io/FastByteArrayOutputStream;->toString(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private static requestDownload(Ljava/lang/String;I)Lcn/hutool/http/HttpResponse;
    .locals 3

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "[url] is blank !"

    .line 110
    invoke-static {p0, v2, v1}, Lcn/hutool/core/lang/Assert;->notBlank(Ljava/lang/CharSequence;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/CharSequence;

    const/4 v1, 0x1

    .line 112
    invoke-static {p0, v1}, Lcn/hutool/http/HttpUtil;->createGet(Ljava/lang/String;Z)Lcn/hutool/http/HttpRequest;

    move-result-object p0

    .line 113
    invoke-virtual {p0, p1}, Lcn/hutool/http/HttpRequest;->timeout(I)Lcn/hutool/http/HttpRequest;

    move-result-object p0

    .line 114
    invoke-virtual {p0}, Lcn/hutool/http/HttpRequest;->executeAsync()Lcn/hutool/http/HttpResponse;

    move-result-object p0

    .line 116
    invoke-virtual {p0}, Lcn/hutool/http/HttpResponse;->isOk()Z

    move-result p1

    if-eqz p1, :cond_0

    return-object p0

    .line 120
    :cond_0
    new-instance p1, Lcn/hutool/http/HttpException;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcn/hutool/http/HttpResponse;->getStatus()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v1, v0

    const-string p0, "Server response error with status code: [{}]"

    invoke-direct {p1, p0, v1}, Lcn/hutool/http/HttpException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p1
.end method
