.class public Lcom/autoxing/delivery/websocket/MyWSManager;
.super Ljava/lang/Object;
.source "MyWSManager.java"


# static fields
.field private static INSTANCE:Lcom/autoxing/delivery/websocket/MyWSManager; = null

.field private static final TAG:Ljava/lang/String; = "MyWSManager"


# instance fields
.field private downloadPath:Ljava/lang/String;

.field private executorService:Ljava/util/concurrent/ExecutorService;

.field private isRunning:Z

.field private lastFileSize:J

.field private lastUpdateTime:J

.field private mListener:Lcom/autoxing/delivery/websocket/MyWSListener;

.field private mOnTransFileListener:Lcom/autoxing/delivery/websocket/TransFileTask$OnTransFileListener;

.field private mWebSocketClient:Lcom/autoxing/service/websocket/AXWebSocketClient;


# direct methods
.method static bridge synthetic -$$Nest$fgetlastFileSize(Lcom/autoxing/delivery/websocket/MyWSManager;)J
    .locals 2

    iget-wide v0, p0, Lcom/autoxing/delivery/websocket/MyWSManager;->lastFileSize:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetlastUpdateTime(Lcom/autoxing/delivery/websocket/MyWSManager;)J
    .locals 2

    iget-wide v0, p0, Lcom/autoxing/delivery/websocket/MyWSManager;->lastUpdateTime:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetmListener(Lcom/autoxing/delivery/websocket/MyWSManager;)Lcom/autoxing/delivery/websocket/MyWSListener;
    .locals 0

    iget-object p0, p0, Lcom/autoxing/delivery/websocket/MyWSManager;->mListener:Lcom/autoxing/delivery/websocket/MyWSListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputlastFileSize(Lcom/autoxing/delivery/websocket/MyWSManager;J)V
    .locals 0

    iput-wide p1, p0, Lcom/autoxing/delivery/websocket/MyWSManager;->lastFileSize:J

    return-void
.end method

.method static bridge synthetic -$$Nest$fputlastUpdateTime(Lcom/autoxing/delivery/websocket/MyWSManager;J)V
    .locals 0

    iput-wide p1, p0, Lcom/autoxing/delivery/websocket/MyWSManager;->lastUpdateTime:J

    return-void
.end method

