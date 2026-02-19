.class public abstract Lorg/java_websocket/AbstractWebSocket;
.super Lorg/java_websocket/WebSocketAdapter;
.source "AbstractWebSocket.java"


# instance fields
.field private connectionLostCheckerFuture:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation
.end field

.field private connectionLostCheckerService:Ljava/util/concurrent/ScheduledExecutorService;

.field private connectionLostTimeout:J

.field private final log:Lcom/autoxing/service/log/Logger;

.field private reuseAddr:Z

.field private final syncConnectionLost:Ljava/lang/Object;

.field private tcpNoDelay:Z

.field private websocketRunning:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 46
    invoke-direct {p0}, Lorg/java_websocket/WebSocketAdapter;-><init>()V

    .line 53
    const-class v0, Lorg/java_websocket/AbstractWebSocket;

    invoke-static {v0}, Lcom/autoxing/service/log/LoggerFactory;->getLogger(Ljava/lang/Class;)Lcom/autoxing/service/log/Logger;

    move-result-object v0

    iput-object v0, p0, Lorg/java_websocket/AbstractWebSocket;->log:Lcom/autoxing/service/log/Logger;

    .line 82
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x3c

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/java_websocket/AbstractWebSocket;->connectionLostTimeout:J

    const/4 v0, 0x0

    .line 88
    iput-boolean v0, p0, Lorg/java_websocket/AbstractWebSocket;->websocketRunning:Z

    .line 93
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/java_websocket/AbstractWebSocket;->syncConnectionLost:Ljava/lang/Object;

    return-void
.end method

.method static synthetic access$0(Lorg/java_websocket/AbstractWebSocket;)J
    .locals 2

    .line 82
    iget-wide v0, p0, Lorg/java_websocket/AbstractWebSocket;->connectionLostTimeout:J

    return-wide v0
.end method

.method static synthetic access$1(Lorg/java_websocket/AbstractWebSocket;Lorg/java_websocket/WebSocket;J)V
    .locals 0

    .line 207
    invoke-direct {p0, p1, p2, p3}, Lorg/java_websocket/AbstractWebSocket;->executeConnectionLostDetection(Lorg/java_websocket/WebSocket;J)V

    return-void
.end method

.method private cancelConnectionLostTimer()V
    .locals 3

    .line 236
    iget-object v0, p0, Lorg/java_websocket/AbstractWebSocket;->connectionLostCheckerService:Ljava/util/concurrent/ScheduledExecutorService;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 237
    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->shutdownNow()Ljava/util/List;

    .line 238
    iput-object v1, p0, Lorg/java_websocket/AbstractWebSocket;->connectionLostCheckerService:Ljava/util/concurrent/ScheduledExecutorService;

    .line 240
    :cond_0
    iget-object v0, p0, Lorg/java_websocket/AbstractWebSocket;->connectionLostCheckerFuture:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_1

    const/4 v2, 0x0

    .line 241
    invoke-interface {v0, v2}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 242
    iput-object v1, p0, Lorg/java_websocket/AbstractWebSocket;->connectionLostCheckerFuture:Ljava/util/concurrent/ScheduledFuture;

    :cond_1
    return-void
.end method

