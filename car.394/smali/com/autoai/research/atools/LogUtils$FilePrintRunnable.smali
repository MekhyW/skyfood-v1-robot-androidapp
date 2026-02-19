.class final Lcom/autoai/research/atools/LogUtils$FilePrintRunnable;
.super Ljava/lang/Object;
.source "LogUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/autoai/research/atools/LogUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "FilePrintRunnable"
.end annotation


# static fields
.field private static printWriterCahce:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Ljava/lang/String;",
            "Ljava/io/PrintWriter;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private level:I

.field private logName:Ljava/lang/String;

.field private msg:Ljava/lang/String;

.field private t:Ljava/lang/Throwable;

.field private tag:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 154
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lcom/autoai/research/atools/LogUtils$FilePrintRunnable;->printWriterCahce:Ljava/util/WeakHashMap;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 163
    iput p2, p0, Lcom/autoai/research/atools/LogUtils$FilePrintRunnable;->level:I

    .line 164
    iput-object p3, p0, Lcom/autoai/research/atools/LogUtils$FilePrintRunnable;->tag:Ljava/lang/String;

    .line 165
    iput-object p4, p0, Lcom/autoai/research/atools/LogUtils$FilePrintRunnable;->msg:Ljava/lang/String;

    .line 166
    iput-object p5, p0, Lcom/autoai/research/atools/LogUtils$FilePrintRunnable;->t:Ljava/lang/Throwable;

    .line 167
    iput-object p1, p0, Lcom/autoai/research/atools/LogUtils$FilePrintRunnable;->logName:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Lcom/autoai/research/atools/LogUtils$1;)V
    .locals 0

    .line 152
    invoke-direct/range {p0 .. p5}, Lcom/autoai/research/atools/LogUtils$FilePrintRunnable;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private levelName(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_4

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    const-string p1, "DEFAULT"

    return-object p1

    :cond_0
    const-string p1, "ERROR"

    return-object p1

    :cond_1
    const-string p1, "WARN"

    return-object p1

    :cond_2
    const-string p1, "INFO"

    return-object p1

    :cond_3
    const-string p1, "DEBUG"

    return-object p1

    :cond_4
    const-string p1, "VERBOSE"

    return-object p1
.end method


# virtual methods
.method public run()V
    .locals 10

    const-string v0, "\n"

    .line 189
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "MM-dd HH:mm:ss.SSS"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 193
    :try_start_0
    iget-object v4, p0, Lcom/autoai/research/atools/LogUtils$FilePrintRunnable;->logName:Ljava/lang/String;

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 194
    :cond_0
    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string v5, "yyyyMMdd"

    invoke-direct {v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 195
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/autoai/research/atools/LogUtils;->access$000()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "log_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".log"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/autoai/research/atools/LogUtils$FilePrintRunnable;->logName:Ljava/lang/String;

    .line 197
    :cond_1
    sget-object v4, Lcom/autoai/research/atools/LogUtils$FilePrintRunnable;->printWriterCahce:Ljava/util/WeakHashMap;

    iget-object v5, p0, Lcom/autoai/research/atools/LogUtils$FilePrintRunnable;->logName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/io/PrintWriter;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    if-nez v4, :cond_3

    .line 200
    :try_start_1
    new-instance v3, Ljava/io/File;

    iget-object v5, p0, Lcom/autoai/research/atools/LogUtils$FilePrintRunnable;->logName:Ljava/lang/String;

    invoke-direct {v3, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    invoke-static {v3}, Lcom/autoai/research/jtools/io/FileUtils;->checkDirExists(Ljava/io/File;)V

    .line 201
    new-instance v3, Ljava/io/File;

    iget-object v5, p0, Lcom/autoai/research/atools/LogUtils$FilePrintRunnable;->logName:Ljava/lang/String;

    invoke-direct {v3, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 202
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_2

    .line 203
    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z

    move-result v5

    if-nez v5, :cond_2

    return-void

    .line 208
    :cond_2
    new-instance v5, Ljava/io/PrintWriter;

    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v3, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    invoke-direct {v5, v6}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 209
    :try_start_2
    sget-object v3, Lcom/autoai/research/atools/LogUtils$FilePrintRunnable;->printWriterCahce:Ljava/util/WeakHashMap;

    iget-object v4, p0, Lcom/autoai/research/atools/LogUtils$FilePrintRunnable;->logName:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-object v3, v5

    goto :goto_0

    :catch_0
    move-object v3, v5

    goto/16 :goto_2

    :catch_1
    move-object v3, v4

    goto/16 :goto_2

    :cond_3
    move-object v3, v4

    .line 212
    :goto_0
    :try_start_3
    invoke-static {}, Lcom/autoai/research/atools/LogUtils;->access$100()Z

    move-result v4
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    const-string v5, "|"

    if-nez v4, :cond_4

    .line 214
    :try_start_4
    invoke-virtual {v3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 215
    iget v0, p0, Lcom/autoai/research/atools/LogUtils$FilePrintRunnable;->level:I

    invoke-direct {p0, v0}, Lcom/autoai/research/atools/LogUtils$FilePrintRunnable;->levelName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 218
    invoke-virtual {v3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 219
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 221
    invoke-virtual {v3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 222
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    sub-long/2addr v0, v6

    invoke-static {}, Lcom/autoai/research/atools/LogUtils;->access$200()J

    move-result-wide v6

    sub-long/2addr v0, v6

    invoke-virtual {v3, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    .line 223
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    sub-long/2addr v0, v6

    invoke-static {v0, v1}, Lcom/autoai/research/atools/LogUtils;->access$202(J)J

    .line 226
    invoke-virtual {v3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 227
    iget-object v0, p0, Lcom/autoai/research/atools/LogUtils$FilePrintRunnable;->tag:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 230
    invoke-virtual {v3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 231
    iget-object v0, p0, Lcom/autoai/research/atools/LogUtils$FilePrintRunnable;->msg:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 234
    iget-object v0, p0, Lcom/autoai/research/atools/LogUtils$FilePrintRunnable;->t:Ljava/lang/Throwable;

    if-eqz v0, :cond_6

    .line 235
    invoke-virtual {v0, v3}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    goto/16 :goto_1

    .line 238
    :cond_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v6, p0, Lcom/autoai/research/atools/LogUtils$FilePrintRunnable;->level:I

    invoke-direct {p0, v6}, Lcom/autoai/research/atools/LogUtils$FilePrintRunnable;->levelName(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    new-instance v6, Ljava/util/Date;

    invoke-direct {v6}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 239
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    sub-long/2addr v6, v8

    invoke-static {}, Lcom/autoai/research/atools/LogUtils;->access$200()J

    move-result-wide v8

    sub-long/2addr v6, v8

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lcom/autoai/research/atools/LogUtils$FilePrintRunnable;->tag:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lcom/autoai/research/atools/LogUtils$FilePrintRunnable;->msg:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 241
    iget-object v4, p0, Lcom/autoai/research/atools/LogUtils$FilePrintRunnable;->t:Ljava/lang/Throwable;

    if-eqz v4, :cond_5

    .line 242
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lcom/autoai/research/atools/LogUtils$FilePrintRunnable;->t:Ljava/lang/Throwable;

    invoke-static {v4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 244
    :cond_5
    new-instance v0, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {}, Lcom/autoai/research/atools/LogUtils;->access$300()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/autoai/research/jtools/security/XorUtils;->xoEncryptOrDecrypt([BLjava/lang/String;)[B

    move-result-object v1

    const-string v4, "ISO-8859-1"

    invoke-direct {v0, v1, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 248
    :cond_6
    :goto_1
    invoke-virtual {v3}, Ljava/io/PrintWriter;->println()V

    .line 249
    invoke-virtual {v3}, Ljava/io/PrintWriter;->flush()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    const/4 v2, 0x0

    .line 255
    :catch_2
    :goto_2
    invoke-static {}, Lcom/autoai/research/atools/LogUtils;->access$400()Ljava/util/concurrent/BlockingQueue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    if-eqz v2, :cond_9

    :cond_7
    if-eqz v3, :cond_8

    .line 257
    invoke-virtual {v3}, Ljava/io/PrintWriter;->close()V

    .line 259
    :cond_8
    iget-object v0, p0, Lcom/autoai/research/atools/LogUtils$FilePrintRunnable;->logName:Ljava/lang/String;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9

    .line 260
    sget-object v0, Lcom/autoai/research/atools/LogUtils$FilePrintRunnable;->printWriterCahce:Ljava/util/WeakHashMap;

    iget-object v1, p0, Lcom/autoai/research/atools/LogUtils$FilePrintRunnable;->logName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_9
    return-void
.end method
