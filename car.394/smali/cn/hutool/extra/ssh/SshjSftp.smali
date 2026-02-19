.class public Lcn/hutool/extra/ssh/SshjSftp;
.super Lcn/hutool/extra/ftp/AbstractFtp;
.source "SshjSftp.java"


# instance fields
.field private sftp:Lnet/schmizz/sshj/sftp/SFTPClient;

.field private ssh:Lnet/schmizz/sshj/SSHClient;


# direct methods
.method public static synthetic $r8$lambda$hr00LnvU3_4-Vce8aQu8AVXB7ko(Lnet/schmizz/sshj/sftp/RemoteResourceInfo;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lnet/schmizz/sshj/sftp/RemoteResourceInfo;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected constructor <init>(Lcn/hutool/extra/ftp/FtpConfig;)V
    .locals 0

    .line 91
    invoke-direct {p0, p1}, Lcn/hutool/extra/ftp/AbstractFtp;-><init>(Lcn/hutool/extra/ftp/FtpConfig;)V

    .line 92
    invoke-virtual {p0}, Lcn/hutool/extra/ssh/SshjSftp;->init()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 7

    .line 45
    new-instance v6, Lcn/hutool/extra/ftp/FtpConfig;

    const/16 v2, 0x16

    const/4 v3, 0x0

    const/4 v4, 0x0

    sget-object v5, Lcn/hutool/core/util/CharsetUtil;->CHARSET_UTF_8:Ljava/nio/charset/Charset;

    move-object v0, v6

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcn/hutool/extra/ftp/FtpConfig;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/nio/charset/Charset;)V

    invoke-direct {p0, v6}, Lcn/hutool/extra/ssh/SshjSftp;-><init>(Lcn/hutool/extra/ftp/FtpConfig;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 7

    .line 68
    new-instance v6, Lcn/hutool/extra/ftp/FtpConfig;

    sget-object v5, Lcn/hutool/core/util/CharsetUtil;->CHARSET_UTF_8:Ljava/nio/charset/Charset;

    move-object v0, v6

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcn/hutool/extra/ftp/FtpConfig;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/nio/charset/Charset;)V

    invoke-direct {p0, v6}, Lcn/hutool/extra/ssh/SshjSftp;-><init>(Lcn/hutool/extra/ftp/FtpConfig;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/nio/charset/Charset;)V
    .locals 7

    .line 81
    new-instance v6, Lcn/hutool/extra/ftp/FtpConfig;

    move-object v0, v6

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcn/hutool/extra/ftp/FtpConfig;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/nio/charset/Charset;)V

    invoke-direct {p0, v6}, Lcn/hutool/extra/ssh/SshjSftp;-><init>(Lcn/hutool/extra/ftp/FtpConfig;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .line 56
    new-instance v6, Lcn/hutool/extra/ftp/FtpConfig;

    const/16 v2, 0x16

    sget-object v5, Lcn/hutool/core/util/CharsetUtil;->CHARSET_UTF_8:Ljava/nio/charset/Charset;

    move-object v0, v6

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcn/hutool/extra/ftp/FtpConfig;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/nio/charset/Charset;)V

    invoke-direct {p0, v6}, Lcn/hutool/extra/ssh/SshjSftp;-><init>(Lcn/hutool/extra/ftp/FtpConfig;)V

    return-void
.end method


