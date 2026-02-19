.class Lcom/autoxing/delivery/js/JsEngine$2;
.super Ljava/lang/Object;
.source "JsEngine.java"

# interfaces
.implements Lcom/autoxing/delivery/js/ws/OnWebSocketListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/autoxing/delivery/js/JsEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/autoxing/delivery/js/JsEngine;


# direct methods
.method constructor <init>(Lcom/autoxing/delivery/js/JsEngine;)V
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/autoxing/delivery/js/JsEngine$2;->this$0:Lcom/autoxing/delivery/js/JsEngine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method synthetic lambda$onDataReceive$0$com-autoxing-delivery-js-JsEngine$2(Lcom/autoxing/delivery/js/model/MsgInfo;)V
    .locals 6

    .line 80
    :try_start_0
    invoke-virtual {p1}, Lcom/autoxing/delivery/js/model/MsgInfo;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 81
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 82
    iget-object v3, p0, Lcom/autoxing/delivery/js/JsEngine$2;->this$0:Lcom/autoxing/delivery/js/JsEngine;

    invoke-static {v3, p1}, Lcom/autoxing/delivery/js/JsEngine;->-$$Nest$mhandleData(Lcom/autoxing/delivery/js/JsEngine;Lcom/autoxing/delivery/js/model/MsgInfo;)V

    if-eqz v0, :cond_0

    const-string p1, "onWriteLog"

    .line 83
    invoke-virtual {v0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "onHeartBeat"

    invoke-virtual {v0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 84
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v1

    const-string p1, "JsEngine"

    const-string v1, "onDataReceive: %s ,costTime = %d ms"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v2, v5

    .line 85
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const/4 v3, 0x1

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/autoai/research/atools/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 88
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public onDataReceive(Lcom/autoxing/delivery/js/model/MsgInfo;)V
    .locals 2

    .line 78
    iget-object v0, p0, Lcom/autoxing/delivery/js/JsEngine$2;->this$0:Lcom/autoxing/delivery/js/JsEngine;

    invoke-static {v0}, Lcom/autoxing/delivery/js/JsEngine;->-$$Nest$fgetexecutorService(Lcom/autoxing/delivery/js/JsEngine;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/autoxing/delivery/js/JsEngine$2$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/autoxing/delivery/js/JsEngine$2$$ExternalSyntheticLambda0;-><init>(Lcom/autoxing/delivery/js/JsEngine$2;Lcom/autoxing/delivery/js/model/MsgInfo;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method public onUerLogin()V
    .locals 0

    return-void
.end method
