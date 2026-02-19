.class public Lcn/hutool/extra/ftp/Ftp;
.super Lcn/hutool/extra/ftp/AbstractFtp;
.source "Ftp.java"


# static fields
.field public static final DEFAULT_PORT:I = 0x15


# instance fields
.field private backToPwd:Z

.field private client:Lorg/apache/commons/net/ftp/FTPClient;

.field private mode:Lcn/hutool/extra/ftp/FtpMode;


# direct methods
.method public static synthetic $r8$lambda$G0S2whp4gbu7ck-8p1-DsqaMOls(Lorg/apache/commons/net/ftp/FTPFile;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/FTPFile;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Lcn/hutool/extra/ftp/FtpConfig;Lcn/hutool/extra/ftp/FtpMode;)V
    .locals 0

    .line 132
    invoke-direct {p0, p1}, Lcn/hutool/extra/ftp/AbstractFtp;-><init>(Lcn/hutool/extra/ftp/FtpConfig;)V

    .line 133
    iput-object p2, p0, Lcn/hutool/extra/ftp/Ftp;->mode:Lcn/hutool/extra/ftp/FtpMode;

    .line 134
    invoke-virtual {p0}, Lcn/hutool/extra/ftp/Ftp;->init()Lcn/hutool/extra/ftp/Ftp;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/16 v0, 0x15

    .line 56
    invoke-direct {p0, p1, v0}, Lcn/hutool/extra/ftp/Ftp;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 2

    const-string v0, "anonymous"

    const-string v1, ""

    .line 66
    invoke-direct {p0, p1, p2, v0, v1}, Lcn/hutool/extra/ftp/Ftp;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 6

    .line 78
    sget-object v5, Lcn/hutool/core/util/CharsetUtil;->CHARSET_UTF_8:Ljava/nio/charset/Charset;

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcn/hutool/extra/ftp/Ftp;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/nio/charset/Charset;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/nio/charset/Charset;)V
    .locals 8

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 91
    invoke-direct/range {v0 .. v7}, Lcn/hutool/extra/ftp/Ftp;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/nio/charset/Charset;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/nio/charset/Charset;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    .line 106
    invoke-direct/range {v0 .. v8}, Lcn/hutool/extra/ftp/Ftp;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/nio/charset/Charset;Ljava/lang/String;Ljava/lang/String;Lcn/hutool/extra/ftp/FtpMode;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/nio/charset/Charset;Ljava/lang/String;Ljava/lang/String;Lcn/hutool/extra/ftp/FtpMode;)V
    .locals 9

    .line 122
    new-instance v8, Lcn/hutool/extra/ftp/FtpConfig;

    move-object v0, v8

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    invoke-direct/range {v0 .. v7}, Lcn/hutool/extra/ftp/FtpConfig;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/nio/charset/Charset;Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, p0

    move-object/from16 v1, p8

    invoke-direct {p0, v8, v1}, Lcn/hutool/extra/ftp/Ftp;-><init>(Lcn/hutool/extra/ftp/FtpConfig;Lcn/hutool/extra/ftp/FtpMode;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/net/ftp/FTPClient;)V
    .locals 1

    .line 144
    invoke-static {}, Lcn/hutool/extra/ftp/FtpConfig;->create()Lcn/hutool/extra/ftp/FtpConfig;

    move-result-object v0

    invoke-direct {p0, v0}, Lcn/hutool/extra/ftp/AbstractFtp;-><init>(Lcn/hutool/extra/ftp/FtpConfig;)V

    .line 145
    iput-object p1, p0, Lcn/hutool/extra/ftp/Ftp;->client:Lorg/apache/commons/net/ftp/FTPClient;

    return-void
.end method


# virtual methods
.method public declared-synchronized cd(Ljava/lang/String;)Z
    .locals 1

    monitor-enter p0

    .line 306
    :try_start_0
    invoke-static {p1}, Lcn/hutool/core/util/StrUtil;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 308
    monitor-exit p0

    const/4 p1, 0x1

    return p1

    .line 312
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcn/hutool/extra/ftp/Ftp;->client:Lorg/apache/commons/net/ftp/FTPClient;

    invoke-virtual {v0, p1}, Lorg/apache/commons/net/ftp/FTPClient;->changeWorkingDirectory(Ljava/lang/String;)Z

    move-result p1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return p1

    :catch_0
    move-exception p1

    .line 314
    :try_start_2
    new-instance v0, Lcn/hutool/core/io/IORuntimeException;

    invoke-direct {v0, p1}, Lcn/hutool/core/io/IORuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 734
    iget-object v0, p0, Lcn/hutool/extra/ftp/Ftp;->client:Lorg/apache/commons/net/ftp/FTPClient;

    if-eqz v0, :cond_1

    .line 735
    invoke-virtual {v0}, Lorg/apache/commons/net/ftp/FTPClient;->logout()Z

    .line 736
    iget-object v0, p0, Lcn/hutool/extra/ftp/Ftp;->client:Lorg/apache/commons/net/ftp/FTPClient;

    invoke-virtual {v0}, Lorg/apache/commons/net/ftp/FTPClient;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 737
    iget-object v0, p0, Lcn/hutool/extra/ftp/Ftp;->client:Lorg/apache/commons/net/ftp/FTPClient;

    invoke-virtual {v0}, Lorg/apache/commons/net/ftp/FTPClient;->disconnect()V

    :cond_0
    const/4 v0, 0x0

    .line 739
    iput-object v0, p0, Lcn/hutool/extra/ftp/Ftp;->client:Lorg/apache/commons/net/ftp/FTPClient;

    :cond_1
    return-void
