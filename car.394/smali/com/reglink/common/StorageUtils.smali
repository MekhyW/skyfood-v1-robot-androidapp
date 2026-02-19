.class public Lcom/reglink/common/StorageUtils;
.super Ljava/lang/Object;
.source "StorageUtils.java"


# static fields
.field static hardwareService:Lcom/reglink/services/IHardwareService;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getExternalSDCard()Ljava/lang/String;
    .locals 1

    .line 40
    :try_start_0
    invoke-static {}, Lcom/reglink/common/StorageUtils;->getHardwareService()Lcom/reglink/services/IHardwareService;

    move-result-object v0

    invoke-interface {v0}, Lcom/reglink/services/IHardwareService;->getExternalSDCardPath()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 42
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method private static getHardwareService()Lcom/reglink/services/IHardwareService;
    .locals 2

    .line 17
    sget-object v0, Lcom/reglink/common/StorageUtils;->hardwareService:Lcom/reglink/services/IHardwareService;

    if-eqz v0, :cond_0

    return-object v0

    .line 18
    :cond_0
    invoke-static {}, Lcom/reglink/common/ServiceManager;->getDroidService()Lcom/reglink/services/IDroidService;

    move-result-object v0

    :try_start_0
    const-string v1, "Hardware"

    .line 20
    invoke-interface {v0, v1}, Lcom/reglink/services/IDroidService;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/reglink/services/IHardwareService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/reglink/services/IHardwareService;

    move-result-object v0

    sput-object v0, Lcom/reglink/common/StorageUtils;->hardwareService:Lcom/reglink/services/IHardwareService;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 22
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 24
    :goto_0
    sget-object v0, Lcom/reglink/common/StorageUtils;->hardwareService:Lcom/reglink/services/IHardwareService;

    return-object v0
.end method

.method public static getSDCard()Ljava/lang/String;
    .locals 1

    .line 50
    :try_start_0
    invoke-static {}, Lcom/reglink/common/StorageUtils;->getHardwareService()Lcom/reglink/services/IHardwareService;

    move-result-object v0

    invoke-interface {v0}, Lcom/reglink/services/IHardwareService;->getInternalSDCardPath()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 52
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public static getUsbStorage()Ljava/lang/String;
    .locals 1

    .line 30
    :try_start_0
    invoke-static {}, Lcom/reglink/common/StorageUtils;->getHardwareService()Lcom/reglink/services/IHardwareService;

    move-result-object v0

    invoke-interface {v0}, Lcom/reglink/services/IHardwareService;->getUsbStoragePath()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 32
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public static isExternalExist()Z
    .locals 1

    .line 66
    invoke-static {}, Lcom/reglink/common/StorageUtils;->getExternalSDCard()Ljava/lang/String;

    move-result-object v0

    .line 67
    invoke-static {v0}, Lcom/reglink/common/FilePath;->canWrite(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static isUsbStorageExist()Z
    .locals 1

    .line 58
    invoke-static {}, Lcom/reglink/common/StorageUtils;->getUsbStorage()Ljava/lang/String;

    move-result-object v0

    .line 59
    invoke-static {v0}, Lcom/reglink/common/FilePath;->canWrite(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static makeExternalSDFile(Ljava/lang/String;)Ljava/io/File;
    .locals 2

    .line 79
    invoke-static {}, Lcom/reglink/common/StorageUtils;->getExternalSDCard()Ljava/lang/String;

    move-result-object v0

    .line 80
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method public static makeUsbStorageFile(Ljava/lang/String;)Ljava/io/File;
    .locals 2

    .line 74
    invoke-static {}, Lcom/reglink/common/StorageUtils;->getUsbStorage()Ljava/lang/String;

    move-result-object v0

    .line 75
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method
