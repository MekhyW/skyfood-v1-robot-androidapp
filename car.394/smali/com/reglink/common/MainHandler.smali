.class public Lcom/reglink/common/MainHandler;
.super Ljava/lang/Object;
.source "MainHandler.java"


# static fields
.field private static H:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 12
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/reglink/common/MainHandler;->H:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static longToast(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 30
    new-instance v0, Lcom/reglink/common/MainHandler$2;

    invoke-direct {v0, p0, p1}, Lcom/reglink/common/MainHandler$2;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/reglink/common/MainHandler;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static post(Ljava/lang/Runnable;)V
    .locals 1

    .line 14
    sget-object v0, Lcom/reglink/common/MainHandler;->H:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static postDelayed(Ljava/lang/Runnable;I)V
    .locals 3

    .line 17
    sget-object v0, Lcom/reglink/common/MainHandler;->H:Landroid/os/Handler;

    int-to-long v1, p1

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public static shortToast(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 21
    new-instance v0, Lcom/reglink/common/MainHandler$1;

    invoke-direct {v0, p0, p1}, Lcom/reglink/common/MainHandler$1;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/reglink/common/MainHandler;->post(Ljava/lang/Runnable;)V

    return-void
.end method
