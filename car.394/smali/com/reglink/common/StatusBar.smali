.class public Lcom/reglink/common/StatusBar;
.super Ljava/lang/Object;
.source "StatusBar.java"


# static fields
.field public static final STATUS_BAR_DISABLE_BACK:I = 0x400000

.field public static final STATUS_BAR_DISABLE_HOME:I = 0x200000

.field static disableMethod:Ljava/lang/reflect/Method;

.field static statusBarService:Ljava/lang/Object;

.field static statusbarManager:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field static systemBarTintManager:Lcom/reglink/common/SystemBarTintManager;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    :try_start_0
    const-string v0, "android.app.StatusBarManager"

    .line 27
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/reglink/common/StatusBar;->statusbarManager:Ljava/lang/Class;

    const-string v1, "disable"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    .line 28
    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/reglink/common/StatusBar;->disableMethod:Ljava/lang/reflect/Method;

    .line 29
    invoke-virtual {v0, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "StatusBar"

    .line 31
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/reglink/common/LogUtil;->LOGE(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static disable(Landroid/content/Context;I)V
    .locals 5

    const-string v0, "disable"

    const-string v1, "what:"

    .line 37
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/reglink/common/LogUtil;->LOGD(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    sget-object v1, Lcom/reglink/common/StatusBar;->statusBarService:Ljava/lang/Object;

    if-nez v1, :cond_0

    const-string v1, "statusbar"

    .line 39
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    sput-object p0, Lcom/reglink/common/StatusBar;->statusBarService:Ljava/lang/Object;

    .line 41
    :cond_0
    sget-object p0, Lcom/reglink/common/StatusBar;->statusBarService:Ljava/lang/Object;

    if-eqz p0, :cond_1

    sget-object p0, Lcom/reglink/common/StatusBar;->disableMethod:Ljava/lang/reflect/Method;

    if-eqz p0, :cond_1

    .line 42
    sget-object p0, Lcom/reglink/common/StatusBar;->statusbarManager:Ljava/lang/Class;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Class;

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {p0, v0, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    sput-object p0, Lcom/reglink/common/StatusBar;->disableMethod:Ljava/lang/reflect/Method;

    .line 43
    invoke-virtual {p0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 44
    sget-object p0, Lcom/reglink/common/StatusBar;->disableMethod:Ljava/lang/reflect/Method;

    sget-object v2, Lcom/reglink/common/StatusBar;->statusBarService:Ljava/lang/Object;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v4

    invoke-virtual {p0, v2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    const-string p0, "\u672a\u77e5\u9519\u8bef"

    .line 46
    invoke-static {v0, p0}, Lcom/reglink/common/LogUtil;->LOGE(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 49
    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/reglink/common/LogUtil;->LOGE(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public static setStatusBarTintColor(Landroid/app/Activity;I)Landroid/view/View;
    .locals 2

    .line 56
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x4000000

    .line 58
    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    const/high16 v1, 0x8000000

    .line 62
    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    .line 66
    new-instance v0, Lcom/reglink/common/SystemBarTintManager;

    invoke-direct {v0, p0}, Lcom/reglink/common/SystemBarTintManager;-><init>(Landroid/app/Activity;)V

    sput-object v0, Lcom/reglink/common/StatusBar;->systemBarTintManager:Lcom/reglink/common/SystemBarTintManager;

    const/4 p0, 0x1

    .line 67
    invoke-virtual {v0, p0}, Lcom/reglink/common/SystemBarTintManager;->setStatusBarTintEnabled(Z)V

    .line 68
    sget-object p0, Lcom/reglink/common/StatusBar;->systemBarTintManager:Lcom/reglink/common/SystemBarTintManager;

    invoke-virtual {p0, p1}, Lcom/reglink/common/SystemBarTintManager;->setStatusBarTintColor(I)V

    .line 69
    sget-object p0, Lcom/reglink/common/StatusBar;->systemBarTintManager:Lcom/reglink/common/SystemBarTintManager;

    invoke-virtual {p0}, Lcom/reglink/common/SystemBarTintManager;->getConfig()Lcom/reglink/common/SystemBarTintManager$SystemBarConfig;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/reglink/common/SystemBarTintManager$SystemBarConfig;->getPixelInsetTop(Z)I

    .line 71
    sget-object p0, Lcom/reglink/common/StatusBar;->systemBarTintManager:Lcom/reglink/common/SystemBarTintManager;

    invoke-virtual {p0}, Lcom/reglink/common/SystemBarTintManager;->getStatusBarTintView()Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public static setTitle(Ljava/lang/CharSequence;)V
    .locals 2

    .line 77
    sget-object v0, Lcom/reglink/common/StatusBar;->systemBarTintManager:Lcom/reglink/common/SystemBarTintManager;

    invoke-virtual {v0}, Lcom/reglink/common/SystemBarTintManager;->getStatusBarTintView()Landroid/view/View;

    move-result-object v0

    .line 78
    instance-of v1, v0, Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 79
    check-cast v0, Landroid/widget/TextView;

    const/high16 v1, 0x41b00000    # 22.0f

    .line 80
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    const/4 v1, -0x1

    .line 81
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    const/16 v1, 0x11

    .line 82
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 83
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
