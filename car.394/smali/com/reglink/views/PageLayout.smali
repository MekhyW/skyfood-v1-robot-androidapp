.class public Lcom/reglink/views/PageLayout;
.super Landroid/view/ViewGroup;
.source "PageLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/reglink/views/PageLayout$ScrollInterpolator;,
        Lcom/reglink/views/PageLayout$OnPageChangerListener;,
        Lcom/reglink/views/PageLayout$SlideGroupParams;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "PageLayout"


# instance fields
.field private currentPage:I

.field isBeingDragged:Z

.field isDragAutoScroll:Z

.field lastFocusX:F

.field lastMotionDownX:F

.field private mScroller:Landroid/widget/Scroller;

.field measurePageIndex:I

.field public onPageChangerListener:Lcom/reglink/views/PageLayout$OnPageChangerListener;

.field pageHeight:I

.field pageWidth:I

.field scrolling:Z

.field private totalPage:I

.field totalWidth:I

.field private touchSlop:I

.field private userScrollEnable:Z

.field velocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 30
    invoke-direct {p0, p1, v0}, Lcom/reglink/views/PageLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 34
    invoke-direct {p0, p1, p2, v0}, Lcom/reglink/views/PageLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 39
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 24
    iput-boolean p1, p0, Lcom/reglink/views/PageLayout;->scrolling:Z

    const/4 p2, 0x1

    .line 27
    iput-boolean p2, p0, Lcom/reglink/views/PageLayout;->userScrollEnable:Z

    .line 46
    iput p1, p0, Lcom/reglink/views/PageLayout;->measurePageIndex:I

    .line 155
    iput-boolean p1, p0, Lcom/reglink/views/PageLayout;->isDragAutoScroll:Z

    .line 160
    iput-boolean p1, p0, Lcom/reglink/views/PageLayout;->isBeingDragged:Z

    .line 41
    new-instance p1, Landroid/widget/Scroller;

    invoke-virtual {p0}, Lcom/reglink/views/PageLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    new-instance p3, Lcom/reglink/views/PageLayout$ScrollInterpolator;

    invoke-direct {p3}, Lcom/reglink/views/PageLayout$ScrollInterpolator;-><init>()V

    invoke-direct {p1, p2, p3}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object p1, p0, Lcom/reglink/views/PageLayout;->mScroller:Landroid/widget/Scroller;

    .line 42
    invoke-static {}, Landroid/view/ViewConfiguration;->getTouchSlop()I

    move-result p1

    iput p1, p0, Lcom/reglink/views/PageLayout;->touchSlop:I

    return-void
.end method

.method private computeScrollOffset()Z
    .locals 1

    .line 380
    iget-object v0, p0, Lcom/reglink/views/PageLayout;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    return v0
.end method

.method private initAndResetVelocityTracker()Landroid/view/VelocityTracker;
    .locals 1

    .line 174
    iget-object v0, p0, Lcom/reglink/views/PageLayout;->velocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 175
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/reglink/views/PageLayout;->velocityTracker:Landroid/view/VelocityTracker;

    .line 177
    :cond_0
    iget-object v0, p0, Lcom/reglink/views/PageLayout;->velocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    .line 178
    iget-object v0, p0, Lcom/reglink/views/PageLayout;->velocityTracker:Landroid/view/VelocityTracker;

    return-object v0
.end method

.method private nextPage(F)V
    .locals 3

    .line 351
    iget v0, p0, Lcom/reglink/views/PageLayout;->currentPage:I

    .line 352
    iget v1, p0, Lcom/reglink/views/PageLayout;->totalPage:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    if-ge v0, v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    .line 355
    :cond_0
    invoke-direct {p0, v0, p1, v2}, Lcom/reglink/views/PageLayout;->setPage(IFZ)V

    return-void
.end method

