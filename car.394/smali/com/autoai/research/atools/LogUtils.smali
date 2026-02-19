.class public final Lcom/autoai/research/atools/LogUtils;
.super Ljava/lang/Object;
.source "LogUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/autoai/research/atools/LogUtils$ExceptionHandlerListener;,
        Lcom/autoai/research/atools/LogUtils$CodeLocationStyle;,
        Lcom/autoai/research/atools/LogUtils$FilePrintRunnable;
    }
.end annotation


# static fields
.field private static final DEBUG:I = 0x2

.field private static final ERROR:I = 0x5

.field private static final GLOBAL:Ljava/lang/String; = "GLOBAL"

.field private static final INFO:I = 0x3

.field private static final TAG:Ljava/lang/String; = "LogUtils"

.field private static final VERBOSE:I = 0x1

.field private static final WARN:I = 0x4

.field private static debugPath:Ljava/lang/String; = null

.field private static executorService:Ljava/util/concurrent/ExecutorService; = null

.field private static isEncrypt:Z = false

.field private static isFileLoggable:Z = true

.field private static isLoggable:Z = true

.field private static isMonitorLoggable:Z = true

.field private static keyWord:Ljava/lang/String; = "61"

.field private static sleepTimes:J

.field private static workQueue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 117
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/debug"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/autoai/research/atools/LogUtils;->debugPath:Ljava/lang/String;

    const-wide/16 v0, 0x0

    .line 118
    sput-wide v0, Lcom/autoai/research/atools/LogUtils;->sleepTimes:J

    .line 308
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    sput-object v0, Lcom/autoai/research/atools/LogUtils;->workQueue:Ljava/util/concurrent/BlockingQueue;

    .line 309
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v2, 0x1

    const/4 v3, 0x1

    const-wide/16 v4, 0x0

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v7, Lcom/autoai/research/atools/LogUtils;->workQueue:Ljava/util/concurrent/BlockingQueue;

    const-string v1, "log"

    invoke-static {v1}, Lcom/autoai/research/jtools/ThreadPoolUtils;->createThreadFactory(Ljava/lang/String;)Ljava/util/concurrent/ThreadFactory;

    move-result-object v8

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    sput-object v0, Lcom/autoai/research/atools/LogUtils;->executorService:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 40
    sget-object v0, Lcom/autoai/research/atools/LogUtils;->debugPath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100()Z
    .locals 1

    .line 40
    sget-boolean v0, Lcom/autoai/research/atools/LogUtils;->isEncrypt:Z

    return v0
.end method

.method static synthetic access$200()J
    .locals 2

    .line 40
    sget-wide v0, Lcom/autoai/research/atools/LogUtils;->sleepTimes:J

    return-wide v0
.end method

