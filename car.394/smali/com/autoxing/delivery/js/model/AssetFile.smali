.class public Lcom/autoxing/delivery/js/model/AssetFile;
.super Ljava/lang/Object;
.source "AssetFile.java"


# instance fields
.field private fileSize:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private path:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getFileSize()Ljava/lang/String;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/autoxing/delivery/js/model/AssetFile;->fileSize:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/autoxing/delivery/js/model/AssetFile;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/autoxing/delivery/js/model/AssetFile;->path:Ljava/lang/String;

    return-object v0
.end method

.method public setFileSize(Ljava/lang/String;)V
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/autoxing/delivery/js/model/AssetFile;->fileSize:Ljava/lang/String;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 13
    iput-object p1, p0, Lcom/autoxing/delivery/js/model/AssetFile;->name:Ljava/lang/String;

    return-void
.end method

.method public setPath(Ljava/lang/String;)V
    .locals 0

    .line 21
    iput-object p1, p0, Lcom/autoxing/delivery/js/model/AssetFile;->path:Ljava/lang/String;

    return-void
.end method
