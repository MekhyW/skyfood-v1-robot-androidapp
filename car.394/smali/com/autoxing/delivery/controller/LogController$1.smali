.class Lcom/autoxing/delivery/controller/LogController$1;
.super Landroid/content/BroadcastReceiver;
.source "LogController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/autoxing/delivery/controller/LogController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/autoxing/delivery/controller/LogController;


# direct methods
.method constructor <init>(Lcom/autoxing/delivery/controller/LogController;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/autoxing/delivery/controller/LogController$1;->this$0:Lcom/autoxing/delivery/controller/LogController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .line 54
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    const/4 p2, 0x5

    .line 55
    invoke-virtual {p1, p2}, Ljava/util/Calendar;->get(I)I

    move-result p1

    .line 56
    iget-object p2, p0, Lcom/autoxing/delivery/controller/LogController$1;->this$0:Lcom/autoxing/delivery/controller/LogController;

    invoke-static {p2}, Lcom/autoxing/delivery/controller/LogController;->-$$Nest$fgetlastDayOfMonth(Lcom/autoxing/delivery/controller/LogController;)I

    move-result p2

    const/4 v0, -0x1

    if-le p2, v0, :cond_0

    iget-object p2, p0, Lcom/autoxing/delivery/controller/LogController$1;->this$0:Lcom/autoxing/delivery/controller/LogController;

    invoke-static {p2}, Lcom/autoxing/delivery/controller/LogController;->-$$Nest$fgetlastDayOfMonth(Lcom/autoxing/delivery/controller/LogController;)I

    move-result p2

    if-eq p1, p2, :cond_0

    .line 57
    iget-object p2, p0, Lcom/autoxing/delivery/controller/LogController$1;->this$0:Lcom/autoxing/delivery/controller/LogController;

    invoke-static {p2}, Lcom/autoxing/delivery/controller/LogController;->-$$Nest$fgetexecutorService(Lcom/autoxing/delivery/controller/LogController;)Ljava/util/concurrent/ExecutorService;

    move-result-object p2

    new-instance v0, Lcom/autoxing/delivery/controller/LogController$LogcatTask;

    iget-object v1, p0, Lcom/autoxing/delivery/controller/LogController$1;->this$0:Lcom/autoxing/delivery/controller/LogController;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/autoxing/delivery/controller/LogController$LogcatTask;-><init>(Lcom/autoxing/delivery/controller/LogController;Lcom/autoxing/delivery/controller/LogController$LogcatTask-IA;)V

    invoke-interface {p2, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 59
    :cond_0
    iget-object p2, p0, Lcom/autoxing/delivery/controller/LogController$1;->this$0:Lcom/autoxing/delivery/controller/LogController;

    invoke-static {p2, p1}, Lcom/autoxing/delivery/controller/LogController;->-$$Nest$fputlastDayOfMonth(Lcom/autoxing/delivery/controller/LogController;I)V

    return-void
.end method
