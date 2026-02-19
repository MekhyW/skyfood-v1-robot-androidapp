.class final Lcom/reglink/common/BaseActivity$ServiceConnectionWrapper;
.super Ljava/lang/Object;
.source "BaseActivity.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/reglink/common/BaseActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ServiceConnectionWrapper"
.end annotation


# instance fields
.field private final thiz:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/reglink/common/BaseActivity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/reglink/common/BaseActivity;)V
    .locals 1

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/reglink/common/BaseActivity$ServiceConnectionWrapper;->thiz:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/reglink/common/BaseActivity$ServiceConnectionWrapper;->thiz:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 54
    iget-object v0, p0, Lcom/reglink/common/BaseActivity$ServiceConnectionWrapper;->thiz:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/reglink/common/BaseActivity;

    invoke-static {v0, p1, p2}, Lcom/reglink/common/BaseActivity;->access$000(Lcom/reglink/common/BaseActivity;Landroid/content/ComponentName;Landroid/os/IBinder;)V

    :cond_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/reglink/common/BaseActivity$ServiceConnectionWrapper;->thiz:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 61
    iget-object v0, p0, Lcom/reglink/common/BaseActivity$ServiceConnectionWrapper;->thiz:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/reglink/common/BaseActivity;

    invoke-static {v0, p1}, Lcom/reglink/common/BaseActivity;->access$100(Lcom/reglink/common/BaseActivity;Landroid/content/ComponentName;)V

    :cond_0
    return-void
.end method
