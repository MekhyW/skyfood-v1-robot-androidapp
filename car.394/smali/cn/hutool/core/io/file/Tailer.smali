.class public Lcn/hutool/core/io/file/Tailer;
.super Ljava/lang/Object;
.source "Tailer.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/hutool/core/io/file/Tailer$ConsoleLineHandler;
    }
.end annotation


# static fields
.field public static final CONSOLE_HANDLER:Lcn/hutool/core/io/LineHandler;

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final charset:Ljava/nio/charset/Charset;

.field private final executorService:Ljava/util/concurrent/ScheduledExecutorService;

.field private fileDeleteWatchMonitor:Lcn/hutool/core/io/watch/WatchMonitor;

.field private final filePath:Ljava/lang/String;

.field private final initReadLine:I

.field private final lineHandler:Lcn/hutool/core/io/LineHandler;

.field private final period:J

.field private final randomAccessFile:Ljava/io/RandomAccessFile;

.field private stopOnDelete:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 39
    new-instance v0, Lcn/hutool/core/io/file/Tailer$ConsoleLineHandler;

    invoke-direct {v0}, Lcn/hutool/core/io/file/Tailer$ConsoleLineHandler;-><init>()V

    sput-object v0, Lcn/hutool/core/io/file/Tailer;->CONSOLE_HANDLER:Lcn/hutool/core/io/LineHandler;

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Lcn/hutool/core/io/LineHandler;)V
    .locals 1

    const/4 v0, 0x0

    .line 63
    invoke-direct {p0, p1, p2, v0}, Lcn/hutool/core/io/file/Tailer;-><init>(Ljava/io/File;Lcn/hutool/core/io/LineHandler;I)V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Lcn/hutool/core/io/LineHandler;I)V
    .locals 7

    .line 74
    sget-object v2, Lcn/hutool/core/util/CharsetUtil;->CHARSET_UTF_8:Ljava/nio/charset/Charset;

    sget-object v0, Lcn/hutool/core/date/DateUnit;->SECOND:Lcn/hutool/core/date/DateUnit;

    invoke-virtual {v0}, Lcn/hutool/core/date/DateUnit;->getMillis()J

    move-result-wide v5

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v4, p3

    invoke-direct/range {v0 .. v6}, Lcn/hutool/core/io/file/Tailer;-><init>(Ljava/io/File;Ljava/nio/charset/Charset;Lcn/hutool/core/io/LineHandler;IJ)V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Ljava/nio/charset/Charset;Lcn/hutool/core/io/LineHandler;)V
    .locals 7

    const/4 v4, 0x0

    .line 85
    sget-object v0, Lcn/hutool/core/date/DateUnit;->SECOND:Lcn/hutool/core/date/DateUnit;

    invoke-virtual {v0}, Lcn/hutool/core/date/DateUnit;->getMillis()J

    move-result-wide v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v6}, Lcn/hutool/core/io/file/Tailer;-><init>(Ljava/io/File;Ljava/nio/charset/Charset;Lcn/hutool/core/io/LineHandler;IJ)V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Ljava/nio/charset/Charset;Lcn/hutool/core/io/LineHandler;IJ)V
    .locals 0

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    invoke-static {p1}, Lcn/hutool/core/io/file/Tailer;->checkFile(Ljava/io/File;)V

    .line 99
    iput-object p2, p0, Lcn/hutool/core/io/file/Tailer;->charset:Ljava/nio/charset/Charset;

    .line 100
    iput-object p3, p0, Lcn/hutool/core/io/file/Tailer;->lineHandler:Lcn/hutool/core/io/LineHandler;

    .line 101
    iput-wide p5, p0, Lcn/hutool/core/io/file/Tailer;->period:J

    .line 102
    iput p4, p0, Lcn/hutool/core/io/file/Tailer;->initReadLine:I

    .line 103
    sget-object p2, Lcn/hutool/core/io/file/FileMode;->r:Lcn/hutool/core/io/file/FileMode;

    invoke-static {p1, p2}, Lcn/hutool/core/io/FileUtil;->createRandomAccessFile(Ljava/io/File;Lcn/hutool/core/io/file/FileMode;)Ljava/io/RandomAccessFile;

    move-result-object p2

    iput-object p2, p0, Lcn/hutool/core/io/file/Tailer;->randomAccessFile:Ljava/io/RandomAccessFile;

    .line 104
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object p2

    iput-object p2, p0, Lcn/hutool/core/io/file/Tailer;->executorService:Ljava/util/concurrent/ScheduledExecutorService;

    .line 105
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcn/hutool/core/io/file/Tailer;->filePath:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcn/hutool/core/io/file/Tailer;)Ljava/lang/String;
    .locals 0

    .line 36
    iget-object p0, p0, Lcn/hutool/core/io/file/Tailer;->filePath:Ljava/lang/String;

    return-object p0
.end method

