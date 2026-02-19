.class Lcom/autoxing/delivery/controller/EventController$6;
.super Ljava/lang/Object;
.source "EventController.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


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

    .line 107
    iput-object p1, p0, Lcom/autoxing/delivery/controller/EventController$6;->this$0:Lcom/autoxing/delivery/controller/EventController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 1

    .line 110
    iget-object p1, p0, Lcom/autoxing/delivery/controller/EventController$6;->this$0:Lcom/autoxing/delivery/controller/EventController;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/autoxing/delivery/controller/EventController;->-$$Nest$mcallOnTouchChanged(Lcom/autoxing/delivery/controller/EventController;I)V

    return v0
.end method
