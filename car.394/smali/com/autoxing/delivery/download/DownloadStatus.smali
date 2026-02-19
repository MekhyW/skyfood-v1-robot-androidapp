.class public Lcom/autoxing/delivery/download/DownloadStatus;
.super Ljava/lang/Object;
.source "DownloadStatus.java"


# static fields
.field public static final STATUS_COMPLETE:I = 0x4

.field public static final STATUS_DELETE:I = 0x5

.field public static final STATUS_FAILED:I = -0x1

.field public static final STATUS_LOADING:I = 0x3

.field public static final STATUS_START:I = 0x1

.field public static final STATUS_STOP:I = 0x2


# instance fields
.field private fileSize:J

.field private index:I

.field private speed:J

.field private status:I

.field private totalSize:J


# direct methods
.method public constructor <init>(IJJJ)V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput p1, p0, Lcom/autoxing/delivery/download/DownloadStatus;->status:I

    .line 19
    iput-wide p2, p0, Lcom/autoxing/delivery/download/DownloadStatus;->speed:J

    .line 20
    iput-wide p4, p0, Lcom/autoxing/delivery/download/DownloadStatus;->fileSize:J

    .line 21
    iput-wide p6, p0, Lcom/autoxing/delivery/download/DownloadStatus;->totalSize:J

    return-void
.end method


# virtual methods
.method public getDescStatus()Ljava/lang/String;
    .locals 2

    .line 37
    iget v0, p0, Lcom/autoxing/delivery/download/DownloadStatus;->status:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_5

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    const-string v0, "\u672a\u77e5"

    return-object v0

    :cond_0
    const-string v0, "\u5df2\u5220\u9664"

    return-object v0

    :cond_1
    const-string v0, "\u5b8c\u6210"

    return-object v0

    :cond_2
    const-string v0, "\u4e0b\u8f7d\u4e2d"

    return-object v0

    :cond_3
    const-string v0, "\u505c\u6b62"

    return-object v0

    :cond_4
    const-string v0, "\u5f00\u59cb"

    return-object v0

    :cond_5
    const-string v0, "\u5931\u8d25"

    return-object v0
.end method

.method public getFileSize()J
    .locals 2

    .line 67
    iget-wide v0, p0, Lcom/autoxing/delivery/download/DownloadStatus;->fileSize:J

    return-wide v0
.end method

.method public getIndex()I
    .locals 1

    .line 25
    iget v0, p0, Lcom/autoxing/delivery/download/DownloadStatus;->index:I

    return v0
.end method

.method public getSpeed()J
    .locals 2

    .line 59
    iget-wide v0, p0, Lcom/autoxing/delivery/download/DownloadStatus;->speed:J

    return-wide v0
.end method

.method public getStatus()I
    .locals 1

    .line 33
    iget v0, p0, Lcom/autoxing/delivery/download/DownloadStatus;->status:I

    return v0
.end method

.method public getTotalSize()J
    .locals 2

    .line 75
    iget-wide v0, p0, Lcom/autoxing/delivery/download/DownloadStatus;->totalSize:J

    return-wide v0
.end method

.method public setFileSize(J)V
    .locals 0

    .line 71
    iput-wide p1, p0, Lcom/autoxing/delivery/download/DownloadStatus;->fileSize:J

    return-void
.end method

.method public setIndex(I)V
    .locals 0

    .line 29
    iput p1, p0, Lcom/autoxing/delivery/download/DownloadStatus;->index:I

    return-void
.end method

.method public setSpeed(J)V
    .locals 0

    .line 63
    iput-wide p1, p0, Lcom/autoxing/delivery/download/DownloadStatus;->speed:J

    return-void
.end method

.method public setStatus(I)V
    .locals 0

    .line 55
    iput p1, p0, Lcom/autoxing/delivery/download/DownloadStatus;->status:I

    return-void
.end method

.method public setTotalSize(J)V
    .locals 0

    .line 79
    iput-wide p1, p0, Lcom/autoxing/delivery/download/DownloadStatus;->totalSize:J

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 84
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DownloadStatus{status="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/autoxing/delivery/download/DownloadStatus;->status:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", speed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/autoxing/delivery/download/DownloadStatus;->speed:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", fileSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/autoxing/delivery/download/DownloadStatus;->fileSize:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", totalSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/autoxing/delivery/download/DownloadStatus;->totalSize:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", index="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/autoxing/delivery/download/DownloadStatus;->index:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
