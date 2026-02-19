.class Lcom/autoxing/delivery/MainActivity$17;
.super Ljava/util/TimerTask;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/autoxing/delivery/MainActivity;->changeTaskTimerAction(I)V
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

    .line 1562
    iput-object p1, p0, Lcom/autoxing/delivery/MainActivity$17;->this$0:Lcom/autoxing/delivery/MainActivity;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1565
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1567
    iget-object v0, p0, Lcom/autoxing/delivery/MainActivity$17;->this$0:Lcom/autoxing/delivery/MainActivity;

    new-instance v1, Lcom/autoxing/delivery/MainActivity$17$1;

    invoke-direct {v1, p0}, Lcom/autoxing/delivery/MainActivity$17$1;-><init>(Lcom/autoxing/delivery/MainActivity$17;)V

    invoke-virtual {v0, v1}, Lcom/autoxing/delivery/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 1578
    :cond_0
    iget-object v0, p0, Lcom/autoxing/delivery/MainActivity$17;->this$0:Lcom/autoxing/delivery/MainActivity;

    invoke-static {v0}, Lcom/autoxing/delivery/MainActivity;->-$$Nest$fgettaskTime(Lcom/autoxing/delivery/MainActivity;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/autoxing/delivery/MainActivity;->-$$Nest$fputtaskTime(Lcom/autoxing/delivery/MainActivity;I)V

    .line 1579
    iget-object v0, p0, Lcom/autoxing/delivery/MainActivity$17;->this$0:Lcom/autoxing/delivery/MainActivity;

    invoke-static {v0}, Lcom/autoxing/delivery/MainActivity;->-$$Nest$fgettaskTime(Lcom/autoxing/delivery/MainActivity;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/autoxing/delivery/MainActivity;->-$$Nest$mchangeTimeStr(Lcom/autoxing/delivery/MainActivity;I)Ljava/lang/String;

    move-result-object v0

    .line 1580
    iget-object v1, p0, Lcom/autoxing/delivery/MainActivity$17;->this$0:Lcom/autoxing/delivery/MainActivity;

    invoke-static {v1}, Lcom/autoxing/delivery/MainActivity;->-$$Nest$fgetmTaskTimeTextView(Lcom/autoxing/delivery/MainActivity;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method
