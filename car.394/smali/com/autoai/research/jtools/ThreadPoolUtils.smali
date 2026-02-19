.class public final Lcom/autoai/research/jtools/ThreadPoolUtils;
.super Ljava/lang/Object;
.source "ThreadPoolUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/autoai/research/jtools/ThreadPoolUtils$DefaultThreadFactory;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createThreadFactory(Ljava/lang/String;)Ljava/util/concurrent/ThreadFactory;
    .locals 1

    .line 61
    new-instance v0, Lcom/autoai/research/jtools/ThreadPoolUtils$DefaultThreadFactory;

    invoke-direct {v0, p0}, Lcom/autoai/research/jtools/ThreadPoolUtils$DefaultThreadFactory;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static newScheduledThreadPool(Ljava/lang/String;ILjava/util/concurrent/RejectedExecutionHandler;)Ljava/util/concurrent/ScheduledThreadPoolExecutor;
    .locals 2

    .line 51
    new-instance v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    new-instance v1, Lcom/autoai/research/jtools/ThreadPoolUtils$DefaultThreadFactory;

    invoke-direct {v1, p0}, Lcom/autoai/research/jtools/ThreadPoolUtils$DefaultThreadFactory;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, p1, v1, p2}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(ILjava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V

    return-object v0
.end method

.method public static newThreadPool(Ljava/lang/String;IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/RejectedExecutionHandler;)Ljava/util/concurrent/ThreadPoolExecutor;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IIJ",
            "Ljava/util/concurrent/TimeUnit;",
            "Ljava/util/concurrent/BlockingQueue<",
            "Ljava/lang/Runnable;",
            ">;",
            "Ljava/util/concurrent/RejectedExecutionHandler;",
            ")",
            "Ljava/util/concurrent/ThreadPoolExecutor;"
        }
    .end annotation

    .line 37
    new-instance v9, Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v7, Lcom/autoai/research/jtools/ThreadPoolUtils$DefaultThreadFactory;

    move-object v0, p0

    invoke-direct {v7, p0}, Lcom/autoai/research/jtools/ThreadPoolUtils$DefaultThreadFactory;-><init>(Ljava/lang/String;)V

    move-object v0, v9

    move v1, p1

    move v2, p2

    move-wide v3, p3

    move-object v5, p5

    move-object/from16 v6, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V

    return-object v9
.end method
