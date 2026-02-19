.class public Lcom/reglink/common/FileCopyUtil;
.super Ljava/lang/Object;
.source "FileCopyUtil.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/reglink/common/FileCopyUtil$Callback;
    }
.end annotation


# static fields
.field static final BUFFER_SIZE:I = 0x2004

.field private static final MSG_Prepare:I = 0x2

.field private static final MSG_Start:I = 0x1

.field public static final OP_COPY:I = 0x1

.field public static final OP_MKDIR:I = 0x2

.field private static final TAG:Ljava/lang/String; = "FileCopyUtil"


# instance fields
.field H:Landroid/os/Handler;

.field buffer:[B

.field callback:Lcom/reglink/common/FileCopyUtil$Callback;

.field private cancelled:Z

.field private completed:Z

.field private currentFile:Ljava/lang/String;

.field private currentFileSize:J

.field private currentProgress:J

.field private dest:Ljava/lang/String;

.field private dstFile:Ljava/io/File;

.field exception:Ljava/lang/Exception;

.field private fileCount:I

.field private fileList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private progress:I

.field private src:Ljava/lang/String;

.field private srcFile:Ljava/io/File;

.field thr:Landroid/os/HandlerThread;

.field private totalFileSize:J

.field private totalProgress:J


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/reglink/common/FileCopyUtil$Callback;)V
    .locals 1

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 48
    iput-boolean v0, p0, Lcom/reglink/common/FileCopyUtil;->cancelled:Z

    .line 49
    iput-boolean v0, p0, Lcom/reglink/common/FileCopyUtil;->completed:Z

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/reglink/common/FileCopyUtil;->fileList:Ljava/util/ArrayList;

    .line 73
    iput-object p1, p0, Lcom/reglink/common/FileCopyUtil;->src:Ljava/lang/String;

    .line 74
    iput-object p2, p0, Lcom/reglink/common/FileCopyUtil;->dest:Ljava/lang/String;

    .line 75
    iput-object p3, p0, Lcom/reglink/common/FileCopyUtil;->callback:Lcom/reglink/common/FileCopyUtil$Callback;

    return-void
.end method

