.class public Lcom/autoxing/delivery/controller/LogController;
.super Ljava/lang/Object;
.source "LogController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/autoxing/delivery/controller/LogController$LogcatTask;
    }
.end annotation


# static fields
.field private static INSTANCE:Lcom/autoxing/delivery/controller/LogController; = null

.field private static final TAG:Ljava/lang/String; = "LogController"

.field private static final isGzip:Z = true


# instance fields
.field private DateChangedReceiver:Landroid/content/BroadcastReceiver;

.field private ONE_WEEK:J

.field private executorService:Ljava/util/concurrent/ExecutorService;

.field private isRunning:Z

.field private lastDayOfMonth:I

.field private mContext:Landroid/content/Context;

.field private mProcess:Ljava/lang/Process;


# direct methods
.method static bridge synthetic -$$Nest$fgetexecutorService(Lcom/autoxing/delivery/controller/LogController;)Ljava/util/concurrent/ExecutorService;
    .locals 0

    iget-object p0, p0, Lcom/autoxing/delivery/controller/LogController;->executorService:Ljava/util/concurrent/ExecutorService;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetlastDayOfMonth(Lcom/autoxing/delivery/controller/LogController;)I
    .locals 0

    iget p0, p0, Lcom/autoxing/delivery/controller/LogController;->lastDayOfMonth:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fputlastDayOfMonth(Lcom/autoxing/delivery/controller/LogController;I)V
    .locals 0

    iput p1, p0, Lcom/autoxing/delivery/controller/LogController;->lastDayOfMonth:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmProcess(Lcom/autoxing/delivery/controller/LogController;Ljava/lang/Process;)V
    .locals 0

    iput-object p1, p0, Lcom/autoxing/delivery/controller/LogController;->mProcess:Ljava/lang/Process;

    return-void
.end method

