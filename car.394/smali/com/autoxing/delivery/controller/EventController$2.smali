.class Lcom/autoxing/delivery/controller/EventController$2;
.super Landroid/content/BroadcastReceiver;
.source "EventController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/autoxing/delivery/controller/EventController;-><init>(Landroid/webkit/WebView;Landroid/content/Context;Lcom/autoxing/delivery/controller/EventController$OnTouchChangedListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/autoxing/delivery/controller/EventController;


# direct methods
.method constructor <init>(Lcom/autoxing/delivery/controller/EventController;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/autoxing/delivery/controller/EventController$2;->this$0:Lcom/autoxing/delivery/controller/EventController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 64
    iget-object p1, p0, Lcom/autoxing/delivery/controller/EventController$2;->this$0:Lcom/autoxing/delivery/controller/EventController;

    const-string p2, "checkEnterStandby=>onReceive"

    invoke-static {p1, p2}, Lcom/autoxing/delivery/controller/EventController;->-$$Nest$mdebug(Lcom/autoxing/delivery/controller/EventController;Ljava/lang/String;)V

    .line 65
    iget-object p1, p0, Lcom/autoxing/delivery/controller/EventController$2;->this$0:Lcom/autoxing/delivery/controller/EventController;

    invoke-static {p1}, Lcom/autoxing/delivery/controller/EventController;->-$$Nest$mcheckEnterStandby(Lcom/autoxing/delivery/controller/EventController;)V

    return-void
.end method
