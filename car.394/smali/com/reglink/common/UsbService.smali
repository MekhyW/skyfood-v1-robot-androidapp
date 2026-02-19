.class public Lcom/reglink/common/UsbService;
.super Ljava/lang/Object;
.source "UsbService.java"


# static fields
.field public static final USB_DEVICE:Ljava/lang/String; = "device"

.field public static final USB_HOST:Ljava/lang/String; = "host"

.field private static instance_:Lcom/reglink/common/UsbService;


# instance fields
.field hardwareService:Lcom/reglink/services/IHardwareService;


# direct methods
.method constructor <init>(Lcom/reglink/services/IHardwareService;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/reglink/common/UsbService;->hardwareService:Lcom/reglink/services/IHardwareService;

    return-void
.end method

.method public static getUsbService(Landroid/content/Context;)Lcom/reglink/common/UsbService;
    .locals 2

    .line 23
    sget-object p0, Lcom/reglink/common/UsbService;->instance_:Lcom/reglink/common/UsbService;

    if-eqz p0, :cond_0

    return-object p0

    .line 24
    :cond_0
    invoke-static {}, Lcom/reglink/common/ServiceManager;->getDroidService()Lcom/reglink/services/IDroidService;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_1

    return-object v0

    :cond_1
    :try_start_0
    const-string v1, "Hardware"

    .line 27
    invoke-interface {p0, v1}, Lcom/reglink/services/IDroidService;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p0

    invoke-static {p0}, Lcom/reglink/services/IHardwareService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/reglink/services/IHardwareService;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 29
    new-instance v1, Lcom/reglink/common/UsbService;

    invoke-direct {v1, p0}, Lcom/reglink/common/UsbService;-><init>(Lcom/reglink/services/IHardwareService;)V

    sput-object v1, Lcom/reglink/common/UsbService;->instance_:Lcom/reglink/common/UsbService;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception p0

    .line 33
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_2
    return-object v0
.end method


# virtual methods
.method public isDeviceMode()Z
    .locals 2

    :try_start_0
    const-string v0, "device"

    .line 65
    iget-object v1, p0, Lcom/reglink/common/UsbService;->hardwareService:Lcom/reglink/services/IHardwareService;

    invoke-interface {v1}, Lcom/reglink/services/IHardwareService;->getUsbMode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 67
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v0, 0x0

    return v0
.end method

.method public isHostMode()Z
    .locals 2

    :try_start_0
    const-string v0, "host"

    .line 56
    iget-object v1, p0, Lcom/reglink/common/UsbService;->hardwareService:Lcom/reglink/services/IHardwareService;

    invoke-interface {v1}, Lcom/reglink/services/IHardwareService;->getUsbMode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 58
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v0, 0x0

    return v0
.end method

.method public setDeviceMode()V
    .locals 2

    .line 48
    :try_start_0
    iget-object v0, p0, Lcom/reglink/common/UsbService;->hardwareService:Lcom/reglink/services/IHardwareService;

    const-string v1, "device"

    invoke-interface {v0, v1}, Lcom/reglink/services/IHardwareService;->setUsbMode(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 50
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public setHostMode()V
    .locals 2

    .line 40
    :try_start_0
    iget-object v0, p0, Lcom/reglink/common/UsbService;->hardwareService:Lcom/reglink/services/IHardwareService;

    const-string v1, "host"

    invoke-interface {v0, v1}, Lcom/reglink/services/IHardwareService;->setUsbMode(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 42
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method
