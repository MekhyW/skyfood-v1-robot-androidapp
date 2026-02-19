.class public Lcom/autoxing/delivery/smarttray/SmartTrayManager;
.super Ljava/lang/Object;
.source "SmartTrayManager.java"


# static fields
.field private static INSTANCE:Lcom/autoxing/delivery/smarttray/SmartTrayManager; = null

.field private static final TAG:Ljava/lang/String; = "SmartTrayManager"

.field private static final TRAY_STATUS_ERROR:I = 0x3

.field private static final TRAY_STATUS_FULL_TAKE:I = 0x2

.field private static final TRAY_STATUS_INIT:I = 0x1


# instance fields
.field private checkIdx:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private doorStatusObj:Lcom/alibaba/fastjson/JSONObject;

.field private filterIdx:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private isConnected:Z

.field private isRunning:Z

.field private lastHeartTime:J

.field private lastTrayStatus:Ljava/lang/String;

.field private mListener:Lcom/autoxing/delivery/smarttray/OnSmartTrayListener;

.field private mWebSocketClient:Lcom/autoxing/service/websocket/AXWebSocketClient;

.field private smartTrayTest:Lcom/autoxing/delivery/smarttray/SmartTrayTest;

.field private tempTrayFoodStatus:[Z

.field private timer:Ljava/util/Timer;

.field private timerTask:Ljava/util/TimerTask;

.field private trayFoodStatus:[Z


# direct methods
.method static bridge synthetic -$$Nest$fgetlastHeartTime(Lcom/autoxing/delivery/smarttray/SmartTrayManager;)J
    .locals 2

    iget-wide v0, p0, Lcom/autoxing/delivery/smarttray/SmartTrayManager;->lastHeartTime:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetmWebSocketClient(Lcom/autoxing/delivery/smarttray/SmartTrayManager;)Lcom/autoxing/service/websocket/AXWebSocketClient;
    .locals 0

    iget-object p0, p0, Lcom/autoxing/delivery/smarttray/SmartTrayManager;->mWebSocketClient:Lcom/autoxing/service/websocket/AXWebSocketClient;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputisConnected(Lcom/autoxing/delivery/smarttray/SmartTrayManager;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/autoxing/delivery/smarttray/SmartTrayManager;->isConnected:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputlastHeartTime(Lcom/autoxing/delivery/smarttray/SmartTrayManager;J)V
    .locals 0

    iput-wide p1, p0, Lcom/autoxing/delivery/smarttray/SmartTrayManager;->lastHeartTime:J

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmWebSocketClient(Lcom/autoxing/delivery/smarttray/SmartTrayManager;Lcom/autoxing/service/websocket/AXWebSocketClient;)V
    .locals 0

    iput-object p1, p0, Lcom/autoxing/delivery/smarttray/SmartTrayManager;->mWebSocketClient:Lcom/autoxing/service/websocket/AXWebSocketClient;

    return-void
.end method

.method static bridge synthetic -$$Nest$minitWebSocket(Lcom/autoxing/delivery/smarttray/SmartTrayManager;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/autoxing/delivery/smarttray/SmartTrayManager;->initWebSocket(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mparseData(Lcom/autoxing/delivery/smarttray/SmartTrayManager;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/autoxing/delivery/smarttray/SmartTrayManager;->parseData(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msendData(Lcom/autoxing/delivery/smarttray/SmartTrayManager;Ljava/lang/String;Z)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/autoxing/delivery/smarttray/SmartTrayManager;->sendData(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method private constructor <init>()V
    .locals 4

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 28
    iput-boolean v0, p0, Lcom/autoxing/delivery/smarttray/SmartTrayManager;->isRunning:Z

    .line 32
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/autoxing/delivery/smarttray/SmartTrayManager;->checkIdx:Ljava/util/Set;

    const/4 v1, 0x4

    new-array v2, v1, [Z

    .line 33
    iput-object v2, p0, Lcom/autoxing/delivery/smarttray/SmartTrayManager;->trayFoodStatus:[Z

    new-array v1, v1, [Z

    .line 34
    iput-object v1, p0, Lcom/autoxing/delivery/smarttray/SmartTrayManager;->tempTrayFoodStatus:[Z

    const-string v1, ""

    .line 35
    iput-object v1, p0, Lcom/autoxing/delivery/smarttray/SmartTrayManager;->lastTrayStatus:Ljava/lang/String;

    const/4 v1, 0x0

    .line 36
    iput-object v1, p0, Lcom/autoxing/delivery/smarttray/SmartTrayManager;->doorStatusObj:Lcom/alibaba/fastjson/JSONObject;

    .line 37
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Lcom/autoxing/delivery/smarttray/SmartTrayManager;->filterIdx:Ljava/util/Set;

    .line 39
    new-instance v2, Lcom/autoxing/delivery/smarttray/SmartTrayTest;

    invoke-direct {v2}, Lcom/autoxing/delivery/smarttray/SmartTrayTest;-><init>()V

    iput-object v2, p0, Lcom/autoxing/delivery/smarttray/SmartTrayManager;->smartTrayTest:Lcom/autoxing/delivery/smarttray/SmartTrayTest;

    const-wide/16 v2, -0x1

    .line 40
    iput-wide v2, p0, Lcom/autoxing/delivery/smarttray/SmartTrayManager;->lastHeartTime:J

    .line 72
    iput-object v1, p0, Lcom/autoxing/delivery/smarttray/SmartTrayManager;->timer:Ljava/util/Timer;

    .line 73
    iput-object v1, p0, Lcom/autoxing/delivery/smarttray/SmartTrayManager;->timerTask:Ljava/util/TimerTask;

    .line 119
    iput-boolean v0, p0, Lcom/autoxing/delivery/smarttray/SmartTrayManager;->isConnected:Z

    return-void
.end method

.method private checkFoodHasTaken(Lcom/alibaba/fastjson/JSONArray;)V
    .locals 12

    .line 196
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 197
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 198
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 199
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 200
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const/4 v5, 0x0

    move v6, v5

    move v7, v6

    :goto_0
    const/4 v8, 0x4

    const/4 v9, 0x1

    if-ge v5, v8, :cond_4

    .line 202
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    .line 203
    invoke-virtual {p1, v5}, Lcom/alibaba/fastjson/JSONArray;->getJSONObject(I)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v10

    const-string v11, "isOnLine"

    .line 204
    invoke-virtual {v10, v11}, Lcom/alibaba/fastjson/JSONObject;->getBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    if-eqz v11, :cond_3

    const-string v11, "isHasFood"

    .line 206
    invoke-virtual {v10, v11}, Lcom/alibaba/fastjson/JSONObject;->getBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    .line 207
    iget-object v11, p0, Lcom/autoxing/delivery/smarttray/SmartTrayManager;->trayFoodStatus:[Z

    aput-boolean v10, v11, v5

    .line 208
    iget-object v11, p0, Lcom/autoxing/delivery/smarttray/SmartTrayManager;->checkIdx:Ljava/util/Set;

    invoke-interface {v11, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 209
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz v10, :cond_0

    .line 211
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    add-int/lit8 v7, v7, 0x1

    .line 214
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 216
    :cond_1
    iget-object v10, p0, Lcom/autoxing/delivery/smarttray/SmartTrayManager;->tempTrayFoodStatus:[Z

    aget-boolean v10, v10, v5

    if-eqz v10, :cond_2

    iget-object v10, p0, Lcom/autoxing/delivery/smarttray/SmartTrayManager;->trayFoodStatus:[Z

    aget-boolean v10, v10, v5

    if-nez v10, :cond_2

    iget-object v10, p0, Lcom/autoxing/delivery/smarttray/SmartTrayManager;->filterIdx:Ljava/util/Set;

    invoke-interface {v10, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 218
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v6, v9

    goto :goto_1

    .line 220
    :cond_2
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 224
    :cond_4
    iget-object p1, p0, Lcom/autoxing/delivery/smarttray/SmartTrayManager;->checkIdx:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_7

    if-eqz v6, :cond_5

    .line 226
    iget-object p1, p0, Lcom/autoxing/delivery/smarttray/SmartTrayManager;->mListener:Lcom/autoxing/delivery/smarttray/OnSmartTrayListener;

    const/4 v1, 0x3

    invoke-direct {p0, v1, v4, v3, v0}, Lcom/autoxing/delivery/smarttray/SmartTrayManager;->generateStatusData(ILjava/util/List;Ljava/util/List;Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/autoxing/delivery/smarttray/OnSmartTrayListener;->onSmartTrayStatus(Ljava/lang/String;)V

    goto :goto_2

    .line 227
    :cond_5
    iget-object p1, p0, Lcom/autoxing/delivery/smarttray/SmartTrayManager;->checkIdx:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result p1

    if-ne v7, p1, :cond_6

    .line 228
    iget-object p1, p0, Lcom/autoxing/delivery/smarttray/SmartTrayManager;->mListener:Lcom/autoxing/delivery/smarttray/OnSmartTrayListener;

    const/4 v1, 0x2

    invoke-direct {p0, v1, v4, v3, v0}, Lcom/autoxing/delivery/smarttray/SmartTrayManager;->generateStatusData(ILjava/util/List;Ljava/util/List;Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/autoxing/delivery/smarttray/OnSmartTrayListener;->onSmartTrayStatus(Ljava/lang/String;)V

    goto :goto_2

    .line 230
    :cond_6
    iget-object p1, p0, Lcom/autoxing/delivery/smarttray/SmartTrayManager;->mListener:Lcom/autoxing/delivery/smarttray/OnSmartTrayListener;

    invoke-direct {p0, v9, v4, v3, v0}, Lcom/autoxing/delivery/smarttray/SmartTrayManager;->generateStatusData(ILjava/util/List;Ljava/util/List;Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/autoxing/delivery/smarttray/OnSmartTrayListener;->onSmartTrayStatus(Ljava/lang/String;)V

    :cond_7
    :goto_2
    return-void
.end method

.method private generateStatusData(ILjava/util/List;Ljava/util/List;Ljava/util/List;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 240
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    const-string v1, "takeIdx"

    .line 241
    invoke-virtual {v0, v1, p2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "otherIdx"

    .line 242
    invoke-virtual {v0, p2, p3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "errIdx"

    .line 243
    invoke-virtual {v0, p2, p4}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "status"

    .line 244
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p2, p1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "generateStatusData=>"

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "SmartTrayManager"

    invoke-static {p2, p1}, Lcom/autoai/research/atools/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public static getManager()Lcom/autoxing/delivery/smarttray/SmartTrayManager;
    .locals 2

    .line 46
    sget-object v0, Lcom/autoxing/delivery/smarttray/SmartTrayManager;->INSTANCE:Lcom/autoxing/delivery/smarttray/SmartTrayManager;

    if-nez v0, :cond_1

    .line 47
    const-class v0, Lcom/autoxing/delivery/smarttray/SmartTrayManager;

    monitor-enter v0

    .line 48
    :try_start_0
    sget-object v1, Lcom/autoxing/delivery/smarttray/SmartTrayManager;->INSTANCE:Lcom/autoxing/delivery/smarttray/SmartTrayManager;

    if-nez v1, :cond_0

    .line 49
    new-instance v1, Lcom/autoxing/delivery/smarttray/SmartTrayManager;

    invoke-direct {v1}, Lcom/autoxing/delivery/smarttray/SmartTrayManager;-><init>()V

    sput-object v1, Lcom/autoxing/delivery/smarttray/SmartTrayManager;->INSTANCE:Lcom/autoxing/delivery/smarttray/SmartTrayManager;

    .line 51
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 53
    :cond_1
    :goto_0
    sget-object v0, Lcom/autoxing/delivery/smarttray/SmartTrayManager;->INSTANCE:Lcom/autoxing/delivery/smarttray/SmartTrayManager;

    return-object v0
.end method

.method private initWebSocket(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string v1, "initWebSocket = %s"

    .line 121
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "SmartTrayManager"

    invoke-static {v1, v0}, Lcom/autoai/research/atools/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    new-instance v0, Lcom/autoxing/service/websocket/AXWebSocketClient;

    invoke-direct {v0}, Lcom/autoxing/service/websocket/AXWebSocketClient;-><init>()V

    iput-object v0, p0, Lcom/autoxing/delivery/smarttray/SmartTrayManager;->mWebSocketClient:Lcom/autoxing/service/websocket/AXWebSocketClient;

    .line 123
    new-instance v1, Lcom/autoxing/delivery/smarttray/SmartTrayManager$2;

    invoke-direct {v1, p0}, Lcom/autoxing/delivery/smarttray/SmartTrayManager$2;-><init>(Lcom/autoxing/delivery/smarttray/SmartTrayManager;)V

    invoke-virtual {v0, v1}, Lcom/autoxing/service/websocket/AXWebSocketClient;->setListener(Lcom/autoxing/service/websocket/AXWebSocketListener;)V

    .line 147
    iget-object v0, p0, Lcom/autoxing/delivery/smarttray/SmartTrayManager;->mWebSocketClient:Lcom/autoxing/service/websocket/AXWebSocketClient;

    invoke-virtual {v0, p1}, Lcom/autoxing/service/websocket/AXWebSocketClient;->start(Ljava/lang/String;)V

    return-void
.end method

.method private parseData(Ljava/lang/String;)V
    .locals 5

    const-string v0, "reqType"

    const-string v1, "dispatchSerialData"

    const-string v2, "parseData=>"

    const-string v3, "{\"reqType\":\"onHeartBeat\"}"

    .line 151
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 152
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/autoxing/delivery/smarttray/SmartTrayManager;->lastHeartTime:J

    return-void

    .line 156
    :cond_0
    :try_start_0
    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "SmartTrayManager"

    .line 157
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/autoai/research/atools/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    :cond_1
    invoke-static {p1}, Lcom/alibaba/fastjson/JSONObject;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object p1

    const-string v2, "type"

    .line 160
    invoke-virtual {p1, v2}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "trayStatus"

    .line 161
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v3, "data"

    if-eqz v2, :cond_2

    .line 162
    :try_start_1
    invoke-virtual {p1, v3}, Lcom/alibaba/fastjson/JSONObject;->getJSONArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object p1

    .line 163
    iget-object v0, p0, Lcom/autoxing/delivery/smarttray/SmartTrayManager;->lastTrayStatus:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/alibaba/fastjson/JSONArray;->toJSONString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 164
    invoke-virtual {p1}, Lcom/alibaba/fastjson/JSONArray;->toJSONString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/autoxing/delivery/smarttray/SmartTrayManager;->lastTrayStatus:Ljava/lang/String;

    .line 165
    iget-object v1, p0, Lcom/autoxing/delivery/smarttray/SmartTrayManager;->mListener:Lcom/autoxing/delivery/smarttray/OnSmartTrayListener;

    invoke-interface {v1, v0}, Lcom/autoxing/delivery/smarttray/OnSmartTrayListener;->onRawTrayStatus(Ljava/lang/String;)V

    .line 166
    iget-object v0, p0, Lcom/autoxing/delivery/smarttray/SmartTrayManager;->smartTrayTest:Lcom/autoxing/delivery/smarttray/SmartTrayTest;

    invoke-virtual {v0, p0, p1}, Lcom/autoxing/delivery/smarttray/SmartTrayTest;->checkIsHasFood(Lcom/autoxing/delivery/smarttray/SmartTrayManager;Lcom/alibaba/fastjson/JSONArray;)V

    .line 168
    invoke-direct {p0, p1}, Lcom/autoxing/delivery/smarttray/SmartTrayManager;->checkFoodHasTaken(Lcom/alibaba/fastjson/JSONArray;)V

    goto :goto_1

    :cond_2
    const-string v2, "onConnected"

    .line 170
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 171
    invoke-virtual {p1, v3}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_3

    const-string v0, "isEnableHeart"

    .line 172
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->getBooleanValue(Ljava/lang/String;)Z

    move-result p1

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    .line 173
    :goto_0
    invoke-direct {p0}, Lcom/autoxing/delivery/smarttray/SmartTrayManager;->stopHeart()V

    if-eqz p1, :cond_6

    .line 175
    invoke-direct {p0}, Lcom/autoxing/delivery/smarttray/SmartTrayManager;->startHeart()V

    goto :goto_1

    :cond_4
    const-string v2, "onPlayAudio"

    .line 177
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 178
    invoke-virtual {p1, v3}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object p1

    const-string v0, "isPlaying"

    .line 179
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->getBooleanValue(Ljava/lang/String;)Z

    move-result p1

    .line 180
    iget-object v0, p0, Lcom/autoxing/delivery/smarttray/SmartTrayManager;->mListener:Lcom/autoxing/delivery/smarttray/OnSmartTrayListener;

    invoke-interface {v0, p1}, Lcom/autoxing/delivery/smarttray/OnSmartTrayListener;->onPlayAudio(Z)V

    goto :goto_1

    :cond_5
    const-string v0, "cmd"

    .line 181
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 182
    iput-object p1, p0, Lcom/autoxing/delivery/smarttray/SmartTrayManager;->doorStatusObj:Lcom/alibaba/fastjson/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 185
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_6
    :goto_1
    return-void
.end method

.method private sendData(Ljava/lang/String;Z)Z
    .locals 6

    .line 261
    iget-boolean v0, p0, Lcom/autoxing/delivery/smarttray/SmartTrayManager;->isRunning:Z

    const-string v1, "SmartTrayManager"

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    iget-object v4, p0, Lcom/autoxing/delivery/smarttray/SmartTrayManager;->mWebSocketClient:Lcom/autoxing/service/websocket/AXWebSocketClient;

    if-eqz v4, :cond_2

    iget-boolean v5, p0, Lcom/autoxing/delivery/smarttray/SmartTrayManager;->isConnected:Z

    if-nez v5, :cond_0

    goto :goto_0

    .line 267
    :cond_0
    invoke-virtual {v4, p1}, Lcom/autoxing/service/websocket/AXWebSocketClient;->send(Ljava/lang/String;)V

    if-eqz p2, :cond_1

    new-array p2, v2, [Ljava/lang/Object;

    aput-object p1, p2, v3

    const-string p1, "sendData(%s) success"

    .line 269
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/autoai/research/atools/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return v2

    :cond_2
    :goto_0
    if-eqz p2, :cond_3

    const/4 p2, 0x4

    new-array p2, p2, [Ljava/lang/Object;

    aput-object p1, p2, v3

    .line 263
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, p2, v2

    const/4 p1, 0x2

    iget-object v0, p0, Lcom/autoxing/delivery/smarttray/SmartTrayManager;->mWebSocketClient:Lcom/autoxing/service/websocket/AXWebSocketClient;

    aput-object v0, p2, p1

    iget-boolean p1, p0, Lcom/autoxing/delivery/smarttray/SmartTrayManager;->isConnected:Z

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const/4 v0, 0x3

    aput-object p1, p2, v0

    const-string p1, "sendData(%s) failed ,isRunning = %b,mWebSocketClient = %s,isConnected = %b"

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/autoai/research/atools/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return v3
.end method

.method private startHeart()V
    .locals 7

    const-string v0, "SmartTrayManager"

    const-string v1, "startHeart"

    .line 75
    invoke-static {v0, v1}, Lcom/autoai/research/atools/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    new-instance v0, Lcom/autoxing/delivery/smarttray/SmartTrayManager$1;

    invoke-direct {v0, p0}, Lcom/autoxing/delivery/smarttray/SmartTrayManager$1;-><init>(Lcom/autoxing/delivery/smarttray/SmartTrayManager;)V

    iput-object v0, p0, Lcom/autoxing/delivery/smarttray/SmartTrayManager;->timerTask:Ljava/util/TimerTask;

    .line 93
    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    iput-object v1, p0, Lcom/autoxing/delivery/smarttray/SmartTrayManager;->timer:Ljava/util/Timer;

    .line 94
    iget-object v2, p0, Lcom/autoxing/delivery/smarttray/SmartTrayManager;->timerTask:Ljava/util/TimerTask;

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x3e8

    invoke-virtual/range {v1 .. v6}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 95
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/autoxing/delivery/smarttray/SmartTrayManager;->lastHeartTime:J

    return-void
.end method

.method private stopHeart()V
    .locals 2

    const-string v0, "SmartTrayManager"

    const-string v1, "stopHeart"

    .line 99
    invoke-static {v0, v1}, Lcom/autoai/research/atools/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 101
    :try_start_0
    iget-object v1, p0, Lcom/autoxing/delivery/smarttray/SmartTrayManager;->timerTask:Ljava/util/TimerTask;

    if-eqz v1, :cond_0

    .line 102
    invoke-virtual {v1}, Ljava/util/TimerTask;->cancel()Z

    .line 103
    iput-object v0, p0, Lcom/autoxing/delivery/smarttray/SmartTrayManager;->timerTask:Ljava/util/TimerTask;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 106
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 110
    :cond_0
    :goto_0
    :try_start_1
    iget-object v1, p0, Lcom/autoxing/delivery/smarttray/SmartTrayManager;->timer:Ljava/util/Timer;

    if-eqz v1, :cond_1

    .line 111
    invoke-virtual {v1}, Ljava/util/Timer;->cancel()V

    .line 112
    iput-object v0, p0, Lcom/autoxing/delivery/smarttray/SmartTrayManager;->timer:Ljava/util/Timer;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 115
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_1
    return-void
.end method


# virtual methods
.method public beginCheckSmartTrayStatus(Ljava/lang/String;)V
    .locals 5

    .line 292
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "beginCheckSmartTrayStatus=>"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SmartTrayManager"

    invoke-static {v1, v0}, Lcom/autoai/research/atools/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 294
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 296
    iget-object v0, p0, Lcom/autoxing/delivery/smarttray/SmartTrayManager;->trayFoodStatus:[Z

    iget-object v2, p0, Lcom/autoxing/delivery/smarttray/SmartTrayManager;->tempTrayFoodStatus:[Z

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-static {v0, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 297
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "tempTrayFoodStatus="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/autoxing/delivery/smarttray/SmartTrayManager;->tempTrayFoodStatus:[Z

    invoke-static {v2}, Ljava/util/Arrays;->toString([Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/autoai/research/atools/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    iget-object v0, p0, Lcom/autoxing/delivery/smarttray/SmartTrayManager;->checkIdx:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 299
    iget-object v0, p0, Lcom/autoxing/delivery/smarttray/SmartTrayManager;->checkIdx:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 301
    iget-object p1, p0, Lcom/autoxing/delivery/smarttray/SmartTrayManager;->lastTrayStatus:Ljava/lang/String;

    invoke-static {p1}, Lcom/autoxing/delivery/util/Utils;->isEmpty(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 303
    :try_start_0
    iget-object p1, p0, Lcom/autoxing/delivery/smarttray/SmartTrayManager;->lastTrayStatus:Ljava/lang/String;

    invoke-static {p1}, Lcom/alibaba/fastjson/JSONArray;->parseArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object p1

    .line 304
    invoke-direct {p0, p1}, Lcom/autoxing/delivery/smarttray/SmartTrayManager;->checkFoodHasTaken(Lcom/alibaba/fastjson/JSONArray;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 306
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public checkSmartTrayIsOnLine()Z
    .locals 5

    .line 321
    iget-object v0, p0, Lcom/autoxing/delivery/smarttray/SmartTrayManager;->lastTrayStatus:Ljava/lang/String;

    invoke-static {v0}, Lcom/autoxing/delivery/util/Utils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 326
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/autoxing/delivery/smarttray/SmartTrayManager;->lastTrayStatus:Ljava/lang/String;

    invoke-static {v0}, Lcom/alibaba/fastjson/JSONArray;->parseArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v0

    move v2, v1

    .line 327
    :goto_0
    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 328
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/JSONArray;->getJSONObject(I)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v3

    const-string v4, "isOnLine"

    invoke-virtual {v3, v4}, Lcom/alibaba/fastjson/JSONObject;->getBooleanValue(Ljava/lang/String;)Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v3, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    .line 334
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    return v1
.end method

.method public endCheckSmartTrayStatus()V
    .locals 2

    const-string v0, "SmartTrayManager"

    const-string v1, "endCheckSmartTrayStatus=>"

    .line 312
    invoke-static {v0, v1}, Lcom/autoai/research/atools/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 313
    iget-object v0, p0, Lcom/autoxing/delivery/smarttray/SmartTrayManager;->checkIdx:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    return-void
.end method

.method public filterTheWrongTrayIdx(ZLjava/lang/String;)V
    .locals 2

    .line 340
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "filterTheWrongTrayIdx,isFilter=>"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",idx="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SmartTrayManager"

    invoke-static {v1, v0}, Lcom/autoai/research/atools/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 342
    invoke-static {p2}, Lcom/autoxing/delivery/util/Utils;->isEmpty(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, ","

    .line 343
    invoke-virtual {p2, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 344
    iget-object p2, p0, Lcom/autoxing/delivery/smarttray/SmartTrayManager;->filterIdx:Ljava/util/Set;

    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {p2, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 347
    :cond_0
    iget-object p1, p0, Lcom/autoxing/delivery/smarttray/SmartTrayManager;->filterIdx:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->clear()V

    :cond_1
    :goto_0
    return-void
.end method

.method public getDoorStatus()Ljava/lang/String;
    .locals 3

    .line 353
    iget-object v0, p0, Lcom/autoxing/delivery/smarttray/SmartTrayManager;->doorStatusObj:Lcom/alibaba/fastjson/JSONObject;

    if-nez v0, :cond_0

    const-string v0, ""

    return-object v0

    :cond_0
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 356
    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v2

    const-string v0, "getDoorStatus=%s"

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "SmartTrayManager"

    invoke-static {v1, v0}, Lcom/autoai/research/atools/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 357
    iget-object v0, p0, Lcom/autoxing/delivery/smarttray/SmartTrayManager;->doorStatusObj:Lcom/alibaba/fastjson/JSONObject;

    const-string v1, "args"

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLastTrayStatusList()Ljava/lang/String;
    .locals 1

    .line 317
    iget-object v0, p0, Lcom/autoxing/delivery/smarttray/SmartTrayManager;->lastTrayStatus:Ljava/lang/String;

    return-object v0
.end method

.method public isConnected()Z
    .locals 1

    .line 361
    iget-boolean v0, p0, Lcom/autoxing/delivery/smarttray/SmartTrayManager;->isConnected:Z

    return v0
.end method

.method public sendDoorCmd(Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x1

    .line 275
    invoke-direct {p0, p1, v0}, Lcom/autoxing/delivery/smarttray/SmartTrayManager;->sendData(Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method public setListener(Lcom/autoxing/delivery/smarttray/OnSmartTrayListener;)V
    .locals 0

    .line 58
    iput-object p1, p0, Lcom/autoxing/delivery/smarttray/SmartTrayManager;->mListener:Lcom/autoxing/delivery/smarttray/OnSmartTrayListener;

    return-void
.end method

.method public setSmartTrayLight(Ljava/lang/String;)V
    .locals 5

    .line 279
    invoke-static {p1}, Lcom/alibaba/fastjson/JSONObject;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object p1

    .line 280
    new-instance v0, Lcom/alibaba/fastjson/JSONArray;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONArray;-><init>()V

    .line 281
    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson/JSONArray;->add(Ljava/lang/Object;)Z

    .line 282
    new-instance p1, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {p1}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    const/16 v1, 0x2b

    .line 283
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "actType"

    invoke-virtual {p1, v2, v1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 284
    new-instance v1, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v1}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    const/4 v2, 0x1

    .line 285
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "mode"

    invoke-virtual {v1, v4, v3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "items"

    .line 286
    invoke-virtual {v1, v3, v0}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "data"

    .line 287
    invoke-virtual {p1, v0, v1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 288
    invoke-virtual {p1}, Lcom/alibaba/fastjson/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, v2}, Lcom/autoxing/delivery/smarttray/SmartTrayManager;->sendData(Ljava/lang/String;Z)Z

    return-void
.end method

.method public start()V
    .locals 1

    .line 63
    iget-boolean v0, p0, Lcom/autoxing/delivery/smarttray/SmartTrayManager;->isRunning:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 66
    iput-boolean v0, p0, Lcom/autoxing/delivery/smarttray/SmartTrayManager;->isRunning:Z

    const-string v0, "ws://localhost:9003"

    .line 67
    invoke-direct {p0, v0}, Lcom/autoxing/delivery/smarttray/SmartTrayManager;->initWebSocket(Ljava/lang/String;)V

    return-void
.end method

.method public stop()V
    .locals 1

    .line 251
    iget-boolean v0, p0, Lcom/autoxing/delivery/smarttray/SmartTrayManager;->isRunning:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 254
    iput-boolean v0, p0, Lcom/autoxing/delivery/smarttray/SmartTrayManager;->isRunning:Z

    .line 255
    iget-object v0, p0, Lcom/autoxing/delivery/smarttray/SmartTrayManager;->mWebSocketClient:Lcom/autoxing/service/websocket/AXWebSocketClient;

    if-eqz v0, :cond_1

    .line 256
    invoke-virtual {v0}, Lcom/autoxing/service/websocket/AXWebSocketClient;->stop()V

    :cond_1
    return-void
.end method
