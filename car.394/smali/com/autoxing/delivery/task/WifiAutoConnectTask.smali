.class public Lcom/autoxing/delivery/task/WifiAutoConnectTask;
.super Ljava/lang/Object;
.source "WifiAutoConnectTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final TAG:Ljava/lang/String; = "WifiAutoConnectTask"


# instance fields
.field private isRunning:Z

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/autoxing/delivery/task/WifiAutoConnectTask;->mContext:Landroid/content/Context;

    return-void
.end method

.method private debug(Ljava/lang/String;)V
    .locals 1

    const-string v0, "WifiAutoConnectTask"

    .line 37
    invoke-static {v0, p1}, Lcom/autoai/research/atools/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public autoConnect()Z
    .locals 9

    .line 48
    invoke-static {}, Lcom/autoxing/delivery/util/WifiUtils;->isAndroidNet()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "\u5e95\u76d8\u4f9b\u7f51\u6a21\u5f0f,\u4e0d\u81ea\u52a8\u8fde\u63a5\u5df2\u8bb0\u5fc6WiFI"

    .line 50
    invoke-direct {p0, v0}, Lcom/autoxing/delivery/task/WifiAutoConnectTask;->debug(Ljava/lang/String;)V

    return v1

    .line 54
    :cond_0
    iget-object v0, p0, Lcom/autoxing/delivery/task/WifiAutoConnectTask;->mContext:Landroid/content/Context;

    const-string v2, "wifi"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 55
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v2

    if-nez v2, :cond_1

    const-string v0, "wifi\u672a\u6253\u5f00"

    .line 56
    invoke-direct {p0, v0}, Lcom/autoxing/delivery/task/WifiAutoConnectTask;->debug(Ljava/lang/String;)V

    return v1

    .line 60
    :cond_1
    iget-object v2, p0, Lcom/autoxing/delivery/task/WifiAutoConnectTask;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/autoxing/delivery/util/WifiUtils;->isWifiConnected(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v0, "wifi\u5df2\u8fde\u63a5"

    .line 61
    invoke-direct {p0, v0}, Lcom/autoxing/delivery/task/WifiAutoConnectTask;->debug(Ljava/lang/String;)V

    return v1

    .line 65
    :cond_2
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_c

    .line 66
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3

    goto/16 :goto_1

    :cond_3
    const-string v3, "Wifi_"

    const-string v4, "launcher/config.properties"

    .line 70
    invoke-static {v3, v4}, Lcom/autoxing/delivery/util/ConfigUtils;->getStoreWifiList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v3

    .line 71
    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_4

    const-string v0, "\u5df2\u8bb0\u5fc6\u5bc6\u7801\u7684wifi\u5217\u8868\u4e3a\u7a7a"

    .line 72
    invoke-direct {p0, v0}, Lcom/autoxing/delivery/task/WifiAutoConnectTask;->debug(Ljava/lang/String;)V

    return v1

    .line 75
    :cond_4
    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    .line 77
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v5, 0x0

    :cond_5
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/wifi/ScanResult;

    .line 79
    iget v7, v6, Landroid/net/wifi/ScanResult;->frequency:I

    const/16 v8, 0x1388

    if-le v7, v8, :cond_6

    goto :goto_0

    .line 82
    :cond_6
    iget-object v7, v6, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-interface {v4, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_7

    goto :goto_0

    :cond_7
    if-eqz v5, :cond_8

    .line 85
    iget v7, v6, Landroid/net/wifi/ScanResult;->level:I

    iget v8, v5, Landroid/net/wifi/ScanResult;->level:I

    if-le v7, v8, :cond_5

    :cond_8
    move-object v5, v6

    goto :goto_0

    :cond_9
    if-nez v5, :cond_a

    const-string v0, "\u627e\u4e0d\u5230\u53ef\u7528WiFI"

    .line 90
    invoke-direct {p0, v0}, Lcom/autoxing/delivery/task/WifiAutoConnectTask;->debug(Ljava/lang/String;)V

    return v1

    .line 93
    :cond_a
    iget-object v2, p0, Lcom/autoxing/delivery/task/WifiAutoConnectTask;->mContext:Landroid/content/Context;

    iget-object v4, v5, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    iget-object v6, v5, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-static {v2, v4, v6}, Lcom/autoxing/delivery/util/WifiUtils;->connectSpecialWifi(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_b

    .line 95
    iget-object v2, v5, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    .line 96
    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 97
    invoke-static {v0, v5, v2}, Lcom/reglink/common/Wifi;->connectToNewNetwork(Landroid/net/wifi/WifiManager;Landroid/net/wifi/ScanResult;Ljava/lang/String;)Z

    move-result v2

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    .line 98
    iget-object v3, v5, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    aput-object v3, v0, v1

    const/4 v1, 0x1

    iget-object v3, v5, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    aput-object v3, v0, v1

    const/4 v1, 0x2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v0, v1

    const-string v1, "%s(%s)\u8fde\u63a5\u72b6\u6001:%b"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/autoxing/delivery/task/WifiAutoConnectTask;->debug(Ljava/lang/String;)V

    :cond_b
    return v2

    :cond_c
    :goto_1
    const-string v0, "wifi\u5217\u8868\u4e3a\u7a7a"

    .line 67
    invoke-direct {p0, v0}, Lcom/autoxing/delivery/task/WifiAutoConnectTask;->debug(Ljava/lang/String;)V

    return v1
.end method

.method public isRunning()Z
    .locals 1

    .line 33
    iget-boolean v0, p0, Lcom/autoxing/delivery/task/WifiAutoConnectTask;->isRunning:Z

    return v0
.end method

.method public run()V
    .locals 1

    const/4 v0, 0x1

    .line 27
    iput-boolean v0, p0, Lcom/autoxing/delivery/task/WifiAutoConnectTask;->isRunning:Z

    .line 28
    invoke-virtual {p0}, Lcom/autoxing/delivery/task/WifiAutoConnectTask;->autoConnect()Z

    const/4 v0, 0x0

    .line 29
    iput-boolean v0, p0, Lcom/autoxing/delivery/task/WifiAutoConnectTask;->isRunning:Z

    return-void
.end method
