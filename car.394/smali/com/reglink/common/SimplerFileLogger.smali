.class public Lcom/reglink/common/SimplerFileLogger;
.super Ljava/lang/Object;
.source "SimplerFileLogger.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# static fields
.field public static final Log_MQTT:I = 0x8

.field private static final TAG:Ljava/lang/String; = "SimplerFileLogger"

.field private static _OsClass:Ljava/lang/Class;

.field private static _OsSyncMethod:Ljava/lang/reflect/Method;

.field static firstInitTimestamp:J

.field private static osSyncFlag:Z


# instance fields
.field final MAX_LOG_FILE_BYTES:I

.field final Msg_Close:I

.field final Msg_FixFileNameDateIncorrect:I

.field final Msg_Flush:I

.field final Msg_FlushTimer:I

.field final TIMER_FLUSH_INTERVAL:I

.field allFileLenSum:J

.field private backLogs:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lcom/reglink/common/CalendarUtil;

.field private foreLogs:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field incorrectDatetime:Z

.field private final ioH:Landroid/os/Handler;

.field volatile logCount:I

.field logLevel:I

.field private logLocker:Ljava/lang/Object;

.field logPrinter:Ljava/io/PrintWriter;

.field logStream:Ljava/io/FileOutputStream;

.field name:Ljava/lang/String;

.field private now:J

.field outputFile:Ljava/io/File;

.field pid:I

.field final simpleDateFormat:Ljava/text/SimpleDateFormat;

.field final tmpDate:Ljava/util/Date;

.field private final tmpStringBuilder:Ljava/lang/StringBuilder;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "java.util.Arrays.useLegacyMergeSort"

    const-string v1, "true"

    .line 74
    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const/4 v0, 0x0

    .line 223
    sput-boolean v0, Lcom/reglink/common/SimplerFileLogger;->osSyncFlag:Z

    const/4 v0, 0x0

    .line 224
    sput-object v0, Lcom/reglink/common/SimplerFileLogger;->_OsClass:Ljava/lang/Class;

    .line 225
    sput-object v0, Lcom/reglink/common/SimplerFileLogger;->_OsSyncMethod:Ljava/lang/reflect/Method;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 4

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/reglink/common/SimplerFileLogger;->foreLogs:Ljava/util/LinkedList;

    .line 39
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/reglink/common/SimplerFileLogger;->backLogs:Ljava/util/LinkedList;

    const/4 v0, 0x3

    .line 42
    iput v0, p0, Lcom/reglink/common/SimplerFileLogger;->logLevel:I

    .line 44
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/reglink/common/SimplerFileLogger;->logLocker:Ljava/lang/Object;

    .line 45
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "MM-dd HH:mm:ss.SSS"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/reglink/common/SimplerFileLogger;->simpleDateFormat:Ljava/text/SimpleDateFormat;

    .line 46
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    iput-object v1, p0, Lcom/reglink/common/SimplerFileLogger;->tmpDate:Ljava/util/Date;

    .line 50
    new-instance v1, Lcom/reglink/common/CalendarUtil;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Lcom/reglink/common/CalendarUtil;-><init>(J)V

    iput-object v1, p0, Lcom/reglink/common/SimplerFileLogger;->c:Lcom/reglink/common/CalendarUtil;

    .line 51
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x80

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v1, p0, Lcom/reglink/common/SimplerFileLogger;->tmpStringBuilder:Ljava/lang/StringBuilder;

    const/high16 v1, 0xa00000

    .line 53
    iput v1, p0, Lcom/reglink/common/SimplerFileLogger;->MAX_LOG_FILE_BYTES:I

    const/16 v1, 0x1388

    .line 54
    iput v1, p0, Lcom/reglink/common/SimplerFileLogger;->TIMER_FLUSH_INTERVAL:I

    const/4 v1, 0x2

    .line 55
    iput v1, p0, Lcom/reglink/common/SimplerFileLogger;->Msg_Flush:I

    .line 56
    iput v0, p0, Lcom/reglink/common/SimplerFileLogger;->Msg_FlushTimer:I

    const/4 v0, 0x4

    .line 57
    iput v0, p0, Lcom/reglink/common/SimplerFileLogger;->Msg_Close:I

    const/4 v0, 0x5

    .line 58
    iput v0, p0, Lcom/reglink/common/SimplerFileLogger;->Msg_FixFileNameDateIncorrect:I

    const/4 v0, 0x0

    .line 64
    iput v0, p0, Lcom/reglink/common/SimplerFileLogger;->logCount:I

    const-wide/16 v1, 0x0

    .line 66
    iput-wide v1, p0, Lcom/reglink/common/SimplerFileLogger;->allFileLenSum:J

    .line 68
    iput-boolean v0, p0, Lcom/reglink/common/SimplerFileLogger;->incorrectDatetime:Z

    .line 70
    invoke-static {p0}, Lcom/reglink/common/IoHandler;->newHandler(Landroid/os/Handler$Callback;)Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/reglink/common/SimplerFileLogger;->ioH:Landroid/os/Handler;

    .line 78
    iput p2, p0, Lcom/reglink/common/SimplerFileLogger;->pid:I

    .line 79
    iput-object p1, p0, Lcom/reglink/common/SimplerFileLogger;->name:Ljava/lang/String;

    .line 81
    new-instance p2, Ljava/io/File;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "/mnt/sdcard/reglink_logs/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0}, Lcom/reglink/common/SimplerFileLogger;->getLogFileName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/reglink/common/SimplerFileLogger;->outputFile:Ljava/io/File;

    .line 82
    new-instance p1, Lcom/reglink/common/CalendarUtil;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-direct {p1, v0, v1}, Lcom/reglink/common/CalendarUtil;-><init>(J)V

    .line 83
    invoke-virtual {p1}, Lcom/reglink/common/CalendarUtil;->getYear()I

    move-result p1

    const/16 p2, 0x7e2

    if-ge p1, p2, :cond_0

    const/4 p1, 0x1

    .line 84
    iput-boolean p1, p0, Lcom/reglink/common/SimplerFileLogger;->incorrectDatetime:Z

    :cond_0
    return-void
