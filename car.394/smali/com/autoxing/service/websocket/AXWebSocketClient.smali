.class public Lcom/autoxing/service/websocket/AXWebSocketClient;
.super Ljava/lang/Object;
.source "AXWebSocketClient.java"


# static fields
.field public static final WS_MESSAGE_BYTES:I = 0x4

.field public static final WS_MESSAGE_STRING:I = 0x1

.field public static final WS_ON_CLOSE:I = 0x3

.field public static final WS_ON_CONNECTED:I = 0x0

.field public static final WS_ON_ERROR:I = 0x2

.field public static final WS_START_CONNECT:I = 0x5

.field private static mAXWebSocketClient:Lcom/autoxing/service/websocket/AXWebSocketClient;


# instance fields
.field private client:Lorg/java_websocket/client/WebSocketClient;

.field private isRunning:Z

.field private mAXWebSocketListener:Lcom/autoxing/service/websocket/AXWebSocketListener;

.field private mHeaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mProtocol:Ljava/lang/String;

.field private mUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 21
    iput-boolean v0, p0, Lcom/autoxing/service/websocket/AXWebSocketClient;->isRunning:Z

    const/4 v0, 0x0

    .line 22
    iput-object v0, p0, Lcom/autoxing/service/websocket/AXWebSocketClient;->mProtocol:Ljava/lang/String;

    .line 23
    iput-object v0, p0, Lcom/autoxing/service/websocket/AXWebSocketClient;->mHeaders:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(Lcom/autoxing/service/websocket/AXWebSocketListener;)V
    .locals 1

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 21
    iput-boolean v0, p0, Lcom/autoxing/service/websocket/AXWebSocketClient;->isRunning:Z

    const/4 v0, 0x0

    .line 22
    iput-object v0, p0, Lcom/autoxing/service/websocket/AXWebSocketClient;->mProtocol:Ljava/lang/String;

    .line 23
    iput-object v0, p0, Lcom/autoxing/service/websocket/AXWebSocketClient;->mHeaders:Ljava/util/Map;

    .line 66
    iput-object p1, p0, Lcom/autoxing/service/websocket/AXWebSocketClient;->mAXWebSocketListener:Lcom/autoxing/service/websocket/AXWebSocketListener;

    return-void
.end method

.method static synthetic access$0(Lcom/autoxing/service/websocket/AXWebSocketClient;)Lcom/autoxing/service/websocket/AXWebSocketListener;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/autoxing/service/websocket/AXWebSocketClient;->mAXWebSocketListener:Lcom/autoxing/service/websocket/AXWebSocketListener;

    return-object p0
.end method

.method static synthetic access$1(Lcom/autoxing/service/websocket/AXWebSocketClient;)Z
    .locals 0

    .line 21
    iget-boolean p0, p0, Lcom/autoxing/service/websocket/AXWebSocketClient;->isRunning:Z

    return p0
.end method

.method static synthetic access$2(Lcom/autoxing/service/websocket/AXWebSocketClient;)V
    .locals 0

    .line 94
    invoke-direct {p0}, Lcom/autoxing/service/websocket/AXWebSocketClient;->doConnect()V

    return-void
.end method

