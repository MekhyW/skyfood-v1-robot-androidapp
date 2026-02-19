.class Lcom/autoxing/delivery/util/DownLoadUtil$1;
.super Ljava/lang/Object;
.source "DownLoadUtil.java"

# interfaces
.implements Lokhttp3/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/autoxing/delivery/util/DownLoadUtil;->download(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/autoxing/delivery/util/DownLoadUtil$OnDownloadListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/autoxing/delivery/util/DownLoadUtil;

.field final synthetic val$destFileDir:Ljava/lang/String;

.field final synthetic val$destFileName:Ljava/lang/String;

.field final synthetic val$listener:Lcom/autoxing/delivery/util/DownLoadUtil$OnDownloadListener;


# direct methods
.method constructor <init>(Lcom/autoxing/delivery/util/DownLoadUtil;Lcom/autoxing/delivery/util/DownLoadUtil$OnDownloadListener;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/autoxing/delivery/util/DownLoadUtil$1;->this$0:Lcom/autoxing/delivery/util/DownLoadUtil;

    iput-object p2, p0, Lcom/autoxing/delivery/util/DownLoadUtil$1;->val$listener:Lcom/autoxing/delivery/util/DownLoadUtil$OnDownloadListener;

    iput-object p3, p0, Lcom/autoxing/delivery/util/DownLoadUtil$1;->val$destFileDir:Ljava/lang/String;

    iput-object p4, p0, Lcom/autoxing/delivery/util/DownLoadUtil$1;->val$destFileName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lokhttp3/Call;Ljava/io/IOException;)V
    .locals 3

    .line 61
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "%s failed"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "DownLoadUtil"

    invoke-static {v0, p1}, Lcom/autoai/research/atools/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    iget-object p1, p0, Lcom/autoxing/delivery/util/DownLoadUtil$1;->val$listener:Lcom/autoxing/delivery/util/DownLoadUtil$OnDownloadListener;

    invoke-interface {p1, p2}, Lcom/autoxing/delivery/util/DownLoadUtil$OnDownloadListener;->onDownloadFailed(Ljava/lang/Exception;)V

    return-void
.end method

.method public onResponse(Lokhttp3/Call;Lokhttp3/Response;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 p1, 0x1

    new-array v0, p1, [Ljava/lang/Object;

    .line 67
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "%s\u4e0b\u8f7d\u5347\u7ea7\u5305"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "DownLoadUtil"

    invoke-static {v1, v0}, Lcom/autoai/research/atools/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x800

    new-array v0, v0, [B

    .line 74
    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lcom/autoxing/delivery/util/DownLoadUtil$1;->val$destFileDir:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 75
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_0

    .line 76
    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    .line 78
    :cond_0
    new-instance v4, Ljava/io/File;

    iget-object v5, p0, Lcom/autoxing/delivery/util/DownLoadUtil$1;->val$destFileName:Ljava/lang/String;

    invoke-direct {v4, v3, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 v3, 0x0

    .line 80
    :try_start_0
    invoke-virtual {p2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v5

    invoke-virtual {v5}, Lokhttp3/ResponseBody;->byteStream()Ljava/io/InputStream;

    move-result-object v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 81
    :try_start_1
    invoke-virtual {p2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object p2

    invoke-virtual {p2}, Lokhttp3/ResponseBody;->contentLength()J

    move-result-wide v6

    .line 82
    new-instance p2, Ljava/io/FileOutputStream;

    invoke-direct {p2, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const-wide/16 v8, 0x0

    .line 84
    :goto_0
    :try_start_2
    invoke-virtual {v5, v0}, Ljava/io/InputStream;->read([B)I

    move-result v3

    const/4 v10, -0x1

    if-eq v3, v10, :cond_1

    .line 85
    invoke-virtual {p2, v0, v2, v3}, Ljava/io/FileOutputStream;->write([BII)V

    int-to-long v10, v3

    add-long/2addr v8, v10

    long-to-float v3, v8

    const/high16 v10, 0x3f800000    # 1.0f

    mul-float/2addr v3, v10

    long-to-float v10, v6

    div-float/2addr v3, v10

    const/high16 v10, 0x42c80000    # 100.0f

    mul-float/2addr v3, v10

    float-to-int v3, v3

    .line 89
    iget-object v10, p0, Lcom/autoxing/delivery/util/DownLoadUtil$1;->val$listener:Lcom/autoxing/delivery/util/DownLoadUtil$OnDownloadListener;

    invoke-interface {v10, v3}, Lcom/autoxing/delivery/util/DownLoadUtil$OnDownloadListener;->onDownloading(I)V

    goto :goto_0

    .line 91
    :cond_1
    invoke-virtual {p2}, Ljava/io/FileOutputStream;->flush()V

    const-string v0, "%s success"

    new-array v3, p1, [Ljava/lang/Object;

    .line 93
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v2

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/autoai/research/atools/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    iget-object v0, p0, Lcom/autoxing/delivery/util/DownLoadUtil$1;->val$listener:Lcom/autoxing/delivery/util/DownLoadUtil$OnDownloadListener;

    invoke-interface {v0, v4}, Lcom/autoxing/delivery/util/DownLoadUtil$OnDownloadListener;->onDownloadSuccess(Ljava/io/File;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v5, :cond_2

    .line 101
    :try_start_3
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 106
    :catch_0
    :cond_2
    :goto_1
    :try_start_4
    invoke-virtual {p2}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5

    goto :goto_5

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_3

    :catchall_1
    move-exception p1

    move-object p2, v3

    :goto_2
    move-object v3, v5

    goto :goto_6

    :catch_2
    move-exception v0

    move-object p2, v3

    :goto_3
    move-object v3, v5

    goto :goto_4

    :catchall_2
    move-exception p1

    move-object p2, v3

    goto :goto_6

    :catch_3
    move-exception v0

    move-object p2, v3

    .line 96
    :goto_4
    :try_start_5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "%s faield"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array p1, p1, [Ljava/lang/Object;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, p1, v2

    invoke-static {v4, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/autoai/research/atools/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    iget-object p1, p0, Lcom/autoxing/delivery/util/DownLoadUtil$1;->val$listener:Lcom/autoxing/delivery/util/DownLoadUtil$OnDownloadListener;

    invoke-interface {p1, v0}, Lcom/autoxing/delivery/util/DownLoadUtil$OnDownloadListener;->onDownloadFailed(Ljava/lang/Exception;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    if-eqz v3, :cond_3

    .line 101
    :try_start_6
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    :catch_4
    :cond_3
    if-eqz p2, :cond_4

    goto :goto_1

    :catch_5
    :cond_4
    :goto_5
    return-void

    :catchall_3
    move-exception p1

    :goto_6
    if-eqz v3, :cond_5

    :try_start_7
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    :catch_6
    :cond_5
    if-eqz p2, :cond_6

    .line 106
    :try_start_8
    invoke-virtual {p2}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_7

    .line 109
    :catch_7
    :cond_6
    throw p1
.end method
