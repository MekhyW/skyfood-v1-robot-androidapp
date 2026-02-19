.class Lcom/autoxing/delivery/controller/EventController$1;
.super Lcom/reglink/services/IMessageCallback$Stub;
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

    .line 46
    iput-object p1, p0, Lcom/autoxing/delivery/controller/EventController$1;->this$0:Lcom/autoxing/delivery/controller/EventController;

    invoke-direct {p0}, Lcom/reglink/services/IMessageCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Lcom/reglink/parcel/Message;)V
    .locals 1

    .line 49
    invoke-virtual {p1}, Lcom/reglink/parcel/Message;->what()I

    move-result p1

    const/16 v0, 0xa

    if-ne p1, v0, :cond_0

    .line 50
    iget-object p1, p0, Lcom/autoxing/delivery/controller/EventController$1;->this$0:Lcom/autoxing/delivery/controller/EventController;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/autoxing/delivery/controller/EventController;->-$$Nest$fputisSleepMode(Lcom/autoxing/delivery/controller/EventController;Z)V

    .line 51
    iget-object p1, p0, Lcom/autoxing/delivery/controller/EventController$1;->this$0:Lcom/autoxing/delivery/controller/EventController;

    invoke-static {p1}, Lcom/autoxing/delivery/controller/EventController;->-$$Nest$fgetmHandler(Lcom/autoxing/delivery/controller/EventController;)Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/autoxing/delivery/controller/EventController$1$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/autoxing/delivery/controller/EventController$1$$ExternalSyntheticLambda0;-><init>(Lcom/autoxing/delivery/controller/EventController$1;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method synthetic lambda$handleMessage$0$com-autoxing-delivery-controller-EventController$1()V
    .locals 3

    .line 51
    iget-object v0, p0, Lcom/autoxing/delivery/controller/EventController$1;->this$0:Lcom/autoxing/delivery/controller/EventController;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/autoxing/delivery/controller/EventController;->-$$Nest$mcallOnTouchChanged(Lcom/autoxing/delivery/controller/EventController;IZ)V

    return-void
.end method
