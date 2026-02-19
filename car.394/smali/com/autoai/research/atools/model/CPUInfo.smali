.class public Lcom/autoai/research/atools/model/CPUInfo;
.super Ljava/lang/Object;
.source "CPUInfo.java"


# instance fields
.field private cpuArch:Ljava/lang/String;

.field private cpuCoreInfoRevision:Ljava/lang/String;

.field private cpuFeatures:Ljava/lang/String;

.field private cpuModel:Ljava/lang/String;

.field private cpuName:Ljava/lang/String;

.field private cpuPart:Ljava/lang/String;

.field private cpuRevision:Ljava/lang/String;

.field private cpuSerial:Ljava/lang/String;

.field private cpuVariant:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCpuArch()Ljava/lang/String;
    .locals 1

    .line 133
    iget-object v0, p0, Lcom/autoai/research/atools/model/CPUInfo;->cpuArch:Ljava/lang/String;

    return-object v0
.end method

.method public getCpuCoreInfoRevision()Ljava/lang/String;
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/autoai/research/atools/model/CPUInfo;->cpuCoreInfoRevision:Ljava/lang/String;

    return-object v0
.end method

.method public getCpuFeatures()Ljava/lang/String;
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/autoai/research/atools/model/CPUInfo;->cpuFeatures:Ljava/lang/String;

    return-object v0
.end method

.method public getCpuModel()Ljava/lang/String;
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/autoai/research/atools/model/CPUInfo;->cpuModel:Ljava/lang/String;

    return-object v0
.end method

.method public getCpuName()Ljava/lang/String;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/autoai/research/atools/model/CPUInfo;->cpuName:Ljava/lang/String;

    return-object v0
.end method

.method public getCpuPart()Ljava/lang/String;
    .locals 1

    .line 168
    iget-object v0, p0, Lcom/autoai/research/atools/model/CPUInfo;->cpuPart:Ljava/lang/String;

    return-object v0
.end method

.method public getCpuRevision()Ljava/lang/String;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/autoai/research/atools/model/CPUInfo;->cpuRevision:Ljava/lang/String;

    return-object v0
.end method

.method public getCpuSerial()Ljava/lang/String;
    .locals 1

    .line 116
    iget-object v0, p0, Lcom/autoai/research/atools/model/CPUInfo;->cpuSerial:Ljava/lang/String;

    return-object v0
.end method

.method public getCpuVariant()Ljava/lang/String;
    .locals 1

    .line 151
    iget-object v0, p0, Lcom/autoai/research/atools/model/CPUInfo;->cpuVariant:Ljava/lang/String;

    return-object v0
.end method

.method public setCpuArch(Ljava/lang/String;)V
    .locals 0

    .line 142
    iput-object p1, p0, Lcom/autoai/research/atools/model/CPUInfo;->cpuArch:Ljava/lang/String;

    return-void
.end method

.method public setCpuCoreInfoRevision(Ljava/lang/String;)V
    .locals 0

    .line 71
    iput-object p1, p0, Lcom/autoai/research/atools/model/CPUInfo;->cpuCoreInfoRevision:Ljava/lang/String;

    return-void
.end method

.method public setCpuFeatures(Ljava/lang/String;)V
    .locals 0

    .line 107
    iput-object p1, p0, Lcom/autoai/research/atools/model/CPUInfo;->cpuFeatures:Ljava/lang/String;

    return-void
.end method

.method public setCpuModel(Ljava/lang/String;)V
    .locals 0

    .line 89
    iput-object p1, p0, Lcom/autoai/research/atools/model/CPUInfo;->cpuModel:Ljava/lang/String;

    return-void
.end method

.method public setCpuName(Ljava/lang/String;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/autoai/research/atools/model/CPUInfo;->cpuName:Ljava/lang/String;

    return-void
.end method

.method public setCpuPart(Ljava/lang/String;)V
    .locals 0

    .line 177
    iput-object p1, p0, Lcom/autoai/research/atools/model/CPUInfo;->cpuPart:Ljava/lang/String;

    return-void
.end method

.method public setCpuRevision(Ljava/lang/String;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/autoai/research/atools/model/CPUInfo;->cpuRevision:Ljava/lang/String;

    return-void
.end method

.method public setCpuSerial(Ljava/lang/String;)V
    .locals 0

    .line 124
    iput-object p1, p0, Lcom/autoai/research/atools/model/CPUInfo;->cpuSerial:Ljava/lang/String;

    return-void
.end method

.method public setCpuVariant(Ljava/lang/String;)V
    .locals 0

    .line 159
    iput-object p1, p0, Lcom/autoai/research/atools/model/CPUInfo;->cpuVariant:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 182
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CPUInfo{cpuName=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/autoai/research/atools/model/CPUInfo;->cpuName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', cpuRevision=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/autoai/research/atools/model/CPUInfo;->cpuRevision:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', cpuCoreInfoRevision=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/autoai/research/atools/model/CPUInfo;->cpuCoreInfoRevision:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', cpuModel=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/autoai/research/atools/model/CPUInfo;->cpuModel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', cpuFeatures=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/autoai/research/atools/model/CPUInfo;->cpuFeatures:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', cpuSerial=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/autoai/research/atools/model/CPUInfo;->cpuSerial:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', cpuArch=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/autoai/research/atools/model/CPUInfo;->cpuArch:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', cpuVariant=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/autoai/research/atools/model/CPUInfo;->cpuVariant:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', cpuPart=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/autoai/research/atools/model/CPUInfo;->cpuPart:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
