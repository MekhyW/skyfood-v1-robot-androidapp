.class public Lcom/autoai/research/atools/model/GPUInfo;
.super Ljava/lang/Object;
.source "GPUInfo.java"


# instance fields
.field private glRenderer:Ljava/lang/String;

.field private glVendor:Ljava/lang/String;

.field private glVersion:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getGlRenderer()Ljava/lang/String;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/autoai/research/atools/model/GPUInfo;->glRenderer:Ljava/lang/String;

    return-object v0
.end method

.method public getGlVendor()Ljava/lang/String;
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/autoai/research/atools/model/GPUInfo;->glVendor:Ljava/lang/String;

    return-object v0
.end method

.method public getGlVersion()Ljava/lang/String;
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/autoai/research/atools/model/GPUInfo;->glVersion:Ljava/lang/String;

    return-object v0
.end method

.method public setGlRenderer(Ljava/lang/String;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/autoai/research/atools/model/GPUInfo;->glRenderer:Ljava/lang/String;

    return-void
.end method

.method public setGlVendor(Ljava/lang/String;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/autoai/research/atools/model/GPUInfo;->glVendor:Ljava/lang/String;

    return-void
.end method

.method public setGlVersion(Ljava/lang/String;)V
    .locals 0

    .line 78
    iput-object p1, p0, Lcom/autoai/research/atools/model/GPUInfo;->glVersion:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "GPUInfo{glRenderer=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/autoai/research/atools/model/GPUInfo;->glRenderer:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', glVendor=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/autoai/research/atools/model/GPUInfo;->glVendor:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', glVersion=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/autoai/research/atools/model/GPUInfo;->glVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