.end method

.method public delDir(Ljava/lang/String;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/hutool/core/io/IORuntimeException;
        }
    .end annotation

    .line 462
    :try_start_0
    iget-object v0, p0, Lcn/hutool/extra/ftp/Ftp;->client:Lorg/apache/commons/net/ftp/FTPClient;

    invoke-virtual {v0, p1}, Lorg/apache/commons/net/ftp/FTPClient;->listFiles(Ljava/lang/String;)[Lorg/apache/commons/net/ftp/FTPFile;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 468
    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v4, v0, v3

    .line 469
    invoke-virtual {v4}, Lorg/apache/commons/net/ftp/FTPFile;->getName()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    aput-object p1, v6, v2

    const/4 v7, 0x1

    aput-object v5, v6, v7

    const-string v7, "{}/{}"

    .line 470
    invoke-static {v7, v6}, Lcn/hutool/core/util/StrUtil;->format(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 471
    invoke-virtual {v4}, Lorg/apache/commons/net/ftp/FTPFile;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "."

    .line 473
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, ".."

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 474
    invoke-virtual {p0, v6}, Lcn/hutool/extra/ftp/Ftp;->delDir(Ljava/lang/String;)Z

    goto :goto_1

    .line 477
    :cond_0
    invoke-virtual {p0, v6}, Lcn/hutool/extra/ftp/Ftp;->delFile(Ljava/lang/String;)Z

    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 483
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcn/hutool/extra/ftp/Ftp;->client:Lorg/apache/commons/net/ftp/FTPClient;

    invoke-virtual {v0, p1}, Lorg/apache/commons/net/ftp/FTPClient;->removeDirectory(Ljava/lang/String;)Z

    move-result p1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 485
    new-instance v0, Lcn/hutool/core/io/IORuntimeException;

    invoke-direct {v0, p1}, Lcn/hutool/core/io/IORuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    move-exception p1

    .line 464
    new-instance v0, Lcn/hutool/core/io/IORuntimeException;

    invoke-direct {v0, p1}, Lcn/hutool/core/io/IORuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public delFile(Ljava/lang/String;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/hutool/core/io/IORuntimeException;
        }
    .end annotation

    .line 439
    invoke-virtual {p0}, Lcn/hutool/extra/ftp/Ftp;->pwd()Ljava/lang/String;

    move-result-object v0

    .line 440
    invoke-static {p1}, Lcn/hutool/core/io/FileUtil;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 441
    invoke-static {p1, v1}, Lcn/hutool/core/util/StrUtil;->removeSuffix(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 442
    invoke-virtual {p0, v2}, Lcn/hutool/extra/ftp/Ftp;->cd(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 448
    :try_start_0
    iget-object p1, p0, Lcn/hutool/extra/ftp/Ftp;->client:Lorg/apache/commons/net/ftp/FTPClient;

    invoke-virtual {p1, v1}, Lorg/apache/commons/net/ftp/FTPClient;->deleteFile(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 453
    invoke-virtual {p0, v0}, Lcn/hutool/extra/ftp/Ftp;->cd(Ljava/lang/String;)Z

    return p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 450
    :try_start_1
    new-instance v1, Lcn/hutool/core/io/IORuntimeException;

    invoke-direct {v1, p1}, Lcn/hutool/core/io/IORuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 453
    :goto_0
    invoke-virtual {p0, v0}, Lcn/hutool/extra/ftp/Ftp;->cd(Ljava/lang/String;)Z

    .line 454
    throw p1

    .line 443
    :cond_0
    new-instance v0, Lcn/hutool/extra/ftp/FtpException;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, "Change dir to [{}] error, maybe dir not exist!"

    invoke-direct {v0, p1, v1}, Lcn/hutool/extra/ftp/FtpException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0
.end method

.method public download(Ljava/lang/String;Ljava/io/File;)V
    .locals 1

    .line 620
    invoke-static {p1}, Lcn/hutool/core/io/FileUtil;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 621
    invoke-static {p1, v0}, Lcn/hutool/core/util/StrUtil;->removeSuffix(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 622
    invoke-virtual {p0, p1, v0, p2}, Lcn/hutool/extra/ftp/Ftp;->download(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)V

    return-void
.end method

.method public download(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/hutool/core/io/IORuntimeException;
        }
    .end annotation

    .line 664
    invoke-virtual {p3}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 665
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p3, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object p3, v0

    .line 667
    :cond_0
    invoke-virtual {p3}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    .line 668
    invoke-static {p3}, Lcn/hutool/core/io/FileUtil;->touch(Ljava/io/File;)Ljava/io/File;

    .line 670
    :cond_1
    :try_start_0
    invoke-static {p3}, Lcn/hutool/core/io/FileUtil;->getOutputStream(Ljava/io/File;)Ljava/io/BufferedOutputStream;

    move-result-object p3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 671
    :try_start_1
    invoke-virtual {p0, p1, p2, p3}, Lcn/hutool/extra/ftp/Ftp;->download(Ljava/lang/String;Ljava/lang/String;Ljava/io/OutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p3, :cond_2

    .line 672
    :try_start_2
    invoke-virtual {p3}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_2
    return-void

    :catchall_0
    move-exception p1

    .line 670
    :try_start_3
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p2

    if-eqz p3, :cond_3

    .line 672
    :try_start_4
    invoke-virtual {p3}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception p3

    :try_start_5
    invoke-virtual {p1, p3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_0
    throw p2
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    :catch_0
    move-exception p1

    .line 673
    new-instance p2, Lcn/hutool/core/io/IORuntimeException;

    invoke-direct {p2, p1}, Lcn/hutool/core/io/IORuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public download(Ljava/lang/String;Ljava/lang/String;Ljava/io/OutputStream;)V
    .locals 1

    const/4 v0, 0x0

    .line 685
    invoke-virtual {p0, p1, p2, p3, v0}, Lcn/hutool/extra/ftp/Ftp;->download(Ljava/lang/String;Ljava/lang/String;Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    return-void
.end method

.method public download(Ljava/lang/String;Ljava/lang/String;Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/hutool/core/io/IORuntimeException;
        }
    .end annotation

    .line 700
    iget-boolean v0, p0, Lcn/hutool/extra/ftp/Ftp;->backToPwd:Z

    if-eqz v0, :cond_0

    .line 701
    invoke-virtual {p0}, Lcn/hutool/extra/ftp/Ftp;->pwd()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 704
    :goto_0
    invoke-virtual {p0, p1}, Lcn/hutool/extra/ftp/Ftp;->cd(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    if-eqz p4, :cond_1

    .line 709
    new-instance p1, Ljava/lang/String;

    invoke-virtual {p2, p4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p2

    sget-object p4, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-direct {p1, p2, p4}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    move-object p2, p1

    .line 712
    :cond_1
    :try_start_0
    iget-object p1, p0, Lcn/hutool/extra/ftp/Ftp;->client:Lorg/apache/commons/net/ftp/FTPClient;

    const/4 p4, 0x2

    invoke-virtual {p1, p4}, Lorg/apache/commons/net/ftp/FTPClient;->setFileType(I)Z

    .line 713
    iget-object p1, p0, Lcn/hutool/extra/ftp/Ftp;->client:Lorg/apache/commons/net/ftp/FTPClient;

    invoke-virtual {p1, p2, p3}, Lorg/apache/commons/net/ftp/FTPClient;->retrieveFile(Ljava/lang/String;Ljava/io/OutputStream;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 717
    iget-boolean p1, p0, Lcn/hutool/extra/ftp/Ftp;->backToPwd:Z

    if-eqz p1, :cond_2

    .line 718
    invoke-virtual {p0, v0}, Lcn/hutool/extra/ftp/Ftp;->cd(Ljava/lang/String;)Z

    :cond_2
    return-void

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 715
    :try_start_1
    new-instance p2, Lcn/hutool/core/io/IORuntimeException;

    invoke-direct {p2, p1}, Lcn/hutool/core/io/IORuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 717
    :goto_1
    iget-boolean p2, p0, Lcn/hutool/extra/ftp/Ftp;->backToPwd:Z

    if-eqz p2, :cond_3

    .line 718
    invoke-virtual {p0, v0}, Lcn/hutool/extra/ftp/Ftp;->cd(Ljava/lang/String;)Z

    .line 720
    :cond_3
    throw p1

    .line 705
    :cond_4
    new-instance p2, Lcn/hutool/extra/ftp/FtpException;

    const/4 p3, 0x1

    new-array p3, p3, [Ljava/lang/Object;

    const/4 p4, 0x0

    aput-object p1, p3, p4

    const-string p1, "Change dir to [{}] error, maybe dir not exist!"

    invoke-direct {p2, p1, p3}, Lcn/hutool/extra/ftp/FtpException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p2
.end method

.method public existFile(Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/hutool/core/io/IORuntimeException;
        }
    .end annotation

    .line 430
    :try_start_0
    iget-object v0, p0, Lcn/hutool/extra/ftp/Ftp;->client:Lorg/apache/commons/net/ftp/FTPClient;

    invoke-virtual {v0, p1}, Lorg/apache/commons/net/ftp/FTPClient;->listFiles(Ljava/lang/String;)[Lorg/apache/commons/net/ftp/FTPFile;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 434
    invoke-static {p1}, Lcn/hutool/core/util/ArrayUtil;->isNotEmpty([Ljava/lang/Object;)Z

    move-result p1

    return p1

    :catch_0
    move-exception p1

    .line 432
    new-instance v0, Lcn/hutool/core/io/IORuntimeException;

    invoke-direct {v0, p1}, Lcn/hutool/core/io/IORuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public getClient()Lorg/apache/commons/net/ftp/FTPClient;
    .locals 1

    .line 729
    iget-object v0, p0, Lcn/hutool/extra/ftp/Ftp;->client:Lorg/apache/commons/net/ftp/FTPClient;

    return-object v0
.end method

.method public init()Lcn/hutool/extra/ftp/Ftp;
    .locals 2

    .line 154
    iget-object v0, p0, Lcn/hutool/extra/ftp/Ftp;->ftpConfig:Lcn/hutool/extra/ftp/FtpConfig;

    iget-object v1, p0, Lcn/hutool/extra/ftp/Ftp;->mode:Lcn/hutool/extra/ftp/FtpMode;

    invoke-virtual {p0, v0, v1}, Lcn/hutool/extra/ftp/Ftp;->init(Lcn/hutool/extra/ftp/FtpConfig;Lcn/hutool/extra/ftp/FtpMode;)Lcn/hutool/extra/ftp/Ftp;

    move-result-object v0

    return-object v0
.end method

.method public init(Lcn/hutool/extra/ftp/FtpConfig;Lcn/hutool/extra/ftp/FtpMode;)Lcn/hutool/extra/ftp/Ftp;
    .locals 4

    .line 192
    new-instance v0, Lorg/apache/commons/net/ftp/FTPClient;

    invoke-direct {v0}, Lorg/apache/commons/net/ftp/FTPClient;-><init>()V

    const/4 v1, 0x0

    .line 194
    invoke-virtual {v0, v1}, Lorg/apache/commons/net/ftp/FTPClient;->setRemoteVerificationEnabled(Z)V

    .line 196
    invoke-virtual {p1}, Lcn/hutool/extra/ftp/FtpConfig;->getCharset()Ljava/nio/charset/Charset;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 198
    invoke-virtual {v2}, Ljava/nio/charset/Charset;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/apache/commons/net/ftp/FTPClient;->setControlEncoding(Ljava/lang/String;)V

    .line 200
    :cond_0
    invoke-virtual {p1}, Lcn/hutool/extra/ftp/FtpConfig;->getConnectionTimeout()J

    move-result-wide v2

    long-to-int v2, v2

    invoke-virtual {v0, v2}, Lorg/apache/commons/net/ftp/FTPClient;->setConnectTimeout(I)V

    .line 201
    invoke-virtual {p1}, Lcn/hutool/extra/ftp/FtpConfig;->getSystemKey()Ljava/lang/String;

    move-result-object v2

    .line 202
    invoke-static {v2}, Lcn/hutool/core/util/StrUtil;->isNotBlank(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 203
    new-instance v3, Lorg/apache/commons/net/ftp/FTPClientConfig;

    invoke-direct {v3, v2}, Lorg/apache/commons/net/ftp/FTPClientConfig;-><init>(Ljava/lang/String;)V

    .line 204
    invoke-virtual {p1}, Lcn/hutool/extra/ftp/FtpConfig;->getServerLanguageCode()Ljava/lang/String;

    move-result-object v2

    .line 205
    invoke-static {v2}, Lcn/hutool/core/util/StrUtil;->isNotBlank(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 206
    invoke-virtual {p1}, Lcn/hutool/extra/ftp/FtpConfig;->getServerLanguageCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lorg/apache/commons/net/ftp/FTPClientConfig;->setServerLanguageCode(Ljava/lang/String;)V

    .line 208
    :cond_1
    invoke-virtual {v0, v3}, Lorg/apache/commons/net/ftp/FTPClient;->configure(Lorg/apache/commons/net/ftp/FTPClientConfig;)V

    .line 214
    :cond_2
    :try_start_0
    invoke-virtual {p1}, Lcn/hutool/extra/ftp/FtpConfig;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcn/hutool/extra/ftp/FtpConfig;->getPort()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Lorg/apache/commons/net/ftp/FTPClient;->connect(Ljava/lang/String;I)V

    .line 215
    invoke-virtual {p1}, Lcn/hutool/extra/ftp/FtpConfig;->getSoTimeout()J

    move-result-wide v2

    long-to-int v2, v2

    invoke-virtual {v0, v2}, Lorg/apache/commons/net/ftp/FTPClient;->setSoTimeout(I)V

    .line 217
    invoke-virtual {p1}, Lcn/hutool/extra/ftp/FtpConfig;->getUser()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcn/hutool/extra/ftp/FtpConfig;->getPassword()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/apache/commons/net/ftp/FTPClient;->login(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 221
    invoke-virtual {v0}, Lorg/apache/commons/net/ftp/FTPClient;->getReplyCode()I

    move-result v2

    .line 222
    invoke-static {v2}, Lorg/apache/commons/net/ftp/FTPReply;->isPositiveCompletion(I)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 230
    iput-object v0, p0, Lcn/hutool/extra/ftp/Ftp;->client:Lorg/apache/commons/net/ftp/FTPClient;

    if-eqz p2, :cond_3

    .line 232
    invoke-virtual {p0, p2}, Lcn/hutool/extra/ftp/Ftp;->setMode(Lcn/hutool/extra/ftp/FtpMode;)Lcn/hutool/extra/ftp/Ftp;

    :cond_3
    return-object p0

    .line 224
    :cond_4
    :try_start_1
    invoke-virtual {v0}, Lorg/apache/commons/net/ftp/FTPClient;->disconnect()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 228
    :catch_0
    new-instance p2, Lcn/hutool/extra/ftp/FtpException;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcn/hutool/extra/ftp/FtpConfig;->getUser()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v1

    const/4 p1, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, p1

    const-string p1, "Login failed for user [{}], reply code is: [{}]"

    invoke-direct {p2, p1, v0}, Lcn/hutool/extra/ftp/FtpException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p2

    :catch_1
    move-exception p1

    .line 219
    new-instance p2, Lcn/hutool/core/io/IORuntimeException;

    invoke-direct {p2, p1}, Lcn/hutool/core/io/IORuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public init(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Lcn/hutool/extra/ftp/Ftp;
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 167
    invoke-virtual/range {v0 .. v5}, Lcn/hutool/extra/ftp/Ftp;->init(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcn/hutool/extra/ftp/FtpMode;)Lcn/hutool/extra/ftp/Ftp;

    move-result-object p1

    return-object p1
.end method

.method public init(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcn/hutool/extra/ftp/FtpMode;)Lcn/hutool/extra/ftp/Ftp;
    .locals 9

    .line 181
    new-instance v8, Lcn/hutool/extra/ftp/FtpConfig;

    iget-object v0, p0, Lcn/hutool/extra/ftp/Ftp;->ftpConfig:Lcn/hutool/extra/ftp/FtpConfig;

    invoke-virtual {v0}, Lcn/hutool/extra/ftp/FtpConfig;->getCharset()Ljava/nio/charset/Charset;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, v8

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v7}, Lcn/hutool/extra/ftp/FtpConfig;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/nio/charset/Charset;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v8, p5}, Lcn/hutool/extra/ftp/Ftp;->init(Lcn/hutool/extra/ftp/FtpConfig;Lcn/hutool/extra/ftp/FtpMode;)Lcn/hutool/extra/ftp/Ftp;

    move-result-object p1

    return-object p1
.end method

.method public isBackToPwd()Z
    .locals 1

    .line 275
    iget-boolean v0, p0, Lcn/hutool/extra/ftp/Ftp;->backToPwd:Z

    return v0
.end method

.method public ls(Ljava/lang/String;)Ljava/util/List;
    .locals 1
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

    .line 335
    invoke-virtual {p0, p1}, Lcn/hutool/extra/ftp/Ftp;->lsFiles(Ljava/lang/String;)[Lorg/apache/commons/net/ftp/FTPFile;

    move-result-object p1

    new-instance v0, Lcn/hutool/extra/ftp/Ftp$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcn/hutool/extra/ftp/Ftp$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {p1, v0}, Lcn/hutool/core/util/ArrayUtil;->map([Ljava/lang/Object;Ljava/util/function/Function;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public lsFiles(Ljava/lang/String;Lcn/hutool/core/lang/Filter;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcn/hutool/core/lang/Filter<",
            "Lorg/apache/commons/net/ftp/FTPFile;",
            ">;)",
            "Ljava/util/List<",
            "Lorg/apache/commons/net/ftp/FTPFile;",
            ">;"
        }
    .end annotation

    .line 348
    invoke-virtual {p0, p1}, Lcn/hutool/extra/ftp/Ftp;->lsFiles(Ljava/lang/String;)[Lorg/apache/commons/net/ftp/FTPFile;

    move-result-object p1

    .line 349
    invoke-static {p1}, Lcn/hutool/core/util/ArrayUtil;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 350
    invoke-static {}, Lcn/hutool/core/collection/ListUtil;->empty()Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 353
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p1

    add-int/lit8 v1, v1, -0x2

    if-gtz v1, :cond_1

    array-length v1, p1

    goto :goto_0

    :cond_1
    array-length v1, p1

    add-int/lit8 v1, v1, -0x2

    :goto_0
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 355
    array-length v1, p1

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_4

    aget-object v3, p1, v2

    .line 356
    invoke-virtual {v3}, Lorg/apache/commons/net/ftp/FTPFile;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "."

    .line 357
    invoke-static {v5, v4}, Lcn/hutool/core/util/StrUtil;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    const-string v5, ".."

    invoke-static {v5, v4}, Lcn/hutool/core/util/StrUtil;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    if-eqz p2, :cond_2

    .line 358
    invoke-interface {p2, v3}, Lcn/hutool/core/lang/Filter;->accept(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 359
    :cond_2
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    return-object v0
.end method

.method public lsFiles(Ljava/lang/String;)[Lorg/apache/commons/net/ftp/FTPFile;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/hutool/extra/ftp/FtpException;,
            Lcn/hutool/core/io/IORuntimeException;
        }
    .end annotation

    .line 376
    invoke-static {p1}, Lcn/hutool/core/util/StrUtil;->isNotBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 377
    invoke-virtual {p0}, Lcn/hutool/extra/ftp/Ftp;->pwd()Ljava/lang/String;

    move-result-object v0

    .line 378
    invoke-virtual {p0, p1}, Lcn/hutool/extra/ftp/Ftp;->cd(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 379
    :cond_0
    new-instance v0, Lcn/hutool/extra/ftp/FtpException;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, "Change dir to [{}] error, maybe path not exist!"

    invoke-direct {v0, p1, v1}, Lcn/hutool/extra/ftp/FtpException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    :cond_1
    const/4 v0, 0x0

    .line 385
    :goto_0
    :try_start_0
    iget-object p1, p0, Lcn/hutool/extra/ftp/Ftp;->client:Lorg/apache/commons/net/ftp/FTPClient;

    invoke-virtual {p1}, Lorg/apache/commons/net/ftp/FTPClient;->listFiles()[Lorg/apache/commons/net/ftp/FTPFile;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 390
    invoke-virtual {p0, v0}, Lcn/hutool/extra/ftp/Ftp;->cd(Ljava/lang/String;)Z

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 387
    :try_start_1
    new-instance v1, Lcn/hutool/core/io/IORuntimeException;

    invoke-direct {v1, p1}, Lcn/hutool/core/io/IORuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 390
    :goto_1
    invoke-virtual {p0, v0}, Lcn/hutool/extra/ftp/Ftp;->cd(Ljava/lang/String;)Z

    .line 391
    throw p1
.end method

.method public mkdir(Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/hutool/core/io/IORuntimeException;
        }
    .end annotation

    .line 399
    :try_start_0
    iget-object v0, p0, Lcn/hutool/extra/ftp/Ftp;->client:Lorg/apache/commons/net/ftp/FTPClient;

    invoke-virtual {v0, p1}, Lorg/apache/commons/net/ftp/FTPClient;->makeDirectory(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 401
    new-instance v0, Lcn/hutool/core/io/IORuntimeException;

    invoke-direct {v0, p1}, Lcn/hutool/core/io/IORuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public pwd()Ljava/lang/String;
    .locals 2

    .line 327
    :try_start_0
    iget-object v0, p0, Lcn/hutool/extra/ftp/Ftp;->client:Lorg/apache/commons/net/ftp/FTPClient;

    invoke-virtual {v0}, Lorg/apache/commons/net/ftp/FTPClient;->printWorkingDirectory()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 329
    new-instance v1, Lcn/hutool/core/io/IORuntimeException;

    invoke-direct {v1, v0}, Lcn/hutool/core/io/IORuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public bridge synthetic reconnectIfTimeout()Lcn/hutool/extra/ftp/AbstractFtp;
    .locals 1

    .line 36
    invoke-virtual {p0}, Lcn/hutool/extra/ftp/Ftp;->reconnectIfTimeout()Lcn/hutool/extra/ftp/Ftp;

    move-result-object v0

    return-object v0
.end method

.method public reconnectIfTimeout()Lcn/hutool/extra/ftp/Ftp;
    .locals 1

    .line 287
    :try_start_0
    invoke-virtual {p0}, Lcn/hutool/extra/ftp/Ftp;->pwd()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Lcn/hutool/core/io/IORuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_0

    .line 293
    invoke-virtual {p0}, Lcn/hutool/extra/ftp/Ftp;->init()Lcn/hutool/extra/ftp/Ftp;

    move-result-object v0

    return-object v0

    :cond_0
    return-object p0
.end method

.method public recursiveDownloadFolder(Ljava/lang/String;Ljava/io/File;)V
    .locals 8

    const/4 v0, 0x0

    .line 636
    invoke-virtual {p0, p1, v0}, Lcn/hutool/extra/ftp/Ftp;->lsFiles(Ljava/lang/String;Lcn/hutool/core/lang/Filter;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/net/ftp/FTPFile;

    .line 637
    invoke-virtual {v1}, Lorg/apache/commons/net/ftp/FTPFile;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    aput-object v2, v3, v4

    const-string v4, "{}/{}"

    .line 638
    invoke-static {v4, v3}, Lcn/hutool/core/util/StrUtil;->format(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 639
    invoke-static {p2, v2}, Lcn/hutool/core/io/FileUtil;->file(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 641
    invoke-virtual {v1}, Lorg/apache/commons/net/ftp/FTPFile;->isDirectory()Z

    move-result v4

    if-nez v4, :cond_2

    .line 643
    invoke-static {v2}, Lcn/hutool/core/io/FileUtil;->exist(Ljava/io/File;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 644
    invoke-virtual {v1}, Lorg/apache/commons/net/ftp/FTPFile;->getTimestamp()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    invoke-virtual {v2}, Ljava/io/File;->lastModified()J

    move-result-wide v6

    cmp-long v1, v4, v6

    if-lez v1, :cond_0

    .line 645
    :cond_1
    invoke-virtual {p0, v3, v2}, Lcn/hutool/extra/ftp/Ftp;->download(Ljava/lang/String;Ljava/io/File;)V

    goto :goto_0

    .line 649
    :cond_2
    invoke-static {v2}, Lcn/hutool/core/io/FileUtil;->mkdir(Ljava/io/File;)Ljava/io/File;

    .line 650
    invoke-virtual {p0, v3, v2}, Lcn/hutool/extra/ftp/Ftp;->recursiveDownloadFolder(Ljava/lang/String;Ljava/io/File;)V

    goto :goto_0

    :cond_3
    return-void
.end method

.method public setBackToPwd(Z)Lcn/hutool/extra/ftp/Ftp;
    .locals 0

    .line 265
    iput-boolean p1, p0, Lcn/hutool/extra/ftp/Ftp;->backToPwd:Z

    return-object p0
.end method

.method public setMode(Lcn/hutool/extra/ftp/FtpMode;)Lcn/hutool/extra/ftp/Ftp;
    .locals 1

    .line 245
    iput-object p1, p0, Lcn/hutool/extra/ftp/Ftp;->mode:Lcn/hutool/extra/ftp/FtpMode;

    .line 246
    sget-object v0, Lcn/hutool/extra/ftp/Ftp$1;->$SwitchMap$cn$hutool$extra$ftp$FtpMode:[I

    invoke-virtual {p1}, Lcn/hutool/extra/ftp/FtpMode;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 251
    :cond_0
    iget-object p1, p0, Lcn/hutool/extra/ftp/Ftp;->client:Lorg/apache/commons/net/ftp/FTPClient;

    invoke-virtual {p1}, Lorg/apache/commons/net/ftp/FTPClient;->enterLocalPassiveMode()V

    goto :goto_0

    .line 248
    :cond_1
    iget-object p1, p0, Lcn/hutool/extra/ftp/Ftp;->client:Lorg/apache/commons/net/ftp/FTPClient;

    invoke-virtual {p1}, Lorg/apache/commons/net/ftp/FTPClient;->enterLocalActiveMode()V

    :goto_0
    return-object p0
.end method

.method public stat(Ljava/lang/String;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/hutool/core/io/IORuntimeException;
        }
    .end annotation

    .line 414
    :try_start_0
    iget-object v0, p0, Lcn/hutool/extra/ftp/Ftp;->client:Lorg/apache/commons/net/ftp/FTPClient;

    invoke-virtual {v0, p1}, Lorg/apache/commons/net/ftp/FTPClient;->stat(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 416
    new-instance v0, Lcn/hutool/core/io/IORuntimeException;

    invoke-direct {v0, p1}, Lcn/hutool/core/io/IORuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public upload(Ljava/lang/String;Ljava/io/File;)Z
    .locals 2

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "file to upload is null !"

    .line 504
    invoke-static {p2, v1, v0}, Lcn/hutool/core/lang/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 505
    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p2}, Lcn/hutool/extra/ftp/Ftp;->upload(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Z

    move-result p1

    return p1
.end method

.method public upload(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/hutool/core/io/IORuntimeException;
        }
    .end annotation

    .line 524
    :try_start_0
    invoke-static {p3}, Lcn/hutool/core/io/FileUtil;->getInputStream(Ljava/io/File;)Ljava/io/BufferedInputStream;

    move-result-object p3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 525
    :try_start_1
    invoke-virtual {p0, p1, p2, p3}, Lcn/hutool/extra/ftp/Ftp;->upload(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)Z

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p3, :cond_0

    .line 526
    :try_start_2
    invoke-virtual {p3}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    return p1

    :catchall_0
    move-exception p1

    .line 524
    :try_start_3
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p2

    if-eqz p3, :cond_1

    .line 526
    :try_start_4
    invoke-virtual {p3}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception p3

    :try_start_5
    invoke-virtual {p1, p3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw p2
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    :catch_0
    move-exception p1

    .line 527
    new-instance p2, Lcn/hutool/core/io/IORuntimeException;

    invoke-direct {p2, p1}, Lcn/hutool/core/io/IORuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public upload(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/hutool/core/io/IORuntimeException;
        }
    .end annotation

    .line 548
    :try_start_0
    iget-object v0, p0, Lcn/hutool/extra/ftp/Ftp;->client:Lorg/apache/commons/net/ftp/FTPClient;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lorg/apache/commons/net/ftp/FTPClient;->setFileType(I)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 554
    iget-boolean v0, p0, Lcn/hutool/extra/ftp/Ftp;->backToPwd:Z

    if-eqz v0, :cond_0

    .line 555
    invoke-virtual {p0}, Lcn/hutool/extra/ftp/Ftp;->pwd()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 558
    :goto_0
    invoke-static {p1}, Lcn/hutool/core/util/StrUtil;->isNotBlank(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 559
    invoke-virtual {p0, p1}, Lcn/hutool/extra/ftp/Ftp;->mkDirs(Ljava/lang/String;)V

    .line 560
    invoke-virtual {p0, p1}, Lcn/hutool/extra/ftp/Ftp;->cd(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    .line 561
    :cond_1
    new-instance p2, Lcn/hutool/extra/ftp/FtpException;

    const/4 p3, 0x1

    new-array p3, p3, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p1, p3, v0

    const-string p1, "Change dir to [{}] error, maybe dir not exist!"

    invoke-direct {p2, p1, p3}, Lcn/hutool/extra/ftp/FtpException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p2

    .line 566
    :cond_2
    :goto_1
    :try_start_1
    iget-object p1, p0, Lcn/hutool/extra/ftp/Ftp;->client:Lorg/apache/commons/net/ftp/FTPClient;

    invoke-virtual {p1, p2, p3}, Lorg/apache/commons/net/ftp/FTPClient;->storeFile(Ljava/lang/String;Ljava/io/InputStream;)Z

    move-result p1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 570
    iget-boolean p2, p0, Lcn/hutool/extra/ftp/Ftp;->backToPwd:Z

    if-eqz p2, :cond_3

    .line 571
    invoke-virtual {p0, v0}, Lcn/hutool/extra/ftp/Ftp;->cd(Ljava/lang/String;)Z

    :cond_3
    return p1

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 568
    :try_start_2
    new-instance p2, Lcn/hutool/core/io/IORuntimeException;

    invoke-direct {p2, p1}, Lcn/hutool/core/io/IORuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 570
    :goto_2
    iget-boolean p2, p0, Lcn/hutool/extra/ftp/Ftp;->backToPwd:Z

    if-eqz p2, :cond_4

    .line 571
    invoke-virtual {p0, v0}, Lcn/hutool/extra/ftp/Ftp;->cd(Ljava/lang/String;)Z

    .line 573
    :cond_4
    throw p1

    :catch_1
    move-exception p1

    .line 550
    new-instance p2, Lcn/hutool/core/io/IORuntimeException;

    invoke-direct {p2, p1}, Lcn/hutool/core/io/IORuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public uploadFileOrDirectory(Ljava/lang/String;Ljava/io/File;)V
    .locals 5

    .line 585
    invoke-static {p2}, Lcn/hutool/core/io/FileUtil;->isDirectory(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 587
    invoke-virtual {p0, p1, p2}, Lcn/hutool/extra/ftp/Ftp;->upload(Ljava/lang/String;Ljava/io/File;)Z

    return-void

    .line 591
    :cond_0
    invoke-virtual {p2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p2

    .line 592
    invoke-static {p2}, Lcn/hutool/core/util/ArrayUtil;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 596
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 598
    array-length v1, p2

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    aget-object v3, p2, v2

    .line 599
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 600
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 602
    :cond_2
    invoke-virtual {p0, p1, v3}, Lcn/hutool/extra/ftp/Ftp;->upload(Ljava/lang/String;Ljava/io/File;)Z

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 606
    :cond_3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 607
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/hutool/core/io/FileUtil;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 608
    invoke-virtual {p0, v1, v0}, Lcn/hutool/extra/ftp/Ftp;->uploadFileOrDirectory(Ljava/lang/String;Ljava/io/File;)V

    goto :goto_2

    :cond_4
    return-void
.end method
