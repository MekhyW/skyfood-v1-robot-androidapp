.class public Lcom/autoxing/delivery/js/ws/DataCenter;
.super Ljava/lang/Object;
.source "DataCenter.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "DataCenter"


# instance fields
.field private final playConfigFileName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "play_config.txt"

    .line 39
    iput-object v0, p0, Lcom/autoxing/delivery/js/ws/DataCenter;->playConfigFileName:Ljava/lang/String;

    return-void
.end method

.method private appendCloudZipList()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/autoxing/delivery/js/model/ZipInfo;",
            ">;"
        }
    .end annotation

    .line 163
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "Res_"

    const-string v2, "launcher/config.properties"

    .line 165
    invoke-static {v1, v2}, Lcom/autoxing/delivery/util/ConfigUtils;->getStoreWifiList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 166
    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    .line 169
    :cond_0
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 170
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 171
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 172
    invoke-static {}, Lcom/autoxing/delivery/download/DownloadManager;->getManager()Lcom/autoxing/delivery/download/DownloadManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/autoxing/delivery/download/DownloadManager;->getDownloadPath()Ljava/lang/String;

    move-result-object v4

    .line 173
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x0

    .line 175
    invoke-direct {p0, v5, v3, v2}, Lcom/autoxing/delivery/js/ws/DataCenter;->getZipInfo(Ljava/io/File;ZLjava/lang/String;)Lcom/autoxing/delivery/js/model/ZipInfo;

    move-result-object v2

    .line 176
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    :goto_1
    return-object v0
.end method