.method private copyFile(Ljava/io/File;Ljava/io/File;)V
    .locals 9

    .line 192
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "copyFile "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FileCopyUtil"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/reglink/common/FileCopyUtil;->currentFile:Ljava/lang/String;

    .line 194
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/reglink/common/FileCopyUtil;->currentFileSize:J

    const-wide/16 v0, 0x0

    .line 195
    iput-wide v0, p0, Lcom/reglink/common/FileCopyUtil;->currentProgress:J

    .line 196
    iget v0, p0, Lcom/reglink/common/FileCopyUtil;->progress:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/reglink/common/FileCopyUtil;->progress:I

    const/4 v0, 0x0

    .line 197
    iput-object v0, p0, Lcom/reglink/common/FileCopyUtil;->exception:Ljava/lang/Exception;

    .line 198
    iget-object v2, p0, Lcom/reglink/common/FileCopyUtil;->callback:Lcom/reglink/common/FileCopyUtil$Callback;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, p0, v3, v1}, Lcom/reglink/common/FileCopyUtil$Callback;->onFileStart(Lcom/reglink/common/FileCopyUtil;Ljava/lang/String;I)V

    .line 205
    :try_start_0
    new-instance v2, Ljava/io/BufferedInputStream;

    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_a
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_8
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 206
    :try_start_1
    new-instance v3, Ljava/io/BufferedOutputStream;

    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 207
    :goto_0
    :try_start_2
    iget-boolean p2, p0, Lcom/reglink/common/FileCopyUtil;->cancelled:Z

    const/4 v4, 0x0

    if-nez p2, :cond_1

    invoke-virtual {p0}, Lcom/reglink/common/FileCopyUtil;->getCurrentProgress()J

    move-result-wide v5

    invoke-virtual {p0}, Lcom/reglink/common/FileCopyUtil;->getCurrentFileSize()J

    move-result-wide v7

    cmp-long p2, v5, v7

    if-gez p2, :cond_1

    .line 208
    iget-object p2, p0, Lcom/reglink/common/FileCopyUtil;->buffer:[B

    invoke-virtual {v2, p2}, Ljava/io/BufferedInputStream;->read([B)I

    move-result p2

    const/4 v5, -0x1

    if-ne p2, v5, :cond_0

    goto :goto_1

    .line 213
    :cond_0
    iget-object v5, p0, Lcom/reglink/common/FileCopyUtil;->buffer:[B

    invoke-virtual {v3, v5, v4, p2}, Ljava/io/BufferedOutputStream;->write([BII)V

    .line 214
    invoke-virtual {p0}, Lcom/reglink/common/FileCopyUtil;->getCurrentProgress()J

    move-result-wide v4

    int-to-long v6, p2

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/reglink/common/FileCopyUtil;->currentProgress:J
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :cond_1
    move v1, v4

    .line 224
    :goto_1
    :try_start_3
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2

    :catch_0
    move-exception p2

    .line 226
    invoke-virtual {p2}, Ljava/io/IOException;->printStackTrace()V

    .line 229
    :goto_2
    :try_start_4
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_b

    :catch_1
    move-exception p2

    .line 231
    invoke-virtual {p2}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_b

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_2
    move-exception p2

    goto :goto_7

    :catch_3
    move-exception p2

    goto :goto_9

    :catchall_1
    move-exception p1

    move-object v3, v0

    :goto_3
    move-object v0, v2

    goto :goto_4

    :catch_4
    move-exception p2

    move-object v3, v0

    goto :goto_7

    :catch_5
    move-exception p2

    move-object v3, v0

    goto :goto_9

    :catchall_2
    move-exception p1

    move-object v3, v0

    :goto_4
    if-eqz v0, :cond_2

    .line 224
    :try_start_5
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_6

    goto :goto_5

    :catch_6
    move-exception p2

    .line 226
    invoke-virtual {p2}, Ljava/io/IOException;->printStackTrace()V

    :cond_2
    :goto_5
    if-eqz v3, :cond_3

    .line 229
    :try_start_6
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_7

    goto :goto_6

    :catch_7
    move-exception p2

    .line 231
    invoke-virtual {p2}, Ljava/io/IOException;->printStackTrace()V

    .line 232
    :cond_3
    :goto_6
    throw p1

    :catch_8
    move-exception p2

    move-object v2, v0

    move-object v3, v2

    :goto_7
    move-object v0, p2

    if-eqz v2, :cond_4

    .line 224
    :try_start_7
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_9

    goto :goto_8

    :catch_9
    move-exception p2

    .line 226
    invoke-virtual {p2}, Ljava/io/IOException;->printStackTrace()V

    :cond_4
    :goto_8
    if-eqz v3, :cond_6

    .line 229
    :try_start_8
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1

    goto :goto_b

    :catch_a
    move-exception p2

    move-object v2, v0

    move-object v3, v2

    :goto_9
    move-object v0, p2

    if-eqz v2, :cond_5

    .line 224
    :try_start_9
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_b

    goto :goto_a

    :catch_b
    move-exception p2

    .line 226
    invoke-virtual {p2}, Ljava/io/IOException;->printStackTrace()V

    :cond_5
    :goto_a
    if-eqz v3, :cond_6

    .line 229
    :try_start_a
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_1

    :cond_6
    :goto_b
    if-eqz v1, :cond_7

    .line 236
    iget-object p2, p0, Lcom/reglink/common/FileCopyUtil;->callback:Lcom/reglink/common/FileCopyUtil$Callback;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p0, p1, v0}, Lcom/reglink/common/FileCopyUtil$Callback;->onFileFail(Lcom/reglink/common/FileCopyUtil;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_c

    .line 238
    :cond_7
    iget-wide v0, p0, Lcom/reglink/common/FileCopyUtil;->totalProgress:J

    iget-wide v2, p0, Lcom/reglink/common/FileCopyUtil;->currentFileSize:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/reglink/common/FileCopyUtil;->totalProgress:J

    .line 239
    iget-object p2, p0, Lcom/reglink/common/FileCopyUtil;->callback:Lcom/reglink/common/FileCopyUtil$Callback;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p0, p1}, Lcom/reglink/common/FileCopyUtil$Callback;->onFileCompleted(Lcom/reglink/common/FileCopyUtil;Ljava/lang/String;)V

    :goto_c
    return-void
.end method

.method private makeDir(Ljava/io/File;)V
    .locals 3

    .line 244
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "makeDir "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FileCopyUtil"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    iget-object v0, p0, Lcom/reglink/common/FileCopyUtil;->callback:Lcom/reglink/common/FileCopyUtil$Callback;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    invoke-interface {v0, p0, v1, v2}, Lcom/reglink/common/FileCopyUtil$Callback;->onFileStart(Lcom/reglink/common/FileCopyUtil;Ljava/lang/String;I)V

    .line 248
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    .line 249
    iget-object v0, p0, Lcom/reglink/common/FileCopyUtil;->callback:Lcom/reglink/common/FileCopyUtil$Callback;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Lcom/reglink/common/FileCopyUtil$Callback;->onFileCompleted(Lcom/reglink/common/FileCopyUtil;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 251
    iget-object v1, p0, Lcom/reglink/common/FileCopyUtil;->callback:Lcom/reglink/common/FileCopyUtil$Callback;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p0, p1, v0}, Lcom/reglink/common/FileCopyUtil$Callback;->onFileFail(Lcom/reglink/common/FileCopyUtil;Ljava/lang/String;Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method private onPrepare()V
    .locals 3

    .line 186
    iget-object v0, p0, Lcom/reglink/common/FileCopyUtil;->srcFile:Ljava/io/File;

    invoke-direct {p0, v0}, Lcom/reglink/common/FileCopyUtil;->walkFile(Ljava/io/File;)V

    .line 187
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "totalFileSize:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/reglink/common/FileCopyUtil;->getTotalFileSize()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/reglink/common/Format;->formatFileSize(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",fileCount:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/reglink/common/FileCopyUtil;->getFileCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FileCopyUtil"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    iget-object v0, p0, Lcom/reglink/common/FileCopyUtil;->callback:Lcom/reglink/common/FileCopyUtil$Callback;

    invoke-interface {v0, p0}, Lcom/reglink/common/FileCopyUtil$Callback;->onPrepared(Lcom/reglink/common/FileCopyUtil;)V

    return-void
.end method

.method private onStart()V
    .locals 5

    .line 256
    iget-object v0, p0, Lcom/reglink/common/FileCopyUtil;->callback:Lcom/reglink/common/FileCopyUtil$Callback;

    invoke-interface {v0, p0}, Lcom/reglink/common/FileCopyUtil$Callback;->onStart(Lcom/reglink/common/FileCopyUtil;)V

    .line 257
    iget-object v0, p0, Lcom/reglink/common/FileCopyUtil;->srcFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_0

    .line 258
    iget-object v0, p0, Lcom/reglink/common/FileCopyUtil;->srcFile:Ljava/io/File;

    new-instance v1, Ljava/io/File;

    invoke-virtual {p0}, Lcom/reglink/common/FileCopyUtil;->getDstFile()Ljava/io/File;

    move-result-object v2

    iget-object v3, p0, Lcom/reglink/common/FileCopyUtil;->srcFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {p0, v0, v1}, Lcom/reglink/common/FileCopyUtil;->copyFile(Ljava/io/File;Ljava/io/File;)V

    goto :goto_1

    .line 260
    :cond_0
    iget-object v0, p0, Lcom/reglink/common/FileCopyUtil;->fileList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 261
    iget-boolean v2, p0, Lcom/reglink/common/FileCopyUtil;->cancelled:Z

    if-eqz v2, :cond_1

    goto :goto_1

    .line 264
    :cond_1
    iget-object v2, p0, Lcom/reglink/common/FileCopyUtil;->srcFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/reglink/common/FileCopyUtil;->relativePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 265
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 266
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 267
    new-instance v1, Ljava/io/File;

    invoke-virtual {p0}, Lcom/reglink/common/FileCopyUtil;->getDstFile()Ljava/io/File;

    move-result-object v3

    invoke-direct {v1, v3, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lcom/reglink/common/FileCopyUtil;->makeDir(Ljava/io/File;)V

    goto :goto_0

    .line 269
    :cond_2
    new-instance v1, Ljava/io/File;

    invoke-virtual {p0}, Lcom/reglink/common/FileCopyUtil;->getDstFile()Ljava/io/File;

    move-result-object v4

    invoke-direct {v1, v4, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {p0, v3, v1}, Lcom/reglink/common/FileCopyUtil;->copyFile(Ljava/io/File;Ljava/io/File;)V

    goto :goto_0

    .line 273
    :cond_3
    :goto_1
    iget-boolean v0, p0, Lcom/reglink/common/FileCopyUtil;->cancelled:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/reglink/common/FileCopyUtil;->callback:Lcom/reglink/common/FileCopyUtil$Callback;

    invoke-interface {v0, p0}, Lcom/reglink/common/FileCopyUtil$Callback;->onCancelled(Lcom/reglink/common/FileCopyUtil;)V

    goto :goto_2

    .line 274
    :cond_4
    iget-object v0, p0, Lcom/reglink/common/FileCopyUtil;->callback:Lcom/reglink/common/FileCopyUtil$Callback;

    invoke-interface {v0, p0}, Lcom/reglink/common/FileCopyUtil$Callback;->onCompleted(Lcom/reglink/common/FileCopyUtil;)V

    .line 275
    :goto_2
    invoke-direct {p0}, Lcom/reglink/common/FileCopyUtil;->release()V

    const/4 v0, 0x1

    .line 276
    iput-boolean v0, p0, Lcom/reglink/common/FileCopyUtil;->completed:Z

    return-void
.end method

.method public static relativePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 168
    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, ""

    if-nez v0, :cond_0

    return-object v1

    .line 169
    :cond_0
    invoke-static {p0}, Lcom/reglink/common/FileCopyUtil;->splitPath(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    .line 170
    invoke-static {p1}, Lcom/reglink/common/FileCopyUtil;->splitPath(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 171
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-gt v0, v2, :cond_1

    return-object v1

    :cond_1
    const/4 v0, 0x0

    .line 172
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_3

    .line 173
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    return-object v1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 177
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 178
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    :goto_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_5

    .line 179
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-eq v1, v2, :cond_4

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    :cond_4
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 182
    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private release()V
    .locals 2

    .line 134
    iget-object v0, p0, Lcom/reglink/common/FileCopyUtil;->thr:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 135
    iput-boolean v1, p0, Lcom/reglink/common/FileCopyUtil;->cancelled:Z

    .line 136
    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    :cond_0
    const/4 v0, 0x0

    .line 138
    iput-object v0, p0, Lcom/reglink/common/FileCopyUtil;->buffer:[B

    .line 139
    iput-object v0, p0, Lcom/reglink/common/FileCopyUtil;->fileList:Ljava/util/ArrayList;

    .line 140
    iput-object v0, p0, Lcom/reglink/common/FileCopyUtil;->thr:Landroid/os/HandlerThread;

    .line 141
    iput-object v0, p0, Lcom/reglink/common/FileCopyUtil;->H:Landroid/os/Handler;

    return-void
.end method

.method static splitPath(Ljava/lang/String;)Ljava/util/List;
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

    const-string v0, "/"

    .line 157
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    .line 158
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0

    .line 159
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 160
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, p0, v2

    .line 161
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 162
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method private walkFile(Ljava/io/File;)V
    .locals 4

    .line 145
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 146
    iget-object v0, p0, Lcom/reglink/common/FileCopyUtil;->fileList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 147
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p1

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    .line 148
    invoke-direct {p0, v2}, Lcom/reglink/common/FileCopyUtil;->walkFile(Ljava/io/File;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 151
    :cond_0
    iget v0, p0, Lcom/reglink/common/FileCopyUtil;->fileCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/reglink/common/FileCopyUtil;->fileCount:I

    .line 152
    iget-wide v0, p0, Lcom/reglink/common/FileCopyUtil;->totalFileSize:J

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/reglink/common/FileCopyUtil;->totalFileSize:J

    .line 153
    iget-object v0, p0, Lcom/reglink/common/FileCopyUtil;->fileList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    const/4 v0, 0x1

    .line 129
    iput-boolean v0, p0, Lcom/reglink/common/FileCopyUtil;->cancelled:Z

    .line 130
    invoke-virtual {p0}, Lcom/reglink/common/FileCopyUtil;->waitComplete()V

    return-void
.end method

.method public getCurrentFile()Ljava/lang/String;
    .locals 1

    .line 328
    iget-object v0, p0, Lcom/reglink/common/FileCopyUtil;->currentFile:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrentFileSize()J
    .locals 2

    .line 316
    iget-wide v0, p0, Lcom/reglink/common/FileCopyUtil;->currentFileSize:J

    return-wide v0
.end method

.method public getCurrentProgress()J
    .locals 2

    .line 320
    iget-wide v0, p0, Lcom/reglink/common/FileCopyUtil;->currentProgress:J

    return-wide v0
.end method

.method public getDest()Ljava/lang/String;
    .locals 1

    .line 296
    iget-object v0, p0, Lcom/reglink/common/FileCopyUtil;->dest:Ljava/lang/String;

    return-object v0
.end method

.method public getDstFile()Ljava/io/File;
    .locals 1

    .line 300
    iget-object v0, p0, Lcom/reglink/common/FileCopyUtil;->dstFile:Ljava/io/File;

    return-object v0
.end method

.method public getFileCount()I
    .locals 1

    .line 304
    iget v0, p0, Lcom/reglink/common/FileCopyUtil;->fileCount:I

    return v0
.end method

.method public getProgress()I
    .locals 1

    .line 324
    iget v0, p0, Lcom/reglink/common/FileCopyUtil;->progress:I

    return v0
.end method

.method public getSrc()Ljava/lang/String;
    .locals 1

    .line 292
    iget-object v0, p0, Lcom/reglink/common/FileCopyUtil;->src:Ljava/lang/String;

    return-object v0
.end method

.method public getTotalFileSize()J
    .locals 2

    .line 308
    iget-wide v0, p0, Lcom/reglink/common/FileCopyUtil;->totalFileSize:J

    return-wide v0
.end method

.method public getTotalProgress()J
    .locals 2

    .line 312
    iget-wide v0, p0, Lcom/reglink/common/FileCopyUtil;->totalProgress:J

    return-wide v0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 1

    .line 80
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 82
    :cond_0
    invoke-direct {p0}, Lcom/reglink/common/FileCopyUtil;->onPrepare()V

    goto :goto_0

    .line 85
    :cond_1
    invoke-direct {p0}, Lcom/reglink/common/FileCopyUtil;->onStart()V

    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public prepare()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 92
    iget-object v0, p0, Lcom/reglink/common/FileCopyUtil;->callback:Lcom/reglink/common/FileCopyUtil$Callback;

    if-eqz v0, :cond_5

    .line 93
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/reglink/common/FileCopyUtil;->src:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/reglink/common/FileCopyUtil;->srcFile:Ljava/io/File;

    .line 94
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/reglink/common/FileCopyUtil;->dest:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/reglink/common/FileCopyUtil;->dstFile:Ljava/io/File;

    .line 95
    iget-object v0, p0, Lcom/reglink/common/FileCopyUtil;->srcFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 96
    iget-object v0, p0, Lcom/reglink/common/FileCopyUtil;->dstFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/reglink/common/FileCopyUtil;->dstFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 97
    iget-object v0, p0, Lcom/reglink/common/FileCopyUtil;->dstFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 98
    iget-object v0, p0, Lcom/reglink/common/FileCopyUtil;->srcFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/reglink/common/FileCopyUtil;->src:Ljava/lang/String;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 99
    iget-object v0, p0, Lcom/reglink/common/FileCopyUtil;->dest:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/reglink/common/FileCopyUtil;->dest:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/reglink/common/FileCopyUtil;->srcFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/reglink/common/FileCopyUtil;->dest:Ljava/lang/String;

    goto :goto_0

    .line 100
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/reglink/common/FileCopyUtil;->dest:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/reglink/common/FileCopyUtil;->srcFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/reglink/common/FileCopyUtil;->dest:Ljava/lang/String;

    .line 101
    :goto_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/reglink/common/FileCopyUtil;->dest:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/reglink/common/FileCopyUtil;->dstFile:Ljava/io/File;

    .line 102
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_1
    const/4 v0, 0x0

    .line 105
    iput v0, p0, Lcom/reglink/common/FileCopyUtil;->fileCount:I

    const-wide/16 v1, 0x0

    .line 106
    iput-wide v1, p0, Lcom/reglink/common/FileCopyUtil;->totalFileSize:J

    .line 107
    iput-wide v1, p0, Lcom/reglink/common/FileCopyUtil;->totalProgress:J

    .line 108
    iput-wide v1, p0, Lcom/reglink/common/FileCopyUtil;->currentProgress:J

    .line 109
    iput-wide v1, p0, Lcom/reglink/common/FileCopyUtil;->currentFileSize:J

    .line 110
    iput v0, p0, Lcom/reglink/common/FileCopyUtil;->progress:I

    const/4 v1, 0x0

    .line 111
    iput-object v1, p0, Lcom/reglink/common/FileCopyUtil;->currentFile:Ljava/lang/String;

    .line 112
    iput-boolean v0, p0, Lcom/reglink/common/FileCopyUtil;->completed:Z

    .line 113
    iput-boolean v0, p0, Lcom/reglink/common/FileCopyUtil;->cancelled:Z

    const/16 v0, 0x2004

    new-array v0, v0, [B

    .line 115
    iput-object v0, p0, Lcom/reglink/common/FileCopyUtil;->buffer:[B

    .line 116
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "FileCopy"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/reglink/common/FileCopyUtil;->thr:Landroid/os/HandlerThread;

    .line 117
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 118
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/reglink/common/FileCopyUtil;->thr:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/reglink/common/FileCopyUtil;->H:Landroid/os/Handler;

    const/4 v1, 0x2

    .line 119
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void

    .line 97
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "dest must be directory"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 96
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "dest must exist and can write"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 95
    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "src must exist"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 92
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "callback == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public start()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 124
    iget-object v0, p0, Lcom/reglink/common/FileCopyUtil;->H:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 125
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void

    .line 124
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "H == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public waitComplete()V
    .locals 1

    .line 280
    iget-boolean v0, p0, Lcom/reglink/common/FileCopyUtil;->completed:Z

    if-eqz v0, :cond_0

    return-void

    .line 281
    :cond_0
    iget-object v0, p0, Lcom/reglink/common/FileCopyUtil;->thr:Landroid/os/HandlerThread;

    if-eqz v0, :cond_1

    .line 283
    :try_start_0
    invoke-virtual {v0}, Landroid/os/HandlerThread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 285
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method
