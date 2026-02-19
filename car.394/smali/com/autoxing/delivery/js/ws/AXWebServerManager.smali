.class public Lcom/autoxing/delivery/js/ws/AXWebServerManager;
.super Ljava/lang/Object;
.source "AXWebServerManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/autoxing/delivery/js/ws/AXWebServerManager$SocketUser;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AXWebServerManager"


# instance fields
.field private mAXWebSocketListener:Lcom/autoxing/service/websocket/AXWebSocketListener;

.field private serverSocket:Lcom/autoxing/delivery/js/ws/AXWebSocketServer;

.field private userMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/java_websocket/WebSocket;",
            "Lcom/autoxing/delivery/js/ws/AXWebServerManager$SocketUser;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/autoxing/service/websocket/AXWebSocketListener;)V
    .locals 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 14
    iput-object v0, p0, Lcom/autoxing/delivery/js/ws/AXWebServerManager;->serverSocket:Lcom/autoxing/delivery/js/ws/AXWebSocketServer;

    .line 15
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/autoxing/delivery/js/ws/AXWebServerManager;->userMap:Ljava/util/Map;

    .line 25
    iput-object p1, p0, Lcom/autoxing/delivery/js/ws/AXWebServerManager;->mAXWebSocketListener:Lcom/autoxing/service/websocket/AXWebSocketListener;

    return-void
.end method

