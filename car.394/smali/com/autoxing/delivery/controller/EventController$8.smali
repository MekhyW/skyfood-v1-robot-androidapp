.class Lcom/autoxing/delivery/controller/EventController$8;
.super Ljava/lang/Object;
.source "EventController.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


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

    .line 123
    iput-object p1, p0, Lcom/autoxing/delivery/controller/EventController$8;->this$0:Lcom/autoxing/delivery/controller/EventController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 126
    iget-object p1, p0, Lcom/autoxing/delivery/controller/EventController$8;->this$0:Lcom/autoxing/delivery/controller/EventController;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/autoxing/delivery/controller/EventController;->-$$Nest$mcallOnTouchChanged(Lcom/autoxing/delivery/controller/EventController;I)V

    const/4 p1, 0x0

    return p1
.end method
