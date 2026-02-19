.class public Lcom/autoxing/delivery/download/lib/DownloadStatus;
.super Ljava/lang/Object;
.source "DownloadStatus.java"


# static fields
.field public static final FAILED:I = 0x2

.field public static final INIT:I = 0x0

.field public static final LOADING:I = 0x3

.field public static final SUCCESS:I = 0x1


# instance fields
.field private downSize:J

.field private status:I

.field private totalSize:J

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;J)V
    .locals 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 11
    iput v0, p0, Lcom/autoxing/delivery/download/lib/DownloadStatus;->status:I

    .line 14
    iput-object p1, p0, Lcom/autoxing/delivery/download/lib/DownloadStatus;->url:Ljava/lang/String;

    .line 15
    iput-wide p2, p0, Lcom/autoxing/delivery/download/lib/DownloadStatus;->downSize:J

    return-void
.end method


# virtual methods
.method public getDownSize()J
    .locals 2

    .line 35
    iget-wide v0, p0, Lcom/autoxing/delivery/download/lib/DownloadStatus;->downSize:J

    return-wide v0
.end method

.method public getStatus()I
    .locals 1

    .line 43
    iget v0, p0, Lcom/autoxing/delivery/download/lib/DownloadStatus;->status:I

    return v0
.end method

.method public getTotalSize()J
    .locals 2

    .line 27
    iget-wide v0, p0, Lcom/autoxing/delivery/download/lib/DownloadStatus;->totalSize:J

    return-wide v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/autoxing/delivery/download/lib/DownloadStatus;->url:Ljava/lang/String;

    return-object v0
.end method

.method public setDownSize(J)V
    .locals 0

    .line 39
    iput-wide p1, p0, Lcom/autoxing/delivery/download/lib/DownloadStatus;->downSize:J

    return-void
.end method

.method public setStatus(I)V
    .locals 0

    .line 47
    iput p1, p0, Lcom/autoxing/delivery/download/lib/DownloadStatus;->status:I

    return-void
.end method

.method public setTotalSize(J)V
    .locals 0

    .line 31
    iput-wide p1, p0, Lcom/autoxing/delivery/download/lib/DownloadStatus;->totalSize:J

    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0

    .line 23
    iput-object p1, p0, Lcom/autoxing/delivery/download/lib/DownloadStatus;->url:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DownloadStatus{url=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/autoxing/delivery/download/lib/DownloadStatus;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', totalSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/autoxing/delivery/download/lib/DownloadStatus;->totalSize:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", downSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/autoxing/delivery/download/lib/DownloadStatus;->downSize:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/autoxing/delivery/download/lib/DownloadStatus;->status:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