.method private doConnect()V
    .locals 4

    .line 95
    iget-object v0, p0, Lcom/autoxing/service/websocket/AXWebSocketClient;->mAXWebSocketListener:Lcom/autoxing/service/websocket/AXWebSocketListener;

    if-eqz v0, :cond_0

    .line 96
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "WebSocket doConnect -> isRunning="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/autoxing/service/websocket/AXWebSocketClient;->isRunning:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x5

    invoke-interface {v0, v2, v1}, Lcom/autoxing/service/websocket/AXWebSocketListener;->onWebSocketResponse(ILjava/lang/Object;)V

    .line 97
    :cond_0
    iget-boolean v0, p0, Lcom/autoxing/service/websocket/AXWebSocketClient;->isRunning:Z

    if-nez v0, :cond_1

    return-void

    .line 100
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/autoxing/service/websocket/AXWebSocketClient;->client:Lorg/java_websocket/client/WebSocketClient;

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    .line 101
    iput-object v0, p0, Lcom/autoxing/service/websocket/AXWebSocketClient;->client:Lorg/java_websocket/client/WebSocketClient;

    .line 103
    :cond_2
    iget-object v0, p0, Lcom/autoxing/service/websocket/AXWebSocketClient;->mProtocol:Ljava/lang/String;

    if-eqz v0, :cond_3

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 104
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 105
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 106
    new-instance v2, Lorg/java_websocket/protocols/Protocol;

    iget-object v3, p0, Lcom/autoxing/service/websocket/AXWebSocketClient;->mProtocol:Ljava/lang/String;

    invoke-direct {v2, v3}, Lorg/java_websocket/protocols/Protocol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 107
    new-instance v2, Lorg/java_websocket/drafts/Draft_6455;

    invoke-direct {v2, v0, v1}, Lorg/java_websocket/drafts/Draft_6455;-><init>(Ljava/util/List;Ljava/util/List;)V

    goto :goto_0

    .line 109
    :cond_3
    new-instance v2, Lorg/java_websocket/drafts/Draft_6455;

    invoke-direct {v2}, Lorg/java_websocket/drafts/Draft_6455;-><init>()V

    .line 111
    :goto_0
    new-instance v0, Lcom/autoxing/service/websocket/AXWebSocketClient$2;

    new-instance v1, Ljava/net/URI;

    iget-object v3, p0, Lcom/autoxing/service/websocket/AXWebSocketClient;->mUrl:Ljava/lang/String;

    invoke-direct {v1, v3}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/autoxing/service/websocket/AXWebSocketClient;->mHeaders:Ljava/util/Map;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/autoxing/service/websocket/AXWebSocketClient$2;-><init>(Lcom/autoxing/service/websocket/AXWebSocketClient;Ljava/net/URI;Lorg/java_websocket/drafts/Draft;Ljava/util/Map;)V

    iput-object v0, p0, Lcom/autoxing/service/websocket/AXWebSocketClient;->client:Lorg/java_websocket/client/WebSocketClient;

    .line 153
    iget-boolean v1, p0, Lcom/autoxing/service/websocket/AXWebSocketClient;->isRunning:Z

    if-nez v1, :cond_4

    return-void

    .line 155
    :cond_4
    invoke-virtual {v0}, Lorg/java_websocket/client/WebSocketClient;->connect()V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 158
    iget-object v1, p0, Lcom/autoxing/service/websocket/AXWebSocketClient;->mAXWebSocketListener:Lcom/autoxing/service/websocket/AXWebSocketListener;

    if-eqz v1, :cond_5

    const/4 v2, 0x2

    .line 159
    invoke-virtual {v0}, Ljava/net/URISyntaxException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/autoxing/service/websocket/AXWebSocketListener;->onWebSocketResponse(ILjava/lang/Object;)V

    :cond_5
    :goto_1
    return-void
.end method

.method public static getInstance(Lcom/autoxing/service/websocket/AXWebSocketListener;)Lcom/autoxing/service/websocket/AXWebSocketClient;
    .locals 1

    .line 70
    sget-object v0, Lcom/autoxing/service/websocket/AXWebSocketClient;->mAXWebSocketClient:Lcom/autoxing/service/websocket/AXWebSocketClient;

    if-nez v0, :cond_0

    .line 71
    new-instance v0, Lcom/autoxing/service/websocket/AXWebSocketClient;

    invoke-direct {v0, p0}, Lcom/autoxing/service/websocket/AXWebSocketClient;-><init>(Lcom/autoxing/service/websocket/AXWebSocketListener;)V

    sput-object v0, Lcom/autoxing/service/websocket/AXWebSocketClient;->mAXWebSocketClient:Lcom/autoxing/service/websocket/AXWebSocketClient;

    .line 73
    :cond_0
    sget-object p0, Lcom/autoxing/service/websocket/AXWebSocketClient;->mAXWebSocketClient:Lcom/autoxing/service/websocket/AXWebSocketClient;

    return-object p0
.end method

