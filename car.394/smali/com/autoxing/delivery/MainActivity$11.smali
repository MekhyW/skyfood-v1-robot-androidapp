.class Lcom/autoxing/delivery/MainActivity$11;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Lcom/autoxing/delivery/download/DownlaodListener;


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

    .line 1042
    iput-object p1, p0, Lcom/autoxing/delivery/MainActivity$11;->this$0:Lcom/autoxing/delivery/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDownloadStatus(Lcom/autoxing/delivery/download/DownloadStatus;)V
    .locals 2

    .line 1045
    iget-object v0, p0, Lcom/autoxing/delivery/MainActivity$11;->this$0:Lcom/autoxing/delivery/MainActivity;

    invoke-static {v0}, Lcom/autoxing/delivery/MainActivity;->-$$Nest$fgetdownIndex(Lcom/autoxing/delivery/MainActivity;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/autoxing/delivery/MainActivity;->-$$Nest$fputdownIndex(Lcom/autoxing/delivery/MainActivity;I)V

    .line 1046
    iget-object v0, p0, Lcom/autoxing/delivery/MainActivity$11;->this$0:Lcom/autoxing/delivery/MainActivity;

    invoke-static {v0}, Lcom/autoxing/delivery/MainActivity;->-$$Nest$fgetdownIndex(Lcom/autoxing/delivery/MainActivity;)I

    move-result v0

    const/16 v1, 0x2710

    if-le v0, v1, :cond_0

    .line 1047
    iget-object v0, p0, Lcom/autoxing/delivery/MainActivity$11;->this$0:Lcom/autoxing/delivery/MainActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/autoxing/delivery/MainActivity;->-$$Nest$fputdownIndex(Lcom/autoxing/delivery/MainActivity;I)V

    .line 1049
    :cond_0
    iget-object v0, p0, Lcom/autoxing/delivery/MainActivity$11;->this$0:Lcom/autoxing/delivery/MainActivity;

    invoke-static {v0}, Lcom/autoxing/delivery/MainActivity;->-$$Nest$fgetdownIndex(Lcom/autoxing/delivery/MainActivity;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/autoxing/delivery/download/DownloadStatus;->setIndex(I)V

    .line 1050
    invoke-static {p1}, Lcom/alibaba/fastjson/JSONObject;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 1051
    iget-object v0, p0, Lcom/autoxing/delivery/MainActivity$11;->this$0:Lcom/autoxing/delivery/MainActivity;

    new-instance v1, Lcom/autoxing/delivery/MainActivity$11$1;

    invoke-direct {v1, p0, p1}, Lcom/autoxing/delivery/MainActivity$11$1;-><init>(Lcom/autoxing/delivery/MainActivity$11;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/autoxing/delivery/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
