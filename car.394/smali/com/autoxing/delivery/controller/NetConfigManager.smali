.class public Lcom/autoxing/delivery/controller/NetConfigManager;
.super Ljava/lang/Object;
.source "NetConfigManager.java"


# static fields
.field private static INSTANCE:Lcom/autoxing/delivery/controller/NetConfigManager; = null

.field private static final TAG:Ljava/lang/String; = "NetConfigManager"


# instance fields
.field private lastConfig:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 19
    iput-object v0, p0, Lcom/autoxing/delivery/controller/NetConfigManager;->lastConfig:Ljava/lang/String;

    return-void
.end method

.method public static getManager()Lcom/autoxing/delivery/controller/NetConfigManager;
    .locals 2

    .line 26
    sget-object v0, Lcom/autoxing/delivery/controller/NetConfigManager;->INSTANCE:Lcom/autoxing/delivery/controller/NetConfigManager;

    if-nez v0, :cond_1

    .line 27
    const-class v0, Lcom/autoxing/delivery/controller/NetConfigManager;

    monitor-enter v0

    .line 28
    :try_start_0
    sget-object v1, Lcom/autoxing/delivery/controller/NetConfigManager;->INSTANCE:Lcom/autoxing/delivery/controller/NetConfigManager;

    if-nez v1, :cond_0

    .line 29
    new-instance v1, Lcom/autoxing/delivery/controller/NetConfigManager;

    invoke-direct {v1}, Lcom/autoxing/delivery/controller/NetConfigManager;-><init>()V

    sput-object v1, Lcom/autoxing/delivery/controller/NetConfigManager;->INSTANCE:Lcom/autoxing/delivery/controller/NetConfigManager;

    .line 31
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 33
    :cond_1
    :goto_0
    sget-object v0, Lcom/autoxing/delivery/controller/NetConfigManager;->INSTANCE:Lcom/autoxing/delivery/controller/NetConfigManager;

    return-object v0
.end method

.method private getNetMode()I
    .locals 4

    const-string v0, "eth0Ip="

    :try_start_0
    const-string v1, "eth0"

    .line 95
    invoke-static {v1}, Lcom/autoxing/delivery/util/WifiUtils;->getIpAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "NetConfigManager"

    .line 96
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/autoai/research/atools/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "192.168.25.2"

    .line 97
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const-string v0, "192.168.25.200"

    .line 99
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    return v0

    :catch_0
    move-exception v0

    .line 103
    invoke-virtual {v0}, Ljava/net/SocketException;->printStackTrace()V

    :cond_1
    const/4 v0, -0x1

    return v0
.end method


