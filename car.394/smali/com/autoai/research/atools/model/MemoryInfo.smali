.class public Lcom/autoai/research/atools/model/MemoryInfo;
.super Ljava/lang/Object;
.source "MemoryInfo.java"


# instance fields
.field private buffers:J

.field private cache:J

.field private memoryAvailable:J

.field private memoryFree:J

.field private memoryTotal:J

.field private swapFree:J

.field private swapTotal:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBuffers()J
    .locals 2

    .line 132
    iget-wide v0, p0, Lcom/autoai/research/atools/model/MemoryInfo;->buffers:J

    return-wide v0
.end method

.method public getCache()J
    .locals 2

    .line 60
    iget-wide v0, p0, Lcom/autoai/research/atools/model/MemoryInfo;->cache:J

    return-wide v0
.end method

.method public getMemoryAvailable()J
    .locals 2

    .line 114
    iget-wide v0, p0, Lcom/autoai/research/atools/model/MemoryInfo;->memoryAvailable:J

    return-wide v0
.end method

.method public getMemoryFree()J
    .locals 2

    .line 42
    iget-wide v0, p0, Lcom/autoai/research/atools/model/MemoryInfo;->memoryFree:J

    return-wide v0
.end method

.method public getMemoryTotal()J
    .locals 2

    .line 24
    iget-wide v0, p0, Lcom/autoai/research/atools/model/MemoryInfo;->memoryTotal:J

    return-wide v0
.end method

.method public getSwapFree()J
    .locals 2

    .line 96
    iget-wide v0, p0, Lcom/autoai/research/atools/model/MemoryInfo;->swapFree:J

    return-wide v0
.end method

.method public getSwapTotal()J
    .locals 2

    .line 78
    iget-wide v0, p0, Lcom/autoai/research/atools/model/MemoryInfo;->swapTotal:J

    return-wide v0
.end method

.method public setBuffers(J)V
    .locals 0

    .line 141
    iput-wide p1, p0, Lcom/autoai/research/atools/model/MemoryInfo;->buffers:J

    return-void
.end method

.method public setCache(J)V
    .locals 0

    .line 69
    iput-wide p1, p0, Lcom/autoai/research/atools/model/MemoryInfo;->cache:J

    return-void
.end method

.method public setMemoryAvailable(J)V
    .locals 0

    .line 123
    iput-wide p1, p0, Lcom/autoai/research/atools/model/MemoryInfo;->memoryAvailable:J

    return-void
.end method

.method public setMemoryFree(J)V
    .locals 0

    .line 51
    iput-wide p1, p0, Lcom/autoai/research/atools/model/MemoryInfo;->memoryFree:J

    return-void
.end method

.method public setMemoryTotal(J)V
    .locals 0

    .line 33
    iput-wide p1, p0, Lcom/autoai/research/atools/model/MemoryInfo;->memoryTotal:J

    return-void
.end method

.method public setSwapFree(J)V
    .locals 0

    .line 105
    iput-wide p1, p0, Lcom/autoai/research/atools/model/MemoryInfo;->swapFree:J

    return-void
.end method

.method public setSwapTotal(J)V
    .locals 0

    .line 87
    iput-wide p1, p0, Lcom/autoai/research/atools/model/MemoryInfo;->swapTotal:J

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 146
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "MemoryInfo{memoryTotal="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/autoai/research/atools/model/MemoryInfo;->memoryTotal:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", memoryFree="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/autoai/research/atools/model/MemoryInfo;->memoryFree:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", cache="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/autoai/research/atools/model/MemoryInfo;->cache:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", swapTotal="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/autoai/research/atools/model/MemoryInfo;->swapTotal:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", swapFree="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/autoai/research/atools/model/MemoryInfo;->swapFree:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", memoryAvailable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/autoai/research/atools/model/MemoryInfo;->memoryAvailable:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", buffers="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/autoai/research/atools/model/MemoryInfo;->buffers:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