# virtual methods
.method public cd(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string v1, "cd %s"

    .line 130
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 131
    invoke-virtual {p0, v0}, Lcn/hutool/extra/ssh/SshjSftp;->command(Ljava/lang/String;)Ljava/lang/String;

    .line 132
    invoke-virtual {p0}, Lcn/hutool/extra/ssh/SshjSftp;->pwd()Ljava/lang/String;

    move-result-object v0

    .line 133
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public close()V
    .locals 2

    .line 215
    :try_start_0
    iget-object v0, p0, Lcn/hutool/extra/ssh/SshjSftp;->sftp:Lnet/schmizz/sshj/sftp/SFTPClient;

    invoke-virtual {v0}, Lnet/schmizz/sshj/sftp/SFTPClient;->close()V

    .line 216
    iget-object v0, p0, Lcn/hutool/extra/ssh/SshjSftp;->ssh:Lnet/schmizz/sshj/SSHClient;

    invoke-virtual {v0}, Lnet/schmizz/sshj/SSHClient;->disconnect()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 218
    new-instance v1, Lcn/hutool/extra/ftp/FtpException;

    invoke-direct {v1, v0}, Lcn/hutool/extra/ftp/FtpException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public command(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    .line 251
    :try_start_0
    iget-object v1, p0, Lcn/hutool/extra/ssh/SshjSftp;->ssh:Lnet/schmizz/sshj/SSHClient;

    invoke-virtual {v1}, Lnet/schmizz/sshj/SSHClient;->startSession()Lnet/schmizz/sshj/connection/channel/direct/Session;

    move-result-object v0

    .line 252
    invoke-interface {v0, p1}, Lnet/schmizz/sshj/connection/channel/direct/Session;->exec(Ljava/lang/String;)Lnet/schmizz/sshj/connection/channel/direct/Session$Command;

    move-result-object p1

    .line 253
    invoke-interface {p1}, Lnet/schmizz/sshj/connection/channel/direct/Session$Command;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    .line 254
    sget-object v1, Lcn/hutool/extra/ssh/SshjSftp;->DEFAULT_CHARSET:Ljava/nio/charset/Charset;

    invoke-static {p1, v1}, Lcn/hutool/core/io/IoUtil;->read(Ljava/io/InputStream;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 258
    invoke-static {v0}, Lcn/hutool/core/io/IoUtil;->close(Ljava/io/Closeable;)V

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 256
    :try_start_1
    new-instance v1, Lcn/hutool/extra/ftp/FtpException;

    invoke-direct {v1, p1}, Lcn/hutool/extra/ftp/FtpException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 258
    :goto_0
    invoke-static {v0}, Lcn/hutool/core/io/IoUtil;->close(Ljava/io/Closeable;)V

    .line 259
    throw p1
.end method

.method public containsFile(Ljava/lang/String;)Z
    .locals 1

    .line 232
    :try_start_0
    iget-object v0, p0, Lcn/hutool/extra/ssh/SshjSftp;->sftp:Lnet/schmizz/sshj/sftp/SFTPClient;

    invoke-virtual {v0, p1}, Lnet/schmizz/sshj/sftp/SFTPClient;->lstat(Ljava/lang/String;)Lnet/schmizz/sshj/sftp/FileAttributes;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    const/4 p1, 0x0

    return p1
.end method

.method public delDir(Ljava/lang/String;)Z
    .locals 1

    .line 178
    :try_start_0
    iget-object v0, p0, Lcn/hutool/extra/ssh/SshjSftp;->sftp:Lnet/schmizz/sshj/sftp/SFTPClient;

    invoke-virtual {v0, p1}, Lnet/schmizz/sshj/sftp/SFTPClient;->rmdir(Ljava/lang/String;)V

    .line 179
    invoke-virtual {p0, p1}, Lcn/hutool/extra/ssh/SshjSftp;->containsFile(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    xor-int/lit8 p1, p1, 0x1

    return p1

    :catch_0
    move-exception p1

    .line 181
    new-instance v0, Lcn/hutool/extra/ftp/FtpException;

    invoke-direct {v0, p1}, Lcn/hutool/extra/ftp/FtpException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public delFile(Ljava/lang/String;)Z
    .locals 1

    .line 168
    :try_start_0
    iget-object v0, p0, Lcn/hutool/extra/ssh/SshjSftp;->sftp:Lnet/schmizz/sshj/sftp/SFTPClient;

    invoke-virtual {v0, p1}, Lnet/schmizz/sshj/sftp/SFTPClient;->rm(Ljava/lang/String;)V

    .line 169
    invoke-virtual {p0, p1}, Lcn/hutool/extra/ssh/SshjSftp;->containsFile(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    xor-int/lit8 p1, p1, 0x1

    return p1

    :catch_0
    move-exception p1

    .line 171
    new-instance v0, Lcn/hutool/extra/ftp/FtpException;

    invoke-direct {v0, p1}, Lcn/hutool/extra/ftp/FtpException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public download(Ljava/lang/String;Ljava/io/File;)V
    .locals 2

    .line 198
    :try_start_0
    iget-object v0, p0, Lcn/hutool/extra/ssh/SshjSftp;->sftp:Lnet/schmizz/sshj/sftp/SFTPClient;

    new-instance v1, Lnet/schmizz/sshj/xfer/FileSystemFile;

    invoke-direct {v1, p2}, Lnet/schmizz/sshj/xfer/FileSystemFile;-><init>(Ljava/io/File;)V

    invoke-virtual {v0, p1, v1}, Lnet/schmizz/sshj/sftp/SFTPClient;->get(Ljava/lang/String;Lnet/schmizz/sshj/xfer/LocalDestFile;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 200
    new-instance p2, Lcn/hutool/extra/ftp/FtpException;

    invoke-direct {p2, p1}, Lcn/hutool/extra/ftp/FtpException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public init()V
    .locals 3

    .line 102
    new-instance v0, Lnet/schmizz/sshj/SSHClient;

    invoke-direct {v0}, Lnet/schmizz/sshj/SSHClient;-><init>()V

    iput-object v0, p0, Lcn/hutool/extra/ssh/SshjSftp;->ssh:Lnet/schmizz/sshj/SSHClient;

    .line 103
    new-instance v1, Lnet/schmizz/sshj/transport/verification/PromiscuousVerifier;

    invoke-direct {v1}, Lnet/schmizz/sshj/transport/verification/PromiscuousVerifier;-><init>()V

    invoke-virtual {v0, v1}, Lnet/schmizz/sshj/SSHClient;->addHostKeyVerifier(Lnet/schmizz/sshj/transport/verification/HostKeyVerifier;)V

    .line 105
    :try_start_0
    iget-object v0, p0, Lcn/hutool/extra/ssh/SshjSftp;->ssh:Lnet/schmizz/sshj/SSHClient;

    iget-object v1, p0, Lcn/hutool/extra/ssh/SshjSftp;->ftpConfig:Lcn/hutool/extra/ftp/FtpConfig;

    invoke-virtual {v1}, Lcn/hutool/extra/ftp/FtpConfig;->getHost()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcn/hutool/extra/ssh/SshjSftp;->ftpConfig:Lcn/hutool/extra/ftp/FtpConfig;

    invoke-virtual {v2}, Lcn/hutool/extra/ftp/FtpConfig;->getPort()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lnet/schmizz/sshj/SSHClient;->connect(Ljava/lang/String;I)V

    .line 106
    iget-object v0, p0, Lcn/hutool/extra/ssh/SshjSftp;->ssh:Lnet/schmizz/sshj/SSHClient;

    iget-object v1, p0, Lcn/hutool/extra/ssh/SshjSftp;->ftpConfig:Lcn/hutool/extra/ftp/FtpConfig;

    invoke-virtual {v1}, Lcn/hutool/extra/ftp/FtpConfig;->getUser()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcn/hutool/extra/ssh/SshjSftp;->ftpConfig:Lcn/hutool/extra/ftp/FtpConfig;

    invoke-virtual {v2}, Lcn/hutool/extra/ftp/FtpConfig;->getPassword()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lnet/schmizz/sshj/SSHClient;->authPassword(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    iget-object v0, p0, Lcn/hutool/extra/ssh/SshjSftp;->ssh:Lnet/schmizz/sshj/SSHClient;

    iget-object v1, p0, Lcn/hutool/extra/ssh/SshjSftp;->ftpConfig:Lcn/hutool/extra/ftp/FtpConfig;

    invoke-virtual {v1}, Lcn/hutool/extra/ftp/FtpConfig;->getCharset()Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/schmizz/sshj/SSHClient;->setRemoteCharset(Ljava/nio/charset/Charset;)V

    .line 108
    iget-object v0, p0, Lcn/hutool/extra/ssh/SshjSftp;->ssh:Lnet/schmizz/sshj/SSHClient;

    invoke-virtual {v0}, Lnet/schmizz/sshj/SSHClient;->newSFTPClient()Lnet/schmizz/sshj/sftp/SFTPClient;

    move-result-object v0

    iput-object v0, p0, Lcn/hutool/extra/ssh/SshjSftp;->sftp:Lnet/schmizz/sshj/sftp/SFTPClient;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 110
    new-instance v1, Lcn/hutool/extra/ftp/FtpException;

    const-string v2, "sftp \u521d\u59cb\u5316\u5931\u8d25."

    invoke-direct {v1, v2, v0}, Lcn/hutool/extra/ftp/FtpException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method synthetic lambda$recursiveDownloadFolder$0$cn-hutool-extra-ssh-SshjSftp(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;)V
    .locals 1

    .line 208
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcn/hutool/extra/ssh/SshjSftp;->download(Ljava/lang/String;Ljava/io/File;)V

    return-void
.end method

.method public ls(Ljava/lang/String;)Ljava/util/List;
    .locals 2
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

    .line 155
    :try_start_0
    iget-object v0, p0, Lcn/hutool/extra/ssh/SshjSftp;->sftp:Lnet/schmizz/sshj/sftp/SFTPClient;

    invoke-virtual {v0, p1}, Lnet/schmizz/sshj/sftp/SFTPClient;->ls(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 159
    invoke-static {p1}, Lcn/hutool/core/collection/CollUtil;->isNotEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 160
    new-instance v0, Lcn/hutool/extra/ssh/SshjSftp$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcn/hutool/extra/ssh/SshjSftp$$ExternalSyntheticLambda0;-><init>()V

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Lcn/hutool/core/collection/CollUtil;->map(Ljava/lang/Iterable;Ljava/util/function/Function;Z)Ljava/util/List;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1

    :catch_0
    move-exception p1

    .line 157
    new-instance v0, Lcn/hutool/extra/ftp/FtpException;

    invoke-direct {v0, p1}, Lcn/hutool/extra/ftp/FtpException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public mkdir(Ljava/lang/String;)Z
    .locals 1

    .line 144
    :try_start_0
    iget-object v0, p0, Lcn/hutool/extra/ssh/SshjSftp;->sftp:Lnet/schmizz/sshj/sftp/SFTPClient;

    invoke-virtual {v0, p1}, Lnet/schmizz/sshj/sftp/SFTPClient;->mkdir(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 148
    invoke-virtual {p0, p1}, Lcn/hutool/extra/ssh/SshjSftp;->containsFile(Ljava/lang/String;)Z

    move-result p1

    return p1

    :catch_0
    move-exception p1

    .line 146
    new-instance v0, Lcn/hutool/extra/ftp/FtpException;

    invoke-direct {v0, p1}, Lcn/hutool/extra/ftp/FtpException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public pwd()Ljava/lang/String;
    .locals 1

    const-string v0, "pwd"

    .line 138
    invoke-virtual {p0, v0}, Lcn/hutool/extra/ssh/SshjSftp;->command(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public reconnectIfTimeout()Lcn/hutool/extra/ftp/AbstractFtp;
    .locals 2

    .line 116
    iget-object v0, p0, Lcn/hutool/extra/ssh/SshjSftp;->ftpConfig:Lcn/hutool/extra/ftp/FtpConfig;

    invoke-virtual {v0}, Lcn/hutool/extra/ftp/FtpConfig;->getHost()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/hutool/core/util/StrUtil;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    :try_start_0
    const-string v0, "/"

    .line 120
    invoke-virtual {p0, v0}, Lcn/hutool/extra/ssh/SshjSftp;->cd(Ljava/lang/String;)Z
    :try_end_0
    .catch Lcn/hutool/extra/ftp/FtpException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 122
    :catch_0
    invoke-virtual {p0}, Lcn/hutool/extra/ssh/SshjSftp;->close()V

    .line 123
    invoke-virtual {p0}, Lcn/hutool/extra/ssh/SshjSftp;->init()V

    :goto_0
    return-object p0

    .line 117
    :cond_0
    new-instance v0, Lcn/hutool/extra/ftp/FtpException;

    const-string v1, "Host is blank!"

    invoke-direct {v0, v1}, Lcn/hutool/extra/ftp/FtpException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public recursiveDownloadFolder(Ljava/lang/String;Ljava/io/File;)V
    .locals 2

    .line 206
    invoke-virtual {p0, p1}, Lcn/hutool/extra/ssh/SshjSftp;->ls(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 207
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 208
    new-instance v1, Lcn/hutool/extra/ssh/SshjSftp$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1, p2}, Lcn/hutool/extra/ssh/SshjSftp$$ExternalSyntheticLambda1;-><init>(Lcn/hutool/extra/ssh/SshjSftp;Ljava/lang/String;Ljava/io/File;)V

    invoke-interface {v0, v1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    :cond_0
    return-void
.end method

.method public upload(Ljava/lang/String;Ljava/io/File;)Z
    .locals 2

    .line 188
    :try_start_0
    iget-object v0, p0, Lcn/hutool/extra/ssh/SshjSftp;->sftp:Lnet/schmizz/sshj/sftp/SFTPClient;

    new-instance v1, Lnet/schmizz/sshj/xfer/FileSystemFile;

    invoke-direct {v1, p2}, Lnet/schmizz/sshj/xfer/FileSystemFile;-><init>(Ljava/io/File;)V

    invoke-virtual {v0, v1, p1}, Lnet/schmizz/sshj/sftp/SFTPClient;->put(Lnet/schmizz/sshj/xfer/LocalSourceFile;Ljava/lang/String;)V

    .line 189
    invoke-virtual {p0, p1}, Lcn/hutool/extra/ssh/SshjSftp;->containsFile(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 191
    new-instance p2, Lcn/hutool/extra/ftp/FtpException;

    invoke-direct {p2, p1}, Lcn/hutool/extra/ftp/FtpException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method
