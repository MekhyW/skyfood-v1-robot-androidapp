.class public Lcom/autoxing/delivery/download/DownloadObj;
.super Ljava/lang/Object;
.source "DownloadObj.java"


# instance fields
.field private downUrl:Ljava/lang/String;

.field private fileSize:J

.field private flieName:Ljava/lang/String;

.field private resName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;J)V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/autoxing/delivery/download/DownloadObj;->downUrl:Ljava/lang/String;

    .line 13
    iput-wide p2, p0, Lcom/autoxing/delivery/download/DownloadObj;->fileSize:J

    .line 14
    invoke-static {p1}, Lcom/autoai/research/jtools/security/MD5Utils;->get32MD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/autoxing/delivery/download/DownloadObj;->flieName:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JLjava/lang/String;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/autoxing/delivery/download/DownloadObj;->downUrl:Ljava/lang/String;

    .line 19
    iput-wide p2, p0, Lcom/autoxing/delivery/download/DownloadObj;->fileSize:J

    .line 20
    invoke-static {p1}, Lcom/autoai/research/jtools/security/MD5Utils;->get32MD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/autoxing/delivery/download/DownloadObj;->flieName:Ljava/lang/String;

    .line 21
    iput-object p4, p0, Lcom/autoxing/delivery/download/DownloadObj;->resName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getDownUrl()Ljava/lang/String;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/autoxing/delivery/download/DownloadObj;->downUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getFileSize()J
    .locals 2

    .line 29
    iget-wide v0, p0, Lcom/autoxing/delivery/download/DownloadObj;->fileSize:J

    return-wide v0
.end method

.method public getFlieName()Ljava/lang/String;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/autoxing/delivery/download/DownloadObj;->flieName:Ljava/lang/String;

    return-object v0
.end method

.method public getResName()Ljava/lang/String;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/autoxing/delivery/download/DownloadObj;->resName:Ljava/lang/String;

    return-object v0
.end method

.method public setResName(Ljava/lang/String;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/autoxing/delivery/download/DownloadObj;->resName:Ljava/lang/String;

    return-void
.end method
