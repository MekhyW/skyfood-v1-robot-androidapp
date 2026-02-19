.class public Lcom/reglink/common/ViewUtil;
.super Ljava/lang/Object;
.source "ViewUtil.java"


# static fields
.field public static final MARGIN_BOTTOM:I = 0x3

.field public static final MARGIN_LEFT:I = 0x0

.field public static final MARGIN_RIGHT:I = 0x2

.field public static final MARGIN_TOP:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getMarginLayoutParams(Landroid/view/View;)Landroid/view/ViewGroup$MarginLayoutParams;
    .locals 1

    if-eqz p0, :cond_1

    .line 98
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    .line 99
    instance-of v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_0

    .line 102
    check-cast p0, Landroid/view/ViewGroup$MarginLayoutParams;

    return-object p0

    .line 100
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "view\'s layoutparams must be MarginLayoutParams!"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 96
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "view is null!"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static isPointInView(FFLandroid/view/View;)Z
    .locals 4

    if-eqz p2, :cond_1

    .line 23
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v0

    invoke-virtual {p2}, Landroid/view/View;->getTranslationY()F

    move-result v1

    float-to-int v1, v1

    add-int/2addr v0, v1

    .line 24
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v1

    invoke-virtual {p2}, Landroid/view/View;->getTranslationX()F

    move-result v2

    float-to-int v2, v2

    add-int/2addr v1, v2

    .line 27
    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v2

    .line 28
    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result p2

    int-to-float v3, v1

    cmpl-float v3, p0, v3

    if-ltz v3, :cond_0

    add-int/2addr v1, v2

    int-to-float v1, v1

    cmpg-float p0, p0, v1

    if-gtz p0, :cond_0

    int-to-float p0, v0

    cmpl-float p0, p1, p0

    if-ltz p0, :cond_0

    add-int/2addr v0, p2

    int-to-float p0, v0

    cmpg-float p0, p1, p0

    if-gtz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0

    .line 18
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "view is null!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static isRawPointInView(IILandroid/view/View;)Z
    .locals 1

    .line 37
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 38
    invoke-virtual {p2, v0}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 39
    invoke-virtual {v0, p0, p1}, Landroid/graphics/Rect;->contains(II)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static setLayoutHeight(Landroid/view/View;I)V
    .locals 1

    const/4 v0, 0x1

    .line 69
    invoke-static {p0, p1, v0}, Lcom/reglink/common/ViewUtil;->setLayoutHeight(Landroid/view/View;IZ)V

    return-void
.end method

.method public static setLayoutHeight(Landroid/view/View;IZ)V
    .locals 1

    if-eqz p0, :cond_1

    .line 62
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 63
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eqz p2, :cond_0

    .line 65
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    :cond_0
    return-void

    .line 60
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "view is null!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static setLayoutWidth(Landroid/view/View;I)V
    .locals 1

    const/4 v0, 0x1

    .line 56
    invoke-static {p0, p1, v0}, Lcom/reglink/common/ViewUtil;->setLayoutWidth(Landroid/view/View;IZ)V

    return-void
.end method

.method public static setLayoutWidth(Landroid/view/View;IZ)V
    .locals 1

    if-eqz p0, :cond_1

    .line 49
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 50
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-eqz p2, :cond_0

    .line 52
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    :cond_0
    return-void

    .line 47
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "view is null!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static setMargin(Landroid/view/View;II)V
    .locals 1

    const/4 v0, 0x1

    .line 92
    invoke-static {p0, p1, p2, v0}, Lcom/reglink/common/ViewUtil;->setMargin(Landroid/view/View;IIZ)V

    return-void
.end method

.method public static setMargin(Landroid/view/View;IIZ)V
    .locals 2

    .line 72
    invoke-static {p0}, Lcom/reglink/common/ViewUtil;->getMarginLayoutParams(Landroid/view/View;)Landroid/view/ViewGroup$MarginLayoutParams;

    move-result-object v0

    if-eqz p2, :cond_3

    const/4 v1, 0x1

    if-eq p2, v1, :cond_2

    const/4 v1, 0x2

    if-eq p2, v1, :cond_1

    const/4 v1, 0x3

    if-eq p2, v1, :cond_0

    goto :goto_0

    .line 84
    :cond_0
    iput p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    goto :goto_0

    .line 78
    :cond_1
    iput p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    goto :goto_0

    .line 81
    :cond_2
    iput p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    goto :goto_0

    .line 75
    :cond_3
    iput p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    :goto_0
    if-eqz p3, :cond_4

    .line 88
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    :cond_4
    return-void
.end method
