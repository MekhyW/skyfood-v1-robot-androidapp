.class public Lcom/autoxing/delivery/download/DownloadManager;
.super Ljava/lang/Object;
.source "DownloadManager.java"


# static fields
.field private static INSTANCE:Lcom/autoxing/delivery/download/DownloadManager; = null

.field private static final TAG:Ljava/lang/String; = "DownloadManager"


# instance fields
.field private allDownLoadList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/autoxing/delivery/download/DownloadObj;",
            ">;"
        }
    .end annotation
.end field

.field private configDataHandler:Lcom/autoxing/delivery/download/ConfigDataHandler;

.field private configPath:Ljava/lang/String;

.field private downloadPath:Ljava/lang/String;

.field private isSyncData:Z

.field private mListener:Lcom/autoxing/delivery/download/DownlaodListener;

.field private multiDownTask:Lcom/autoxing/delivery/download/MultiDownTask;

.field private onTaskListener:Lcom/autoxing/delivery/download/MultiDownTask$OnTaskListener;


# direct methods
.method static bridge synthetic -$$Nest$fgetmListener(Lcom/autoxing/delivery/download/DownloadManager;)Lcom/autoxing/delivery/download/DownlaodListener;
    .locals 0

    iget-object p0, p0, Lcom/autoxing/delivery/download/DownloadManager;->mListener:Lcom/autoxing/delivery/download/DownlaodListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetFileSize(Lcom/autoxing/delivery/download/DownloadManager;)J
    .locals 2

    invoke-direct {p0}, Lcom/autoxing/delivery/download/DownloadManager;->getFileSize()J

    move-result-wide v0

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$mgetTotalSize(Lcom/autoxing/delivery/download/DownloadManager;)J
    .locals 2

    invoke-direct {p0}, Lcom/autoxing/delivery/download/DownloadManager;->getTotalSize()J

    move-result-wide v0

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$misCompleteDownload(Lcom/autoxing/delivery/download/DownloadManager;)Z
    .locals 0

    invoke-direct {p0}, Lcom/autoxing/delivery/download/DownloadManager;->isCompleteDownload()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mupdateAdConfigFile(Lcom/autoxing/delivery/download/DownloadManager;Lcom/alibaba/fastjson/JSONArray;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/autoxing/delivery/download/DownloadManager;->updateAdConfigFile(Lcom/alibaba/fastjson/JSONArray;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
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

    iput-object v0, p0, Lcom/autoxing/delivery/download/DownloadManager;->downloadPath:Ljava/lang/String;

    .line 23
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/autoxing/delivery/constant/Configs;->basePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/config.json"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/autoxing/delivery/download/DownloadManager;->configPath:Ljava/lang/String;

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/autoxing/delivery/download/DownloadManager;->allDownLoadList:Ljava/util/List;

    .line 27
    new-instance v0, Lcom/autoxing/delivery/download/ConfigDataHandler;

    invoke-direct {v0}, Lcom/autoxing/delivery/download/ConfigDataHandler;-><init>()V

    iput-object v0, p0, Lcom/autoxing/delivery/download/DownloadManager;->configDataHandler:Lcom/autoxing/delivery/download/ConfigDataHandler;

    .line 28
    new-instance v0, Lcom/autoxing/delivery/download/MultiDownTask;

    invoke-direct {v0}, Lcom/autoxing/delivery/download/MultiDownTask;-><init>()V

    iput-object v0, p0, Lcom/autoxing/delivery/download/DownloadManager;->multiDownTask:Lcom/autoxing/delivery/download/MultiDownTask;

    const/4 v0, 0x1

    .line 29
    iput-boolean v0, p0, Lcom/autoxing/delivery/download/DownloadManager;->isSyncData:Z

    .line 173
    new-instance v0, Lcom/autoxing/delivery/download/DownloadManager$1;

    invoke-direct {v0, p0}, Lcom/autoxing/delivery/download/DownloadManager$1;-><init>(Lcom/autoxing/delivery/download/DownloadManager;)V

    iput-object v0, p0, Lcom/autoxing/delivery/download/DownloadManager;->onTaskListener:Lcom/autoxing/delivery/download/MultiDownTask$OnTaskListener;

    .line 48
    iget-object v1, p0, Lcom/autoxing/delivery/download/DownloadManager;->multiDownTask:Lcom/autoxing/delivery/download/MultiDownTask;

    invoke-virtual {v1, v0}, Lcom/autoxing/delivery/download/MultiDownTask;->setListener(Lcom/autoxing/delivery/download/MultiDownTask$OnTaskListener;)V

    return-void
.end method

.method private getDownloadSize(Ljava/lang/String;)J
    .locals 2

    .line 347
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/autoxing/delivery/download/DownloadManager;->downloadPath:Ljava/lang/String;

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 348
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 349
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method private getFileSize()J
    .locals 5

    .line 166
    iget-object v0, p0, Lcom/autoxing/delivery/download/DownloadManager;->allDownLoadList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const-wide/16 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/autoxing/delivery/download/DownloadObj;

    .line 167
    invoke-virtual {v3}, Lcom/autoxing/delivery/download/DownloadObj;->getFlieName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/autoxing/delivery/download/DownloadManager;->getDownloadSize(Ljava/lang/String;)J

    move-result-wide v3

    add-long/2addr v1, v3

    goto :goto_0

    :cond_0
    return-wide v1
.end method

.method public static getManager()Lcom/autoxing/delivery/download/DownloadManager;
    .locals 2

    .line 52
    sget-object v0, Lcom/autoxing/delivery/download/DownloadManager;->INSTANCE:Lcom/autoxing/delivery/download/DownloadManager;

    if-nez v0, :cond_1

    .line 53
    const-class v0, Lcom/autoxing/delivery/download/DownloadManager;

    monitor-enter v0

    .line 54
    :try_start_0
    sget-object v1, Lcom/autoxing/delivery/download/DownloadManager;->INSTANCE:Lcom/autoxing/delivery/download/DownloadManager;

    if-nez v1, :cond_0

    .line 55
    new-instance v1, Lcom/autoxing/delivery/download/DownloadManager;

    invoke-direct {v1}, Lcom/autoxing/delivery/download/DownloadManager;-><init>()V

    sput-object v1, Lcom/autoxing/delivery/download/DownloadManager;->INSTANCE:Lcom/autoxing/delivery/download/DownloadManager;

    .line 57
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 59
    :cond_1
    :goto_0
    sget-object v0, Lcom/autoxing/delivery/download/DownloadManager;->INSTANCE:Lcom/autoxing/delivery/download/DownloadManager;

    return-object v0
.end method

.method private getTotalSize()J
    .locals 5

    .line 158
    iget-object v0, p0, Lcom/autoxing/delivery/download/DownloadManager;->allDownLoadList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const-wide/16 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/autoxing/delivery/download/DownloadObj;

    .line 159
    invoke-virtual {v3}, Lcom/autoxing/delivery/download/DownloadObj;->getFileSize()J

    move-result-wide v3

    add-long/2addr v1, v3

    goto :goto_0

    :cond_0
    return-wide v1
.end method

.method private isCompleteDownload()Z
    .locals 4

    .line 134
    invoke-direct {p0}, Lcom/autoxing/delivery/download/DownloadManager;->getTotalSize()J

    move-result-wide v0

    .line 135
    invoke-direct {p0}, Lcom/autoxing/delivery/download/DownloadManager;->getFileSize()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private updateAdConfigFile(Lcom/alibaba/fastjson/JSONArray;)V
    .locals 3

    .line 140
    invoke-virtual {p0, p1}, Lcom/autoxing/delivery/download/DownloadManager;->updatePropFile(Lcom/alibaba/fastjson/JSONArray;)V

    .line 141
    iget-boolean v0, p0, Lcom/autoxing/delivery/download/DownloadManager;->isSyncData:Z

    if-eqz v0, :cond_0

    .line 142
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 143
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "updateTime"

    invoke-virtual {v0, v2, v1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "dataList"

    .line 144
    invoke-virtual {v0, v1, p1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    iget-object p1, p0, Lcom/autoxing/delivery/download/DownloadManager;->configDataHandler:Lcom/autoxing/delivery/download/ConfigDataHandler;

    iget-object v1, p0, Lcom/autoxing/delivery/download/DownloadManager;->configPath:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/autoxing/delivery/download/ConfigDataHandler;->saveConfigData(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public delete(Ljava/lang/String;)Z
    .locals 10

    .line 355
    invoke-static {p1}, Lcom/autoai/research/jtools/security/MD5Utils;->get32MD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 356
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/autoxing/delivery/download/DownloadManager;->downloadPath:Ljava/lang/String;

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 357
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 358
    iget-object p1, p0, Lcom/autoxing/delivery/download/DownloadManager;->mListener:Lcom/autoxing/delivery/download/DownlaodListener;

    new-instance v9, Lcom/autoxing/delivery/download/DownloadStatus;

    const/4 v2, 0x5

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    invoke-direct {p0}, Lcom/autoxing/delivery/download/DownloadManager;->getTotalSize()J

    move-result-wide v7

    move-object v1, v9

    invoke-direct/range {v1 .. v8}, Lcom/autoxing/delivery/download/DownloadStatus;-><init>(IJJJ)V

    invoke-interface {p1, v9}, Lcom/autoxing/delivery/download/DownlaodListener;->onDownloadStatus(Lcom/autoxing/delivery/download/DownloadStatus;)V

    .line 359
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public getConfigInfo()Ljava/lang/String;
    .locals 2

    .line 253
    iget-object v0, p0, Lcom/autoxing/delivery/download/DownloadManager;->configDataHandler:Lcom/autoxing/delivery/download/ConfigDataHandler;

    iget-object v1, p0, Lcom/autoxing/delivery/download/DownloadManager;->configPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/autoxing/delivery/download/ConfigDataHandler;->readConfigData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDataList()Lcom/alibaba/fastjson/JSONArray;
    .locals 4

    const-string v0, "dataList"

    .line 257
    new-instance v1, Lcom/alibaba/fastjson/JSONArray;

    invoke-direct {v1}, Lcom/alibaba/fastjson/JSONArray;-><init>()V

    .line 259
    :try_start_0
    iget-object v2, p0, Lcom/autoxing/delivery/download/DownloadManager;->configDataHandler:Lcom/autoxing/delivery/download/ConfigDataHandler;

    iget-object v3, p0, Lcom/autoxing/delivery/download/DownloadManager;->configPath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/autoxing/delivery/download/ConfigDataHandler;->readConfigData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 260
    invoke-static {v2}, Lcom/autoxing/delivery/util/Utils;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    return-object v1

    .line 263
    :cond_0
    invoke-static {v2}, Lcom/alibaba/fastjson/JSONObject;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v2

    .line 264
    invoke-virtual {v2, v0}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 265
    invoke-virtual {v2, v0}, Lcom/alibaba/fastjson/JSONObject;->getJSONArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 268
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    return-object v1
.end method

.method public getDownloadPath()Ljava/lang/String;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/autoxing/delivery/download/DownloadManager;->downloadPath:Ljava/lang/String;

    return-object v0
.end method

.method public setListener(Lcom/autoxing/delivery/download/DownlaodListener;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lcom/autoxing/delivery/download/DownloadManager;->mListener:Lcom/autoxing/delivery/download/DownlaodListener;

    return-void
.end method

.method public setRobotId(Ljava/lang/String;)V
    .locals 3

    .line 32
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

    .line 33
    invoke-static {p1}, Lcom/autoxing/delivery/util/Utils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 34
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 36
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "/download"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/autoxing/delivery/download/DownloadManager;->downloadPath:Ljava/lang/String;

    .line 37
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "/config.json"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/autoxing/delivery/download/DownloadManager;->configPath:Ljava/lang/String;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 38
    iget-object v2, p0, Lcom/autoxing/delivery/download/DownloadManager;->downloadPath:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const-string p1, "downloadPath = %s,configPath = %s"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "DownloadManager"

    invoke-static {v0, p1}, Lcom/autoai/research/atools/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    invoke-virtual {p0}, Lcom/autoxing/delivery/download/DownloadManager;->getDataList()Lcom/alibaba/fastjson/JSONArray;

    move-result-object p1

    .line 40
    invoke-virtual {p0, p1}, Lcom/autoxing/delivery/download/DownloadManager;->updatePropFile(Lcom/alibaba/fastjson/JSONArray;)V

    return-void
.end method

.method public start(Ljava/lang/String;)V
    .locals 22

    move-object/from16 v0, p0

    .line 67
    invoke-static/range {p1 .. p1}, Lcom/alibaba/fastjson/JSONObject;->parseArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v2

    .line 68
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    move v4, v3

    .line 69
    :goto_0
    invoke-virtual {v2}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v5

    if-ge v4, v5, :cond_0

    .line 70
    invoke-virtual {v2, v4}, Lcom/alibaba/fastjson/JSONArray;->getJSONObject(I)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v5

    const-string v6, "url"

    .line 71
    invoke-virtual {v5, v6}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "fileSize"

    .line 72
    invoke-virtual {v5, v7}, Lcom/alibaba/fastjson/JSONObject;->getLongValue(Ljava/lang/String;)J

    move-result-wide v7

    .line 73
    new-instance v5, Lcom/autoxing/delivery/download/DownloadObj;

    invoke-direct {v5, v6, v7, v8}, Lcom/autoxing/delivery/download/DownloadObj;-><init>(Ljava/lang/String;J)V

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 75
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 76
    invoke-direct {v0, v2}, Lcom/autoxing/delivery/download/DownloadManager;->updateAdConfigFile(Lcom/alibaba/fastjson/JSONArray;)V

    .line 77
    iget-object v1, v0, Lcom/autoxing/delivery/download/DownloadManager;->mListener:Lcom/autoxing/delivery/download/DownlaodListener;

    new-instance v10, Lcom/autoxing/delivery/download/DownloadStatus;

    const/4 v3, 0x4

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    move-object v2, v10

    invoke-direct/range {v2 .. v9}, Lcom/autoxing/delivery/download/DownloadStatus;-><init>(IJJJ)V

    invoke-interface {v1, v10}, Lcom/autoxing/delivery/download/DownlaodListener;->onDownloadStatus(Lcom/autoxing/delivery/download/DownloadStatus;)V

    return-void

    .line 80
    :cond_1
    iget-object v4, v0, Lcom/autoxing/delivery/download/DownloadManager;->allDownLoadList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 81
    iget-object v4, v0, Lcom/autoxing/delivery/download/DownloadManager;->allDownLoadList:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 83
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 84
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/autoxing/delivery/download/DownloadObj;

    .line 85
    invoke-virtual {v6}, Lcom/autoxing/delivery/download/DownloadObj;->getFlieName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 87
    :cond_2
    new-instance v5, Ljava/io/File;

    iget-object v6, v0, Lcom/autoxing/delivery/download/DownloadManager;->downloadPath:Ljava/lang/String;

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 88
    iget-object v6, v0, Lcom/autoxing/delivery/download/DownloadManager;->downloadPath:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_4

    .line 89
    array-length v6, v5

    move v7, v3

    :goto_2
    if-ge v7, v6, :cond_4

    aget-object v8, v5, v7

    .line 90
    invoke-virtual {v8}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v4, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    goto :goto_3

    .line 93
    :cond_3
    invoke-virtual {v8}, Ljava/io/File;->delete()Z

    :goto_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 98
    :cond_4
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 99
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 102
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const-wide/16 v6, 0x0

    move-wide v12, v6

    move-wide/from16 v20, v12

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/autoxing/delivery/download/DownloadObj;

    .line 103
    invoke-virtual {v6}, Lcom/autoxing/delivery/download/DownloadObj;->getFlieName()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v0, v7}, Lcom/autoxing/delivery/download/DownloadManager;->getDownloadSize(Ljava/lang/String;)J

    move-result-wide v7

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

    .line 104
    invoke-virtual {v6}, Lcom/autoxing/delivery/download/DownloadObj;->getFlieName()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v3

    invoke-virtual {v6}, Lcom/autoxing/delivery/download/DownloadObj;->getFileSize()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    const/4 v11, 0x1

    aput-object v10, v9, v11

    const/4 v10, 0x2

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v9, v10

    const-string v10, "%s fileSize = %d,localSize = %d"

    invoke-static {v10, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "DownloadManager"

    invoke-static {v10, v9}, Lcom/autoai/research/atools/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    add-long/2addr v12, v7

    .line 106
    invoke-virtual {v6}, Lcom/autoxing/delivery/download/DownloadObj;->getFileSize()J

    move-result-wide v9

    cmp-long v7, v7, v9

    if-nez v7, :cond_5

    goto :goto_4

    .line 109
    :cond_5
    invoke-virtual {v6}, Lcom/autoxing/delivery/download/DownloadObj;->getFileSize()J

    move-result-wide v7

    add-long v20, v20, v7

    .line 110
    invoke-virtual {v6}, Lcom/autoxing/delivery/download/DownloadObj;->getDownUrl()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 111
    invoke-virtual {v6}, Lcom/autoxing/delivery/download/DownloadObj;->getFlieName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 114
    :cond_6
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_9

    .line 116
    new-instance v1, Ljava/io/File;

    iget-object v3, v0, Lcom/autoxing/delivery/download/DownloadManager;->downloadPath:Ljava/lang/String;

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 117
    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 118
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 120
    :cond_7
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_8

    .line 121
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 124
    :cond_8
    iget-object v1, v0, Lcom/autoxing/delivery/download/DownloadManager;->mListener:Lcom/autoxing/delivery/download/DownlaodListener;

    new-instance v3, Lcom/autoxing/delivery/download/DownloadStatus;

    const/4 v9, 0x1

    const-wide/16 v10, 0x0

    move-object v8, v3

    move-wide/from16 v14, v20

    invoke-direct/range {v8 .. v15}, Lcom/autoxing/delivery/download/DownloadStatus;-><init>(IJJJ)V

    invoke-interface {v1, v3}, Lcom/autoxing/delivery/download/DownlaodListener;->onDownloadStatus(Lcom/autoxing/delivery/download/DownloadStatus;)V

    .line 125
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v6

    .line 126
    iget-object v1, v0, Lcom/autoxing/delivery/download/DownloadManager;->multiDownTask:Lcom/autoxing/delivery/download/MultiDownTask;

    iget-object v7, v0, Lcom/autoxing/delivery/download/DownloadManager;->downloadPath:Ljava/lang/String;

    move-object v3, v4

    move-object v4, v5

    move-object v5, v7

    move-wide/from16 v7, v20

    invoke-virtual/range {v1 .. v8}, Lcom/autoxing/delivery/download/MultiDownTask;->start(Lcom/alibaba/fastjson/JSONArray;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;J)V

    goto :goto_5

    .line 128
    :cond_9
    invoke-direct {v0, v2}, Lcom/autoxing/delivery/download/DownloadManager;->updateAdConfigFile(Lcom/alibaba/fastjson/JSONArray;)V

    .line 129
    iget-object v1, v0, Lcom/autoxing/delivery/download/DownloadManager;->mListener:Lcom/autoxing/delivery/download/DownlaodListener;

    new-instance v2, Lcom/autoxing/delivery/download/DownloadStatus;

    const/4 v15, 0x4

    const-wide/16 v16, 0x0

    move-object v14, v2

    move-wide/from16 v18, v20

    invoke-direct/range {v14 .. v21}, Lcom/autoxing/delivery/download/DownloadStatus;-><init>(IJJJ)V

    invoke-interface {v1, v2}, Lcom/autoxing/delivery/download/DownlaodListener;->onDownloadStatus(Lcom/autoxing/delivery/download/DownloadStatus;)V

    :goto_5
    return-void
.end method

.method public start(Ljava/lang/String;Z)V
    .locals 23

    move-object/from16 v0, p0

    move/from16 v1, p2

    .line 274
    iput-boolean v1, v0, Lcom/autoxing/delivery/download/DownloadManager;->isSyncData:Z

    .line 275
    invoke-static/range {p1 .. p1}, Lcom/alibaba/fastjson/JSONObject;->parseArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v2

    if-eqz v2, :cond_a

    .line 277
    invoke-virtual {v2}, Lcom/alibaba/fastjson/JSONArray;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    goto/16 :goto_6

    .line 283
    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x0

    move v5, v4

    .line 284
    :goto_0
    invoke-virtual {v2}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v6

    if-ge v5, v6, :cond_1

    .line 285
    invoke-virtual {v2, v5}, Lcom/alibaba/fastjson/JSONArray;->getJSONObject(I)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v6

    const-string v7, "url"

    .line 286
    invoke-virtual {v6, v7}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "name"

    .line 287
    invoke-virtual {v6, v8}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "fileSize"

    .line 288
    invoke-virtual {v6, v9}, Lcom/alibaba/fastjson/JSONObject;->getLongValue(Ljava/lang/String;)J

    move-result-wide v9

    .line 289
    new-instance v6, Lcom/autoxing/delivery/download/DownloadObj;

    invoke-direct {v6, v7, v9, v10, v8}, Lcom/autoxing/delivery/download/DownloadObj;-><init>(Ljava/lang/String;JLjava/lang/String;)V

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 292
    :cond_1
    iget-object v5, v0, Lcom/autoxing/delivery/download/DownloadManager;->allDownLoadList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 293
    iget-object v5, v0, Lcom/autoxing/delivery/download/DownloadManager;->allDownLoadList:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    if-eqz v1, :cond_4

    .line 296
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 297
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/autoxing/delivery/download/DownloadObj;

    .line 298
    invoke-virtual {v6}, Lcom/autoxing/delivery/download/DownloadObj;->getFlieName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 300
    :cond_2
    new-instance v5, Ljava/io/File;

    iget-object v6, v0, Lcom/autoxing/delivery/download/DownloadManager;->downloadPath:Ljava/lang/String;

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 301
    iget-object v6, v0, Lcom/autoxing/delivery/download/DownloadManager;->downloadPath:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_4

    .line 302
    array-length v6, v5

    move v7, v4

    :goto_2
    if-ge v7, v6, :cond_4

    aget-object v8, v5, v7

    .line 303
    invoke-virtual {v8}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v1, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    goto :goto_3

    .line 306
    :cond_3
    invoke-virtual {v8}, Ljava/io/File;->delete()Z

    :goto_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 311
    :cond_4
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 312
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 315
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const-wide/16 v7, 0x0

    move-wide v13, v7

    move-wide/from16 v21, v13

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/autoxing/delivery/download/DownloadObj;

    .line 316
    invoke-virtual {v3}, Lcom/autoxing/delivery/download/DownloadObj;->getFlieName()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v0, v7}, Lcom/autoxing/delivery/download/DownloadManager;->getDownloadSize(Ljava/lang/String;)J

    move-result-wide v7

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

    .line 317
    invoke-virtual {v3}, Lcom/autoxing/delivery/download/DownloadObj;->getFlieName()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v4

    invoke-virtual {v3}, Lcom/autoxing/delivery/download/DownloadObj;->getFileSize()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    const/4 v11, 0x1

    aput-object v10, v9, v11

    const/4 v10, 0x2

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v9, v10

    const-string v10, "%s fileSize = %d,localSize = %d"

    invoke-static {v10, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "DownloadManager"

    invoke-static {v10, v9}, Lcom/autoai/research/atools/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    add-long/2addr v13, v7

    .line 319
    invoke-virtual {v3}, Lcom/autoxing/delivery/download/DownloadObj;->getFileSize()J

    move-result-wide v9

    cmp-long v7, v7, v9

    if-nez v7, :cond_5

    goto :goto_4

    .line 322
    :cond_5
    invoke-virtual {v3}, Lcom/autoxing/delivery/download/DownloadObj;->getFileSize()J

    move-result-wide v7

    add-long v21, v21, v7

    .line 323
    invoke-virtual {v3}, Lcom/autoxing/delivery/download/DownloadObj;->getDownUrl()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 324
    invoke-virtual {v3}, Lcom/autoxing/delivery/download/DownloadObj;->getFlieName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 327
    :cond_6
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_9

    .line 329
    new-instance v1, Ljava/io/File;

    iget-object v3, v0, Lcom/autoxing/delivery/download/DownloadManager;->downloadPath:Ljava/lang/String;

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 330
    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 331
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 333
    :cond_7
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_8

    .line 334
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 337
    :cond_8
    iget-object v1, v0, Lcom/autoxing/delivery/download/DownloadManager;->mListener:Lcom/autoxing/delivery/download/DownlaodListener;

    new-instance v3, Lcom/autoxing/delivery/download/DownloadStatus;

    const/4 v10, 0x1

    const-wide/16 v11, 0x0

    move-object v9, v3

    move-wide/from16 v15, v21

    invoke-direct/range {v9 .. v16}, Lcom/autoxing/delivery/download/DownloadStatus;-><init>(IJJJ)V

    invoke-interface {v1, v3}, Lcom/autoxing/delivery/download/DownlaodListener;->onDownloadStatus(Lcom/autoxing/delivery/download/DownloadStatus;)V

    .line 338
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v7

    .line 339
    iget-object v1, v0, Lcom/autoxing/delivery/download/DownloadManager;->multiDownTask:Lcom/autoxing/delivery/download/MultiDownTask;

    iget-object v8, v0, Lcom/autoxing/delivery/download/DownloadManager;->downloadPath:Ljava/lang/String;

    move-object v3, v5

    move-object v4, v6

    move-object v5, v8

    move-object v6, v7

    move-wide/from16 v7, v21

    invoke-virtual/range {v1 .. v8}, Lcom/autoxing/delivery/download/MultiDownTask;->start(Lcom/alibaba/fastjson/JSONArray;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;J)V

    goto :goto_5

    .line 341
    :cond_9
    invoke-direct {v0, v2}, Lcom/autoxing/delivery/download/DownloadManager;->updateAdConfigFile(Lcom/alibaba/fastjson/JSONArray;)V

    .line 342
    iget-object v1, v0, Lcom/autoxing/delivery/download/DownloadManager;->mListener:Lcom/autoxing/delivery/download/DownlaodListener;

    new-instance v2, Lcom/autoxing/delivery/download/DownloadStatus;

    const/16 v16, 0x4

    const-wide/16 v17, 0x0

    move-object v15, v2

    move-wide/from16 v19, v21

    invoke-direct/range {v15 .. v22}, Lcom/autoxing/delivery/download/DownloadStatus;-><init>(IJJJ)V

    invoke-interface {v1, v2}, Lcom/autoxing/delivery/download/DownlaodListener;->onDownloadStatus(Lcom/autoxing/delivery/download/DownloadStatus;)V

    :goto_5
    return-void

    .line 278
    :cond_a
    :goto_6
    invoke-direct {v0, v2}, Lcom/autoxing/delivery/download/DownloadManager;->updateAdConfigFile(Lcom/alibaba/fastjson/JSONArray;)V

    .line 279
    iget-object v1, v0, Lcom/autoxing/delivery/download/DownloadManager;->mListener:Lcom/autoxing/delivery/download/DownlaodListener;

    new-instance v10, Lcom/autoxing/delivery/download/DownloadStatus;

    const/4 v3, 0x4

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    move-object v2, v10

    invoke-direct/range {v2 .. v9}, Lcom/autoxing/delivery/download/DownloadStatus;-><init>(IJJJ)V

    invoke-interface {v1, v10}, Lcom/autoxing/delivery/download/DownlaodListener;->onDownloadStatus(Lcom/autoxing/delivery/download/DownloadStatus;)V

    return-void
.end method

.method public stop()V
    .locals 10

    .line 150
    invoke-direct {p0}, Lcom/autoxing/delivery/download/DownloadManager;->getTotalSize()J

    move-result-wide v6

    .line 151
    invoke-direct {p0}, Lcom/autoxing/delivery/download/DownloadManager;->getFileSize()J

    move-result-wide v4

    .line 152
    iget-object v8, p0, Lcom/autoxing/delivery/download/DownloadManager;->mListener:Lcom/autoxing/delivery/download/DownlaodListener;

    new-instance v9, Lcom/autoxing/delivery/download/DownloadStatus;

    const/4 v1, 0x2

    const-wide/16 v2, 0x0

    move-object v0, v9

    invoke-direct/range {v0 .. v7}, Lcom/autoxing/delivery/download/DownloadStatus;-><init>(IJJJ)V

    invoke-interface {v8, v9}, Lcom/autoxing/delivery/download/DownlaodListener;->onDownloadStatus(Lcom/autoxing/delivery/download/DownloadStatus;)V

    .line 153
    iget-object v0, p0, Lcom/autoxing/delivery/download/DownloadManager;->multiDownTask:Lcom/autoxing/delivery/download/MultiDownTask;

    invoke-virtual {v0}, Lcom/autoxing/delivery/download/MultiDownTask;->stop()V

    return-void
.end method

.method public updatePropFile(Lcom/alibaba/fastjson/JSONArray;)V
    .locals 7

    if-eqz p1, :cond_2

    .line 236
    invoke-virtual {p1}, Lcom/alibaba/fastjson/JSONArray;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 240
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x0

    .line 241
    :goto_0
    invoke-virtual {p1}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 242
    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson/JSONArray;->getJSONObject(I)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v2

    const-string v3, "url"

    .line 243
    invoke-virtual {v2, v3}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "name"

    .line 244
    invoke-virtual {v2, v4}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "fileSize"

    .line 245
    invoke-virtual {v2, v5}, Lcom/alibaba/fastjson/JSONObject;->getLongValue(Ljava/lang/String;)J

    move-result-wide v5

    .line 246
    new-instance v2, Lcom/autoxing/delivery/download/DownloadObj;

    invoke-direct {v2, v3, v5, v6, v4}, Lcom/autoxing/delivery/download/DownloadObj;-><init>(Ljava/lang/String;JLjava/lang/String;)V

    .line 247
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Res_"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/autoxing/delivery/download/DownloadObj;->getFlieName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lcom/autoxing/delivery/download/DownloadObj;->getResName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const-string p1, "launcher/config.properties"

    .line 249
    invoke-static {p1, v0}, Lcom/autoxing/delivery/util/ConfigUtils;->save(Ljava/lang/String;Ljava/util/Map;)V

    :cond_2
    :goto_1
    return-void
.end method
