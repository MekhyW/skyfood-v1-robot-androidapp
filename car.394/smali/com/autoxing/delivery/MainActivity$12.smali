.class Lcom/autoxing/delivery/MainActivity$12;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Lcom/autoxing/delivery/websocket/MyWSListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/autoxing/delivery/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/autoxing/delivery/MainActivity;


# direct methods
.method constructor <init>(Lcom/autoxing/delivery/MainActivity;)V
    .locals 0

    .line 1095
    iput-object p1, p0, Lcom/autoxing/delivery/MainActivity$12;->this$0:Lcom/autoxing/delivery/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStatusChanged(ILjava/lang/String;)V
    .locals 1

    .line 1099
    iget-object p1, p0, Lcom/autoxing/delivery/MainActivity$12;->this$0:Lcom/autoxing/delivery/MainActivity;

    invoke-static {p1}, Lcom/autoxing/delivery/MainActivity;->-$$Nest$fgetscreenIndex(Lcom/autoxing/delivery/MainActivity;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {p1, v0}, Lcom/autoxing/delivery/MainActivity;->-$$Nest$fputscreenIndex(Lcom/autoxing/delivery/MainActivity;I)V

    .line 1100
    iget-object p1, p0, Lcom/autoxing/delivery/MainActivity$12;->this$0:Lcom/autoxing/delivery/MainActivity;

    invoke-static {p1}, Lcom/autoxing/delivery/MainActivity;->-$$Nest$fgetscreenIndex(Lcom/autoxing/delivery/MainActivity;)I

    move-result p1

    const/16 v0, 0x2710

    if-le p1, v0, :cond_0

    .line 1101
    iget-object p1, p0, Lcom/autoxing/delivery/MainActivity$12;->this$0:Lcom/autoxing/delivery/MainActivity;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/autoxing/delivery/MainActivity;->-$$Nest$fputscreenIndex(Lcom/autoxing/delivery/MainActivity;I)V

    .line 1103
    :cond_0
    invoke-static {p2}, Lcom/alibaba/fastjson/JSONObject;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object p1

    .line 1104
    iget-object p2, p0, Lcom/autoxing/delivery/MainActivity$12;->this$0:Lcom/autoxing/delivery/MainActivity;

    invoke-static {p2}, Lcom/autoxing/delivery/MainActivity;->-$$Nest$fgetscreenIndex(Lcom/autoxing/delivery/MainActivity;)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string v0, "index"

    invoke-virtual {p1, v0, p2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1105
    invoke-virtual {p1}, Lcom/alibaba/fastjson/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object p1

    .line 1106
    iget-object p2, p0, Lcom/autoxing/delivery/MainActivity$12;->this$0:Lcom/autoxing/delivery/MainActivity;

    new-instance v0, Lcom/autoxing/delivery/MainActivity$12$1;

    invoke-direct {v0, p0, p1}, Lcom/autoxing/delivery/MainActivity$12$1;-><init>(Lcom/autoxing/delivery/MainActivity$12;Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Lcom/autoxing/delivery/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
