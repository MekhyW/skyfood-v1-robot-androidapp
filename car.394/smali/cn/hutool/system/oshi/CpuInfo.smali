.class public Lcn/hutool/system/oshi/CpuInfo;
.super Ljava/lang/Object;
.source "CpuInfo.java"


# static fields
.field private static final LOAD_FORMAT:Ljava/text/DecimalFormat;


# instance fields
.field private cpuModel:Ljava/lang/String;

.field private cpuNum:Ljava/lang/Integer;

.field private free:D

.field private sys:D

.field private ticks:Lcn/hutool/system/oshi/CpuTicks;

.field private toTal:D

.field private user:D

.field private wait:D


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 15
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "#.00"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcn/hutool/system/oshi/CpuInfo;->LOAD_FORMAT:Ljava/text/DecimalFormat;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Integer;DDDDDLjava/lang/String;)V
    .locals 0

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    iput-object p1, p0, Lcn/hutool/system/oshi/CpuInfo;->cpuNum:Ljava/lang/Integer;

    .line 86
    iput-wide p2, p0, Lcn/hutool/system/oshi/CpuInfo;->toTal:D

    .line 87
    iput-wide p4, p0, Lcn/hutool/system/oshi/CpuInfo;->sys:D

    .line 88
    iput-wide p6, p0, Lcn/hutool/system/oshi/CpuInfo;->user:D

    .line 89
    iput-wide p8, p0, Lcn/hutool/system/oshi/CpuInfo;->wait:D

    .line 90
    iput-wide p10, p0, Lcn/hutool/system/oshi/CpuInfo;->free:D

    .line 91
    iput-object p12, p0, Lcn/hutool/system/oshi/CpuInfo;->cpuModel:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Loshi/hardware/CentralProcessor;J)V
    .locals 0

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    invoke-direct {p0, p1, p2, p3}, Lcn/hutool/system/oshi/CpuInfo;->init(Loshi/hardware/CentralProcessor;J)V

    return-void
.end method

.method private static formatDouble(JJ)D
    .locals 5

    const-wide/16 v0, 0x0

    cmp-long v2, v0, p2

    const-wide/16 v3, 0x0

    if-nez v2, :cond_0

    return-wide v3

    .line 215
    :cond_0
    sget-object v2, Lcn/hutool/system/oshi/CpuInfo;->LOAD_FORMAT:Ljava/text/DecimalFormat;

    cmp-long v0, p0, v0

    if-gtz v0, :cond_1

    goto :goto_0

    :cond_1
    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    long-to-double p0, p0

    mul-double/2addr p0, v0

    long-to-double p2, p2

    div-double v3, p0, p2

    :goto_0
    invoke-virtual {v2, v3, v4}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide p0

    return-wide p0
.end method

.method private init(Loshi/hardware/CentralProcessor;J)V
    .locals 3

    .line 189
    new-instance v0, Lcn/hutool/system/oshi/CpuTicks;

    invoke-direct {v0, p1, p2, p3}, Lcn/hutool/system/oshi/CpuTicks;-><init>(Loshi/hardware/CentralProcessor;J)V

    .line 190
    iput-object v0, p0, Lcn/hutool/system/oshi/CpuInfo;->ticks:Lcn/hutool/system/oshi/CpuTicks;

    .line 192
    invoke-interface {p1}, Loshi/hardware/CentralProcessor;->getLogicalProcessorCount()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    iput-object p2, p0, Lcn/hutool/system/oshi/CpuInfo;->cpuNum:Ljava/lang/Integer;

    .line 193
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcn/hutool/system/oshi/CpuInfo;->cpuModel:Ljava/lang/String;

    .line 195
    invoke-virtual {v0}, Lcn/hutool/system/oshi/CpuTicks;->totalCpu()J

    move-result-wide p1

    long-to-double v1, p1

    .line 196
    iput-wide v1, p0, Lcn/hutool/system/oshi/CpuInfo;->toTal:D

    .line 197
    iget-wide v1, v0, Lcn/hutool/system/oshi/CpuTicks;->cSys:J

    invoke-static {v1, v2, p1, p2}, Lcn/hutool/system/oshi/CpuInfo;->formatDouble(JJ)D

    move-result-wide v1

    iput-wide v1, p0, Lcn/hutool/system/oshi/CpuInfo;->sys:D

    .line 198
    iget-wide v1, v0, Lcn/hutool/system/oshi/CpuTicks;->user:J

    invoke-static {v1, v2, p1, p2}, Lcn/hutool/system/oshi/CpuInfo;->formatDouble(JJ)D

    move-result-wide v1

    iput-wide v1, p0, Lcn/hutool/system/oshi/CpuInfo;->user:D

    .line 199
    iget-wide v1, v0, Lcn/hutool/system/oshi/CpuTicks;->ioWait:J

    invoke-static {v1, v2, p1, p2}, Lcn/hutool/system/oshi/CpuInfo;->formatDouble(JJ)D

    move-result-wide v1

    iput-wide v1, p0, Lcn/hutool/system/oshi/CpuInfo;->wait:D

    .line 200
    iget-wide v0, v0, Lcn/hutool/system/oshi/CpuTicks;->idle:J

    invoke-static {v0, v1, p1, p2}, Lcn/hutool/system/oshi/CpuInfo;->formatDouble(JJ)D

    move-result-wide p1

    iput-wide p1, p0, Lcn/hutool/system/oshi/CpuInfo;->free:D

    return-void
