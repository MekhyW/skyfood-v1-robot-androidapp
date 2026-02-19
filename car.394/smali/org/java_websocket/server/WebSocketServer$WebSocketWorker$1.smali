.class Lorg/java_websocket/server/WebSocketServer$WebSocketWorker$1;
.super Ljava/lang/Object;
.source "WebSocketServer.java"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/java_websocket/server/WebSocketServer$WebSocketWorker;-><init>(Lorg/java_websocket/server/WebSocketServer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/java_websocket/server/WebSocketServer$WebSocketWorker;


# direct methods
.method constructor <init>(Lorg/java_websocket/server/WebSocketServer$WebSocketWorker;)V
    .locals 0

    .line 1010
    iput-object p1, p0, Lorg/java_websocket/server/WebSocketServer$WebSocketWorker$1;->this$1:Lorg/java_websocket/server/WebSocketServer$WebSocketWorker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 2

    .line 1013
    iget-object v0, p0, Lorg/java_websocket/server/WebSocketServer$WebSocketWorker$1;->this$1:Lorg/java_websocket/server/WebSocketServer$WebSocketWorker;

    invoke-static {v0}, Lorg/java_websocket/server/WebSocketServer$WebSocketWorker;->access$0(Lorg/java_websocket/server/WebSocketServer$WebSocketWorker;)Lorg/java_websocket/server/WebSocketServer;

    move-result-object v0

    invoke-static {v0}, Lorg/java_websocket/server/WebSocketServer;->access$0(Lorg/java_websocket/server/WebSocketServer;)Lcom/autoxing/service/log/Logger;

    move-result-object v0

    const-string v1, "Uncaught exception in thread {}: {}"

    invoke-virtual {p1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1, p2}, Lcom/autoxing/service/log/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
