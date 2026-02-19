.class public Lcom/reglink/widgets/BuiltinWidget;
.super Ljava/lang/Object;
.source "BuiltinWidget.java"

# interfaces
.implements Lcom/reglink/widgets/IBuiltinWidget;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/reglink/widgets/BuiltinWidget$ContextWrapper;
    }
.end annotation


# instance fields
.field private baseContext:Landroid/content/Context;

.field widgetConfig:Lcom/reglink/widgets/BuiltinWidgetConfig;

.field private wrapperContext:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private createResource(Landroid/content/Context;Ljava/lang/String;)Landroid/content/res/Resources;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 33
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const/16 v0, 0x4101

    .line 34
    invoke-virtual {p1, p2, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p2

    .line 35
    iget-object p2, p2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p1, p2}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method protected getClassLoader()Ljava/lang/ClassLoader;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/reglink/widgets/BuiltinWidget;->wrapperContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    return-object v0

    .line 92
    :cond_0
    iget-object v0, p0, Lcom/reglink/widgets/BuiltinWidget;->baseContext:Landroid/content/Context;

    return-object v0
.end method

.method public getResourcePackage()Ljava/lang/String;
    .locals 1

    const-string v0, "com.reglink.widgets"

    return-object v0
.end method

.method public isPreview()Z
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/reglink/widgets/BuiltinWidget;->widgetConfig:Lcom/reglink/widgets/BuiltinWidgetConfig;

    if-eqz v0, :cond_0

    .line 27
    iget-boolean v0, v0, Lcom/reglink/widgets/BuiltinWidgetConfig;->preview:Z

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onCreate(Landroid/content/Context;)V
    .locals 3

    .line 67
    iput-object p1, p0, Lcom/reglink/widgets/BuiltinWidget;->baseContext:Landroid/content/Context;

    .line 68
    new-instance v0, Lcom/reglink/widgets/BuiltinWidget$ContextWrapper;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/reglink/widgets/BuiltinWidget$ContextWrapper;-><init>(Landroid/content/Context;I)V

    .line 69
    invoke-virtual {p0}, Lcom/reglink/widgets/BuiltinWidget;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/reglink/widgets/BuiltinWidget$ContextWrapper;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 72
    :try_start_0
    const-class v1, Landroid/view/ContextThemeWrapper;

    const-string v2, "mResources"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    .line 74
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 75
    invoke-virtual {p0}, Lcom/reglink/widgets/BuiltinWidget;->getResourcePackage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, v2}, Lcom/reglink/widgets/BuiltinWidget;->createResource(Landroid/content/Context;Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 77
    invoke-virtual {v1, v0, p1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 80
    :cond_0
    iput-object v0, p0, Lcom/reglink/widgets/BuiltinWidget;->wrapperContext:Landroid/content/Context;
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 86
    invoke-virtual {p1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p1

    .line 84
    invoke-virtual {p1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception p1

    .line 82
    invoke-virtual {p1}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public onDestroy()V
    .locals 0

    return-void
.end method

.method public onDestroyView()V
    .locals 0

    return-void
.end method

.method public onPause()V
    .locals 0

    return-void
.end method

.method public onResume()V
    .locals 0

    return-void
.end method

.method public onStart()V
    .locals 0

    return-void
.end method

.method public onStop()V
    .locals 0

    return-void
.end method

.method public setConfiguration(Lcom/reglink/widgets/BuiltinWidgetConfig;)V
    .locals 0

    .line 22
    iput-object p1, p0, Lcom/reglink/widgets/BuiltinWidget;->widgetConfig:Lcom/reglink/widgets/BuiltinWidgetConfig;

    return-void
.end method
