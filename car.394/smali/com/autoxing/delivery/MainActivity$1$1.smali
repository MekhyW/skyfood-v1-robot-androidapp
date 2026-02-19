.class Lcom/autoxing/delivery/MainActivity$1$1;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/autoxing/delivery/MainActivity$1;->onNetChanged(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/autoxing/delivery/MainActivity$1;

.field final synthetic val$netStatus:I


# direct methods
.method constructor <init>(Lcom/autoxing/delivery/MainActivity$1;I)V
    .locals 0

    .line 196
    iput-object p1, p0, Lcom/autoxing/delivery/MainActivity$1$1;->this$1:Lcom/autoxing/delivery/MainActivity$1;

    iput p2, p0, Lcom/autoxing/delivery/MainActivity$1$1;->val$netStatus:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 199
    iget-object v0, p0, Lcom/autoxing/delivery/MainActivity$1$1;->this$1:Lcom/autoxing/delivery/MainActivity$1;

    iget-object v0, v0, Lcom/autoxing/delivery/MainActivity$1;->this$0:Lcom/autoxing/delivery/MainActivity;

    invoke-static {v0}, Lcom/autoxing/delivery/MainActivity;->-$$Nest$fgetwebView(Lcom/autoxing/delivery/MainActivity;)Landroid/webkit/WebView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "javascript:callNetStatusChanged("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/autoxing/delivery/MainActivity$1$1;->val$netStatus:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method
