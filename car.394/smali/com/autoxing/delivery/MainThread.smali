.class public Lcom/autoxing/delivery/MainThread;
.super Ljava/lang/Object;
.source "MainThread.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static TAG:Ljava/lang/String; = "MainThread"


# instance fields
.field private final handlerTime:Landroid/os/Handler;

.field private runnableTime:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/autoxing/delivery/MainThread;->handlerTime:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 36
    iget-object v0, p0, Lcom/autoxing/delivery/MainThread;->handlerTime:Landroid/os/Handler;

    iget-object v1, p0, Lcom/autoxing/delivery/MainThread;->runnableTime:Ljava/lang/Runnable;

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public stop()V
    .locals 2

    .line 41
    iget-object v0, p0, Lcom/autoxing/delivery/MainThread;->handlerTime:Landroid/os/Handler;

    iget-object v1, p0, Lcom/autoxing/delivery/MainThread;->runnableTime:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method
