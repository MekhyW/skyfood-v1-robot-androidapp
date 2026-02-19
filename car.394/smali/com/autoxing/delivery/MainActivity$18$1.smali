.class Lcom/autoxing/delivery/MainActivity$18$1;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/autoxing/delivery/MainActivity$18;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/autoxing/delivery/MainActivity$18;


# direct methods
.method constructor <init>(Lcom/autoxing/delivery/MainActivity$18;)V
    .locals 0

    .line 1599
    iput-object p1, p0, Lcom/autoxing/delivery/MainActivity$18$1;->this$1:Lcom/autoxing/delivery/MainActivity$18;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1603
    iget-object v0, p0, Lcom/autoxing/delivery/MainActivity$18$1;->this$1:Lcom/autoxing/delivery/MainActivity$18;

    iget-object v0, v0, Lcom/autoxing/delivery/MainActivity$18;->this$0:Lcom/autoxing/delivery/MainActivity;

    invoke-static {v0}, Lcom/autoxing/delivery/MainActivity;->-$$Nest$fgetnowTime(Lcom/autoxing/delivery/MainActivity;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/autoxing/delivery/MainActivity$18$1;->this$1:Lcom/autoxing/delivery/MainActivity$18;

    iget-object v1, v1, Lcom/autoxing/delivery/MainActivity$18;->this$0:Lcom/autoxing/delivery/MainActivity;

    invoke-static {v1}, Lcom/autoxing/delivery/MainActivity;->-$$Nest$mgetNowDTime(Lcom/autoxing/delivery/MainActivity;)Ljava/lang/String;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 1604
    iget-object v0, p0, Lcom/autoxing/delivery/MainActivity$18$1;->this$1:Lcom/autoxing/delivery/MainActivity$18;

    iget-object v0, v0, Lcom/autoxing/delivery/MainActivity$18;->this$0:Lcom/autoxing/delivery/MainActivity;

    iget-object v1, p0, Lcom/autoxing/delivery/MainActivity$18$1;->this$1:Lcom/autoxing/delivery/MainActivity$18;

    iget-object v1, v1, Lcom/autoxing/delivery/MainActivity$18;->this$0:Lcom/autoxing/delivery/MainActivity;

    invoke-static {v1}, Lcom/autoxing/delivery/MainActivity;->-$$Nest$mgetNowDTime(Lcom/autoxing/delivery/MainActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/autoxing/delivery/MainActivity;->-$$Nest$fputnowTime(Lcom/autoxing/delivery/MainActivity;Ljava/lang/String;)V

    .line 1605
    iget-object v0, p0, Lcom/autoxing/delivery/MainActivity$18$1;->this$1:Lcom/autoxing/delivery/MainActivity$18;

    iget-object v0, v0, Lcom/autoxing/delivery/MainActivity$18;->this$0:Lcom/autoxing/delivery/MainActivity;

    invoke-static {v0}, Lcom/autoxing/delivery/MainActivity;->-$$Nest$fgetmAnimationDateTextView(Lcom/autoxing/delivery/MainActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/autoxing/delivery/MainActivity$18$1;->this$1:Lcom/autoxing/delivery/MainActivity$18;

    iget-object v1, v1, Lcom/autoxing/delivery/MainActivity$18;->this$0:Lcom/autoxing/delivery/MainActivity;

    invoke-static {v1}, Lcom/autoxing/delivery/MainActivity;->-$$Nest$mgetNowDTime(Lcom/autoxing/delivery/MainActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
