.class public Lcom/reglink/common/StopWatch;
.super Ljava/lang/Object;
.source "StopWatch.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "elapsed"


# instance fields
.field begin:J

.field tag:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/reglink/common/StopWatch;->tag:Ljava/lang/String;

    .line 16
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/reglink/common/StopWatch;->begin:J

    return-void
.end method


# virtual methods
.method public done()V
    .locals 4

    .line 23
    invoke-virtual {p0}, Lcom/reglink/common/StopWatch;->elapsed()J

    move-result-wide v0

    .line 24
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/reglink/common/StopWatch;->tag:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " \u7528\u65f6:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "elapsed"

    invoke-static {v1, v0}, Lcom/reglink/common/LogUtil;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public doneAndReset(Ljava/lang/String;)V
    .locals 4

    .line 31
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/reglink/common/StopWatch;->begin:J

    sub-long/2addr v0, v2

    .line 32
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/reglink/common/StopWatch;->tag:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " \u7528\u65f6:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "elapsed"

    invoke-static {v1, v0}, Lcom/reglink/common/LogUtil;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    invoke-virtual {p0, p1}, Lcom/reglink/common/StopWatch;->reset(Ljava/lang/String;)V

    return-void
.end method

.method public elapsed()J
    .locals 4

    .line 27
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/reglink/common/StopWatch;->begin:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public reset(Ljava/lang/String;)V
    .locals 2

    .line 19
    iput-object p1, p0, Lcom/reglink/common/StopWatch;->tag:Ljava/lang/String;

    .line 20
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/reglink/common/StopWatch;->begin:J

    return-void
.end method
