.class Lcom/reglink/views/BannerLayout$1;
.super Ljava/lang/Object;
.source "BannerLayout.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/reglink/views/BannerLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/reglink/views/BannerLayout;


# direct methods
.method constructor <init>(Lcom/reglink/views/BannerLayout;)V
    .locals 0

    .line 19
    iput-object p1, p0, Lcom/reglink/views/BannerLayout$1;->this$0:Lcom/reglink/views/BannerLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 5

    .line 22
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v2, v0, :cond_0

    .line 23
    iget-object p1, p0, Lcom/reglink/views/BannerLayout$1;->this$0:Lcom/reglink/views/BannerLayout;

    invoke-virtual {p1}, Lcom/reglink/views/BannerLayout;->nextPage()V

    .line 24
    iget-object p1, p0, Lcom/reglink/views/BannerLayout$1;->this$0:Lcom/reglink/views/BannerLayout;

    iget-object p1, p1, Lcom/reglink/views/BannerLayout;->H:Landroid/os/Handler;

    iget-object v0, p0, Lcom/reglink/views/BannerLayout$1;->this$0:Lcom/reglink/views/BannerLayout;

    invoke-static {v0}, Lcom/reglink/views/BannerLayout;->access$000(Lcom/reglink/views/BannerLayout;)I

    move-result v0

    int-to-long v3, v0

    invoke-virtual {p1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    .line 25
    iget p1, p1, Landroid/os/Message;->what:I

    if-ne v0, p1, :cond_1

    .line 26
    iget-object p1, p0, Lcom/reglink/views/BannerLayout$1;->this$0:Lcom/reglink/views/BannerLayout;

    invoke-virtual {p1, v1}, Lcom/reglink/views/BannerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    .line 27
    iget-object v0, p0, Lcom/reglink/views/BannerLayout$1;->this$0:Lcom/reglink/views/BannerLayout;

    invoke-virtual {v0, v1}, Lcom/reglink/views/BannerLayout;->removeViewAt(I)V

    .line 28
    iget-object v0, p0, Lcom/reglink/views/BannerLayout$1;->this$0:Lcom/reglink/views/BannerLayout;

    invoke-virtual {v0, p1, v2}, Lcom/reglink/views/BannerLayout;->addView(Landroid/view/View;I)V

    .line 29
    iget-object p1, p0, Lcom/reglink/views/BannerLayout$1;->this$0:Lcom/reglink/views/BannerLayout;

    invoke-virtual {p1, v1}, Lcom/reglink/views/BannerLayout;->setScrollX(I)V

    :cond_1
    :goto_0
    return v1
.end method
