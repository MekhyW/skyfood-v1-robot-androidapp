.class public Lcom/reglink/common/SystemBarTintManager;
.super Ljava/lang/Object;
.source "SystemBarTintManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/reglink/common/SystemBarTintManager$SystemBarConfig;
    }
.end annotation


# static fields
.field public static final DEFAULT_TINT_COLOR:I = -0x67000000

.field private static sNavBarOverride:Ljava/lang/String;


# instance fields
.field private final mConfig:Lcom/reglink/common/SystemBarTintManager$SystemBarConfig;

.field private mNavBarAvailable:Z

.field private mNavBarTintEnabled:Z

.field private mNavBarTintView:Landroid/view/View;

.field private mStatusBarAvailable:Z

.field private mStatusBarTintEnabled:Z

.field private mStatusBarTintView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "android.os.SystemProperties"

    .line 55
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "get"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    .line 56
    const-class v5, Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 57
    invoke-virtual {v1, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    new-array v2, v3, [Ljava/lang/Object;

    const-string v3, "qemu.hw.mainkeys"

    aput-object v3, v2, v6

    .line 58
    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    sput-object v1, Lcom/reglink/common/SystemBarTintManager;->sNavBarOverride:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 60
    :catchall_0
    sput-object v0, Lcom/reglink/common/SystemBarTintManager;->sNavBarOverride:Ljava/lang/String;

    :goto_0
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 6

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 93
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    const/4 v2, 0x2

    new-array v2, v2, [I

    .line 97
    fill-array-data v2, :array_0

    .line 99
    invoke-virtual {p1, v2}, Landroid/app/Activity;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v2

    const/4 v3, 0x0

    .line 101
    :try_start_0
    invoke-virtual {v2, v3, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    iput-boolean v4, p0, Lcom/reglink/common/SystemBarTintManager;->mStatusBarAvailable:Z

    const/4 v4, 0x1

    .line 102
    invoke-virtual {v2, v4, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    iput-boolean v5, p0, Lcom/reglink/common/SystemBarTintManager;->mNavBarAvailable:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 104
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 108
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const/high16 v2, 0x4000000

    .line 110
    iget v5, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/2addr v2, v5

    if-eqz v2, :cond_0

    .line 111
    iput-boolean v4, p0, Lcom/reglink/common/SystemBarTintManager;->mStatusBarAvailable:Z

    :cond_0
    const/high16 v2, 0x8000000

    .line 114
    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/2addr v0, v2

    if-eqz v0, :cond_1

    .line 115
    iput-boolean v4, p0, Lcom/reglink/common/SystemBarTintManager;->mNavBarAvailable:Z

    .line 119
    :cond_1
    new-instance v0, Lcom/reglink/common/SystemBarTintManager$SystemBarConfig;

    iget-boolean v2, p0, Lcom/reglink/common/SystemBarTintManager;->mStatusBarAvailable:Z

    iget-boolean v4, p0, Lcom/reglink/common/SystemBarTintManager;->mNavBarAvailable:Z

    const/4 v5, 0x0

    invoke-direct {v0, p1, v2, v4, v5}, Lcom/reglink/common/SystemBarTintManager$SystemBarConfig;-><init>(Landroid/app/Activity;ZZLcom/reglink/common/SystemBarTintManager$1;)V

    iput-object v0, p0, Lcom/reglink/common/SystemBarTintManager;->mConfig:Lcom/reglink/common/SystemBarTintManager$SystemBarConfig;

    .line 121
    invoke-virtual {v0}, Lcom/reglink/common/SystemBarTintManager$SystemBarConfig;->hasNavigtionBar()Z

    move-result v0

    if-nez v0, :cond_2

    .line 122
    iput-boolean v3, p0, Lcom/reglink/common/SystemBarTintManager;->mNavBarAvailable:Z

    .line 125
    :cond_2
    iget-boolean v0, p0, Lcom/reglink/common/SystemBarTintManager;->mStatusBarAvailable:Z

    if-eqz v0, :cond_3

    .line 126
    invoke-direct {p0, p1, v1}, Lcom/reglink/common/SystemBarTintManager;->setupStatusBarView(Landroid/content/Context;Landroid/view/ViewGroup;)V

    .line 128
    :cond_3
    iget-boolean v0, p0, Lcom/reglink/common/SystemBarTintManager;->mNavBarAvailable:Z

    if-eqz v0, :cond_4

    .line 129
    invoke-direct {p0, p1, v1}, Lcom/reglink/common/SystemBarTintManager;->setupNavBarView(Landroid/content/Context;Landroid/view/ViewGroup;)V

    :cond_4
    return-void

    :catchall_0
    move-exception p1

    .line 104
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    throw p1

    :array_0
    .array-data 4
        0x10103ef
        0x10103f0
    .end array-data
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .line 47
    sget-object v0, Lcom/reglink/common/SystemBarTintManager;->sNavBarOverride:Ljava/lang/String;

    return-object v0
.end method

.method private setupNavBarView(Landroid/content/Context;Landroid/view/ViewGroup;)V
    .locals 2

    .line 343
    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/reglink/common/SystemBarTintManager;->mNavBarTintView:Landroid/view/View;

    .line 345
    iget-object p1, p0, Lcom/reglink/common/SystemBarTintManager;->mConfig:Lcom/reglink/common/SystemBarTintManager$SystemBarConfig;

    invoke-virtual {p1}, Lcom/reglink/common/SystemBarTintManager$SystemBarConfig;->isNavigationAtBottom()Z

    move-result p1

    const/4 v0, -0x1

    if-eqz p1, :cond_0

    .line 346
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v1, p0, Lcom/reglink/common/SystemBarTintManager;->mConfig:Lcom/reglink/common/SystemBarTintManager$SystemBarConfig;

    invoke-virtual {v1}, Lcom/reglink/common/SystemBarTintManager$SystemBarConfig;->getNavigationBarHeight()I

    move-result v1

    invoke-direct {p1, v0, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v0, 0x50

    .line 347
    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    goto :goto_0

    .line 349
    :cond_0
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v1, p0, Lcom/reglink/common/SystemBarTintManager;->mConfig:Lcom/reglink/common/SystemBarTintManager$SystemBarConfig;

    invoke-virtual {v1}, Lcom/reglink/common/SystemBarTintManager$SystemBarConfig;->getNavigationBarWidth()I

    move-result v1

    invoke-direct {p1, v1, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/4 v0, 0x5

    .line 350
    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 352
    :goto_0
    iget-object v0, p0, Lcom/reglink/common/SystemBarTintManager;->mNavBarTintView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 353
    iget-object p1, p0, Lcom/reglink/common/SystemBarTintManager;->mNavBarTintView:Landroid/view/View;

    const/high16 v0, -0x67000000

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 354
    iget-object p1, p0, Lcom/reglink/common/SystemBarTintManager;->mNavBarTintView:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 355
    iget-object p1, p0, Lcom/reglink/common/SystemBarTintManager;->mNavBarTintView:Landroid/view/View;

    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method private setupStatusBarView(Landroid/content/Context;Landroid/view/ViewGroup;)V
    .locals 2

    .line 330
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/reglink/common/SystemBarTintManager;->mStatusBarTintView:Landroid/view/View;

    .line 331
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v0, p0, Lcom/reglink/common/SystemBarTintManager;->mConfig:Lcom/reglink/common/SystemBarTintManager$SystemBarConfig;

    invoke-virtual {v0}, Lcom/reglink/common/SystemBarTintManager$SystemBarConfig;->getStatusBarHeight()I

    move-result v0

    const/4 v1, -0x1

    invoke-direct {p1, v1, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v0, 0x30

    .line 332
    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 333
    iget-boolean v0, p0, Lcom/reglink/common/SystemBarTintManager;->mNavBarAvailable:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/reglink/common/SystemBarTintManager;->mConfig:Lcom/reglink/common/SystemBarTintManager$SystemBarConfig;

    invoke-virtual {v0}, Lcom/reglink/common/SystemBarTintManager$SystemBarConfig;->isNavigationAtBottom()Z

    move-result v0

    if-nez v0, :cond_0

    .line 334
    iget-object v0, p0, Lcom/reglink/common/SystemBarTintManager;->mConfig:Lcom/reglink/common/SystemBarTintManager$SystemBarConfig;

    invoke-virtual {v0}, Lcom/reglink/common/SystemBarTintManager$SystemBarConfig;->getNavigationBarWidth()I

    move-result v0

    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 336
    :cond_0
    iget-object v0, p0, Lcom/reglink/common/SystemBarTintManager;->mStatusBarTintView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 337
    iget-object p1, p0, Lcom/reglink/common/SystemBarTintManager;->mStatusBarTintView:Landroid/view/View;

    const/high16 v0, -0x67000000

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 338
    iget-object p1, p0, Lcom/reglink/common/SystemBarTintManager;->mStatusBarTintView:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 339
    iget-object p1, p0, Lcom/reglink/common/SystemBarTintManager;->mStatusBarTintView:Landroid/view/View;

    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public getConfig()Lcom/reglink/common/SystemBarTintManager$SystemBarConfig;
    .locals 1

    .line 308
    iget-object v0, p0, Lcom/reglink/common/SystemBarTintManager;->mConfig:Lcom/reglink/common/SystemBarTintManager$SystemBarConfig;

    return-object v0
.end method

.method public getStatusBarTintView()Landroid/view/View;
    .locals 1

    .line 135
    iget-object v0, p0, Lcom/reglink/common/SystemBarTintManager;->mStatusBarTintView:Landroid/view/View;

    return-object v0
.end method

.method public isNavBarTintEnabled()Z
    .locals 1

    .line 326
    iget-boolean v0, p0, Lcom/reglink/common/SystemBarTintManager;->mNavBarTintEnabled:Z

    return v0
.end method

.method public isStatusBarTintEnabled()Z
    .locals 1

    .line 317
    iget-boolean v0, p0, Lcom/reglink/common/SystemBarTintManager;->mStatusBarTintEnabled:Z

    return v0
.end method

.method public setNavigationBarAlpha(F)V
    .locals 1

    .line 297
    iget-boolean v0, p0, Lcom/reglink/common/SystemBarTintManager;->mNavBarAvailable:Z

    if-eqz v0, :cond_0

    .line 298
    iget-object v0, p0, Lcom/reglink/common/SystemBarTintManager;->mNavBarTintView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    :cond_0
    return-void
.end method

.method public setNavigationBarTintColor(I)V
    .locals 1

    .line 262
    iget-boolean v0, p0, Lcom/reglink/common/SystemBarTintManager;->mNavBarAvailable:Z

    if-eqz v0, :cond_0

    .line 263
    iget-object v0, p0, Lcom/reglink/common/SystemBarTintManager;->mNavBarTintView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_0
    return-void
.end method

.method public setNavigationBarTintDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 285
    iget-boolean v0, p0, Lcom/reglink/common/SystemBarTintManager;->mNavBarAvailable:Z

    if-eqz v0, :cond_0

    .line 286
    iget-object v0, p0, Lcom/reglink/common/SystemBarTintManager;->mNavBarTintView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public setNavigationBarTintEnabled(Z)V
    .locals 1

    .line 164
    iput-boolean p1, p0, Lcom/reglink/common/SystemBarTintManager;->mNavBarTintEnabled:Z

    .line 165
    iget-boolean v0, p0, Lcom/reglink/common/SystemBarTintManager;->mNavBarAvailable:Z

    if-eqz v0, :cond_1

    .line 166
    iget-object v0, p0, Lcom/reglink/common/SystemBarTintManager;->mNavBarTintView:Landroid/view/View;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public setNavigationBarTintResource(I)V
    .locals 1

    .line 273
    iget-boolean v0, p0, Lcom/reglink/common/SystemBarTintManager;->mNavBarAvailable:Z

    if-eqz v0, :cond_0

    .line 274
    iget-object v0, p0, Lcom/reglink/common/SystemBarTintManager;->mNavBarTintView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundResource(I)V

    :cond_0
    return-void
.end method

.method public setStatusBarAlpha(F)V
    .locals 1

    .line 251
    iget-boolean v0, p0, Lcom/reglink/common/SystemBarTintManager;->mStatusBarAvailable:Z

    if-eqz v0, :cond_0

    .line 252
    iget-object v0, p0, Lcom/reglink/common/SystemBarTintManager;->mStatusBarTintView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    :cond_0
    return-void
.end method

.method public setStatusBarTintColor(I)V
    .locals 1

    .line 216
    iget-boolean v0, p0, Lcom/reglink/common/SystemBarTintManager;->mStatusBarAvailable:Z

    if-eqz v0, :cond_0

    .line 217
    iget-object v0, p0, Lcom/reglink/common/SystemBarTintManager;->mStatusBarTintView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_0
    return-void
.end method

.method public setStatusBarTintDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 239
    iget-boolean v0, p0, Lcom/reglink/common/SystemBarTintManager;->mStatusBarAvailable:Z

    if-eqz v0, :cond_0

    .line 240
    iget-object v0, p0, Lcom/reglink/common/SystemBarTintManager;->mStatusBarTintView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public setStatusBarTintEnabled(Z)V
    .locals 1

    .line 148
    iput-boolean p1, p0, Lcom/reglink/common/SystemBarTintManager;->mStatusBarTintEnabled:Z

    .line 149
    iget-boolean v0, p0, Lcom/reglink/common/SystemBarTintManager;->mStatusBarAvailable:Z

    if-eqz v0, :cond_1

    .line 150
    iget-object v0, p0, Lcom/reglink/common/SystemBarTintManager;->mStatusBarTintView:Landroid/view/View;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public setStatusBarTintResource(I)V
    .locals 1

    .line 227
    iget-boolean v0, p0, Lcom/reglink/common/SystemBarTintManager;->mStatusBarAvailable:Z

    if-eqz v0, :cond_0

    .line 228
    iget-object v0, p0, Lcom/reglink/common/SystemBarTintManager;->mStatusBarTintView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundResource(I)V

    :cond_0
    return-void
.end method

.method public setTintAlpha(F)V
    .locals 0

    .line 206
    invoke-virtual {p0, p1}, Lcom/reglink/common/SystemBarTintManager;->setStatusBarAlpha(F)V

    .line 207
    invoke-virtual {p0, p1}, Lcom/reglink/common/SystemBarTintManager;->setNavigationBarAlpha(F)V

    return-void
.end method

.method public setTintColor(I)V
    .locals 0

    .line 176
    invoke-virtual {p0, p1}, Lcom/reglink/common/SystemBarTintManager;->setStatusBarTintColor(I)V

    .line 177
    invoke-virtual {p0, p1}, Lcom/reglink/common/SystemBarTintManager;->setNavigationBarTintColor(I)V

    return-void
.end method

.method public setTintDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 196
    invoke-virtual {p0, p1}, Lcom/reglink/common/SystemBarTintManager;->setStatusBarTintDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 197
    invoke-virtual {p0, p1}, Lcom/reglink/common/SystemBarTintManager;->setNavigationBarTintDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setTintResource(I)V
    .locals 0

    .line 186
    invoke-virtual {p0, p1}, Lcom/reglink/common/SystemBarTintManager;->setStatusBarTintResource(I)V

    .line 187
    invoke-virtual {p0, p1}, Lcom/reglink/common/SystemBarTintManager;->setNavigationBarTintResource(I)V

    return-void
.end method
