.class public Lcom/autoxing/service/test/WebSocketClientTest;
.super Ljava/lang/Object;
.source "WebSocketClientTest.java"


# instance fields
.field private webSocketClient:Lcom/autoxing/service/websocket/AXWebSocketClient;

.field private webSocketServer:Lcom/autoxing/service/websocket/AXWebServerManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 8
    iput-object v0, p0, Lcom/autoxing/service/test/WebSocketClientTest;->webSocketClient:Lcom/autoxing/service/websocket/AXWebSocketClient;

    .line 9
    iput-object v0, p0, Lcom/autoxing/service/test/WebSocketClientTest;->webSocketServer:Lcom/autoxing/service/websocket/AXWebServerManager;

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 2

    .line 55
    new-instance p0, Lcom/autoxing/service/test/WebSocketClientTest;

    invoke-direct {p0}, Lcom/autoxing/service/test/WebSocketClientTest;-><init>()V

    .line 57
    invoke-virtual {p0}, Lcom/autoxing/service/test/WebSocketClientTest;->connect()V

    const-wide/16 v0, 0x2710

    .line 59
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 61
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 63
    :goto_0
    invoke-virtual {p0}, Lcom/autoxing/service/test/WebSocketClientTest;->stop()V

    return-void
.end method


# virtual methods
.method public connect()V
    .locals 2

    .line 11
    new-instance v0, Lcom/autoxing/service/test/WebSocketClientTest$1;

    invoke-direct {v0, p0}, Lcom/autoxing/service/test/WebSocketClientTest$1;-><init>(Lcom/autoxing/service/test/WebSocketClientTest;)V

    invoke-static {v0}, Lcom/autoxing/service/websocket/AXWebSocketClient;->getInstance(Lcom/autoxing/service/websocket/AXWebSocketListener;)Lcom/autoxing/service/websocket/AXWebSocketClient;

    move-result-object v0

    iput-object v0, p0, Lcom/autoxing/service/test/WebSocketClientTest;->webSocketClient:Lcom/autoxing/service/websocket/AXWebSocketClient;

    const-string v1, "ws://10.10.40.220:8888/car0000&1&0"

    .line 24
    invoke-virtual {v0, v1}, Lcom/autoxing/service/websocket/AXWebSocketClient;->start(Ljava/lang/String;)V

    return-void
.end method

.method public createServer()V
    .locals 2

    .line 28
    new-instance v0, Lcom/autoxing/service/websocket/AXWebServerManager;

    new-instance v1, Lcom/autoxing/service/test/WebSocketClientTest$2;

    invoke-direct {v1, p0}, Lcom/autoxing/service/test/WebSocketClientTest$2;-><init>(Lcom/autoxing/service/test/WebSocketClientTest;)V

    invoke-direct {v0, v1}, Lcom/autoxing/service/websocket/AXWebServerManager;-><init>(Lcom/autoxing/service/websocket/AXWebSocketListener;)V

    iput-object v0, p0, Lcom/autoxing/service/test/WebSocketClientTest;->webSocketServer:Lcom/autoxing/service/websocket/AXWebServerManager;

    const/16 v1, 0x22b8

    .line 39
    invoke-virtual {v0, v1}, Lcom/autoxing/service/websocket/AXWebServerManager;->start(I)Z

    return-void
.end method

.method public stop()V
    .locals 2

    .line 43
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "[WebSocketClientTest]stop."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 44
    iget-object v0, p0, Lcom/autoxing/service/test/WebSocketClientTest;->webSocketClient:Lcom/autoxing/service/websocket/AXWebSocketClient;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 45
    invoke-virtual {v0}, Lcom/autoxing/service/websocket/AXWebSocketClient;->stop()V

    .line 46
    iput-object v1, p0, Lcom/autoxing/service/test/WebSocketClientTest;->webSocketClient:Lcom/autoxing/service/websocket/AXWebSocketClient;

    .line 48
    :cond_0
    iget-object v0, p0, Lcom/autoxing/service/test/WebSocketClientTest;->webSocketServer:Lcom/autoxing/service/websocket/AXWebServerManager;

    if-eqz v0, :cond_1

    .line 49
    invoke-virtual {v0}, Lcom/autoxing/service/websocket/AXWebServerManager;->stop()Z

    .line 50
    iput-object v1, p0, Lcom/autoxing/service/test/WebSocketClientTest;->webSocketServer:Lcom/autoxing/service/websocket/AXWebServerManager;

    :cond_1
    return-void
.end method