.method private static checkFile(Ljava/io/File;)V
    .locals 3

    .line 247
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 250
    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 251
    :cond_0
    new-instance v0, Lcn/hutool/core/exceptions/UtilException;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v2, v1

    const-string p0, "Path [{}] is not a file !"

    invoke-direct {v0, p0, v2}, Lcn/hutool/core/exceptions/UtilException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    .line 248
    :cond_1
    new-instance v0, Lcn/hutool/core/exceptions/UtilException;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v2, v1

    const-string p0, "File [{}] not exist !"

    invoke-direct {v0, p0, v2}, Lcn/hutool/core/exceptions/UtilException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0
.end method

.method private readTail()V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 188
    iget-object v0, p0, Lcn/hutool/core/io/file/Tailer;->randomAccessFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v0

    .line 190
    iget v2, p0, Lcn/hutool/core/io/file/Tailer;->initReadLine:I

    if-lez v2, :cond_7

    .line 191
    new-instance v2, Ljava/util/Stack;

    invoke-direct {v2}, Ljava/util/Stack;-><init>()V

    .line 193
    iget-object v3, p0, Lcn/hutool/core/io/file/Tailer;->randomAccessFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v3

    const-wide/16 v5, 0x1

    sub-long v7, v0, v5

    const-wide/16 v9, 0x0

    cmp-long v11, v7, v9

    if-gez v11, :cond_0

    move-wide v7, v9

    .line 195
    :cond_0
    iget-object v11, p0, Lcn/hutool/core/io/file/Tailer;->randomAccessFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v11, v7, v8}, Ljava/io/RandomAccessFile;->seek(J)V

    const/4 v11, 0x0

    :cond_1
    cmp-long v12, v7, v3

    if-lez v12, :cond_6

    .line 200
    iget v12, p0, Lcn/hutool/core/io/file/Tailer;->initReadLine:I

    if-le v11, v12, :cond_2

    goto :goto_0

    .line 204
    :cond_2
    iget-object v12, p0, Lcn/hutool/core/io/file/Tailer;->randomAccessFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v12}, Ljava/io/RandomAccessFile;->read()I

    move-result v12

    const/16 v13, 0xa

    if-eq v12, v13, :cond_3

    const/16 v13, 0xd

    if-ne v12, v13, :cond_5

    .line 207
    :cond_3
    iget-object v12, p0, Lcn/hutool/core/io/file/Tailer;->randomAccessFile:Ljava/io/RandomAccessFile;

    iget-object v13, p0, Lcn/hutool/core/io/file/Tailer;->charset:Ljava/nio/charset/Charset;

    invoke-static {v12, v13}, Lcn/hutool/core/io/FileUtil;->readLine(Ljava/io/RandomAccessFile;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_4

    .line 209
    invoke-virtual {v2, v12}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    add-int/lit8 v11, v11, 0x1

    sub-long/2addr v7, v5

    :cond_5
    sub-long/2addr v7, v5

    .line 215
    iget-object v12, p0, Lcn/hutool/core/io/file/Tailer;->randomAccessFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v12, v7, v8}, Ljava/io/RandomAccessFile;->seek(J)V

    cmp-long v12, v7, v9

    if-nez v12, :cond_1

    .line 219
    iget-object v3, p0, Lcn/hutool/core/io/file/Tailer;->randomAccessFile:Ljava/io/RandomAccessFile;

    iget-object v4, p0, Lcn/hutool/core/io/file/Tailer;->charset:Ljava/nio/charset/Charset;

    invoke-static {v3, v4}, Lcn/hutool/core/io/FileUtil;->readLine(Ljava/io/RandomAccessFile;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_6

    .line 221
    invoke-virtual {v2, v3}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    :cond_6
    :goto_0
    invoke-virtual {v2}, Ljava/util/Stack;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_7

    .line 229
    iget-object v3, p0, Lcn/hutool/core/io/file/Tailer;->lineHandler:Lcn/hutool/core/io/LineHandler;

    invoke-virtual {v2}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v3, v4}, Lcn/hutool/core/io/LineHandler;->handle(Ljava/lang/String;)V

    goto :goto_0

    .line 235
    :cond_7
    :try_start_0
    iget-object v2, p0, Lcn/hutool/core/io/file/Tailer;->randomAccessFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v2, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 237
    new-instance v1, Lcn/hutool/core/io/IORuntimeException;

    invoke-direct {v1, v0}, Lcn/hutool/core/io/IORuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public setStopOnDelete(Z)V
    .locals 0

    .line 114
    iput-boolean p1, p0, Lcn/hutool/core/io/file/Tailer;->stopOnDelete:Z

    return-void
.end method

.method public start()V
    .locals 1

    const/4 v0, 0x0

    .line 121
    invoke-virtual {p0, v0}, Lcn/hutool/core/io/file/Tailer;->start(Z)V

    return-void
.end method

