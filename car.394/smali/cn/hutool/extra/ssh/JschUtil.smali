.class public Lcn/hutool/extra/ssh/JschUtil;
.super Ljava/lang/Object;
.source "JschUtil.java"


# static fields
.field public static final SSH_NONE:Ljava/lang/String; = "none"

.field private static final portGenerater:Lcn/hutool/core/net/LocalPortGenerater;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 34
    new-instance v0, Lcn/hutool/core/net/LocalPortGenerater;

    const/16 v1, 0x2710

    invoke-direct {v0, v1}, Lcn/hutool/core/net/LocalPortGenerater;-><init>(I)V

    sput-object v0, Lcn/hutool/extra/ssh/JschUtil;->portGenerater:Lcn/hutool/core/net/LocalPortGenerater;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bindPort(Lcom/jcraft/jsch/Session;Ljava/lang/String;II)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/hutool/extra/ssh/JschRuntimeException;
        }
    .end annotation

    const-string v0, "127.0.0.1"

    .line 311
    invoke-static {p0, p1, p2, v0, p3}, Lcn/hutool/extra/ssh/JschUtil;->bindPort(Lcom/jcraft/jsch/Session;Ljava/lang/String;ILjava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public static bindPort(Lcom/jcraft/jsch/Session;Ljava/lang/String;ILjava/lang/String;I)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/hutool/extra/ssh/JschRuntimeException;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    .line 327
    invoke-virtual {p0}, Lcom/jcraft/jsch/Session;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    .line 329
    :try_start_0
    invoke-virtual {p0, p3, p4, p1, p2}, Lcom/jcraft/jsch/Session;->setPortForwardingL(Ljava/lang/String;ILjava/lang/String;I)I
    :try_end_0
    .catch Lcom/jcraft/jsch/JSchException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception p0

    .line 331
    new-instance v2, Lcn/hutool/extra/ssh/JschRuntimeException;

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v1

    const/4 p1, 0x2

    aput-object p3, v3, p1

    const/4 p1, 0x3

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v3, p1

    const-string p1, "From [{}:{}] mapping to [{}:{}] error\uff01"

    invoke-direct {v2, p0, p1, v3}, Lcn/hutool/extra/ssh/JschRuntimeException;-><init>(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    throw v2

    :cond_0
    return v0
.end method

.method public static bindRemotePort(Lcom/jcraft/jsch/Session;ILjava/lang/String;I)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/hutool/extra/ssh/JschRuntimeException;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    .line 352
    invoke-virtual {p0}, Lcom/jcraft/jsch/Session;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    .line 354
    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/jcraft/jsch/Session;->setPortForwardingR(ILjava/lang/String;I)V
    :try_end_0
    .catch Lcom/jcraft/jsch/JSchException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception p0

    .line 356
    new-instance p2, Lcn/hutool/extra/ssh/JschRuntimeException;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v1

    const-string p1, "From [{}] mapping to [{}] error\uff01"

    invoke-direct {p2, p0, p1, v2}, Lcn/hutool/extra/ssh/JschRuntimeException;-><init>(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    throw p2

    :cond_0
    return v0
.end method

.method public static close(Lcom/jcraft/jsch/Channel;)V
    .locals 1

    if-eqz p0, :cond_0

    .line 610
    invoke-virtual {p0}, Lcom/jcraft/jsch/Channel;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 611
    invoke-virtual {p0}, Lcom/jcraft/jsch/Channel;->disconnect()V

    :cond_0
    return-void
.end method

.method public static close(Lcom/jcraft/jsch/Session;)V
    .locals 1

    if-eqz p0, :cond_0

    .line 597
    invoke-virtual {p0}, Lcom/jcraft/jsch/Session;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 598
    invoke-virtual {p0}, Lcom/jcraft/jsch/Session;->disconnect()V

    .line 600
    :cond_0
    sget-object v0, Lcn/hutool/extra/ssh/JschSessionPool;->INSTANCE:Lcn/hutool/extra/ssh/JschSessionPool;

    invoke-virtual {v0, p0}, Lcn/hutool/extra/ssh/JschSessionPool;->remove(Lcom/jcraft/jsch/Session;)V

    return-void
.end method

.method public static close(Ljava/lang/String;)V
    .locals 1

    .line 621
    sget-object v0, Lcn/hutool/extra/ssh/JschSessionPool;->INSTANCE:Lcn/hutool/extra/ssh/JschSessionPool;

    invoke-virtual {v0, p0}, Lcn/hutool/extra/ssh/JschSessionPool;->close(Ljava/lang/String;)V

    return-void
.end method

.method public static closeAll()V
    .locals 1

    .line 628
    sget-object v0, Lcn/hutool/extra/ssh/JschSessionPool;->INSTANCE:Lcn/hutool/extra/ssh/JschSessionPool;

    invoke-virtual {v0}, Lcn/hutool/extra/ssh/JschSessionPool;->closeAll()V

    return-void
.end method

.method public static createChannel(Lcom/jcraft/jsch/Session;Lcn/hutool/extra/ssh/ChannelType;)Lcom/jcraft/jsch/Channel;
    .locals 1

    .line 497
    :try_start_0
    invoke-virtual {p0}, Lcom/jcraft/jsch/Session;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 498
    invoke-virtual {p0}, Lcom/jcraft/jsch/Session;->connect()V

    .line 500
    :cond_0
    invoke-virtual {p1}, Lcn/hutool/extra/ssh/ChannelType;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/jcraft/jsch/Session;->openChannel(Ljava/lang/String;)Lcom/jcraft/jsch/Channel;

    move-result-object p0
    :try_end_0
    .catch Lcom/jcraft/jsch/JSchException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 502
    new-instance p1, Lcn/hutool/extra/ssh/JschRuntimeException;

    invoke-direct {p1, p0}, Lcn/hutool/extra/ssh/JschRuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static createSession(Lcom/jcraft/jsch/JSch;Ljava/lang/String;ILjava/lang/String;)Lcom/jcraft/jsch/Session;
    .locals 3

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "SSH Host must be not empty!"

    .line 275
    invoke-static {p1, v2, v1}, Lcn/hutool/core/lang/Assert;->notEmpty(Ljava/lang/CharSequence;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/CharSequence;

    if-lez p2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    const-string v2, "SSH port must be > 0"

    new-array v0, v0, [Ljava/lang/Object;

    .line 276
    invoke-static {v1, v2, v0}, Lcn/hutool/core/lang/Assert;->isTrue(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 279
    invoke-static {p3}, Lcn/hutool/core/util/StrUtil;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p3, "root"

    :cond_1
    if-nez p0, :cond_2

    .line 284
    new-instance p0, Lcom/jcraft/jsch/JSch;

    invoke-direct {p0}, Lcom/jcraft/jsch/JSch;-><init>()V

    .line 289
    :cond_2
    :try_start_0
    invoke-virtual {p0, p3, p1, p2}, Lcom/jcraft/jsch/JSch;->getSession(Ljava/lang/String;Ljava/lang/String;I)Lcom/jcraft/jsch/Session;

    move-result-object p0
    :try_end_0
    .catch Lcom/jcraft/jsch/JSchException; {:try_start_0 .. :try_end_0} :catch_0

    const-string p1, "StrictHostKeyChecking"

    const-string p2, "no"

    .line 295
    invoke-virtual {p0, p1, p2}, Lcom/jcraft/jsch/Session;->setConfig(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0

    :catch_0
    move-exception p0

    .line 291
    new-instance p1, Lcn/hutool/extra/ssh/JschRuntimeException;

    invoke-direct {p1, p0}, Lcn/hutool/extra/ssh/JschRuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static createSession(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Lcom/jcraft/jsch/Session;
    .locals 1

    .line 205
    new-instance v0, Lcom/jcraft/jsch/JSch;

    invoke-direct {v0}, Lcom/jcraft/jsch/JSch;-><init>()V

    .line 206
    invoke-static {v0, p0, p1, p2}, Lcn/hutool/extra/ssh/JschUtil;->createSession(Lcom/jcraft/jsch/JSch;Ljava/lang/String;ILjava/lang/String;)Lcom/jcraft/jsch/Session;

    move-result-object p0

    .line 208
    invoke-static {p3}, Lcn/hutool/core/util/StrUtil;->isNotEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 209
    invoke-virtual {p0, p3}, Lcom/jcraft/jsch/Session;->setPassword(Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method public static createSession(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;[B)Lcom/jcraft/jsch/Session;
    .locals 2

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "PrivateKey Path must be not empty!"

    .line 227
    invoke-static {p3, v1, v0}, Lcn/hutool/core/lang/Assert;->notEmpty(Ljava/lang/CharSequence;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/CharSequence;

    .line 229
    new-instance v0, Lcom/jcraft/jsch/JSch;

    invoke-direct {v0}, Lcom/jcraft/jsch/JSch;-><init>()V

    .line 231
    :try_start_0
    invoke-virtual {v0, p3, p4}, Lcom/jcraft/jsch/JSch;->addIdentity(Ljava/lang/String;[B)V
    :try_end_0
    .catch Lcom/jcraft/jsch/JSchException; {:try_start_0 .. :try_end_0} :catch_0

    .line 236
    invoke-static {v0, p0, p1, p2}, Lcn/hutool/extra/ssh/JschUtil;->createSession(Lcom/jcraft/jsch/JSch;Ljava/lang/String;ILjava/lang/String;)Lcom/jcraft/jsch/Session;

    move-result-object p0

    return-object p0

    :catch_0
    move-exception p0

    .line 233
    new-instance p1, Lcn/hutool/extra/ssh/JschRuntimeException;

    invoke-direct {p1, p0}, Lcn/hutool/extra/ssh/JschRuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static createSession(Ljava/lang/String;ILjava/lang/String;[B[B)Lcom/jcraft/jsch/Session;
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p3, :cond_0

    .line 251
    array-length v2, p3

    if-lez v2, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    const-string v3, "PrivateKey must be not empty!"

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcn/hutool/core/lang/Assert;->isTrue(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 253
    new-instance v2, Lcom/jcraft/jsch/JSch;

    invoke-direct {v2}, Lcom/jcraft/jsch/JSch;-><init>()V

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p2, v3, v1

    aput-object p0, v3, v0

    const/4 v0, 0x2

    .line 254
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v0

    const-string v0, "{}@{}:{}"

    invoke-static {v0, v3}, Lcn/hutool/core/util/StrUtil;->format(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 256
    :try_start_0
    invoke-virtual {v2, v0, p3, v1, p4}, Lcom/jcraft/jsch/JSch;->addIdentity(Ljava/lang/String;[B[B[B)V
    :try_end_0
    .catch Lcom/jcraft/jsch/JSchException; {:try_start_0 .. :try_end_0} :catch_0

    .line 261
    invoke-static {v2, p0, p1, p2}, Lcn/hutool/extra/ssh/JschUtil;->createSession(Lcom/jcraft/jsch/JSch;Ljava/lang/String;ILjava/lang/String;)Lcom/jcraft/jsch/Session;

    move-result-object p0

    return-object p0

    :catch_0
    move-exception p0

    .line 258
    new-instance p1, Lcn/hutool/extra/ssh/JschRuntimeException;

    invoke-direct {p1, p0}, Lcn/hutool/extra/ssh/JschRuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static createSftp(Lcom/jcraft/jsch/Session;)Lcn/hutool/extra/ssh/Sftp;
    .locals 1

    .line 441
    new-instance v0, Lcn/hutool/extra/ssh/Sftp;

    invoke-direct {v0, p0}, Lcn/hutool/extra/ssh/Sftp;-><init>(Lcom/jcraft/jsch/Session;)V

    return-object v0
.end method

.method public static createSftp(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Lcn/hutool/extra/ssh/Sftp;
    .locals 1

    .line 430
    new-instance v0, Lcn/hutool/extra/ssh/Sftp;

    invoke-direct {v0, p0, p1, p2, p3}, Lcn/hutool/extra/ssh/Sftp;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static exec(Lcom/jcraft/jsch/Session;Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/lang/String;
    .locals 1

    .line 517
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-static {p0, p1, p2, v0}, Lcn/hutool/extra/ssh/JschUtil;->exec(Lcom/jcraft/jsch/Session;Ljava/lang/String;Ljava/nio/charset/Charset;Ljava/io/OutputStream;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static exec(Lcom/jcraft/jsch/Session;Ljava/lang/String;Ljava/nio/charset/Charset;Ljava/io/OutputStream;)Ljava/lang/String;
    .locals 1

    if-nez p2, :cond_0

    .line 535
    sget-object p2, Lcn/hutool/core/util/CharsetUtil;->CHARSET_UTF_8:Ljava/nio/charset/Charset;

    .line 537
    :cond_0
    sget-object v0, Lcn/hutool/extra/ssh/ChannelType;->EXEC:Lcn/hutool/extra/ssh/ChannelType;

    invoke-static {p0, v0}, Lcn/hutool/extra/ssh/JschUtil;->createChannel(Lcom/jcraft/jsch/Session;Lcn/hutool/extra/ssh/ChannelType;)Lcom/jcraft/jsch/Channel;

    move-result-object p0

    check-cast p0, Lcom/jcraft/jsch/ChannelExec;

    .line 538
    invoke-static {p1, p2}, Lcn/hutool/core/util/StrUtil;->bytes(Ljava/lang/CharSequence;Ljava/nio/charset/Charset;)[B

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/jcraft/jsch/ChannelExec;->setCommand([B)V

    const/4 p1, 0x0

    .line 539
    invoke-virtual {p0, p1}, Lcom/jcraft/jsch/ChannelExec;->setInputStream(Ljava/io/InputStream;)V

    .line 540
    invoke-virtual {p0, p3}, Lcom/jcraft/jsch/ChannelExec;->setErrStream(Ljava/io/OutputStream;)V

    .line 543
    :try_start_0
    invoke-virtual {p0}, Lcom/jcraft/jsch/ChannelExec;->connect()V

    .line 544
    invoke-virtual {p0}, Lcom/jcraft/jsch/ChannelExec;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    .line 545
    invoke-static {p1, p2}, Lcn/hutool/core/io/IoUtil;->read(Ljava/io/InputStream;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/jcraft/jsch/JSchException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 551
    invoke-static {p1}, Lcn/hutool/core/io/IoUtil;->close(Ljava/io/Closeable;)V

    .line 552
    invoke-static {p0}, Lcn/hutool/extra/ssh/JschUtil;->close(Lcom/jcraft/jsch/Channel;)V

    return-object p2

    :catchall_0
    move-exception p2

    goto :goto_0

    :catch_0
    move-exception p2

    .line 549
    :try_start_1
    new-instance p3, Lcn/hutool/extra/ssh/JschRuntimeException;

    invoke-direct {p3, p2}, Lcn/hutool/extra/ssh/JschRuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p3

    :catch_1
    move-exception p2

    .line 547
    new-instance p3, Lcn/hutool/core/io/IORuntimeException;

    invoke-direct {p3, p2}, Lcn/hutool/core/io/IORuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 551
    :goto_0
    invoke-static {p1}, Lcn/hutool/core/io/IoUtil;->close(Ljava/io/Closeable;)V

    .line 552
    invoke-static {p0}, Lcn/hutool/extra/ssh/JschUtil;->close(Lcom/jcraft/jsch/Channel;)V

    .line 553
    throw p2
.end method

.method public static execByShell(Lcom/jcraft/jsch/Session;Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/lang/String;
    .locals 2

    .line 569
    invoke-static {p0}, Lcn/hutool/extra/ssh/JschUtil;->openShell(Lcom/jcraft/jsch/Session;)Lcom/jcraft/jsch/ChannelShell;

    move-result-object p0

    const/4 v0, 0x1

    .line 571
    invoke-virtual {p0, v0}, Lcom/jcraft/jsch/ChannelShell;->setPty(Z)V

    const/4 v0, 0x0

    .line 575
    :try_start_0
    invoke-virtual {p0}, Lcom/jcraft/jsch/ChannelShell;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 576
    :try_start_1
    invoke-virtual {p0}, Lcom/jcraft/jsch/ChannelShell;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    .line 578
    invoke-static {p1, p2}, Lcn/hutool/core/util/StrUtil;->bytes(Ljava/lang/CharSequence;Ljava/nio/charset/Charset;)[B

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/io/OutputStream;->write([B)V

    .line 579
    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V

    .line 581
    invoke-static {v0, p2}, Lcn/hutool/core/io/IoUtil;->read(Ljava/io/InputStream;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 585
    invoke-static {v1}, Lcn/hutool/core/io/IoUtil;->close(Ljava/io/Closeable;)V

    .line 586
    invoke-static {v0}, Lcn/hutool/core/io/IoUtil;->close(Ljava/io/Closeable;)V

    .line 587
    invoke-static {p0}, Lcn/hutool/extra/ssh/JschUtil;->close(Lcom/jcraft/jsch/Channel;)V

    return-object p1

    :catchall_0
    move-exception p1

    move-object p2, v0

    move-object v0, v1

    goto :goto_1

    :catch_0
    move-exception p1

    move-object p2, v0

    move-object v0, v1

    goto :goto_0

    :catchall_1
    move-exception p1

    move-object p2, v0

    goto :goto_1

    :catch_1
    move-exception p1

    move-object p2, v0

    .line 583
    :goto_0
    :try_start_2
    new-instance v1, Lcn/hutool/core/io/IORuntimeException;

    invoke-direct {v1, p1}, Lcn/hutool/core/io/IORuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :catchall_2
    move-exception p1

    .line 585
    :goto_1
    invoke-static {v0}, Lcn/hutool/core/io/IoUtil;->close(Ljava/io/Closeable;)V

    .line 586
    invoke-static {p2}, Lcn/hutool/core/io/IoUtil;->close(Ljava/io/Closeable;)V

    .line 587
    invoke-static {p0}, Lcn/hutool/extra/ssh/JschUtil;->close(Lcom/jcraft/jsch/Channel;)V

    .line 588
    throw p1
.end method

.method public static generateLocalPort()I
    .locals 1

    .line 42
    sget-object v0, Lcn/hutool/extra/ssh/JschUtil;->portGenerater:Lcn/hutool/core/net/LocalPortGenerater;

    invoke-virtual {v0}, Lcn/hutool/core/net/LocalPortGenerater;->generate()I

    move-result v0

    return v0
.end method

.method public static getSession(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Lcom/jcraft/jsch/Session;
    .locals 1

    .line 55
    sget-object v0, Lcn/hutool/extra/ssh/JschSessionPool;->INSTANCE:Lcn/hutool/extra/ssh/JschSessionPool;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcn/hutool/extra/ssh/JschSessionPool;->getSession(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Lcom/jcraft/jsch/Session;

    move-result-object p0

    return-object p0
.end method

.method public static getSession(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;[B)Lcom/jcraft/jsch/Session;
    .locals 6

    .line 69
    sget-object v0, Lcn/hutool/extra/ssh/JschSessionPool;->INSTANCE:Lcn/hutool/extra/ssh/JschSessionPool;

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcn/hutool/extra/ssh/JschSessionPool;->getSession(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;[B)Lcom/jcraft/jsch/Session;

    move-result-object p0

    return-object p0
.end method

.method public static getSession(Ljava/lang/String;ILjava/lang/String;[B[B)Lcom/jcraft/jsch/Session;
    .locals 6

    .line 84
    sget-object v0, Lcn/hutool/extra/ssh/JschSessionPool;->INSTANCE:Lcn/hutool/extra/ssh/JschSessionPool;

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcn/hutool/extra/ssh/JschSessionPool;->getSession(Ljava/lang/String;ILjava/lang/String;[B[B)Lcom/jcraft/jsch/Session;

    move-result-object p0

    return-object p0
.end method

.method public static openAndBindPortToLocal(Lcn/hutool/extra/ssh/Connector;Ljava/lang/String;I)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/hutool/extra/ssh/JschRuntimeException;
        }
    .end annotation

    .line 390
    invoke-virtual {p0}, Lcn/hutool/extra/ssh/Connector;->getHost()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcn/hutool/extra/ssh/Connector;->getPort()I

    move-result v1

    invoke-virtual {p0}, Lcn/hutool/extra/ssh/Connector;->getUser()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcn/hutool/extra/ssh/Connector;->getPassword()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, v1, v2, p0}, Lcn/hutool/extra/ssh/JschUtil;->openSession(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Lcom/jcraft/jsch/Session;

    move-result-object p0

    .line 391
    invoke-static {}, Lcn/hutool/extra/ssh/JschUtil;->generateLocalPort()I

    move-result v0

    .line 392
    invoke-static {p0, p1, p2, v0}, Lcn/hutool/extra/ssh/JschUtil;->bindPort(Lcom/jcraft/jsch/Session;Ljava/lang/String;II)Z

    return v0
.end method

.method public static openChannel(Lcom/jcraft/jsch/Session;Lcn/hutool/extra/ssh/ChannelType;)Lcom/jcraft/jsch/Channel;
    .locals 1

    const/4 v0, 0x0

    .line 464
    invoke-static {p0, p1, v0}, Lcn/hutool/extra/ssh/JschUtil;->openChannel(Lcom/jcraft/jsch/Session;Lcn/hutool/extra/ssh/ChannelType;I)Lcom/jcraft/jsch/Channel;

    move-result-object p0

    return-object p0
.end method

.method public static openChannel(Lcom/jcraft/jsch/Session;Lcn/hutool/extra/ssh/ChannelType;I)Lcom/jcraft/jsch/Channel;
    .locals 0

    .line 477
    invoke-static {p0, p1}, Lcn/hutool/extra/ssh/JschUtil;->createChannel(Lcom/jcraft/jsch/Session;Lcn/hutool/extra/ssh/ChannelType;)Lcom/jcraft/jsch/Channel;

    move-result-object p0

    const/4 p1, 0x0

    .line 479
    :try_start_0
    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/jcraft/jsch/Channel;->connect(I)V
    :try_end_0
    .catch Lcom/jcraft/jsch/JSchException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 481
    new-instance p1, Lcn/hutool/extra/ssh/JschRuntimeException;

    invoke-direct {p1, p0}, Lcn/hutool/extra/ssh/JschRuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static openSession(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Lcom/jcraft/jsch/Session;
    .locals 1

    const/4 v0, 0x0

    .line 97
    invoke-static {p0, p1, p2, p3, v0}, Lcn/hutool/extra/ssh/JschUtil;->openSession(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)Lcom/jcraft/jsch/Session;

    move-result-object p0

    return-object p0
.end method

.method public static openSession(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)Lcom/jcraft/jsch/Session;
    .locals 0

    .line 112
    invoke-static {p0, p1, p2, p3}, Lcn/hutool/extra/ssh/JschUtil;->createSession(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Lcom/jcraft/jsch/Session;

    move-result-object p0

    .line 114
    :try_start_0
    invoke-virtual {p0, p4}, Lcom/jcraft/jsch/Session;->connect(I)V
    :try_end_0
    .catch Lcom/jcraft/jsch/JSchException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 116
    new-instance p1, Lcn/hutool/extra/ssh/JschRuntimeException;

    invoke-direct {p1, p0}, Lcn/hutool/extra/ssh/JschRuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static openSession(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;[B)Lcom/jcraft/jsch/Session;
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 132
    invoke-static/range {v0 .. v5}, Lcn/hutool/extra/ssh/JschUtil;->openSession(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;[BI)Lcom/jcraft/jsch/Session;

    move-result-object p0

    return-object p0
.end method

.method public static openSession(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;[BI)Lcom/jcraft/jsch/Session;
    .locals 0

    .line 185
    invoke-static {p0, p1, p2, p3, p4}, Lcn/hutool/extra/ssh/JschUtil;->createSession(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;[B)Lcom/jcraft/jsch/Session;

    move-result-object p0

    .line 187
    :try_start_0
    invoke-virtual {p0, p5}, Lcom/jcraft/jsch/Session;->connect(I)V
    :try_end_0
    .catch Lcom/jcraft/jsch/JSchException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 189
    new-instance p1, Lcn/hutool/extra/ssh/JschRuntimeException;

    invoke-direct {p1, p0}, Lcn/hutool/extra/ssh/JschRuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static openSession(Ljava/lang/String;ILjava/lang/String;[B[B)Lcom/jcraft/jsch/Session;
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 147
    invoke-static/range {v0 .. v5}, Lcn/hutool/extra/ssh/JschUtil;->openSession(Ljava/lang/String;ILjava/lang/String;[B[BI)Lcom/jcraft/jsch/Session;

    move-result-object p0

    return-object p0
.end method

.method public static openSession(Ljava/lang/String;ILjava/lang/String;[B[BI)Lcom/jcraft/jsch/Session;
    .locals 0

    .line 163
    invoke-static {p0, p1, p2, p3, p4}, Lcn/hutool/extra/ssh/JschUtil;->createSession(Ljava/lang/String;ILjava/lang/String;[B[B)Lcom/jcraft/jsch/Session;

    move-result-object p0

    .line 165
    :try_start_0
    invoke-virtual {p0, p5}, Lcom/jcraft/jsch/Session;->connect(I)V
    :try_end_0
    .catch Lcom/jcraft/jsch/JSchException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 167
    new-instance p1, Lcn/hutool/extra/ssh/JschRuntimeException;

    invoke-direct {p1, p0}, Lcn/hutool/extra/ssh/JschRuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static openSftp(Lcom/jcraft/jsch/Session;)Lcom/jcraft/jsch/ChannelSftp;
    .locals 1

    const/4 v0, 0x0

    .line 404
    invoke-static {p0, v0}, Lcn/hutool/extra/ssh/JschUtil;->openSftp(Lcom/jcraft/jsch/Session;I)Lcom/jcraft/jsch/ChannelSftp;

    move-result-object p0

    return-object p0
.end method

.method public static openSftp(Lcom/jcraft/jsch/Session;I)Lcom/jcraft/jsch/ChannelSftp;
    .locals 1

    .line 416
    sget-object v0, Lcn/hutool/extra/ssh/ChannelType;->SFTP:Lcn/hutool/extra/ssh/ChannelType;

    invoke-static {p0, v0, p1}, Lcn/hutool/extra/ssh/JschUtil;->openChannel(Lcom/jcraft/jsch/Session;Lcn/hutool/extra/ssh/ChannelType;I)Lcom/jcraft/jsch/Channel;

    move-result-object p0

    check-cast p0, Lcom/jcraft/jsch/ChannelSftp;

    return-object p0
.end method

.method public static openShell(Lcom/jcraft/jsch/Session;)Lcom/jcraft/jsch/ChannelShell;
    .locals 1

    .line 452
    sget-object v0, Lcn/hutool/extra/ssh/ChannelType;->SHELL:Lcn/hutool/extra/ssh/ChannelType;

    invoke-static {p0, v0}, Lcn/hutool/extra/ssh/JschUtil;->openChannel(Lcom/jcraft/jsch/Session;Lcn/hutool/extra/ssh/ChannelType;)Lcom/jcraft/jsch/Channel;

    move-result-object p0

    check-cast p0, Lcom/jcraft/jsch/ChannelShell;

    return-object p0
.end method

.method public static unBindPort(Lcom/jcraft/jsch/Session;I)Z
    .locals 0

    .line 373
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/jcraft/jsch/Session;->delPortForwardingL(I)V
    :try_end_0
    .catch Lcom/jcraft/jsch/JSchException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    .line 375
    new-instance p1, Lcn/hutool/extra/ssh/JschRuntimeException;

    invoke-direct {p1, p0}, Lcn/hutool/extra/ssh/JschRuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method
