.class public Lcn/hutool/socket/aio/AioClient;
.super Ljava/lang/Object;
.source "AioClient.java"

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field private final session:Lcn/hutool/socket/aio/AioSession;


# direct methods
.method public constructor <init>(Ljava/net/InetSocketAddress;Lcn/hutool/socket/aio/IoAction;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/InetSocketAddress;",
            "Lcn/hutool/socket/aio/IoAction<",
            "Ljava/nio/ByteBuffer;",
            ">;)V"
        }
    .end annotation

    .line 30
    new-instance v0, Lcn/hutool/socket/SocketConfig;

    invoke-direct {v0}, Lcn/hutool/socket/SocketConfig;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Lcn/hutool/socket/aio/AioClient;-><init>(Ljava/net/InetSocketAddress;Lcn/hutool/socket/aio/IoAction;Lcn/hutool/socket/SocketConfig;)V

    return-void
.end method

.method public constructor <init>(Ljava/net/InetSocketAddress;Lcn/hutool/socket/aio/IoAction;Lcn/hutool/socket/SocketConfig;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/InetSocketAddress;",
            "Lcn/hutool/socket/aio/IoAction<",
            "Ljava/nio/ByteBuffer;",
            ">;",
            "Lcn/hutool/socket/SocketConfig;",
            ")V"
        }
    .end annotation

    .line 41
    invoke-virtual {p3}, Lcn/hutool/socket/SocketConfig;->getThreadPoolSize()I

    move-result v0

    invoke-static {p1, v0}, Lcn/hutool/socket/aio/AioClient;->createChannel(Ljava/net/InetSocketAddress;I)Ljava/nio/channels/AsynchronousSocketChannel;

    move-result-object p1

    invoke-direct {p0, p1, p2, p3}, Lcn/hutool/socket/aio/AioClient;-><init>(Ljava/nio/channels/AsynchronousSocketChannel;Lcn/hutool/socket/aio/IoAction;Lcn/hutool/socket/SocketConfig;)V

    return-void
.end method

.method public constructor <init>(Ljava/nio/channels/AsynchronousSocketChannel;Lcn/hutool/socket/aio/IoAction;Lcn/hutool/socket/SocketConfig;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/channels/AsynchronousSocketChannel;",
            "Lcn/hutool/socket/aio/IoAction<",
            "Ljava/nio/ByteBuffer;",
            ">;",
            "Lcn/hutool/socket/SocketConfig;",
            ")V"
        }
    .end annotation

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v0, Lcn/hutool/socket/aio/AioSession;

    invoke-direct {v0, p1, p2, p3}, Lcn/hutool/socket/aio/AioSession;-><init>(Ljava/nio/channels/AsynchronousSocketChannel;Lcn/hutool/socket/aio/IoAction;Lcn/hutool/socket/SocketConfig;)V

    iput-object v0, p0, Lcn/hutool/socket/aio/AioClient;->session:Lcn/hutool/socket/aio/AioSession;

    .line 53
    invoke-interface {p2, v0}, Lcn/hutool/socket/aio/IoAction;->accept(Lcn/hutool/socket/aio/AioSession;)V

    return-void
.end method

.method private static createChannel(Ljava/net/InetSocketAddress;I)Ljava/nio/channels/AsynchronousSocketChannel;
    .locals 0

    .line 118
    invoke-static {p1}, Lcn/hutool/socket/ChannelUtil;->createFixedGroup(I)Ljava/nio/channels/AsynchronousChannelGroup;

    move-result-object p1

    invoke-static {p1, p0}, Lcn/hutool/socket/ChannelUtil;->connect(Ljava/nio/channels/AsynchronousChannelGroup;Ljava/net/InetSocketAddress;)Ljava/nio/channels/AsynchronousSocketChannel;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 106
    iget-object v0, p0, Lcn/hutool/socket/aio/AioClient;->session:Lcn/hutool/socket/aio/AioSession;

    invoke-virtual {v0}, Lcn/hutool/socket/aio/AioSession;->close()V

    return-void
.end method

.method public getIoAction()Lcn/hutool/socket/aio/IoAction;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcn/hutool/socket/aio/IoAction<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation

    .line 77
    iget-object v0, p0, Lcn/hutool/socket/aio/AioClient;->session:Lcn/hutool/socket/aio/AioSession;

    invoke-virtual {v0}, Lcn/hutool/socket/aio/AioSession;->getIoAction()Lcn/hutool/socket/aio/IoAction;

    move-result-object v0

    return-object v0
.end method

.method public read()Lcn/hutool/socket/aio/AioClient;
    .locals 1

    .line 86
    iget-object v0, p0, Lcn/hutool/socket/aio/AioClient;->session:Lcn/hutool/socket/aio/AioSession;

    invoke-virtual {v0}, Lcn/hutool/socket/aio/AioSession;->read()Lcn/hutool/socket/aio/AioSession;

    return-object p0
.end method

.method public setOption(Ljava/net/SocketOption;Ljava/lang/Object;)Lcn/hutool/socket/aio/AioClient;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/net/SocketOption<",
            "TT;>;TT;)",
            "Lcn/hutool/socket/aio/AioClient;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 67
    iget-object v0, p0, Lcn/hutool/socket/aio/AioClient;->session:Lcn/hutool/socket/aio/AioSession;

    invoke-virtual {v0}, Lcn/hutool/socket/aio/AioSession;->getChannel()Ljava/nio/channels/AsynchronousSocketChannel;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/nio/channels/AsynchronousSocketChannel;->setOption(Ljava/net/SocketOption;Ljava/lang/Object;)Ljava/nio/channels/AsynchronousSocketChannel;

    return-object p0
.end method

.method public write(Ljava/nio/ByteBuffer;)Lcn/hutool/socket/aio/AioClient;
    .locals 1

    .line 97
    iget-object v0, p0, Lcn/hutool/socket/aio/AioClient;->session:Lcn/hutool/socket/aio/AioSession;

    invoke-virtual {v0, p1}, Lcn/hutool/socket/aio/AioSession;->write(Ljava/nio/ByteBuffer;)Ljava/util/concurrent/Future;

    return-object p0
.end method
