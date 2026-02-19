.class Lcom/autoxing/delivery/controller/EventController$5;
.super Ljava/lang/Object;
.source "EventController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    .line 100
    iput-object p1, p0, Lcom/autoxing/delivery/controller/EventController$5;->this$0:Lcom/autoxing/delivery/controller/EventController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 103
    iget-object p1, p0, Lcom/autoxing/delivery/controller/EventController$5;->this$0:Lcom/autoxing/delivery/controller/EventController;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/autoxing/delivery/controller/EventController;->-$$Nest$mcallOnTouchChanged(Lcom/autoxing/delivery/controller/EventController;I)V

    return-void
.end method
