.class public Lcom/autoxing/delivery/download/MultiDownTask;
.super Ljava/lang/Object;
.source "MultiDownTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/autoxing/delivery/download/MultiDownTask$OnTaskListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MultiDownTask"


# instance fields
.field private downLoadStatusMaps:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/autoxing/delivery/download/lib/DownloadStatus;",
            ">;"
        }
    .end annotation
.end field

.field private downLoadTaskMaps:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/autoxing/delivery/download/lib/DownloadTask;",
            ">;"
        }
    .end annotation
.end field

.field private executorService:Ljava/util/concurrent/ExecutorService;

.field private lastDownLength:J

.field private mListener:Lcom/autoxing/delivery/download/MultiDownTask$OnTaskListener;

.field private mOnDownloadListener:Lcom/autoxing/delivery/download/lib/OnDownloadListener;

.field private timer:Ljava/util/Timer;

.field private timerTask:Ljava/util/TimerTask;


# direct methods
.method static bridge synthetic -$$Nest$fgetdownLoadStatusMaps(Lcom/autoxing/delivery/download/MultiDownTask;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 0

    iget-object p0, p0, Lcom/autoxing/delivery/download/MultiDownTask;->downLoadStatusMaps:Ljava/util/concurrent/ConcurrentHashMap;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetlastDownLength(Lcom/autoxing/delivery/download/MultiDownTask;)J
    .locals 2

    iget-wide v0, p0, Lcom/autoxing/delivery/download/MultiDownTask;->lastDownLength:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetmListener(Lcom/autoxing/delivery/download/MultiDownTask;)Lcom/autoxing/delivery/download/MultiDownTask$OnTaskListener;
    .locals 0

    iget-object p0, p0, Lcom/autoxing/delivery/download/MultiDownTask;->mListener:Lcom/autoxing/delivery/download/MultiDownTask$OnTaskListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputlastDownLength(Lcom/autoxing/delivery/download/MultiDownTask;J)V
    .locals 0

    iput-wide p1, p0, Lcom/autoxing/delivery/download/MultiDownTask;->lastDownLength:J

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/autoxing/delivery/download/MultiDownTask;->downLoadStatusMaps:Ljava/util/concurrent/ConcurrentHashMap;

    .line 39
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/autoxing/delivery/download/MultiDownTask;->downLoadTaskMaps:Ljava/util/concurrent/ConcurrentHashMap;

    .line 41
    new-instance v0, Lcom/autoxing/delivery/download/MultiDownTask$1;

    invoke-direct {v0, p0}, Lcom/autoxing/delivery/download/MultiDownTask$1;-><init>(Lcom/autoxing/delivery/download/MultiDownTask;)V

    iput-object v0, p0, Lcom/autoxing/delivery/download/MultiDownTask;->mOnDownloadListener:Lcom/autoxing/delivery/download/lib/OnDownloadListener;

    return-void
.end method

.method private clear()V
    .locals 2

    .line 166
    iget-object v0, p0, Lcom/autoxing/delivery/download/MultiDownTask;->downLoadTaskMaps:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 167
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/autoxing/delivery/download/lib/DownloadTask;

    invoke-virtual {v1}, Lcom/autoxing/delivery/download/lib/DownloadTask;->stop()V

    goto :goto_0

    .line 169
    :cond_0
    iget-object v0, p0, Lcom/autoxing/delivery/download/MultiDownTask;->downLoadStatusMaps:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 170
    iget-object v0, p0, Lcom/autoxing/delivery/download/MultiDownTask;->downLoadTaskMaps:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 171
    iget-object v0, p0, Lcom/autoxing/delivery/download/MultiDownTask;->executorService:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_1

    .line 173
    :try_start_0
    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 175
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_1
    return-void
.end method

.method private startTimer(Lcom/alibaba/fastjson/JSONArray;J)V
    .locals 7

    .line 93
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/autoxing/delivery/download/MultiDownTask;->timer:Ljava/util/Timer;

    .line 94
    new-instance v2, Lcom/autoxing/delivery/download/MultiDownTask$2;

    invoke-direct {v2, p0, p1, p2, p3}, Lcom/autoxing/delivery/download/MultiDownTask$2;-><init>(Lcom/autoxing/delivery/download/MultiDownTask;Lcom/alibaba/fastjson/JSONArray;J)V

    iput-object v2, p0, Lcom/autoxing/delivery/download/MultiDownTask;->timerTask:Ljava/util/TimerTask;

    .line 135
    iget-object v1, p0, Lcom/autoxing/delivery/download/MultiDownTask;->timer:Ljava/util/Timer;

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x3e8

    invoke-virtual/range {v1 .. v6}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    return-void
.end method

.method private stopTimer()V
    .locals 2

    const/4 v0, 0x0

    .line 74
    :try_start_0
    iget-object v1, p0, Lcom/autoxing/delivery/download/MultiDownTask;->timerTask:Ljava/util/TimerTask;

    if-eqz v1, :cond_0

    .line 75
    invoke-virtual {v1}, Ljava/util/TimerTask;->cancel()Z

    .line 76
    iput-object v0, p0, Lcom/autoxing/delivery/download/MultiDownTask;->timerTask:Ljava/util/TimerTask;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 79
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 83
    :cond_0
    :goto_0
    :try_start_1
    iget-object v1, p0, Lcom/autoxing/delivery/download/MultiDownTask;->timer:Ljava/util/Timer;

    if-eqz v1, :cond_1

    .line 84
    invoke-virtual {v1}, Ljava/util/Timer;->cancel()V

    .line 85
    iput-object v0, p0, Lcom/autoxing/delivery/download/MultiDownTask;->timer:Ljava/util/Timer;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 88
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_1
    return-void
.end method


# virtual methods
.method public setListener(Lcom/autoxing/delivery/download/MultiDownTask$OnTaskListener;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/autoxing/delivery/download/MultiDownTask;->mListener:Lcom/autoxing/delivery/download/MultiDownTask$OnTaskListener;

    return-void
.end method

.method public start(Lcom/alibaba/fastjson/JSONArray;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson/JSONArray;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    .line 139
    invoke-virtual/range {p0 .. p0}, Lcom/autoxing/delivery/download/MultiDownTask;->stop()V

    const/4 v5, 0x5

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    new-array v7, v6, [Ljava/lang/String;

    .line 141
    invoke-interface {v2, v7}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    aput-object v7, v5, v8

    new-array v7, v6, [Ljava/lang/String;

    invoke-interface {v3, v7}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x2

    aput-object v7, v5, v8

    const/4 v7, 0x3

    aput-object v4, v5, v7

    const/4 v7, 0x4

    invoke-static/range {p6 .. p7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v5, v7

    const-string v7, "dataList = %s,urlList = %s,nameList = %s,downloadPath = %s,totalSize = %d"

    invoke-static {v7, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const-string v7, "MultiDownTask"

    invoke-static {v7, v5}, Lcom/autoai/research/atools/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v5

    const-wide/16 v7, 0x0

    .line 143
    iput-wide v7, v0, Lcom/autoxing/delivery/download/MultiDownTask;->lastDownLength:J

    .line 144
    invoke-static {v5}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v7

    iput-object v7, v0, Lcom/autoxing/delivery/download/MultiDownTask;->executorService:Ljava/util/concurrent/ExecutorService;

    :goto_0
    if-ge v6, v5, :cond_0

    .line 146
    invoke-virtual {v1, v6}, Lcom/alibaba/fastjson/JSONArray;->getJSONObject(I)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v7

    const-string v8, "fileSize"

    .line 147
    invoke-virtual {v7, v8}, Lcom/alibaba/fastjson/JSONObject;->getLongValue(Ljava/lang/String;)J

    move-result-wide v12

    .line 148
    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 149
    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 150
    new-instance v15, Lcom/autoxing/delivery/download/lib/DownloadTask;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    iget-object v14, v0, Lcom/autoxing/delivery/download/MultiDownTask;->mOnDownloadListener:Lcom/autoxing/delivery/download/lib/OnDownloadListener;

    move-object v9, v15

    move-object v10, v7

    invoke-direct/range {v9 .. v14}, Lcom/autoxing/delivery/download/lib/DownloadTask;-><init>(Ljava/lang/String;Ljava/lang/String;JLcom/autoxing/delivery/download/lib/OnDownloadListener;)V

    .line 151
    invoke-virtual {v15}, Lcom/autoxing/delivery/download/lib/DownloadTask;->getDownSize()J

    move-result-wide v8

    .line 152
    iget-wide v10, v0, Lcom/autoxing/delivery/download/MultiDownTask;->lastDownLength:J

    add-long/2addr v10, v8

    iput-wide v10, v0, Lcom/autoxing/delivery/download/MultiDownTask;->lastDownLength:J

    .line 153
    iget-object v10, v0, Lcom/autoxing/delivery/download/MultiDownTask;->downLoadStatusMaps:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v11, Lcom/autoxing/delivery/download/lib/DownloadStatus;

    invoke-direct {v11, v7, v8, v9}, Lcom/autoxing/delivery/download/lib/DownloadStatus;-><init>(Ljava/lang/String;J)V

    invoke-virtual {v10, v7, v11}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    iget-object v8, v0, Lcom/autoxing/delivery/download/MultiDownTask;->downLoadTaskMaps:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v8, v7, v15}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    iget-object v7, v0, Lcom/autoxing/delivery/download/MultiDownTask;->executorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v7, v15}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_0
    move-wide/from16 v6, p6

    .line 157
    invoke-direct {v0, v1, v6, v7}, Lcom/autoxing/delivery/download/MultiDownTask;->startTimer(Lcom/alibaba/fastjson/JSONArray;J)V

    return-void
.end method

.method public stop()V
    .locals 0

    .line 161
    invoke-direct {p0}, Lcom/autoxing/delivery/download/MultiDownTask;->stopTimer()V

    .line 162
    invoke-direct {p0}, Lcom/autoxing/delivery/download/MultiDownTask;->clear()V

    return-void
.end method