# virtual methods
.method public getNetConfig()Lcom/autoxing/delivery/bean/NetConfig;
    .locals 2

    .line 111
    :try_start_0
    invoke-virtual {p0}, Lcom/autoxing/delivery/controller/NetConfigManager;->readNetConfig()Ljava/lang/String;

    move-result-object v0

    .line 112
    const-class v1, Lcom/autoxing/delivery/bean/NetConfig;

    invoke-static {v0, v1}, Lcom/alibaba/fastjson/JSONObject;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autoxing/delivery/bean/NetConfig;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 114
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public isConfigChanged()Z
    .locals 6

    const/4 v0, 0x0

    .line 122
    :try_start_0
    iget-object v1, p0, Lcom/autoxing/delivery/controller/NetConfigManager;->lastConfig:Ljava/lang/String;

    invoke-static {v1}, Lcom/autoxing/delivery/util/Utils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 123
    iget-object v1, p0, Lcom/autoxing/delivery/controller/NetConfigManager;->lastConfig:Ljava/lang/String;

    const-class v2, Lcom/autoxing/delivery/bean/NetConfig;

    invoke-static {v1, v2}, Lcom/alibaba/fastjson/JSONObject;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/autoxing/delivery/bean/NetConfig;

    .line 124
    invoke-virtual {p0}, Lcom/autoxing/delivery/controller/NetConfigManager;->readNetConfig()Ljava/lang/String;

    move-result-object v2

    .line 125
    const-class v3, Lcom/autoxing/delivery/bean/NetConfig;

    invoke-static {v2, v3}, Lcom/alibaba/fastjson/JSONObject;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/autoxing/delivery/bean/NetConfig;

    .line 126
    invoke-virtual {v2}, Lcom/autoxing/delivery/bean/NetConfig;->getOffline_mode()I

    move-result v3

    invoke-virtual {v1}, Lcom/autoxing/delivery/bean/NetConfig;->getOffline_mode()I

    move-result v4

    const/4 v5, 0x1

    if-eq v3, v4, :cond_0

    move v3, v5

    goto :goto_0

    :cond_0
    move v3, v0

    .line 127
    :goto_0
    invoke-virtual {v2}, Lcom/autoxing/delivery/bean/NetConfig;->getServer_mode()I

    move-result v2

    invoke-virtual {v1}, Lcom/autoxing/delivery/bean/NetConfig;->getServer_mode()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eq v2, v1, :cond_1

    move v1, v5

    goto :goto_1

    :cond_1
    move v1, v0

    :goto_1
    if-nez v3, :cond_2

    if-eqz v1, :cond_3

    :cond_2
    move v0, v5

    goto :goto_2

    :catch_0
    move-exception v1

    .line 131
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 133
    :cond_3
    :goto_2
    invoke-virtual {p0}, Lcom/autoxing/delivery/controller/NetConfigManager;->readNetConfig()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/autoxing/delivery/controller/NetConfigManager;->lastConfig:Ljava/lang/String;

    .line 134
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "isConfigChanged="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "NetConfigManager"

    invoke-static {v2, v1}, Lcom/autoai/research/atools/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public readNetConfig()Ljava/lang/String;
    .locals 3

    .line 59
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/autoxing/delivery/constant/Configs;->netConfigPath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 60
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 62
    :try_start_0
    invoke-static {v0}, Lcom/autoai/research/jtools/io/FileUtils;->readFileToString(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 64
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    const-string v0, ""

    .line 67
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "readNetConfig=>"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "NetConfigManager"

    invoke-static {v2, v1}, Lcom/autoai/research/atools/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public readNetConfig(Landroid/content/Context;)Ljava/lang/String;
    .locals 5

    .line 72
    invoke-virtual {p0}, Lcom/autoxing/delivery/controller/NetConfigManager;->readNetConfig()Ljava/lang/String;

    move-result-object v0

    .line 74
    :try_start_0
    invoke-static {v0}, Lcom/autoxing/delivery/util/Utils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v1}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lcom/alibaba/fastjson/JSONObject;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v1

    .line 75
    :goto_0
    invoke-direct {p0}, Lcom/autoxing/delivery/controller/NetConfigManager;->getNetMode()I

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v3, -0x1

    const-string v4, "net_mode"

    if-eq v2, v3, :cond_1

    .line 77
    :try_start_1
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v4, v3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 79
    :cond_1
    invoke-virtual {v1, v4}, Lcom/alibaba/fastjson/JSONObject;->getIntValue(Ljava/lang/String;)I

    move-result v2

    :goto_1
    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 82
    invoke-static {p1}, Lcom/autoxing/delivery/util/WifiUtils;->isWifiEnable(Landroid/content/Context;)Z

    move-result p1

    const-string v2, "wifi_mode"

    .line 83
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v1, v2, p1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    :cond_2
    invoke-virtual {v1}, Lcom/alibaba/fastjson/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 87
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 89
    :goto_2
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "readNetConfig=>"

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "NetConfigManager"

    invoke-static {v1, p1}, Lcom/autoai/research/atools/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public saveAssistantConfig(Ljava/lang/String;)V
    .locals 2

    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "saveAssistantConfig=>"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NetConfigManager"

    invoke-static {v1, v0}, Lcom/autoai/research/atools/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/autoxing/delivery/constant/Configs;->assistantConfigPath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 50
    :try_start_0
    invoke-static {v0, p1}, Lcom/autoai/research/jtools/io/FileUtils;->writeStringToFile(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 52
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public saveNetConfig(Ljava/lang/String;)V
    .locals 2

    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "saveNetConfig=>"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NetConfigManager"

    invoke-static {v1, v0}, Lcom/autoai/research/atools/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/autoxing/delivery/constant/Configs;->netConfigPath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 40
    :try_start_0
    invoke-static {v0, p1}, Lcom/autoai/research/jtools/io/FileUtils;->writeStringToFile(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 42
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