.method static synthetic access$202(J)J
    .locals 0

    .line 40
    sput-wide p0, Lcom/autoai/research/atools/LogUtils;->sleepTimes:J

    return-wide p0
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    .line 40
    sget-object v0, Lcom/autoai/research/atools/LogUtils;->keyWord:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400()Ljava/util/concurrent/BlockingQueue;
    .locals 1

    .line 40
    sget-object v0, Lcom/autoai/research/atools/LogUtils;->workQueue:Ljava/util/concurrent/BlockingQueue;

    return-object v0
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x2

    .line 514
    invoke-static {v2, p0, p1, v0, v1}, Lcom/autoai/research/atools/LogUtils;->smartPrint(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    const/4 v0, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v5, p2

    .line 547
    invoke-static/range {v0 .. v5}, Lcom/autoai/research/atools/LogUtils;->smartPrint(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ZLjava/lang/String;)V

    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    const/4 v0, 0x2

    const/4 v1, 0x0

    .line 525
    invoke-static {v0, p0, p1, p2, v1}, Lcom/autoai/research/atools/LogUtils;->smartPrint(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 6

    const/4 v0, 0x2

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    .line 559
    invoke-static/range {v0 .. v5}, Lcom/autoai/research/atools/LogUtils;->smartPrint(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ZLjava/lang/String;)V

    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2

    const/4 v0, 0x2

    const/4 v1, 0x0

    .line 536
    invoke-static {v0, p0, p1, v1, p2}, Lcom/autoai/research/atools/LogUtils;->smartPrint(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 6

    const/4 v0, 0x2

    const/4 v3, 0x0

    move-object v1, p0

    move-object v2, p1

    move v4, p2

    move-object v5, p3

    .line 571
    invoke-static/range {v0 .. v5}, Lcom/autoai/research/atools/LogUtils;->smartPrint(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ZLjava/lang/String;)V

    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x2

    .line 715
    invoke-static {v2, p0, p1, v0, v1}, Lcom/autoai/research/atools/LogUtils;->smartPrint(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    const/4 v0, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v5, p2

    .line 748
    invoke-static/range {v0 .. v5}, Lcom/autoai/research/atools/LogUtils;->smartPrint(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ZLjava/lang/String;)V

    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    const/4 v0, 0x2

    const/4 v1, 0x0

    .line 726
    invoke-static {v0, p0, p1, p2, v1}, Lcom/autoai/research/atools/LogUtils;->smartPrint(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 6

    const/4 v0, 0x2

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    .line 760
    invoke-static/range {v0 .. v5}, Lcom/autoai/research/atools/LogUtils;->smartPrint(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ZLjava/lang/String;)V

    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2

    const/4 v0, 0x2

    const/4 v1, 0x0

    .line 737
    invoke-static {v0, p0, p1, v1, p2}, Lcom/autoai/research/atools/LogUtils;->smartPrint(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 6

    const/4 v0, 0x2

    const/4 v3, 0x0

    move-object v1, p0

    move-object v2, p1

    move v4, p2

    move-object v5, p3

    .line 772
    invoke-static/range {v0 .. v5}, Lcom/autoai/research/atools/LogUtils;->smartPrint(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ZLjava/lang/String;)V

    return-void
.end method

.method private static filePrint(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 9

    .line 811
    invoke-static {}, Lcom/autoai/research/atools/LogUtils;->isIsFileLoggable()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 814
    :cond_0
    sget-object v0, Lcom/autoai/research/atools/LogUtils;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v8, Lcom/autoai/research/atools/LogUtils$FilePrintRunnable;

    const/4 v7, 0x0

    move-object v1, v8

    move-object v2, p0

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v7}, Lcom/autoai/research/atools/LogUtils$FilePrintRunnable;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Lcom/autoai/research/atools/LogUtils$1;)V

    invoke-interface {v0, v8}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method public static filePrint(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    const/4 v0, 0x2

    .line 826
    invoke-static {p0, v0, p1, p2, p3}, Lcom/autoai/research/atools/LogUtils;->filePrint(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private static getCodeLocation(Lcom/autoai/research/atools/LogUtils$CodeLocationStyle;Ljava/lang/StackTraceElement;)Ljava/lang/StringBuilder;
    .locals 5

    .line 417
    invoke-virtual {p1}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 418
    invoke-virtual {p1}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v1

    .line 419
    invoke-virtual {p1}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v2

    .line 420
    invoke-virtual {p1}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object p1

    .line 421
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 422
    invoke-virtual {p0}, Lcom/autoai/research/atools/LogUtils$CodeLocationStyle;->isAt()Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "\tat "

    .line 423
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 425
    :cond_0
    invoke-virtual {p0}, Lcom/autoai/research/atools/LogUtils$CodeLocationStyle;->isSimpleClassName()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 426
    invoke-static {v0}, Lcom/autoai/research/atools/LogUtils;->getSimpleName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 428
    :cond_1
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    const-string p0, "."

    .line 430
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, "("

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, ":"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, ")"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-object v3
.end method

.method private static getSimpleName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "\\."

    .line 435
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 436
    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    aget-object p0, p0, v0

    return-object p0
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x2

    .line 581
    invoke-static {v2, p0, p1, v0, v1}, Lcom/autoai/research/atools/LogUtils;->smartPrint(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    const/4 v0, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v5, p2

    .line 614
    invoke-static/range {v0 .. v5}, Lcom/autoai/research/atools/LogUtils;->smartPrint(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ZLjava/lang/String;)V

    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    const/4 v0, 0x2

    const/4 v1, 0x0

    .line 592
    invoke-static {v0, p0, p1, p2, v1}, Lcom/autoai/research/atools/LogUtils;->smartPrint(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 6

    const/4 v0, 0x2

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    .line 626
    invoke-static/range {v0 .. v5}, Lcom/autoai/research/atools/LogUtils;->smartPrint(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ZLjava/lang/String;)V

    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2

    const/4 v0, 0x2

    const/4 v1, 0x0

    .line 603
    invoke-static {v0, p0, p1, v1, p2}, Lcom/autoai/research/atools/LogUtils;->smartPrint(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 6

    const/4 v0, 0x2

    const/4 v3, 0x0

    move-object v1, p0

    move-object v2, p1

    move v4, p2

    move-object v5, p3

    .line 638
    invoke-static/range {v0 .. v5}, Lcom/autoai/research/atools/LogUtils;->smartPrint(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ZLjava/lang/String;)V

    return-void
.end method

.method public static isIsFileLoggable()Z
    .locals 1

    .line 68
    sget-boolean v0, Lcom/autoai/research/atools/LogUtils;->isFileLoggable:Z

    return v0
.end method

.method public static isLoggable()Z
    .locals 1

    .line 58
    sget-boolean v0, Lcom/autoai/research/atools/LogUtils;->isLoggable:Z

    return v0
.end method

.method private static print(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 372
    sget-boolean v0, Lcom/autoai/research/atools/LogUtils;->isMonitorLoggable:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    if-eq p0, v0, :cond_9

    const/4 v0, 0x2

    if-eq p0, v0, :cond_7

    const/4 v0, 0x3

    if-eq p0, v0, :cond_5

    const/4 v0, 0x4

    if-eq p0, v0, :cond_3

    const/4 v0, 0x5

    if-eq p0, v0, :cond_1

    goto :goto_0

    :cond_1
    if-eqz p3, :cond_2

    .line 406
    invoke-static {p1, p2, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 408
    :cond_2
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    if-eqz p3, :cond_4

    .line 399
    invoke-static {p1, p2, p3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 401
    :cond_4
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_5
    if-eqz p3, :cond_6

    .line 392
    invoke-static {p1, p2, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 394
    :cond_6
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_7
    if-eqz p3, :cond_8

    .line 385
    invoke-static {p1, p2, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 387
    :cond_8
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_9
    if-eqz p3, :cond_a

    .line 378
    invoke-static {p1, p2, p3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 380
    :cond_a
    invoke-static {p1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public static registerUncaughtExceptionHandler(Lcom/autoai/research/atools/LogUtils$ExceptionHandlerListener;Ljava/lang/String;)V
    .locals 2

    .line 793
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    .line 794
    new-instance v1, Lcom/autoai/research/atools/LogUtils$1;

    invoke-direct {v1, p0, p1, v0}, Lcom/autoai/research/atools/LogUtils$1;-><init>(Lcom/autoai/research/atools/LogUtils$ExceptionHandlerListener;Ljava/lang/String;Ljava/lang/Thread$UncaughtExceptionHandler;)V

    invoke-static {v1}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    return-void
.end method

.method public static setLogPath(Ljava/lang/String;)V
    .locals 2

    .line 108
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 111
    :cond_0
    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 112
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 114
    :cond_1
    sput-object p0, Lcom/autoai/research/atools/LogUtils;->debugPath:Ljava/lang/String;

    return-void
.end method

.method public static setShowLog(ZZ)V
    .locals 0

    .line 97
    sput-boolean p0, Lcom/autoai/research/atools/LogUtils;->isMonitorLoggable:Z

    .line 98
    sput-boolean p1, Lcom/autoai/research/atools/LogUtils;->isFileLoggable:Z

    if-nez p0, :cond_1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 99
    :goto_1
    sput-boolean p0, Lcom/autoai/research/atools/LogUtils;->isLoggable:Z

    return-void
.end method

.method public static setXorEncryptLog(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    .line 86
    sput-boolean v0, Lcom/autoai/research/atools/LogUtils;->isEncrypt:Z

    .line 87
    sput-object p0, Lcom/autoai/research/atools/LogUtils;->keyWord:Ljava/lang/String;

    return-void
.end method

.method private static smartPrint(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Z)V
    .locals 6

    const/4 v5, 0x0

    move v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    .line 333
    invoke-static/range {v0 .. v5}, Lcom/autoai/research/atools/LogUtils;->smartPrint(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ZLjava/lang/String;)V

    return-void
.end method

.method private static smartPrint(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ZLjava/lang/String;)V
    .locals 6

    .line 339
    invoke-static {}, Lcom/autoai/research/atools/LogUtils;->isLoggable()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 343
    :cond_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    .line 345
    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    .line 349
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 350
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 351
    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 353
    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Lcom/autoai/research/atools/LogUtils$CodeLocationStyle;->FIRST:Lcom/autoai/research/atools/LogUtils$CodeLocationStyle;

    const/4 v4, 0x4

    aget-object v4, v1, v4

    .line 355
    invoke-static {v2, v4}, Lcom/autoai/research/atools/LogUtils;->getCodeLocation(Lcom/autoai/research/atools/LogUtils$CodeLocationStyle;Ljava/lang/StackTraceElement;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 358
    invoke-static {p0, p1, p2, p3}, Lcom/autoai/research/atools/LogUtils;->print(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 359
    invoke-static {p5, p0, p1, p2, p3}, Lcom/autoai/research/atools/LogUtils;->filePrint(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p2, 0x5

    :goto_0
    if-eqz p4, :cond_1

    .line 363
    array-length p3, v1

    if-ge p2, p3, :cond_1

    .line 364
    sget-object p3, Lcom/autoai/research/atools/LogUtils$CodeLocationStyle;->SUBSEQUENT:Lcom/autoai/research/atools/LogUtils$CodeLocationStyle;

    aget-object v0, v1, p2

    invoke-static {p3, v0}, Lcom/autoai/research/atools/LogUtils;->getCodeLocation(Lcom/autoai/research/atools/LogUtils$CodeLocationStyle;Ljava/lang/StackTraceElement;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const/4 v0, 0x0

    .line 365
    invoke-static {p0, p1, p3, v0}, Lcom/autoai/research/atools/LogUtils;->print(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 366
    invoke-static {p5, p0, p1, p3, v0}, Lcom/autoai/research/atools/LogUtils;->filePrint(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 447
    invoke-static {v2, p0, p1, v0, v1}, Lcom/autoai/research/atools/LogUtils;->smartPrint(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    return-void
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    const/4 v0, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v5, p2

    .line 480
    invoke-static/range {v0 .. v5}, Lcom/autoai/research/atools/LogUtils;->smartPrint(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ZLjava/lang/String;)V

    return-void
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 458
    invoke-static {v0, p0, p1, p2, v1}, Lcom/autoai/research/atools/LogUtils;->smartPrint(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    return-void
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 6

    const/4 v0, 0x1

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    .line 492
    invoke-static/range {v0 .. v5}, Lcom/autoai/research/atools/LogUtils;->smartPrint(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ZLjava/lang/String;)V

    return-void
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 469
    invoke-static {v0, p0, p1, v1, p2}, Lcom/autoai/research/atools/LogUtils;->smartPrint(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    return-void
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 6

    const/4 v0, 0x1

    const/4 v3, 0x0

    move-object v1, p0

    move-object v2, p1

    move v4, p2

    move-object v5, p3

    .line 504
    invoke-static/range {v0 .. v5}, Lcom/autoai/research/atools/LogUtils;->smartPrint(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ZLjava/lang/String;)V

    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x2

    .line 648
    invoke-static {v2, p0, p1, v0, v1}, Lcom/autoai/research/atools/LogUtils;->smartPrint(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    const/4 v0, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v5, p2

    .line 681
    invoke-static/range {v0 .. v5}, Lcom/autoai/research/atools/LogUtils;->smartPrint(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ZLjava/lang/String;)V

    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    const/4 v0, 0x2

    const/4 v1, 0x0

    .line 659
    invoke-static {v0, p0, p1, p2, v1}, Lcom/autoai/research/atools/LogUtils;->smartPrint(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 6

    const/4 v0, 0x2

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    .line 693
    invoke-static/range {v0 .. v5}, Lcom/autoai/research/atools/LogUtils;->smartPrint(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ZLjava/lang/String;)V

    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2

    const/4 v0, 0x2

    const/4 v1, 0x0

    .line 670
    invoke-static {v0, p0, p1, v1, p2}, Lcom/autoai/research/atools/LogUtils;->smartPrint(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 6

    const/4 v0, 0x2

    const/4 v3, 0x0

    move-object v1, p0

    move-object v2, p1

    move v4, p2

    move-object v5, p3

    .line 705
    invoke-static/range {v0 .. v5}, Lcom/autoai/research/atools/LogUtils;->smartPrint(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ZLjava/lang/String;)V

    return-void
.end method

.method public static writeLogByLocatCmd(Ljava/io/File;Ljava/lang/String;)V
    .locals 7

    const-string v0, "log_"

    const-string v1, "logcat -f "

    .line 128
    :try_start_0
    invoke-static {}, Lcom/autoai/research/atools/LogUtils;->isIsFileLoggable()Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    if-nez p0, :cond_1

    .line 134
    new-instance p0, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyyMMddHH"

    invoke-direct {p0, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 135
    new-instance v2, Ljava/io/File;

    sget-object v3, Lcom/autoai/research/atools/LogUtils;->debugPath:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 136
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, ".txt"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, v3, p0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object p0, v2

    .line 138
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/autoai/research/jtools/io/FileUtils;->checkDirExists(Ljava/io/File;)V

    .line 140
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 141
    invoke-static {p1}, Lcom/autoai/research/jtools/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 142
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, " | grep "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 144
    :cond_2
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 146
    invoke-static {}, Lcom/autoai/research/atools/LogUtils;->isLoggable()Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, "LogUtils"

    const-string v0, ""

    .line 147
    invoke-static {p1, v0, p0}, Lcom/autoai/research/atools/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_3
    :goto_0
    return-void
.end method