.method private prevPage(F)V
    .locals 2

    .line 343
    iget v0, p0, Lcom/reglink/views/PageLayout;->currentPage:I

    if-lez v0, :cond_0

    add-int/lit8 v0, v0, -0x1

    :cond_0
    const/4 v1, 0x1

    .line 347
    invoke-direct {p0, v0, p1, v1}, Lcom/reglink/views/PageLayout;->setPage(IFZ)V

    return-void
.end method

.method private recycleVelocityTracker()V
    .locals 1

    .line 182
    iget-object v0, p0, Lcom/reglink/views/PageLayout;->velocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 183
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    :cond_0
    const/4 v0, 0x0

    .line 185
    iput-object v0, p0, Lcom/reglink/views/PageLayout;->velocityTracker:Landroid/view/VelocityTracker;

    return-void
.end method

.method private scrollBy(I)V
    .locals 1

    const/4 v0, 0x0

    .line 384
    invoke-virtual {p0, p1, v0}, Lcom/reglink/views/PageLayout;->scrollBy(II)V

    return-void
.end method

.method private scrollTo()V
    .locals 2

    .line 388
    iget-object v0, p0, Lcom/reglink/views/PageLayout;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrX()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/reglink/views/PageLayout;->scrollTo(II)V

    return-void
.end method

.method private setPage(IFZ)V
    .locals 7

    .line 359
    invoke-virtual {p0, p1}, Lcom/reglink/views/PageLayout;->notifyPageChanged(I)V

    .line 360
    iget v0, p0, Lcom/reglink/views/PageLayout;->pageWidth:I

    mul-int/2addr p1, v0

    invoke-virtual {p0}, Lcom/reglink/views/PageLayout;->getScrollX()I

    move-result v0

    sub-int v4, p1, v0

    .line 361
    iget-object p1, p0, Lcom/reglink/views/PageLayout;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {p1}, Landroid/widget/Scroller;->isFinished()Z

    move-result p1

    if-nez p1, :cond_0

    .line 362
    iget-object p1, p0, Lcom/reglink/views/PageLayout;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {p1}, Landroid/widget/Scroller;->abortAnimation()V

    :cond_0
    if-eqz p3, :cond_2

    const/4 p1, 0x0

    cmpl-float p1, p2, p1

    if-eqz p1, :cond_1

    int-to-float p1, v4

    div-float/2addr p1, p2

    .line 367
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const/high16 p2, 0x447a0000    # 1000.0f

    mul-float/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    mul-int/lit8 p1, p1, 0x4

    goto :goto_0

    .line 369
    :cond_1
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result p1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    move v6, p1

    .line 374
    iget-object v1, p0, Lcom/reglink/views/PageLayout;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {p0}, Lcom/reglink/views/PageLayout;->getScrollX()I

    move-result v2

    const/4 v3, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 375
    invoke-virtual {p0}, Lcom/reglink/views/PageLayout;->postInvalidate()V

    return-void
.end method


# virtual methods
.method public computeScroll()V
    .locals 2

    .line 243
    invoke-direct {p0}, Lcom/reglink/views/PageLayout;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 244
    invoke-direct {p0}, Lcom/reglink/views/PageLayout;->scrollTo()V

    .line 245
    invoke-virtual {p0}, Lcom/reglink/views/PageLayout;->postInvalidate()V

    .line 246
    iget-boolean v0, p0, Lcom/reglink/views/PageLayout;->scrolling:Z

    if-nez v0, :cond_0

    .line 247
    invoke-virtual {p0}, Lcom/reglink/views/PageLayout;->onScrollStart()V

    :cond_0
    const/4 v0, 0x1

    .line 249
    iput-boolean v0, p0, Lcom/reglink/views/PageLayout;->scrolling:Z

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 251
    iput-boolean v0, p0, Lcom/reglink/views/PageLayout;->isDragAutoScroll:Z

    .line 252
    iget-boolean v1, p0, Lcom/reglink/views/PageLayout;->scrolling:Z

    if-eqz v1, :cond_2

    .line 253
    invoke-virtual {p0}, Lcom/reglink/views/PageLayout;->onScrollEnd()V

    .line 255
    :cond_2
    iput-boolean v0, p0, Lcom/reglink/views/PageLayout;->scrolling:Z

    :goto_0
    return-void
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .line 132
    new-instance v0, Lcom/reglink/views/PageLayout$SlideGroupParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Lcom/reglink/views/PageLayout$SlideGroupParams;-><init>(II)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .line 127
    new-instance v0, Lcom/reglink/views/PageLayout$SlideGroupParams;

    invoke-virtual {p0}, Lcom/reglink/views/PageLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/reglink/views/PageLayout$SlideGroupParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .line 139
    new-instance v0, Lcom/reglink/views/PageLayout$SlideGroupParams;

    invoke-direct {v0, p1}, Lcom/reglink/views/PageLayout$SlideGroupParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public getCurrentPage()I
    .locals 1

    .line 104
    iget v0, p0, Lcom/reglink/views/PageLayout;->currentPage:I

    return v0
