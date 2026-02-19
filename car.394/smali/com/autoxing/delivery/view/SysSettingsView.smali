.class public Lcom/autoxing/delivery/view/SysSettingsView;
.super Ljava/lang/Object;
.source "SysSettingsView.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SysSettingsView"


# instance fields
.field private view:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private initWindow(Landroid/content/Context;)V
    .locals 5

    const-string v0, "window"

    .line 38
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 39
    new-instance v1, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v1}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    const/16 v2, 0x7f6

    .line 40
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v2, 0x1

    .line 41
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->format:I

    const/16 v2, 0x33

    .line 42
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/16 v2, 0x14

    .line 43
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    const/16 v2, 0xa

    .line 44
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    const/16 v2, 0x28

    .line 45
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/4 v2, -0x2

    .line 46
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 47
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 48
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1e

    if-lt v2, v3, :cond_0

    const/4 v2, 0x0

    .line 49
    invoke-virtual {v1, v2}, Landroid/view/WindowManager$LayoutParams;->setFitInsetsTypes(I)V

    .line 51
    :cond_0
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f09001e

    const/4 v4, 0x0

    .line 52
    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/autoxing/delivery/view/SysSettingsView;->view:Landroid/view/View;

    const v3, 0x7f07002d

    .line 53
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/autoxing/delivery/view/SysSettingsView$$ExternalSyntheticLambda0;

    invoke-direct {v3, p1}, Lcom/autoxing/delivery/view/SysSettingsView$$ExternalSyntheticLambda0;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 56
    iget-object p1, p0, Lcom/autoxing/delivery/view/SysSettingsView;->view:Landroid/view/View;

    invoke-interface {v0, p1, v1}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method static synthetic lambda$initWindow$0(Landroid/content/Context;Landroid/view/View;)V
    .locals 0

    .line 54
    const-class p1, Lcom/autoxing/delivery/MainActivity;

    invoke-static {p0, p1}, Lcom/autoxing/delivery/util/Utils;->setTopApp(Landroid/content/Context;Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public hide()V
    .locals 2

    const-string v0, "SysSettingsView"

    const-string v1, "hide"

    .line 21
    invoke-static {v0, v1}, Lcom/autoai/research/atools/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    iget-object v0, p0, Lcom/autoxing/delivery/view/SysSettingsView;->view:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 23
    iget-object v0, p0, Lcom/autoxing/delivery/view/SysSettingsView;->view:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public show(Landroid/content/Context;)V
    .locals 2

    const-string v0, "SysSettingsView"

    const-string v1, "show"

    .line 28
    invoke-static {v0, v1}, Lcom/autoai/research/atools/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    iget-object v0, p0, Lcom/autoxing/delivery/view/SysSettingsView;->view:Landroid/view/View;

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 30
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 32
    :cond_0
    invoke-direct {p0, p1}, Lcom/autoxing/delivery/view/SysSettingsView;->initWindow(Landroid/content/Context;)V

    :goto_0
    return-void
.end method
