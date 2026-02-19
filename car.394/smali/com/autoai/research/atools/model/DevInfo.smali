.class public Lcom/autoai/research/atools/model/DevInfo;
.super Ljava/lang/Object;
.source "DevInfo.java"


# instance fields
.field private label:Ljava/lang/String;

.field private mountPoint:Ljava/lang/String;

.field private path:Ljava/lang/String;

.field private sysfsPath:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    iput-object p1, p0, Lcom/autoai/research/atools/model/DevInfo;->label:Ljava/lang/String;

    .line 77
    iput-object p2, p0, Lcom/autoai/research/atools/model/DevInfo;->path:Ljava/lang/String;

    .line 78
    iput-object p3, p0, Lcom/autoai/research/atools/model/DevInfo;->mountPoint:Ljava/lang/String;

    .line 79
    iput-object p4, p0, Lcom/autoai/research/atools/model/DevInfo;->sysfsPath:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getLabel()Ljava/lang/String;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/autoai/research/atools/model/DevInfo;->label:Ljava/lang/String;

    return-object v0
.end method

.method public getMountPoint()Ljava/lang/String;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/autoai/research/atools/model/DevInfo;->mountPoint:Ljava/lang/String;

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/autoai/research/atools/model/DevInfo;->path:Ljava/lang/String;

    return-object v0
.end method

.method public getSysfsPath()Ljava/lang/String;
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/autoai/research/atools/model/DevInfo;->sysfsPath:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DevInfo{label=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/autoai/research/atools/model/DevInfo;->label:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', mountPoint=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/autoai/research/atools/model/DevInfo;->mountPoint:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', path=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/autoai/research/atools/model/DevInfo;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', sysfsPath=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/autoai/research/atools/model/DevInfo;->sysfsPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
