.class Lcom/reglink/widgets/BuiltinWidget$ContextWrapper;
.super Landroid/view/ContextThemeWrapper;
.source "BuiltinWidget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/reglink/widgets/BuiltinWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ContextWrapper"
.end annotation


# instance fields
.field classLoader:Ljava/lang/ClassLoader;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    .line 46
    invoke-direct {p0, p1, p2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method public getClassLoader()Ljava/lang/ClassLoader;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/reglink/widgets/BuiltinWidget$ContextWrapper;->classLoader:Ljava/lang/ClassLoader;

    if-eqz v0, :cond_0

    return-object v0

    .line 57
    :cond_0
    invoke-super {p0}, Landroid/view/ContextThemeWrapper;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    return-object v0
.end method

.method public setClassLoader(Ljava/lang/ClassLoader;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/reglink/widgets/BuiltinWidget$ContextWrapper;->classLoader:Ljava/lang/ClassLoader;

    return-void
.end method
