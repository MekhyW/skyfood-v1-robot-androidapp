.class public Lcom/autoxing/delivery/util/KeyboardCover;
.super Ljava/lang/Object;
.source "KeyboardCover.java"


# instance fields
.field private activity:Landroid/app/Activity;

.field private contentHeight:I

.field private frameLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

.field private isfirst:Z

.field private mChildOfContent:Landroid/view/View;

.field private statusBarHeight:I

.field private usableHeightPrevious:I


# direct methods
.method static bridge synthetic -$$Nest$fgetisfirst(Lcom/autoxing/delivery/util/KeyboardCover;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/autoxing/delivery/util/KeyboardCover;->isfirst:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmChildOfContent(Lcom/autoxing/delivery/util/KeyboardCover;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/autoxing/delivery/util/KeyboardCover;->mChildOfContent:Landroid/view/View;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputcontentHeight(Lcom/autoxing/delivery/util/KeyboardCover;I)V
    .locals 0

    iput p1, p0, Lcom/autoxing/delivery/util/KeyboardCover;->contentHeight:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputisfirst(Lcom/autoxing/delivery/util/KeyboardCover;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/autoxing/delivery/util/KeyboardCover;->isfirst:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$mpossiblyResizeChildOfContent(Lcom/autoxing/delivery/util/KeyboardCover;)V
    .locals 0

    invoke-direct {p0}, Lcom/autoxing/delivery/util/KeyboardCover;->possiblyResizeChildOfContent()V

    return-void
.end method

.method private constructor <init>(Landroid/app/Activity;)V
    .locals 4

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 19
    iput-boolean v0, p0, Lcom/autoxing/delivery/util/KeyboardCover;->isfirst:Z

    .line 25
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "dimen"

    const-string v2, "android"

    const-string v3, "status_bar_height"

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 26
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/autoxing/delivery/util/KeyboardCover;->statusBarHeight:I

    .line 27
    iput-object p1, p0, Lcom/autoxing/delivery/util/KeyboardCover;->activity:Landroid/app/Activity;

    const v0, 0x1020002

    .line 28
    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    const/4 v0, 0x0

    .line 29
    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/autoxing/delivery/util/KeyboardCover;->mChildOfContent:Landroid/view/View;

    .line 31
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    new-instance v0, Lcom/autoxing/delivery/util/KeyboardCover$1;

    invoke-direct {v0, p0}, Lcom/autoxing/delivery/util/KeyboardCover$1;-><init>(Lcom/autoxing/delivery/util/KeyboardCover;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 40
    iget-object p1, p0, Lcom/autoxing/delivery/util/KeyboardCover;->mChildOfContent:Landroid/view/View;

    .line 41
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    iput-object p1, p0, Lcom/autoxing/delivery/util/KeyboardCover;->frameLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

    return-void
.end method

.method public static assistActivity(Landroid/app/Activity;)V
    .locals 1

    .line 12
    new-instance v0, Lcom/autoxing/delivery/util/KeyboardCover;

    invoke-direct {v0, p0}, Lcom/autoxing/delivery/util/KeyboardCover;-><init>(Landroid/app/Activity;)V

    return-void
.end method

.method private computeUsableHeight()I
    .locals 2

    .line 72
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 73
    iget-object v1, p0, Lcom/autoxing/delivery/util/KeyboardCover;->mChildOfContent:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 74
    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    iget v0, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v0

    return v1
.end method

.method private possiblyResizeChildOfContent()V
    .locals 4

    .line 46
    invoke-direct {p0}, Lcom/autoxing/delivery/util/KeyboardCover;->computeUsableHeight()I

    move-result v0

    .line 48
    iget v1, p0, Lcom/autoxing/delivery/util/KeyboardCover;->usableHeightPrevious:I

    if-eq v0, v1, :cond_1

    .line 50
    iget-object v1, p0, Lcom/autoxing/delivery/util/KeyboardCover;->mChildOfContent:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    sub-int v2, v1, v0

    .line 52
    div-int/lit8 v3, v1, 0x4

    if-le v2, v3, :cond_0

    .line 56
    iget-object v3, p0, Lcom/autoxing/delivery/util/KeyboardCover;->frameLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/autoxing/delivery/util/KeyboardCover;->statusBarHeight:I

    add-int/2addr v1, v2

    iput v1, v3, Landroid/widget/FrameLayout$LayoutParams;->height:I

    goto :goto_0

    .line 61
    :cond_0
    iget-object v1, p0, Lcom/autoxing/delivery/util/KeyboardCover;->frameLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

    iget v2, p0, Lcom/autoxing/delivery/util/KeyboardCover;->contentHeight:I

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 63
    :goto_0
    iget-object v1, p0, Lcom/autoxing/delivery/util/KeyboardCover;->mChildOfContent:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->requestLayout()V

    .line 64
    iput v0, p0, Lcom/autoxing/delivery/util/KeyboardCover;->usableHeightPrevious:I

    :cond_1
    return-void
.end method
