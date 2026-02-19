.class public Lcom/reglink/mcu/MCUProtocolHelper;
.super Lcom/reglink/services/ICommDataCallback$Stub;
.source "MCUProtocolHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/reglink/mcu/MCUProtocolHelper$OnCompletion;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "McuSyncHelper"

.field static instance:Lcom/reglink/mcu/MCUProtocolHelper;


# instance fields
.field private H:Landroid/os/Handler;

.field private communicationService:Lcom/reglink/services/ICommunicationService;

.field mcuProtocol:Lcom/reglink/mcu/MCUProtocol;

.field private final subscriber:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/ArrayList<",
            "Lcom/reglink/mcu/MCUProtocolHelper$OnCompletion;",
            ">;>;"
        }
    .end annotation
.end field

.field private final waitQueue:Lcom/reglink/common/WaitQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/reglink/common/WaitQueue<",
            "Ljava/lang/Integer;",
            "Lcom/reglink/parcel/McuProtocolPacket;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 32
    new-instance v0, Lcom/reglink/mcu/MCUProtocolHelper;

    invoke-direct {v0}, Lcom/reglink/mcu/MCUProtocolHelper;-><init>()V

    sput-object v0, Lcom/reglink/mcu/MCUProtocolHelper;->instance:Lcom/reglink/mcu/MCUProtocolHelper;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 37
    invoke-direct {p0}, Lcom/reglink/services/ICommDataCallback$Stub;-><init>()V

    .line 27
    new-instance v0, Lcom/reglink/common/WaitQueue;

    invoke-direct {v0}, Lcom/reglink/common/WaitQueue;-><init>()V

    iput-object v0, p0, Lcom/reglink/mcu/MCUProtocolHelper;->waitQueue:Lcom/reglink/common/WaitQueue;

    .line 28
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/reglink/mcu/MCUProtocolHelper;->subscriber:Landroid/util/SparseArray;

    .line 29
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/reglink/mcu/MCUProtocolHelper;->H:Landroid/os/Handler;

    const/16 v1, 0x3e8

    .line 38
    invoke-virtual {v0, v1}, Lcom/reglink/common/WaitQueue;->setDefaultTimeout(I)V

    return-void
.end method

.method static synthetic access$000(Lcom/reglink/mcu/MCUProtocolHelper;)Lcom/reglink/services/ICommunicationService;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/reglink/mcu/MCUProtocolHelper;->communicationService:Lcom/reglink/services/ICommunicationService;

    return-object p0
.end method

.method static synthetic access$100(Lcom/reglink/mcu/MCUProtocolHelper;)Landroid/os/Handler;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/reglink/mcu/MCUProtocolHelper;->H:Landroid/os/Handler;

    return-object p0
.end method

.method public static getInstance()Lcom/reglink/mcu/MCUProtocolHelper;
    .locals 1

    .line 34
    sget-object v0, Lcom/reglink/mcu/MCUProtocolHelper;->instance:Lcom/reglink/mcu/MCUProtocolHelper;

    return-object v0
.end method