.method public start(Z)V
    .locals 7

    .line 132
    :try_start_0
    invoke-direct {p0}, Lcn/hutool/core/io/file/Tailer;->readTail()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 137
    new-instance v1, Lcn/hutool/core/io/file/LineReadWatcher;

    iget-object v0, p0, Lcn/hutool/core/io/file/Tailer;->randomAccessFile:Ljava/io/RandomAccessFile;

    iget-object v2, p0, Lcn/hutool/core/io/file/Tailer;->charset:Ljava/nio/charset/Charset;

    iget-object v3, p0, Lcn/hutool/core/io/file/Tailer;->lineHandler:Lcn/hutool/core/io/LineHandler;

    invoke-direct {v1, v0, v2, v3}, Lcn/hutool/core/io/file/LineReadWatcher;-><init>(Ljava/io/RandomAccessFile;Ljava/nio/charset/Charset;Lcn/hutool/core/io/LineHandler;)V

    .line 138
    iget-object v0, p0, Lcn/hutool/core/io/file/Tailer;->executorService:Ljava/util/concurrent/ScheduledExecutorService;

    const-wide/16 v2, 0x0

    iget-wide v4, p0, Lcn/hutool/core/io/file/Tailer;->period:J

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface/range {v0 .. v6}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    .line 145
    iget-boolean v1, p0, Lcn/hutool/core/io/file/Tailer;->stopOnDelete:Z

    if-eqz v1, :cond_0

    .line 146
    iget-object v1, p0, Lcn/hutool/core/io/file/Tailer;->filePath:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/nio/file/WatchEvent$Kind;

    sget-object v3, Lcn/hutool/core/io/watch/WatchKind;->DELETE:Lcn/hutool/core/io/watch/WatchKind;

    invoke-virtual {v3}, Lcn/hutool/core/io/watch/WatchKind;->getValue()Ljava/nio/file/WatchEvent$Kind;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Lcn/hutool/core/io/watch/WatchMonitor;->create(Ljava/lang/String;[Ljava/nio/file/WatchEvent$Kind;)Lcn/hutool/core/io/watch/WatchMonitor;

    move-result-object v1

    iput-object v1, p0, Lcn/hutool/core/io/file/Tailer;->fileDeleteWatchMonitor:Lcn/hutool/core/io/watch/WatchMonitor;

    .line 147
    new-instance v2, Lcn/hutool/core/io/file/Tailer$1;

    invoke-direct {v2, p0}, Lcn/hutool/core/io/file/Tailer$1;-><init>(Lcn/hutool/core/io/file/Tailer;)V

    invoke-virtual {v1, v2}, Lcn/hutool/core/io/watch/WatchMonitor;->setWatcher(Lcn/hutool/core/io/watch/Watcher;)Lcn/hutool/core/io/watch/WatchMonitor;

    .line 155
    iget-object v1, p0, Lcn/hutool/core/io/file/Tailer;->fileDeleteWatchMonitor:Lcn/hutool/core/io/watch/WatchMonitor;

    invoke-virtual {v1}, Lcn/hutool/core/io/watch/WatchMonitor;->start()V

    :cond_0
    if-nez p1, :cond_1

    .line 160
    :try_start_1
    invoke-interface {v0}, Ljava/util/concurrent/ScheduledFuture;->get()Ljava/lang/Object;
    :try_end_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 162
    new-instance v0, Lcn/hutool/core/exceptions/UtilException;

    invoke-direct {v0, p1}, Lcn/hutool/core/exceptions/UtilException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    :cond_1
    :goto_0
    return-void

    :catch_2
    move-exception p1

    .line 134
    new-instance v0, Lcn/hutool/core/io/IORuntimeException;

    invoke-direct {v0, p1}, Lcn/hutool/core/io/IORuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public stop()V
    .locals 2

    .line 174
    :try_start_0
    iget-object v0, p0, Lcn/hutool/core/io/file/Tailer;->executorService:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->shutdown()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 176
    iget-object v0, p0, Lcn/hutool/core/io/file/Tailer;->randomAccessFile:Ljava/io/RandomAccessFile;

    invoke-static {v0}, Lcn/hutool/core/io/IoUtil;->close(Ljava/io/Closeable;)V

    .line 177
    iget-object v0, p0, Lcn/hutool/core/io/file/Tailer;->fileDeleteWatchMonitor:Lcn/hutool/core/io/watch/WatchMonitor;

    invoke-virtual {v0}, Lcn/hutool/core/io/watch/WatchMonitor;->close()V

    return-void

    :catchall_0
    move-exception v0

    .line 176
    iget-object v1, p0, Lcn/hutool/core/io/file/Tailer;->randomAccessFile:Ljava/io/RandomAccessFile;

    invoke-static {v1}, Lcn/hutool/core/io/IoUtil;->close(Ljava/io/Closeable;)V

    .line 177
    iget-object v1, p0, Lcn/hutool/core/io/file/Tailer;->fileDeleteWatchMonitor:Lcn/hutool/core/io/watch/WatchMonitor;

    invoke-virtual {v1}, Lcn/hutool/core/io/watch/WatchMonitor;->close()V

    .line 178
    throw v0
.end method
