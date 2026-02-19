.class public Lcom/autoxing/delivery/js/JsEngine;
.super Ljava/lang/Object;
.source "JsEngine.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/autoxing/delivery/js/JsEngine$OnJsEngineListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "JsEngine"


# instance fields
.field private dataCenter:Lcom/autoxing/delivery/js/ws/DataCenter;

.field private executorService:Ljava/util/concurrent/ExecutorService;

.field private mContext:Landroid/content/Context;

.field private mHttpServer:Lcom/autoxing/delivery/httpserver/HttpServer;

.field private mJsEngineListener:Lcom/autoxing/delivery/js/JsEngine$OnJsEngineListener;

.field private mListener:Lcom/autoxing/delivery/js/ws/OnWebSocketListener;

.field private uploadListener:Lcom/autoxing/delivery/httpserver/HttpServer$HttpServerUploadListener;

.field private webSocketServer:Lcom/autoxing/delivery/js/ws/WebSocketServer;


# direct methods
.method static bridge synthetic -$$Nest$fgetexecutorService(Lcom/autoxing/delivery/js/JsEngine;)Ljava/util/concurrent/ExecutorService;
    .locals 0

    iget-object p0, p0, Lcom/autoxing/delivery/js/JsEngine;->executorService:Ljava/util/concurrent/ExecutorService;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mhandleData(Lcom/autoxing/delivery/js/JsEngine;Lcom/autoxing/delivery/js/model/MsgInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/autoxing/delivery/js/JsEngine;->handleData(Lcom/autoxing/delivery/js/model/MsgInfo;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msendMsg(Lcom/autoxing/delivery/js/JsEngine;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/autoxing/delivery/js/JsEngine;->sendMsg(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Lcom/autoxing/delivery/js/ws/DataCenter;

    invoke-direct {v0}, Lcom/autoxing/delivery/js/ws/DataCenter;-><init>()V

    iput-object v0, p0, Lcom/autoxing/delivery/js/JsEngine;->dataCenter:Lcom/autoxing/delivery/js/ws/DataCenter;

    .line 38
    new-instance v0, Lcom/autoxing/delivery/httpserver/HttpServer;

    invoke-direct {v0}, Lcom/autoxing/delivery/httpserver/HttpServer;-><init>()V

    iput-object v0, p0, Lcom/autoxing/delivery/js/JsEngine;->mHttpServer:Lcom/autoxing/delivery/httpserver/HttpServer;

    .line 48
    new-instance v0, Lcom/autoxing/delivery/js/JsEngine$1;

    invoke-direct {v0, p0}, Lcom/autoxing/delivery/js/JsEngine$1;-><init>(Lcom/autoxing/delivery/js/JsEngine;)V

    iput-object v0, p0, Lcom/autoxing/delivery/js/JsEngine;->uploadListener:Lcom/autoxing/delivery/httpserver/HttpServer$HttpServerUploadListener;

    .line 75
    new-instance v0, Lcom/autoxing/delivery/js/JsEngine$2;

    invoke-direct {v0, p0}, Lcom/autoxing/delivery/js/JsEngine$2;-><init>(Lcom/autoxing/delivery/js/JsEngine;)V

    iput-object v0, p0, Lcom/autoxing/delivery/js/JsEngine;->mListener:Lcom/autoxing/delivery/js/ws/OnWebSocketListener;

    const/16 v0, 0xa

    .line 45
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/autoxing/delivery/js/JsEngine;->executorService:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method private getFileName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "/"

    .line 247
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 248
    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    aget-object p1, p1, v0

    return-object p1
.end method

.method private getLanguageType(Ljava/lang/String;)I
    .locals 2

    .line 203
    invoke-static {p1}, Lcom/alibaba/fastjson/JSONObject;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object p1

    const-string v0, "data"

    .line 204
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_1

    const-string v0, "languageType"

    .line 205
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 208
    :cond_0
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->getIntValue(Ljava/lang/String;)I

    move-result p1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x2

    return p1
.end method

.method private getReqType(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 198
    invoke-static {p1}, Lcom/alibaba/fastjson/JSONObject;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object p1

    const-string v0, "reqType"

    .line 199
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getUploadType(Ljava/lang/String;)I
    .locals 3

    .line 212
    invoke-static {p1}, Lcom/alibaba/fastjson/JSONObject;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object p1

    const-string v0, "data"

    .line 213
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object p1

    const/4 v0, 0x1

    if-eqz p1, :cond_2

    const-string v1, "uploadType"

    .line 214
    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 217
    :cond_0
    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson/JSONObject;->getIntValue(Ljava/lang/String;)I

    move-result p1

    if-eq p1, v0, :cond_1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    const/4 v1, 0x3

    if-eq p1, v1, :cond_1

    return v0

    :cond_1
    return p1

    :cond_2
    :goto_0
    return v0
.end method

.method private handleData(Lcom/autoxing/delivery/js/model/MsgInfo;)V
    .locals 8

    .line 98
    invoke-virtual {p1}, Lcom/autoxing/delivery/js/model/MsgInfo;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 99
    invoke-direct {p0, v0}, Lcom/autoxing/delivery/js/JsEngine;->getReqType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 101
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, -0x1

    sparse-switch v2, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v2, "onAnimation"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v7, 0x7

    goto :goto_0

    :sswitch_1
    const-string v2, "onResDetail"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v7, 0x6

    goto :goto_0

    :sswitch_2
    const-string v2, "onResConfig"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v7, 0x5

    goto :goto_0

    :sswitch_3
    const-string v2, "onReadFileContent"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v7, 0x4

    goto :goto_0

    :sswitch_4
    const-string v2, "onWriteLog"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_0

    :cond_4
    move v7, v3

    goto :goto_0

    :sswitch_5
    const-string v2, "onHeartBeat"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    goto :goto_0

    :cond_5
    move v7, v4

    goto :goto_0

    :sswitch_6
    const-string v2, "onEditRes"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    goto :goto_0

    :cond_6
    move v7, v5

    goto :goto_0

    :sswitch_7
    const-string v2, "onResList"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    goto :goto_0

    :cond_7
    move v7, v6

    :goto_0
    packed-switch v7, :pswitch_data_0

    goto/16 :goto_3

    .line 135
    :pswitch_0
    new-instance v1, Lcom/autoxing/delivery/js/JsEngine$7;

    invoke-direct {v1, p0}, Lcom/autoxing/delivery/js/JsEngine$7;-><init>(Lcom/autoxing/delivery/js/JsEngine;)V

    new-array v2, v6, [Lcom/alibaba/fastjson/parser/Feature;

    invoke-static {v0, v1, v2}, Lcom/alibaba/fastjson/JSONObject;->parseObject(Ljava/lang/String;Lcom/alibaba/fastjson/TypeReference;[Lcom/alibaba/fastjson/parser/Feature;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/autoxing/delivery/js/model/ComdInfo;

    .line 136
    invoke-virtual {v1}, Lcom/autoxing/delivery/js/model/ComdInfo;->getData()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/autoxing/delivery/js/model/AnimationInfo;

    .line 138
    invoke-virtual {v1}, Lcom/autoxing/delivery/js/model/AnimationInfo;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 139
    invoke-virtual {v1}, Lcom/autoxing/delivery/js/model/AnimationInfo;->isPlay()Z

    move-result v7

    if-eqz v7, :cond_a

    .line 140
    invoke-static {v2}, Lcom/autoxing/delivery/util/Utils;->isEmpty(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_8

    new-array v2, v5, [Ljava/lang/Object;

    const-string v3, "default.mp4"

    aput-object v3, v2, v6

    const-string v3, "/android_asset/animation/%s"

    .line 148
    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    .line 149
    :cond_8
    iget-object v7, p0, Lcom/autoxing/delivery/js/JsEngine;->mContext:Landroid/content/Context;

    invoke-direct {p0, v7, v2}, Lcom/autoxing/delivery/js/JsEngine;->isFileExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_9

    .line 150
    invoke-virtual {v1, v4}, Lcom/autoxing/delivery/js/model/AnimationInfo;->setStatus(I)V

    new-array v3, v5, [Ljava/lang/Object;

    .line 151
    invoke-virtual {v1}, Lcom/autoxing/delivery/js/model/AnimationInfo;->getPath()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    const-string v4, "%s not exist"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/autoxing/delivery/js/model/AnimationInfo;->setMsg(Ljava/lang/String;)V

    :goto_1
    move v5, v6

    goto :goto_2

    .line 153
    :cond_9
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string v7, ".mp4"

    invoke-virtual {v4, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_a

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string v7, ".gif"

    invoke-virtual {v4, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_a

    .line 154
    invoke-virtual {v1, v3}, Lcom/autoxing/delivery/js/model/AnimationInfo;->setStatus(I)V

    new-array v3, v5, [Ljava/lang/Object;

    .line 155
    invoke-virtual {v1}, Lcom/autoxing/delivery/js/model/AnimationInfo;->getPath()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    const-string v4, "%s format is error"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/autoxing/delivery/js/model/AnimationInfo;->setMsg(Ljava/lang/String;)V

    goto :goto_1

    :cond_a
    :goto_2
    if-eqz v5, :cond_d

    .line 160
    invoke-virtual {v1}, Lcom/autoxing/delivery/js/model/AnimationInfo;->isPlay()Z

    move-result v3

    if-eqz v3, :cond_c

    const-string v3, "/android_asset/"

    .line 161
    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 162
    new-instance v4, Ljava/io/File;

    sget-object v5, Lcom/autoxing/delivery/constant/Configs;->localCacheFilePath:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/autoxing/delivery/js/JsEngine;->getFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_b

    .line 164
    new-instance v5, Ljava/io/File;

    sget-object v6, Lcom/autoxing/delivery/constant/Configs;->localCacheFilePath:Ljava/lang/String;

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v5}, Lcom/autoai/research/jtools/io/FileUtils;->checkDirExists(Ljava/io/File;)V

    const-string v5, ""

    .line 165
    invoke-virtual {v2, v3, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 166
    iget-object v3, p0, Lcom/autoxing/delivery/js/JsEngine;->mContext:Landroid/content/Context;

    invoke-static {v3, v2, v4}, Lcom/autoai/research/atools/AssetsUtils;->writeFromAssets(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Z

    .line 168
    :cond_b
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    .line 171
    :cond_c
    iget-object v3, p0, Lcom/autoxing/delivery/js/JsEngine;->mJsEngineListener:Lcom/autoxing/delivery/js/JsEngine$OnJsEngineListener;

    invoke-interface {v3, v2, v1}, Lcom/autoxing/delivery/js/JsEngine$OnJsEngineListener;->onAnimation(Ljava/lang/String;Lcom/autoxing/delivery/js/model/AnimationInfo;)Lcom/autoxing/delivery/js/model/AnimationInfo$AnimationStatus;

    move-result-object v2

    .line 172
    invoke-virtual {v2}, Lcom/autoxing/delivery/js/model/AnimationInfo$AnimationStatus;->getStatus()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/autoxing/delivery/js/model/AnimationInfo;->setStatus(I)V

    .line 173
    invoke-virtual {v2}, Lcom/autoxing/delivery/js/model/AnimationInfo$AnimationStatus;->getMsg()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/autoxing/delivery/js/model/AnimationInfo;->setMsg(Ljava/lang/String;)V

    .line 175
    :cond_d
    invoke-static {v1}, Lcom/alibaba/fastjson/JSONObject;->toJSON(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/fastjson/JSONObject;

    goto/16 :goto_4

    .line 123
    :pswitch_1
    new-instance v1, Lcom/autoxing/delivery/js/JsEngine$5;

    invoke-direct {v1, p0}, Lcom/autoxing/delivery/js/JsEngine$5;-><init>(Lcom/autoxing/delivery/js/JsEngine;)V

    new-array v2, v6, [Lcom/alibaba/fastjson/parser/Feature;

    invoke-static {v0, v1, v2}, Lcom/alibaba/fastjson/JSONObject;->parseObject(Ljava/lang/String;Lcom/alibaba/fastjson/TypeReference;[Lcom/alibaba/fastjson/parser/Feature;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/autoxing/delivery/js/model/ComdInfo;

    .line 124
    iget-object v2, p0, Lcom/autoxing/delivery/js/JsEngine;->dataCenter:Lcom/autoxing/delivery/js/ws/DataCenter;

    invoke-virtual {v2, v1}, Lcom/autoxing/delivery/js/ws/DataCenter;->generateResDetail(Lcom/autoxing/delivery/js/model/ComdInfo;)Lcom/autoxing/delivery/js/model/ZipInfo;

    move-result-object v1

    .line 125
    invoke-static {v1}, Lcom/alibaba/fastjson/JSONObject;->toJSON(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/fastjson/JSONObject;

    goto/16 :goto_4

    .line 103
    :pswitch_2
    invoke-direct {p0, v0}, Lcom/autoxing/delivery/js/JsEngine;->getLanguageType(Ljava/lang/String;)I

    move-result v1

    .line 104
    invoke-direct {p0, v0}, Lcom/autoxing/delivery/js/JsEngine;->getUploadType(Ljava/lang/String;)I

    move-result v2

    .line 105
    iget-object v3, p0, Lcom/autoxing/delivery/js/JsEngine;->mHttpServer:Lcom/autoxing/delivery/httpserver/HttpServer;

    invoke-virtual {v3, v1}, Lcom/autoxing/delivery/httpserver/HttpServer;->setLanguageType(I)V

    .line 106
    iget-object v3, p0, Lcom/autoxing/delivery/js/JsEngine;->dataCenter:Lcom/autoxing/delivery/js/ws/DataCenter;

    iget-object v4, p0, Lcom/autoxing/delivery/js/JsEngine;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v4, v1, v2}, Lcom/autoxing/delivery/js/ws/DataCenter;->generateResConfig(Landroid/content/Context;II)Lcom/autoxing/delivery/js/model/UploadInfo;

    move-result-object v1

    .line 107
    invoke-static {v1}, Lcom/alibaba/fastjson/JSONObject;->toJSON(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/fastjson/JSONObject;

    goto :goto_4

    .line 178
    :pswitch_3
    new-instance v1, Lcom/autoxing/delivery/js/JsEngine$8;

    invoke-direct {v1, p0}, Lcom/autoxing/delivery/js/JsEngine$8;-><init>(Lcom/autoxing/delivery/js/JsEngine;)V

    new-array v2, v6, [Lcom/alibaba/fastjson/parser/Feature;

    invoke-static {v0, v1, v2}, Lcom/alibaba/fastjson/JSONObject;->parseObject(Ljava/lang/String;Lcom/alibaba/fastjson/TypeReference;[Lcom/alibaba/fastjson/parser/Feature;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/autoxing/delivery/js/model/ComdInfo;

    .line 179
    iget-object v2, p0, Lcom/autoxing/delivery/js/JsEngine;->dataCenter:Lcom/autoxing/delivery/js/ws/DataCenter;

    invoke-virtual {v2, v1}, Lcom/autoxing/delivery/js/ws/DataCenter;->generateFilesContent(Lcom/autoxing/delivery/js/model/ComdInfo;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v1

    goto :goto_4

    .line 128
    :pswitch_4
    new-instance v1, Lcom/autoxing/delivery/js/JsEngine$6;

    invoke-direct {v1, p0}, Lcom/autoxing/delivery/js/JsEngine$6;-><init>(Lcom/autoxing/delivery/js/JsEngine;)V

    new-array v2, v6, [Lcom/alibaba/fastjson/parser/Feature;

    invoke-static {v0, v1, v2}, Lcom/alibaba/fastjson/JSONObject;->parseObject(Ljava/lang/String;Lcom/alibaba/fastjson/TypeReference;[Lcom/alibaba/fastjson/parser/Feature;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/autoxing/delivery/js/model/ComdInfo;

    .line 129
    iget-object v2, p0, Lcom/autoxing/delivery/js/JsEngine;->dataCenter:Lcom/autoxing/delivery/js/ws/DataCenter;

    invoke-virtual {v2, v1}, Lcom/autoxing/delivery/js/ws/DataCenter;->writeLog(Lcom/autoxing/delivery/js/model/ComdInfo;)V

    goto :goto_3

    .line 132
    :pswitch_5
    invoke-direct {p0, p1}, Lcom/autoxing/delivery/js/JsEngine;->sendMsg(Lcom/autoxing/delivery/js/model/MsgInfo;)V

    :goto_3
    const/4 v1, 0x0

    goto :goto_4

    .line 115
    :pswitch_6
    new-instance v1, Lcom/autoxing/delivery/js/JsEngine$4;

    invoke-direct {v1, p0}, Lcom/autoxing/delivery/js/JsEngine$4;-><init>(Lcom/autoxing/delivery/js/JsEngine;)V

    new-array v2, v6, [Lcom/alibaba/fastjson/parser/Feature;

    invoke-static {v0, v1, v2}, Lcom/alibaba/fastjson/JSONObject;->parseObject(Ljava/lang/String;Lcom/alibaba/fastjson/TypeReference;[Lcom/alibaba/fastjson/parser/Feature;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/autoxing/delivery/js/model/ComdInfo;

    .line 116
    iget-object v2, p0, Lcom/autoxing/delivery/js/JsEngine;->dataCenter:Lcom/autoxing/delivery/js/ws/DataCenter;

    new-instance v3, Lcom/autoxing/delivery/js/JsEngine$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, p1, v0}, Lcom/autoxing/delivery/js/JsEngine$$ExternalSyntheticLambda0;-><init>(Lcom/autoxing/delivery/js/JsEngine;Lcom/autoxing/delivery/js/model/MsgInfo;Ljava/lang/String;)V

    invoke-virtual {v2, v1, v3}, Lcom/autoxing/delivery/js/ws/DataCenter;->generateResEdit(Lcom/autoxing/delivery/js/model/ComdInfo;Lcom/autoxing/delivery/js/ws/OnDataCenterListener;)Lcom/autoxing/delivery/js/model/ResEditResult;

    move-result-object v1

    .line 120
    invoke-static {v1}, Lcom/alibaba/fastjson/JSONObject;->toJSON(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/fastjson/JSONObject;

    goto :goto_4

    .line 110
    :pswitch_7
    new-instance v1, Lcom/autoxing/delivery/js/JsEngine$3;

    invoke-direct {v1, p0}, Lcom/autoxing/delivery/js/JsEngine$3;-><init>(Lcom/autoxing/delivery/js/JsEngine;)V

    new-array v2, v6, [Lcom/alibaba/fastjson/parser/Feature;

    invoke-static {v0, v1, v2}, Lcom/alibaba/fastjson/JSONObject;->parseObject(Ljava/lang/String;Lcom/alibaba/fastjson/TypeReference;[Lcom/alibaba/fastjson/parser/Feature;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/autoxing/delivery/js/model/ComdInfo;

    .line 111
    iget-object v2, p0, Lcom/autoxing/delivery/js/JsEngine;->dataCenter:Lcom/autoxing/delivery/js/ws/DataCenter;

    iget-object v3, p0, Lcom/autoxing/delivery/js/JsEngine;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1, v3}, Lcom/autoxing/delivery/js/ws/DataCenter;->generateResList(Lcom/autoxing/delivery/js/model/ComdInfo;Landroid/content/Context;)Lcom/autoxing/delivery/js/model/ResListInfo;

    move-result-object v1

    .line 112
    invoke-static {v1}, Lcom/alibaba/fastjson/JSONObject;->toJSON(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/fastjson/JSONObject;

    :goto_4
    if-eqz v1, :cond_e

    .line 184
    invoke-direct {p0, p1, v0, v1}, Lcom/autoxing/delivery/js/JsEngine;->sendMsg(Lcom/autoxing/delivery/js/model/MsgInfo;Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    :cond_e
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x6f017181 -> :sswitch_7
        -0x20e260a9 -> :sswitch_6
        0xa1521fd -> :sswitch_5
        0x370af5e4 -> :sswitch_4
        0x3974d808 -> :sswitch_3
        0x3c8b6ce3 -> :sswitch_2
        0x3db601f2 -> :sswitch_1
        0x40d55865 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private isFileExist(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2

    const-string v0, "/android_asset/"

    .line 240
    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, ""

    .line 241
    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/autoxing/delivery/js/JsEngine;->isValidAssetFile(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    return p1

    .line 243
    :cond_0
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result p1

    return p1
.end method

.method private isValidAssetFile(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 0

    .line 253
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p1

    .line 254
    invoke-virtual {p1, p2}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p1

    .line 257
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, 0x0

    return p1
.end method

.method private sendMsg(Lcom/autoxing/delivery/js/model/MsgInfo;)V
    .locals 2

    .line 229
    invoke-virtual {p1}, Lcom/autoxing/delivery/js/model/MsgInfo;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onHeartBeat"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 230
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "sendMsg: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/autoxing/delivery/js/model/MsgInfo;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "JsEngine"

    invoke-static {v1, v0}, Lcom/autoai/research/atools/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    :cond_0
    iget-object v0, p0, Lcom/autoxing/delivery/js/JsEngine;->webSocketServer:Lcom/autoxing/delivery/js/ws/WebSocketServer;

    invoke-virtual {v0, p1}, Lcom/autoxing/delivery/js/ws/WebSocketServer;->sendMsg(Lcom/autoxing/delivery/js/model/MsgInfo;)V

    return-void
.end method

.method private sendMsg(Lcom/autoxing/delivery/js/model/MsgInfo;Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V
    .locals 2

    .line 189
    invoke-static {p2}, Lcom/alibaba/fastjson/JSONObject;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object p2

    const-string v0, "data"

    .line 190
    invoke-virtual {p2, v0, p3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    const-string v0, "timestamp"

    invoke-virtual {p2, v0, p3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 p3, 0x232c

    .line 192
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const-string v0, "port"

    invoke-virtual {p2, v0, p3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    invoke-virtual {p2}, Lcom/alibaba/fastjson/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/autoxing/delivery/js/model/MsgInfo;->setMessage(Ljava/lang/String;)V

    .line 194
    invoke-direct {p0, p1}, Lcom/autoxing/delivery/js/JsEngine;->sendMsg(Lcom/autoxing/delivery/js/model/MsgInfo;)V

    return-void
.end method

.method private sendMsg(Ljava/lang/String;)V
    .locals 1

    .line 236
    iget-object v0, p0, Lcom/autoxing/delivery/js/JsEngine;->webSocketServer:Lcom/autoxing/delivery/js/ws/WebSocketServer;

    invoke-virtual {v0, p1}, Lcom/autoxing/delivery/js/ws/WebSocketServer;->sendMsg(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method synthetic lambda$handleData$0$com-autoxing-delivery-js-JsEngine(Lcom/autoxing/delivery/js/model/MsgInfo;Ljava/lang/String;Lcom/autoxing/delivery/js/model/ResEditResult;)V
    .locals 0

    .line 117
    invoke-static {p3}, Lcom/alibaba/fastjson/JSONObject;->toJSON(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/alibaba/fastjson/JSONObject;

    .line 118
    invoke-direct {p0, p1, p2, p3}, Lcom/autoxing/delivery/js/JsEngine;->sendMsg(Lcom/autoxing/delivery/js/model/MsgInfo;Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    return-void
.end method

.method public start(Landroid/content/Context;Lcom/autoxing/delivery/js/JsEngine$OnJsEngineListener;)V
    .locals 1

    .line 67
    iput-object p1, p0, Lcom/autoxing/delivery/js/JsEngine;->mContext:Landroid/content/Context;

    .line 68
    iput-object p2, p0, Lcom/autoxing/delivery/js/JsEngine;->mJsEngineListener:Lcom/autoxing/delivery/js/JsEngine$OnJsEngineListener;

    .line 69
    iget-object p2, p0, Lcom/autoxing/delivery/js/JsEngine;->mHttpServer:Lcom/autoxing/delivery/httpserver/HttpServer;

    iget-object v0, p0, Lcom/autoxing/delivery/js/JsEngine;->uploadListener:Lcom/autoxing/delivery/httpserver/HttpServer$HttpServerUploadListener;

    invoke-virtual {p2, p1, v0}, Lcom/autoxing/delivery/httpserver/HttpServer;->start(Landroid/content/Context;Lcom/autoxing/delivery/httpserver/HttpServer$HttpServerUploadListener;)V

    .line 71
    new-instance p1, Lcom/autoxing/delivery/js/ws/WebSocketServer;

    iget-object p2, p0, Lcom/autoxing/delivery/js/JsEngine;->mListener:Lcom/autoxing/delivery/js/ws/OnWebSocketListener;

    invoke-direct {p1, p2}, Lcom/autoxing/delivery/js/ws/WebSocketServer;-><init>(Lcom/autoxing/delivery/js/ws/OnWebSocketListener;)V

    iput-object p1, p0, Lcom/autoxing/delivery/js/JsEngine;->webSocketServer:Lcom/autoxing/delivery/js/ws/WebSocketServer;

    const/16 p2, 0x232c

    .line 72
    invoke-virtual {p1, p2}, Lcom/autoxing/delivery/js/ws/WebSocketServer;->start(I)V

    return-void
.end method

.method public stop()V
    .locals 1

    .line 225
    iget-object v0, p0, Lcom/autoxing/delivery/js/JsEngine;->mHttpServer:Lcom/autoxing/delivery/httpserver/HttpServer;

    invoke-virtual {v0}, Lcom/autoxing/delivery/httpserver/HttpServer;->stop()V

    return-void
.end method
