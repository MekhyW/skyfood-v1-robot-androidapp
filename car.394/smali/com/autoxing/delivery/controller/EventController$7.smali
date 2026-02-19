.class Lcom/autoxing/delivery/controller/EventController$7;
.super Ljava/lang/Object;
.source "EventController.java"

# interfaces
.implements Landroid/view/View$OnHoverListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/autoxing/delivery/controller/EventController;->addTouchListener(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/autoxing/delivery/controller/EventController;


# direct methods
.method constructor <init>(Lcom/autoxing/delivery/controller/EventController;)V
    .locals 0

    .line 115
    iput-object p1, p0, Lcom/autoxing/delivery/controller/EventController$7;->this$0:Lcom/autoxing/delivery/controller/EventController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onHover(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 118
    iget-object p1, p0, Lcom/autoxing/delivery/controller/EventController$7;->this$0:Lcom/autoxing/delivery/controller/EventController;

    const/4 p2, 0x2

    invoke-static {p1, p2}, Lcom/autoxing/delivery/controller/EventController;->-$$Nest$mcallOnTouchChanged(Lcom/autoxing/delivery/controller/EventController;I)V

    const/4 p1, 0x0

    return p1
.end method
