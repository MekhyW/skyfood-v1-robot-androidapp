.class public Lcom/autoxing/delivery/util/ZipUtils;
.super Ljava/lang/Object;
.source "ZipUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/autoxing/delivery/util/ZipUtils$OnZipListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ZipUtils"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getFileContent(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 244
    invoke-static {}, Lcom/autoxing/delivery/bean/TimeCost;->newInstance()Lcom/autoxing/delivery/bean/TimeCost;

    move-result-object v0

    const/4 v1, 0x0

    .line 247
    :try_start_0
    new-instance v2, Lnet/lingala/zip4j/ZipFile;

    invoke-direct {v2, p0}, Lnet/lingala/zip4j/ZipFile;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lnet/lingala/zip4j/ZipFile;->getFileHeaders()Ljava/util/List;

    move-result-object v2

    .line 248
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnet/lingala/zip4j/model/FileHeader;

    .line 249
    invoke-virtual {v3}, Lnet/lingala/zip4j/model/FileHeader;->getFileName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 250
    new-instance v4, Lnet/lingala/zip4j/ZipFile;

    invoke-direct {v4, p0}, Lnet/lingala/zip4j/ZipFile;-><init>(Ljava/lang/String;)V

    .line 251
    invoke-virtual {v4, v3}, Lnet/lingala/zip4j/ZipFile;->getInputStream(Lnet/lingala/zip4j/model/FileHeader;)Lnet/lingala/zip4j/io/inputstream/ZipInputStream;

    move-result-object v3

    .line 252
    invoke-static {v3}, Lcom/autoxing/delivery/util/ZipUtils;->readZipFile(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v1

    .line 253
    invoke-virtual {v3}, Lnet/lingala/zip4j/io/inputstream/ZipInputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 257
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 p0, 0x1

    aput-object p1, v2, p0

    const/4 p0, 0x2

    aput-object v1, v2, p0

    .line 259
    invoke-virtual {v0}, Lcom/autoxing/delivery/bean/TimeCost;->cost()J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    const/4 p1, 0x3

    aput-object p0, v2, p1

    const-string p0, "getFileContent(%s,%s) = %s, timeCost = %d ms"

    invoke-static {p0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "ZipUtils"

    invoke-static {p1, p0}, Lcom/autoai/research/atools/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method public static getFileList(Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 219
    invoke-static {}, Lcom/autoxing/delivery/bean/TimeCost;->newInstance()Lcom/autoxing/delivery/bean/TimeCost;

    move-result-object v0

    .line 220
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 222
    :try_start_0
    new-instance v2, Lnet/lingala/zip4j/ZipFile;

    invoke-direct {v2, p0}, Lnet/lingala/zip4j/ZipFile;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lnet/lingala/zip4j/ZipFile;->getFileHeaders()Ljava/util/List;

    move-result-object v2

    .line 223
    invoke-interface {v2}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v3, Lcom/autoxing/delivery/util/ZipUtils$$ExternalSyntheticLambda0;

    invoke-direct {v3, v1}, Lcom/autoxing/delivery/util/ZipUtils$$ExternalSyntheticLambda0;-><init>(Ljava/util/List;)V

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V
    :try_end_0
    .catch Lnet/lingala/zip4j/exception/ZipException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 225
    invoke-virtual {v2}, Lnet/lingala/zip4j/exception/ZipException;->printStackTrace()V

    :goto_0
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    .line 227
    invoke-virtual {v0}, Lcom/autoxing/delivery/bean/TimeCost;->cost()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    const/4 v0, 0x1

    aput-object p0, v2, v0

    const-string p0, "getFileList(%s) timeCost = %d ms"

    invoke-static {p0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "ZipUtils"

    invoke-static {v0, p0}, Lcom/autoai/research/atools/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method static getZipParameters()Lnet/lingala/zip4j/model/ZipParameters;
    .locals 2

    .line 211
    new-instance v0, Lnet/lingala/zip4j/model/ZipParameters;

    invoke-direct {v0}, Lnet/lingala/zip4j/model/ZipParameters;-><init>()V

    const/4 v1, 0x1

    .line 212
    invoke-virtual {v0, v1}, Lnet/lingala/zip4j/model/ZipParameters;->setEncryptFiles(Z)V

    .line 213
    sget-object v1, Lnet/lingala/zip4j/model/enums/EncryptionMethod;->AES:Lnet/lingala/zip4j/model/enums/EncryptionMethod;

    invoke-virtual {v0, v1}, Lnet/lingala/zip4j/model/ZipParameters;->setEncryptionMethod(Lnet/lingala/zip4j/model/enums/EncryptionMethod;)V

    .line 214
    sget-object v1, Lnet/lingala/zip4j/model/enums/AesKeyStrength;->KEY_STRENGTH_256:Lnet/lingala/zip4j/model/enums/AesKeyStrength;

    invoke-virtual {v0, v1}, Lnet/lingala/zip4j/model/ZipParameters;->setAesKeyStrength(Lnet/lingala/zip4j/model/enums/AesKeyStrength;)V

    return-object v0
.end method

.method public static isValidZipFile(Ljava/io/File;)Z
    .locals 7

    .line 232
    invoke-static {}, Lcom/autoxing/delivery/bean/TimeCost;->newInstance()Lcom/autoxing/delivery/bean/TimeCost;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 235
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v3, Lnet/lingala/zip4j/ZipFile;

    invoke-direct {v3, p0}, Lnet/lingala/zip4j/ZipFile;-><init>(Ljava/io/File;)V

    invoke-virtual {v3}, Lnet/lingala/zip4j/ZipFile;->isValidZipFile()Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v3, :cond_0

    move v3, v1

    goto :goto_0

    :catch_0
    move-exception v3

    .line 237
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    move v3, v2

    :goto_0
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    .line 239
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v4, v2

    invoke-virtual {v0}, Lcom/autoxing/delivery/bean/TimeCost;->cost()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    aput-object p0, v4, v1

    const-string p0, "isValidZipFile(%s) timeCost = %d ms"

    invoke-static {p0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "ZipUtils"

    invoke-static {v0, p0}, Lcom/autoai/research/atools/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v3
.end method

.method static synthetic lambda$getFileList$0(Ljava/util/List;Lnet/lingala/zip4j/model/FileHeader;)V
    .locals 0

    .line 223
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/FileHeader;->getFileName()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static packageZip(Ljava/io/File;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    .line 46
    invoke-static {v0}, Lcom/autoxing/delivery/util/ZipUtils;->validationIsNull([Ljava/lang/Object;)V

    .line 47
    new-instance v0, Lnet/lingala/zip4j/ZipFile;

    invoke-direct {v0, p1}, Lnet/lingala/zip4j/ZipFile;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Lnet/lingala/zip4j/ZipFile;->addFile(Ljava/io/File;)V

    return-void
.end method

.method public static packageZip(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x2

    aput-object p2, v0, v1

    .line 61
    invoke-static {v0}, Lcom/autoxing/delivery/util/ZipUtils;->validationIsNull([Ljava/lang/Object;)V

    .line 62
    new-instance v0, Lnet/lingala/zip4j/ZipFile;

    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object p2

    invoke-direct {v0, p1, p2}, Lnet/lingala/zip4j/ZipFile;-><init>(Ljava/lang/String;[C)V

    .line 63
    invoke-static {}, Lcom/autoxing/delivery/util/ZipUtils;->getZipParameters()Lnet/lingala/zip4j/model/ZipParameters;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lnet/lingala/zip4j/ZipFile;->addFile(Ljava/io/File;Lnet/lingala/zip4j/model/ZipParameters;)V

    return-void
.end method

.method public static packageZip(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    .line 106
    invoke-static {v0}, Lcom/autoxing/delivery/util/ZipUtils;->validationIsNull([Ljava/lang/Object;)V

    .line 107
    new-instance v0, Lnet/lingala/zip4j/ZipFile;

    invoke-direct {v0, p1}, Lnet/lingala/zip4j/ZipFile;-><init>(Ljava/lang/String;)V

    new-instance p1, Ljava/io/File;

    invoke-direct {p1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lnet/lingala/zip4j/ZipFile;->addFolder(Ljava/io/File;)V

    return-void
.end method

.method public static packageZip(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x2

    aput-object p2, v0, v1

    .line 121
    invoke-static {v0}, Lcom/autoxing/delivery/util/ZipUtils;->validationIsNull([Ljava/lang/Object;)V

    .line 122
    new-instance v0, Lnet/lingala/zip4j/ZipFile;

    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object p2

    invoke-direct {v0, p1, p2}, Lnet/lingala/zip4j/ZipFile;-><init>(Ljava/lang/String;[C)V

    .line 123
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/autoxing/delivery/util/ZipUtils;->getZipParameters()Lnet/lingala/zip4j/model/ZipParameters;

    move-result-object p0

    invoke-virtual {v0, p1, p0}, Lnet/lingala/zip4j/ZipFile;->addFolder(Ljava/io/File;Lnet/lingala/zip4j/model/ZipParameters;)V

    return-void
.end method

.method public static packageZip(Ljava/util/List;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    .line 76
    invoke-static {v0}, Lcom/autoxing/delivery/util/ZipUtils;->validationIsNull([Ljava/lang/Object;)V

    .line 77
    new-instance v0, Lnet/lingala/zip4j/ZipFile;

    invoke-direct {v0, p1}, Lnet/lingala/zip4j/ZipFile;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Lnet/lingala/zip4j/ZipFile;->addFiles(Ljava/util/List;)V

    return-void
.end method

.method public static packageZip(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x2

    aput-object p2, v0, v1

    .line 91
    invoke-static {v0}, Lcom/autoxing/delivery/util/ZipUtils;->validationIsNull([Ljava/lang/Object;)V

    .line 92
    new-instance v0, Lnet/lingala/zip4j/ZipFile;

    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object p2

    invoke-direct {v0, p1, p2}, Lnet/lingala/zip4j/ZipFile;-><init>(Ljava/lang/String;[C)V

    .line 93
    invoke-static {}, Lcom/autoxing/delivery/util/ZipUtils;->getZipParameters()Lnet/lingala/zip4j/model/ZipParameters;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lnet/lingala/zip4j/ZipFile;->addFiles(Ljava/util/List;Lnet/lingala/zip4j/model/ZipParameters;)V

    return-void
.end method

.method public static packageZip(Ljava/util/List;Ljava/lang/String;Lcom/autoxing/delivery/util/ZipUtils$OnZipListener;)Z
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/autoxing/delivery/util/ZipUtils$OnZipListener;",
            ")Z"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 290
    invoke-static {}, Lcom/autoxing/delivery/bean/TimeCost;->newInstance()Lcom/autoxing/delivery/bean/TimeCost;

    move-result-object v2

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    const/4 v6, 0x1

    aput-object v1, v4, v6

    .line 291
    invoke-static {v4}, Lcom/autoxing/delivery/util/ZipUtils;->validationIsNull([Ljava/lang/Object;)V

    .line 292
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move v7, v5

    .line 293
    :goto_0
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->size()I

    move-result v8

    if-ge v7, v8, :cond_0

    .line 294
    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/io/File;

    invoke-virtual {v8}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_0
    new-array v7, v5, [Ljava/lang/String;

    .line 296
    invoke-interface {v4, v7}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 297
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v7

    .line 298
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_1

    .line 299
    invoke-virtual {v7}, Ljava/io/File;->mkdirs()Z

    .line 301
    :cond_1
    new-instance v7, Lnet/lingala/zip4j/ZipFile;

    invoke-direct {v7, v1}, Lnet/lingala/zip4j/ZipFile;-><init>(Ljava/lang/String;)V

    .line 302
    invoke-virtual {v7, v6}, Lnet/lingala/zip4j/ZipFile;->setRunInThread(Z)V

    .line 303
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    .line 304
    invoke-virtual {v7}, Lnet/lingala/zip4j/ZipFile;->getProgressMonitor()Lnet/lingala/zip4j/progress/ProgressMonitor;

    move-result-object v10

    .line 306
    :try_start_0
    invoke-virtual {v7, v0}, Lnet/lingala/zip4j/ZipFile;->addFiles(Ljava/util/List;)V
    :try_end_0
    .catch Lnet/lingala/zip4j/exception/ZipException; {:try_start_0 .. :try_end_0} :catch_2

    .line 313
    :goto_1
    invoke-virtual {v10}, Lnet/lingala/zip4j/progress/ProgressMonitor;->getState()Lnet/lingala/zip4j/progress/ProgressMonitor$State;

    move-result-object v0

    sget-object v7, Lnet/lingala/zip4j/progress/ProgressMonitor$State;->BUSY:Lnet/lingala/zip4j/progress/ProgressMonitor$State;

    const-wide/16 v11, 0x3e8

    const-string v13, "\u538b\u7f29\u7ed3\u679c="

    const-string v14, ",\u538b\u7f29\u8fdb\u5ea6\uff1a"

    const-string v15, ",\u538b\u7f29\u72b6\u6001\uff1a"

    const-string v3, "\u538b\u7f29\u4efb\u52a1\uff1a"

    const-string v6, "ZipUtils"

    if-ne v0, v7, :cond_3

    .line 314
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Lnet/lingala/zip4j/progress/ProgressMonitor;->getCurrentTask()Lnet/lingala/zip4j/progress/ProgressMonitor$Task;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v10}, Lnet/lingala/zip4j/progress/ProgressMonitor;->getState()Lnet/lingala/zip4j/progress/ProgressMonitor$State;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v10}, Lnet/lingala/zip4j/progress/ProgressMonitor;->getPercentDone()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v10}, Lnet/lingala/zip4j/progress/ProgressMonitor;->getResult()Lnet/lingala/zip4j/progress/ProgressMonitor$Result;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10}, Lnet/lingala/zip4j/progress/ProgressMonitor;->getException()Ljava/lang/Exception;

    move-result-object v3

    invoke-static {v6, v0, v3}, Lcom/autoai/research/atools/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 315
    invoke-virtual {v10}, Lnet/lingala/zip4j/progress/ProgressMonitor;->getPercentDone()I

    move-result v0

    if-lez v0, :cond_2

    .line 318
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long/2addr v6, v8

    int-to-long v13, v0

    .line 319
    div-long/2addr v6, v13

    rsub-int/lit8 v3, v0, 0x64

    int-to-long v13, v3

    mul-long/2addr v6, v13

    goto :goto_2

    :cond_2
    const-wide/16 v6, -0x1

    :goto_2
    move-object/from16 v3, p2

    .line 321
    invoke-interface {v3, v0, v6, v7}, Lcom/autoxing/delivery/util/ZipUtils$OnZipListener;->onProgress(IJ)V

    .line 324
    :try_start_1
    invoke-static {v11, v12}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    move-object v6, v0

    .line 326
    invoke-virtual {v6}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_3
    const/4 v3, 0x2

    const/4 v6, 0x1

    goto :goto_1

    .line 329
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Lnet/lingala/zip4j/progress/ProgressMonitor;->getCurrentTask()Lnet/lingala/zip4j/progress/ProgressMonitor$Task;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v10}, Lnet/lingala/zip4j/progress/ProgressMonitor;->getState()Lnet/lingala/zip4j/progress/ProgressMonitor$State;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v10}, Lnet/lingala/zip4j/progress/ProgressMonitor;->getPercentDone()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v10}, Lnet/lingala/zip4j/progress/ProgressMonitor;->getResult()Lnet/lingala/zip4j/progress/ProgressMonitor$Result;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10}, Lnet/lingala/zip4j/progress/ProgressMonitor;->getException()Ljava/lang/Exception;

    move-result-object v3

    invoke-static {v6, v0, v3}, Lcom/autoai/research/atools/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 330
    invoke-virtual {v10}, Lnet/lingala/zip4j/progress/ProgressMonitor;->getResult()Lnet/lingala/zip4j/progress/ProgressMonitor$Result;

    move-result-object v0

    .line 331
    sget-object v3, Lnet/lingala/zip4j/progress/ProgressMonitor$Result;->SUCCESS:Lnet/lingala/zip4j/progress/ProgressMonitor$Result;

    if-ne v0, v3, :cond_4

    const/4 v0, 0x1

    goto :goto_5

    .line 335
    :cond_4
    sget-object v3, Lnet/lingala/zip4j/progress/ProgressMonitor$Result;->ERROR:Lnet/lingala/zip4j/progress/ProgressMonitor$Result;

    if-eq v0, v3, :cond_6

    sget-object v3, Lnet/lingala/zip4j/progress/ProgressMonitor$Result;->CANCELLED:Lnet/lingala/zip4j/progress/ProgressMonitor$Result;

    if-ne v0, v3, :cond_5

    goto :goto_4

    .line 339
    :cond_5
    :try_start_2
    invoke-static {v11, v12}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_3

    :catch_1
    move-exception v0

    move-object v3, v0

    .line 341
    invoke-virtual {v3}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_3

    :cond_6
    :goto_4
    move v0, v5

    :goto_5
    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v1, v3, v5

    const/4 v1, 0x1

    aput-object v4, v3, v1

    .line 344
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v4, 0x2

    aput-object v1, v3, v4

    invoke-virtual {v2}, Lcom/autoxing/delivery/bean/TimeCost;->cost()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v3, v2

    const-string v1, "packageZip(%s,%s) = %b, timeCost = %d ms"

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Lcom/autoai/research/atools/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :catch_2
    move-exception v0

    move-object v1, v0

    .line 308
    invoke-virtual {v1}, Lnet/lingala/zip4j/exception/ZipException;->printStackTrace()V

    return v5
.end method

.method private static readZipFile(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 2

    .line 264
    :try_start_0
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    invoke-direct {v1, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 265
    :try_start_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 267
    :goto_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 268
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 270
    :cond_0
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 271
    :try_start_2
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    return-object p0

    :catchall_0
    move-exception p0

    .line 264
    :try_start_3
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    :try_start_4
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw p0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception p0

    .line 272
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const-string p0, ""

    return-object p0
.end method

.method public static final removeFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 349
    new-instance v0, Lnet/lingala/zip4j/ZipFile;

    invoke-direct {v0, p0}, Lnet/lingala/zip4j/ZipFile;-><init>(Ljava/lang/String;)V

    .line 350
    invoke-virtual {v0}, Lnet/lingala/zip4j/ZipFile;->isValidZipFile()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 352
    :try_start_0
    invoke-virtual {v0, p1}, Lnet/lingala/zip4j/ZipFile;->removeFile(Ljava/lang/String;)V
    :try_end_0
    .catch Lnet/lingala/zip4j/exception/ZipException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 354
    invoke-virtual {p0}, Lnet/lingala/zip4j/exception/ZipException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public static unzipAll(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    .line 136
    invoke-static {v0}, Lcom/autoxing/delivery/util/ZipUtils;->validationIsNull([Ljava/lang/Object;)V

    .line 137
    new-instance v0, Lnet/lingala/zip4j/ZipFile;

    invoke-direct {v0, p0}, Lnet/lingala/zip4j/ZipFile;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lnet/lingala/zip4j/ZipFile;->extractAll(Ljava/lang/String;)V

    return-void
.end method

.method public static unzipAll(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    .line 151
    invoke-static {v0}, Lcom/autoxing/delivery/util/ZipUtils;->validationIsNull([Ljava/lang/Object;)V

    .line 152
    new-instance v0, Lnet/lingala/zip4j/ZipFile;

    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object p2

    invoke-direct {v0, p0, p2}, Lnet/lingala/zip4j/ZipFile;-><init>(Ljava/lang/String;[C)V

    invoke-virtual {v0, p1}, Lnet/lingala/zip4j/ZipFile;->extractAll(Ljava/lang/String;)V

    return-void
.end method

.method public static unzipTargetFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 167
    new-instance v0, Lnet/lingala/zip4j/ZipFile;

    invoke-direct {v0, p0}, Lnet/lingala/zip4j/ZipFile;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2}, Lnet/lingala/zip4j/ZipFile;->extractFile(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static unzipTargetFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 184
    new-instance v0, Lnet/lingala/zip4j/ZipFile;

    invoke-virtual {p3}, Ljava/lang/String;->toCharArray()[C

    move-result-object p3

    invoke-direct {v0, p0, p3}, Lnet/lingala/zip4j/ZipFile;-><init>(Ljava/lang/String;[C)V

    invoke-virtual {v0, p1, p2}, Lnet/lingala/zip4j/ZipFile;->extractFile(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static varargs validationIsNull([Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 196
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_1

    .line 197
    aget-object v1, p0, v0

    if-eqz v1, :cond_0

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/autoxing/delivery/util/Utils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 198
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "param is null"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    return-void
.end method
