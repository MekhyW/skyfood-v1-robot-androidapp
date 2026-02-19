.class public Lcom/reglink/views/BannerLayout;
.super Lcom/reglink/views/PageLayout;
.source "BannerLayout.java"


# static fields
.field private static final MSG_AUTO_SCROLL:I = 0x1

.field private static final MSG_SCROLL_END_FOR_CHILD_2:I = 0x2


# instance fields
.field private AUTO_SCROLL_INTERVAL:I

.field final H:Landroid/os/Handler;

.field private paused:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 36
    invoke-direct {p0, p1, v0}, Lcom/reglink/views/BannerLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 40
    invoke-direct {p0, p1, p2, v0}, Lcom/reglink/views/BannerLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 44
    invoke-direct {p0, p1, p2, p3}, Lcom/reglink/views/PageLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/16 p1, 0xfa0

    .line 13
    iput p1, p0, Lcom/reglink/views/BannerLayout;->AUTO_SCROLL_INTERVAL:I

    const/4 p1, 0x0

    .line 17
    iput-boolean p1, p0, Lcom/reglink/views/BannerLayout;->paused:Z

    .line 19
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    new-instance p3, Lcom/reglink/views/BannerLayout$1;

    invoke-direct {p3, p0}, Lcom/reglink/views/BannerLayout$1;-><init>(Lcom/reglink/views/BannerLayout;)V

    invoke-direct {p1, p2, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object p1, p0, Lcom/reglink/views/BannerLayout;->H:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/reglink/views/BannerLayout;)I
    .locals 0

    .line 11
    iget p0, p0, Lcom/reglink/views/BannerLayout;->AUTO_SCROLL_INTERVAL:I

    return p0
.end method

.method private resetAutoScrollTimer()V
    .locals 4

    .line 48
    iget-object v0, p0, Lcom/reglink/views/BannerLayout;->H:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 49
    iget-object v0, p0, Lcom/reglink/views/BannerLayout;->H:Landroid/os/Handler;

    iget v2, p0, Lcom/reglink/views/BannerLayout;->AUTO_SCROLL_INTERVAL:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 4

    .line 115
    invoke-super {p0}, Lcom/reglink/views/PageLayout;->onAttachedToWindow()V

    .line 116
    iget-object v0, p0, Lcom/reglink/views/BannerLayout;->H:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 117
    iget-object v0, p0, Lcom/reglink/views/BannerLayout;->H:Landroid/os/Handler;

    iget v2, p0, Lcom/reglink/views/BannerLayout;->AUTO_SCROLL_INTERVAL:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 109
    invoke-super {p0}, Lcom/reglink/views/PageLayout;->onDetachedFromWindow()V

    .line 110
    iget-object v0, p0, Lcom/reglink/views/BannerLayout;->H:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method protected onScrollEnd()V
    .locals 4

    .line 81
    invoke-virtual {p0}, Lcom/reglink/views/BannerLayout;->getCurrentPage()I

    move-result v0

    .line 82
    invoke-virtual {p0}, Lcom/reglink/views/BannerLayout;->getTotalPage()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .line 84
    invoke-virtual {p0}, Lcom/reglink/views/BannerLayout;->getTotalPage()I

    move-result v2

    const/4 v3, 0x2

    if-le v2, v3, :cond_1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 86
    invoke-virtual {p0, v1}, Lcom/reglink/views/BannerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 87
    invoke-virtual {p0, v1}, Lcom/reglink/views/BannerLayout;->removeViewAt(I)V

    .line 88
    invoke-virtual {p0, v3, v2}, Lcom/reglink/views/BannerLayout;->addView(Landroid/view/View;I)V

    add-int/lit8 v0, v0, 0x1

    .line 90
    invoke-virtual {p0, v0, v2}, Lcom/reglink/views/BannerLayout;->setPage(IZ)V

    goto :goto_0

    :cond_0
    if-ne v1, v0, :cond_2

    .line 92
    invoke-virtual {p0, v2}, Lcom/reglink/views/BannerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 93
    invoke-virtual {p0, v2}, Lcom/reglink/views/BannerLayout;->removeViewAt(I)V

    .line 94
    invoke-virtual {p0, v3, v1}, Lcom/reglink/views/BannerLayout;->addView(Landroid/view/View;I)V

    add-int/lit8 v0, v0, -0x1

    .line 96
    invoke-virtual {p0, v0, v2}, Lcom/reglink/views/BannerLayout;->setPage(IZ)V

    goto :goto_0

    .line 100
    :cond_1
    iget-object v0, p0, Lcom/reglink/views/BannerLayout;->H:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 101
    iget-object v0, p0, Lcom/reglink/views/BannerLayout;->H:Landroid/os/Handler;

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 104
    :cond_2
    :goto_0
    invoke-direct {p0}, Lcom/reglink/views/BannerLayout;->resetAutoScrollTimer()V

    return-void
.end method

.method protected onScrollStart()V
    .locals 0

    .line 70
    invoke-direct {p0}, Lcom/reglink/views/BannerLayout;->resetAutoScrollTimer()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 75
    invoke-direct {p0}, Lcom/reglink/views/BannerLayout;->resetAutoScrollTimer()V

    .line 76
    invoke-super {p0, p1}, Lcom/reglink/views/PageLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public pauseScroll()V
    .locals 2

    const/4 v0, 0x1

    .line 59
    iput-boolean v0, p0, Lcom/reglink/views/BannerLayout;->paused:Z

    .line 60
    iget-object v1, p0, Lcom/reglink/views/BannerLayout;->H:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method public setAutoInterval(I)V
    .locals 4

    .line 53
    iput p1, p0, Lcom/reglink/views/BannerLayout;->AUTO_SCROLL_INTERVAL:I

    .line 54
    iget-object v0, p0, Lcom/reglink/views/BannerLayout;->H:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 55
    iget-object v0, p0, Lcom/reglink/views/BannerLayout;->H:Landroid/os/Handler;

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public startScroll()V
    .locals 4

    const/4 v0, 0x0

    .line 64
    iput-boolean v0, p0, Lcom/reglink/views/BannerLayout;->paused:Z

    .line 65
    iget-object v0, p0, Lcom/reglink/views/BannerLayout;->H:Landroid/os/Handler;

    iget v1, p0, Lcom/reglink/views/BannerLayout;->AUTO_SCROLL_INTERVAL:I

    int-to-long v1, v1

    const/4 v3, 0x1

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method
