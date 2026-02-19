.class public Lcom/autoxing/service/websocket/AXWebServerManager;
.super Ljava/lang/Object;
.source "AXWebServerManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/autoxing/service/websocket/AXWebServerManager$SocketUser;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AXWebServerManager"


# instance fields
.field private mAXWebSocketListener:Lcom/autoxing/service/websocket/AXWebSocketListener;

.field private serverSocket:Lcom/autoxing/service/websocket/AXWebSocketServer;

.field private userMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/java_websocket/WebSocket;",
            "Lcom/autoxing/service/websocket/AXWebServerManager$SocketUser;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/autoxing/service/websocket/AXWebSocketListener;)V
    .locals 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 11
    iput-object v0, p0, Lcom/autoxing/service/websocket/AXWebServerManager;->serverSocket:Lcom/autoxing/service/websocket/AXWebSocketServer;

    .line 12
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/autoxing/service/websocket/AXWebServerManager;->userMap:Ljava/util/Map;

    .line 32
    iput-object p1, p0, Lcom/autoxing/service/websocket/AXWebServerManager;->mAXWebSocketListener:Lcom/autoxing/service/websocket/AXWebSocketListener;

    return-void
.end method

.method private debug(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 165
    iget-object v0, p0, Lcom/autoxing/service/websocket/AXWebServerManager;->mAXWebSocketListener:Lcom/autoxing/service/websocket/AXWebSocketListener;

    if-eqz v0, :cond_0

    .line 166
    invoke-interface {v0, p1, p2}, Lcom/autoxing/service/websocket/AXWebSocketListener;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 168
    :cond_0
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "]"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method private declared-synchronized send(Lorg/java_websocket/WebSocket;Ljava/lang/String;)V
    .locals 0

    monitor-enter p0

    .line 102
    :try_start_0
    invoke-interface {p1, p2}, Lorg/java_websocket/WebSocket;->send(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 103
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private sendMessageToAll(Ljava/lang/String;)V
    .locals 3

    .line 106
    iget-object v0, p0, Lcom/autoxing/service/websocket/AXWebServerManager;->userMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 107
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_1

    return-void

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/java_websocket/WebSocket;

    .line 108
    iget-object v2, p0, Lcom/autoxing/service/websocket/AXWebServerManager;->userMap:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/autoxing/service/websocket/AXWebServerManager$SocketUser;

    if-eqz v2, :cond_0

    .line 110
    invoke-direct {p0, v1, p1}, Lcom/autoxing/service/websocket/AXWebServerManager;->send(Lorg/java_websocket/WebSocket;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method onMessage(Lorg/java_websocket/WebSocket;Ljava/lang/String;)V
    .locals 1

    .line 76
    iget-object p1, p0, Lcom/autoxing/service/websocket/AXWebServerManager;->mAXWebSocketListener:Lcom/autoxing/service/websocket/AXWebSocketListener;

    if-eqz p1, :cond_0

    const/4 v0, 0x4

    .line 77
    invoke-interface {p1, v0, p2}, Lcom/autoxing/service/websocket/AXWebSocketListener;->onWebSocketResponse(ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public send(Ljava/lang/String;)V
    .locals 0

    .line 116
    invoke-direct {p0, p1}, Lcom/autoxing/service/websocket/AXWebServerManager;->sendMessageToAll(Ljava/lang/String;)V

    return-void
.end method

.method public send(Ljava/lang/String;I)V
    .locals 3

    .line 120
    iget-object v0, p0, Lcom/autoxing/service/websocket/AXWebServerManager;->userMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 121
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_1

    return-void

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/java_websocket/WebSocket;

    .line 122
    iget-object v2, p0, Lcom/autoxing/service/websocket/AXWebServerManager;->userMap:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/autoxing/service/websocket/AXWebServerManager$SocketUser;

    if-eqz v2, :cond_0

    .line 123
    iget v2, v2, Lcom/autoxing/service/websocket/AXWebServerManager$SocketUser;->from:I

    if-ne v2, p2, :cond_0

    .line 124
    invoke-direct {p0, v1, p1}, Lcom/autoxing/service/websocket/AXWebServerManager;->send(Lorg/java_websocket/WebSocket;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public start(I)Z
    .locals 4

    const/4 v0, 0x0

    const-string v1, "AXWebServerManager"

    if-gez p1, :cond_0

    const-string p1, "Port error..."

    .line 131
    invoke-direct {p0, v1, p1}, Lcom/autoxing/service/websocket/AXWebServerManager;->debug(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_0
    const-string v2, "Start ServerSocket..."

    .line 134
    invoke-direct {p0, v1, v2}, Lcom/autoxing/service/websocket/AXWebServerManager;->debug(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x1

    .line 137
    :try_start_0
    new-instance v3, Lcom/autoxing/service/websocket/AXWebSocketServer;

    invoke-direct {v3, p0, p1}, Lcom/autoxing/service/websocket/AXWebSocketServer;-><init>(Lcom/autoxing/service/websocket/AXWebServerManager;I)V

    iput-object v3, p0, Lcom/autoxing/service/websocket/AXWebServerManager;->serverSocket:Lcom/autoxing/service/websocket/AXWebSocketServer;

    .line 138
    invoke-virtual {v3}, Lcom/autoxing/service/websocket/AXWebSocketServer;->start()V

    const-string p1, "Start ServerSocket Success..."

    .line 139
    invoke-direct {p0, v1, p1}, Lcom/autoxing/service/websocket/AXWebServerManager;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    iget-object p1, p0, Lcom/autoxing/service/websocket/AXWebServerManager;->mAXWebSocketListener:Lcom/autoxing/service/websocket/AXWebSocketListener;

    if-eqz p1, :cond_1

    .line 141
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Lcom/autoxing/service/websocket/AXWebSocketListener;->onWebSocketResponse(ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return v2

    :catch_0
    move-exception p1

    const-string v3, "Start Failed..."

    .line 144
    invoke-direct {p0, v1, v3}, Lcom/autoxing/service/websocket/AXWebServerManager;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 146
    iget-object p1, p0, Lcom/autoxing/service/websocket/AXWebServerManager;->mAXWebSocketListener:Lcom/autoxing/service/websocket/AXWebSocketListener;

    if-eqz p1, :cond_2

    .line 147
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v2, v1}, Lcom/autoxing/service/websocket/AXWebSocketListener;->onWebSocketResponse(ILjava/lang/Object;)V

    :cond_2
    return v0
.end method

.method public stop()Z
    .locals 3

    const-string v0, "AXWebServerManager"

    .line 154
    :try_start_0
    iget-object v1, p0, Lcom/autoxing/service/websocket/AXWebServerManager;->serverSocket:Lcom/autoxing/service/websocket/AXWebSocketServer;

    invoke-virtual {v1}, Lcom/autoxing/service/websocket/AXWebSocketServer;->stop()V

    const-string v1, "Stop ServerSocket Success..."

    .line 155
    invoke-direct {p0, v0, v1}, Lcom/autoxing/service/websocket/AXWebServerManager;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v1

    const-string v2, "Stop ServerSocket Failed..."

    .line 158
    invoke-direct {p0, v0, v2}, Lcom/autoxing/service/websocket/AXWebServerManager;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    return v0
.end method

.method userLeave(Lorg/java_websocket/WebSocket;)V
    .locals 2

    .line 67
    iget-object v0, p0, Lcom/autoxing/service/websocket/AXWebServerManager;->userMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/autoxing/service/websocket/AXWebServerManager;->userMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autoxing/service/websocket/AXWebServerManager$SocketUser;

    .line 69
    iget-object v1, p0, Lcom/autoxing/service/websocket/AXWebServerManager;->userMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    iget-object p1, p0, Lcom/autoxing/service/websocket/AXWebServerManager;->mAXWebSocketListener:Lcom/autoxing/service/websocket/AXWebSocketListener;

    if-eqz p1, :cond_0

    const/4 v1, 0x3

    .line 71
    invoke-interface {p1, v1, v0}, Lcom/autoxing/service/websocket/AXWebSocketListener;->onWebSocketResponse(ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method userLogin(Ljava/lang/String;Lorg/java_websocket/WebSocket;)V
    .locals 5

    if-eqz p1, :cond_4

    const-string v0, ""

    .line 36
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "null"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_2

    :cond_0
    const/4 v1, -0x1

    const/4 v2, 0x0

    :try_start_0
    const-string v3, "\\{"

    .line 43
    invoke-virtual {p1, v3, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v3, "\\}"

    invoke-virtual {p1, v3, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v3, "%7B"

    .line 44
    invoke-virtual {p1, v3, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v3, "%7D"

    invoke-virtual {p1, v3, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v3, "/"

    .line 45
    invoke-virtual {p1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 46
    array-length v3, p1

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    aget-object p1, p1, v3

    const-string v3, "&"

    invoke-virtual {p1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 v3, 0x0

    .line 47
    aget-object v2, p1, v3

    .line 48
    aget-object p1, p1, v4

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 50
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    move p1, v1

    :goto_0
    if-eqz v2, :cond_3

    .line 52
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    if-ne p1, v1, :cond_1

    goto :goto_1

    .line 56
    :cond_1
    new-instance v0, Lcom/autoxing/service/websocket/AXWebServerManager$SocketUser;

    invoke-direct {v0, p0}, Lcom/autoxing/service/websocket/AXWebServerManager$SocketUser;-><init>(Lcom/autoxing/service/websocket/AXWebServerManager;)V

    .line 57
    iput-object v2, v0, Lcom/autoxing/service/websocket/AXWebServerManager$SocketUser;->guid:Ljava/lang/String;

    .line 58
    iput p1, v0, Lcom/autoxing/service/websocket/AXWebServerManager$SocketUser;->from:I

    .line 59
    iget-object p1, p0, Lcom/autoxing/service/websocket/AXWebServerManager;->userMap:Ljava/util/Map;

    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "{\"reqType\":\"onConnected\",\"code\":0, \"errText\":\"\"}"

    .line 61
    invoke-direct {p0, p2, p1}, Lcom/autoxing/service/websocket/AXWebServerManager;->send(Lorg/java_websocket/WebSocket;Ljava/lang/String;)V

    .line 62
    iget-object p1, p0, Lcom/autoxing/service/websocket/AXWebServerManager;->mAXWebSocketListener:Lcom/autoxing/service/websocket/AXWebSocketListener;

    if-eqz p1, :cond_2

    const/4 p2, 0x2

    .line 63
    invoke-interface {p1, p2, v0}, Lcom/autoxing/service/websocket/AXWebSocketListener;->onWebSocketResponse(ILjava/lang/Object;)V

    :cond_2
    return-void

    .line 53
    :cond_3
    :goto_1
    invoke-interface {p2}, Lorg/java_websocket/WebSocket;->close()V

    return-void

    .line 37
    :cond_4
    :goto_2
    invoke-interface {p2}, Lorg/java_websocket/WebSocket;->close()V

    return-void
.end method