.end method


# virtual methods
.method public getCpuModel()Ljava/lang/String;
    .locals 1

    .line 143
    iget-object v0, p0, Lcn/hutool/system/oshi/CpuInfo;->cpuModel:Ljava/lang/String;

    return-object v0
.end method

.method public getCpuNum()Ljava/lang/Integer;
    .locals 1

    .line 95
    iget-object v0, p0, Lcn/hutool/system/oshi/CpuInfo;->cpuNum:Ljava/lang/Integer;

    return-object v0
.end method

.method public getFree()D
    .locals 2

    .line 135
    iget-wide v0, p0, Lcn/hutool/system/oshi/CpuInfo;->free:D

    return-wide v0
.end method

.method public getSys()D
    .locals 2

    .line 111
    iget-wide v0, p0, Lcn/hutool/system/oshi/CpuInfo;->sys:D

    return-wide v0
.end method

.method public getTicks()Lcn/hutool/system/oshi/CpuTicks;
    .locals 1

    .line 151
    iget-object v0, p0, Lcn/hutool/system/oshi/CpuInfo;->ticks:Lcn/hutool/system/oshi/CpuTicks;

    return-object v0
.end method

.method public getToTal()D
    .locals 2

    .line 103
    iget-wide v0, p0, Lcn/hutool/system/oshi/CpuInfo;->toTal:D

    return-wide v0
.end method

.method public getUsed()D
    .locals 3

    const/high16 v0, 0x42c80000    # 100.0f

    .line 164
    iget-wide v1, p0, Lcn/hutool/system/oshi/CpuInfo;->free:D

    invoke-static {v0, v1, v2}, Lcn/hutool/core/util/NumberUtil;->sub(FD)D

    move-result-wide v0

    return-wide v0
.end method

.method public getUser()D
    .locals 2

    .line 119
    iget-wide v0, p0, Lcn/hutool/system/oshi/CpuInfo;->user:D

    return-wide v0
.end method

.method public getWait()D
    .locals 2

    .line 127
    iget-wide v0, p0, Lcn/hutool/system/oshi/CpuInfo;->wait:D

    return-wide v0
.end method

.method public setCpuModel(Ljava/lang/String;)V
    .locals 0

    .line 147
    iput-object p1, p0, Lcn/hutool/system/oshi/CpuInfo;->cpuModel:Ljava/lang/String;

    return-void
.end method

.method public setCpuNum(Ljava/lang/Integer;)V
    .locals 0

    .line 99
    iput-object p1, p0, Lcn/hutool/system/oshi/CpuInfo;->cpuNum:Ljava/lang/Integer;

    return-void
.end method

.method public setFree(D)V
    .locals 0

    .line 139
    iput-wide p1, p0, Lcn/hutool/system/oshi/CpuInfo;->free:D

    return-void
.end method

.method public setSys(D)V
    .locals 0

    .line 115
    iput-wide p1, p0, Lcn/hutool/system/oshi/CpuInfo;->sys:D

    return-void
.end method

.method public setTicks(Lcn/hutool/system/oshi/CpuTicks;)V
    .locals 0

    .line 155
    iput-object p1, p0, Lcn/hutool/system/oshi/CpuInfo;->ticks:Lcn/hutool/system/oshi/CpuTicks;

    return-void
.end method

.method public setToTal(D)V
    .locals 0

    .line 107
    iput-wide p1, p0, Lcn/hutool/system/oshi/CpuInfo;->toTal:D

    return-void
.end method

.method public setUser(D)V
    .locals 0

    .line 123
    iput-wide p1, p0, Lcn/hutool/system/oshi/CpuInfo;->user:D

    return-void
.end method

.method public setWait(D)V
    .locals 0

    .line 131
    iput-wide p1, p0, Lcn/hutool/system/oshi/CpuInfo;->wait:D

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 169
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CpuInfo{CPU\u6838\u5fc3\u6570="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcn/hutool/system/oshi/CpuInfo;->cpuNum:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", CPU\u603b\u7684\u4f7f\u7528\u7387="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcn/hutool/system/oshi/CpuInfo;->toTal:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", CPU\u7cfb\u7edf\u4f7f\u7528\u7387="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcn/hutool/system/oshi/CpuInfo;->sys:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", CPU\u7528\u6237\u4f7f\u7528\u7387="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcn/hutool/system/oshi/CpuInfo;->user:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", CPU\u5f53\u524d\u7b49\u5f85\u7387="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcn/hutool/system/oshi/CpuInfo;->wait:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", CPU\u5f53\u524d\u7a7a\u95f2\u7387="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcn/hutool/system/oshi/CpuInfo;->free:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", CPU\u5229\u7528\u7387="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 176
    invoke-virtual {p0}, Lcn/hutool/system/oshi/CpuInfo;->getUsed()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", CPU\u578b\u53f7\u4fe1\u606f=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/hutool/system/oshi/CpuInfo;->cpuModel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
