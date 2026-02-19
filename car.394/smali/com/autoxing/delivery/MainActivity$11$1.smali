.class Lcom/autoxing/delivery/MainActivity$11$1;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/autoxing/delivery/MainActivity$11;->onDownloadStatus(Lcom/autoxing/delivery/download/DownloadStatus;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/autoxing/delivery/MainActivity$11;

.field final synthetic val$data:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/autoxing/delivery/MainActivity$11;Ljava/lang/String;)V
    .locals 0

    .line 1051
    iput-object p1, p0, Lcom/autoxing/delivery/MainActivity$11$1;->this$1:Lcom/autoxing/delivery/MainActivity$11;

    iput-object p2, p0, Lcom/autoxing/delivery/MainActivity$11$1;->val$data:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1054
    iget-object v0, p0, Lcom/autoxing/delivery/MainActivity$11$1;->this$1:Lcom/autoxing/delivery/MainActivity$11;

    iget-object v0, v0, Lcom/autoxing/delivery/MainActivity$11;->this$0:Lcom/autoxing/delivery/MainActivity;

    invoke-static {v0}, Lcom/autoxing/delivery/MainActivity;->-$$Nest$fgetwebView(Lcom/autoxing/delivery/MainActivity;)Landroid/webkit/WebView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "javascript:callJSAdDownload(\'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/autoxing/delivery/MainActivity$11$1;->val$data:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\')"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method
