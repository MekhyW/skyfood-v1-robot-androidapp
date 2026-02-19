.class Lcom/autoxing/delivery/js/ws/WebSocketServer$1;
.super Ljava/lang/Object;
.source "WebSocketServer.java"

# interfaces
.implements Lcom/autoxing/service/websocket/AXWebSocketListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/autoxing/delivery/js/ws/WebSocketServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/autoxing/delivery/js/ws/WebSocketServer;


# direct methods
.method constructor <init>(Lcom/autoxing/delivery/js/ws/WebSocketServer;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/autoxing/delivery/js/ws/WebSocketServer$1;->this$0:Lcom/autoxing/delivery/js/ws/WebSocketServer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public debug(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onWebSocketResponse(ILjava/lang/Object;)V
    .locals 3

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    .line 64
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onWebSocketResponse, flag => "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " , data => "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "WebSocketServer"

    invoke-static {v2, v1}, Lcom/autoai/research/atools/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 v1, 0x2

    if-eq p1, v1, :cond_2

    if-eq p1, v0, :cond_1

    goto :goto_0

    .line 68
    :cond_1
    iget-object p1, p0, Lcom/autoxing/delivery/js/ws/WebSocketServer$1;->this$0:Lcom/autoxing/delivery/js/ws/WebSocketServer;

    invoke-static {p1}, Lcom/autoxing/delivery/js/ws/WebSocketServer;->-$$Nest$fgetmListener(Lcom/autoxing/delivery/js/ws/WebSocketServer;)Lcom/autoxing/delivery/js/ws/OnWebSocketListener;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 69
    iget-object p1, p0, Lcom/autoxing/delivery/js/ws/WebSocketServer$1;->this$0:Lcom/autoxing/delivery/js/ws/WebSocketServer;

    invoke-static {p1}, Lcom/autoxing/delivery/js/ws/WebSocketServer;->-$$Nest$fgetmListener(Lcom/autoxing/delivery/js/ws/WebSocketServer;)Lcom/autoxing/delivery/js/ws/OnWebSocketListener;

    move-result-object p1

    check-cast p2, Lcom/autoxing/delivery/js/model/MsgInfo;

    invoke-interface {p1, p2}, Lcom/autoxing/delivery/js/ws/OnWebSocketListener;->onDataReceive(Lcom/autoxing/delivery/js/model/MsgInfo;)V

    goto :goto_0

    .line 73
    :cond_2
    iget-object p1, p0, Lcom/autoxing/delivery/js/ws/WebSocketServer$1;->this$0:Lcom/autoxing/delivery/js/ws/WebSocketServer;

    invoke-static {p1}, Lcom/autoxing/delivery/js/ws/WebSocketServer;->-$$Nest$fgetmListener(Lcom/autoxing/delivery/js/ws/WebSocketServer;)Lcom/autoxing/delivery/js/ws/OnWebSocketListener;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 74
    iget-object p1, p0, Lcom/autoxing/delivery/js/ws/WebSocketServer$1;->this$0:Lcom/autoxing/delivery/js/ws/WebSocketServer;

    invoke-static {p1}, Lcom/autoxing/delivery/js/ws/WebSocketServer;->-$$Nest$fgetmListener(Lcom/autoxing/delivery/js/ws/WebSocketServer;)Lcom/autoxing/delivery/js/ws/OnWebSocketListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/autoxing/delivery/js/ws/OnWebSocketListener;->onUerLogin()V

    :cond_3
    :goto_0
    return-void
.end method