.method private executeConnectionLostDetection(Lorg/java_websocket/WebSocket;J)V
    .locals 2

    .line 208
    instance-of v0, p1, Lorg/java_websocket/WebSocketImpl;

    if-nez v0, :cond_0

    return-void

    .line 211
    :cond_0
    check-cast p1, Lorg/java_websocket/WebSocketImpl;

    .line 212
    invoke-virtual {p1}, Lorg/java_websocket/WebSocketImpl;->getLastPong()J

    move-result-wide v0

    cmp-long p2, v0, p2

    if-gez p2, :cond_1

    .line 213
    iget-object p2, p0, Lorg/java_websocket/AbstractWebSocket;->log:Lcom/autoxing/service/log/Logger;

    const-string p3, "Closing connection due to no pong received: {}"

    invoke-virtual {p2, p3, p1}, Lcom/autoxing/service/log/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;)V

    const/16 p2, 0x3ee

    const-string p3, "The connection was closed because the other endpoint did not respond with a pong in time. For more information check: https://github.com/TooTallNate/Java-WebSocket/wiki/Lost-connection-detection"

    .line 214
    invoke-virtual {p1, p2, p3}, Lorg/java_websocket/WebSocketImpl;->closeConnection(ILjava/lang/String;)V

    goto :goto_0

    .line 216
    :cond_1
    invoke-virtual {p1}, Lorg/java_websocket/WebSocketImpl;->isOpen()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 217
    invoke-virtual {p1}, Lorg/java_websocket/WebSocketImpl;->sendPing()V

    goto :goto_0

    .line 219
    :cond_2
    iget-object p2, p0, Lorg/java_websocket/AbstractWebSocket;->log:Lcom/autoxing/service/log/Logger;

    const-string p3, "Trying to ping a non open connection: {}"

    invoke-virtual {p2, p3, p1}, Lcom/autoxing/service/log/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method private restartConnectionLostTimer()V
    .locals 8

    .line 175
    invoke-direct {p0}, Lorg/java_websocket/AbstractWebSocket;->cancelConnectionLostTimer()V

    .line 176
    new-instance v0, Lorg/java_websocket/util/NamedThreadFactory;

    const-string v1, "connectionLostChecker"

    invoke-direct {v0, v1}, Lorg/java_websocket/util/NamedThreadFactory;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, p0, Lorg/java_websocket/AbstractWebSocket;->connectionLostCheckerService:Ljava/util/concurrent/ScheduledExecutorService;

    .line 177
    new-instance v2, Lorg/java_websocket/AbstractWebSocket$1;

    invoke-direct {v2, p0}, Lorg/java_websocket/AbstractWebSocket$1;-><init>(Lorg/java_websocket/AbstractWebSocket;)V

    .line 199
    iget-object v1, p0, Lorg/java_websocket/AbstractWebSocket;->connectionLostCheckerService:Ljava/util/concurrent/ScheduledExecutorService;

    iget-wide v5, p0, Lorg/java_websocket/AbstractWebSocket;->connectionLostTimeout:J

    sget-object v7, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    move-wide v3, v5

    invoke-interface/range {v1 .. v7}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lorg/java_websocket/AbstractWebSocket;->connectionLostCheckerFuture:Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method


# virtual methods
.method public getConnectionLostTimeout()I
    .locals 4

    .line 101
    iget-object v0, p0, Lorg/java_websocket/AbstractWebSocket;->syncConnectionLost:Ljava/lang/Object;

    monitor-enter v0

    .line 102
    :try_start_0
    sget-object v1, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    iget-wide v2, p0, Lorg/java_websocket/AbstractWebSocket;->connectionLostTimeout:J

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v1

    long-to-int v1, v1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 101
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected abstract getConnections()Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lorg/java_websocket/WebSocket;",
            ">;"
        }
    .end annotation
.end method

.method public isReuseAddr()Z
    .locals 1

    .line 275
    iget-boolean v0, p0, Lorg/java_websocket/AbstractWebSocket;->reuseAddr:Z

    return v0
.end method

.method public isTcpNoDelay()Z
    .locals 1

    .line 253
    iget-boolean v0, p0, Lorg/java_websocket/AbstractWebSocket;->tcpNoDelay:Z

    return v0
.end method

