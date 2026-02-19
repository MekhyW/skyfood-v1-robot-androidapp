.class public Lcom/autoxing/delivery/download/lib/DownloadTask;
.super Ljava/lang/Object;
.source "DownloadTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final TAG:Ljava/lang/String; = "DownloadTask"


# instance fields
.field private downSize:J

.field private filePath:Ljava/lang/String;

.field private fileSize:J

.field private isRunning:Z

.field private listener:Lcom/autoxing/delivery/download/lib/OnDownloadListener;

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;JLcom/autoxing/delivery/download/lib/OnDownloadListener;)V
    .locals 2

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 27
    iput-boolean v0, p0, Lcom/autoxing/delivery/download/lib/DownloadTask;->isRunning:Z

    .line 29
    iput-object p1, p0, Lcom/autoxing/delivery/download/lib/DownloadTask;->url:Ljava/lang/String;

    .line 30
    iput-object p2, p0, Lcom/autoxing/delivery/download/lib/DownloadTask;->filePath:Ljava/lang/String;

    .line 31
    iput-wide p3, p0, Lcom/autoxing/delivery/download/lib/DownloadTask;->fileSize:J

    .line 32
    iput-object p5, p0, Lcom/autoxing/delivery/download/lib/DownloadTask;->listener:Lcom/autoxing/delivery/download/lib/OnDownloadListener;

    .line 34
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 35
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/autoxing/delivery/download/lib/DownloadTask;->downSize:J

    cmp-long p2, v0, p3

    if-lez p2, :cond_0

    .line 38
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    const-wide/16 p1, 0x0

    .line 39
    iput-wide p1, p0, Lcom/autoxing/delivery/download/lib/DownloadTask;->downSize:J

    :cond_0
    return-void
.end method

