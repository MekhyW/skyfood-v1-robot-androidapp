.class Lcom/autoxing/delivery/controller/BirthModeController$2;
.super Ljava/lang/Object;
.source "BirthModeController.java"

# interfaces
.implements Lcom/autoxing/delivery/websocket/MyWSListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/autoxing/delivery/controller/BirthModeController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/autoxing/delivery/controller/BirthModeController;


# direct methods
.method constructor <init>(Lcom/autoxing/delivery/controller/BirthModeController;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/autoxing/delivery/controller/BirthModeController$2;->this$0:Lcom/autoxing/delivery/controller/BirthModeController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStatusChanged(ILjava/lang/String;)V
    .locals 3

    const/4 p2, 0x1

    if-ne p2, p1, :cond_1

    .line 69
    iget-object p1, p0, Lcom/autoxing/delivery/controller/BirthModeController$2;->this$0:Lcom/autoxing/delivery/controller/BirthModeController;

    invoke-static {p1}, Lcom/autoxing/delivery/controller/BirthModeController;->-$$Nest$fgetexecutorService(Lcom/autoxing/delivery/controller/BirthModeController;)Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    if-nez p1, :cond_0

    .line 70
    iget-object p1, p0, Lcom/autoxing/delivery/controller/BirthModeController$2;->this$0:Lcom/autoxing/delivery/controller/BirthModeController;

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/autoxing/delivery/controller/BirthModeController;->-$$Nest$fputexecutorService(Lcom/autoxing/delivery/controller/BirthModeController;Ljava/util/concurrent/ExecutorService;)V

    .line 73
    :cond_0
    iget-object p1, p0, Lcom/autoxing/delivery/controller/BirthModeController$2;->this$0:Lcom/autoxing/delivery/controller/BirthModeController;

    invoke-static {p1}, Lcom/autoxing/delivery/controller/BirthModeController;->-$$Nest$fgetexecutorService(Lcom/autoxing/delivery/controller/BirthModeController;)Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    new-instance p2, Lcom/autoxing/delivery/websocket/TransFileTask;

    iget-object v0, p0, Lcom/autoxing/delivery/controller/BirthModeController$2;->this$0:Lcom/autoxing/delivery/controller/BirthModeController;

    invoke-static {v0}, Lcom/autoxing/delivery/controller/BirthModeController;->-$$Nest$fgetmFilePath(Lcom/autoxing/delivery/controller/BirthModeController;)Ljava/io/File;

    move-result-object v0

    iget-object v1, p0, Lcom/autoxing/delivery/controller/BirthModeController$2;->this$0:Lcom/autoxing/delivery/controller/BirthModeController;

    invoke-static {v1}, Lcom/autoxing/delivery/controller/BirthModeController;->-$$Nest$fgetmOnTransFileListener(Lcom/autoxing/delivery/controller/BirthModeController;)Lcom/autoxing/delivery/websocket/TransFileTask$OnTransFileListener;

    move-result-object v1

    iget-object v2, p0, Lcom/autoxing/delivery/controller/BirthModeController$2;->this$0:Lcom/autoxing/delivery/controller/BirthModeController;

    invoke-static {v2}, Lcom/autoxing/delivery/controller/BirthModeController;->-$$Nest$fgetmFilePath(Lcom/autoxing/delivery/controller/BirthModeController;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p2, v0, v1, v2}, Lcom/autoxing/delivery/websocket/TransFileTask;-><init>(Ljava/io/File;Lcom/autoxing/delivery/websocket/TransFileTask$OnTransFileListener;Ljava/lang/String;)V

    invoke-interface {p1, p2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    :cond_1
    return-void
.end method
