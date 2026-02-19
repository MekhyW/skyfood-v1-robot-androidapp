.class Lcom/autoxing/service/websocket/AXWebSocketClient$2;
.super Lorg/java_websocket/client/WebSocketClient;
.source "AXWebSocketClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/autoxing/service/websocket/AXWebSocketClient;->doConnect()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/autoxing/service/websocket/AXWebSocketClient;


# direct methods
.method constructor <init>(Lcom/autoxing/service/websocket/AXWebSocketClient;Ljava/net/URI;Lorg/java_websocket/drafts/Draft;Ljava/util/Map;)V
    .locals 0

    .line 111
    iput-object p1, p0, Lcom/autoxing/service/websocket/AXWebSocketClient$2;->this$0:Lcom/autoxing/service/websocket/AXWebSocketClient;

    invoke-direct {p0, p2, p3, p4}, Lorg/java_websocket/client/WebSocketClient;-><init>(Ljava/net/URI;Lorg/java_websocket/drafts/Draft;Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method public onClose(ILjava/lang/String;Z)V
    .locals 0

    .line 142
    iget-object p1, p0, Lcom/autoxing/service/websocket/AXWebSocketClient$2;->this$0:Lcom/autoxing/service/websocket/AXWebSocketClient;

    invoke-static {p1}, Lcom/autoxing/service/websocket/AXWebSocketClient;->access$0(Lcom/autoxing/service/websocket/AXWebSocketClient;)Lcom/autoxing/service/websocket/AXWebSocketListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 143
    iget-object p1, p0, Lcom/autoxing/service/websocket/AXWebSocketClient$2;->this$0:Lcom/autoxing/service/websocket/AXWebSocketClient;

    invoke-static {p1}, Lcom/autoxing/service/websocket/AXWebSocketClient;->access$0(Lcom/autoxing/service/websocket/AXWebSocketClient;)Lcom/autoxing/service/websocket/AXWebSocketListener;

    move-result-object p1

    const/4 p2, 0x3

    const/4 p3, 0x0

    invoke-interface {p1, p2, p3}, Lcom/autoxing/service/websocket/AXWebSocketListener;->onWebSocketResponse(ILjava/lang/Object;)V

    .line 144
    :cond_0
    iget-object p1, p0, Lcom/autoxing/service/websocket/AXWebSocketClient$2;->this$0:Lcom/autoxing/service/websocket/AXWebSocketClient;

    invoke-static {p1}, Lcom/autoxing/service/websocket/AXWebSocketClient;->access$1(Lcom/autoxing/service/websocket/AXWebSocketClient;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-wide/16 p1, 0x1f4

    .line 146
    :try_start_0
    invoke-static {p1, p2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 149
    :catch_0
    iget-object p1, p0, Lcom/autoxing/service/websocket/AXWebSocketClient$2;->this$0:Lcom/autoxing/service/websocket/AXWebSocketClient;

    invoke-static {p1}, Lcom/autoxing/service/websocket/AXWebSocketClient;->access$2(Lcom/autoxing/service/websocket/AXWebSocketClient;)V

    :cond_1
    return-void
.end method

.method public onError(Ljava/lang/Exception;)V
    .locals 2

    .line 135
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 136
    iget-object v0, p0, Lcom/autoxing/service/websocket/AXWebSocketClient$2;->this$0:Lcom/autoxing/service/websocket/AXWebSocketClient;

    invoke-static {v0}, Lcom/autoxing/service/websocket/AXWebSocketClient;->access$0(Lcom/autoxing/service/websocket/AXWebSocketClient;)Lcom/autoxing/service/websocket/AXWebSocketListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 137
    iget-object v0, p0, Lcom/autoxing/service/websocket/AXWebSocketClient$2;->this$0:Lcom/autoxing/service/websocket/AXWebSocketClient;

    invoke-static {v0}, Lcom/autoxing/service/websocket/AXWebSocketClient;->access$0(Lcom/autoxing/service/websocket/AXWebSocketClient;)Lcom/autoxing/service/websocket/AXWebSocketListener;

    move-result-object v0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const/4 v1, 0x2

    invoke-interface {v0, v1, p1}, Lcom/autoxing/service/websocket/AXWebSocketListener;->onWebSocketResponse(ILjava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public onMessage(Ljava/lang/String;)V
    .locals 2

    .line 120
    iget-object v0, p0, Lcom/autoxing/service/websocket/AXWebSocketClient$2;->this$0:Lcom/autoxing/service/websocket/AXWebSocketClient;

    invoke-static {v0}, Lcom/autoxing/service/websocket/AXWebSocketClient;->access$0(Lcom/autoxing/service/websocket/AXWebSocketClient;)Lcom/autoxing/service/websocket/AXWebSocketListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/autoxing/service/websocket/AXWebSocketClient$2;->this$0:Lcom/autoxing/service/websocket/AXWebSocketClient;

    invoke-static {v0}, Lcom/autoxing/service/websocket/AXWebSocketClient;->access$0(Lcom/autoxing/service/websocket/AXWebSocketClient;)Lcom/autoxing/service/websocket/AXWebSocketListener;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1, p1}, Lcom/autoxing/service/websocket/AXWebSocketListener;->onWebSocketResponse(ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onMessage(Ljava/nio/ByteBuffer;)V
    .locals 2

    .line 126
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p1

    .line 129
    iget-object v0, p0, Lcom/autoxing/service/websocket/AXWebSocketClient$2;->this$0:Lcom/autoxing/service/websocket/AXWebSocketClient;

    invoke-static {v0}, Lcom/autoxing/service/websocket/AXWebSocketClient;->access$0(Lcom/autoxing/service/websocket/AXWebSocketClient;)Lcom/autoxing/service/websocket/AXWebSocketListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 130
    iget-object v0, p0, Lcom/autoxing/service/websocket/AXWebSocketClient$2;->this$0:Lcom/autoxing/service/websocket/AXWebSocketClient;

    invoke-static {v0}, Lcom/autoxing/service/websocket/AXWebSocketClient;->access$0(Lcom/autoxing/service/websocket/AXWebSocketClient;)Lcom/autoxing/service/websocket/AXWebSocketListener;

    move-result-object v0

    const/4 v1, 0x4

    invoke-interface {v0, v1, p1}, Lcom/autoxing/service/websocket/AXWebSocketListener;->onWebSocketResponse(ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onOpen(Lorg/java_websocket/handshake/ServerHandshake;)V
    .locals 2

    .line 114
    iget-object p1, p0, Lcom/autoxing/service/websocket/AXWebSocketClient$2;->this$0:Lcom/autoxing/service/websocket/AXWebSocketClient;

    invoke-static {p1}, Lcom/autoxing/service/websocket/AXWebSocketClient;->access$0(Lcom/autoxing/service/websocket/AXWebSocketClient;)Lcom/autoxing/service/websocket/AXWebSocketListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 115
    iget-object p1, p0, Lcom/autoxing/service/websocket/AXWebSocketClient$2;->this$0:Lcom/autoxing/service/websocket/AXWebSocketClient;

    invoke-static {p1}, Lcom/autoxing/service/websocket/AXWebSocketClient;->access$0(Lcom/autoxing/service/websocket/AXWebSocketClient;)Lcom/autoxing/service/websocket/AXWebSocketListener;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/autoxing/service/websocket/AXWebSocketListener;->onWebSocketResponse(ILjava/lang/Object;)V

    :cond_0
    return-void
.end method
