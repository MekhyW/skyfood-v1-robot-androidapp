.class Lcom/autoxing/delivery/smarttray/SmartTrayManager$2;
.super Ljava/lang/Object;
.source "SmartTrayManager.java"

# interfaces
.implements Lcom/autoxing/service/websocket/AXWebSocketListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/autoxing/delivery/smarttray/SmartTrayManager;->initWebSocket(Ljava/lang/String;)V
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

    .line 123
    iput-object p1, p0, Lcom/autoxing/delivery/smarttray/SmartTrayManager$2;->this$0:Lcom/autoxing/delivery/smarttray/SmartTrayManager;

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

    .line 137
    :cond_0
    iget-object p1, p0, Lcom/autoxing/delivery/smarttray/SmartTrayManager$2;->this$0:Lcom/autoxing/delivery/smarttray/SmartTrayManager;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/autoxing/delivery/smarttray/SmartTrayManager;->-$$Nest$fputisConnected(Lcom/autoxing/delivery/smarttray/SmartTrayManager;Z)V

    goto :goto_0

    .line 134
    :cond_1
    iget-object p1, p0, Lcom/autoxing/delivery/smarttray/SmartTrayManager$2;->this$0:Lcom/autoxing/delivery/smarttray/SmartTrayManager;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/autoxing/delivery/smarttray/SmartTrayManager;->-$$Nest$mparseData(Lcom/autoxing/delivery/smarttray/SmartTrayManager;Ljava/lang/String;)V

    goto :goto_0

    .line 131
    :cond_2
    iget-object p1, p0, Lcom/autoxing/delivery/smarttray/SmartTrayManager$2;->this$0:Lcom/autoxing/delivery/smarttray/SmartTrayManager;

    invoke-static {p1, v0}, Lcom/autoxing/delivery/smarttray/SmartTrayManager;->-$$Nest$fputisConnected(Lcom/autoxing/delivery/smarttray/SmartTrayManager;Z)V

    :goto_0
    return-void
.end method
