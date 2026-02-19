.class Lcom/autoxing/delivery/MainActivity$17$1;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/autoxing/delivery/MainActivity$17;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/autoxing/delivery/MainActivity$17;


# direct methods
.method constructor <init>(Lcom/autoxing/delivery/MainActivity$17;)V
    .locals 0

    .line 1567
    iput-object p1, p0, Lcom/autoxing/delivery/MainActivity$17$1;->this$1:Lcom/autoxing/delivery/MainActivity$17;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1571
    iget-object v0, p0, Lcom/autoxing/delivery/MainActivity$17$1;->this$1:Lcom/autoxing/delivery/MainActivity$17;

    iget-object v0, v0, Lcom/autoxing/delivery/MainActivity$17;->this$0:Lcom/autoxing/delivery/MainActivity;

    iget-object v1, p0, Lcom/autoxing/delivery/MainActivity$17$1;->this$1:Lcom/autoxing/delivery/MainActivity$17;

    iget-object v1, v1, Lcom/autoxing/delivery/MainActivity$17;->this$0:Lcom/autoxing/delivery/MainActivity;

    invoke-static {v1}, Lcom/autoxing/delivery/MainActivity;->-$$Nest$fgettaskTime(Lcom/autoxing/delivery/MainActivity;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/autoxing/delivery/MainActivity;->-$$Nest$fputtaskTime(Lcom/autoxing/delivery/MainActivity;I)V

    .line 1572
    iget-object v0, p0, Lcom/autoxing/delivery/MainActivity$17$1;->this$1:Lcom/autoxing/delivery/MainActivity$17;

    iget-object v0, v0, Lcom/autoxing/delivery/MainActivity$17;->this$0:Lcom/autoxing/delivery/MainActivity;

    iget-object v1, p0, Lcom/autoxing/delivery/MainActivity$17$1;->this$1:Lcom/autoxing/delivery/MainActivity$17;

    iget-object v1, v1, Lcom/autoxing/delivery/MainActivity$17;->this$0:Lcom/autoxing/delivery/MainActivity;

    invoke-static {v1}, Lcom/autoxing/delivery/MainActivity;->-$$Nest$fgettaskTime(Lcom/autoxing/delivery/MainActivity;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/autoxing/delivery/MainActivity;->-$$Nest$mchangeTimeStr(Lcom/autoxing/delivery/MainActivity;I)Ljava/lang/String;

    move-result-object v0

    .line 1573
    iget-object v1, p0, Lcom/autoxing/delivery/MainActivity$17$1;->this$1:Lcom/autoxing/delivery/MainActivity$17;

    iget-object v1, v1, Lcom/autoxing/delivery/MainActivity$17;->this$0:Lcom/autoxing/delivery/MainActivity;

    invoke-static {v1}, Lcom/autoxing/delivery/MainActivity;->-$$Nest$fgetmTaskTimeTextView(Lcom/autoxing/delivery/MainActivity;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
