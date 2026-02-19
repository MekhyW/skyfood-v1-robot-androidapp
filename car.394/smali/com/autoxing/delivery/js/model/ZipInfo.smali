.class public Lcom/autoxing/delivery/js/model/ZipInfo;
.super Ljava/lang/Object;
.source "ZipInfo.java"


# static fields
.field public static final DOWN_STATUS_LOADED:I = 0x2

.field public static final STATUS_INIT:I = 0x0

.field public static final STATUS_LOADING:I = 0x1


# instance fields
.field private configJson:Lcom/alibaba/fastjson/JSONObject;

.field private count:I

.field private downStatus:J

.field private fileList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private fileName:Ljava/lang/String;

.field private fileSize:J

.field private isInApp:Z

.field private isValid:Z

.field private name:Ljava/lang/String;

.field private path:Ljava/lang/String;

.field private time:Ljava/lang/String;

.field private type:Ljava/lang/String;

.field private updateTime:J

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/autoxing/delivery/js/model/ZipInfo;->configJson:Lcom/alibaba/fastjson/JSONObject;

    const/4 v0, 0x1

    .line 24
    iput-boolean v0, p0, Lcom/autoxing/delivery/js/model/ZipInfo;->isValid:Z

    const/4 v0, 0x0

    .line 25
    iput-boolean v0, p0, Lcom/autoxing/delivery/js/model/ZipInfo;->isInApp:Z

    return-void
.end method


# virtual methods
.method public getConfigJson()Lcom/alibaba/fastjson/JSONObject;
    .locals 1

    .line 122
    iget-object v0, p0, Lcom/autoxing/delivery/js/model/ZipInfo;->configJson:Lcom/alibaba/fastjson/JSONObject;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .line 106
    iget v0, p0, Lcom/autoxing/delivery/js/model/ZipInfo;->count:I

    return v0
.end method

.method public getDownStatus()J
    .locals 2

    .line 57
    iget-wide v0, p0, Lcom/autoxing/delivery/js/model/ZipInfo;->downStatus:J

    return-wide v0
.end method

.method public getFileList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 65
    iget-object v0, p0, Lcom/autoxing/delivery/js/model/ZipInfo;->fileList:Ljava/util/List;

    return-object v0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/autoxing/delivery/js/model/ZipInfo;->fileName:Ljava/lang/String;

    return-object v0
.end method

.method public getFileSize()J
    .locals 2

    .line 82
    iget-wide v0, p0, Lcom/autoxing/delivery/js/model/ZipInfo;->fileSize:J

    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/autoxing/delivery/js/model/ZipInfo;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .line 114
    iget-object v0, p0, Lcom/autoxing/delivery/js/model/ZipInfo;->path:Ljava/lang/String;

    return-object v0
.end method

.method public getTime()Ljava/lang/String;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/autoxing/delivery/js/model/ZipInfo;->time:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/autoxing/delivery/js/model/ZipInfo;->type:Ljava/lang/String;

    return-object v0
.end method

.method public getUpdateTime()J
    .locals 2

    .line 47
    iget-wide v0, p0, Lcom/autoxing/delivery/js/model/ZipInfo;->updateTime:J

    return-wide v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/autoxing/delivery/js/model/ZipInfo;->url:Ljava/lang/String;

    return-object v0
.end method

.method public isInApp()Z
    .locals 1

    .line 138
    iget-boolean v0, p0, Lcom/autoxing/delivery/js/model/ZipInfo;->isInApp:Z

    return v0
.end method

.method public isValid()Z
    .locals 1

    .line 130
    iget-boolean v0, p0, Lcom/autoxing/delivery/js/model/ZipInfo;->isValid:Z

    return v0
.end method

.method public setConfigJson(Lcom/alibaba/fastjson/JSONObject;)V
    .locals 0

    .line 126
    iput-object p1, p0, Lcom/autoxing/delivery/js/model/ZipInfo;->configJson:Lcom/alibaba/fastjson/JSONObject;

    return-void
.end method

.method public setCount(I)V
    .locals 0

    .line 110
    iput p1, p0, Lcom/autoxing/delivery/js/model/ZipInfo;->count:I

    return-void
.end method

.method public setDownStatus(J)V
    .locals 0

    .line 61
    iput-wide p1, p0, Lcom/autoxing/delivery/js/model/ZipInfo;->downStatus:J

    return-void
.end method

.method public setFileList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 69
    iput-object p1, p0, Lcom/autoxing/delivery/js/model/ZipInfo;->fileList:Ljava/util/List;

    return-void
.end method

.method public setFileName(Ljava/lang/String;)V
    .locals 0

    .line 102
    iput-object p1, p0, Lcom/autoxing/delivery/js/model/ZipInfo;->fileName:Ljava/lang/String;

    return-void
.end method

.method public setFileSize(J)V
    .locals 0

    .line 86
    iput-wide p1, p0, Lcom/autoxing/delivery/js/model/ZipInfo;->fileSize:J

    return-void
.end method

.method public setInApp(Z)V
    .locals 0

    .line 142
    iput-boolean p1, p0, Lcom/autoxing/delivery/js/model/ZipInfo;->isInApp:Z

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 77
    iput-object p1, p0, Lcom/autoxing/delivery/js/model/ZipInfo;->name:Ljava/lang/String;

    .line 78
    invoke-static {p1}, Lcom/autoxing/delivery/util/Utils;->getFileType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/autoxing/delivery/js/model/ZipInfo;->type:Ljava/lang/String;

    return-void
.end method

.method public setPath(Ljava/lang/String;)V
    .locals 0

    .line 118
    iput-object p1, p0, Lcom/autoxing/delivery/js/model/ZipInfo;->path:Ljava/lang/String;

    return-void
.end method

.method public setTime(Ljava/lang/String;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/autoxing/delivery/js/model/ZipInfo;->time:Ljava/lang/String;

    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/autoxing/delivery/js/model/ZipInfo;->type:Ljava/lang/String;

    return-void
.end method

.method public setUpdateTime(J)V
    .locals 2

    .line 51
    iput-wide p1, p0, Lcom/autoxing/delivery/js/model/ZipInfo;->updateTime:J

    .line 52
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 53
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/autoxing/delivery/js/model/ZipInfo;->time:Ljava/lang/String;

    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0

    .line 94
    iput-object p1, p0, Lcom/autoxing/delivery/js/model/ZipInfo;->url:Ljava/lang/String;

    return-void
.end method

.method public setValid(Z)V
    .locals 0

    .line 134
    iput-boolean p1, p0, Lcom/autoxing/delivery/js/model/ZipInfo;->isValid:Z

    return-void
.end method