.method private beginDownload(Ljava/io/File;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 112
    invoke-direct {p0}, Lcom/autoxing/delivery/download/lib/DownloadTask;->onDownloading()V

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 113
    iget-wide v1, p0, Lcom/autoxing/delivery/download/lib/DownloadTask;->downSize:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-wide v3, p0, Lcom/autoxing/delivery/download/lib/DownloadTask;->fileSize:J

    const-wide/16 v5, 0x1

    sub-long/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v0, v3

    const-string v1, "bytes=%d-%d"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 115
    iget-object v1, p0, Lcom/autoxing/delivery/download/lib/DownloadTask;->url:Ljava/lang/String;

    const-string v3, "local"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/autoxing/delivery/download/lib/DownloadTask;->createUnsafeOkHttpClient()Lokhttp3/OkHttpClient;

    move-result-object v1

    goto :goto_0

    :cond_0
    new-instance v1, Lokhttp3/OkHttpClient;

    invoke-direct {v1}, Lokhttp3/OkHttpClient;-><init>()V

    invoke-virtual {v1}, Lokhttp3/OkHttpClient;->newBuilder()Lokhttp3/OkHttpClient$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v1

    .line 116
    :goto_0
    new-instance v3, Lokhttp3/Request$Builder;

    invoke-direct {v3}, Lokhttp3/Request$Builder;-><init>()V

    iget-object v4, p0, Lcom/autoxing/delivery/download/lib/DownloadTask;->url:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v3

    const-string v4, "GET"

    const/4 v5, 0x0

    .line 117
    invoke-virtual {v3, v4, v5}, Lokhttp3/Request$Builder;->method(Ljava/lang/String;Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object v3

    const-string v4, "Range"

    .line 118
    invoke-virtual {v3, v4, v0}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    .line 119
    invoke-virtual {v0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v0

    .line 120
    invoke-direct {p0, v0}, Lcom/autoxing/delivery/download/lib/DownloadTask;->debug(Lokhttp3/Request;)V

    .line 121
    invoke-virtual {v1, v0}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v0

    invoke-interface {v0}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object v0

    .line 122
    invoke-direct {p0, v0}, Lcom/autoxing/delivery/download/lib/DownloadTask;->debug(Lokhttp3/Response;)V

    const/16 v1, 0x2800

    new-array v1, v1, [B

    .line 126
    invoke-virtual {v0}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v3

    invoke-virtual {v3}, Lokhttp3/ResponseBody;->byteStream()Ljava/io/InputStream;

    move-result-object v3

    .line 127
    new-instance v4, Ljava/io/RandomAccessFile;

    const-string v5, "rw"

    invoke-direct {v4, p1, v5}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 128
    iget-wide v5, p0, Lcom/autoxing/delivery/download/lib/DownloadTask;->downSize:J

    invoke-virtual {v4, v5, v6}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 131
    :goto_1
    iget-boolean p1, p0, Lcom/autoxing/delivery/download/lib/DownloadTask;->isRunning:Z

    if-eqz p1, :cond_1

    invoke-virtual {v3, v1}, Ljava/io/InputStream;->read([B)I

    move-result p1

    const/4 v5, -0x1

    if-eq p1, v5, :cond_1

    .line 132
    invoke-virtual {v4, v1, v2, p1}, Ljava/io/RandomAccessFile;->write([BII)V

    .line 133
    iget-wide v5, p0, Lcom/autoxing/delivery/download/lib/DownloadTask;->downSize:J

    int-to-long v7, p1

    add-long/2addr v5, v7

    iput-wide v5, p0, Lcom/autoxing/delivery/download/lib/DownloadTask;->downSize:J

    .line 134
    invoke-direct {p0}, Lcom/autoxing/delivery/download/lib/DownloadTask;->onDownloading()V

    goto :goto_1

    .line 136
    :cond_1
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 137
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V

    .line 138
    invoke-virtual {v0}, Lokhttp3/Response;->close()V

    return-void
.end method

.method private createUnsafeOkHttpClient()Lokhttp3/OkHttpClient;
    .locals 5

    const/4 v0, 0x1

    :try_start_0
    new-array v0, v0, [Ljavax/net/ssl/TrustManager;

    .line 78
    new-instance v1, Lcom/autoxing/delivery/download/lib/DownloadTask$1;

    invoke-direct {v1, p0}, Lcom/autoxing/delivery/download/lib/DownloadTask$1;-><init>(Lcom/autoxing/delivery/download/lib/DownloadTask;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "SSL"

    .line 96
    invoke-static {v1}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v1

    .line 97
    new-instance v3, Ljava/security/SecureRandom;

    invoke-direct {v3}, Ljava/security/SecureRandom;-><init>()V

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v0, v3}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 98
    invoke-virtual {v1}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v1

    .line 101
    new-instance v3, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {v3}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    aget-object v0, v0, v2

    check-cast v0, Ljavax/net/ssl/X509TrustManager;

    .line 102
    invoke-virtual {v3, v1, v0}, Lokhttp3/OkHttpClient$Builder;->sslSocketFactory(Ljavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/X509TrustManager;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    new-instance v1, Lcom/autoxing/delivery/download/lib/DownloadTask$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/autoxing/delivery/download/lib/DownloadTask$$ExternalSyntheticLambda0;-><init>()V

    .line 103
    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->hostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    .line 104
    invoke-virtual {v0}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 107
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private debug(Lokhttp3/Request;)V
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "request=%s"

    .line 142
    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "DownloadTask"

    invoke-static {v0, p1}, Lcom/autoai/research/atools/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private debug(Lokhttp3/Response;)V
    .locals 7

    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/Object;

    .line 146
    invoke-virtual {p1}, Lokhttp3/Response;->code()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {p1}, Lokhttp3/Response;->message()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const-string v2, "response code = %d,message = %s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "DownloadTask"

    invoke-static {v2, v1}, Lcom/autoai/research/atools/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    invoke-virtual {p1}, Lokhttp3/Response;->headers()Lokhttp3/Headers;

    move-result-object p1

    .line 148
    invoke-virtual {p1}, Lokhttp3/Headers;->names()Ljava/util/Set;

    move-result-object v1

    .line 149
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    new-array v6, v0, [Ljava/lang/Object;

    aput-object v5, v6, v3

    .line 150
    invoke-virtual {p1, v5}, Lokhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v6, v4

    const-string v5, "responseHeader %s=%s"

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/autoai/research/atools/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method static synthetic lambda$createUnsafeOkHttpClient$0(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method private onDownloadFailed(Ljava/lang/Exception;)V
    .locals 2

    .line 161
    iget-object v0, p0, Lcom/autoxing/delivery/download/lib/DownloadTask;->listener:Lcom/autoxing/delivery/download/lib/OnDownloadListener;

    if-eqz v0, :cond_0

    .line 162
    iget-object v1, p0, Lcom/autoxing/delivery/download/lib/DownloadTask;->url:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Lcom/autoxing/delivery/download/lib/OnDownloadListener;->onDownloadFailed(Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_0
    return-void
.end method

.method private onDownloadSuccess()V
    .locals 2

    .line 155
    iget-object v0, p0, Lcom/autoxing/delivery/download/lib/DownloadTask;->listener:Lcom/autoxing/delivery/download/lib/OnDownloadListener;

    if-eqz v0, :cond_0

    .line 156
    iget-object v1, p0, Lcom/autoxing/delivery/download/lib/DownloadTask;->url:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/autoxing/delivery/download/lib/OnDownloadListener;->onDownloadSuccess(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private onDownloading()V
    .locals 6

    .line 167
    iget-object v0, p0, Lcom/autoxing/delivery/download/lib/DownloadTask;->listener:Lcom/autoxing/delivery/download/lib/OnDownloadListener;

    if-eqz v0, :cond_0

    .line 168
    iget-object v1, p0, Lcom/autoxing/delivery/download/lib/DownloadTask;->url:Ljava/lang/String;

    iget-wide v2, p0, Lcom/autoxing/delivery/download/lib/DownloadTask;->fileSize:J

    iget-wide v4, p0, Lcom/autoxing/delivery/download/lib/DownloadTask;->downSize:J

    invoke-interface/range {v0 .. v5}, Lcom/autoxing/delivery/download/lib/OnDownloadListener;->onDownloading(Ljava/lang/String;JJ)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getContentLength(Ljava/lang/String;)J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 173
    new-instance v0, Lokhttp3/OkHttpClient;

    invoke-direct {v0}, Lokhttp3/OkHttpClient;-><init>()V

    invoke-virtual {v0}, Lokhttp3/OkHttpClient;->newBuilder()Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v0

    .line 174
    new-instance v1, Lokhttp3/Request$Builder;

    invoke-direct {v1}, Lokhttp3/Request$Builder;-><init>()V

    const-string v2, "GET"

    const/4 v3, 0x0

    .line 175
    invoke-virtual {v1, v2, v3}, Lokhttp3/Request$Builder;->method(Ljava/lang/String;Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object v1

    .line 176
    invoke-virtual {v1, p1}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p1

    .line 177
    invoke-virtual {p1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object p1

    .line 178
    invoke-virtual {v0, p1}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object p1

    invoke-interface {p1}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 179
    invoke-virtual {p1}, Lokhttp3/Response;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 180
    invoke-virtual {p1}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/ResponseBody;->contentLength()J

    move-result-wide v0

    .line 181
    invoke-virtual {p1}, Lokhttp3/Response;->close()V

    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public getDownSize()J
    .locals 2

    .line 44
    iget-wide v0, p0, Lcom/autoxing/delivery/download/lib/DownloadTask;->downSize:J

    return-wide v0
.end method

.method public run()V
    .locals 4

    .line 54
    :try_start_0
    iget-wide v0, p0, Lcom/autoxing/delivery/download/lib/DownloadTask;->downSize:J

    iget-wide v2, p0, Lcom/autoxing/delivery/download/lib/DownloadTask;->fileSize:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 55
    invoke-direct {p0}, Lcom/autoxing/delivery/download/lib/DownloadTask;->onDownloadSuccess()V

    return-void

    .line 58
    :cond_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/autoxing/delivery/download/lib/DownloadTask;->filePath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 59
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    .line 60
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 62
    :cond_1
    invoke-direct {p0, v0}, Lcom/autoxing/delivery/download/lib/DownloadTask;->beginDownload(Ljava/io/File;)V

    .line 63
    iget-wide v0, p0, Lcom/autoxing/delivery/download/lib/DownloadTask;->downSize:J

    iget-wide v2, p0, Lcom/autoxing/delivery/download/lib/DownloadTask;->fileSize:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    .line 64
    invoke-direct {p0}, Lcom/autoxing/delivery/download/lib/DownloadTask;->onDownloadSuccess()V

    goto :goto_0

    .line 66
    :cond_2
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "down failed , downSize != fileSize"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/autoxing/delivery/download/lib/DownloadTask;->onDownloadFailed(Ljava/lang/Exception;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 69
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 70
    invoke-direct {p0, v0}, Lcom/autoxing/delivery/download/lib/DownloadTask;->onDownloadFailed(Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method public stop()V
    .locals 1

    const/4 v0, 0x0

    .line 48
    iput-boolean v0, p0, Lcom/autoxing/delivery/download/lib/DownloadTask;->isRunning:Z

    return-void
.end method
