.class public Lcom/autoxing/service/websocket/AXWebSocketServer;
.super Lorg/java_websocket/server/WebSocketServer;
.source "AXWebSocketServer.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "AXWebSocketServer"


# instance fields
.field private _serverManager:Lcom/autoxing/service/websocket/AXWebServerManager;


# direct methods
.method public constructor <init>(Lcom/autoxing/service/websocket/AXWebServerManager;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .line 16
    new-instance v0, Ljava/net/InetSocketAddress;

    invoke-direct {v0, p2}, Ljava/net/InetSocketAddress;-><init>(I)V

    invoke-direct {p0, v0}, Lorg/java_websocket/server/WebSocketServer;-><init>(Ljava/net/InetSocketAddress;)V

    .line 17
    iput-object p1, p0, Lcom/autoxing/service/websocket/AXWebSocketServer;->_serverManager:Lcom/autoxing/service/websocket/AXWebServerManager;

    return-void
.end method

.method private debug(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 48
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

    return-void
.end method


# virtual methods
.method public onClose(Lorg/java_websocket/WebSocket;ILjava/lang/String;Z)V
    .locals 0

    .line 29
    iget-object p2, p0, Lcom/autoxing/service/websocket/AXWebSocketServer;->_serverManager:Lcom/autoxing/service/websocket/AXWebServerManager;

    invoke-virtual {p2, p1}, Lcom/autoxing/service/websocket/AXWebServerManager;->userLeave(Lorg/java_websocket/WebSocket;)V

    return-void
.end method

.method public onError(Lorg/java_websocket/WebSocket;Ljava/lang/Exception;)V
    .locals 1

    .line 39
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Socket Exception:"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "AXWebSocketServer"

    invoke-direct {p0, p2, p1}, Lcom/autoxing/service/websocket/AXWebSocketServer;->debug(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onMessage(Lorg/java_websocket/WebSocket;Ljava/lang/String;)V
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/autoxing/service/websocket/AXWebSocketServer;->_serverManager:Lcom/autoxing/service/websocket/AXWebServerManager;

    invoke-virtual {v0, p1, p2}, Lcom/autoxing/service/websocket/AXWebServerManager;->onMessage(Lorg/java_websocket/WebSocket;Ljava/lang/String;)V

    return-void
.end method

.method public onOpen(Lorg/java_websocket/WebSocket;Lorg/java_websocket/handshake/ClientHandshake;)V
    .locals 2

    const-string v0, "AXWebSocketServer"

    const-string v1, "Some one Connected..."

    .line 22
    invoke-direct {p0, v0, v1}, Lcom/autoxing/service/websocket/AXWebSocketServer;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    invoke-interface {p2}, Lorg/java_websocket/handshake/ClientHandshake;->getResourceDescriptor()Ljava/lang/String;

    move-result-object p2

    .line 24
    iget-object v0, p0, Lcom/autoxing/service/websocket/AXWebSocketServer;->_serverManager:Lcom/autoxing/service/websocket/AXWebServerManager;

    invoke-virtual {v0, p2, p1}, Lcom/autoxing/service/websocket/AXWebServerManager;->userLogin(Ljava/lang/String;Lorg/java_websocket/WebSocket;)V

    return-void
.end method

.method public onStart()V
    .locals 2

    const-string v0, "AXWebSocketServer"

    const-string v1, "onStart..."

    .line 44
    invoke-direct {p0, v0, v1}, Lcom/autoxing/service/websocket/AXWebSocketServer;->debug(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
