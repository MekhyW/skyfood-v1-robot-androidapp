.class Lcom/autoxing/delivery/websocket/MyWSManager$1;
.super Ljava/lang/Object;
.source "MyWSManager.java"

# interfaces
.implements Lcom/autoxing/service/websocket/AXWebSocketListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/autoxing/delivery/websocket/MyWSManager;->initWebSocket()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/autoxing/delivery/websocket/MyWSManager;


# direct methods
.method constructor <init>(Lcom/autoxing/delivery/websocket/MyWSManager;)V
    .locals 0

    .line 84
    iput-object p1, p0, Lcom/autoxing/delivery/websocket/MyWSManager$1;->this$0:Lcom/autoxing/delivery/websocket/MyWSManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public debug(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onWebSocketResponse(ILjava/lang/Object;)V
    .locals 1

    const/4 v0, 0x1

    if-eqz p1, :cond_2

    if-eq p1, v0, :cond_1

    const/4 p2, 0x3

    if-eq p1, p2, :cond_0

    goto :goto_0

    .line 98
    :cond_0
    iget-object p1, p0, Lcom/autoxing/delivery/websocket/MyWSManager$1;->this$0:Lcom/autoxing/delivery/websocket/MyWSManager;

    invoke-static {p1}, Lcom/autoxing/delivery/websocket/MyWSManager;->-$$Nest$fgetmListener(Lcom/autoxing/delivery/websocket/MyWSManager;)Lcom/autoxing/delivery/websocket/MyWSListener;

    move-result-object p1

    iget-object p2, p0, Lcom/autoxing/delivery/websocket/MyWSManager$1;->this$0:Lcom/autoxing/delivery/websocket/MyWSManager;

    const/4 v0, 0x2

    invoke-static {p2, v0}, Lcom/autoxing/delivery/websocket/MyWSManager;->-$$Nest$mgenerateStatusData(Lcom/autoxing/delivery/websocket/MyWSManager;I)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, v0, p2}, Lcom/autoxing/delivery/websocket/MyWSListener;->onStatusChanged(ILjava/lang/String;)V

    goto :goto_0

    .line 95
    :cond_1
    iget-object p1, p0, Lcom/autoxing/delivery/websocket/MyWSManager$1;->this$0:Lcom/autoxing/delivery/websocket/MyWSManager;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/autoxing/delivery/websocket/MyWSManager;->-$$Nest$mparseData(Lcom/autoxing/delivery/websocket/MyWSManager;Ljava/lang/String;)V

    goto :goto_0

    .line 92
    :cond_2
    iget-object p1, p0, Lcom/autoxing/delivery/websocket/MyWSManager$1;->this$0:Lcom/autoxing/delivery/websocket/MyWSManager;

    invoke-static {p1}, Lcom/autoxing/delivery/websocket/MyWSManager;->-$$Nest$fgetmListener(Lcom/autoxing/delivery/websocket/MyWSManager;)Lcom/autoxing/delivery/websocket/MyWSListener;

    move-result-object p1

    iget-object p2, p0, Lcom/autoxing/delivery/websocket/MyWSManager$1;->this$0:Lcom/autoxing/delivery/websocket/MyWSManager;

    invoke-static {p2, v0}, Lcom/autoxing/delivery/websocket/MyWSManager;->-$$Nest$mgenerateStatusData(Lcom/autoxing/delivery/websocket/MyWSManager;I)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, v0, p2}, Lcom/autoxing/delivery/websocket/MyWSListener;->onStatusChanged(ILjava/lang/String;)V

    :goto_0
    return-void
.end method