# virtual methods
.method public commDataCallback(Lcom/reglink/parcel/McuProtocolPacket;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    if-eqz p1, :cond_2

    .line 52
    invoke-virtual {p1}, Lcom/reglink/parcel/McuProtocolPacket;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    goto :goto_1

    .line 53
    :cond_0
    invoke-virtual {p1}, Lcom/reglink/parcel/McuProtocolPacket;->command()I

    move-result v0

    shl-int/lit8 v0, v0, 0x8

    const/4 v1, 0x0

    .line 55
    invoke-virtual {p1, v1}, Lcom/reglink/parcel/McuProtocolPacket;->getUByte(I)I

    move-result v1

    or-int/2addr v0, v1

    .line 57
    iget-object v1, p0, Lcom/reglink/mcu/MCUProtocolHelper;->waitQueue:Lcom/reglink/common/WaitQueue;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Lcom/reglink/common/WaitQueue;->notifyComplete(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 59
    iget-object v1, p0, Lcom/reglink/mcu/MCUProtocolHelper;->subscriber:Landroid/util/SparseArray;

    monitor-enter v1

    .line 60
    :try_start_0
    iget-object v2, p0, Lcom/reglink/mcu/MCUProtocolHelper;->subscriber:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 62
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/reglink/mcu/MCUProtocolHelper$OnCompletion;

    .line 63
    invoke-interface {v2, p1}, Lcom/reglink/mcu/MCUProtocolHelper$OnCompletion;->onCompletion(Lcom/reglink/parcel/McuProtocolPacket;)V

    goto :goto_0

    .line 66
    :cond_1
    monitor-exit v1

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_2
    :goto_1
    return-void
.end method

.method public getMcuVersion()Ljava/lang/String;
    .locals 3

    .line 149
    iget-object v0, p0, Lcom/reglink/mcu/MCUProtocolHelper;->waitQueue:Lcom/reglink/common/WaitQueue;

    const v1, 0xee00

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/reglink/common/WaitQueue;->submit(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 150
    iget-object v1, p0, Lcom/reglink/mcu/MCUProtocolHelper;->mcuProtocol:Lcom/reglink/mcu/MCUProtocol;

    invoke-virtual {v1}, Lcom/reglink/mcu/MCUProtocol;->queryMCUSW_Version()V

    .line 151
    iget-object v1, p0, Lcom/reglink/mcu/MCUProtocolHelper;->waitQueue:Lcom/reglink/common/WaitQueue;

    invoke-virtual {v1, v0}, Lcom/reglink/common/WaitQueue;->waitResult(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/reglink/parcel/McuProtocolPacket;

    if-nez v0, :cond_0

    const-string v0, "unknown"

    return-object v0

    .line 153
    :cond_0
    invoke-virtual {v0}, Lcom/reglink/parcel/McuProtocolPacket;->length()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-virtual {v0, v2, v1}, Lcom/reglink/parcel/McuProtocolPacket;->slice(II)[B

    move-result-object v0

    .line 154
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    return-object v1
.end method

.method public init(Lcom/reglink/services/ICommunicationService;)V
    .locals 2

    .line 41
    iput-object p1, p0, Lcom/reglink/mcu/MCUProtocolHelper;->communicationService:Lcom/reglink/services/ICommunicationService;

    .line 42
    new-instance v0, Lcom/reglink/mcu/MCUProtocol;

    invoke-direct {v0, p1}, Lcom/reglink/mcu/MCUProtocol;-><init>(Lcom/reglink/services/ICommunicationService;)V

    iput-object v0, p0, Lcom/reglink/mcu/MCUProtocolHelper;->mcuProtocol:Lcom/reglink/mcu/MCUProtocol;

    .line 44
    :try_start_0
    iget-object p1, p0, Lcom/reglink/mcu/MCUProtocolHelper;->communicationService:Lcom/reglink/services/ICommunicationService;

    invoke-interface {p1, p0}, Lcom/reglink/services/ICommunicationService;->registerCommDataCallback(Lcom/reglink/services/ICommDataCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "McuSyncHelper"

    const-string v1, "setCommunicationService"

    .line 46
    invoke-static {v0, v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public queue(Ljava/lang/Runnable;ILcom/reglink/mcu/MCUProtocolHelper$OnCompletion;)V
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/reglink/mcu/MCUProtocolHelper;->waitQueue:Lcom/reglink/common/WaitQueue;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/reglink/common/WaitQueue;->submit(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 88
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 89
    iget-object p1, p0, Lcom/reglink/mcu/MCUProtocolHelper;->waitQueue:Lcom/reglink/common/WaitQueue;

    invoke-virtual {p1, p2}, Lcom/reglink/common/WaitQueue;->waitResult(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/reglink/parcel/McuProtocolPacket;

    .line 90
    invoke-interface {p3, p1}, Lcom/reglink/mcu/MCUProtocolHelper$OnCompletion;->onCompletion(Lcom/reglink/parcel/McuProtocolPacket;)V

    return-void
.end method

.method public queueAsync(Ljava/lang/Runnable;ILcom/reglink/mcu/MCUProtocolHelper$OnCompletion;)V
    .locals 2

    .line 111
    iget-object v0, p0, Lcom/reglink/mcu/MCUProtocolHelper;->waitQueue:Lcom/reglink/common/WaitQueue;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    new-instance v1, Lcom/reglink/mcu/MCUProtocolHelper$3;

    invoke-direct {v1, p0, p3}, Lcom/reglink/mcu/MCUProtocolHelper$3;-><init>(Lcom/reglink/mcu/MCUProtocolHelper;Lcom/reglink/mcu/MCUProtocolHelper$OnCompletion;)V

    invoke-virtual {v0, p2, v1}, Lcom/reglink/common/WaitQueue;->asyncCallback(Ljava/lang/Object;Lcom/reglink/common/WaitQueue$CompletionCallback;)V

    .line 122
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public quque([BLcom/reglink/mcu/MCUProtocolHelper$OnCompletion;)V
    .locals 2

    .line 70
    array-length v0, p1

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    const/4 v0, 0x0

    .line 71
    aget-byte v0, p1, v0

    shl-int/lit8 v0, v0, 0x8

    const/4 v1, 0x1

    .line 73
    aget-byte v1, p1, v1

    or-int/2addr v0, v1

    .line 74
    new-instance v1, Lcom/reglink/mcu/MCUProtocolHelper$1;

    invoke-direct {v1, p0, p1}, Lcom/reglink/mcu/MCUProtocolHelper$1;-><init>(Lcom/reglink/mcu/MCUProtocolHelper;[B)V

    invoke-virtual {p0, v1, v0, p2}, Lcom/reglink/mcu/MCUProtocolHelper;->queue(Ljava/lang/Runnable;ILcom/reglink/mcu/MCUProtocolHelper$OnCompletion;)V

    return-void

    .line 70
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "command.length must > 2"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public ququeAsync([BLcom/reglink/mcu/MCUProtocolHelper$OnCompletion;)V
    .locals 2

    .line 94
    array-length v0, p1

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    const/4 v0, 0x0

    .line 95
    aget-byte v0, p1, v0

    shl-int/lit8 v0, v0, 0x8

    const/4 v1, 0x1

    .line 97
    aget-byte v1, p1, v1

    or-int/2addr v0, v1

    .line 98
    new-instance v1, Lcom/reglink/mcu/MCUProtocolHelper$2;

    invoke-direct {v1, p0, p1}, Lcom/reglink/mcu/MCUProtocolHelper$2;-><init>(Lcom/reglink/mcu/MCUProtocolHelper;[B)V

    invoke-virtual {p0, v1, v0, p2}, Lcom/reglink/mcu/MCUProtocolHelper;->queueAsync(Ljava/lang/Runnable;ILcom/reglink/mcu/MCUProtocolHelper$OnCompletion;)V

    return-void

    .line 94
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "command.length must > 2"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public subscribe(ILcom/reglink/mcu/MCUProtocolHelper$OnCompletion;)V
    .locals 3

    .line 128
    iget-object v0, p0, Lcom/reglink/mcu/MCUProtocolHelper;->subscriber:Landroid/util/SparseArray;

    monitor-enter v0

    .line 129
    :try_start_0
    iget-object v1, p0, Lcom/reglink/mcu/MCUProtocolHelper;->subscriber:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    if-nez v1, :cond_0

    .line 131
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 132
    iget-object v2, p0, Lcom/reglink/mcu/MCUProtocolHelper;->subscriber:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 134
    :cond_0
    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 135
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public unsubscribe(ILcom/reglink/mcu/MCUProtocolHelper$OnCompletion;)V
    .locals 2

    .line 139
    iget-object v0, p0, Lcom/reglink/mcu/MCUProtocolHelper;->subscriber:Landroid/util/SparseArray;

    monitor-enter v0

    .line 140
    :try_start_0
    iget-object v1, p0, Lcom/reglink/mcu/MCUProtocolHelper;->subscriber:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    if-eqz p1, :cond_0

    .line 142
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 144
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
