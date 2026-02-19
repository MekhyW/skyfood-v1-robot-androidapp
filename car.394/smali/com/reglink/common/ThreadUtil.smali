.class public final Lcom/reglink/common/ThreadUtil;
.super Ljava/lang/Object;
.source "ThreadUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static sleep(I)V
    .locals 2

    int-to-long v0, p0

    .line 10
    invoke-static {v0, v1}, Landroid/os/SystemClock;->sleep(J)V

    return-void
.end method