.method private checkSdcardFreeSize(Ljava/util/List;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x1

    if-eqz p1, :cond_4

    .line 381
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 385
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const-wide/16 v1, 0x0

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 386
    new-instance v4, Ljava/io/File;

    sget-object v5, Lcom/autoxing/delivery/constant/Configs;->localResFilePath:Ljava/lang/String;

    invoke-direct {v4, v5, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 387
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v4}, Ljava/io/File;->isFile()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 388
    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v3

    add-long/2addr v1, v3

    goto :goto_0

    .line 391
    :cond_2
    invoke-static {}, Lcom/autoxing/delivery/util/SdcardUtils;->getFreeSpace()J

    move-result-wide v3

    cmp-long p1, v3, v1

    if-ltz p1, :cond_3

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    :cond_4
    :goto_1
    return v0
.end method

.method private getDownStatus(JJ)I
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    cmp-long p1, p1, p3

    if-gez p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x2

    return p1
.end method

.method private getLocalFileList(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/autoxing/delivery/js/model/ZipInfo;",
            ">;"
        }
    .end annotation

    .line 127
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 128
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 129
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 130
    array-length v1, p1

    if-nez v1, :cond_0

    goto :goto_2

    .line 133
    :cond_0
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    aget-object v3, p1, v2

    .line 134
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "."

    .line 135
    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    goto :goto_1

    .line 138
    :cond_1
    invoke-virtual {v4, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 139
    invoke-direct {p0, v5, p2}, Lcom/autoxing/delivery/js/ws/DataCenter;->isValidMediaFile(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    goto :goto_1

    .line 142
    :cond_2
    new-instance v5, Lcom/autoxing/delivery/js/model/ZipInfo;

    invoke-direct {v5}, Lcom/autoxing/delivery/js/model/ZipInfo;-><init>()V

    .line 143
    invoke-virtual {v5, v4}, Lcom/autoxing/delivery/js/model/ZipInfo;->setName(Ljava/lang/String;)V

    .line 144
    invoke-virtual {v3}, Ljava/io/File;->lastModified()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lcom/autoxing/delivery/js/model/ZipInfo;->setUpdateTime(J)V

    .line 145
    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lcom/autoxing/delivery/js/model/ZipInfo;->setFileSize(J)V

    const-wide/16 v6, 0x2

    .line 146
    invoke-virtual {v5, v6, v7}, Lcom/autoxing/delivery/js/model/ZipInfo;->setDownStatus(J)V

    .line 147
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Lcom/autoxing/delivery/js/model/ZipInfo;->setPath(Ljava/lang/String;)V

    .line 148
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    :goto_2
    return-object v0
.end method

.method private getLocalZipList()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/autoxing/delivery/js/model/ZipInfo;",
            ">;"
        }
    .end annotation

    .line 183
    invoke-direct {p0}, Lcom/autoxing/delivery/js/ws/DataCenter;->appendCloudZipList()Ljava/util/List;

    move-result-object v0

    .line 184
    new-instance v1, Ljava/io/File;

    sget-object v2, Lcom/autoxing/delivery/constant/Configs;->localResZipPath:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 185
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 186
    array-length v2, v1

    if-nez v2, :cond_0

    goto :goto_1

    .line 189
    :cond_0
    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_1

    aget-object v5, v1, v4

    .line 190
    invoke-direct {p0, v5, v3}, Lcom/autoxing/delivery/js/ws/DataCenter;->getZipInfo(Ljava/io/File;Z)Lcom/autoxing/delivery/js/model/ZipInfo;

    move-result-object v5

    .line 191
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-object v0
.end method

.method private getResId(Landroid/content/Context;Ljava/lang/String;I)I
    .locals 3

    .line 42
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v1, "string"

    .line 43
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 42
    invoke-virtual {v0, p3, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p3

    if-lez p3, :cond_0

    return p3

    .line 47
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const/4 v0, 0x2

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "values"

    .line 48
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    .line 47
    invoke-virtual {p3, p2, v0, p1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method private getZipInfo(Ljava/io/File;Z)Lcom/autoxing/delivery/js/model/ZipInfo;
    .locals 1

    .line 197
    invoke-virtual {p0, p1}, Lcom/autoxing/delivery/js/ws/DataCenter;->getResName(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/autoxing/delivery/js/ws/DataCenter;->getZipInfo(Ljava/io/File;ZLjava/lang/String;)Lcom/autoxing/delivery/js/model/ZipInfo;

    move-result-object p1

    return-object p1
.end method

.method private getZipInfo(Ljava/io/File;ZLjava/lang/String;)Lcom/autoxing/delivery/js/model/ZipInfo;
    .locals 7

    .line 201
    new-instance v0, Lcom/autoxing/delivery/js/model/ZipInfo;

    invoke-direct {v0}, Lcom/autoxing/delivery/js/model/ZipInfo;-><init>()V

    .line 202
    invoke-virtual {v0, p3}, Lcom/autoxing/delivery/js/model/ZipInfo;->setName(Ljava/lang/String;)V

    .line 203
    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/autoxing/delivery/js/model/ZipInfo;->setUpdateTime(J)V

    .line 204
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/autoxing/delivery/js/model/ZipInfo;->setFileSize(J)V

    const-wide/16 v1, 0x2

    .line 205
    invoke-virtual {v0, v1, v2}, Lcom/autoxing/delivery/js/model/ZipInfo;->setDownStatus(J)V

    .line 206
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Lcom/autoxing/delivery/js/model/ZipInfo;->setPath(Ljava/lang/String;)V

    .line 207
    invoke-static {p1}, Lcom/autoxing/delivery/util/ZipUtils;->isValidZipFile(Ljava/io/File;)Z

    move-result p3

    const/4 v1, 0x3

    new-array v2, v1, [Ljava/lang/Object;

    .line 208
    invoke-virtual {v0}, Lcom/autoxing/delivery/js/model/ZipInfo;->getPath()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/4 v5, 0x1

    aput-object v3, v2, v5

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/4 v6, 0x2

    aput-object v3, v2, v6

    const-string v3, "generateResDetail %s exist = %b,isValid = %b"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "DataCenter"

    invoke-static {v3, v2}, Lcom/autoai/research/atools/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    invoke-virtual {v0, p3}, Lcom/autoxing/delivery/js/model/ZipInfo;->setValid(Z)V

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    .line 211
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/autoxing/delivery/util/ZipUtils;->getFileList(Ljava/lang/String;)Ljava/util/List;

    move-result-object p2

    .line 212
    invoke-virtual {v0, p2}, Lcom/autoxing/delivery/js/model/ZipInfo;->setFileList(Ljava/util/List;)V

    .line 213
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    invoke-virtual {v0, p3}, Lcom/autoxing/delivery/js/model/ZipInfo;->setCount(I)V

    const-string p3, "play_config.txt"

    .line 214
    invoke-interface {p2, p3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 215
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, p3}, Lcom/autoxing/delivery/util/ZipUtils;->getFileContent(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    new-array v1, v1, [Ljava/lang/Object;

    .line 216
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v4

    aput-object p3, v1, v5

    aput-object p2, v1, v6

    const-string p1, "%s,%s,%s"

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/autoai/research/atools/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    invoke-static {p2}, Lcom/autoxing/delivery/util/Utils;->isEmpty(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 219
    :try_start_0
    invoke-static {p2}, Lcom/alibaba/fastjson/JSONObject;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/autoxing/delivery/js/model/ZipInfo;->setConfigJson(Lcom/alibaba/fastjson/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 221
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-object v0
.end method

.method private handleEditInfo(Lcom/autoxing/delivery/js/model/ResEditInfo;Lcom/autoxing/delivery/js/ws/OnDataCenterListener;)Lcom/autoxing/delivery/js/model/ResEditResult;
    .locals 9

    .line 260
    invoke-virtual {p1}, Lcom/autoxing/delivery/js/model/ResEditInfo;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "/android_asset/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 261
    new-instance p2, Lcom/autoxing/delivery/js/model/ResEditResult;

    invoke-virtual {p1}, Lcom/autoxing/delivery/js/model/ResEditInfo;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/autoxing/delivery/js/model/ResEditInfo;->getEditType()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/autoxing/delivery/js/model/ResEditInfo;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, " is asset file,can\'t delete or modify"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x6

    invoke-direct {p2, v0, v1, v2, p1}, Lcom/autoxing/delivery/js/model/ResEditResult;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    return-object p2

    .line 264
    :cond_0
    invoke-virtual {p1}, Lcom/autoxing/delivery/js/model/ResEditInfo;->getEditType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    invoke-virtual {p1}, Lcom/autoxing/delivery/js/model/ResEditInfo;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/hutool/core/io/FileUtil;->exist(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 265
    new-instance p2, Lcom/autoxing/delivery/js/model/ResEditResult;

    invoke-virtual {p1}, Lcom/autoxing/delivery/js/model/ResEditInfo;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/autoxing/delivery/js/model/ResEditInfo;->getEditType()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/autoxing/delivery/js/model/ResEditInfo;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v3, " not exist"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, v0, v2, v1, p1}, Lcom/autoxing/delivery/js/model/ResEditResult;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    return-object p2

    .line 267
    :cond_1
    invoke-virtual {p1}, Lcom/autoxing/delivery/js/model/ResEditInfo;->getEditType()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    invoke-virtual {p1}, Lcom/autoxing/delivery/js/model/ResEditInfo;->getFileList()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/autoxing/delivery/js/ws/DataCenter;->checkSdcardFreeSize(Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 268
    new-instance p2, Lcom/autoxing/delivery/js/model/ResEditResult;

    invoke-virtual {p1}, Lcom/autoxing/delivery/js/model/ResEditInfo;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/autoxing/delivery/js/model/ResEditInfo;->getEditType()I

    move-result p1

    const/4 v1, 0x3

    const-string v2, "sdcard is full"

    invoke-direct {p2, v0, p1, v1, v2}, Lcom/autoxing/delivery/js/model/ResEditResult;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    return-object p2

    .line 273
    :cond_2
    invoke-virtual {p1}, Lcom/autoxing/delivery/js/model/ResEditInfo;->getEditType()I

    move-result v0

    const-string v3, "Res_"

    const-string v4, "Res_Local_"

    const/4 v5, 0x4

    const-string v6, "launcher/config.properties"

    if-eq v0, v2, :cond_8

    if-eq v0, v1, :cond_3

    const-string p2, "failed,other reason"

    goto/16 :goto_6

    .line 303
    :cond_3
    new-instance p2, Ljava/io/File;

    invoke-virtual {p1}, Lcom/autoxing/delivery/js/model/ResEditInfo;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 304
    invoke-virtual {p2}, Ljava/io/File;->delete()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 306
    invoke-virtual {p1}, Lcom/autoxing/delivery/js/model/ResEditInfo;->getPath()Ljava/lang/String;

    move-result-object v1

    sget-object v7, Lcom/autoxing/delivery/constant/Configs;->localResZipPath:Ljava/lang/String;

    invoke-virtual {v1, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 307
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v6, p2}, Lcom/autoxing/delivery/util/ConfigUtils;->remove(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 309
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v6, p2}, Lcom/autoxing/delivery/util/ConfigUtils;->remove(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    :goto_0
    if-eqz v0, :cond_6

    goto :goto_1

    :cond_6
    move v2, v5

    :goto_1
    if-eqz v0, :cond_7

    const-string p2, "delete success"

    goto :goto_2

    :cond_7
    const-string p2, "delete failed,please check file permission"

    :goto_2
    move v5, v2

    goto/16 :goto_6

    .line 276
    :cond_8
    invoke-virtual {p1}, Lcom/autoxing/delivery/js/model/ResEditInfo;->getName()Ljava/lang/String;

    move-result-object v0

    .line 278
    invoke-virtual {p1}, Lcom/autoxing/delivery/js/model/ResEditInfo;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/hutool/core/io/FileUtil;->exist(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 280
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v7, "-"

    const-string v8, ""

    invoke-virtual {v3, v7, v8}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v7, 0x0

    const/16 v8, 0x10

    invoke-virtual {v3, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ".zip"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 281
    new-instance v3, Ljava/io/File;

    sget-object v7, Lcom/autoxing/delivery/constant/Configs;->localResZipPath:Ljava/lang/String;

    invoke-direct {v3, v7, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1, v0}, Lcom/autoxing/delivery/util/ConfigUtils;->save(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 284
    :cond_9
    new-instance v1, Ljava/io/File;

    invoke-virtual {p1}, Lcom/autoxing/delivery/js/model/ResEditInfo;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v1, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 285
    invoke-static {v0}, Lcom/autoxing/delivery/util/Utils;->isEmpty(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_b

    .line 287
    sget-object v7, Lcom/autoxing/delivery/constant/Configs;->localResZipPath:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 289
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3, v0}, Lcom/autoxing/delivery/util/ConfigUtils;->save(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 292
    :cond_a
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3, v0}, Lcom/autoxing/delivery/util/ConfigUtils;->save(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_b
    :goto_3
    move-object v3, v1

    .line 296
    :goto_4
    invoke-direct {p0, v3, p1, p2}, Lcom/autoxing/delivery/js/ws/DataCenter;->modifyZipFile(Ljava/io/File;Lcom/autoxing/delivery/js/model/ResEditInfo;Lcom/autoxing/delivery/js/ws/OnDataCenterListener;)Z

    move-result p2

    if-eqz p2, :cond_c

    goto :goto_5

    :cond_c
    move v2, v5

    :goto_5
    if-eqz p2, :cond_d

    const-string p2, "new success"

    goto/16 :goto_2

    :cond_d
    const-string p2, "new failed,please check file permission"

    goto/16 :goto_2

    .line 317
    :goto_6
    new-instance v0, Lcom/autoxing/delivery/js/model/ResEditResult;

    invoke-virtual {p1}, Lcom/autoxing/delivery/js/model/ResEditInfo;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/autoxing/delivery/js/model/ResEditInfo;->getEditType()I

    move-result p1

    invoke-direct {v0, v1, p1, v5, p2}, Lcom/autoxing/delivery/js/model/ResEditResult;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    return-object v0
.end method

.method private isValidMediaFile(Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    .line 154
    :goto_0
    array-length v2, p2

    if-ge v1, v2, :cond_1

    .line 155
    aget-object v2, p2, v1

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method static synthetic lambda$modifyZipFile$1(Lcom/autoxing/delivery/js/model/ResEditInfo;Lcom/autoxing/delivery/js/ws/OnDataCenterListener;IJ)V
    .locals 9

    .line 359
    new-instance v8, Lcom/autoxing/delivery/js/model/ResEditResult;

    invoke-virtual {p0}, Lcom/autoxing/delivery/js/model/ResEditInfo;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/autoxing/delivery/js/model/ResEditInfo;->getEditType()I

    move-result v2

    const/4 v3, 0x5

    const-string v4, "zipping"

    const-wide/16 v5, 0x3e8

    div-long v6, p3, v5

    move-object v0, v8

    move v5, p2

    invoke-direct/range {v0 .. v7}, Lcom/autoxing/delivery/js/model/ResEditResult;-><init>(Ljava/lang/String;IILjava/lang/String;IJ)V

    .line 360
    invoke-interface {p1, v8}, Lcom/autoxing/delivery/js/ws/OnDataCenterListener;->onZipChanged(Lcom/autoxing/delivery/js/model/ResEditResult;)V

    return-void
.end method

.method static synthetic lambda$sortZipInfoList$0(Lcom/autoxing/delivery/js/model/ZipInfo;Lcom/autoxing/delivery/js/model/ZipInfo;)I
    .locals 4

    .line 117
    invoke-virtual {p0}, Lcom/autoxing/delivery/js/model/ZipInfo;->getUpdateTime()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/autoxing/delivery/js/model/ZipInfo;->getUpdateTime()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 p0, -0x1

    return p0

    .line 119
    :cond_0
    invoke-virtual {p0}, Lcom/autoxing/delivery/js/model/ZipInfo;->getUpdateTime()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/autoxing/delivery/js/model/ZipInfo;->getUpdateTime()J

    move-result-wide p0

    cmp-long p0, v0, p0

    if-gez p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private modifyZipFile(Ljava/io/File;Lcom/autoxing/delivery/js/model/ResEditInfo;Lcom/autoxing/delivery/js/ws/OnDataCenterListener;)Z
    .locals 10

    .line 321
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 322
    invoke-virtual {p2}, Lcom/autoxing/delivery/js/model/ResEditInfo;->getConfigJson()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v1

    .line 325
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/autoxing/delivery/util/ZipUtils;->getFileList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 326
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v3

    const-string v4, "play_config.txt"

    const/4 v5, 0x0

    if-eqz v3, :cond_0

    invoke-interface {v2, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 327
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v4}, Lcom/autoxing/delivery/util/ZipUtils;->getFileContent(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_0
    move-object v3, v5

    :goto_0
    if-eqz v1, :cond_3

    .line 329
    invoke-virtual {v1}, Lcom/alibaba/fastjson/JSONObject;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_3

    invoke-virtual {v1}, Lcom/alibaba/fastjson/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 330
    new-instance v5, Ljava/io/File;

    sget-object v3, Lcom/autoxing/delivery/constant/Configs;->basePath:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "resource/temp/"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/autoai/research/jtools/security/MD5Utils;->get16MD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/play_config.txt"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v3, v6}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 331
    invoke-virtual {v5}, Ljava/io/File;->isFile()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 332
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 334
    :cond_1
    invoke-virtual {v5}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_2

    .line 335
    invoke-virtual {v5}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    .line 338
    :cond_2
    :try_start_0
    invoke-virtual {v1}, Lcom/alibaba/fastjson/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Lcom/autoai/research/jtools/io/FileUtils;->writeStringToFile(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 340
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 342
    :goto_1
    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v1, v6, v8

    if-lez v1, :cond_3

    .line 343
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v4}, Lcom/autoxing/delivery/util/ZipUtils;->removeFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 347
    :cond_3
    invoke-virtual {p2}, Lcom/autoxing/delivery/js/model/ResEditInfo;->getFileList()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 348
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_5

    .line 349
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 350
    new-instance v4, Ljava/io/File;

    sget-object v6, Lcom/autoxing/delivery/constant/Configs;->localResFilePath:Ljava/lang/String;

    invoke-direct {v4, v6, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 351
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {v4}, Ljava/io/File;->isFile()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 352
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 357
    :cond_5
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_6

    .line 358
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Lcom/autoxing/delivery/js/ws/DataCenter$$ExternalSyntheticLambda0;

    invoke-direct {v1, p2, p3}, Lcom/autoxing/delivery/js/ws/DataCenter$$ExternalSyntheticLambda0;-><init>(Lcom/autoxing/delivery/js/model/ResEditInfo;Lcom/autoxing/delivery/js/ws/OnDataCenterListener;)V

    invoke-static {v0, p1, v1}, Lcom/autoxing/delivery/util/ZipUtils;->packageZip(Ljava/util/List;Ljava/lang/String;Lcom/autoxing/delivery/util/ZipUtils$OnZipListener;)Z

    move-result p1

    if-eqz v5, :cond_7

    .line 363
    invoke-virtual {v5}, Ljava/io/File;->isFile()Z

    move-result p2

    if-eqz p2, :cond_7

    .line 365
    :try_start_1
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 366
    invoke-virtual {v5}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p2

    invoke-virtual {p2}, Ljava/io/File;->delete()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    move-exception p2

    .line 368
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    :cond_6
    const/4 p1, 0x1

    :cond_7
    :goto_3
    return p1
.end method

.method private sortZipInfoList(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/autoxing/delivery/js/model/ZipInfo;",
            ">;)V"
        }
    .end annotation

    .line 116
    new-instance v0, Lcom/autoxing/delivery/js/ws/DataCenter$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/autoxing/delivery/js/ws/DataCenter$$ExternalSyntheticLambda1;-><init>()V

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-void
.end method

.method private updateCloudZipStatus(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/autoxing/delivery/js/model/ZipInfo;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 230
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 233
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autoxing/delivery/js/model/ZipInfo;

    .line 234
    invoke-direct {p0, v0}, Lcom/autoxing/delivery/js/ws/DataCenter;->updateZipInfo(Lcom/autoxing/delivery/js/model/ZipInfo;)V

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method private updateZipInfo(Lcom/autoxing/delivery/js/model/ZipInfo;)V
    .locals 4

    .line 239
    invoke-virtual {p1}, Lcom/autoxing/delivery/js/model/ZipInfo;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/autoai/research/jtools/security/MD5Utils;->get32MD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/autoxing/delivery/js/model/ZipInfo;->setFileName(Ljava/lang/String;)V

    .line 240
    invoke-static {}, Lcom/autoxing/delivery/download/DownloadManager;->getManager()Lcom/autoxing/delivery/download/DownloadManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autoxing/delivery/download/DownloadManager;->getDownloadPath()Ljava/lang/String;

    move-result-object v0

    .line 241
    new-instance v1, Ljava/io/File;

    invoke-virtual {p1}, Lcom/autoxing/delivery/js/model/ZipInfo;->getFileName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 243
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/autoxing/delivery/js/model/ZipInfo;->setPath(Ljava/lang/String;)V

    .line 244
    invoke-virtual {v1}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Lcom/autoxing/delivery/js/model/ZipInfo;->setUpdateTime(J)V

    .line 245
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/autoxing/delivery/js/model/ZipInfo;->getFileSize()J

    move-result-wide v2

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/autoxing/delivery/js/ws/DataCenter;->getDownStatus(JJ)I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lcom/autoxing/delivery/js/model/ZipInfo;->setDownStatus(J)V

    :cond_0
    return-void
.end method


# virtual methods
.method public generateAnimationRes(Ljava/lang/String;Lcom/autoxing/delivery/js/model/AnimationInfo;)Ljava/lang/String;
    .locals 1

    .line 444
    new-instance v0, Lcom/autoxing/delivery/js/model/ComdInfo;

    invoke-direct {v0}, Lcom/autoxing/delivery/js/model/ComdInfo;-><init>()V

    .line 445
    invoke-virtual {v0, p2}, Lcom/autoxing/delivery/js/model/ComdInfo;->setData(Ljava/lang/Object;)V

    .line 446
    invoke-virtual {v0, p1}, Lcom/autoxing/delivery/js/model/ComdInfo;->setReqType(Ljava/lang/String;)V

    .line 447
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    invoke-virtual {v0, p1, p2}, Lcom/autoxing/delivery/js/model/ComdInfo;->setTimestamp(J)V

    .line 448
    invoke-static {v0}, Lcom/alibaba/fastjson/JSONObject;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public generateFilesContent(Lcom/autoxing/delivery/js/model/ComdInfo;)Lcom/alibaba/fastjson/JSONObject;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/autoxing/delivery/js/model/ComdInfo<",
            "Lcom/autoxing/delivery/js/model/ZipInfo;",
            ">;)",
            "Lcom/alibaba/fastjson/JSONObject;"
        }
    .end annotation

    .line 418
    invoke-virtual {p1}, Lcom/autoxing/delivery/js/model/ComdInfo;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/autoxing/delivery/js/model/ZipInfo;

    .line 419
    invoke-virtual {p1}, Lcom/autoxing/delivery/js/model/ZipInfo;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 420
    invoke-virtual {p1}, Lcom/autoxing/delivery/js/model/ZipInfo;->getName()Ljava/lang/String;

    move-result-object p1

    .line 421
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 423
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 424
    invoke-static {v0, p1}, Lcom/autoxing/delivery/util/ZipUtils;->getFileContent(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 426
    invoke-static {p1}, Lcom/alibaba/fastjson/JSONObject;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object p1

    .line 427
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public generateResConfig(Landroid/content/Context;II)Lcom/autoxing/delivery/js/model/UploadInfo;
    .locals 0

    .line 77
    invoke-virtual {p0, p1, p2, p3}, Lcom/autoxing/delivery/js/ws/DataCenter;->resUploadInfo(Landroid/content/Context;II)Lcom/autoxing/delivery/js/model/UploadInfo;

    move-result-object p1

    return-object p1
.end method

.method public generateResDetail(Lcom/autoxing/delivery/js/model/ComdInfo;)Lcom/autoxing/delivery/js/model/ZipInfo;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/autoxing/delivery/js/model/ComdInfo<",
            "Lcom/autoxing/delivery/js/model/ZipInfo;",
            ">;)",
            "Lcom/autoxing/delivery/js/model/ZipInfo;"
        }
    .end annotation

    .line 406
    invoke-virtual {p1}, Lcom/autoxing/delivery/js/model/ComdInfo;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/autoxing/delivery/js/model/ZipInfo;

    .line 407
    invoke-virtual {p1}, Lcom/autoxing/delivery/js/model/ZipInfo;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 408
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 409
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    .line 410
    invoke-direct {p0, v1, p1}, Lcom/autoxing/delivery/js/ws/DataCenter;->getZipInfo(Ljava/io/File;Z)Lcom/autoxing/delivery/js/model/ZipInfo;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    .line 412
    invoke-virtual {p1, v0, v1}, Lcom/autoxing/delivery/js/model/ZipInfo;->setDownStatus(J)V

    :goto_0
    return-object p1
.end method

.method public generateResEdit(Lcom/autoxing/delivery/js/model/ComdInfo;Lcom/autoxing/delivery/js/ws/OnDataCenterListener;)Lcom/autoxing/delivery/js/model/ResEditResult;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/autoxing/delivery/js/model/ComdInfo<",
            "Lcom/autoxing/delivery/js/model/ResEditInfo;",
            ">;",
            "Lcom/autoxing/delivery/js/ws/OnDataCenterListener;",
            ")",
            "Lcom/autoxing/delivery/js/model/ResEditResult;"
        }
    .end annotation

    .line 376
    invoke-virtual {p1}, Lcom/autoxing/delivery/js/model/ComdInfo;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/autoxing/delivery/js/model/ResEditInfo;

    .line 377
    invoke-direct {p0, p1, p2}, Lcom/autoxing/delivery/js/ws/DataCenter;->handleEditInfo(Lcom/autoxing/delivery/js/model/ResEditInfo;Lcom/autoxing/delivery/js/ws/OnDataCenterListener;)Lcom/autoxing/delivery/js/model/ResEditResult;

    move-result-object p1

    return-object p1
.end method

.method public generateResList(Lcom/autoxing/delivery/js/model/ComdInfo;Landroid/content/Context;)Lcom/autoxing/delivery/js/model/ResListInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/autoxing/delivery/js/model/ComdInfo<",
            "Lcom/autoxing/delivery/js/model/ResListInfo;",
            ">;",
            "Landroid/content/Context;",
            ")",
            "Lcom/autoxing/delivery/js/model/ResListInfo;"
        }
    .end annotation

    .line 82
    invoke-virtual {p1}, Lcom/autoxing/delivery/js/model/ComdInfo;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/autoxing/delivery/js/model/ResListInfo;

    .line 84
    invoke-virtual {p1}, Lcom/autoxing/delivery/js/model/ResListInfo;->getType()I

    move-result p2

    packed-switch p2, :pswitch_data_0

    goto :goto_0

    .line 98
    :pswitch_0
    sget-object p2, Lcom/autoxing/delivery/js/model/ResListInfo;->FILE_SUBFIX_MAP:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/autoxing/delivery/js/model/ResListInfo;->getType()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/autoxing/delivery/js/model/ResListInfo$ConfigInfo;

    .line 99
    invoke-virtual {p2}, Lcom/autoxing/delivery/js/model/ResListInfo$ConfigInfo;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/autoxing/delivery/js/model/ResListInfo$ConfigInfo;->getSubfixArr()[Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, v0, p2}, Lcom/autoxing/delivery/js/ws/DataCenter;->getLocalFileList(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object p2

    .line 100
    invoke-direct {p0, p2}, Lcom/autoxing/delivery/js/ws/DataCenter;->sortZipInfoList(Ljava/util/List;)V

    .line 106
    invoke-virtual {p1, p2}, Lcom/autoxing/delivery/js/model/ResListInfo;->setList(Ljava/util/List;)V

    goto :goto_0

    .line 89
    :pswitch_1
    invoke-direct {p0}, Lcom/autoxing/delivery/js/ws/DataCenter;->getLocalZipList()Ljava/util/List;

    move-result-object p2

    .line 90
    invoke-direct {p0, p2}, Lcom/autoxing/delivery/js/ws/DataCenter;->sortZipInfoList(Ljava/util/List;)V

    .line 91
    invoke-virtual {p1, p2}, Lcom/autoxing/delivery/js/model/ResListInfo;->setList(Ljava/util/List;)V

    goto :goto_0

    .line 86
    :pswitch_2
    invoke-virtual {p1}, Lcom/autoxing/delivery/js/model/ResListInfo;->getList()Ljava/util/List;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/autoxing/delivery/js/ws/DataCenter;->updateCloudZipStatus(Ljava/util/List;)V

    .line 110
    :goto_0
    invoke-virtual {p1}, Lcom/autoxing/delivery/js/model/ResListInfo;->getList()Ljava/util/List;

    move-result-object p2

    if-nez p2, :cond_0

    const/4 p2, 0x0

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Lcom/autoxing/delivery/js/model/ResListInfo;->getList()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    .line 111
    :goto_1
    invoke-virtual {p1, p2}, Lcom/autoxing/delivery/js/model/ResListInfo;->setCount(I)V

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public getAssetFileList(Landroid/content/Context;)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/autoxing/delivery/js/model/ZipInfo;",
            ">;"
        }
    .end annotation

    const-string v0, "animation"

    .line 454
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 455
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p1

    .line 457
    :try_start_0
    invoke-virtual {p1, v0}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    move v4, v3

    .line 458
    :goto_0
    array-length v5, v2

    if-ge v4, v5, :cond_0

    .line 459
    aget-object v5, v2, v4

    const-string v6, "%s/%s"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v0, v7, v3

    const/4 v8, 0x1

    aput-object v5, v7, v8

    .line 460
    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 461
    invoke-virtual {p1, v6}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v6

    .line 462
    new-instance v7, Lcom/autoxing/delivery/js/model/ZipInfo;

    invoke-direct {v7}, Lcom/autoxing/delivery/js/model/ZipInfo;-><init>()V

    .line 463
    invoke-virtual {v7, v5}, Lcom/autoxing/delivery/js/model/ZipInfo;->setName(Ljava/lang/String;)V

    .line 464
    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v9

    invoke-virtual {v7, v9, v10}, Lcom/autoxing/delivery/js/model/ZipInfo;->setFileSize(J)V

    const-wide/16 v9, 0x2

    .line 465
    invoke-virtual {v7, v9, v10}, Lcom/autoxing/delivery/js/model/ZipInfo;->setDownStatus(J)V

    const-string v6, "/android_asset/animation/%s"

    new-array v9, v8, [Ljava/lang/Object;

    aput-object v5, v9, v3

    .line 466
    invoke-static {v6, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Lcom/autoxing/delivery/js/model/ZipInfo;->setPath(Ljava/lang/String;)V

    .line 467
    invoke-virtual {v7, v8}, Lcom/autoxing/delivery/js/model/ZipInfo;->setInApp(Z)V

    .line 468
    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 471
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    return-object v1
.end method

.method public getResName(Ljava/io/File;)Ljava/lang/String;
    .locals 3

    .line 396
    sget-object v0, Lcom/autoxing/delivery/constant/Configs;->localResZipPath:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "launcher/config.properties"

    if-eqz v0, :cond_0

    .line 398
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Res_Local_"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, v0, p1}, Lcom/autoxing/delivery/util/ConfigUtils;->read(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 401
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Res_"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, v0, p1}, Lcom/autoxing/delivery/util/ConfigUtils;->read(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public resUploadInfo(Landroid/content/Context;II)Lcom/autoxing/delivery/js/model/UploadInfo;
    .locals 7

    .line 52
    invoke-static {p1}, Lcom/autoxing/delivery/util/WifiUtils;->getInstance(Landroid/content/Context;)Lcom/autoxing/delivery/util/WifiUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autoxing/delivery/util/WifiUtils;->getWifiInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 53
    new-instance v1, Lcom/autoxing/delivery/js/model/UploadInfo;

    invoke-direct {v1}, Lcom/autoxing/delivery/js/model/UploadInfo;-><init>()V

    .line 54
    invoke-virtual {v1, p3}, Lcom/autoxing/delivery/js/model/UploadInfo;->setUploadType(I)V

    if-eqz v0, :cond_3

    .line 56
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "\""

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "<unknown ssid>"

    .line 57
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 58
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "text_lookup_ssid"

    invoke-direct {p0, p1, v3, p2}, Lcom/autoxing/delivery/js/ws/DataCenter;->getResId(Landroid/content/Context;Ljava/lang/String;I)I

    move-result p1

    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 60
    :cond_0
    invoke-virtual {v1, v2}, Lcom/autoxing/delivery/js/model/UploadInfo;->setSsid(Ljava/lang/String;)V

    const/4 p1, 0x3

    const/4 p2, 0x2

    if-ne p3, p2, :cond_1

    const-string v4, "/animation"

    goto :goto_0

    :cond_1
    if-ne p3, p1, :cond_2

    const-string v4, "/apk"

    :cond_2
    :goto_0
    new-array p3, p2, [Ljava/lang/Object;

    const/16 v2, 0x22b8

    .line 68
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v5, 0x0

    aput-object v3, p3, v5

    const/4 v3, 0x1

    aput-object v4, p3, v3

    const-string v6, "dirPath=%s,htmlFileName=%s"

    invoke-static {v6, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    const-string v6, "DataCenter"

    invoke-static {v6, p3}, Lcom/autoai/research/atools/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-array p1, p1, [Ljava/lang/Object;

    .line 69
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getIpAddress()I

    move-result p3

    invoke-static {p3}, Lcom/autoxing/delivery/util/WifiUtils;->int2ip(I)Ljava/lang/String;

    move-result-object p3

    aput-object p3, p1, v5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, p1, v3

    aput-object v4, p1, p2

    const-string p2, "http://%s:%d%s"

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 70
    invoke-virtual {v1, p1}, Lcom/autoxing/delivery/js/model/UploadInfo;->setUrl(Ljava/lang/String;)V

    :cond_3
    return-object v1
.end method

.method public writeLog(Lcom/autoxing/delivery/js/model/ComdInfo;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/autoxing/delivery/js/model/ComdInfo<",
            "Lcom/autoxing/delivery/js/model/LogInfo;",
            ">;)V"
        }
    .end annotation

    .line 436
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm:ss.SSS"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 437
    invoke-virtual {p1}, Lcom/autoxing/delivery/js/model/ComdInfo;->getTimestamp()J

    move-result-wide v1

    .line 438
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 439
    invoke-virtual {p1}, Lcom/autoxing/delivery/js/model/ComdInfo;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/autoxing/delivery/js/model/LogInfo;

    .line 440
    invoke-virtual {p1}, Lcom/autoxing/delivery/js/model/LogInfo;->getTag()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "|"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/autoai/research/atools/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
