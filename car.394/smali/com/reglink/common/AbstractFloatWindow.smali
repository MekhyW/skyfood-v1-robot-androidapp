.class public abstract Lcom/reglink/common/AbstractFloatWindow;
.super Ljava/lang/Object;
.source "AbstractFloatWindow.java"


# instance fields
.field protected contentView:Landroid/view/View;

.field context:Landroid/content/Context;

.field layoutInflater:Landroid/view/LayoutInflater;

.field final layoutParams_:Landroid/view/WindowManager$LayoutParams;

.field private parentPrepareLayoutParamsCalled:Z

.field viewAdded:Z

.field wm:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 15
    iput-boolean v0, p0, Lcom/reglink/common/AbstractFloatWindow;->viewAdded:Z

    .line 16
    new-instance v1, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v1}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v1, p0, Lcom/reglink/common/AbstractFloatWindow;->layoutParams_:Landroid/view/WindowManager$LayoutParams;

    .line 20
    iput-boolean v0, p0, Lcom/reglink/common/AbstractFloatWindow;->parentPrepareLayoutParamsCalled:Z

    return-void
.end method

.method private prepareWindowParams()V
    .locals 2

    const/4 v0, 0x0

    .line 53
    iput-boolean v0, p0, Lcom/reglink/common/AbstractFloatWindow;->parentPrepareLayoutParamsCalled:Z

    .line 54
    iget-object v0, p0, Lcom/reglink/common/AbstractFloatWindow;->layoutParams_:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {p0, v0}, Lcom/reglink/common/AbstractFloatWindow;->prepareWindowParams(Landroid/view/WindowManager$LayoutParams;)V

    .line 55
    iget-boolean v0, p0, Lcom/reglink/common/AbstractFloatWindow;->parentPrepareLayoutParamsCalled:Z

    if-eqz v0, :cond_0

    return-void

    .line 56
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "prepareWindowParams\u5fc5\u987b\u8c03\u7528\u7236\u7c7bprepareWindowParams"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public addWindow()V
    .locals 3

    .line 73
    iget-boolean v0, p0, Lcom/reglink/common/AbstractFloatWindow;->viewAdded:Z

    if-nez v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/reglink/common/AbstractFloatWindow;->wm:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/reglink/common/AbstractFloatWindow;->contentView:Landroid/view/View;

    iget-object v2, p0, Lcom/reglink/common/AbstractFloatWindow;->layoutParams_:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v0, 0x1

    .line 75
    iput-boolean v0, p0, Lcom/reglink/common/AbstractFloatWindow;->viewAdded:Z

    goto :goto_0

    .line 77
    :cond_0
    iget-object v0, p0, Lcom/reglink/common/AbstractFloatWindow;->wm:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/reglink/common/AbstractFloatWindow;->contentView:Landroid/view/View;

    iget-object v2, p0, Lcom/reglink/common/AbstractFloatWindow;->layoutParams_:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :goto_0
    return-void
.end method

.method protected contentViewCreated()V
    .locals 0

    return-void
.end method

.method protected contentViewRes()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method protected createContentView()Landroid/view/View;
    .locals 3

    .line 23
    invoke-virtual {p0}, Lcom/reglink/common/AbstractFloatWindow;->contentViewRes()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 28
    iget-object v1, p0, Lcom/reglink/common/AbstractFloatWindow;->layoutInflater:Landroid/view/LayoutInflater;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0

    .line 25
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "contentViewRes() \u5fc5\u987b\u8fd4\u56de\u6709\u6548\u5e03\u5c40ID"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public createWindow(Landroid/content/Context;)V
    .locals 1

    .line 38
    iput-object p1, p0, Lcom/reglink/common/AbstractFloatWindow;->context:Landroid/content/Context;

    const-string v0, "window"

    .line 39
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/reglink/common/AbstractFloatWindow;->wm:Landroid/view/WindowManager;

    .line 40
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/reglink/common/AbstractFloatWindow;->layoutInflater:Landroid/view/LayoutInflater;

    .line 41
    invoke-direct {p0}, Lcom/reglink/common/AbstractFloatWindow;->prepareWindowParams()V

    .line 42
    invoke-virtual {p0}, Lcom/reglink/common/AbstractFloatWindow;->createContentView()Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/reglink/common/AbstractFloatWindow;->contentView:Landroid/view/View;

    if-eqz p1, :cond_0

    .line 44
    invoke-virtual {p0}, Lcom/reglink/common/AbstractFloatWindow;->contentViewCreated()V

    :cond_0
    return-void
.end method

.method public destroyWindow()V
    .locals 0

    .line 49
    invoke-virtual {p0}, Lcom/reglink/common/AbstractFloatWindow;->removeWindow()V

    return-void
.end method

.method public getContentView()Landroid/view/View;
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/reglink/common/AbstractFloatWindow;->contentView:Landroid/view/View;

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .line 119
    iget-object v0, p0, Lcom/reglink/common/AbstractFloatWindow;->context:Landroid/content/Context;

    return-object v0
.end method

.method public getWindowAttrs()Landroid/view/WindowManager$LayoutParams;
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/reglink/common/AbstractFloatWindow;->layoutParams_:Landroid/view/WindowManager$LayoutParams;

    return-object v0
.end method

.method protected launchNoAnimation(Ljava/lang/String;)V
    .locals 2

    .line 104
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x10000

    .line 105
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 106
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 107
    iget-object p1, p0, Lcom/reglink/common/AbstractFloatWindow;->context:Landroid/content/Context;

    invoke-static {p1, v0}, Lcom/reglink/common/ActivityUtil;->launchNewTask(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method protected prepareWindowParams(Landroid/view/WindowManager$LayoutParams;)V
    .locals 1

    const/4 v0, 0x1

    .line 60
    iput-boolean v0, p0, Lcom/reglink/common/AbstractFloatWindow;->parentPrepareLayoutParamsCalled:Z

    const/4 v0, 0x0

    .line 61
    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    const/4 v0, -0x1

    .line 62
    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->format:I

    const/16 v0, 0x7d3

    .line 63
    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v0, 0x30

    .line 64
    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    const v0, 0x1000328

    .line 66
    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const-string v0, "FloatWindow"

    .line 69
    invoke-virtual {p1, v0}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public removeWindow()V
    .locals 2

    .line 82
    iget-boolean v0, p0, Lcom/reglink/common/AbstractFloatWindow;->viewAdded:Z

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/reglink/common/AbstractFloatWindow;->wm:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/reglink/common/AbstractFloatWindow;->contentView:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    const/4 v0, 0x0

    .line 84
    iput-boolean v0, p0, Lcom/reglink/common/AbstractFloatWindow;->viewAdded:Z

    :cond_0
    return-void
.end method

.method protected sendBroadcast(Landroid/content/Intent;)V
    .locals 1

    .line 115
    iget-object v0, p0, Lcom/reglink/common/AbstractFloatWindow;->context:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method protected sendBroadcast(Ljava/lang/String;)V
    .locals 2

    .line 111
    iget-object v0, p0, Lcom/reglink/common/AbstractFloatWindow;->context:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public updateWindow()V
    .locals 3

    .line 89
    iget-boolean v0, p0, Lcom/reglink/common/AbstractFloatWindow;->viewAdded:Z

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/reglink/common/AbstractFloatWindow;->wm:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/reglink/common/AbstractFloatWindow;->contentView:Landroid/view/View;

    iget-object v2, p0, Lcom/reglink/common/AbstractFloatWindow;->layoutParams_:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method
