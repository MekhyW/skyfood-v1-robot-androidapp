.class public final Landroid/support/v4/widget/PopupWindowCompat;
.super Ljava/lang/Object;
.source "PopupWindowCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/widget/PopupWindowCompat$PopupWindowCompatApi23Impl;,
        Landroid/support/v4/widget/PopupWindowCompat$PopupWindowCompatApi21Impl;,
        Landroid/support/v4/widget/PopupWindowCompat$PopupWindowCompatApi19Impl;,
        Landroid/support/v4/widget/PopupWindowCompat$PopupWindowCompatBaseImpl;
    }
.end annotation


# static fields
.field static final IMPL:Landroid/support/v4/widget/PopupWindowCompat$PopupWindowCompatBaseImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 186
    new-instance v0, Landroid/support/v4/widget/PopupWindowCompat$PopupWindowCompatApi23Impl;

    invoke-direct {v0}, Landroid/support/v4/widget/PopupWindowCompat$PopupWindowCompatApi23Impl;-><init>()V

    sput-object v0, Landroid/support/v4/widget/PopupWindowCompat;->IMPL:Landroid/support/v4/widget/PopupWindowCompat$PopupWindowCompatBaseImpl;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 196
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getOverlapAnchor(Landroid/widget/PopupWindow;)Z
    .locals 1

    .line 238
    sget-object v0, Landroid/support/v4/widget/PopupWindowCompat;->IMPL:Landroid/support/v4/widget/PopupWindowCompat$PopupWindowCompatBaseImpl;

    invoke-virtual {v0, p0}, Landroid/support/v4/widget/PopupWindowCompat$PopupWindowCompatBaseImpl;->getOverlapAnchor(Landroid/widget/PopupWindow;)Z

    move-result p0

    return p0
.end method

.method public static getWindowLayoutType(Landroid/widget/PopupWindow;)I
    .locals 1

    .line 260
    sget-object v0, Landroid/support/v4/widget/PopupWindowCompat;->IMPL:Landroid/support/v4/widget/PopupWindowCompat$PopupWindowCompatBaseImpl;

    invoke-virtual {v0, p0}, Landroid/support/v4/widget/PopupWindowCompat$PopupWindowCompatBaseImpl;->getWindowLayoutType(Landroid/widget/PopupWindow;)I

    move-result p0

    return p0
.end method

.method public static setOverlapAnchor(Landroid/widget/PopupWindow;Z)V
    .locals 1

    .line 228
    sget-object v0, Landroid/support/v4/widget/PopupWindowCompat;->IMPL:Landroid/support/v4/widget/PopupWindowCompat$PopupWindowCompatBaseImpl;

    invoke-virtual {v0, p0, p1}, Landroid/support/v4/widget/PopupWindowCompat$PopupWindowCompatBaseImpl;->setOverlapAnchor(Landroid/widget/PopupWindow;Z)V

    return-void
.end method

.method public static setWindowLayoutType(Landroid/widget/PopupWindow;I)V
    .locals 1

    .line 251
    sget-object v0, Landroid/support/v4/widget/PopupWindowCompat;->IMPL:Landroid/support/v4/widget/PopupWindowCompat$PopupWindowCompatBaseImpl;

    invoke-virtual {v0, p0, p1}, Landroid/support/v4/widget/PopupWindowCompat$PopupWindowCompatBaseImpl;->setWindowLayoutType(Landroid/widget/PopupWindow;I)V

    return-void
.end method

.method public static showAsDropDown(Landroid/widget/PopupWindow;Landroid/view/View;III)V
    .locals 6

    .line 218
    sget-object v0, Landroid/support/v4/widget/PopupWindowCompat;->IMPL:Landroid/support/v4/widget/PopupWindowCompat$PopupWindowCompatBaseImpl;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/widget/PopupWindowCompat$PopupWindowCompatBaseImpl;->showAsDropDown(Landroid/widget/PopupWindow;Landroid/view/View;III)V

    return-void
.end method