.method static bridge synthetic -$$Nest$mgenerateStatusData(Lcom/autoxing/delivery/websocket/MyWSManager;I)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Lcom/autoxing/delivery/websocket/MyWSManager;->generateStatusData(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgenerateStatusData(Lcom/autoxing/delivery/websocket/MyWSManager;IJJJ)Ljava/lang/String;
    .locals 0

    invoke-direct/range {p0 .. p7}, Lcom/autoxing/delivery/websocket/MyWSManager;->generateStatusData(IJJJ)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mparseData(Lcom/autoxing/delivery/websocket/MyWSManager;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/autoxing/delivery/websocket/MyWSManager;->parseData(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 22
    iput-boolean v0, p0, Lcom/autoxing/delivery/websocket/MyWSManager;->isRunning:Z

    .line 26
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/autoxing/delivery/constant/Configs;->basePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/resource/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/autoxing/delivery/websocket/MyWSManager;->downloadPath:Ljava/lang/String;

    const-wide/16 v0, 0x0

    .line 165
    iput-wide v0, p0, Lcom/autoxing/delivery/websocket/MyWSManager;->lastUpdateTime:J

    .line 166
    iput-wide v0, p0, Lcom/autoxing/delivery/websocket/MyWSManager;->lastFileSize:J

    .line 168
    new-instance v0, Lcom/autoxing/delivery/websocket/MyWSManager$2;

    invoke-direct {v0, p0}, Lcom/autoxing/delivery/websocket/MyWSManager$2;-><init>(Lcom/autoxing/delivery/websocket/MyWSManager;)V

    iput-object v0, p0, Lcom/autoxing/delivery/websocket/MyWSManager;->mOnTransFileListener:Lcom/autoxing/delivery/websocket/TransFileTask$OnTransFileListener;

    return-void
.end method

.method private generateStatusData(I)Ljava/lang/String;
    .locals 2

    .line 112
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    const-string v1, "status"

    .line 113
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private generateStatusData(IJJJ)Ljava/lang/String;
    .locals 2

    .line 122
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    const-string v1, "status"

    .line 123
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "totalSize"

    .line 124
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "fileSize"

    .line 125
    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "speed"

    .line 126
    invoke-static {p6, p7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getExecutorService()Ljava/util/concurrent/ExecutorService;
    .locals 1

    .line 238
    iget-object v0, p0, Lcom/autoxing/delivery/websocket/MyWSManager;->executorService:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/autoxing/delivery/websocket/MyWSManager;->executorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isTerminated()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 239
    :cond_0
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/autoxing/delivery/websocket/MyWSManager;->executorService:Ljava/util/concurrent/ExecutorService;

    .line 241
    :cond_1
    iget-object v0, p0, Lcom/autoxing/delivery/websocket/MyWSManager;->executorService:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method public static getManager()Lcom/autoxing/delivery/websocket/MyWSManager;
    .locals 2

    .line 32
    sget-object v0, Lcom/autoxing/delivery/websocket/MyWSManager;->INSTANCE:Lcom/autoxing/delivery/websocket/MyWSManager;

    if-nez v0, :cond_1

    .line 33
    const-class v0, Lcom/autoxing/delivery/websocket/MyWSManager;

    monitor-enter v0

    .line 34
    :try_start_0
    sget-object v1, Lcom/autoxing/delivery/websocket/MyWSManager;->INSTANCE:Lcom/autoxing/delivery/websocket/MyWSManager;

    if-nez v1, :cond_0

    .line 35
    new-instance v1, Lcom/autoxing/delivery/websocket/MyWSManager;

    invoke-direct {v1}, Lcom/autoxing/delivery/websocket/MyWSManager;-><init>()V

    sput-object v1, Lcom/autoxing/delivery/websocket/MyWSManager;->INSTANCE:Lcom/autoxing/delivery/websocket/MyWSManager;

    .line 37
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 39
    :cond_1
    :goto_0
    sget-object v0, Lcom/autoxing/delivery/websocket/MyWSManager;->INSTANCE:Lcom/autoxing/delivery/websocket/MyWSManager;

    return-object v0
.end method

.method private getWebScoketUrl()Ljava/lang/String;
    .locals 3

    .line 71
    invoke-static {}, Lcom/autoxing/delivery/controller/NetConfigManager;->getManager()Lcom/autoxing/delivery/controller/NetConfigManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autoxing/delivery/controller/NetConfigManager;->getNetConfig()Lcom/autoxing/delivery/bean/NetConfig;

    move-result-object v0

    .line 72
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "netConfig="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MyWSManager"

    invoke-static {v2, v1}, Lcom/autoai/research/atools/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_0

    .line 74
    invoke-virtual {v0}, Lcom/autoxing/delivery/bean/NetConfig;->getScreen_ip()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/autoxing/delivery/util/Utils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 75
    invoke-virtual {v0}, Lcom/autoxing/delivery/bean/NetConfig;->getScreen_ip()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, "192.168.25.201"

    :goto_0
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const-string v0, "ws://%s:9800/headapp&0&0"

    .line 77
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private initWebSocket()V
    .locals 3

    .line 81
    invoke-direct {p0}, Lcom/autoxing/delivery/websocket/MyWSManager;->getWebScoketUrl()Ljava/lang/String;

    move-result-object v0

    .line 82
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "initWebSocket,url="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MyWSManager"

    invoke-static {v2, v1}, Lcom/autoai/research/atools/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    new-instance v1, Lcom/autoxing/service/websocket/AXWebSocketClient;

    invoke-direct {v1}, Lcom/autoxing/service/websocket/AXWebSocketClient;-><init>()V

    iput-object v1, p0, Lcom/autoxing/delivery/websocket/MyWSManager;->mWebSocketClient:Lcom/autoxing/service/websocket/AXWebSocketClient;

    .line 84
    new-instance v2, Lcom/autoxing/delivery/websocket/MyWSManager$1;

    invoke-direct {v2, p0}, Lcom/autoxing/delivery/websocket/MyWSManager$1;-><init>(Lcom/autoxing/delivery/websocket/MyWSManager;)V

    invoke-virtual {v1, v2}, Lcom/autoxing/service/websocket/AXWebSocketClient;->setListener(Lcom/autoxing/service/websocket/AXWebSocketListener;)V

    .line 108
    iget-object v1, p0, Lcom/autoxing/delivery/websocket/MyWSManager;->mWebSocketClient:Lcom/autoxing/service/websocket/AXWebSocketClient;

    invoke-virtual {v1, v0}, Lcom/autoxing/service/websocket/AXWebSocketClient;->start(Ljava/lang/String;)V

    return-void
.end method

.method private parseData(Ljava/lang/String;)V
    .locals 3

    .line 132
    :try_start_0
    invoke-static {p1}, Lcom/alibaba/fastjson/JSONObject;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object p1

    const-string v0, "type"

    .line 133
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->getIntValue(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const-string v0, "data"

    .line 135
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object p1

    const-string v0, "status"

    const/4 v1, 0x3

    .line 136
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    iget-object v0, p0, Lcom/autoxing/delivery/websocket/MyWSManager;->mListener:Lcom/autoxing/delivery/websocket/MyWSListener;

    invoke-virtual {p1}, Lcom/alibaba/fastjson/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lcom/autoxing/delivery/websocket/MyWSListener;->onStatusChanged(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 140
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method private transferFile(Ljava/io/File;Ljava/lang/String;)V
    .locals 8

    .line 266
    invoke-static {}, Lcom/autoxing/delivery/util/Utils;->isOldRobot()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 267
    invoke-direct {p0}, Lcom/autoxing/delivery/websocket/MyWSManager;->getExecutorService()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/autoxing/delivery/websocket/TransFileTask;

    iget-object v2, p0, Lcom/autoxing/delivery/websocket/MyWSManager;->mOnTransFileListener:Lcom/autoxing/delivery/websocket/TransFileTask$OnTransFileListener;

    invoke-direct {v1, p1, v2, p2}, Lcom/autoxing/delivery/websocket/TransFileTask;-><init>(Ljava/io/File;Lcom/autoxing/delivery/websocket/TransFileTask$OnTransFileListener;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    goto :goto_0

    .line 269
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/autoxing/delivery/websocket/DataHandler;->changeResZipFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/autoxing/delivery/websocket/MyWSManager;->sendData(Ljava/lang/String;)V

    .line 270
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v4

    .line 271
    iget-object p1, p0, Lcom/autoxing/delivery/websocket/MyWSManager;->mListener:Lcom/autoxing/delivery/websocket/MyWSListener;

    const/4 v1, 0x5

    const-wide/16 v6, 0x0

    move-object v0, p0

    move-wide v2, v4

    invoke-direct/range {v0 .. v7}, Lcom/autoxing/delivery/websocket/MyWSManager;->generateStatusData(IJJJ)Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x5

    invoke-interface {p1, v0, p2}, Lcom/autoxing/delivery/websocket/MyWSListener;->onStatusChanged(ILjava/lang/String;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public chooseAdResource(Ljava/lang/String;)V
    .locals 6

    .line 219
    invoke-static {p1}, Lcom/alibaba/fastjson/JSONObject;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object p1

    const-string v0, "url"

    .line 220
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "fileSize"

    .line 221
    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson/JSONObject;->getLongValue(Ljava/lang/String;)J

    move-result-wide v1

    .line 222
    invoke-static {v0}, Lcom/autoai/research/jtools/security/MD5Utils;->get32MD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v3, "/"

    .line 223
    invoke-virtual {v0, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 224
    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lcom/autoxing/delivery/websocket/MyWSManager;->downloadPath:Ljava/lang/String;

    invoke-direct {v3, v4, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    new-instance p1, Ljava/io/File;

    iget-object v4, p0, Lcom/autoxing/delivery/websocket/MyWSManager;->downloadPath:Ljava/lang/String;

    invoke-direct {p1, v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    invoke-virtual {v3}, Ljava/io/File;->isFile()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v4

    cmp-long v4, v4, v1

    if-nez v4, :cond_0

    .line 228
    invoke-direct {p0, v3, v0}, Lcom/autoxing/delivery/websocket/MyWSManager;->transferFile(Ljava/io/File;Ljava/lang/String;)V

    goto :goto_0

    .line 229
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v3

    cmp-long v1, v3, v1

    if-nez v1, :cond_1

    .line 230
    invoke-direct {p0, p1, v0}, Lcom/autoxing/delivery/websocket/MyWSManager;->transferFile(Ljava/io/File;Ljava/lang/String;)V

    goto :goto_0

    .line 233
    :cond_1
    iget-object p1, p0, Lcom/autoxing/delivery/websocket/MyWSManager;->mListener:Lcom/autoxing/delivery/websocket/MyWSListener;

    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/autoxing/delivery/websocket/MyWSManager;->generateStatusData(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/autoxing/delivery/websocket/MyWSListener;->onStatusChanged(ILjava/lang/String;)V

    :goto_0
    return-void
.end method

.method public chooseAdResourceWithPath(Ljava/lang/String;)V
    .locals 2

    .line 255
    invoke-static {p1}, Lcom/autoxing/delivery/util/Utils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/autoxing/delivery/util/ZipUtils;->isValidZipFile(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 261
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 262
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/autoxing/delivery/websocket/MyWSManager;->transferFile(Ljava/io/File;Ljava/lang/String;)V

    return-void

    .line 257
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/autoxing/delivery/websocket/MyWSManager;->mListener:Lcom/autoxing/delivery/websocket/MyWSListener;

    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/autoxing/delivery/websocket/MyWSManager;->generateStatusData(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/autoxing/delivery/websocket/MyWSListener;->onStatusChanged(ILjava/lang/String;)V

    return-void
.end method

.method public sendData(Ljava/lang/String;)V
    .locals 2

    .line 209
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "sendData=>"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MyWSManager"

    invoke-static {v1, v0}, Lcom/autoai/research/atools/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    iget-object v0, p0, Lcom/autoxing/delivery/websocket/MyWSManager;->mWebSocketClient:Lcom/autoxing/service/websocket/AXWebSocketClient;

    invoke-virtual {v0, p1}, Lcom/autoxing/service/websocket/AXWebSocketClient;->send(Ljava/lang/String;)V

    return-void
.end method

.method public sendData([B)V
    .locals 2

    .line 214
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "sendData=>"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MyWSManager"

    invoke-static {v1, v0}, Lcom/autoai/research/atools/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    iget-object v0, p0, Lcom/autoxing/delivery/websocket/MyWSManager;->mWebSocketClient:Lcom/autoxing/service/websocket/AXWebSocketClient;

    invoke-virtual {v0, p1}, Lcom/autoxing/service/websocket/AXWebSocketClient;->send([B)V

    return-void
.end method

.method public setListener(Lcom/autoxing/delivery/websocket/MyWSListener;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/autoxing/delivery/websocket/MyWSManager;->mListener:Lcom/autoxing/delivery/websocket/MyWSListener;

    return-void
.end method

.method public setPlayScreenVideo(Ljava/lang/String;)V
    .locals 2

    .line 277
    iget-object v0, p0, Lcom/autoxing/delivery/websocket/MyWSManager;->mWebSocketClient:Lcom/autoxing/service/websocket/AXWebSocketClient;

    if-nez v0, :cond_0

    .line 279
    :try_start_0
    invoke-virtual {p0}, Lcom/autoxing/delivery/websocket/MyWSManager;->start()V

    const-wide/16 v0, 0x3e8

    .line 280
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 282
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 285
    :cond_0
    :goto_0
    invoke-virtual {p0, p1}, Lcom/autoxing/delivery/websocket/MyWSManager;->sendData(Ljava/lang/String;)V

    return-void
.end method

.method public setRobotId(Ljava/lang/String;)V
    .locals 2

    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "setRobotId,robotId="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MyWSManager"

    invoke-static {v1, v0}, Lcom/autoai/research/atools/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    invoke-static {p1}, Lcom/autoxing/delivery/util/Utils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, ""

    .line 47
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/autoxing/delivery/constant/Configs;->basePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/resource/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 48
    invoke-static {p1}, Lcom/autoxing/delivery/util/Utils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 49
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 51
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "/download"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/autoxing/delivery/websocket/MyWSManager;->downloadPath:Ljava/lang/String;

    return-void
.end method

.method public setSleepMode(Z)V
    .locals 1

    .line 248
    iget-boolean v0, p0, Lcom/autoxing/delivery/websocket/MyWSManager;->isRunning:Z

    if-nez v0, :cond_0

    return-void

    .line 251
    :cond_0
    invoke-static {p1}, Lcom/autoxing/delivery/websocket/DataHandler;->setSleepMode(Z)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/autoxing/delivery/websocket/MyWSManager;->sendData(Ljava/lang/String;)V

    return-void
.end method

.method public start()V
    .locals 1

    .line 60
    iget-boolean v0, p0, Lcom/autoxing/delivery/websocket/MyWSManager;->isRunning:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 63
    iput-boolean v0, p0, Lcom/autoxing/delivery/websocket/MyWSManager;->isRunning:Z

    .line 67
    invoke-direct {p0}, Lcom/autoxing/delivery/websocket/MyWSManager;->initWebSocket()V

    return-void
.end method

.method public stop()V
    .locals 1

    .line 145
    iget-boolean v0, p0, Lcom/autoxing/delivery/websocket/MyWSManager;->isRunning:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 148
    iput-boolean v0, p0, Lcom/autoxing/delivery/websocket/MyWSManager;->isRunning:Z

    .line 149
    iget-object v0, p0, Lcom/autoxing/delivery/websocket/MyWSManager;->mWebSocketClient:Lcom/autoxing/service/websocket/AXWebSocketClient;

    if-eqz v0, :cond_1

    .line 150
    invoke-virtual {v0}, Lcom/autoxing/service/websocket/AXWebSocketClient;->stop()V

    .line 152
    :cond_1
    iget-object v0, p0, Lcom/autoxing/delivery/websocket/MyWSManager;->executorService:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_2

    .line 153
    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    const/4 v0, 0x0

    .line 154
    iput-object v0, p0, Lcom/autoxing/delivery/websocket/MyWSManager;->executorService:Ljava/util/concurrent/ExecutorService;

    :cond_2
    return-void
.end method

.method public updateSetting(II)V
    .locals 1

    .line 159
    iget-boolean v0, p0, Lcom/autoxing/delivery/websocket/MyWSManager;->isRunning:Z

    if-nez v0, :cond_0

    return-void

    .line 162
    :cond_0
    invoke-static {p1, p2}, Lcom/autoxing/delivery/websocket/DataHandler;->updateSetting(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/autoxing/delivery/websocket/MyWSManager;->sendData(Ljava/lang/String;)V

    return-void
.end method
