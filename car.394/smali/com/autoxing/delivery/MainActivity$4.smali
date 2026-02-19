.class Lcom/autoxing/delivery/MainActivity$4;
.super Landroid/content/BroadcastReceiver;
.source "MainActivity.java"


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

    .line 253
    iput-object p1, p0, Lcom/autoxing/delivery/MainActivity$4;->this$0:Lcom/autoxing/delivery/MainActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 256
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.hardware.usb.action.USB_DEVICE_ATTACHED"

    .line 257
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 259
    iget-object p1, p0, Lcom/autoxing/delivery/MainActivity$4;->this$0:Lcom/autoxing/delivery/MainActivity;

    new-instance p2, Lcom/autoxing/delivery/MainActivity$4$1;

    invoke-direct {p2, p0}, Lcom/autoxing/delivery/MainActivity$4$1;-><init>(Lcom/autoxing/delivery/MainActivity$4;)V

    invoke-virtual {p1, p2}, Lcom/autoxing/delivery/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    const-string p2, "android.hardware.usb.action.USB_DEVICE_DETACHED"

    .line 266
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 268
    iget-object p1, p0, Lcom/autoxing/delivery/MainActivity$4;->this$0:Lcom/autoxing/delivery/MainActivity;

    new-instance p2, Lcom/autoxing/delivery/MainActivity$4$2;

    invoke-direct {p2, p0}, Lcom/autoxing/delivery/MainActivity$4$2;-><init>(Lcom/autoxing/delivery/MainActivity$4;)V

    invoke-virtual {p1, p2}, Lcom/autoxing/delivery/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method
