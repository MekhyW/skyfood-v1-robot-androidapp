.class final Lcom/autoai/research/atools/LogUtils$1;
.super Ljava/lang/Object;
.source "LogUtils.java"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/autoai/research/atools/LogUtils;->registerUncaughtExceptionHandler(Lcom/autoai/research/atools/LogUtils$ExceptionHandlerListener;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$defaultUncaughtExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

.field final synthetic val$listener:Lcom/autoai/research/atools/LogUtils$ExceptionHandlerListener;

.field final synthetic val$logFile:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/autoai/research/atools/LogUtils$ExceptionHandlerListener;Ljava/lang/String;Ljava/lang/Thread$UncaughtExceptionHandler;)V
    .locals 0

    .line 794
    iput-object p1, p0, Lcom/autoai/research/atools/LogUtils$1;->val$listener:Lcom/autoai/research/atools/LogUtils$ExceptionHandlerListener;

    iput-object p2, p0, Lcom/autoai/research/atools/LogUtils$1;->val$logFile:Ljava/lang/String;

    iput-object p3, p0, Lcom/autoai/research/atools/LogUtils$1;->val$defaultUncaughtExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 3

    .line 797
    iget-object v0, p0, Lcom/autoai/research/atools/LogUtils$1;->val$listener:Lcom/autoai/research/atools/LogUtils$ExceptionHandlerListener;

    if-eqz v0, :cond_0

    .line 798
    invoke-interface {v0, p1, p2}, Lcom/autoai/research/atools/LogUtils$ExceptionHandlerListener;->onUncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 800
    :cond_0
    invoke-static {}, Lcom/autoai/research/atools/LogUtils;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "uncaughtException"

    .line 801
    iget-object v1, p0, Lcom/autoai/research/atools/LogUtils$1;->val$logFile:Ljava/lang/String;

    const-string v2, "GLOBAL"

    invoke-static {v2, v0, p2, v1}, Lcom/autoai/research/atools/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 803
    :cond_1
    iget-object v0, p0, Lcom/autoai/research/atools/LogUtils$1;->val$defaultUncaughtExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    return-void
.end method
