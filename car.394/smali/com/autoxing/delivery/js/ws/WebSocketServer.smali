.class public Lcom/autoxing/delivery/js/ws/WebSocketServer;
.super Ljava/lang/Object;
.source "WebSocketServer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/autoxing/delivery/js/ws/WebSocketServer$MyWebSocketServer;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "WebSocketServer"

.field public static final WS_MESSAGE_STRING:I = 0x4

.field public static final WS_SERVER_START:I = 0x1

.field public static final WS_USER_LEAVE:I = 0x3

.field public static final WS_USER_LOGIN:I = 0x2


# instance fields
.field private isRunning:Z

.field private mAXWebSocketListener:Lcom/autoxing/service/websocket/AXWebSocketListener;

.field private mListener:Lcom/autoxing/delivery/js/ws/OnWebSocketListener;

.field private mMyWebSocketServer:Lcom/autoxing/delivery/js/ws/WebSocketServer$MyWebSocketServer;


# direct methods
.method static bridge synthetic -$$Nest$fgetmAXWebSocketListener(Lcom/autoxing/delivery/js/ws/WebSocketServer;)Lcom/autoxing/service/websocket/AXWebSocketListener;
    .locals 0

    iget-object p0, p0, Lcom/autoxing/delivery/js/ws/WebSocketServer;->mAXWebSocketListener:Lcom/autoxing/service/websocket/AXWebSocketListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmListener(Lcom/autoxing/delivery/js/ws/WebSocketServer;)Lcom/autoxing/delivery/js/ws/OnWebSocketListener;
    .locals 0

    iget-object p0, p0, Lcom/autoxing/delivery/js/ws/WebSocketServer;->mListener:Lcom/autoxing/delivery/js/ws/OnWebSocketListener;

    return-object p0
.end method

.method public constructor <init>(Lcom/autoxing/delivery/js/ws/OnWebSocketListener;)V
    .locals 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    new-instance v0, Lcom/autoxing/delivery/js/ws/WebSocketServer$1;

    invoke-direct {v0, p0}, Lcom/autoxing/delivery/js/ws/WebSocketServer$1;-><init>(Lcom/autoxing/delivery/js/ws/WebSocketServer;)V

    iput-object v0, p0, Lcom/autoxing/delivery/js/ws/WebSocketServer;->mAXWebSocketListener:Lcom/autoxing/service/websocket/AXWebSocketListener;

    .line 21
    iput-object p1, p0, Lcom/autoxing/delivery/js/ws/WebSocketServer;->mListener:Lcom/autoxing/delivery/js/ws/OnWebSocketListener;

    return-void
.end method


# virtual methods
.method public sendMsg(Lcom/autoxing/delivery/js/model/MsgInfo;)V
    .locals 1

    .line 52
    iget-boolean v0, p0, Lcom/autoxing/delivery/js/ws/WebSocketServer;->isRunning:Z

    if-nez v0, :cond_0

    return-void

    .line 55
    :cond_0
    iget-object v0, p0, Lcom/autoxing/delivery/js/ws/WebSocketServer;->mMyWebSocketServer:Lcom/autoxing/delivery/js/ws/WebSocketServer$MyWebSocketServer;

    if-eqz v0, :cond_1

    .line 56
    invoke-virtual {v0, p1}, Lcom/autoxing/delivery/js/ws/WebSocketServer$MyWebSocketServer;->sendMsg(Lcom/autoxing/delivery/js/model/MsgInfo;)V

    :cond_1
    return-void
.end method

.method public sendMsg(Ljava/lang/String;)V
    .locals 1

    .line 43
    iget-boolean v0, p0, Lcom/autoxing/delivery/js/ws/WebSocketServer;->isRunning:Z

    if-nez v0, :cond_0

    return-void

    .line 46
    :cond_0
    iget-object v0, p0, Lcom/autoxing/delivery/js/ws/WebSocketServer;->mMyWebSocketServer:Lcom/autoxing/delivery/js/ws/WebSocketServer$MyWebSocketServer;

    if-eqz v0, :cond_1

    .line 47
    invoke-virtual {v0, p1}, Lcom/autoxing/delivery/js/ws/WebSocketServer$MyWebSocketServer;->sendMsg(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public start(I)V
    .locals 1

    .line 24
    iget-boolean v0, p0, Lcom/autoxing/delivery/js/ws/WebSocketServer;->isRunning:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 27
    iput-boolean v0, p0, Lcom/autoxing/delivery/js/ws/WebSocketServer;->isRunning:Z

    .line 28
    new-instance v0, Lcom/autoxing/delivery/js/ws/WebSocketServer$MyWebSocketServer;

    invoke-direct {v0, p0, p1}, Lcom/autoxing/delivery/js/ws/WebSocketServer$MyWebSocketServer;-><init>(Lcom/autoxing/delivery/js/ws/WebSocketServer;I)V

    iput-object v0, p0, Lcom/autoxing/delivery/js/ws/WebSocketServer;->mMyWebSocketServer:Lcom/autoxing/delivery/js/ws/WebSocketServer$MyWebSocketServer;

    .line 29
    new-instance p1, Ljava/lang/Thread;

    iget-object v0, p0, Lcom/autoxing/delivery/js/ws/WebSocketServer;->mMyWebSocketServer:Lcom/autoxing/delivery/js/ws/WebSocketServer$MyWebSocketServer;

    invoke-direct {p1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public stop()V
    .locals 1

    .line 33
    iget-boolean v0, p0, Lcom/autoxing/delivery/js/ws/WebSocketServer;->isRunning:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 36
    iput-boolean v0, p0, Lcom/autoxing/delivery/js/ws/WebSocketServer;->isRunning:Z

    .line 37
    iget-object v0, p0, Lcom/autoxing/delivery/js/ws/WebSocketServer;->mMyWebSocketServer:Lcom/autoxing/delivery/js/ws/WebSocketServer$MyWebSocketServer;

    if-eqz v0, :cond_1

    .line 38
    invoke-virtual {v0}, Lcom/autoxing/delivery/js/ws/WebSocketServer$MyWebSocketServer;->stop()V

    :cond_1
    return-void
.end method
