.class public Lcom/autoxing/delivery/js/model/ResEditInfo;
.super Ljava/lang/Object;
.source "ResEditInfo.java"


# static fields
.field public static final TYPE_DEL:I = 0x2

.field public static final TYPE_NEW_MODIFY:I = 0x1


# instance fields
.field private configJson:Lcom/alibaba/fastjson/JSONObject;

.field private editType:I

.field private fileList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private name:Ljava/lang/String;

.field private path:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getConfigJson()Lcom/alibaba/fastjson/JSONObject;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/autoxing/delivery/js/model/ResEditInfo;->configJson:Lcom/alibaba/fastjson/JSONObject;

    return-object v0
.end method

.method public getEditType()I
    .locals 1

    .line 34
    iget v0, p0, Lcom/autoxing/delivery/js/model/ResEditInfo;->editType:I

    return v0
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

    .line 50
    iget-object v0, p0, Lcom/autoxing/delivery/js/model/ResEditInfo;->fileList:Ljava/util/List;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/autoxing/delivery/js/model/ResEditInfo;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/autoxing/delivery/js/model/ResEditInfo;->path:Ljava/lang/String;

    return-object v0
.end method

.method public setConfigJson(Lcom/alibaba/fastjson/JSONObject;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/autoxing/delivery/js/model/ResEditInfo;->configJson:Lcom/alibaba/fastjson/JSONObject;

    return-void
.end method

.method public setEditType(I)V
    .locals 0

    .line 38
    iput p1, p0, Lcom/autoxing/delivery/js/model/ResEditInfo;->editType:I

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

    .line 54
    iput-object p1, p0, Lcom/autoxing/delivery/js/model/ResEditInfo;->fileList:Ljava/util/List;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 22
    iput-object p1, p0, Lcom/autoxing/delivery/js/model/ResEditInfo;->name:Ljava/lang/String;

    return-void
.end method

.method public setPath(Ljava/lang/String;)V
    .locals 0

    .line 30
    iput-object p1, p0, Lcom/autoxing/delivery/js/model/ResEditInfo;->path:Ljava/lang/String;

    return-void
.end method
