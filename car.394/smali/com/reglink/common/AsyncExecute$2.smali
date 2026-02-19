.class final Lcom/reglink/common/AsyncExecute$2;
.super Landroid/os/AsyncTask;
.source "AsyncExecute.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/reglink/common/AsyncExecute;->asyncExecute(Ljava/lang/Runnable;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$_completion:Ljava/lang/Runnable;

.field final synthetic val$_r:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 0

    .line 22
    iput-object p1, p0, Lcom/reglink/common/AsyncExecute$2;->val$_r:Ljava/lang/Runnable;

    iput-object p2, p0, Lcom/reglink/common/AsyncExecute$2;->val$_completion:Ljava/lang/Runnable;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 25
    iget-object p1, p0, Lcom/reglink/common/AsyncExecute$2;->val$_r:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    const/4 p1, 0x0

    return-object p1
.end method

.method protected onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 30
    iget-object p1, p0, Lcom/reglink/common/AsyncExecute$2;->val$_completion:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method
