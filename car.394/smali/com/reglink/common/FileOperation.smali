.class public Lcom/reglink/common/FileOperation;
.super Ljava/lang/Object;
.source "FileOperation.java"


# static fields
.field private static TAG:Ljava/lang/String; = "FileOperation"


# instance fields
.field private canceled:Z

.field private filter:Ljava/io/FilenameFilter;

.field private isWorking:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 15
    iput-boolean v0, p0, Lcom/reglink/common/FileOperation;->isWorking:Z

    .line 16
    iput-boolean v0, p0, Lcom/reglink/common/FileOperation;->canceled:Z

    .line 17
    new-instance v0, Lcom/reglink/common/FileOperation$1;

    invoke-direct {v0, p0}, Lcom/reglink/common/FileOperation$1;-><init>(Lcom/reglink/common/FileOperation;)V

    iput-object v0, p0, Lcom/reglink/common/FileOperation;->filter:Ljava/io/FilenameFilter;

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    const/4 v0, 0x1

    .line 195
    iput-boolean v0, p0, Lcom/reglink/common/FileOperation;->canceled:Z

    return-void
.end method

.method public copyFile(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 10

    const/4 v0, 0x0

    if-eqz p1, :cond_6

    if-nez p2, :cond_0

    goto/16 :goto_3

    .line 119
    :cond_0
    iput-boolean v0, p0, Lcom/reglink/common/FileOperation;->canceled:Z

    const/4 v1, 0x1

    .line 120
    iput-boolean v1, p0, Lcom/reglink/common/FileOperation;->isWorking:Z

    .line 122
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 123
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 124
    invoke-static {p1}, Lcom/reglink/common/FilePath;->fileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    new-array v5, v4, [Ljava/lang/String;

    aput-object p2, v5, v0

    aput-object v3, v5, v1

    .line 125
    invoke-static {v5}, Lcom/reglink/common/FilePath;->join([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 126
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move v5, v1

    .line 128
    :goto_0
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_1

    new-array v6, v4, [Ljava/lang/String;

    aput-object p2, v6, v0

    .line 129
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    add-int/lit8 v8, v5, 0x1

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v6, v1

    invoke-static {v6}, Lcom/reglink/common/FilePath;->join([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 130
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move v5, v8

    goto :goto_0

    .line 134
    :cond_1
    iget-object v3, p0, Lcom/reglink/common/FileOperation;->filter:Ljava/io/FilenameFilter;

    invoke-virtual {v2, v3}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v2

    array-length v3, v2

    move v5, v0

    :goto_1
    if-ge v5, v3, :cond_4

    aget-object v7, v2, v5

    .line 135
    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/reglink/common/FileOperation;->isNormalFile(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    iget-boolean v8, p0, Lcom/reglink/common/FileOperation;->canceled:Z

    if-nez v8, :cond_2

    new-array v8, v4, [Ljava/lang/String;

    aput-object p2, v8, v0

    .line 136
    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v1

    invoke-static {v8}, Lcom/reglink/common/FilePath;->join([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 137
    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7, v8}, Lcom/reglink/common/FileOperation;->copyFile(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_2

    move v1, v0

    goto :goto_2

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 144
    :cond_3
    invoke-virtual {p0, p1, p2}, Lcom/reglink/common/FileOperation;->doCopy(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    .line 146
    :cond_4
    :goto_2
    iget-boolean v2, p0, Lcom/reglink/common/FileOperation;->canceled:Z

    const-string v3, ","

    if-eqz v2, :cond_5

    sget-object v2, Lcom/reglink/common/FileOperation;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Cancel CopyFile >>> "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/reglink/common/LogUtil;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    :cond_5
    sget-object v2, Lcom/reglink/common/FileOperation;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "CopyFile >>> "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/reglink/common/LogUtil;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    iput-boolean v0, p0, Lcom/reglink/common/FileOperation;->isWorking:Z

    return v1

    .line 116
    :cond_6
    :goto_3
    sget-object p1, Lcom/reglink/common/FileOperation;->TAG:Ljava/lang/String;

    const-string p2, "CopyFile: null parameter"

    invoke-static {p1, p2}, Lcom/reglink/common/LogUtil;->LOGE(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public deleteFile(Ljava/lang/String;)Z
    .locals 7

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 28
    sget-object p1, Lcom/reglink/common/FileOperation;->TAG:Ljava/lang/String;

    const-string v1, "DeleteFile: null parameter"

    invoke-static {p1, v1}, Lcom/reglink/common/LogUtil;->LOGE(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_0
    const/4 v1, 0x1

    .line 32
    iput-boolean v1, p0, Lcom/reglink/common/FileOperation;->isWorking:Z

    .line 33
    iput-boolean v0, p0, Lcom/reglink/common/FileOperation;->canceled:Z

    .line 34
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 35
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 37
    iget-object v2, p0, Lcom/reglink/common/FileOperation;->filter:Ljava/io/FilenameFilter;

    invoke-virtual {v1, v2}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v2

    array-length v3, v2

    move v4, v0

    :goto_0
    if-ge v4, v3, :cond_2

    aget-object v5, v2, v4

    .line 38
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/reglink/common/FileOperation;->isNormalFile(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    iget-boolean v6, p0, Lcom/reglink/common/FileOperation;->canceled:Z

    if-nez v6, :cond_1

    .line 39
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/reglink/common/FileOperation;->deleteFile(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 45
    :cond_2
    :goto_1
    iget-boolean v2, p0, Lcom/reglink/common/FileOperation;->canceled:Z

    if-nez v2, :cond_3

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v1

    goto :goto_2

    .line 46
    :cond_3
    sget-object v1, Lcom/reglink/common/FileOperation;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Cancel DeleteFile >>> "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/reglink/common/LogUtil;->LOGW(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v0

    .line 47
    :goto_2
    sget-object v2, Lcom/reglink/common/FileOperation;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "DeleteFile >>> "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/reglink/common/LogUtil;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    iput-boolean v0, p0, Lcom/reglink/common/FileOperation;->isWorking:Z

    return v1
.end method

.method doCopy(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 10

    .line 54
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 55
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_a

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_10

    :cond_0
    const/4 v1, 0x0

    .line 62
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_9
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_7
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 63
    :try_start_1
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 64
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_1

    .line 65
    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    move-result v4
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-nez v4, :cond_1

    .line 103
    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 107
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :goto_0
    return v2

    :cond_1
    const/4 v4, 0x2

    :try_start_3
    new-array v5, v4, [Ljava/lang/String;

    aput-object p2, v5, v2

    .line 69
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    aput-object v6, v5, v7

    invoke-static {v5}, Lcom/reglink/common/FilePath;->join([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 70
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move v5, v7

    .line 72
    :goto_1
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 73
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/reglink/common/FilePath;->fileNameBase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    add-int/lit8 v8, v5, 0x1

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 74
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/reglink/common/FilePath;->fileExt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v6, v4, [Ljava/lang/String;

    aput-object p2, v6, v2

    aput-object v5, v6, v7

    .line 75
    invoke-static {v6}, Lcom/reglink/common/FilePath;->join([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 76
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move v5, v8

    goto :goto_1

    .line 79
    :cond_2
    invoke-virtual {v6}, Ljava/io/File;->createNewFile()Z

    move-result p2
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_6
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-nez p2, :cond_3

    .line 103
    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_2

    :catch_1
    move-exception p1

    .line 107
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :goto_2
    return v2

    .line 82
    :cond_3
    :try_start_5
    new-instance p2, Ljava/io/FileOutputStream;

    invoke-direct {p2, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_6
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    const v0, 0x19000

    :try_start_6
    new-array v1, v0, [B

    .line 86
    :goto_3
    invoke-virtual {v3, v1, v2, v0}, Ljava/io/FileInputStream;->read([BII)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_4

    iget-boolean v5, p0, Lcom/reglink/common/FileOperation;->canceled:Z

    if-nez v5, :cond_4

    .line 87
    invoke-virtual {p2, v1, v2, v4}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_6
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_4
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_3

    .line 103
    :cond_4
    :try_start_7
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    .line 105
    invoke-virtual {p2}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    goto :goto_4

    :catch_2
    move-exception p1

    .line 107
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :goto_4
    move v2, v7

    goto/16 :goto_b

    :catchall_0
    move-exception p1

    goto :goto_5

    :catch_3
    move-exception p1

    goto :goto_6

    :catch_4
    move-exception v0

    move-object v1, v3

    move-object v9, v0

    move-object v0, p2

    move-object p2, v9

    goto :goto_a

    :catchall_1
    move-exception p1

    move-object p2, v1

    :goto_5
    move-object v1, v3

    goto/16 :goto_c

    :catch_5
    move-exception p1

    move-object p2, v1

    :goto_6
    move-object v1, v3

    goto :goto_7

    :catch_6
    move-exception p2

    move-object v0, v1

    move-object v1, v3

    goto :goto_a

    :catchall_2
    move-exception p1

    move-object p2, v1

    goto :goto_c

    :catch_7
    move-exception p1

    move-object p2, v1

    .line 99
    :goto_7
    :try_start_8
    sget-object v0, Lcom/reglink/common/FileOperation;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "copyFile: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/reglink/common/LogUtil;->LOGE(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    if-eqz v1, :cond_5

    .line 103
    :try_start_9
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    goto :goto_8

    :catch_8
    move-exception p1

    goto :goto_9

    :cond_5
    :goto_8
    if-eqz p2, :cond_7

    .line 105
    invoke-virtual {p2}, Ljava/io/FileOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_8

    goto :goto_b

    .line 107
    :goto_9
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_b

    :catchall_3
    move-exception p1

    goto :goto_c

    :catch_9
    move-exception p2

    move-object v0, v1

    .line 95
    :goto_a
    :try_start_a
    sget-object v3, Lcom/reglink/common/FileOperation;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "copyFile: file not found, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/reglink/common/LogUtil;->LOGE(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    invoke-static {p2}, Lcom/reglink/common/ExceptionHandler;->handleException(Ljava/lang/Exception;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    if-eqz v1, :cond_6

    .line 103
    :try_start_b
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    :cond_6
    if-eqz v0, :cond_7

    .line 105
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_8

    :cond_7
    :goto_b
    return v2

    :catchall_4
    move-exception p1

    move-object p2, v0

    :goto_c
    if-eqz v1, :cond_8

    .line 103
    :try_start_c
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    goto :goto_d

    :catch_a
    move-exception p2

    goto :goto_e

    :cond_8
    :goto_d
    if-eqz p2, :cond_9

    .line 105
    invoke-virtual {p2}, Ljava/io/FileOutputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_a

    goto :goto_f

    .line 107
    :goto_e
    invoke-virtual {p2}, Ljava/io/IOException;->printStackTrace()V

    .line 108
    :cond_9
    :goto_f
    throw p1

    .line 56
    :cond_a
    :goto_10
    sget-object p2, Lcom/reglink/common/FileOperation;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "doCopy: file not exist or is directory, "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/reglink/common/LogUtil;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    return v2
.end method

.method public isNormalFile(Ljava/lang/String;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public isWorking()Z
    .locals 1

    .line 191
    iget-boolean v0, p0, Lcom/reglink/common/FileOperation;->isWorking:Z

    return v0
.end method

.method public moveFile(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    .line 153
    sget-object v0, Lcom/reglink/common/FileOperation;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "MoveFile >>> "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/reglink/common/LogUtil;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 159
    :cond_0
    iput-boolean v0, p0, Lcom/reglink/common/FileOperation;->canceled:Z

    const/4 v1, 0x1

    .line 160
    iput-boolean v1, p0, Lcom/reglink/common/FileOperation;->isWorking:Z

    .line 161
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    aput-object p2, v3, v0

    .line 162
    invoke-static {p1}, Lcom/reglink/common/FilePath;->fileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v3, v1

    invoke-static {v3}, Lcom/reglink/common/FilePath;->join([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 164
    :try_start_0
    new-instance p2, Ljava/io/File;

    invoke-direct {p2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 166
    sget-object p2, Lcom/reglink/common/FileOperation;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Fail to move file,"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/reglink/common/LogUtil;->LOGE(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    iput-boolean v0, p0, Lcom/reglink/common/FileOperation;->isWorking:Z

    return v0

    .line 156
    :cond_1
    :goto_0
    sget-object p1, Lcom/reglink/common/FileOperation;->TAG:Ljava/lang/String;

    const-string p2, "MoveFile: null parameter"

    invoke-static {p1, p2}, Lcom/reglink/common/LogUtil;->LOGE(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public rename(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    .line 172
    sget-object v0, Lcom/reglink/common/FileOperation;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "RenameFile >>> "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/reglink/common/LogUtil;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 178
    :cond_0
    iput-boolean v0, p0, Lcom/reglink/common/FileOperation;->canceled:Z

    const/4 v1, 0x1

    .line 179
    iput-boolean v1, p0, Lcom/reglink/common/FileOperation;->isWorking:Z

    .line 180
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 183
    :try_start_0
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 185
    sget-object p2, Lcom/reglink/common/FileOperation;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Fail to move file,"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/reglink/common/LogUtil;->LOGE(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    iput-boolean v0, p0, Lcom/reglink/common/FileOperation;->isWorking:Z

    return v0

    .line 175
    :cond_1
    :goto_0
    sget-object p1, Lcom/reglink/common/FileOperation;->TAG:Ljava/lang/String;

    const-string p2, "RenameFile: null parameter"

    invoke-static {p1, p2}, Lcom/reglink/common/LogUtil;->LOGE(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method
