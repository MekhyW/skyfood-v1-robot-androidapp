.class public Lcom/autoxing/delivery/constant/Configs;
.super Ljava/lang/Object;
.source "Configs.java"


# static fields
.field public static final ASSET_PREFIX:Ljava/lang/String; = "/android_asset/"

.field public static final CRASH_LOG_PATH:Ljava/lang/String;

.field public static final DEFAULT_SCREEN_IP:Ljava/lang/String; = "192.168.25.201"

.field public static final HTTP_SERVER_PORT:I = 0x22b8

.field public static final LOGOTYPE_NETURAL:Ljava/lang/String; = "1"

.field public static final LOGOTYPE_NORMAL:Ljava/lang/String; = "0"

.field public static final LOG_PATH:Ljava/lang/String;

.field public static final NET_CONFIG_PATH:Ljava/lang/String; = "/data/net_config.txt"

.field public static final OLD_SERVICE_PACKAGE_NAME:Ljava/lang/String; = "com.autoxing.delivery.service"

.field public static final ROUTE_MODE_ETH0_FIRST:Ljava/lang/String; = "eth0_first"

.field public static final SERVICE_API_LOCAL:Ljava/lang/String; = "local.autoxing.com"

.field public static final SERVICE_API_NATIONAL:Ljava/lang/String; = "api.autoxing.com"

.field public static final SERVICE_API_OVERSEA:Ljava/lang/String; = "apiglobal.autoxing.com"

.field public static final SERVICE_WEBSOCKET_URL:Ljava/lang/String; = "ws://localhost:9003"

.field public static final SP_KEY_LAUCHTYPE:Ljava/lang/String; = "lauchType"

.field public static final SP_KEY_LOGOTYPE:Ljava/lang/String; = "logoType"

.field public static final SP_KEY_NETURAL_FILE_PATH:Ljava/lang/String; = "neturalFilePath"

.field public static final SP_KEY_RES_Local_PREFIX:Ljava/lang/String; = "Res_Local_"

.field public static final SP_KEY_RES_PREFIX:Ljava/lang/String; = "Res_"

.field public static final SP_KEY_WIFI_PREFIX:Ljava/lang/String; = "Wifi_"

.field public static final SP_NAME:Ljava/lang/String; = "launcher/config.properties"

.field public static final SYSTEM_LOG_PATH:Ljava/lang/String;

.field public static final WEBSOCKET_SERVER_PORT:I = 0x232c

.field public static final WEBSOCKET_URL:Ljava/lang/String; = "ws://%s:9800/headapp&0&0"

.field public static final WIFI_STATE_URL:Ljava/lang/String; = "http://192.168.25.25:9001/wifi_state"

.field public static final assistantConfigPath:Ljava/lang/String;

.field public static final basePath:Ljava/lang/String;

.field public static final localAnimationFilePath:Ljava/lang/String;

.field public static final localApkZipPath:Ljava/lang/String;

.field public static final localCacheFilePath:Ljava/lang/String;

.field public static final localResFilePath:Ljava/lang/String;

.field public static final localResZipPath:Ljava/lang/String;

.field public static final netConfigPath:Ljava/lang/String;

.field public static final validAnimationSubfixArr:[Ljava/lang/String;

.field public static final validApknSubfixArr:[Ljava/lang/String;

.field public static final validBGMSubfixArr:[Ljava/lang/String;

.field public static final validMeidaSubfixArr:[Ljava/lang/String;

.field public static final videoPath:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/launcher"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/autoxing/delivery/constant/Configs;->basePath:Ljava/lang/String;

    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/logs"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/autoxing/delivery/constant/Configs;->LOG_PATH:Ljava/lang/String;

    .line 8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/logs/system"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/autoxing/delivery/constant/Configs;->SYSTEM_LOG_PATH:Ljava/lang/String;

    .line 9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/resource/local/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/autoxing/delivery/constant/Configs;->localResFilePath:Ljava/lang/String;

    .line 10
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/local/animation/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/autoxing/delivery/constant/Configs;->localAnimationFilePath:Ljava/lang/String;

    .line 11
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/resource/apk/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/autoxing/delivery/constant/Configs;->localApkZipPath:Ljava/lang/String;

    .line 13
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/cache/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/autoxing/delivery/constant/Configs;->localCacheFilePath:Ljava/lang/String;

    .line 14
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/resource/zip/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/autoxing/delivery/constant/Configs;->localResZipPath:Ljava/lang/String;

    .line 15
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/resource/video"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/autoxing/delivery/constant/Configs;->videoPath:Ljava/lang/String;

    .line 33
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/net_config.txt"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/autoxing/delivery/constant/Configs;->netConfigPath:Ljava/lang/String;

    .line 34
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/assistant_config.txt"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/autoxing/delivery/constant/Configs;->assistantConfigPath:Ljava/lang/String;

    const-string v0, ".jpg"

    const-string v1, ".png"

    const-string v2, ".mov"

    const-string v3, ".mp4"

    const-string v4, ".jpeg"

    .line 47
    filled-new-array {v2, v3, v4, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/autoxing/delivery/constant/Configs;->validMeidaSubfixArr:[Ljava/lang/String;

    const-string v0, ".mp3"

    const-string v1, ".wav"

    .line 48
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/autoxing/delivery/constant/Configs;->validBGMSubfixArr:[Ljava/lang/String;

    const-string v0, ".gif"

    .line 49
    filled-new-array {v0, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/autoxing/delivery/constant/Configs;->validAnimationSubfixArr:[Ljava/lang/String;

    const-string v0, ".zip"

    .line 50
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/autoxing/delivery/constant/Configs;->validApknSubfixArr:[Ljava/lang/String;

    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/launcher/logs/crash.log"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/autoxing/delivery/constant/Configs;->CRASH_LOG_PATH:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
