.class Lcom/autoxing/delivery/util/KeyboardCover$1;
.super Ljava/lang/Object;
.source "KeyboardCover.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/autoxing/delivery/util/KeyboardCover;-><init>(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/autoxing/delivery/util/KeyboardCover;


# direct methods
.method constructor <init>(Lcom/autoxing/delivery/util/KeyboardCover;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lcom/autoxing/delivery/util/KeyboardCover$1;->this$0:Lcom/autoxing/delivery/util/KeyboardCover;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 2

    .line 33
    iget-object v0, p0, Lcom/autoxing/delivery/util/KeyboardCover$1;->this$0:Lcom/autoxing/delivery/util/KeyboardCover;

    invoke-static {v0}, Lcom/autoxing/delivery/util/KeyboardCover;->-$$Nest$fgetisfirst(Lcom/autoxing/delivery/util/KeyboardCover;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 34
    iget-object v0, p0, Lcom/autoxing/delivery/util/KeyboardCover$1;->this$0:Lcom/autoxing/delivery/util/KeyboardCover;

    invoke-static {v0}, Lcom/autoxing/delivery/util/KeyboardCover;->-$$Nest$fgetmChildOfContent(Lcom/autoxing/delivery/util/KeyboardCover;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-static {v0, v1}, Lcom/autoxing/delivery/util/KeyboardCover;->-$$Nest$fputcontentHeight(Lcom/autoxing/delivery/util/KeyboardCover;I)V

    .line 35
    iget-object v0, p0, Lcom/autoxing/delivery/util/KeyboardCover$1;->this$0:Lcom/autoxing/delivery/util/KeyboardCover;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/autoxing/delivery/util/KeyboardCover;->-$$Nest$fputisfirst(Lcom/autoxing/delivery/util/KeyboardCover;Z)V

    .line 37
    :cond_0
    iget-object v0, p0, Lcom/autoxing/delivery/util/KeyboardCover$1;->this$0:Lcom/autoxing/delivery/util/KeyboardCover;

    invoke-static {v0}, Lcom/autoxing/delivery/util/KeyboardCover;->-$$Nest$mpossiblyResizeChildOfContent(Lcom/autoxing/delivery/util/KeyboardCover;)V

    return-void
.end method
