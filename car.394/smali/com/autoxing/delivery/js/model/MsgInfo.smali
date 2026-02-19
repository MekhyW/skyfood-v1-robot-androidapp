.class public Lcom/autoxing/delivery/js/model/MsgInfo;
.super Ljava/lang/Object;
.source "MsgInfo.java"


# instance fields
.field private conn:Lorg/java_websocket/WebSocket;

.field private message:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/java_websocket/WebSocket;Ljava/lang/String;)V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lcom/autoxing/delivery/js/model/MsgInfo;->conn:Lorg/java_websocket/WebSocket;

    .line 11
    iput-object p2, p0, Lcom/autoxing/delivery/js/model/MsgInfo;->message:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getConn()Lorg/java_websocket/WebSocket;
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/autoxing/delivery/js/model/MsgInfo;->conn:Lorg/java_websocket/WebSocket;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/autoxing/delivery/js/model/MsgInfo;->message:Ljava/lang/String;

    return-object v0
.end method

.method public setConn(Lorg/java_websocket/WebSocket;)V
    .locals 0

    .line 19
    iput-object p1, p0, Lcom/autoxing/delivery/js/model/MsgInfo;->conn:Lorg/java_websocket/WebSocket;

    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 0

    .line 27
    iput-object p1, p0, Lcom/autoxing/delivery/js/model/MsgInfo;->message:Ljava/lang/String;

    return-void
.end method