.method static bridge synthetic -$$Nest$mdeleteOldestFile(Lcom/autoxing/delivery/controller/LogController;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/autoxing/delivery/controller/LogController;->deleteOldestFile(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mdestoryProcess(Lcom/autoxing/delivery/controller/LogController;)V
    .locals 0

    invoke-direct {p0}, Lcom/autoxing/delivery/controller/LogController;->destoryProcess()V

    return-void
.end method

.method static bridge synthetic -$$Nest$msaveLogcatToFile(Lcom/autoxing/delivery/controller/LogController;)Ljava/lang/Process;
    .locals 0

    invoke-direct {p0}, Lcom/autoxing/delivery/controller/LogController;->saveLogcatToFile()Ljava/lang/Process;

    move-result-object p0

    return-object p0
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/32 v0, 0x240c8400

    .line 25
    iput-wide v0, p0, Lcom/autoxing/delivery/controller/LogController;->ONE_WEEK:J

    const/4 v0, -0x1

    .line 33
    iput v0, p0, Lcom/autoxing/delivery/controller/LogController;->lastDayOfMonth:I

    .line 51
    new-instance v0, Lcom/autoxing/delivery/controller/LogController$1;

    invoke-direct {v0, p0}, Lcom/autoxing/delivery/controller/LogController$1;-><init>(Lcom/autoxing/delivery/controller/LogController;)V

    iput-object v0, p0, Lcom/autoxing/delivery/controller/LogController;->DateChangedReceiver:Landroid/content/BroadcastReceiver;

    .line 36
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/autoxing/delivery/controller/LogController;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static final compressForGzip(Ljava/io/File;Ljava/io/File;)Z
    .locals 7

    .line 184
    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    goto/16 :goto_a

    .line 187
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 188
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    :cond_1
    const/16 v0, 0x1000

    const/4 v2, 0x0

    :try_start_0
    new-array v0, v0, [B

    .line 194
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 195
    :try_start_1
    new-instance p0, Ljava/util/zip/GZIPOutputStream;

    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {p0, v6}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 197
    :goto_0
    :try_start_2
    invoke-virtual {v3, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v2

    if-lez v2, :cond_2

    .line 198
    invoke-virtual {p0, v0, v1, v2}, Ljava/util/zip/GZIPOutputStream;->write([BII)V

    goto :goto_0

    .line 200
    :cond_2
    invoke-virtual {p0}, Ljava/util/zip/GZIPOutputStream;->flush()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 206
    :try_start_3
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 208
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 213
    :goto_1
    :try_start_4
    invoke-virtual {p0}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5

    goto :goto_6

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_3

    :catchall_1
    move-exception p1

    move-object p0, v2

    :goto_2
    move-object v2, v3

    goto :goto_7

    :catch_2
    move-exception v0

    move-object p0, v2

    :goto_3
    move-object v2, v3

    goto :goto_4

    :catchall_2
    move-exception p1

    move-object p0, v2

    goto :goto_7

    :catch_3
    move-exception v0

    move-object p0, v2

    .line 202
    :goto_4
    :try_start_5
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    if-eqz v2, :cond_3

    .line 206
    :try_start_6
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_5

    :catch_4
    move-exception v0

    .line 208
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    :goto_5
    if-eqz p0, :cond_4

    .line 213
    :try_start_7
    invoke-virtual {p0}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    goto :goto_6

    :catch_5
    move-exception p0

    .line 215
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    .line 219
    :cond_4
    :goto_6
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide p0

    cmp-long p0, p0, v4

    if-lez p0, :cond_5

    const/4 v1, 0x1

    :cond_5
    return v1

    :catchall_3
    move-exception p1

    :goto_7
    if-eqz v2, :cond_6

    .line 206
    :try_start_8
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_6

    goto :goto_8

    :catch_6
    move-exception v0

    .line 208
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_6
    :goto_8
    if-eqz p0, :cond_7

    .line 213
    :try_start_9
    invoke-virtual {p0}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_7

    goto :goto_9

    :catch_7
    move-exception p0

    .line 215
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    .line 218
    :cond_7
    :goto_9
    throw p1

    :cond_8
    :goto_a
    return v1
.end method

.method private debug(Ljava/lang/String;)V
    .locals 1

    const-string v0, "LogController"

    .line 180
    invoke-static {v0, p1}, Lcom/autoai/research/atools/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private deleteOldestFile(Ljava/lang/String;)V
    .locals 9

    .line 71
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 72
    array-length v1, v0

    if-nez v1, :cond_0

    goto :goto_2

    .line 75
    :cond_0
    invoke-direct {p0}, Lcom/autoxing/delivery/controller/LogController;->getCurrDay()Ljava/lang/String;

    move-result-object v1

    .line 76
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_8

    aget-object v4, v0, v3

    .line 78
    invoke-virtual {v4}, Ljava/io/File;->isFile()Z

    move-result v5

    if-nez v5, :cond_1

    goto :goto_1

    .line 81
    :cond_1
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "crash.log"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_1

    .line 85
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v4}, Ljava/io/File;->lastModified()J

    move-result-wide v7

    sub-long/2addr v5, v7

    iget-wide v7, p0, Lcom/autoxing/delivery/controller/LogController;->ONE_WEEK:J

    cmp-long v5, v5, v7

    if-lez v5, :cond_3

    .line 86
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    goto :goto_1

    .line 89
    :cond_3
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_4

    goto :goto_1

    .line 92
    :cond_4
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, ".gz"

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    goto :goto_1

    .line 95
    :cond_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v4}, Ljava/io/File;->lastModified()J

    move-result-wide v7

    sub-long/2addr v5, v7

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-lez v5, :cond_6

    .line 96
    invoke-direct {p0, p1, v4}, Lcom/autoxing/delivery/controller/LogController;->gzipFile(Ljava/lang/String;Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_6
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_7
    :goto_2
    return-void

    :catch_0
    move-exception p1

    .line 100
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_8
    return-void
.end method

.method private destoryProcess()V
    .locals 1

    .line 150
    :try_start_0
    iget-object v0, p0, Lcom/autoxing/delivery/controller/LogController;->mProcess:Ljava/lang/Process;

    if-eqz v0, :cond_0

    .line 151
    invoke-virtual {v0}, Ljava/lang/Process;->destroy()V

    const/4 v0, 0x0

    .line 152
    iput-object v0, p0, Lcom/autoxing/delivery/controller/LogController;->mProcess:Ljava/lang/Process;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 155
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method private getCurrDay()Ljava/lang/String;
    .locals 3

    .line 64
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 65
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyyMMdd"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 66
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/autoxing/delivery/controller/LogController;
    .locals 2

    .line 40
    sget-object v0, Lcom/autoxing/delivery/controller/LogController;->INSTANCE:Lcom/autoxing/delivery/controller/LogController;

    if-nez v0, :cond_1

    .line 41
    const-class v0, Lcom/autoxing/delivery/controller/LogController;

    monitor-enter v0

    .line 42
    :try_start_0
    sget-object v1, Lcom/autoxing/delivery/controller/LogController;->INSTANCE:Lcom/autoxing/delivery/controller/LogController;

    if-nez v1, :cond_0

    .line 43
    new-instance v1, Lcom/autoxing/delivery/controller/LogController;

    invoke-direct {v1, p0}, Lcom/autoxing/delivery/controller/LogController;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/autoxing/delivery/controller/LogController;->INSTANCE:Lcom/autoxing/delivery/controller/LogController;

    .line 45
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 47
    :cond_1
    :goto_0
    sget-object p0, Lcom/autoxing/delivery/controller/LogController;->INSTANCE:Lcom/autoxing/delivery/controller/LogController;

    return-object p0
.end method

.method private gzipFile(Ljava/lang/String;Ljava/io/File;)V
    .locals 4

    .line 106
    new-instance v0, Ljava/io/File;

    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, ".log"

    const-string v3, ".gz"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    invoke-static {p2, v0}, Lcom/autoxing/delivery/controller/LogController;->compressForGzip(Ljava/io/File;Ljava/io/File;)Z

    .line 108
    invoke-static {v0}, Lcom/autoxing/delivery/controller/LogController;->isValidGzipFile(Ljava/io/File;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 109
    invoke-virtual {p2}, Ljava/io/File;->delete()Z

    :cond_0
    return-void
.end method

.method public static final isValidGzipFile(Ljava/io/File;)Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 225
    :try_start_0
    new-instance v2, Ljava/util/zip/GZIPInputStream;

    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v3}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 226
    :try_start_1
    invoke-virtual {v2}, Ljava/util/zip/GZIPInputStream;->available()I

    move-result p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-lez p0, :cond_0

    const/4 v0, 0x1

    .line 233
    :cond_0
    :try_start_2
    invoke-virtual {v2}, Ljava/util/zip/GZIPInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 235
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :goto_0
    return v0

    :catchall_0
    move-exception p0

    move-object v1, v2

    goto :goto_3

    :catch_1
    move-exception p0

    move-object v1, v2

    goto :goto_1

    :catchall_1
    move-exception p0

    goto :goto_3

    :catch_2
    move-exception p0

    .line 229
    :goto_1
    :try_start_3
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v1, :cond_1

    .line 233
    :try_start_4
    invoke-virtual {v1}, Ljava/util/zip/GZIPInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_2

    :catch_3
    move-exception p0

    .line 235
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_1
    :goto_2
    return v0

    :goto_3
    if-eqz v1, :cond_2

    .line 233
    :try_start_5
    invoke-virtual {v1}, Ljava/util/zip/GZIPInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_4

    :catch_4
    move-exception v0

    .line 235
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 238
    :cond_2
    :goto_4
    throw p0
.end method

.method private saveLogcatToFile()Ljava/lang/Process;
    .locals 4

    .line 160
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/autoxing/delivery/constant/Configs;->SYSTEM_LOG_PATH:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 161
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 162
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v1

    .line 163
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "mkdirs "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/autoxing/delivery/controller/LogController;->debug(Ljava/lang/String;)V

    .line 165
    :cond_0
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyyMMddHHmm"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 166
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "log_"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".log"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 167
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 168
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "logcat -f "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 170
    :try_start_0
    invoke-direct {p0, v0}, Lcom/autoxing/delivery/controller/LogController;->debug(Ljava/lang/String;)V

    .line 171
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v1

    .line 173
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " error=>"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/autoxing/delivery/controller/LogController;->debug(Ljava/lang/String;)V

    .line 174
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public start()V
    .locals 3

    .line 125
    iget-boolean v0, p0, Lcom/autoxing/delivery/controller/LogController;->isRunning:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 128
    iput-boolean v0, p0, Lcom/autoxing/delivery/controller/LogController;->isRunning:Z

    .line 129
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.TIME_TICK"

    .line 130
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 131
    iget-object v1, p0, Lcom/autoxing/delivery/controller/LogController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/autoxing/delivery/controller/LogController;->DateChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/4 v0, 0x2

    .line 132
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/autoxing/delivery/controller/LogController;->executorService:Ljava/util/concurrent/ExecutorService;

    .line 133
    new-instance v1, Lcom/autoxing/delivery/controller/LogController$LogcatTask;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/autoxing/delivery/controller/LogController$LogcatTask;-><init>(Lcom/autoxing/delivery/controller/LogController;Lcom/autoxing/delivery/controller/LogController$LogcatTask-IA;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method public stop()V
    .locals 2

    .line 137
    iget-boolean v0, p0, Lcom/autoxing/delivery/controller/LogController;->isRunning:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 140
    iput-boolean v0, p0, Lcom/autoxing/delivery/controller/LogController;->isRunning:Z

    .line 141
    iget-object v0, p0, Lcom/autoxing/delivery/controller/LogController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/autoxing/delivery/controller/LogController;->DateChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 142
    iget-object v0, p0, Lcom/autoxing/delivery/controller/LogController;->executorService:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_1

    .line 143
    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    const/4 v0, 0x0

    .line 144
    iput-object v0, p0, Lcom/autoxing/delivery/controller/LogController;->executorService:Ljava/util/concurrent/ExecutorService;

    :cond_1
    return-void
.end method
