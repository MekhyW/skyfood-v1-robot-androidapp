.class public Lcom/reglink/common/AsyncExecute;
.super Ljava/lang/Object;
.source "AsyncExecute.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static asyncExecute(Ljava/lang/Runnable;)V
    .locals 1

    .line 11
    new-instance v0, Lcom/reglink/common/AsyncExecute$1;

    invoke-direct {v0, p0}, Lcom/reglink/common/AsyncExecute$1;-><init>(Ljava/lang/Runnable;)V

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Object;

    .line 17
    invoke-virtual {v0, p0}, Lcom/reglink/common/AsyncExecute$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public static asyncExecute(Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 1

    .line 22
    new-instance v0, Lcom/reglink/common/AsyncExecute$2;

    invoke-direct {v0, p0, p1}, Lcom/reglink/common/AsyncExecute$2;-><init>(Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Object;

    .line 32
    invoke-virtual {v0, p0}, Lcom/reglink/common/AsyncExecute$2;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
