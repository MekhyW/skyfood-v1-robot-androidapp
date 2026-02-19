.class public Lcom/reglink/common/Toast;
.super Ljava/lang/Object;
.source "Toast.java"


# static fields
.field private static mToast:Landroid/widget/Toast;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static longToast(Landroid/content/Context;I)V
    .locals 2

    .line 36
    sget-object v0, Lcom/reglink/common/Toast;->mToast:Landroid/widget/Toast;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 37
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    sput-object p0, Lcom/reglink/common/Toast;->mToast:Landroid/widget/Toast;

    goto :goto_0

    .line 39
    :cond_0
    invoke-virtual {v0, v1}, Landroid/widget/Toast;->setDuration(I)V

    .line 40
    sget-object p0, Lcom/reglink/common/Toast;->mToast:Landroid/widget/Toast;

    invoke-virtual {p0, p1}, Landroid/widget/Toast;->setText(I)V

    .line 42
    :goto_0
    sget-object p0, Lcom/reglink/common/Toast;->mToast:Landroid/widget/Toast;

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public static longToast(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 15
    sget-object v0, Lcom/reglink/common/Toast;->mToast:Landroid/widget/Toast;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 16
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    sput-object p0, Lcom/reglink/common/Toast;->mToast:Landroid/widget/Toast;

    goto :goto_0

    .line 18
    :cond_0
    invoke-virtual {v0, p1}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    .line 19
    sget-object p0, Lcom/reglink/common/Toast;->mToast:Landroid/widget/Toast;

    invoke-virtual {p0, v1}, Landroid/widget/Toast;->setDuration(I)V

    .line 21
    :goto_0
    sget-object p0, Lcom/reglink/common/Toast;->mToast:Landroid/widget/Toast;

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public static shortToast(Landroid/content/Context;I)V
    .locals 2

    .line 47
    sget-object v0, Lcom/reglink/common/Toast;->mToast:Landroid/widget/Toast;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 48
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    sput-object p0, Lcom/reglink/common/Toast;->mToast:Landroid/widget/Toast;

    goto :goto_0

    .line 50
    :cond_0
    invoke-virtual {v0, v1}, Landroid/widget/Toast;->setDuration(I)V

    .line 51
    sget-object p0, Lcom/reglink/common/Toast;->mToast:Landroid/widget/Toast;

    invoke-virtual {p0, p1}, Landroid/widget/Toast;->setText(I)V

    .line 53
    :goto_0
    sget-object p0, Lcom/reglink/common/Toast;->mToast:Landroid/widget/Toast;

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public static shortToast(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 26
    sget-object v0, Lcom/reglink/common/Toast;->mToast:Landroid/widget/Toast;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 27
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    sput-object p0, Lcom/reglink/common/Toast;->mToast:Landroid/widget/Toast;

    goto :goto_0

    .line 29
    :cond_0
    invoke-virtual {v0, v1}, Landroid/widget/Toast;->setDuration(I)V

    .line 30
    sget-object p0, Lcom/reglink/common/Toast;->mToast:Landroid/widget/Toast;

    invoke-virtual {p0, p1}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    .line 32
    :goto_0
    sget-object p0, Lcom/reglink/common/Toast;->mToast:Landroid/widget/Toast;

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method
