.class final Lcom/reglink/common/IoHandler$1;
.super Ljava/lang/Object;
.source "IoHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/reglink/common/IoHandler;->runOnIoThread(Ljava/lang/Runnable;Landroid/os/Handler;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$runOnUi:Ljava/lang/Runnable;

.field final synthetic val$runnable:Ljava/lang/Runnable;

.field final synthetic val$uiH:Landroid/os/Handler;


# direct methods
.method constructor <init>(Ljava/lang/Runnable;Landroid/os/Handler;Ljava/lang/Runnable;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/reglink/common/IoHandler$1;->val$runnable:Ljava/lang/Runnable;

    iput-object p2, p0, Lcom/reglink/common/IoHandler$1;->val$uiH:Landroid/os/Handler;

    iput-object p3, p0, Lcom/reglink/common/IoHandler$1;->val$runOnUi:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 43
    iget-object v0, p0, Lcom/reglink/common/IoHandler$1;->val$runnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 44
    iget-object v0, p0, Lcom/reglink/common/IoHandler$1;->val$uiH:Landroid/os/Handler;

    iget-object v1, p0, Lcom/reglink/common/IoHandler$1;->val$runOnUi:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
