.class public Lcom/reglink/common/ExceptionHandler;
.super Ljava/lang/Object;
.source "ExceptionHandler.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static handleException(Ljava/lang/Exception;)V
    .locals 2

    const-string v0, "Exception"

    const-string v1, ""

    .line 10
    invoke-static {v0, v1, p0}, Lcom/reglink/common/LogUtil;->LOGE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
