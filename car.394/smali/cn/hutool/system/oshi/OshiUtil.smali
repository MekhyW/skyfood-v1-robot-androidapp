.class public Lcn/hutool/system/oshi/OshiUtil;
.super Ljava/lang/Object;
.source "OshiUtil.java"


# static fields
.field private static final hardware:Loshi/hardware/HardwareAbstractionLayer;

.field private static final os:Loshi/software/os/OperatingSystem;

.field private static final systemInfo:Loshi/SystemInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 42
    new-instance v0, Loshi/SystemInfo;

    invoke-direct {v0}, Loshi/SystemInfo;-><init>()V

    sput-object v0, Lcn/hutool/system/oshi/OshiUtil;->systemInfo:Loshi/SystemInfo;

    .line 43
    invoke-virtual {v0}, Loshi/SystemInfo;->getHardware()Loshi/hardware/HardwareAbstractionLayer;

    move-result-object v1

    sput-object v1, Lcn/hutool/system/oshi/OshiUtil;->hardware:Loshi/hardware/HardwareAbstractionLayer;

    .line 44
    invoke-virtual {v0}, Loshi/SystemInfo;->getOperatingSystem()Loshi/software/os/OperatingSystem;

    move-result-object v0

    sput-object v0, Lcn/hutool/system/oshi/OshiUtil;->os:Loshi/software/os/OperatingSystem;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCpuInfo()Lcn/hutool/system/oshi/CpuInfo;
    .locals 2

    const-wide/16 v0, 0x3e8

    .line 140
    invoke-static {v0, v1}, Lcn/hutool/system/oshi/OshiUtil;->getCpuInfo(J)Lcn/hutool/system/oshi/CpuInfo;

    move-result-object v0

    return-object v0
.end method

.method public static getCpuInfo(J)Lcn/hutool/system/oshi/CpuInfo;
    .locals 2

    .line 150
    new-instance v0, Lcn/hutool/system/oshi/CpuInfo;

    invoke-static {}, Lcn/hutool/system/oshi/OshiUtil;->getProcessor()Loshi/hardware/CentralProcessor;

    move-result-object v1

    invoke-direct {v0, v1, p0, p1}, Lcn/hutool/system/oshi/CpuInfo;-><init>(Loshi/hardware/CentralProcessor;J)V

    return-object v0
.end method

.method public static getCurrentProcess()Loshi/software/os/OSProcess;
    .locals 2

    .line 63
    sget-object v0, Lcn/hutool/system/oshi/OshiUtil;->os:Loshi/software/os/OperatingSystem;

    invoke-interface {v0}, Loshi/software/os/OperatingSystem;->getProcessId()I

    move-result v1

    invoke-interface {v0, v1}, Loshi/software/os/OperatingSystem;->getProcess(I)Loshi/software/os/OSProcess;

    move-result-object v0

    return-object v0
.end method

.method public static getDiskStores()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Loshi/hardware/HWDiskStore;",
            ">;"
        }
    .end annotation

    .line 118
    sget-object v0, Lcn/hutool/system/oshi/OshiUtil;->hardware:Loshi/hardware/HardwareAbstractionLayer;

    invoke-interface {v0}, Loshi/hardware/HardwareAbstractionLayer;->getDiskStores()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static getHardware()Loshi/hardware/HardwareAbstractionLayer;
    .locals 1

    .line 72
    sget-object v0, Lcn/hutool/system/oshi/OshiUtil;->hardware:Loshi/hardware/HardwareAbstractionLayer;

    return-object v0
.end method

.method public static getMemory()Loshi/hardware/GlobalMemory;
    .locals 1

    .line 90
    sget-object v0, Lcn/hutool/system/oshi/OshiUtil;->hardware:Loshi/hardware/HardwareAbstractionLayer;

    invoke-interface {v0}, Loshi/hardware/HardwareAbstractionLayer;->getMemory()Loshi/hardware/GlobalMemory;

    move-result-object v0

    return-object v0
.end method

.method public static getNetworkIFs()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Loshi/hardware/NetworkIF;",
            ">;"
        }
    .end annotation

    .line 128
    sget-object v0, Lcn/hutool/system/oshi/OshiUtil;->hardware:Loshi/hardware/HardwareAbstractionLayer;

    invoke-interface {v0}, Loshi/hardware/HardwareAbstractionLayer;->getNetworkIFs()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static getOs()Loshi/software/os/OperatingSystem;
    .locals 1

    .line 53
    sget-object v0, Lcn/hutool/system/oshi/OshiUtil;->os:Loshi/software/os/OperatingSystem;

    return-object v0
.end method

.method public static getProcessor()Loshi/hardware/CentralProcessor;
    .locals 1

    .line 99
    sget-object v0, Lcn/hutool/system/oshi/OshiUtil;->hardware:Loshi/hardware/HardwareAbstractionLayer;

    invoke-interface {v0}, Loshi/hardware/HardwareAbstractionLayer;->getProcessor()Loshi/hardware/CentralProcessor;

    move-result-object v0

    return-object v0
.end method

.method public static getSensors()Loshi/hardware/Sensors;
    .locals 1

    .line 108
    sget-object v0, Lcn/hutool/system/oshi/OshiUtil;->hardware:Loshi/hardware/HardwareAbstractionLayer;

    invoke-interface {v0}, Loshi/hardware/HardwareAbstractionLayer;->getSensors()Loshi/hardware/Sensors;

    move-result-object v0

    return-object v0
.end method

.method public static getSystem()Loshi/hardware/ComputerSystem;
    .locals 1

    .line 81
    sget-object v0, Lcn/hutool/system/oshi/OshiUtil;->hardware:Loshi/hardware/HardwareAbstractionLayer;

    invoke-interface {v0}, Loshi/hardware/HardwareAbstractionLayer;->getComputerSystem()Loshi/hardware/ComputerSystem;

    move-result-object v0

    return-object v0
.end method
