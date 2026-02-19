.class Lcom/autoxing/delivery/controller/WifiController$NetCheckTask;
.super Ljava/lang/Object;
.source "WifiController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/autoxing/delivery/controller/WifiController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NetCheckTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/autoxing/delivery/controller/WifiController;


# direct methods
.method public constructor <init>(Lcom/autoxing/delivery/controller/WifiController;)V
    .locals 0

    .line 81
    iput-object p1, p0, Lcom/autoxing/delivery/controller/WifiController$NetCheckTask;->this$0:Lcom/autoxing/delivery/controller/WifiController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 86
    :goto_0
    iget-object v0, p0, Lcom/autoxing/delivery/controller/WifiController$NetCheckTask;->this$0:Lcom/autoxing/delivery/controller/WifiController;

    invoke-static {v0}, Lcom/autoxing/delivery/controller/WifiController;->-$$Nest$fgetisRunning(Lcom/autoxing/delivery/controller/WifiController;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "api.autoxing.com"

    .line 87
    invoke-static {v0}, Lcom/autoxing/delivery/util/WifiUtils;->isNetworkOnline(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "apiglobal.autoxing.com"

    .line 89
    invoke-static {v0}, Lcom/autoxing/delivery/util/WifiUtils;->isNetworkOnline(Ljava/lang/String;)Z

    move-result v0

    :cond_0
    if-nez v0, :cond_1

    const-string v0, "local.autoxing.com"

    .line 92
    invoke-static {v0}, Lcom/autoxing/delivery/util/WifiUtils;->isNetworkOnline(Ljava/lang/String;)Z

    move-result v0

    :cond_1
    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, -0x1

    .line 95
    :goto_1
    iget-object v1, p0, Lcom/autoxing/delivery/controller/WifiController$NetCheckTask;->this$0:Lcom/autoxing/delivery/controller/WifiController;

    invoke-static {v1}, Lcom/autoxing/delivery/controller/WifiController;->-$$Nest$fgetlastNetStatus(Lcom/autoxing/delivery/controller/WifiController;)I

    move-result v1

    if-eq v1, v0, :cond_3

    .line 96
    iget-object v1, p0, Lcom/autoxing/delivery/controller/WifiController$NetCheckTask;->this$0:Lcom/autoxing/delivery/controller/WifiController;

    invoke-static {v1, v0}, Lcom/autoxing/delivery/controller/WifiController;->-$$Nest$fputlastNetStatus(Lcom/autoxing/delivery/controller/WifiController;I)V

    .line 97
    iget-object v1, p0, Lcom/autoxing/delivery/controller/WifiController$NetCheckTask;->this$0:Lcom/autoxing/delivery/controller/WifiController;

    invoke-static {v1}, Lcom/autoxing/delivery/controller/WifiController;->-$$Nest$fgetisPageFinished(Lcom/autoxing/delivery/controller/WifiController;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/autoxing/delivery/controller/WifiController$NetCheckTask;->this$0:Lcom/autoxing/delivery/controller/WifiController;

    invoke-static {v1}, Lcom/autoxing/delivery/controller/WifiController;->-$$Nest$fgetmListener(Lcom/autoxing/delivery/controller/WifiController;)Lcom/autoxing/delivery/controller/OnWifiListener;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 98
    iget-object v1, p0, Lcom/autoxing/delivery/controller/WifiController$NetCheckTask;->this$0:Lcom/autoxing/delivery/controller/WifiController;

    invoke-static {v1}, Lcom/autoxing/delivery/controller/WifiController;->-$$Nest$fgetmListener(Lcom/autoxing/delivery/controller/WifiController;)Lcom/autoxing/delivery/controller/OnWifiListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/autoxing/delivery/controller/OnWifiListener;->onNetChanged(I)V

    .line 101
    :cond_3
    iget-object v0, p0, Lcom/autoxing/delivery/controller/WifiController$NetCheckTask;->this$0:Lcom/autoxing/delivery/controller/WifiController;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/autoxing/delivery/controller/WifiController;->-$$Nest$msleep(Lcom/autoxing/delivery/controller/WifiController;I)V

    goto :goto_0

    :cond_4
    return-void
.end method