.method public setConnectionLostTimeout(I)V
    .locals 5

    .line 114
    iget-object v0, p0, Lorg/java_websocket/AbstractWebSocket;->syncConnectionLost:Ljava/lang/Object;

    monitor-enter v0

    .line 115
    :try_start_0
    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    int-to-long v2, p1

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v1

    iput-wide v1, p0, Lorg/java_websocket/AbstractWebSocket;->connectionLostTimeout:J

    const-wide/16 v3, 0x0

    cmp-long p1, v1, v3

    if-gtz p1, :cond_0

    .line 117
    iget-object p1, p0, Lorg/java_websocket/AbstractWebSocket;->log:Lcom/autoxing/service/log/Logger;

    const-string v1, "Connection lost timer stopped"

    invoke-virtual {p1, v1}, Lcom/autoxing/service/log/Logger;->trace(Ljava/lang/String;)V

    .line 118
    invoke-direct {p0}, Lorg/java_websocket/AbstractWebSocket;->cancelConnectionLostTimer()V

    .line 119
    monitor-exit v0

    return-void

    .line 121
    :cond_0
    iget-boolean p1, p0, Lorg/java_websocket/AbstractWebSocket;->websocketRunning:Z

    if-eqz p1, :cond_3

    .line 122
    iget-object p1, p0, Lorg/java_websocket/AbstractWebSocket;->log:Lcom/autoxing/service/log/Logger;

    const-string v1, "Connection lost timer restarted"

    invoke-virtual {p1, v1}, Lcom/autoxing/service/log/Logger;->trace(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 125
    :try_start_1
    new-instance p1, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lorg/java_websocket/AbstractWebSocket;->getConnections()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {p1, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 127
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/java_websocket/WebSocket;

    .line 128
    instance-of v2, v1, Lorg/java_websocket/WebSocketImpl;

    if-eqz v2, :cond_1

    .line 129
    check-cast v1, Lorg/java_websocket/WebSocketImpl;

    .line 130
    invoke-virtual {v1}, Lorg/java_websocket/WebSocketImpl;->updateLastPong()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 134
    :try_start_2
    iget-object v1, p0, Lorg/java_websocket/AbstractWebSocket;->log:Lcom/autoxing/service/log/Logger;

    const-string v2, "Exception during connection lost restart"

    invoke-virtual {v1, v2, p1}, Lcom/autoxing/service/log/Logger;->error(Ljava/lang/String;Ljava/lang/Object;)V

    .line 136
    :goto_1
    invoke-direct {p0}, Lorg/java_websocket/AbstractWebSocket;->restartConnectionLostTimer()V

    .line 114
    :cond_3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public setReuseAddr(Z)V
    .locals 0

    .line 287
    iput-boolean p1, p0, Lorg/java_websocket/AbstractWebSocket;->reuseAddr:Z

    return-void
.end method

.method public setTcpNoDelay(Z)V
    .locals 0

    .line 265
    iput-boolean p1, p0, Lorg/java_websocket/AbstractWebSocket;->tcpNoDelay:Z

    return-void
.end method

.method protected startConnectionLostTimer()V
    .locals 5

    .line 159
    iget-object v0, p0, Lorg/java_websocket/AbstractWebSocket;->syncConnectionLost:Ljava/lang/Object;

    monitor-enter v0

    .line 160
    :try_start_0
    iget-wide v1, p0, Lorg/java_websocket/AbstractWebSocket;->connectionLostTimeout:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-gtz v1, :cond_0

    .line 161
    iget-object v1, p0, Lorg/java_websocket/AbstractWebSocket;->log:Lcom/autoxing/service/log/Logger;

    const-string v2, "Connection lost timer deactivated"

    invoke-virtual {v1, v2}, Lcom/autoxing/service/log/Logger;->trace(Ljava/lang/String;)V

    .line 162
    monitor-exit v0

    return-void

    .line 164
    :cond_0
    iget-object v1, p0, Lorg/java_websocket/AbstractWebSocket;->log:Lcom/autoxing/service/log/Logger;

    const-string v2, "Connection lost timer started"

    invoke-virtual {v1, v2}, Lcom/autoxing/service/log/Logger;->trace(Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 165
    iput-boolean v1, p0, Lorg/java_websocket/AbstractWebSocket;->websocketRunning:Z

    .line 166
    invoke-direct {p0}, Lorg/java_websocket/AbstractWebSocket;->restartConnectionLostTimer()V

    .line 159
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected stopConnectionLostTimer()V
    .locals 3

    .line 146
    iget-object v0, p0, Lorg/java_websocket/AbstractWebSocket;->syncConnectionLost:Ljava/lang/Object;

    monitor-enter v0

    .line 147
    :try_start_0
    iget-object v1, p0, Lorg/java_websocket/AbstractWebSocket;->connectionLostCheckerService:Ljava/util/concurrent/ScheduledExecutorService;

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/java_websocket/AbstractWebSocket;->connectionLostCheckerFuture:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x0

    .line 148
    iput-boolean v1, p0, Lorg/java_websocket/AbstractWebSocket;->websocketRunning:Z

    .line 149
    iget-object v1, p0, Lorg/java_websocket/AbstractWebSocket;->log:Lcom/autoxing/service/log/Logger;

    const-string v2, "Connection lost timer stopped"

    invoke-virtual {v1, v2}, Lcom/autoxing/service/log/Logger;->trace(Ljava/lang/String;)V

    .line 150
    invoke-direct {p0}, Lorg/java_websocket/AbstractWebSocket;->cancelConnectionLostTimer()V

    .line 146
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
