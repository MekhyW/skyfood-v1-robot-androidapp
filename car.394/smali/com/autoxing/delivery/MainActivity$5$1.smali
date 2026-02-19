.class Lcom/autoxing/delivery/MainActivity$5$1;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/autoxing/delivery/MainActivity$5;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/autoxing/delivery/MainActivity$5;


# direct methods
.method constructor <init>(Lcom/autoxing/delivery/MainActivity$5;)V
    .locals 0

    .line 291
    iput-object p1, p0, Lcom/autoxing/delivery/MainActivity$5$1;->this$1:Lcom/autoxing/delivery/MainActivity$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const-wide/16 v0, 0xbb8

    .line 295
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 297
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 299
    :goto_0
    iget-object v0, p0, Lcom/autoxing/delivery/MainActivity$5$1;->this$1:Lcom/autoxing/delivery/MainActivity$5;

    iget-object v0, v0, Lcom/autoxing/delivery/MainActivity$5;->this$0:Lcom/autoxing/delivery/MainActivity;

    new-instance v1, Lcom/autoxing/delivery/MainActivity$5$1$1;

    invoke-direct {v1, p0}, Lcom/autoxing/delivery/MainActivity$5$1$1;-><init>(Lcom/autoxing/delivery/MainActivity$5$1;)V

    invoke-virtual {v0, v1}, Lcom/autoxing/delivery/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