.end method

.method private addLogLocked(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 188
    invoke-direct {p0, p1, p2, p3}, Lcom/reglink/common/SimplerFileLogger;->formatLog(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 189
    iget-object p2, p0, Lcom/reglink/common/SimplerFileLogger;->foreLogs:Ljava/util/LinkedList;

    invoke-virtual {p2, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private createLogFile()Z
    .locals 6

    .line 89
    iget-object v0, p0, Lcom/reglink/common/SimplerFileLogger;->logPrinter:Ljava/io/PrintWriter;

    if-nez v0, :cond_3

    const-string v0, "/mnt/sdcard"

    .line 90
    invoke-static {v0}, Lcom/reglink/common/FilePath;->canWrite(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "SimplerFileLogger"

    if-eqz v1, :cond_2

    .line 91
    new-instance v1, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "reglink_logs/"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/reglink/common/SimplerFileLogger;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 93
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    goto :goto_0

    .line 96
    :cond_0
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/reglink/common/SimplerFileLogger;->removeOldFiles(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 98
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    :goto_0
    :try_start_1
    new-instance v0, Ljava/io/FileOutputStream;

    iget-object v1, p0, Lcom/reglink/common/SimplerFileLogger;->outputFile:Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    iput-object v0, p0, Lcom/reglink/common/SimplerFileLogger;->logStream:Ljava/io/FileOutputStream;

    .line 103
    new-instance v0, Ljava/io/PrintWriter;

    new-instance v1, Ljava/io/OutputStreamWriter;

    new-instance v3, Ljava/io/BufferedOutputStream;

    iget-object v4, p0, Lcom/reglink/common/SimplerFileLogger;->logStream:Ljava/io/FileOutputStream;

    const/16 v5, 0x2000

    invoke-direct {v3, v4, v5}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    invoke-direct {v1, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v0, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    iput-object v0, p0, Lcom/reglink/common/SimplerFileLogger;->logPrinter:Ljava/io/PrintWriter;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 105
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "fail to create log file, path:"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/reglink/common/SimplerFileLogger;->outputFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ",exception:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    :goto_1
    iget-object v0, p0, Lcom/reglink/common/SimplerFileLogger;->logPrinter:Ljava/io/PrintWriter;

    if-eqz v0, :cond_1

    .line 108
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "log file created, path:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/reglink/common/SimplerFileLogger;->outputFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    :cond_1
    iget-boolean v0, p0, Lcom/reglink/common/SimplerFileLogger;->incorrectDatetime:Z

    if-eqz v0, :cond_3

    .line 111
    iget-object v0, p0, Lcom/reglink/common/SimplerFileLogger;->ioH:Landroid/os/Handler;

    const/4 v1, 0x5

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_2

    :cond_2
    const-string v0, "/mnt/sdcard unavailable!!  later create"

    .line 114
    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    :cond_3
    :goto_2
    iget-object v0, p0, Lcom/reglink/common/SimplerFileLogger;->logPrinter:Ljava/io/PrintWriter;

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    goto :goto_3

    :cond_4
    const/4 v0, 0x0

    :goto_3
    return v0
.end method

.method private doClose()V
    .locals 2

    .line 297
    iget-object v0, p0, Lcom/reglink/common/SimplerFileLogger;->ioH:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 298
    iget-object v0, p0, Lcom/reglink/common/SimplerFileLogger;->ioH:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 299
    iget-object v0, p0, Lcom/reglink/common/SimplerFileLogger;->logPrinter:Ljava/io/PrintWriter;

    if-nez v0, :cond_0

    return-void

    .line 300
    :cond_0
    invoke-direct {p0}, Lcom/reglink/common/SimplerFileLogger;->flushToFile()V

    .line 302
    :try_start_0
    iget-object v0, p0, Lcom/reglink/common/SimplerFileLogger;->logPrinter:Ljava/io/PrintWriter;

    invoke-virtual {v0}, Ljava/io/PrintWriter;->close()V

    .line 303
    iget-object v0, p0, Lcom/reglink/common/SimplerFileLogger;->logStream:Ljava/io/FileOutputStream;

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 305
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :goto_0
    const/4 v0, 0x0

    .line 307
    iput-object v0, p0, Lcom/reglink/common/SimplerFileLogger;->logPrinter:Ljava/io/PrintWriter;

    .line 308
    iput-object v0, p0, Lcom/reglink/common/SimplerFileLogger;->logStream:Ljava/io/FileOutputStream;

    return-void
.end method

.method private flushToFile()V
    .locals 1

    .line 267
    invoke-direct {p0}, Lcom/reglink/common/SimplerFileLogger;->createLogFile()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 268
    invoke-direct {p0}, Lcom/reglink/common/SimplerFileLogger;->swapLogs()I

    move-result v0

    if-lez v0, :cond_0

    .line 269
    iget-object v0, p0, Lcom/reglink/common/SimplerFileLogger;->backLogs:Ljava/util/LinkedList;

    invoke-direct {p0, v0}, Lcom/reglink/common/SimplerFileLogger;->writeToFile(Ljava/util/LinkedList;)V

    .line 270
    iget-object v0, p0, Lcom/reglink/common/SimplerFileLogger;->backLogs:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    :cond_0
    return-void
.end method

.method private formatLog(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 151
    iget-object v0, p0, Lcom/reglink/common/SimplerFileLogger;->tmpStringBuilder:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 152
    iget-object v0, p0, Lcom/reglink/common/SimplerFileLogger;->tmpStringBuilder:Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/reglink/common/SimplerFileLogger;->getDateTimeForLog()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    iget-object v0, p0, Lcom/reglink/common/SimplerFileLogger;->tmpStringBuilder:Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/reglink/common/SimplerFileLogger;->pid:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 154
    iget-object v0, p0, Lcom/reglink/common/SimplerFileLogger;->tmpStringBuilder:Ljava/lang/StringBuilder;

    const-string v2, "-"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    iget-object v0, p0, Lcom/reglink/common/SimplerFileLogger;->tmpStringBuilder:Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 157
    iget-object v0, p0, Lcom/reglink/common/SimplerFileLogger;->tmpStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 178
    :pswitch_0
    iget-object p1, p0, Lcom/reglink/common/SimplerFileLogger;->tmpStringBuilder:Ljava/lang/StringBuilder;

    const-string v0, "M/"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 175
    :pswitch_1
    iget-object p1, p0, Lcom/reglink/common/SimplerFileLogger;->tmpStringBuilder:Ljava/lang/StringBuilder;

    const-string v0, "A/"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 172
    :pswitch_2
    iget-object p1, p0, Lcom/reglink/common/SimplerFileLogger;->tmpStringBuilder:Ljava/lang/StringBuilder;

    const-string v0, "E/"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 169
    :pswitch_3
    iget-object p1, p0, Lcom/reglink/common/SimplerFileLogger;->tmpStringBuilder:Ljava/lang/StringBuilder;

    const-string v0, "W/"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 166
    :pswitch_4
    iget-object p1, p0, Lcom/reglink/common/SimplerFileLogger;->tmpStringBuilder:Ljava/lang/StringBuilder;

    const-string v0, "I/"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 163
    :pswitch_5
    iget-object p1, p0, Lcom/reglink/common/SimplerFileLogger;->tmpStringBuilder:Ljava/lang/StringBuilder;

    const-string v0, "D/"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 160
    :pswitch_6
    iget-object p1, p0, Lcom/reglink/common/SimplerFileLogger;->tmpStringBuilder:Ljava/lang/StringBuilder;

    const-string v0, "V/"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    :goto_0
    iget-object p1, p0, Lcom/reglink/common/SimplerFileLogger;->tmpStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    iget-object p1, p0, Lcom/reglink/common/SimplerFileLogger;->tmpStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    iget-object p1, p0, Lcom/reglink/common/SimplerFileLogger;->tmpStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    iget-object p1, p0, Lcom/reglink/common/SimplerFileLogger;->tmpStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getAllLogFiles(Ljava/io/File;)[Ljava/io/File;
    .locals 1

    .line 320
    new-instance v0, Lcom/reglink/common/SimplerFileLogger$1;

    invoke-direct {v0, p0}, Lcom/reglink/common/SimplerFileLogger$1;-><init>(Lcom/reglink/common/SimplerFileLogger;)V

    invoke-virtual {p1, v0}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object p1

    return-object p1
.end method

.method private getDateTimeForFileName()Ljava/lang/String;
    .locals 3

    .line 145
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/reglink/common/SimplerFileLogger;->now:J

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    .line 147
    iget-object v1, p0, Lcom/reglink/common/SimplerFileLogger;->c:Lcom/reglink/common/CalendarUtil;

    invoke-virtual {v1}, Lcom/reglink/common/CalendarUtil;->getYear()I

    move-result v1

    rem-int/lit8 v1, v1, 0x64

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/reglink/common/SimplerFileLogger;->c:Lcom/reglink/common/CalendarUtil;

    invoke-virtual {v1}, Lcom/reglink/common/CalendarUtil;->getMonth()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/reglink/common/SimplerFileLogger;->c:Lcom/reglink/common/CalendarUtil;

    invoke-virtual {v1}, Lcom/reglink/common/CalendarUtil;->getDay()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/reglink/common/SimplerFileLogger;->c:Lcom/reglink/common/CalendarUtil;

    invoke-virtual {v1}, Lcom/reglink/common/CalendarUtil;->getHours()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/reglink/common/SimplerFileLogger;->c:Lcom/reglink/common/CalendarUtil;

    invoke-virtual {v1}, Lcom/reglink/common/CalendarUtil;->getMinutes()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/reglink/common/SimplerFileLogger;->c:Lcom/reglink/common/CalendarUtil;

    invoke-virtual {v1}, Lcom/reglink/common/CalendarUtil;->getSecond()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string v1, "%02d%02d%02d_%02d%02d%02d"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getDateTimeForLog()Ljava/lang/String;
    .locals 3

    .line 139
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/reglink/common/SimplerFileLogger;->now:J

    .line 140
    iget-object v2, p0, Lcom/reglink/common/SimplerFileLogger;->tmpDate:Ljava/util/Date;

    invoke-virtual {v2, v0, v1}, Ljava/util/Date;->setTime(J)V

    .line 141
    iget-object v0, p0, Lcom/reglink/common/SimplerFileLogger;->simpleDateFormat:Ljava/text/SimpleDateFormat;

    iget-object v1, p0, Lcom/reglink/common/SimplerFileLogger;->tmpDate:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getLogFileName()Ljava/lang/String;
    .locals 2

    .line 135
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "log_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/reglink/common/SimplerFileLogger;->getDateTimeForFileName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".txt"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private log(Ljava/lang/String;)V
    .locals 1

    const-string v0, "SimplerFileLogger"

    .line 316
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static osSync(Ljava/io/FileDescriptor;)V
    .locals 6

    .line 229
    sget-boolean v0, Lcom/reglink/common/SimplerFileLogger;->osSyncFlag:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    .line 230
    sput-boolean v2, Lcom/reglink/common/SimplerFileLogger;->osSyncFlag:Z

    :try_start_0
    const-string v0, "android.system.Os"

    .line 232
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/reglink/common/SimplerFileLogger;->_OsClass:Ljava/lang/Class;

    const-string v3, "fsync"

    new-array v4, v2, [Ljava/lang/Class;

    .line 233
    const-class v5, Ljava/io/FileDescriptor;

    aput-object v5, v4, v1

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/reglink/common/SimplerFileLogger;->_OsSyncMethod:Ljava/lang/reflect/Method;

    .line 234
    invoke-virtual {v0, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 238
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    .line 236
    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    .line 241
    :cond_0
    :goto_0
    sget-object v0, Lcom/reglink/common/SimplerFileLogger;->_OsSyncMethod:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_1

    .line 243
    :try_start_1
    sget-object v3, Lcom/reglink/common/SimplerFileLogger;->_OsClass:Ljava/lang/Class;

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v1

    invoke-virtual {v0, v3, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_1

    :catch_2
    move-exception p0

    .line 247
    invoke-virtual {p0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_1

    :catch_3
    move-exception p0

    .line 245
    invoke-virtual {p0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    :cond_1
    :goto_1
    return-void
.end method

.method private swapLogs()I
    .locals 4

    .line 278
    iget-object v0, p0, Lcom/reglink/common/SimplerFileLogger;->logLocker:Ljava/lang/Object;

    monitor-enter v0

    .line 279
    :try_start_0
    iget v1, p0, Lcom/reglink/common/SimplerFileLogger;->logCount:I

    .line 280
    iget-object v2, p0, Lcom/reglink/common/SimplerFileLogger;->foreLogs:Ljava/util/LinkedList;

    .line 281
    iget-object v3, p0, Lcom/reglink/common/SimplerFileLogger;->backLogs:Ljava/util/LinkedList;

    iput-object v3, p0, Lcom/reglink/common/SimplerFileLogger;->foreLogs:Ljava/util/LinkedList;

    .line 282
    iput-object v2, p0, Lcom/reglink/common/SimplerFileLogger;->backLogs:Ljava/util/LinkedList;

    .line 285
    invoke-virtual {v3}, Ljava/util/LinkedList;->clear()V

    const/4 v2, 0x0

    .line 286
    iput v2, p0, Lcom/reglink/common/SimplerFileLogger;->logCount:I

    .line 287
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private writeToFile(Ljava/util/LinkedList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 254
    invoke-virtual {p1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 255
    iget-object v1, p0, Lcom/reglink/common/SimplerFileLogger;->logPrinter:Ljava/io/PrintWriter;

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 257
    :cond_0
    iget-object p1, p0, Lcom/reglink/common/SimplerFileLogger;->logPrinter:Ljava/io/PrintWriter;

    invoke-virtual {p1}, Ljava/io/PrintWriter;->flush()V

    .line 259
    :try_start_0
    iget-object p1, p0, Lcom/reglink/common/SimplerFileLogger;->logStream:Ljava/io/FileOutputStream;

    invoke-virtual {p1}, Ljava/io/FileOutputStream;->flush()V

    .line 260
    iget-object p1, p0, Lcom/reglink/common/SimplerFileLogger;->logStream:Ljava/io/FileOutputStream;

    invoke-virtual {p1}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object p1

    invoke-static {p1}, Lcom/reglink/common/SimplerFileLogger;->osSync(Ljava/io/FileDescriptor;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 262
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :goto_1
    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    .line 293
    iget-object v0, p0, Lcom/reglink/common/SimplerFileLogger;->ioH:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public flush()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 372
    iget-object v0, p0, Lcom/reglink/common/SimplerFileLogger;->ioH:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public freeSpace()V
    .locals 1

    .line 368
    iget-object v0, p0, Lcom/reglink/common/SimplerFileLogger;->outputFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/reglink/common/SimplerFileLogger;->removeOldFiles(Ljava/io/File;)V

    return-void
.end method

.method public getCurrentFileLength()J
    .locals 2

    .line 312
    iget-object v0, p0, Lcom/reglink/common/SimplerFileLogger;->outputFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    return-wide v0
.end method

.method public getFilePath()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 376
    iget-object v0, p0, Lcom/reglink/common/SimplerFileLogger;->outputFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 6

    .line 381
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x0

    const/4 v1, 0x2

    if-eq p1, v1, :cond_4

    const-wide/16 v2, 0x1388

    const/4 v4, 0x3

    if-eq p1, v4, :cond_3

    const/4 v1, 0x4

    if-eq p1, v1, :cond_2

    const/4 v1, 0x5

    if-eq p1, v1, :cond_0

    goto/16 :goto_0

    .line 396
    :cond_0
    iget-boolean p1, p0, Lcom/reglink/common/SimplerFileLogger;->incorrectDatetime:Z

    if-eqz p1, :cond_5

    .line 397
    iget-object p1, p0, Lcom/reglink/common/SimplerFileLogger;->outputFile:Ljava/io/File;

    if-eqz p1, :cond_1

    .line 398
    new-instance p1, Lcom/reglink/common/CalendarUtil;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {p1, v4, v5}, Lcom/reglink/common/CalendarUtil;-><init>(J)V

    .line 399
    invoke-virtual {p1}, Lcom/reglink/common/CalendarUtil;->getYear()I

    move-result p1

    const/16 v4, 0x7e2

    if-le p1, v4, :cond_1

    .line 400
    invoke-direct {p0}, Lcom/reglink/common/SimplerFileLogger;->getLogFileName()Ljava/lang/String;

    move-result-object p1

    .line 401
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "/mnt/sdcard/reglink_logs/"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/reglink/common/SimplerFileLogger;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 402
    iget-object v3, p0, Lcom/reglink/common/SimplerFileLogger;->outputFile:Ljava/io/File;

    invoke-virtual {v3, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 403
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "rename log file to "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "SimplerFileLogger"

    invoke-virtual {p0, v1, v4, v2}, Lcom/reglink/common/SimplerFileLogger;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 404
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    iput-boolean v0, p0, Lcom/reglink/common/SimplerFileLogger;->incorrectDatetime:Z

    goto :goto_0

    .line 409
    :cond_1
    iget-object p1, p0, Lcom/reglink/common/SimplerFileLogger;->ioH:Landroid/os/Handler;

    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 392
    :cond_2
    invoke-direct {p0}, Lcom/reglink/common/SimplerFileLogger;->doClose()V

    goto :goto_0

    .line 387
    :cond_3
    iget-object p1, p0, Lcom/reglink/common/SimplerFileLogger;->ioH:Landroid/os/Handler;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 388
    iget-object p1, p0, Lcom/reglink/common/SimplerFileLogger;->ioH:Landroid/os/Handler;

    invoke-virtual {p1, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 383
    :cond_4
    invoke-direct {p0}, Lcom/reglink/common/SimplerFileLogger;->flushToFile()V

    :cond_5
    :goto_0
    return v0
.end method

.method public init()Z
    .locals 4

    .line 121
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "logger "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/reglink/common/SimplerFileLogger;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " init"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/reglink/common/SimplerFileLogger;->log(Ljava/lang/String;)V

    .line 123
    sget-wide v0, Lcom/reglink/common/SimplerFileLogger;->firstInitTimestamp:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 124
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/reglink/common/SimplerFileLogger;->firstInitTimestamp:J

    .line 128
    :cond_0
    iget-object v0, p0, Lcom/reglink/common/SimplerFileLogger;->ioH:Landroid/os/Handler;

    const/4 v1, 0x3

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    const-string v0, "Logger"

    const-string v1, "init"

    const/4 v2, 0x4

    .line 129
    invoke-virtual {p0, v2, v0, v1}, Lcom/reglink/common/SimplerFileLogger;->log(ILjava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0
.end method

.method public log(ILjava/lang/String;Ljava/lang/String;)V
    .locals 5

    .line 198
    iget v0, p0, Lcom/reglink/common/SimplerFileLogger;->logLevel:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    if-lt p1, v0, :cond_2

    .line 199
    :cond_0
    iget v0, p0, Lcom/reglink/common/SimplerFileLogger;->logCount:I

    const/16 v1, 0x3e8

    const/4 v2, 0x2

    if-le v0, v1, :cond_1

    .line 204
    iget-object v0, p0, Lcom/reglink/common/SimplerFileLogger;->logPrinter:Ljava/io/PrintWriter;

    if-nez v0, :cond_1

    .line 205
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 206
    sget-wide v3, Lcom/reglink/common/SimplerFileLogger;->firstInitTimestamp:J

    sub-long/2addr v0, v3

    const-wide/32 v3, 0x1d4c0

    cmp-long v0, v0, v3

    if-ltz v0, :cond_1

    const v0, 0x7fffffff

    .line 208
    iput v0, p0, Lcom/reglink/common/SimplerFileLogger;->logLevel:I

    .line 209
    iget-object v0, p0, Lcom/reglink/common/SimplerFileLogger;->ioH:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 210
    iget-object v0, p0, Lcom/reglink/common/SimplerFileLogger;->ioH:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 214
    :cond_1
    iget-object v0, p0, Lcom/reglink/common/SimplerFileLogger;->logLocker:Ljava/lang/Object;

    monitor-enter v0

    .line 215
    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lcom/reglink/common/SimplerFileLogger;->addLogLocked(ILjava/lang/String;Ljava/lang/String;)V

    .line 216
    iget p1, p0, Lcom/reglink/common/SimplerFileLogger;->logCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/reglink/common/SimplerFileLogger;->logCount:I

    .line 217
    iget-object p1, p0, Lcom/reglink/common/SimplerFileLogger;->ioH:Landroid/os/Handler;

    invoke-virtual {p1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 218
    iget-object p1, p0, Lcom/reglink/common/SimplerFileLogger;->ioH:Landroid/os/Handler;

    const-wide/16 p2, 0xc8

    invoke-virtual {p1, v2, p2, p3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 219
    monitor-exit v0

    :cond_2
    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public removeOldFiles(Ljava/io/File;)V
    .locals 8

    if-eqz p1, :cond_4

    .line 330
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_3

    .line 331
    :cond_0
    invoke-direct {p0, p1}, Lcom/reglink/common/SimplerFileLogger;->getAllLogFiles(Ljava/io/File;)[Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 332
    array-length v0, p1

    if-lez v0, :cond_4

    const-wide/16 v0, 0x0

    .line 333
    iput-wide v0, p0, Lcom/reglink/common/SimplerFileLogger;->allFileLenSum:J

    .line 334
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p1, v2

    .line 335
    iget-wide v4, p0, Lcom/reglink/common/SimplerFileLogger;->allFileLenSum:J

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v6

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/reglink/common/SimplerFileLogger;->allFileLenSum:J

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 337
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "name:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/reglink/common/SimplerFileLogger;->name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", log\u6587\u4ef6\u603b\u5927\u5c0f:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/reglink/common/SimplerFileLogger;->allFileLenSum:J

    invoke-static {v2, v3}, Lcom/reglink/common/Format;->formatFileSize(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/reglink/common/SimplerFileLogger;->log(Ljava/lang/String;)V

    .line 338
    iget-wide v2, p0, Lcom/reglink/common/SimplerFileLogger;->allFileLenSum:J

    const-wide/32 v4, 0xa00000

    cmp-long v0, v2, v4

    if-ltz v0, :cond_4

    const-string v0, "log\u6587\u4ef6\u8d85\u8fc7\u9650\u5236\uff0c\u5220\u9664\u8001\u6587\u4ef6"

    .line 339
    invoke-direct {p0, v0}, Lcom/reglink/common/SimplerFileLogger;->log(Ljava/lang/String;)V

    .line 340
    new-instance v0, Lcom/reglink/common/SimplerFileLogger$2;

    invoke-direct {v0, p0}, Lcom/reglink/common/SimplerFileLogger$2;-><init>(Lcom/reglink/common/SimplerFileLogger;)V

    invoke-static {p1, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 348
    :goto_1
    array-length v0, p1

    if-ge v1, v0, :cond_4

    .line 349
    aget-object v0, p1, v1

    .line 350
    iget-object v2, p0, Lcom/reglink/common/SimplerFileLogger;->outputFile:Ljava/io/File;

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/reglink/common/SimplerFileLogger;->outputFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_2

    .line 351
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u5220\u9664\u6587\u4ef6:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/reglink/common/SimplerFileLogger;->log(Ljava/lang/String;)V

    .line 352
    iget-wide v2, p0, Lcom/reglink/common/SimplerFileLogger;->allFileLenSum:J

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v6

    sub-long/2addr v2, v6

    iput-wide v2, p0, Lcom/reglink/common/SimplerFileLogger;->allFileLenSum:J

    .line 353
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 357
    iget-wide v2, p0, Lcom/reglink/common/SimplerFileLogger;->allFileLenSum:J

    cmp-long v0, v2, v4

    if-gez v0, :cond_3

    goto :goto_3

    :cond_3
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    :goto_3
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 419
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "[name:"

    .line 420
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/reglink/common/SimplerFileLogger;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",file:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/reglink/common/SimplerFileLogger;->outputFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",currentFileLen:"

    .line 421
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/reglink/common/SimplerFileLogger;->getCurrentFileLength()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/reglink/common/Format;->formatFileSize(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",allFileLenSum:"

    .line 422
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/reglink/common/SimplerFileLogger;->allFileLenSum:J

    invoke-static {v2, v3}, Lcom/reglink/common/Format;->formatFileSize(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 423
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
