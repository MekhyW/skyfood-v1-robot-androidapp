.class Lcom/autoxing/delivery/controller/LogController$LogcatTask;
.super Ljava/lang/Object;
.source "LogController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/autoxing/delivery/controller/LogController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LogcatTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/autoxing/delivery/controller/LogController;


# direct methods
.method private constructor <init>(Lcom/autoxing/delivery/controller/LogController;)V
    .locals 0

    .line 114
    iput-object p1, p0, Lcom/autoxing/delivery/controller/LogController$LogcatTask;->this$0:Lcom/autoxing/delivery/controller/LogController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/autoxing/delivery/controller/LogController;Lcom/autoxing/delivery/controller/LogController$LogcatTask-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/autoxing/delivery/controller/LogController$LogcatTask;-><init>(Lcom/autoxing/delivery/controller/LogController;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 117
    iget-object v0, p0, Lcom/autoxing/delivery/controller/LogController$LogcatTask;->this$0:Lcom/autoxing/delivery/controller/LogController;

    sget-object v1, Lcom/autoxing/delivery/constant/Configs;->LOG_PATH:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/autoxing/delivery/controller/LogController;->-$$Nest$mdeleteOldestFile(Lcom/autoxing/delivery/controller/LogController;Ljava/lang/String;)V

    .line 118
    iget-object v0, p0, Lcom/autoxing/delivery/controller/LogController$LogcatTask;->this$0:Lcom/autoxing/delivery/controller/LogController;

    sget-object v1, Lcom/autoxing/delivery/constant/Configs;->SYSTEM_LOG_PATH:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/autoxing/delivery/controller/LogController;->-$$Nest$mdeleteOldestFile(Lcom/autoxing/delivery/controller/LogController;Ljava/lang/String;)V

    .line 119
    iget-object v0, p0, Lcom/autoxing/delivery/controller/LogController$LogcatTask;->this$0:Lcom/autoxing/delivery/controller/LogController;

    invoke-static {v0}, Lcom/autoxing/delivery/controller/LogController;->-$$Nest$mdestoryProcess(Lcom/autoxing/delivery/controller/LogController;)V

    .line 120
    iget-object v0, p0, Lcom/autoxing/delivery/controller/LogController$LogcatTask;->this$0:Lcom/autoxing/delivery/controller/LogController;

    invoke-static {v0}, Lcom/autoxing/delivery/controller/LogController;->-$$Nest$msaveLogcatToFile(Lcom/autoxing/delivery/controller/LogController;)Ljava/lang/Process;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/autoxing/delivery/controller/LogController;->-$$Nest$fputmProcess(Lcom/autoxing/delivery/controller/LogController;Ljava/lang/Process;)V

    return-void
.end method
