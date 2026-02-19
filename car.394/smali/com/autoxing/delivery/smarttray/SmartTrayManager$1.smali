.class Lcom/autoxing/delivery/smarttray/SmartTrayManager$1;
.super Ljava/util/TimerTask;
.source "SmartTrayManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/autoxing/delivery/smarttray/SmartTrayManager;->startHeart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/autoxing/delivery/smarttray/SmartTrayManager;


# direct methods
.method constructor <init>(Lcom/autoxing/delivery/smarttray/SmartTrayManager;)V
    .locals 0

    .line 76
    iput-object p1, p0, Lcom/autoxing/delivery/smarttray/SmartTrayManager$1;->this$0:Lcom/autoxing/delivery/smarttray/SmartTrayManager;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 79
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-object v2, p0, Lcom/autoxing/delivery/smarttray/SmartTrayManager$1;->this$0:Lcom/autoxing/delivery/smarttray/SmartTrayManager;

    invoke-static {v2}, Lcom/autoxing/delivery/smarttray/SmartTrayManager;->-$$Nest$fgetlastHeartTime(Lcom/autoxing/delivery/smarttray/SmartTrayManager;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1388

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 82
    iget-object v0, p0, Lcom/autoxing/delivery/smarttray/SmartTrayManager$1;->this$0:Lcom/autoxing/delivery/smarttray/SmartTrayManager;

    invoke-static {v0}, Lcom/autoxing/delivery/smarttray/SmartTrayManager;->-$$Nest$fgetmWebSocketClient(Lcom/autoxing/delivery/smarttray/SmartTrayManager;)Lcom/autoxing/service/websocket/AXWebSocketClient;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/autoxing/delivery/smarttray/SmartTrayManager$1;->this$0:Lcom/autoxing/delivery/smarttray/SmartTrayManager;

    invoke-static {v0}, Lcom/autoxing/delivery/smarttray/SmartTrayManager;->-$$Nest$fgetmWebSocketClient(Lcom/autoxing/delivery/smarttray/SmartTrayManager;)Lcom/autoxing/service/websocket/AXWebSocketClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autoxing/service/websocket/AXWebSocketClient;->stop()V

    .line 84
    iget-object v0, p0, Lcom/autoxing/delivery/smarttray/SmartTrayManager$1;->this$0:Lcom/autoxing/delivery/smarttray/SmartTrayManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/autoxing/delivery/smarttray/SmartTrayManager;->-$$Nest$fputmWebSocketClient(Lcom/autoxing/delivery/smarttray/SmartTrayManager;Lcom/autoxing/service/websocket/AXWebSocketClient;)V

    .line 86
    :cond_0
    iget-object v0, p0, Lcom/autoxing/delivery/smarttray/SmartTrayManager$1;->this$0:Lcom/autoxing/delivery/smarttray/SmartTrayManager;

    const-string v1, "ws://localhost:9003"

    invoke-static {v0, v1}, Lcom/autoxing/delivery/smarttray/SmartTrayManager;->-$$Nest$minitWebSocket(Lcom/autoxing/delivery/smarttray/SmartTrayManager;Ljava/lang/String;)V

    .line 87
    iget-object v0, p0, Lcom/autoxing/delivery/smarttray/SmartTrayManager$1;->this$0:Lcom/autoxing/delivery/smarttray/SmartTrayManager;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/autoxing/delivery/smarttray/SmartTrayManager;->-$$Nest$fputlastHeartTime(Lcom/autoxing/delivery/smarttray/SmartTrayManager;J)V

    goto :goto_0

    .line 89
    :cond_1
    iget-object v0, p0, Lcom/autoxing/delivery/smarttray/SmartTrayManager$1;->this$0:Lcom/autoxing/delivery/smarttray/SmartTrayManager;

    const-string v1, "{\"reqType\":\"onHeartBeat\"}"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/autoxing/delivery/smarttray/SmartTrayManager;->-$$Nest$msendData(Lcom/autoxing/delivery/smarttray/SmartTrayManager;Ljava/lang/String;Z)Z

    :goto_0
    return-void
.end method
