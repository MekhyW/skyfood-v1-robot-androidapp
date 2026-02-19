.class public Lcom/reglink/mcu/MCUProtocol;
.super Ljava/lang/Object;
.source "MCUProtocol.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/reglink/mcu/MCUProtocol$BootType;
    }
.end annotation


# static fields
.field public static final ACC_CanTurnOff:I = 0x1

.field public static final ACC_KeepWork:I = 0x0

.field public static final ACC_State:I = 0x0

.field public static final ACC_State_Resp:I = 0x1

.field public static final AUDIO_MUTE:B = 0x1t

.field public static final BOOT_ACC:I = 0x0

.field public static final BOOT_CAN:I = 0x1

.field public static final BOOT_DOOR:I = 0x2

.field public static final CMD_ACC:B = 0x47t

.field public static final CMD_AD:B = 0x46t

.field public static final CMD_AUDIO:B = 0x42t

.field public static final CMD_CANBUS_BAUDRATE:B = 0x25t

.field public static final CMD_DISPLAY:B = 0x43t

.field public static final CMD_GPIO:B = 0x4bt

.field public static final CMD_LIN:B = 0xet

.field public static final CMD_MCU_CAN_HANDLE:B = 0x3t

.field public static final CMD_PERIPHERAL:B = 0x4at

.field public static final CMD_PULL_CAN:B = 0x4t

.field public static final CMD_QUERY_CAN_FILTER:B = 0x24t

.field public static final CMD_SET_CAN_FILTER:B = 0x23t

.field public static final CMD_SET_MCU_COM_BAUDRATE:B = 0x8t

.field public static final CMD_SYSTEM:B = 0x18t

.field public static final CMD_VEHICLE_STATE:B = 0x44t

.field public static final FALSE:B = 0x0t

.field public static final FIVE:B = 0x5t

.field public static final FOUR:B = 0x4t

.field public static final GPIO_pin0:B = 0x0t

.field public static final GPIO_pin1:B = 0x1t

.field public static final GPIO_pin10:B = 0xat

.field public static final GPIO_pin11:B = 0xbt

.field public static final GPIO_pin12:B = 0xct

.field public static final GPIO_pin13:B = 0xdt

.field public static final GPIO_pin14:B = 0xet

.field public static final GPIO_pin15:B = 0xft

.field public static final GPIO_pin2:B = 0x2t

.field public static final GPIO_pin3:B = 0x3t

.field public static final GPIO_pin4:B = 0x4t

.field public static final GPIO_pin5:B = 0x5t

.field public static final GPIO_pin6:B = 0x6t

.field public static final GPIO_pin7:B = 0x7t

.field public static final GPIO_pin8:B = 0x8t

.field public static final GPIO_pin9:B = 0x9t

.field public static final GPIO_portA:B = 0x0t

.field public static final GPIO_portB:B = 0x1t

.field public static final GPIO_portC:B = 0x2t

.field public static final GPIO_portD:B = 0x3t

.field public static final GPIO_portE:B = 0x4t

.field public static final GPIO_portF:B = 0x5t

.field public static final GPIO_portG:B = 0x6t

.field public static final GPIO_portH:B = 0x7t

.field public static final MCU_COM1:B = 0x1t

.field public static final MCU_COM1_RECV:B = 0x9t

.field public static final MCU_COM2:B = 0x2t

.field public static final MCU_COM2_RECV:B = 0xat

.field public static final MCU_COM3:B = 0x3t

.field public static final MCU_COM3_RECV:B = 0xbt

.field public static final MCU_COM4:B = 0x4t

.field public static final MCU_COM4_RECV:B = 0xct

.field public static final MCU_COM5:B = 0x5t

.field public static final MCU_COM5_RECV:B = 0xdt

.field public static final NO:B = 0x0t

.field public static final OFF:B = 0x0t

.field public static final ON:B = 0x1t

.field public static final ONE:B = 0x1t

.field public static final PERIPHERAL_AUX:I = 0x1

.field public static final PERIPHERAL_BACK_CAMERA:I = 0x1000

.field public static final PERIPHERAL_BLUETOOTH:I = 0x2

.field public static final PERIPHERAL_BUZZER:I = 0x2000

.field public static final PERIPHERAL_DTV:I = 0x800

.field public static final PERIPHERAL_FRONT_CAMERA:I = 0x4000

.field public static final PERIPHERAL_GPRS:I = 0x200

.field public static final PERIPHERAL_GPS:I = 0x100

.field public static final PERIPHERAL_RADAR:I = 0x4

.field public static final PERIPHERAL_RECORDER:I = 0x8000

.field public static final PERIPHERAL_TPMS:I = 0x400

.field public static final THREE:B = 0x3t

.field public static final TRUE:B = 0x1t

.field public static final TWO:B = 0x2t

.field public static final VEHICLE_STATE_BRAKE:I = 0x400

.field public static final VEHICLE_STATE_LAMP:I = 0x200

.field public static final VEHICLE_STATE_REVERSE:I = 0x100

