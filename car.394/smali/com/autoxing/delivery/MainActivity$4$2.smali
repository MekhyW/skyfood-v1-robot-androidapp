.class Lcom/autoxing/delivery/MainActivity$4$2;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/autoxing/delivery/MainActivity$4;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/autoxing/delivery/MainActivity$4;


# direct methods
.method constructor <init>(Lcom/autoxing/delivery/MainActivity$4;)V
    .locals 0

    .line 268
    iput-object p1, p0, Lcom/autoxing/delivery/MainActivity$4$2;->this$1:Lcom/autoxing/delivery/MainActivity$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 271
    invoke-static {}, Lcom/autoxing/delivery/MainActivity;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "callJsUsbChangefalse"

    invoke-static {v0, v1}, Lcom/autoai/research/atools/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    iget-object v0, p0, Lcom/autoxing/delivery/MainActivity$4$2;->this$1:Lcom/autoxing/delivery/MainActivity$4;

    iget-object v0, v0, Lcom/autoxing/delivery/MainActivity$4;->this$0:Lcom/autoxing/delivery/MainActivity;

    invoke-static {v0}, Lcom/autoxing/delivery/MainActivity;->-$$Nest$fgetwebView(Lcom/autoxing/delivery/MainActivity;)Landroid/webkit/WebView;

    move-result-object v0

    const-string v1, "javascript:callJsUsbChange(\'false\')"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method
