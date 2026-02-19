.class Lcom/autoxing/delivery/controller/BirthModeController$1;
.super Ljava/lang/Object;
.source "BirthModeController.java"

# interfaces
.implements Lcom/autoxing/delivery/websocket/TransFileTask$OnTransFileListener;


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

    .line 32
    iput-object p1, p0, Lcom/autoxing/delivery/controller/BirthModeController$1;->this$0:Lcom/autoxing/delivery/controller/BirthModeController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBeginRead(Ljava/io/File;Ljava/lang/String;)V
    .locals 4

    .line 35
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v0

    .line 36
    invoke-static {p1}, Lcom/autoai/research/jtools/security/MD5Utils;->getFileMD5String(Ljava/io/File;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    .line 37
    iget-object v2, p0, Lcom/autoxing/delivery/controller/BirthModeController$1;->this$0:Lcom/autoxing/delivery/controller/BirthModeController;

    invoke-static {v2}, Lcom/autoxing/delivery/controller/BirthModeController;->-$$Nest$fgetmBirthManager(Lcom/autoxing/delivery/controller/BirthModeController;)Lcom/autoxing/delivery/websocket/MyWSManager;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 38
    iget-object v2, p0, Lcom/autoxing/delivery/controller/BirthModeController$1;->this$0:Lcom/autoxing/delivery/controller/BirthModeController;

    invoke-static {v2}, Lcom/autoxing/delivery/controller/BirthModeController;->-$$Nest$fgetmBirthManager(Lcom/autoxing/delivery/controller/BirthModeController;)Lcom/autoxing/delivery/websocket/MyWSManager;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {p1, v0, v1, p2, v3}, Lcom/autoxing/delivery/websocket/DataHandler;->startTrans(Ljava/lang/String;JLjava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/autoxing/delivery/websocket/MyWSManager;->sendData(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onDataReceive([BJJ)V
    .locals 0

    .line 58
    iget-object p2, p0, Lcom/autoxing/delivery/controller/BirthModeController$1;->this$0:Lcom/autoxing/delivery/controller/BirthModeController;

    invoke-static {p2}, Lcom/autoxing/delivery/controller/BirthModeController;->-$$Nest$fgetmBirthManager(Lcom/autoxing/delivery/controller/BirthModeController;)Lcom/autoxing/delivery/websocket/MyWSManager;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 59
    iget-object p2, p0, Lcom/autoxing/delivery/controller/BirthModeController$1;->this$0:Lcom/autoxing/delivery/controller/BirthModeController;

    invoke-static {p2}, Lcom/autoxing/delivery/controller/BirthModeController;->-$$Nest$fgetmBirthManager(Lcom/autoxing/delivery/controller/BirthModeController;)Lcom/autoxing/delivery/websocket/MyWSManager;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/autoxing/delivery/websocket/MyWSManager;->sendData([B)V

    :cond_0
    return-void
.end method

.method public onEndRead(Ljava/io/File;Ljava/lang/String;)V
    .locals 4

    .line 44
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v0

    .line 45
    invoke-static {p1}, Lcom/autoai/research/jtools/security/MD5Utils;->getFileMD5String(Ljava/io/File;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    .line 46
    iget-object v2, p0, Lcom/autoxing/delivery/controller/BirthModeController$1;->this$0:Lcom/autoxing/delivery/controller/BirthModeController;

    invoke-static {v2}, Lcom/autoxing/delivery/controller/BirthModeController;->-$$Nest$fgetmBirthManager(Lcom/autoxing/delivery/controller/BirthModeController;)Lcom/autoxing/delivery/websocket/MyWSManager;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 47
    iget-object v2, p0, Lcom/autoxing/delivery/controller/BirthModeController$1;->this$0:Lcom/autoxing/delivery/controller/BirthModeController;

    invoke-static {v2}, Lcom/autoxing/delivery/controller/BirthModeController;->-$$Nest$fgetmBirthManager(Lcom/autoxing/delivery/controller/BirthModeController;)Lcom/autoxing/delivery/websocket/MyWSManager;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {p1, v0, v1, p2, v3}, Lcom/autoxing/delivery/websocket/DataHandler;->stopTrans(Ljava/lang/String;JLjava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/autoxing/delivery/websocket/MyWSManager;->sendData(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onReadError(Ljava/io/File;Ljava/lang/String;)V
    .locals 0

    return-void
.end method
