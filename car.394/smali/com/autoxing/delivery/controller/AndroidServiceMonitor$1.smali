.class Lcom/autoxing/delivery/controller/AndroidServiceMonitor$1;
.super Ljava/util/TimerTask;
.source "AndroidServiceMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/autoxing/delivery/controller/AndroidServiceMonitor;->startHeart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/autoxing/delivery/controller/AndroidServiceMonitor;


# direct methods
.method constructor <init>(Lcom/autoxing/delivery/controller/AndroidServiceMonitor;)V
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/autoxing/delivery/controller/AndroidServiceMonitor$1;->this$0:Lcom/autoxing/delivery/controller/AndroidServiceMonitor;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 47
    invoke-static {}, Lcom/autoxing/delivery/smarttray/SmartTrayManager;->getManager()Lcom/autoxing/delivery/smarttray/SmartTrayManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autoxing/delivery/smarttray/SmartTrayManager;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 48
    iget-object v0, p0, Lcom/autoxing/delivery/controller/AndroidServiceMonitor$1;->this$0:Lcom/autoxing/delivery/controller/AndroidServiceMonitor;

    const-string v1, "com.autoxing.android.service"

    const-string v2, "com.autoxing.android.service.MainActivity"

    invoke-static {v0, v1, v2}, Lcom/autoxing/delivery/controller/AndroidServiceMonitor;->-$$Nest$mlaunchAndroidService(Lcom/autoxing/delivery/controller/AndroidServiceMonitor;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