.method public static main([Ljava/lang/String;)V
    .locals 1

    .line 33
    new-instance p0, Lcom/autoxing/service/websocket/AXWebSocketClient$1;

    invoke-direct {p0}, Lcom/autoxing/service/websocket/AXWebSocketClient$1;-><init>()V

    invoke-static {p0}, Lcom/autoxing/service/websocket/AXWebSocketClient;->getInstance(Lcom/autoxing/service/websocket/AXWebSocketListener;)Lcom/autoxing/service/websocket/AXWebSocketClient;

    move-result-object p0

    const-string v0, "ws://172.21.4.186:8081/adnavi/vediosocket/C17B6C99-0A95-2985-37BB-EDBE3DC64D7D&0&0"

    .line 44
    invoke-virtual {p0, v0}, Lcom/autoxing/service/websocket/AXWebSocketClient;->start(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public send(Ljava/lang/String;)V
    .locals 2

    .line 178
    iget-object v0, p0, Lcom/autoxing/service/websocket/AXWebSocketClient;->client:Lorg/java_websocket/client/WebSocketClient;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/java_websocket/client/WebSocketClient;->getReadyState()Lorg/java_websocket/enums/ReadyState;

    move-result-object v0

    sget-object v1, Lorg/java_websocket/enums/ReadyState;->OPEN:Lorg/java_websocket/enums/ReadyState;

    invoke-virtual {v0, v1}, Lorg/java_websocket/enums/ReadyState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 179
    iget-object v0, p0, Lcom/autoxing/service/websocket/AXWebSocketClient;->client:Lorg/java_websocket/client/WebSocketClient;

    invoke-virtual {v0, p1}, Lorg/java_websocket/client/WebSocketClient;->send(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public send([B)V
    .locals 2

    .line 173
    iget-object v0, p0, Lcom/autoxing/service/websocket/AXWebSocketClient;->client:Lorg/java_websocket/client/WebSocketClient;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/java_websocket/client/WebSocketClient;->getReadyState()Lorg/java_websocket/enums/ReadyState;

    move-result-object v0

    sget-object v1, Lorg/java_websocket/enums/ReadyState;->OPEN:Lorg/java_websocket/enums/ReadyState;

    invoke-virtual {v0, v1}, Lorg/java_websocket/enums/ReadyState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 174
    iget-object v0, p0, Lcom/autoxing/service/websocket/AXWebSocketClient;->client:Lorg/java_websocket/client/WebSocketClient;

    invoke-virtual {v0, p1}, Lorg/java_websocket/client/WebSocketClient;->send([B)V

    :cond_0
    return-void
.end method

.method public setHeaders(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 81
    iput-object p1, p0, Lcom/autoxing/service/websocket/AXWebSocketClient;->mHeaders:Ljava/util/Map;

    return-void
.end method

.method public setListener(Lcom/autoxing/service/websocket/AXWebSocketListener;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/autoxing/service/websocket/AXWebSocketClient;->mAXWebSocketListener:Lcom/autoxing/service/websocket/AXWebSocketListener;

    return-void
.end method

.method public setProtocol(Ljava/lang/String;)V
    .locals 0

    .line 77
    iput-object p1, p0, Lcom/autoxing/service/websocket/AXWebSocketClient;->mProtocol:Ljava/lang/String;

    return-void
.end method

.method public start(Ljava/lang/String;)V
    .locals 1

    .line 87
    iget-boolean v0, p0, Lcom/autoxing/service/websocket/AXWebSocketClient;->isRunning:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 89
    iput-boolean v0, p0, Lcom/autoxing/service/websocket/AXWebSocketClient;->isRunning:Z

    .line 90
    iput-object p1, p0, Lcom/autoxing/service/websocket/AXWebSocketClient;->mUrl:Ljava/lang/String;

    .line 91
    invoke-direct {p0}, Lcom/autoxing/service/websocket/AXWebSocketClient;->doConnect()V

    return-void
.end method

.method public stop()V
    .locals 2

    .line 164
    iget-boolean v0, p0, Lcom/autoxing/service/websocket/AXWebSocketClient;->isRunning:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 166
    iput-boolean v0, p0, Lcom/autoxing/service/websocket/AXWebSocketClient;->isRunning:Z

    .line 167
    iget-object v0, p0, Lcom/autoxing/service/websocket/AXWebSocketClient;->client:Lorg/java_websocket/client/WebSocketClient;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/java_websocket/client/WebSocketClient;->getReadyState()Lorg/java_websocket/enums/ReadyState;

    move-result-object v0

    sget-object v1, Lorg/java_websocket/enums/ReadyState;->OPEN:Lorg/java_websocket/enums/ReadyState;

    invoke-virtual {v0, v1}, Lorg/java_websocket/enums/ReadyState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 168
    iget-object v0, p0, Lcom/autoxing/service/websocket/AXWebSocketClient;->client:Lorg/java_websocket/client/WebSocketClient;

    invoke-virtual {v0}, Lorg/java_websocket/client/WebSocketClient;->close()V

    :cond_1
    const/4 v0, 0x0

    .line 169
    iput-object v0, p0, Lcom/autoxing/service/websocket/AXWebSocketClient;->client:Lorg/java_websocket/client/WebSocketClient;

    return-void
.end method
