.class Lcom/autoxing/delivery/js/ws/WebSocketServer$MyWebSocketServer;
.super Ljava/lang/Object;
.source "WebSocketServer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/autoxing/delivery/js/ws/WebSocketServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyWebSocketServer"
.end annotation


# instance fields
.field private axWebServerManager:Lcom/autoxing/delivery/js/ws/AXWebServerManager;

.field private port:I

.field final synthetic this$0:Lcom/autoxing/delivery/js/ws/WebSocketServer;


# direct methods
.method public constructor <init>(Lcom/autoxing/delivery/js/ws/WebSocketServer;I)V
    .locals 0

    .line 91
    iput-object p1, p0, Lcom/autoxing/delivery/js/ws/WebSocketServer$MyWebSocketServer;->this$0:Lcom/autoxing/delivery/js/ws/WebSocketServer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    iput p2, p0, Lcom/autoxing/delivery/js/ws/WebSocketServer$MyWebSocketServer;->port:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 115
    new-instance v0, Lcom/autoxing/delivery/js/ws/AXWebServerManager;

    iget-object v1, p0, Lcom/autoxing/delivery/js/ws/WebSocketServer$MyWebSocketServer;->this$0:Lcom/autoxing/delivery/js/ws/WebSocketServer;

    invoke-static {v1}, Lcom/autoxing/delivery/js/ws/WebSocketServer;->-$$Nest$fgetmAXWebSocketListener(Lcom/autoxing/delivery/js/ws/WebSocketServer;)Lcom/autoxing/service/websocket/AXWebSocketListener;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/autoxing/delivery/js/ws/AXWebServerManager;-><init>(Lcom/autoxing/service/websocket/AXWebSocketListener;)V

    iput-object v0, p0, Lcom/autoxing/delivery/js/ws/WebSocketServer$MyWebSocketServer;->axWebServerManager:Lcom/autoxing/delivery/js/ws/AXWebServerManager;

    .line 116
    iget v1, p0, Lcom/autoxing/delivery/js/ws/WebSocketServer$MyWebSocketServer;->port:I

    invoke-virtual {v0, v1}, Lcom/autoxing/delivery/js/ws/AXWebServerManager;->start(I)Z

    return-void
.end method

.method public sendMsg(Lcom/autoxing/delivery/js/model/MsgInfo;)V
    .locals 1

    .line 108
    iget-object v0, p0, Lcom/autoxing/delivery/js/ws/WebSocketServer$MyWebSocketServer;->axWebServerManager:Lcom/autoxing/delivery/js/ws/AXWebServerManager;

    if-eqz v0, :cond_0

    .line 109
    invoke-virtual {v0, p1}, Lcom/autoxing/delivery/js/ws/AXWebServerManager;->send(Lcom/autoxing/delivery/js/model/MsgInfo;)V

    :cond_0
    return-void
.end method

.method public sendMsg(Ljava/lang/String;)V
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/autoxing/delivery/js/ws/WebSocketServer$MyWebSocketServer;->axWebServerManager:Lcom/autoxing/delivery/js/ws/AXWebServerManager;

    if-eqz v0, :cond_0

    .line 103
    invoke-virtual {v0, p1}, Lcom/autoxing/delivery/js/ws/AXWebServerManager;->send(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public stop()V
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/autoxing/delivery/js/ws/WebSocketServer$MyWebSocketServer;->axWebServerManager:Lcom/autoxing/delivery/js/ws/AXWebServerManager;

    if-eqz v0, :cond_0

    .line 97
    invoke-virtual {v0}, Lcom/autoxing/delivery/js/ws/AXWebServerManager;->stop()Z

    :cond_0
    return-void
.end method
