.class public Lcn/hutool/system/oshi/CpuTicks;
.super Ljava/lang/Object;
.source "CpuTicks.java"


# instance fields
.field cSys:J

.field idle:J

.field ioWait:J

.field irq:J

.field nice:J

.field softIrq:J

.field steal:J

.field user:J


# direct methods
.method public constructor <init>(Loshi/hardware/CentralProcessor;J)V
    .locals 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    invoke-interface {p1}, Loshi/hardware/CentralProcessor;->getSystemCpuLoadTicks()[J

    move-result-object v0

    .line 33
    invoke-static {p2, p3}, Loshi/util/Util;->sleep(J)V

    .line 34
    invoke-interface {p1}, Loshi/hardware/CentralProcessor;->getSystemCpuLoadTicks()[J

    move-result-object p1

    .line 36
    sget-object p2, Loshi/hardware/CentralProcessor$TickType;->IDLE:Loshi/hardware/CentralProcessor$TickType;

    invoke-static {v0, p1, p2}, Lcn/hutool/system/oshi/CpuTicks;->tick([J[JLoshi/hardware/CentralProcessor$TickType;)J

    move-result-wide p2

    iput-wide p2, p0, Lcn/hutool/system/oshi/CpuTicks;->idle:J

    .line 37
    sget-object p2, Loshi/hardware/CentralProcessor$TickType;->NICE:Loshi/hardware/CentralProcessor$TickType;

    invoke-static {v0, p1, p2}, Lcn/hutool/system/oshi/CpuTicks;->tick([J[JLoshi/hardware/CentralProcessor$TickType;)J

    move-result-wide p2

    iput-wide p2, p0, Lcn/hutool/system/oshi/CpuTicks;->nice:J

    .line 38
    sget-object p2, Loshi/hardware/CentralProcessor$TickType;->IRQ:Loshi/hardware/CentralProcessor$TickType;

    invoke-static {v0, p1, p2}, Lcn/hutool/system/oshi/CpuTicks;->tick([J[JLoshi/hardware/CentralProcessor$TickType;)J

    move-result-wide p2

    iput-wide p2, p0, Lcn/hutool/system/oshi/CpuTicks;->irq:J

    .line 39
    sget-object p2, Loshi/hardware/CentralProcessor$TickType;->SOFTIRQ:Loshi/hardware/CentralProcessor$TickType;

    invoke-static {v0, p1, p2}, Lcn/hutool/system/oshi/CpuTicks;->tick([J[JLoshi/hardware/CentralProcessor$TickType;)J

    move-result-wide p2

    iput-wide p2, p0, Lcn/hutool/system/oshi/CpuTicks;->softIrq:J

    .line 40
    sget-object p2, Loshi/hardware/CentralProcessor$TickType;->STEAL:Loshi/hardware/CentralProcessor$TickType;

    invoke-static {v0, p1, p2}, Lcn/hutool/system/oshi/CpuTicks;->tick([J[JLoshi/hardware/CentralProcessor$TickType;)J

    move-result-wide p2

    iput-wide p2, p0, Lcn/hutool/system/oshi/CpuTicks;->steal:J

    .line 41
    sget-object p2, Loshi/hardware/CentralProcessor$TickType;->SYSTEM:Loshi/hardware/CentralProcessor$TickType;

    invoke-static {v0, p1, p2}, Lcn/hutool/system/oshi/CpuTicks;->tick([J[JLoshi/hardware/CentralProcessor$TickType;)J

    move-result-wide p2

    iput-wide p2, p0, Lcn/hutool/system/oshi/CpuTicks;->cSys:J

    .line 42
    sget-object p2, Loshi/hardware/CentralProcessor$TickType;->USER:Loshi/hardware/CentralProcessor$TickType;

    invoke-static {v0, p1, p2}, Lcn/hutool/system/oshi/CpuTicks;->tick([J[JLoshi/hardware/CentralProcessor$TickType;)J

    move-result-wide p2

    iput-wide p2, p0, Lcn/hutool/system/oshi/CpuTicks;->user:J

    .line 43
    sget-object p2, Loshi/hardware/CentralProcessor$TickType;->IOWAIT:Loshi/hardware/CentralProcessor$TickType;

    invoke-static {v0, p1, p2}, Lcn/hutool/system/oshi/CpuTicks;->tick([J[JLoshi/hardware/CentralProcessor$TickType;)J

    move-result-wide p1

    iput-wide p1, p0, Lcn/hutool/system/oshi/CpuTicks;->ioWait:J

    return-void
.end method

.method private static tick([J[JLoshi/hardware/CentralProcessor$TickType;)J
    .locals 2

    .line 143
    invoke-virtual {p2}, Loshi/hardware/CentralProcessor$TickType;->getIndex()I

    move-result v0

    aget-wide v0, p1, v0

    invoke-virtual {p2}, Loshi/hardware/CentralProcessor$TickType;->getIndex()I

    move-result p1

    aget-wide p1, p0, p1

    sub-long/2addr v0, p1

    return-wide v0
.end method


# virtual methods
.method public getIdle()J
    .locals 2

    .line 47
    iget-wide v0, p0, Lcn/hutool/system/oshi/CpuTicks;->idle:J

    return-wide v0
.end method

.method public getIoWait()J
    .locals 2

    .line 103
    iget-wide v0, p0, Lcn/hutool/system/oshi/CpuTicks;->ioWait:J

    return-wide v0
.end method

.method public getIrq()J
    .locals 2

    .line 63
    iget-wide v0, p0, Lcn/hutool/system/oshi/CpuTicks;->irq:J

    return-wide v0
.end method

.method public getNice()J
    .locals 2

    .line 55
    iget-wide v0, p0, Lcn/hutool/system/oshi/CpuTicks;->nice:J

    return-wide v0
.end method

.method public getSoftIrq()J
    .locals 2

    .line 71
    iget-wide v0, p0, Lcn/hutool/system/oshi/CpuTicks;->softIrq:J

    return-wide v0
.end method

.method public getSteal()J
    .locals 2

    .line 79
    iget-wide v0, p0, Lcn/hutool/system/oshi/CpuTicks;->steal:J

    return-wide v0
.end method

.method public getUser()J
    .locals 2

    .line 95
    iget-wide v0, p0, Lcn/hutool/system/oshi/CpuTicks;->user:J

    return-wide v0
.end method

.method public getcSys()J
    .locals 2

    .line 87
    iget-wide v0, p0, Lcn/hutool/system/oshi/CpuTicks;->cSys:J

    return-wide v0
.end method

.method public setIdle(J)V
    .locals 0

    .line 51
    iput-wide p1, p0, Lcn/hutool/system/oshi/CpuTicks;->idle:J

    return-void
.end method

.method public setIoWait(J)V
    .locals 0

    .line 107
    iput-wide p1, p0, Lcn/hutool/system/oshi/CpuTicks;->ioWait:J

    return-void
.end method

.method public setIrq(J)V
    .locals 0

    .line 67
    iput-wide p1, p0, Lcn/hutool/system/oshi/CpuTicks;->irq:J

    return-void
.end method

.method public setNice(J)V
    .locals 0

    .line 59
    iput-wide p1, p0, Lcn/hutool/system/oshi/CpuTicks;->nice:J

    return-void
.end method

.method public setSoftIrq(J)V
    .locals 0

    .line 75
    iput-wide p1, p0, Lcn/hutool/system/oshi/CpuTicks;->softIrq:J

    return-void
.end method

.method public setSteal(J)V
    .locals 0

    .line 83
    iput-wide p1, p0, Lcn/hutool/system/oshi/CpuTicks;->steal:J

    return-void
.end method

.method public setUser(J)V
    .locals 0

    .line 99
    iput-wide p1, p0, Lcn/hutool/system/oshi/CpuTicks;->user:J

    return-void
.end method

.method public setcSys(J)V
    .locals 0

    .line 91
    iput-wide p1, p0, Lcn/hutool/system/oshi/CpuTicks;->cSys:J

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 121
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CpuTicks{idle="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lcn/hutool/system/oshi/CpuTicks;->idle:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", nice="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcn/hutool/system/oshi/CpuTicks;->nice:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", irq="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcn/hutool/system/oshi/CpuTicks;->irq:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", softIrq="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcn/hutool/system/oshi/CpuTicks;->softIrq:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", steal="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcn/hutool/system/oshi/CpuTicks;->steal:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", cSys="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcn/hutool/system/oshi/CpuTicks;->cSys:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", user="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcn/hutool/system/oshi/CpuTicks;->user:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", ioWait="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcn/hutool/system/oshi/CpuTicks;->ioWait:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public totalCpu()J
    .locals 4

    .line 116
    iget-wide v0, p0, Lcn/hutool/system/oshi/CpuTicks;->user:J

    iget-wide v2, p0, Lcn/hutool/system/oshi/CpuTicks;->nice:J

    add-long/2addr v0, v2

    iget-wide v2, p0, Lcn/hutool/system/oshi/CpuTicks;->cSys:J

    add-long/2addr v0, v2

    iget-wide v2, p0, Lcn/hutool/system/oshi/CpuTicks;->idle:J

    add-long/2addr v0, v2

    iget-wide v2, p0, Lcn/hutool/system/oshi/CpuTicks;->ioWait:J

    add-long/2addr v0, v2

    iget-wide v2, p0, Lcn/hutool/system/oshi/CpuTicks;->irq:J

    add-long/2addr v0, v2

    iget-wide v2, p0, Lcn/hutool/system/oshi/CpuTicks;->softIrq:J

    add-long/2addr v0, v2

    iget-wide v2, p0, Lcn/hutool/system/oshi/CpuTicks;->steal:J

    add-long/2addr v0, v2

    const-wide/16 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    return-wide v0
.end method