.field public static final YES:B = 0x1t

.field public static final ZERO:B


# instance fields
.field protected communicationService:Lcom/reglink/services/ICommunicationService;


# direct methods
.method public constructor <init>(Lcom/reglink/services/ICommunicationService;)V
    .locals 0

    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 138
    iput-object p1, p0, Lcom/reglink/mcu/MCUProtocol;->communicationService:Lcom/reglink/services/ICommunicationService;

    return-void
.end method

.method public static getLINChecksum([I)I
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    .line 499
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_1

    .line 501
    aget v2, p0, v0

    add-int/2addr v1, v2

    const/16 v2, 0x100

    if-lt v1, v2, :cond_0

    add-int/lit16 v1, v1, -0xff

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    not-int p0, v1

    return p0
.end method

.method private static getLINPid(B)B
    .locals 9

    and-int/lit8 v0, p0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    and-int/lit8 v3, p0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    move v3, v2

    goto :goto_1

    :cond_1
    move v3, v1

    :goto_1
    and-int/lit8 v4, p0, 0x4

    const/4 v5, 0x4

    if-ne v4, v5, :cond_2

    move v4, v2

    goto :goto_2

    :cond_2
    move v4, v1

    :goto_2
    and-int/lit8 v5, p0, 0x8

    const/16 v6, 0x8

    if-ne v5, v6, :cond_3

    move v5, v2

    goto :goto_3

    :cond_3
    move v5, v1

    :goto_3
    and-int/lit8 v6, p0, 0x10

    const/16 v7, 0x10

    if-ne v6, v7, :cond_4

    move v6, v2

    goto :goto_4

    :cond_4
    move v6, v1

    :goto_4
    and-int/lit8 v7, p0, 0x20

    const/16 v8, 0x20

    if-ne v7, v8, :cond_5

    move v1, v2

    :cond_5
    xor-int/2addr v0, v3

    xor-int/2addr v0, v4

    xor-int/2addr v0, v6

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    xor-int v2, v3, v5

    xor-int/2addr v2, v6

    xor-int/2addr v1, v2

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    and-int/lit8 p0, p0, 0x3f

    int-to-byte p0, p0

    if-eqz v0, :cond_6

    or-int/lit8 p0, p0, 0x40

    int-to-byte p0, p0

    :cond_6
    if-nez v1, :cond_7

    or-int/lit16 p0, p0, 0x80

    int-to-byte p0, p0

    :cond_7
    return p0
.end method

.method private log(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 145
    invoke-virtual {p2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/reglink/common/LogUtil;->LOGE(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public AccdoNothing()V
    .locals 4

    .line 355
    :try_start_0
    iget-object v0, p0, Lcom/reglink/mcu/MCUProtocol;->communicationService:Lcom/reglink/services/ICommunicationService;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v3, 0x47

    invoke-interface {v0, v3, v1, v2}, Lcom/reglink/services/ICommunicationService;->write3(BBB)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "ACC State Resp"

    .line 357
    invoke-direct {p0, v1, v0}, Lcom/reglink/mcu/MCUProtocol;->log(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public audioCloseAMP()V
    .locals 1

    const/4 v0, 0x1

    .line 154
    invoke-virtual {p0, v0}, Lcom/reglink/mcu/MCUProtocol;->audioMuteAMP(Z)V

    return-void
.end method

.method public audioMuteAMP(Z)V
    .locals 3

    const/16 v0, 0x42

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    .line 161
    :try_start_0
    iget-object p1, p0, Lcom/reglink/mcu/MCUProtocol;->communicationService:Lcom/reglink/services/ICommunicationService;

    invoke-interface {p1, v0, v1, v1}, Lcom/reglink/services/ICommunicationService;->write3(BBB)V

    goto :goto_0

    .line 163
    :cond_0
    iget-object p1, p0, Lcom/reglink/mcu/MCUProtocol;->communicationService:Lcom/reglink/services/ICommunicationService;

    const/4 v2, 0x0

    invoke-interface {p1, v0, v1, v2}, Lcom/reglink/services/ICommunicationService;->write3(BBB)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "audioMuteAMP"

    .line 166
    invoke-direct {p0, v0, p1}, Lcom/reglink/mcu/MCUProtocol;->log(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public audioOpenAMP()V
    .locals 1

    const/4 v0, 0x0

    .line 150
    invoke-virtual {p0, v0}, Lcom/reglink/mcu/MCUProtocol;->audioMuteAMP(Z)V

    return-void
.end method

.method public backlight(Z)V
    .locals 2

    const/16 v0, 0xd

    const/4 v1, 0x4

    if-eqz p1, :cond_0

    .line 621
    invoke-virtual {p0, v1, v0}, Lcom/reglink/mcu/MCUProtocol;->lowGPIO(BB)V

    goto :goto_0

    .line 623
    :cond_0
    invoke-virtual {p0, v1, v0}, Lcom/reglink/mcu/MCUProtocol;->highGPIO(BB)V

    :goto_0
    return-void
.end method

.method public enableLINListen(Z)V
    .locals 4

    const/4 v0, 0x3

    new-array v0, v0, [B

    const/16 v1, 0xe

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    const/4 v1, 0x1

    const/4 v3, -0x1

    aput-byte v3, v0, v1

    if-eqz p1, :cond_0

    const/16 v2, 0xff

    :cond_0
    int-to-byte p1, v2

    const/4 v1, 0x2

    aput-byte p1, v0, v1

    .line 555
    :try_start_0
    iget-object p1, p0, Lcom/reglink/mcu/MCUProtocol;->communicationService:Lcom/reglink/services/ICommunicationService;

    invoke-interface {p1, v0}, Lcom/reglink/services/ICommunicationService;->write([B)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "enableLINListen"

    .line 557
    invoke-direct {p0, v0, p1}, Lcom/reglink/mcu/MCUProtocol;->log(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public feedDog()V
    .locals 4

    .line 307
    :try_start_0
    iget-object v0, p0, Lcom/reglink/mcu/MCUProtocol;->communicationService:Lcom/reglink/services/ICommunicationService;

    const/4 v1, 0x1

    const/16 v2, 0x55

    const/16 v3, -0x11

    invoke-interface {v0, v3, v1, v2}, Lcom/reglink/services/ICommunicationService;->write3(BBB)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "feedDog"

    .line 309
    invoke-direct {p0, v1, v0}, Lcom/reglink/mcu/MCUProtocol;->log(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public highGPIO(BB)V
    .locals 1

    const/4 v0, 0x1

    .line 594
    invoke-virtual {p0, p1, p2, v0}, Lcom/reglink/mcu/MCUProtocol;->setGPIO(BBZ)V

    return-void
.end method

.method public lowGPIO(BB)V
    .locals 1

    const/4 v0, 0x0

    .line 590
    invoke-virtual {p0, p1, p2, v0}, Lcom/reglink/mcu/MCUProtocol;->setGPIO(BBZ)V

    return-void
.end method

.method public mcuProgramStart(Z)V
    .locals 3

    const-string v0, ""

    const-string v1, "mcuProgramStart"

    .line 386
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x6

    new-array v0, v0, [B

    .line 387
    fill-array-data v0, :array_0

    if-eqz p1, :cond_0

    const/4 p1, 0x4

    const/4 v2, 0x1

    aput-byte v2, v0, p1

    .line 392
    :cond_0
    :try_start_0
    iget-object p1, p0, Lcom/reglink/mcu/MCUProtocol;->communicationService:Lcom/reglink/services/ICommunicationService;

    invoke-interface {p1, v0}, Lcom/reglink/services/ICommunicationService;->write([B)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 394
    invoke-direct {p0, v1, p1}, Lcom/reglink/mcu/MCUProtocol;->log(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void

    :array_0
    .array-data 1
        -0x12t
        0x3t
        0x55t
        -0x56t
        0x0t
        -0x1t
    .end array-data
.end method

.method public mcuT132Control(BZ)V
    .locals 2

    if-eqz p2, :cond_0

    const/16 p2, 0x28

    int-to-byte p2, p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    or-int/2addr p1, p2

    int-to-byte p1, p1

    .line 648
    :try_start_0
    iget-object p2, p0, Lcom/reglink/mcu/MCUProtocol;->communicationService:Lcom/reglink/services/ICommunicationService;

    const/16 v0, 0x43

    const/4 v1, 0x1

    invoke-interface {p2, v0, v1, p1}, Lcom/reglink/services/ICommunicationService;->write3(BBB)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    const-string p2, "mcuT132Control"

    .line 650
    invoke-direct {p0, p2, p1}, Lcom/reglink/mcu/MCUProtocol;->log(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method

.method public varargs pullCANData([I)V
    .locals 7

    const/4 v0, 0x6

    new-array v0, v0, [B

    const/4 v1, 0x4

    const/4 v2, 0x0

    :try_start_0
    aput-byte v1, v0, v2

    const/4 v1, 0x1

    aput-byte v2, v0, v1

    .line 447
    array-length v1, p1

    :goto_0
    if-ge v2, v1, :cond_0

    aget v3, p1, v2

    const/4 v4, 0x2

    int-to-long v5, v3

    .line 448
    invoke-static {v0, v4, v5, v6}, Lcom/reglink/common/BinaryUtil;->writeUIntBE([BIJ)V

    .line 449
    iget-object v3, p0, Lcom/reglink/mcu/MCUProtocol;->communicationService:Lcom/reglink/services/ICommunicationService;

    invoke-interface {v3, v0}, Lcom/reglink/services/ICommunicationService;->write([B)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "pullCANData"

    .line 452
    invoke-direct {p0, v0, p1}, Lcom/reglink/mcu/MCUProtocol;->log(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public queryBootType()V
    .locals 3

    .line 420
    :try_start_0
    iget-object v0, p0, Lcom/reglink/mcu/MCUProtocol;->communicationService:Lcom/reglink/services/ICommunicationService;

    const/16 v1, 0x18

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2, v2}, Lcom/reglink/services/ICommunicationService;->write3(BBB)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "queryBootType"

    .line 422
    invoke-direct {p0, v1, v0}, Lcom/reglink/mcu/MCUProtocol;->log(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public queryCANBusFilterTable()V
    .locals 3

    .line 201
    :try_start_0
    iget-object v0, p0, Lcom/reglink/mcu/MCUProtocol;->communicationService:Lcom/reglink/services/ICommunicationService;

    const/16 v1, 0x24

    const/4 v2, -0x1

    invoke-interface {v0, v1, v2}, Lcom/reglink/services/ICommunicationService;->write2(BB)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "queryCANBusFilterTable"

    .line 203
    invoke-direct {p0, v1, v0}, Lcom/reglink/mcu/MCUProtocol;->log(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public queryGPIO()V
    .locals 3

    .line 613
    :try_start_0
    iget-object v0, p0, Lcom/reglink/mcu/MCUProtocol;->communicationService:Lcom/reglink/services/ICommunicationService;

    const/16 v1, 0x4b

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2, v2}, Lcom/reglink/services/ICommunicationService;->write3(BBB)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "queryGPIO"

    .line 615
    invoke-direct {p0, v1, v0}, Lcom/reglink/mcu/MCUProtocol;->log(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public queryMCUId()V
    .locals 4

    .line 371
    :try_start_0
    iget-object v0, p0, Lcom/reglink/mcu/MCUProtocol;->communicationService:Lcom/reglink/services/ICommunicationService;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v3, -0x12

    invoke-interface {v0, v3, v1, v2}, Lcom/reglink/services/ICommunicationService;->write3(BBB)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "queryMCUId"

    .line 373
    invoke-direct {p0, v1, v0}, Lcom/reglink/mcu/MCUProtocol;->log(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public queryMCUInfo()V
    .locals 4

    .line 379
    :try_start_0
    iget-object v0, p0, Lcom/reglink/mcu/MCUProtocol;->communicationService:Lcom/reglink/services/ICommunicationService;

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/16 v3, -0x12

    invoke-interface {v0, v3, v1, v2}, Lcom/reglink/services/ICommunicationService;->write3(BBB)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "queryMCUInfo"

    .line 381
    invoke-direct {p0, v1, v0}, Lcom/reglink/mcu/MCUProtocol;->log(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public queryMCUSW_Version()V
    .locals 3

    .line 363
    :try_start_0
    iget-object v0, p0, Lcom/reglink/mcu/MCUProtocol;->communicationService:Lcom/reglink/services/ICommunicationService;

    const/16 v1, -0x12

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2, v2}, Lcom/reglink/services/ICommunicationService;->write3(BBB)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "queryMCUSW_Version"

    .line 365
    invoke-direct {p0, v1, v0}, Lcom/reglink/mcu/MCUProtocol;->log(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public queryMcuCANHandler()V
    .locals 3

    .line 179
    :try_start_0
    iget-object v0, p0, Lcom/reglink/mcu/MCUProtocol;->communicationService:Lcom/reglink/services/ICommunicationService;

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2, v2}, Lcom/reglink/services/ICommunicationService;->write3(BBB)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "queryMcuCANHandler"

    .line 181
    invoke-direct {p0, v1, v0}, Lcom/reglink/mcu/MCUProtocol;->log(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public queryPeripheralState()V
    .locals 3

    .line 209
    :try_start_0
    iget-object v0, p0, Lcom/reglink/mcu/MCUProtocol;->communicationService:Lcom/reglink/services/ICommunicationService;

    const/16 v1, 0x4a

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2, v2}, Lcom/reglink/services/ICommunicationService;->write3(BBB)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "queryPeripheralState"

    .line 211
    invoke-direct {p0, v1, v0}, Lcom/reglink/mcu/MCUProtocol;->log(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public queryVolt()V
    .locals 3

    .line 428
    :try_start_0
    iget-object v0, p0, Lcom/reglink/mcu/MCUProtocol;->communicationService:Lcom/reglink/services/ICommunicationService;

    const/16 v1, 0x46

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2, v2}, Lcom/reglink/services/ICommunicationService;->write3(BBB)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "queryVolt"

    .line 430
    invoke-direct {p0, v1, v0}, Lcom/reglink/mcu/MCUProtocol;->log(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public readMCUFlash()V
    .locals 1

    const/16 v0, 0x100

    .line 574
    invoke-virtual {p0, v0}, Lcom/reglink/mcu/MCUProtocol;->readMCUFlash(I)V

    return-void
.end method

.method public readMCUFlash(I)V
    .locals 3

    const/4 v0, 0x4

    :try_start_0
    new-array v0, v0, [B

    const/4 v1, 0x0

    const/16 v2, -0x11

    aput-byte v2, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x5

    aput-byte v2, v0, v1

    const/4 v1, 0x2

    .line 567
    invoke-static {v0, v1, p1}, Lcom/reglink/common/BinaryUtil;->writeUShortBE([BII)V

    .line 568
    iget-object p1, p0, Lcom/reglink/mcu/MCUProtocol;->communicationService:Lcom/reglink/services/ICommunicationService;

    invoke-interface {p1, v0}, Lcom/reglink/services/ICommunicationService;->write([B)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "readMCUFlash"

    .line 570
    invoke-direct {p0, v0, p1}, Lcom/reglink/mcu/MCUProtocol;->log(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public replyMcuPowerOffNotify(Z)V
    .locals 3

    .line 299
    :try_start_0
    iget-object v0, p0, Lcom/reglink/mcu/MCUProtocol;->communicationService:Lcom/reglink/services/ICommunicationService;

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    move p1, v1

    :goto_0
    const/16 v2, 0x47

    invoke-interface {v0, v2, v1, p1}, Lcom/reglink/services/ICommunicationService;->write3(BBB)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    const-string v0, "replyMcuPowerOffNotify"

    .line 301
    invoke-direct {p0, v0, p1}, Lcom/reglink/mcu/MCUProtocol;->log(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method

.method public resetMcu()V
    .locals 4

    .line 328
    :try_start_0
    iget-object v0, p0, Lcom/reglink/mcu/MCUProtocol;->communicationService:Lcom/reglink/services/ICommunicationService;

    const/4 v1, 0x3

    const/16 v2, -0x56

    const/16 v3, -0x11

    invoke-interface {v0, v3, v1, v2}, Lcom/reglink/services/ICommunicationService;->write3(BBB)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "resetMcu"

    .line 330
    invoke-direct {p0, v1, v0}, Lcom/reglink/mcu/MCUProtocol;->log(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public varargs sendLIN(B[I)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 542
    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/reglink/mcu/MCUProtocol;->sendLINEx(BZZ[I)V

    return-void
.end method

.method public varargs sendLINEx(BZZ[I)V
    .locals 5

    .line 512
    array-length v0, p4

    const/4 v1, 0x3

    const/4 v2, 0x1

    if-lez v0, :cond_0

    array-length v0, p4

    add-int/2addr v0, v1

    add-int/2addr v0, v2

    new-array v0, v0, [B

    goto :goto_0

    :cond_0
    new-array v0, v1, [B

    :goto_0
    const/4 v3, 0x0

    const/16 v4, 0xe

    .line 515
    aput-byte v4, v0, v3

    const/4 v3, 0x2

    if-eqz p2, :cond_1

    move p2, v2

    goto :goto_1

    :cond_1
    move p2, v3

    :goto_1
    int-to-byte p2, p2

    .line 516
    aput-byte p2, v0, v2

    .line 517
    invoke-static {p1}, Lcom/reglink/mcu/MCUProtocol;->getLINPid(B)B

    move-result p1

    aput-byte p1, v0, v3

    .line 519
    array-length p1, p4

    if-lez p1, :cond_5

    move p1, v1

    .line 520
    :goto_2
    array-length p2, p4

    add-int/2addr p2, v1

    if-ge p1, p2, :cond_2

    add-int/lit8 p2, p1, -0x3

    .line 521
    aget p2, p4, p2

    int-to-byte p2, p2

    aput-byte p2, v0, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    .line 523
    :cond_2
    invoke-static {p4}, Lcom/reglink/mcu/MCUProtocol;->getLINChecksum([I)I

    move-result p1

    if-eqz p3, :cond_4

    .line 525
    aget-byte p2, v0, v3

    add-int/2addr p1, p2

    const/16 p2, 0x100

    if-lt p1, p2, :cond_3

    add-int/lit16 p1, p1, -0xff

    .line 529
    :cond_3
    array-length p2, v0

    sub-int/2addr p2, v2

    int-to-byte p1, p1

    aput-byte p1, v0, p2

    goto :goto_3

    .line 531
    :cond_4
    array-length p2, v0

    sub-int/2addr p2, v2

    int-to-byte p1, p1

    aput-byte p1, v0, p2

    .line 535
    :cond_5
    :goto_3
    :try_start_0
    iget-object p1, p0, Lcom/reglink/mcu/MCUProtocol;->communicationService:Lcom/reglink/services/ICommunicationService;

    invoke-interface {p1, v0}, Lcom/reglink/services/ICommunicationService;->write([B)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception p1

    const-string p2, "stopLIN"

    .line 537
    invoke-direct {p0, p2, p1}, Lcom/reglink/mcu/MCUProtocol;->log(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_4
    return-void
.end method

.method public varargs sendLINTimed(B[I)V
    .locals 1

    const/4 v0, 0x0

    .line 546
    invoke-virtual {p0, p1, v0, v0, p2}, Lcom/reglink/mcu/MCUProtocol;->sendLINEx(BZZ[I)V

    return-void
.end method

.method public sendMCUData(B[B)V
    .locals 1

    .line 264
    array-length v0, p2

    invoke-virtual {p0, p1, p2, v0}, Lcom/reglink/mcu/MCUProtocol;->sendMCUData(B[BI)V

    return-void
.end method

.method public sendMCUData(B[BI)V
    .locals 4

    add-int/lit8 v0, p3, 0x1

    .line 267
    new-array v0, v0, [B

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq p1, v2, :cond_4

    const/4 v3, 0x2

    if-eq p1, v3, :cond_3

    const/4 v3, 0x3

    if-eq p1, v3, :cond_2

    const/4 v3, 0x4

    if-eq p1, v3, :cond_1

    const/4 v3, 0x5

    if-eq p1, v3, :cond_0

    return-void

    :cond_0
    const/16 p1, 0xd

    .line 282
    aput-byte p1, v0, v1

    goto :goto_0

    :cond_1
    const/16 p1, 0xc

    .line 279
    aput-byte p1, v0, v1

    goto :goto_0

    :cond_2
    const/16 p1, 0xb

    .line 276
    aput-byte p1, v0, v1

    goto :goto_0

    :cond_3
    const/16 p1, 0xa

    .line 273
    aput-byte p1, v0, v1

    goto :goto_0

    :cond_4
    const/16 p1, 0x9

    .line 270
    aput-byte p1, v0, v1

    .line 287
    :goto_0
    invoke-static {p2, v1, v0, v2, p3}, Lcom/reglink/common/ByteArrayHelper;->bytesCopy([BI[BII)V

    .line 289
    :try_start_0
    iget-object p1, p0, Lcom/reglink/mcu/MCUProtocol;->communicationService:Lcom/reglink/services/ICommunicationService;

    invoke-interface {p1, v0}, Lcom/reglink/services/ICommunicationService;->write([B)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 291
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public setBootType(Lcom/reglink/mcu/MCUProtocol$BootType;B)V
    .locals 3

    .line 400
    sget-object v0, Lcom/reglink/mcu/MCUProtocol$1;->$SwitchMap$com$reglink$mcu$MCUProtocol$BootType:[I

    invoke-virtual {p1}, Lcom/reglink/mcu/MCUProtocol$BootType;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    const/4 v2, 0x3

    if-eq p1, v2, :cond_2

    :cond_0
    move v1, v0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 412
    :cond_2
    :goto_0
    :try_start_0
    iget-object p1, p0, Lcom/reglink/mcu/MCUProtocol;->communicationService:Lcom/reglink/services/ICommunicationService;

    const/16 v2, 0x18

    invoke-interface {p1, v2, v0, v1, p2}, Lcom/reglink/services/ICommunicationService;->write4(BBBB)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    const-string p2, "setBoot"

    .line 414
    invoke-direct {p0, p2, p1}, Lcom/reglink/mcu/MCUProtocol;->log(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method

.method public setButtonBrightness(B)V
    .locals 3

    .line 436
    :try_start_0
    iget-object v0, p0, Lcom/reglink/mcu/MCUProtocol;->communicationService:Lcom/reglink/services/ICommunicationService;

    const/16 v1, 0x18

    const/4 v2, 0x3

    invoke-interface {v0, v1, v2, p1}, Lcom/reglink/services/ICommunicationService;->write3(BBB)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "setButtonBrightness"

    .line 438
    invoke-direct {p0, v0, p1}, Lcom/reglink/mcu/MCUProtocol;->log(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public setBuzzerTime(II)V
    .locals 3

    const/4 v0, 0x6

    new-array v0, v0, [B

    const/4 v1, 0x0

    const/16 v2, 0x4a

    aput-byte v2, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x3

    aput-byte v2, v0, v1

    const/4 v1, 0x2

    .line 631
    invoke-static {v0, v1, p1}, Lcom/reglink/common/BinaryUtil;->writeUShortBE([BII)V

    const/4 p1, 0x4

    .line 632
    invoke-static {v0, p1, p2}, Lcom/reglink/common/BinaryUtil;->writeUShortBE([BII)V

    .line 635
    :try_start_0
    iget-object p1, p0, Lcom/reglink/mcu/MCUProtocol;->communicationService:Lcom/reglink/services/ICommunicationService;

    invoke-interface {p1, v0}, Lcom/reglink/services/ICommunicationService;->write([B)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "setBuzzerTime"

    .line 637
    invoke-direct {p0, p2, p1}, Lcom/reglink/mcu/MCUProtocol;->log(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public setCANBusBaudrate(ZIZI)V
    .locals 3

    const/4 v0, 0x7

    :try_start_0
    new-array v0, v0, [B

    const/16 v1, 0x25

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    move p1, v1

    goto :goto_0

    :cond_0
    move p1, v2

    :goto_0
    aput-byte p1, v0, v1

    const/4 p1, 0x2

    .line 190
    invoke-static {v0, p1, p2}, Lcom/reglink/common/BinaryUtil;->writeUShortBE([BII)V

    if-eqz p3, :cond_1

    move v2, v1

    :cond_1
    const/4 p1, 0x4

    aput-byte v2, v0, p1

    const/4 p1, 0x5

    .line 192
    invoke-static {v0, p1, p4}, Lcom/reglink/common/BinaryUtil;->writeUShortBE([BII)V

    .line 193
    iget-object p1, p0, Lcom/reglink/mcu/MCUProtocol;->communicationService:Lcom/reglink/services/ICommunicationService;

    invoke-interface {p1, v0}, Lcom/reglink/services/ICommunicationService;->write([B)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    const-string p2, "setCANBusBaudrate"

    .line 195
    invoke-direct {p0, p2, p1}, Lcom/reglink/mcu/MCUProtocol;->log(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method

.method public setCommunicationService(Lcom/reglink/services/ICommunicationService;)V
    .locals 0

    .line 141
    iput-object p1, p0, Lcom/reglink/mcu/MCUProtocol;->communicationService:Lcom/reglink/services/ICommunicationService;

    return-void
.end method

.method public setGPIO(BBZ)V
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [B

    const/4 v1, 0x0

    const/16 v2, 0x4b

    aput-byte v2, v0, v1

    const/4 v1, 0x1

    aput-byte v1, v0, v1

    const/4 v1, 0x2

    aput-byte p1, v0, v1

    const/4 p1, 0x3

    aput-byte p2, v0, p1

    int-to-byte p1, p3

    const/4 p2, 0x4

    aput-byte p1, v0, p2

    .line 605
    :try_start_0
    iget-object p1, p0, Lcom/reglink/mcu/MCUProtocol;->communicationService:Lcom/reglink/services/ICommunicationService;

    invoke-interface {p1, v0}, Lcom/reglink/services/ICommunicationService;->write([B)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "setGPIO"

    .line 607
    invoke-direct {p0, p2, p1}, Lcom/reglink/mcu/MCUProtocol;->log(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public setMcuCANHandler(BB)V
    .locals 3

    .line 172
    :try_start_0
    iget-object v0, p0, Lcom/reglink/mcu/MCUProtocol;->communicationService:Lcom/reglink/services/ICommunicationService;

    const/4 v1, 0x3

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2, p1, p2}, Lcom/reglink/services/ICommunicationService;->write4(BBBB)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "setMcuCANHandler"

    .line 174
    invoke-direct {p0, p2, p1}, Lcom/reglink/mcu/MCUProtocol;->log(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public setMcuCOMBaudrate(BZI)V
    .locals 4

    const/16 v0, 0x8

    :try_start_0
    new-array v1, v0, [B

    const/4 v2, 0x0

    aput-byte v0, v1, v2

    const/4 v0, 0x1

    aput-byte v0, v1, v0

    sub-int/2addr p1, v0

    int-to-byte p1, p1

    const/4 v3, 0x2

    aput-byte p1, v1, v3

    if-eqz p2, :cond_0

    move v2, v0

    :cond_0
    const/4 p1, 0x3

    aput-byte v2, v1, p1

    const/4 p1, 0x4

    int-to-long p2, p3

    .line 248
    invoke-static {v1, p1, p2, p3}, Lcom/reglink/common/BinaryUtil;->writeUIntBE([BIJ)V

    .line 249
    iget-object p1, p0, Lcom/reglink/mcu/MCUProtocol;->communicationService:Lcom/reglink/services/ICommunicationService;

    invoke-interface {p1, v1}, Lcom/reglink/services/ICommunicationService;->write([B)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "setMcuCOMBaudrate"

    .line 251
    invoke-direct {p0, p2, p1}, Lcom/reglink/mcu/MCUProtocol;->log(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public setMcuCOMTimeout(BZ)V
    .locals 3

    .line 257
    :try_start_0
    iget-object v0, p0, Lcom/reglink/mcu/MCUProtocol;->communicationService:Lcom/reglink/services/ICommunicationService;

    if-eqz p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    const/4 p2, 0x1

    :goto_0
    const/16 v1, 0x8

    const/4 v2, 0x2

    invoke-interface {v0, v1, v2, p1, p2}, Lcom/reglink/services/ICommunicationService;->write4(BBBB)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    const-string p2, "setMcuCOMTimeout"

    .line 259
    invoke-direct {p0, p2, p1}, Lcom/reglink/mcu/MCUProtocol;->log(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method

.method public setWatchDog(I)V
    .locals 3

    const/4 v0, 0x2

    const/16 v1, -0x11

    if-eqz p1, :cond_0

    .line 316
    :try_start_0
    div-int/lit8 p1, p1, 0x64

    int-to-byte p1, p1

    .line 317
    iget-object v2, p0, Lcom/reglink/mcu/MCUProtocol;->communicationService:Lcom/reglink/services/ICommunicationService;

    invoke-interface {v2, v1, v0, p1}, Lcom/reglink/services/ICommunicationService;->write3(BBB)V

    goto :goto_0

    .line 319
    :cond_0
    iget-object p1, p0, Lcom/reglink/mcu/MCUProtocol;->communicationService:Lcom/reglink/services/ICommunicationService;

    const/4 v2, 0x0

    invoke-interface {p1, v1, v0, v2}, Lcom/reglink/services/ICommunicationService;->write3(BBB)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "setWatchDog"

    .line 322
    invoke-direct {p0, v0, p1}, Lcom/reglink/mcu/MCUProtocol;->log(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public stopLIN(B)V
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [B

    const/16 v1, 0xe

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    const/4 v1, 0x1

    aput-byte v2, v0, v1

    const/4 v1, 0x2

    .line 490
    invoke-static {p1}, Lcom/reglink/mcu/MCUProtocol;->getLINPid(B)B

    move-result p1

    aput-byte p1, v0, v1

    .line 492
    :try_start_0
    iget-object p1, p0, Lcom/reglink/mcu/MCUProtocol;->communicationService:Lcom/reglink/services/ICommunicationService;

    invoke-interface {p1, v0}, Lcom/reglink/services/ICommunicationService;->write([B)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "stopLIN"

    .line 494
    invoke-direct {p0, v0, p1}, Lcom/reglink/mcu/MCUProtocol;->log(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public turnOff()V
    .locals 4

    .line 347
    :try_start_0
    iget-object v0, p0, Lcom/reglink/mcu/MCUProtocol;->communicationService:Lcom/reglink/services/ICommunicationService;

    const/4 v1, 0x1

    const/16 v2, 0x40

    const/16 v3, 0x47

    invoke-interface {v0, v3, v1, v2}, Lcom/reglink/services/ICommunicationService;->write3(BBB)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "ACC State Resp"

    .line 349
    invoke-direct {p0, v1, v0}, Lcom/reglink/mcu/MCUProtocol;->log(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public turnOffAfter(I)V
    .locals 3

    if-gez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 v0, 0x3f

    if-le p1, v0, :cond_1

    move p1, v0

    .line 339
    :cond_1
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/reglink/mcu/MCUProtocol;->communicationService:Lcom/reglink/services/ICommunicationService;

    const/4 v1, 0x1

    int-to-byte p1, p1

    const/16 v2, 0x47

    invoke-interface {v0, v2, v1, p1}, Lcom/reglink/services/ICommunicationService;->write3(BBB)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    const-string v0, "ACC State Resp"

    .line 341
    invoke-direct {p0, v0, p1}, Lcom/reglink/mcu/MCUProtocol;->log(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method

.method public turnOffPeripheral(I)V
    .locals 3

    const/4 v0, 0x4

    :try_start_0
    new-array v0, v0, [B

    const/4 v1, 0x0

    const/16 v2, 0x4a

    aput-byte v2, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x2

    aput-byte v2, v0, v1

    .line 233
    invoke-static {v0, v2, p1}, Lcom/reglink/common/BinaryUtil;->writeUShortBE([BII)V

    .line 234
    iget-object p1, p0, Lcom/reglink/mcu/MCUProtocol;->communicationService:Lcom/reglink/services/ICommunicationService;

    invoke-interface {p1, v0}, Lcom/reglink/services/ICommunicationService;->write([B)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "turnOffPeripheral"

    .line 236
    invoke-direct {p0, v0, p1}, Lcom/reglink/mcu/MCUProtocol;->log(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public turnOnPeripheral(I)V
    .locals 3

    const/4 v0, 0x4

    :try_start_0
    new-array v0, v0, [B

    const/4 v1, 0x0

    const/16 v2, 0x4a

    aput-byte v2, v0, v1

    const/4 v1, 0x1

    aput-byte v1, v0, v1

    const/4 v1, 0x2

    .line 220
    invoke-static {v0, v1, p1}, Lcom/reglink/common/BinaryUtil;->writeUShortBE([BII)V

    .line 221
    iget-object p1, p0, Lcom/reglink/mcu/MCUProtocol;->communicationService:Lcom/reglink/services/ICommunicationService;

    invoke-interface {p1, v0}, Lcom/reglink/services/ICommunicationService;->write([B)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "turnOnPeripheral"

    .line 223
    invoke-direct {p0, v0, p1}, Lcom/reglink/mcu/MCUProtocol;->log(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public writeMCUFlash([BII)V
    .locals 3

    add-int/lit8 v0, p3, 0x2

    .line 578
    new-array v0, v0, [B

    const/4 v1, 0x0

    const/16 v2, -0x11

    .line 579
    aput-byte v2, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x4

    .line 580
    aput-byte v2, v0, v1

    const/4 v1, 0x2

    .line 581
    invoke-static {p1, p2, v0, v1, p3}, Lcom/reglink/common/ByteArrayHelper;->bytesCopy([BI[BII)V

    .line 583
    :try_start_0
    iget-object p1, p0, Lcom/reglink/mcu/MCUProtocol;->communicationService:Lcom/reglink/services/ICommunicationService;

    invoke-interface {p1, v0}, Lcom/reglink/services/ICommunicationService;->write([B)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "writeMCUFlash"

    .line 585
    invoke-direct {p0, p2, p1}, Lcom/reglink/mcu/MCUProtocol;->log(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