.method private debug(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 128
    iget-object v0, p0, Lcom/autoxing/delivery/js/ws/AXWebServerManager;->mAXWebSocketListener:Lcom/autoxing/service/websocket/AXWebSocketListener;

    if-eqz v0, :cond_0

    .line 129
    invoke-interface {v0, p1, p2}, Lcom/autoxing/service/websocket/AXWebSocketListener;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 131
    :cond_0
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "]"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private declared-synchronized send(Lorg/java_websocket/WebSocket;Ljava/lang/String;)V
    .locals 0

    monitor-enter p0

    .line 59
    :try_start_0
    invoke-interface {p1, p2}, Lorg/java_websocket/WebSocket;->send(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 61
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 63
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0

    throw p1
.end method

.method private sendMessageToAll(Ljava/lang/String;)V
    .locals 3

    .line 66
    iget-object v0, p0, Lcom/autoxing/delivery/js/ws/AXWebServerManager;->userMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 67
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/java_websocket/WebSocket;

    .line 68
    iget-object v2, p0, Lcom/autoxing/delivery/js/ws/AXWebServerManager;->userMap:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/autoxing/delivery/js/ws/AXWebServerManager$SocketUser;

    if-eqz v2, :cond_0

    .line 70
    invoke-direct {p0, v1, p1}, Lcom/autoxing/delivery/js/ws/AXWebServerManager;->send(Lorg/java_websocket/WebSocket;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method onMessage(Lorg/java_websocket/WebSocket;Ljava/lang/String;)V
    .locals 2

    .line 53
    iget-object v0, p0, Lcom/autoxing/delivery/js/ws/AXWebServerManager;->mAXWebSocketListener:Lcom/autoxing/service/websocket/AXWebSocketListener;

    if-eqz v0, :cond_0

    .line 54
    new-instance v1, Lcom/autoxing/delivery/js/model/MsgInfo;

    invoke-direct {v1, p1, p2}, Lcom/autoxing/delivery/js/model/MsgInfo;-><init>(Lorg/java_websocket/WebSocket;Ljava/lang/String;)V

    const/4 p1, 0x4

    invoke-interface {v0, p1, v1}, Lcom/autoxing/service/websocket/AXWebSocketListener;->onWebSocketResponse(ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public send(Lcom/autoxing/delivery/js/model/MsgInfo;)V
    .locals 1

    .line 76
    invoke-virtual {p1}, Lcom/autoxing/delivery/js/model/MsgInfo;->getConn()Lorg/java_websocket/WebSocket;

    move-result-object v0

    invoke-virtual {p1}, Lcom/autoxing/delivery/js/model/MsgInfo;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/autoxing/delivery/js/ws/AXWebServerManager;->send(Lorg/java_websocket/WebSocket;Ljava/lang/String;)V

    return-void
.end method

.method public send(Ljava/lang/String;)V
    .locals 0

    .line 80
    invoke-direct {p0, p1}, Lcom/autoxing/delivery/js/ws/AXWebServerManager;->sendMessageToAll(Ljava/lang/String;)V

    return-void
.end method

.method public send(Ljava/lang/String;I)V
    .locals 3

    .line 84
    iget-object v0, p0, Lcom/autoxing/delivery/js/ws/AXWebServerManager;->userMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 85
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/java_websocket/WebSocket;

    .line 86
    iget-object v2, p0, Lcom/autoxing/delivery/js/ws/AXWebServerManager;->userMap:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/autoxing/delivery/js/ws/AXWebServerManager$SocketUser;

    if-eqz v2, :cond_0

    .line 87
    iget v2, v2, Lcom/autoxing/delivery/js/ws/AXWebServerManager$SocketUser;->from:I

    if-ne v2, p2, :cond_0

    .line 88
    invoke-direct {p0, v1, p1}, Lcom/autoxing/delivery/js/ws/AXWebServerManager;->send(Lorg/java_websocket/WebSocket;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public start(I)Z
    .locals 4

    const/4 v0, 0x0

    const-string v1, "AXWebServerManager"

    if-gez p1, :cond_0

    const-string p1, "Port error..."

    .line 95
    invoke-direct {p0, v1, p1}, Lcom/autoxing/delivery/js/ws/AXWebServerManager;->debug(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_0
    const-string v2, "Start ServerSocket..."

    .line 98
    invoke-direct {p0, v1, v2}, Lcom/autoxing/delivery/js/ws/AXWebServerManager;->debug(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x1

    .line 100
    :try_start_0
    new-instance v3, Lcom/autoxing/delivery/js/ws/AXWebSocketServer;

    invoke-direct {v3, p0, p1}, Lcom/autoxing/delivery/js/ws/AXWebSocketServer;-><init>(Lcom/autoxing/delivery/js/ws/AXWebServerManager;I)V

    iput-object v3, p0, Lcom/autoxing/delivery/js/ws/AXWebServerManager;->serverSocket:Lcom/autoxing/delivery/js/ws/AXWebSocketServer;

    .line 101
    invoke-virtual {v3}, Lcom/autoxing/delivery/js/ws/AXWebSocketServer;->start()V

    const-string p1, "Start ServerSocket Success..."

    .line 102
    invoke-direct {p0, v1, p1}, Lcom/autoxing/delivery/js/ws/AXWebServerManager;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    iget-object p1, p0, Lcom/autoxing/delivery/js/ws/AXWebServerManager;->mAXWebSocketListener:Lcom/autoxing/service/websocket/AXWebSocketListener;

    if-eqz p1, :cond_1

    .line 104
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Lcom/autoxing/service/websocket/AXWebSocketListener;->onWebSocketResponse(ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return v2

    :catch_0
    move-exception p1

    const-string v3, "Start Failed..."

    .line 107
    invoke-direct {p0, v1, v3}, Lcom/autoxing/delivery/js/ws/AXWebServerManager;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 109
    iget-object p1, p0, Lcom/autoxing/delivery/js/ws/AXWebServerManager;->mAXWebSocketListener:Lcom/autoxing/service/websocket/AXWebSocketListener;

    if-eqz p1, :cond_2

    .line 110
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v2, v1}, Lcom/autoxing/service/websocket/AXWebSocketListener;->onWebSocketResponse(ILjava/lang/Object;)V

    :cond_2
    return v0
.end method

.method public stop()Z
    .locals 3

    const-string v0, "AXWebServerManager"

    .line 117
    :try_start_0
    iget-object v1, p0, Lcom/autoxing/delivery/js/ws/AXWebServerManager;->serverSocket:Lcom/autoxing/delivery/js/ws/AXWebSocketServer;

    invoke-virtual {v1}, Lcom/autoxing/delivery/js/ws/AXWebSocketServer;->stop()V

    const-string v1, "Stop ServerSocket Success..."

    .line 118
    invoke-direct {p0, v0, v1}, Lcom/autoxing/delivery/js/ws/AXWebServerManager;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v1

    const-string v2, "Stop ServerSocket Failed..."

    .line 121
    invoke-direct {p0, v0, v2}, Lcom/autoxing/delivery/js/ws/AXWebServerManager;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    return v0
.end method

.method userLeave(Lorg/java_websocket/WebSocket;)V
    .locals 2

    .line 44
    iget-object v0, p0, Lcom/autoxing/delivery/js/ws/AXWebServerManager;->userMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 45
    iget-object v0, p0, Lcom/autoxing/delivery/js/ws/AXWebServerManager;->userMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autoxing/delivery/js/ws/AXWebServerManager$SocketUser;

    .line 46
    iget-object v1, p0, Lcom/autoxing/delivery/js/ws/AXWebServerManager;->userMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    iget-object p1, p0, Lcom/autoxing/delivery/js/ws/AXWebServerManager;->mAXWebSocketListener:Lcom/autoxing/service/websocket/AXWebSocketListener;

    if-eqz p1, :cond_0

    const/4 v1, 0x3

    .line 48
    invoke-interface {p1, v1, v0}, Lcom/autoxing/service/websocket/AXWebSocketListener;->onWebSocketResponse(ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method userLogin(Ljava/lang/String;Lorg/java_websocket/WebSocket;)V
    .locals 1

    if-eqz p1, :cond_2

    const-string v0, ""

    .line 29
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "null"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 35
    :cond_0
    new-instance p1, Lcom/autoxing/delivery/js/ws/AXWebServerManager$SocketUser;

    invoke-direct {p1, p0}, Lcom/autoxing/delivery/js/ws/AXWebServerManager$SocketUser;-><init>(Lcom/autoxing/delivery/js/ws/AXWebServerManager;)V

    const/4 v0, 0x0

    .line 36
    iput-object v0, p1, Lcom/autoxing/delivery/js/ws/AXWebServerManager$SocketUser;->guid:Ljava/lang/String;

    const/4 v0, -0x1

    .line 37
    iput v0, p1, Lcom/autoxing/delivery/js/ws/AXWebServerManager$SocketUser;->from:I

    .line 38
    iget-object v0, p0, Lcom/autoxing/delivery/js/ws/AXWebServerManager;->userMap:Ljava/util/Map;

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    iget-object p2, p0, Lcom/autoxing/delivery/js/ws/AXWebServerManager;->mAXWebSocketListener:Lcom/autoxing/service/websocket/AXWebSocketListener;

    if-eqz p2, :cond_1

    const/4 v0, 0x2

    .line 40
    invoke-interface {p2, v0, p1}, Lcom/autoxing/service/websocket/AXWebSocketListener;->onWebSocketResponse(ILjava/lang/Object;)V

    :cond_1
    return-void

    .line 30
    :cond_2
    :goto_0
    invoke-interface {p2}, Lorg/java_websocket/WebSocket;->close()V

    return-void
.end method