.end method

.method public getTotalPage()I
    .locals 1

    .line 100
    iget v0, p0, Lcom/reglink/views/PageLayout;->totalPage:I

    return v0
.end method

.method public isUserScrollEnable()Z
    .locals 1

    .line 264
    iget-boolean v0, p0, Lcom/reglink/views/PageLayout;->userScrollEnable:Z

    return v0
.end method

.method public nextPage()V
    .locals 1

    const/4 v0, 0x0

    .line 339
    invoke-direct {p0, v0}, Lcom/reglink/views/PageLayout;->nextPage(F)V

    return-void
.end method

.method notifyPageChanged(I)V
    .locals 3

    if-ltz p1, :cond_1

    .line 87
    iget v0, p0, Lcom/reglink/views/PageLayout;->totalPage:I

    if-gt p1, v0, :cond_1

    .line 90
    iget v0, p0, Lcom/reglink/views/PageLayout;->currentPage:I

    if-eq p1, v0, :cond_0

    .line 91
    iput p1, p0, Lcom/reglink/views/PageLayout;->currentPage:I

    .line 93
    iget-object v0, p0, Lcom/reglink/views/PageLayout;->onPageChangerListener:Lcom/reglink/views/PageLayout$OnPageChangerListener;

    if-eqz v0, :cond_0

    .line 94
    invoke-interface {v0, p1}, Lcom/reglink/views/PageLayout$OnPageChangerListener;->onPageChange(I)V

    :cond_0
    return-void

    .line 88
    :cond_1
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "page "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " > "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget v1, p0, Lcom/reglink/views/PageLayout;->totalPage:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 192
    iget-boolean v0, p0, Lcom/reglink/views/PageLayout;->userScrollEnable:Z

    if-nez v0, :cond_0

    .line 193
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 195
    :cond_0
    iget-boolean v0, p0, Lcom/reglink/views/PageLayout;->isBeingDragged:Z

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/reglink/views/PageLayout;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-ne v0, v1, :cond_2

    return v2

    .line 199
    :cond_2
    iget-boolean v0, p0, Lcom/reglink/views/PageLayout;->isBeingDragged:Z

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-ne v0, v1, :cond_3

    return v2

    .line 202
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v3, 0x0

    if-eqz v0, :cond_8

    if-eq v0, v2, :cond_7

    if-eq v0, v1, :cond_4

    const/4 p1, 0x3

    if-eq v0, p1, :cond_7

    goto :goto_0

    .line 215
    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 216
    iget v1, p0, Lcom/reglink/views/PageLayout;->lastMotionDownX:F

    sub-float/2addr v1, v0

    .line 217
    iget-boolean v0, p0, Lcom/reglink/views/PageLayout;->isBeingDragged:Z

    if-nez v0, :cond_6

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Lcom/reglink/views/PageLayout;->touchSlop:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_6

    .line 218
    invoke-virtual {p0}, Lcom/reglink/views/PageLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 220
    invoke-interface {v0, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 222
    :cond_5
    iput-boolean v2, p0, Lcom/reglink/views/PageLayout;->isBeingDragged:Z

    .line 224
    :cond_6
    iget-boolean v0, p0, Lcom/reglink/views/PageLayout;->isBeingDragged:Z

    if-eqz v0, :cond_9

    .line 225
    invoke-direct {p0}, Lcom/reglink/views/PageLayout;->initAndResetVelocityTracker()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/reglink/views/PageLayout;->velocityTracker:Landroid/view/VelocityTracker;

    .line 226
    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 211
    :cond_7
    invoke-direct {p0}, Lcom/reglink/views/PageLayout;->recycleVelocityTracker()V

    .line 212
    iput-boolean v3, p0, Lcom/reglink/views/PageLayout;->isBeingDragged:Z

    goto :goto_0

    .line 204
    :cond_8
    iput-boolean v3, p0, Lcom/reglink/views/PageLayout;->isBeingDragged:Z

    .line 205
    invoke-direct {p0}, Lcom/reglink/views/PageLayout;->initAndResetVelocityTracker()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/reglink/views/PageLayout;->velocityTracker:Landroid/view/VelocityTracker;

    .line 206
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/reglink/views/PageLayout;->lastMotionDownX:F

    .line 207
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    iput p1, p0, Lcom/reglink/views/PageLayout;->lastFocusX:F

    .line 230
    :cond_9
    :goto_0
    iget-boolean p1, p0, Lcom/reglink/views/PageLayout;->isBeingDragged:Z

    return p1
.end method

.method protected onLayout(ZIIII)V
    .locals 4

    .line 76
    invoke-virtual {p0}, Lcom/reglink/views/PageLayout;->getChildCount()I

    move-result p1

    const/4 p2, 0x0

    :goto_0
    if-ge p2, p1, :cond_0

    .line 78
    invoke-virtual {p0, p2}, Lcom/reglink/views/PageLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p3

    .line 79
    invoke-virtual {p3}, Landroid/view/View;->getMeasuredWidth()I

    move-result p4

    .line 80
    invoke-virtual {p3}, Landroid/view/View;->getMeasuredHeight()I

    move-result p5

    .line 81
    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/reglink/views/PageLayout$SlideGroupParams;

    .line 82
    iget v1, v0, Lcom/reglink/views/PageLayout$SlideGroupParams;->left:I

    iget v2, v0, Lcom/reglink/views/PageLayout$SlideGroupParams;->top:I

    iget v3, v0, Lcom/reglink/views/PageLayout$SlideGroupParams;->left:I

    add-int/2addr v3, p4

    iget p4, v0, Lcom/reglink/views/PageLayout$SlideGroupParams;->top:I

    add-int/2addr p4, p5

    invoke-virtual {p3, v1, v2, v3, p4}, Landroid/view/View;->layout(IIII)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 5

    .line 50
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    iput v0, p0, Lcom/reglink/views/PageLayout;->pageWidth:I

    .line 51
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    iput v0, p0, Lcom/reglink/views/PageLayout;->pageHeight:I

    .line 52
    invoke-virtual {p0}, Lcom/reglink/views/PageLayout;->getChildCount()I

    move-result v0

    .line 53
    iput v0, p0, Lcom/reglink/views/PageLayout;->totalPage:I

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 56
    invoke-virtual {p0, v1}, Lcom/reglink/views/PageLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 57
    invoke-virtual {v2, v1}, Landroid/view/View;->setId(I)V

    .line 58
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 59
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/reglink/views/PageLayout$SlideGroupParams;

    .line 60
    iget v4, p0, Lcom/reglink/views/PageLayout;->pageWidth:I

    iput v4, v3, Lcom/reglink/views/PageLayout$SlideGroupParams;->width:I

    .line 61
    iget v4, p0, Lcom/reglink/views/PageLayout;->pageHeight:I

    iput v4, v3, Lcom/reglink/views/PageLayout$SlideGroupParams;->height:I

    .line 62
    invoke-virtual {v2, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 63
    invoke-virtual {p0, v2, p1, p2}, Lcom/reglink/views/PageLayout;->measureChild(Landroid/view/View;II)V

    .line 65
    iput v1, p0, Lcom/reglink/views/PageLayout;->measurePageIndex:I

    .line 67
    iget v2, p0, Lcom/reglink/views/PageLayout;->pageWidth:I

    mul-int/2addr v2, v1

    iput v2, v3, Lcom/reglink/views/PageLayout$SlideGroupParams;->left:I

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 70
    :cond_0
    iget v0, p0, Lcom/reglink/views/PageLayout;->totalPage:I

    iget v1, p0, Lcom/reglink/views/PageLayout;->pageHeight:I

    mul-int/2addr v0, v1

    iput v0, p0, Lcom/reglink/views/PageLayout;->totalWidth:I

    .line 71
    invoke-static {v0, p1}, Lcom/reglink/views/PageLayout;->resolveSize(II)I

    move-result p1

    iget v0, p0, Lcom/reglink/views/PageLayout;->pageHeight:I

    invoke-static {v0, p2}, Lcom/reglink/views/PageLayout;->resolveSize(II)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/reglink/views/PageLayout;->setMeasuredDimension(II)V

    return-void
.end method

.method protected onScrollEnd()V
    .locals 0

    return-void
.end method

.method protected onScrollStart()V
    .locals 0

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    .line 273
    iget-boolean v0, p0, Lcom/reglink/views/PageLayout;->userScrollEnable:Z

    if-nez v0, :cond_0

    .line 274
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 278
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_a

    const/4 v2, 0x2

    if-eq v0, v1, :cond_4

    if-eq v0, v2, :cond_1

    const/4 v3, 0x3

    if-eq v0, v3, :cond_4

    goto/16 :goto_2

    .line 313
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 314
    iget-object v2, p0, Lcom/reglink/views/PageLayout;->velocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v2, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 315
    iget-boolean p1, p0, Lcom/reglink/views/PageLayout;->isBeingDragged:Z

    if-nez p1, :cond_2

    .line 316
    iget p1, p0, Lcom/reglink/views/PageLayout;->lastMotionDownX:F

    sub-float p1, v0, p1

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget v2, p0, Lcom/reglink/views/PageLayout;->touchSlop:I

    int-to-float v2, v2

    cmpl-float p1, p1, v2

    if-lez p1, :cond_2

    .line 317
    iput-boolean v1, p0, Lcom/reglink/views/PageLayout;->isBeingDragged:Z

    .line 318
    invoke-virtual {p0}, Lcom/reglink/views/PageLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 320
    invoke-interface {p1, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 324
    :cond_2
    iget-boolean p1, p0, Lcom/reglink/views/PageLayout;->isBeingDragged:Z

    if-eqz p1, :cond_3

    .line 325
    iget p1, p0, Lcom/reglink/views/PageLayout;->lastFocusX:F

    float-to-int p1, p1

    int-to-float p1, p1

    sub-float/2addr p1, v0

    float-to-int p1, p1

    invoke-direct {p0, p1}, Lcom/reglink/views/PageLayout;->scrollBy(I)V

    .line 327
    :cond_3
    iput v0, p0, Lcom/reglink/views/PageLayout;->lastFocusX:F

    goto/16 :goto_2

    :cond_4
    const/4 v0, 0x0

    .line 281
    iput-boolean v0, p0, Lcom/reglink/views/PageLayout;->isBeingDragged:Z

    .line 282
    iget-object v3, p0, Lcom/reglink/views/PageLayout;->velocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 283
    iget-object v3, p0, Lcom/reglink/views/PageLayout;->velocityTracker:Landroid/view/VelocityTracker;

    const/16 v4, 0x3e8

    invoke-virtual {v3, v4}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 284
    iget-object v3, p0, Lcom/reglink/views/PageLayout;->velocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v3

    float-to-int v3, v3

    .line 287
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v4

    const/16 v5, 0x5dc

    if-le v4, v5, :cond_6

    .line 289
    iget v0, p0, Lcom/reglink/views/PageLayout;->lastMotionDownX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    cmpl-float v0, v0, v4

    if-lez v0, :cond_5

    int-to-float v0, v3

    .line 290
    invoke-direct {p0, v0}, Lcom/reglink/views/PageLayout;->nextPage(F)V

    goto :goto_0

    :cond_5
    int-to-float v0, v3

    .line 292
    invoke-direct {p0, v0}, Lcom/reglink/views/PageLayout;->prevPage(F)V

    :goto_0
    move v0, v1

    :cond_6
    if-nez v0, :cond_9

    .line 297
    iget v0, p0, Lcom/reglink/views/PageLayout;->lastMotionDownX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    sub-float/2addr v0, v3

    iget v3, p0, Lcom/reglink/views/PageLayout;->pageWidth:I

    div-int/2addr v3, v2

    int-to-float v3, v3

    cmpl-float v0, v0, v3

    if-lez v0, :cond_7

    .line 298
    invoke-virtual {p0}, Lcom/reglink/views/PageLayout;->nextPage()V

    goto :goto_1

    .line 299
    :cond_7
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    iget v0, p0, Lcom/reglink/views/PageLayout;->lastMotionDownX:F

    sub-float/2addr p1, v0

    iget v0, p0, Lcom/reglink/views/PageLayout;->pageWidth:I

    div-int/2addr v0, v2

    int-to-float v0, v0

    cmpl-float p1, p1, v0

    if-lez p1, :cond_8

    .line 300
    invoke-virtual {p0}, Lcom/reglink/views/PageLayout;->prevPage()V

    goto :goto_1

    .line 302
    :cond_8
    invoke-virtual {p0}, Lcom/reglink/views/PageLayout;->getCurrentPage()I

    move-result p1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/reglink/views/PageLayout;->setPage(IFZ)V

    .line 305
    :cond_9
    :goto_1
    invoke-direct {p0}, Lcom/reglink/views/PageLayout;->recycleVelocityTracker()V

    goto :goto_2

    .line 308
    :cond_a
    invoke-direct {p0}, Lcom/reglink/views/PageLayout;->initAndResetVelocityTracker()Landroid/view/VelocityTracker;

    .line 309
    iget-object p1, p0, Lcom/reglink/views/PageLayout;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {p1}, Landroid/widget/Scroller;->isFinished()Z

    move-result p1

    if-nez p1, :cond_b

    .line 310
    iget-object p1, p0, Lcom/reglink/views/PageLayout;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {p1}, Landroid/widget/Scroller;->abortAnimation()V

    :cond_b
    :goto_2
    return v1
.end method

.method public prevPage()V
    .locals 1

    const/4 v0, 0x0

    .line 335
    invoke-direct {p0, v0}, Lcom/reglink/views/PageLayout;->prevPage(F)V

    return-void
.end method

.method public setOnPageChangerListener(Lcom/reglink/views/PageLayout$OnPageChangerListener;)V
    .locals 0

    .line 150
    iput-object p1, p0, Lcom/reglink/views/PageLayout;->onPageChangerListener:Lcom/reglink/views/PageLayout$OnPageChangerListener;

    return-void
.end method

.method public setPage(IZ)V
    .locals 1

    const/4 v0, 0x0

    .line 268
    invoke-direct {p0, p1, v0, p2}, Lcom/reglink/views/PageLayout;->setPage(IFZ)V

    return-void
.end method

.method public setUserScrollEnable(Z)V
    .locals 0

    .line 260
    iput-boolean p1, p0, Lcom/reglink/views/PageLayout;->userScrollEnable:Z

    return-void
.end method
