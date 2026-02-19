.class public Lcom/reglink/common/IoHandler;
.super Ljava/lang/Object;
.source "IoHandler.java"


# static fields
.field private static H:Landroid/os/Handler;

.field private static sIoHandlerThread:Landroid/os/HandlerThread;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 13
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "IoHandlerThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/reglink/common/IoHandler;->sIoHandlerThread:Landroid/os/HandlerThread;

    .line 16
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 17
    new-instance v0, Landroid/os/Handler;

    sget-object v1, Lcom/reglink/common/IoHandler;->sIoHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/reglink/common/IoHandler;->H:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getLooper()Landroid/os/Looper;
    .locals 1

    .line 21
    sget-object v0, Lcom/reglink/common/IoHandler;->sIoHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    return-object v0
.end method

.method public static newHandler()Landroid/os/Handler;
    .locals 2

    .line 29
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Lcom/reglink/common/IoHandler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-object v0
.end method

.method public static newHandler(Landroid/os/Handler$Callback;)Landroid/os/Handler;
    .locals 2

    .line 25
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Lcom/reglink/common/IoHandler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    return-object v0
.end method

.method public static runOnIoThread(Ljava/lang/Runnable;)V
    .locals 1

    .line 33
    sget-object v0, Lcom/reglink/common/IoHandler;->H:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static runOnIoThread(Ljava/lang/Runnable;Landroid/os/Handler;I)V
    .locals 2

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 53
    sget-object v0, Lcom/reglink/common/IoHandler;->H:Landroid/os/Handler;

    new-instance v1, Lcom/reglink/common/IoHandler$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/reglink/common/IoHandler$2;-><init>(Ljava/lang/Runnable;Landroid/os/Handler;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 51
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "\u53c2\u6570\u4e0d\u80fd\u6709NULL"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static runOnIoThread(Ljava/lang/Runnable;Landroid/os/Handler;Ljava/lang/Runnable;)V
    .locals 2

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 40
    sget-object v0, Lcom/reglink/common/IoHandler;->H:Landroid/os/Handler;

    new-instance v1, Lcom/reglink/common/IoHandler$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/reglink/common/IoHandler$1;-><init>(Ljava/lang/Runnable;Landroid/os/Handler;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 38
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "\u53c2\u6570\u4e0d\u80fd\u6709NULL"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
