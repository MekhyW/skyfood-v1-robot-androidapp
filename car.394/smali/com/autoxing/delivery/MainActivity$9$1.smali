.class Lcom/autoxing/delivery/MainActivity$9$1;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/autoxing/delivery/MainActivity$9;->onDownloadSuccess(Ljava/io/File;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/autoxing/delivery/MainActivity$9;


# direct methods
.method constructor <init>(Lcom/autoxing/delivery/MainActivity$9;)V
    .locals 0

    .line 846
    iput-object p1, p0, Lcom/autoxing/delivery/MainActivity$9$1;->this$1:Lcom/autoxing/delivery/MainActivity$9;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 849
    invoke-static {}, Lcom/autoxing/delivery/MainActivity;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onDownloadSuccess"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/autoxing/delivery/MainActivity$9$1;->this$1:Lcom/autoxing/delivery/MainActivity$9;

    iget-object v2, v2, Lcom/autoxing/delivery/MainActivity$9;->val$name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/autoai/research/atools/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 850
    iget-object v0, p0, Lcom/autoxing/delivery/MainActivity$9$1;->this$1:Lcom/autoxing/delivery/MainActivity$9;

    iget-object v0, v0, Lcom/autoxing/delivery/MainActivity$9;->this$0:Lcom/autoxing/delivery/MainActivity;

    invoke-static {v0}, Lcom/autoxing/delivery/MainActivity;->-$$Nest$fgetwebView(Lcom/autoxing/delivery/MainActivity;)Landroid/webkit/WebView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "javascript:callJSDownloadSuccess(\'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/autoxing/delivery/MainActivity$9$1;->this$1:Lcom/autoxing/delivery/MainActivity$9;

    iget-object v2, v2, Lcom/autoxing/delivery/MainActivity$9;->val$name:Ljava/lang/String;

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
