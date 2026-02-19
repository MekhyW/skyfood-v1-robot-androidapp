.class public Lcom/autoxing/delivery/util/DownLoadUtil;
.super Ljava/lang/Object;
.source "DownLoadUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/autoxing/delivery/util/DownLoadUtil$OnDownloadListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "DownLoadUtil"

.field private static downloadUtil:Lcom/autoxing/delivery/util/DownLoadUtil;


# instance fields
.field public DownloadByte:[B

.field public IsStopDown:Ljava/lang/Boolean;

.field private final okHttpClient:Lokhttp3/OkHttpClient;


# direct methods
.method static bridge synthetic -$$Nest$msleep(Lcom/autoxing/delivery/util/DownLoadUtil;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/autoxing/delivery/util/DownLoadUtil;->sleep(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$smaddBytes([B[BLjava/lang/String;Ljava/lang/String;)[B
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/autoxing/delivery/util/DownLoadUtil;->addBytes([B[BLjava/lang/String;Ljava/lang/String;)[B

    move-result-object p0

    return-object p0
.end method

.method private constructor <init>()V
    .locals 2

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 31
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/autoxing/delivery/util/DownLoadUtil;->IsStopDown:Ljava/lang/Boolean;

    new-array v0, v0, [B

    .line 35
    iput-object v0, p0, Lcom/autoxing/delivery/util/DownLoadUtil;->DownloadByte:[B

    .line 45
    new-instance v0, Lokhttp3/OkHttpClient;

    invoke-direct {v0}, Lokhttp3/OkHttpClient;-><init>()V

    iput-object v0, p0, Lcom/autoxing/delivery/util/DownLoadUtil;->okHttpClient:Lokhttp3/OkHttpClient;

    return-void
.end method

.method private static addBytes([B[BLjava/lang/String;Ljava/lang/String;)[B
    .locals 4

    .line 312
    array-length v0, p0

    array-length v1, p1

    add-int/2addr v0, v1

    new-array v1, v0, [B

    .line 313
    array-length v2, p0

    const/4 v3, 0x0

    invoke-static {p0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 314
    array-length p0, p0

    array-length v2, p1

    invoke-static {p1, v3, v1, p0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/high16 p0, 0x2800000

    if-le v0, p0, :cond_0

    .line 316
    new-instance p0, Ljava/io/File;

    invoke-direct {p0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 317
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, p0, p3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 318
    :try_start_0
    new-instance p0, Ljava/io/FileOutputStream;

    const/4 p2, 0x1

    invoke-direct {p0, p1, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 319
    :try_start_1
    invoke-virtual {p0, v1}, Ljava/io/FileOutputStream;->write([B)V

    const-string p1, "DownLoadUtil"

    const-string p3, "%s success"

    new-array p2, p2, [Ljava/lang/Object;

    .line 320
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p2, v3

    invoke-static {p3, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/autoai/research/atools/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 321
    :try_start_2
    invoke-virtual {p0}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 318
    :try_start_3
    invoke-virtual {p0}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p0

    :try_start_4
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p1
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception p0

    .line 322
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :goto_1
    new-array p0, v3, [B

    return-object p0

    :cond_0
    return-object v1
.end method

.method public static get()Lcom/autoxing/delivery/util/DownLoadUtil;
    .locals 1

    .line 38
    sget-object v0, Lcom/autoxing/delivery/util/DownLoadUtil;->downloadUtil:Lcom/autoxing/delivery/util/DownLoadUtil;

    if-nez v0, :cond_0

    .line 39
    new-instance v0, Lcom/autoxing/delivery/util/DownLoadUtil;

    invoke-direct {v0}, Lcom/autoxing/delivery/util/DownLoadUtil;-><init>()V

    sput-object v0, Lcom/autoxing/delivery/util/DownLoadUtil;->downloadUtil:Lcom/autoxing/delivery/util/DownLoadUtil;

    .line 41
    :cond_0
    sget-object v0, Lcom/autoxing/delivery/util/DownLoadUtil;->downloadUtil:Lcom/autoxing/delivery/util/DownLoadUtil;

    return-object v0
.end method

.method private sleep(I)V
    .locals 2

    int-to-long v0, p1

    .line 409
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 411
    invoke-virtual {p1}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_0
    return-void
.end method


# virtual methods
.method public download(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/autoxing/delivery/util/DownLoadUtil$OnDownloadListener;)V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 55
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "%s download"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "DownLoadUtil"

    invoke-static {v1, v0}, Lcom/autoai/research/atools/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    new-instance v0, Lokhttp3/Request$Builder;

    invoke-direct {v0}, Lokhttp3/Request$Builder;-><init>()V

    invoke-virtual {v0, p1}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object p1

    .line 57
    iget-object v0, p0, Lcom/autoxing/delivery/util/DownLoadUtil;->okHttpClient:Lokhttp3/OkHttpClient;

    invoke-virtual {v0, p1}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object p1

    new-instance v0, Lcom/autoxing/delivery/util/DownLoadUtil$1;

    invoke-direct {v0, p0, p4, p2, p3}, Lcom/autoxing/delivery/util/DownLoadUtil$1;-><init>(Lcom/autoxing/delivery/util/DownLoadUtil;Lcom/autoxing/delivery/util/DownLoadUtil$OnDownloadListener;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Lokhttp3/Call;->enqueue(Lokhttp3/Callback;)V

    return-void
.end method

.method public existsFiles(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 332
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 333
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_0

    .line 334
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 336
    :cond_0
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, v0, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 337
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 338
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    :cond_1
    return-void
.end method

.method public getSDPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 398
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    .line 399
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 401
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    .line 402
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u5916\u90e8\u5b58\u50a8\u53ef\u7528..."

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Test"

    invoke-static {v2, v1}, Lcom/autoai/research/atools/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 404
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public loopDownload(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/autoxing/delivery/util/DownLoadUtil$OnDownloadListener;Ljava/lang/String;)V
    .locals 8

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 118
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "%s download"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "DownLoadUtil"

    invoke-static {v1, v0}, Lcom/autoai/research/atools/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    new-instance v0, Ljava/io/ByteArrayInputStream;

    new-array v1, v2, [B

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const/4 v6, 0x0

    .line 122
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/autoxing/delivery/util/DownLoadUtil;->IsStopDown:Ljava/lang/Boolean;

    new-array v0, v2, [B

    .line 123
    iput-object v0, p0, Lcom/autoxing/delivery/util/DownLoadUtil;->DownloadByte:[B

    .line 124
    invoke-virtual {p0, p2, p3}, Lcom/autoxing/delivery/util/DownLoadUtil;->existsFiles(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v7, 0x5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 125
    invoke-virtual/range {v0 .. v7}, Lcom/autoxing/delivery/util/DownLoadUtil;->startLoop(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/autoxing/delivery/util/DownLoadUtil$OnDownloadListener;Ljava/lang/String;II)V

    return-void
.end method

.method public loopDownloadStop()V
    .locals 1

    const/4 v0, 0x1

    .line 115
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/autoxing/delivery/util/DownLoadUtil;->IsStopDown:Ljava/lang/Boolean;

    return-void
.end method

.method public saveByteToFile([BLjava/lang/String;Ljava/lang/String;Lcom/autoxing/delivery/util/DownLoadUtil$OnDownloadListener;I)V
    .locals 10
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const-string v0, "DownLoadUtil"

    .line 347
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 348
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 349
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 351
    :cond_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1, p3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 v1, 0x0

    const/4 v3, 0x1

    .line 355
    :try_start_0
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 356
    :try_start_1
    invoke-virtual {v4, p1}, Ljava/io/FileOutputStream;->write([B)V

    const-string v5, "%s success"

    new-array v6, v3, [Ljava/lang/Object;

    .line 357
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v1

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/autoai/research/atools/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    invoke-interface {p4, v2}, Lcom/autoxing/delivery/util/DownLoadUtil$OnDownloadListener;->onDownloadSuccess(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 359
    :try_start_2
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catchall_0
    move-exception v2

    .line 355
    :try_start_3
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v4

    :try_start_4
    invoke-virtual {v2, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v2
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v2

    .line 360
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    if-nez p5, :cond_1

    .line 362
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "%s faield"

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array p2, v3, [Ljava/lang/Object;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object p3

    aput-object p3, p2, v1

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/autoai/research/atools/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 363
    invoke-interface {p4, v2}, Lcom/autoxing/delivery/util/DownLoadUtil$OnDownloadListener;->onDownloadFailed(Ljava/lang/Exception;)V

    const/16 p1, 0x63

    .line 364
    invoke-interface {p4, p1}, Lcom/autoxing/delivery/util/DownLoadUtil$OnDownloadListener;->onDownloadByte(I)V

    goto :goto_1

    :cond_1
    const/16 v2, 0x12c

    .line 366
    invoke-direct {p0, v2}, Lcom/autoxing/delivery/util/DownLoadUtil;->sleep(I)V

    .line 367
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "%s failed"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/autoai/research/atools/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v9, p5, -0x1

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    move-object v8, p4

    .line 368
    invoke-virtual/range {v4 .. v9}, Lcom/autoxing/delivery/util/DownLoadUtil;->saveByteToFile([BLjava/lang/String;Ljava/lang/String;Lcom/autoxing/delivery/util/DownLoadUtil$OnDownloadListener;I)V

    :goto_1
    return-void
.end method

.method public startLoop(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/autoxing/delivery/util/DownLoadUtil$OnDownloadListener;Ljava/lang/String;II)V
    .locals 13

    move-object v10, p0

    move/from16 v4, p6

    if-nez v4, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [B

    .line 132
    iput-object v0, v10, Lcom/autoxing/delivery/util/DownLoadUtil;->DownloadByte:[B

    const-string v0, "bytes=0-2097152"

    goto :goto_0

    .line 135
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "bytes="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/high16 v1, 0x200000

    add-int/2addr v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 137
    :goto_0
    new-instance v1, Lokhttp3/Request$Builder;

    invoke-direct {v1}, Lokhttp3/Request$Builder;-><init>()V

    move-object v5, p1

    invoke-virtual {v1, p1}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v1

    const-string v2, "X-Token"

    move-object/from16 v8, p5

    invoke-virtual {v1, v2, v8}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v1

    const-string v2, "X-Range"

    invoke-virtual {v1, v2, v0}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v0

    .line 138
    iget-object v1, v10, Lcom/autoxing/delivery/util/DownLoadUtil;->okHttpClient:Lokhttp3/OkHttpClient;

    invoke-virtual {v1}, Lokhttp3/OkHttpClient;->newBuilder()Lokhttp3/OkHttpClient$Builder;

    move-result-object v1

    const-wide/16 v2, 0x2710

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v3, v6}, Lokhttp3/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v1

    invoke-virtual {v1, v0}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v11

    new-instance v12, Lcom/autoxing/delivery/util/DownLoadUtil$2;

    const/high16 v9, 0x200000

    move-object v0, v12

    move-object v1, p0

    move/from16 v2, p7

    move-object/from16 v3, p4

    move/from16 v4, p6

    move-object v6, p2

    move-object/from16 v7, p3

    invoke-direct/range {v0 .. v9}, Lcom/autoxing/delivery/util/DownLoadUtil$2;-><init>(Lcom/autoxing/delivery/util/DownLoadUtil;ILcom/autoxing/delivery/util/DownLoadUtil$OnDownloadListener;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v11, v12}, Lokhttp3/Call;->enqueue(Lokhttp3/Callback;)V

    return-void
.end method
