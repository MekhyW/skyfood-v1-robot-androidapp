.class public Lcom/reglink/common/NavBarManager;
.super Ljava/lang/Object;
.source "NavBarManager.java"


# static fields
.field static iNavBarService:Lcom/reglink/services/INavBarService;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getFocusApp(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 89
    invoke-static {p0}, Lcom/reglink/common/NavBarManager;->getFocusWindow(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    .line 90
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, ""

    :cond_0
    return-object p0
.end method

.method public static getFocusAppPackage(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 79
    invoke-static {p0}, Lcom/reglink/common/NavBarManager;->getFocusWindow(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    .line 80
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, ""

    return-object p0

    .line 82
    :cond_0
    :try_start_0
    invoke-static {p0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    .line 83
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-object p0
.end method

.method public static getFocusWindow(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    .line 69
    invoke-static {p0}, Lcom/reglink/common/NavBarManager;->getNavBarService(Landroid/content/Context;)Lcom/reglink/services/INavBarService;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 71
    :try_start_0
    invoke-interface {p0}, Lcom/reglink/services/INavBarService;->getFocusWindow()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 73
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getNavBarHeight(Landroid/content/Context;)Landroid/graphics/Rect;
    .locals 0

    .line 30
    invoke-static {p0}, Lcom/reglink/common/NavBarManager;->getNavBarService(Landroid/content/Context;)Lcom/reglink/services/INavBarService;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 32
    :try_start_0
    invoke-interface {p0}, Lcom/reglink/services/INavBarService;->getDisplayLimitRect()Landroid/graphics/Rect;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 34
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 36
    :cond_0
    new-instance p0, Landroid/graphics/Rect;

    invoke-direct {p0}, Landroid/graphics/Rect;-><init>()V

    return-object p0
.end method

.method public static getNavBarService(Landroid/content/Context;)Lcom/reglink/services/INavBarService;
    .locals 1

    .line 22
    sget-object p0, Lcom/reglink/common/NavBarManager;->iNavBarService:Lcom/reglink/services/INavBarService;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "nav_bar"

    .line 23
    invoke-static {p0}, Lcom/reglink/common/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 24
    invoke-static {p0}, Lcom/reglink/common/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p0

    invoke-static {p0}, Lcom/reglink/services/INavBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/reglink/services/INavBarService;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static hideNavBar(Landroid/content/Context;Landroid/content/ComponentName;)V
    .locals 1

    .line 60
    invoke-static {p0}, Lcom/reglink/common/NavBarManager;->getNavBarService(Landroid/content/Context;)Lcom/reglink/services/INavBarService;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    .line 62
    :try_start_0
    invoke-interface {p0, v0, p1}, Lcom/reglink/services/INavBarService;->setNavBarVisibility(ZLandroid/content/ComponentName;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 64
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public static isNavBarVisible(Landroid/content/Context;)Z
    .locals 0

    .line 41
    invoke-static {p0}, Lcom/reglink/common/NavBarManager;->getNavBarService(Landroid/content/Context;)Lcom/reglink/services/INavBarService;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 43
    :try_start_0
    invoke-interface {p0}, Lcom/reglink/services/INavBarService;->isNavBarVisible()Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 45
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static showNavBar(Landroid/content/Context;Landroid/content/ComponentName;)V
    .locals 1

    .line 51
    invoke-static {p0}, Lcom/reglink/common/NavBarManager;->getNavBarService(Landroid/content/Context;)Lcom/reglink/services/INavBarService;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    .line 53
    :try_start_0
    invoke-interface {p0, v0, p1}, Lcom/reglink/services/INavBarService;->setNavBarVisibility(ZLandroid/content/ComponentName;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 55
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method
