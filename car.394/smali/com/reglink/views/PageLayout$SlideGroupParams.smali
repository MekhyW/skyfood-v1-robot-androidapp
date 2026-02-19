.class public Lcom/reglink/views/PageLayout$SlideGroupParams;
.super Landroid/view/ViewGroup$MarginLayoutParams;
.source "PageLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/reglink/views/PageLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SlideGroupParams"
.end annotation


# instance fields
.field public left:I

.field public top:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 117
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    const/4 p1, 0x0

    .line 109
    iput p1, p0, Lcom/reglink/views/PageLayout$SlideGroupParams;->left:I

    .line 110
    iput p1, p0, Lcom/reglink/views/PageLayout$SlideGroupParams;->top:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 113
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 109
    iput p1, p0, Lcom/reglink/views/PageLayout$SlideGroupParams;->left:I

    .line 110
    iput p1, p0, Lcom/reglink/views/PageLayout$SlideGroupParams;->top:I

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .line 121
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 p1, 0x0

    .line 109
    iput p1, p0, Lcom/reglink/views/PageLayout$SlideGroupParams;->left:I

    .line 110
    iput p1, p0, Lcom/reglink/views/PageLayout$SlideGroupParams;->top:I

    return-void
.end method
