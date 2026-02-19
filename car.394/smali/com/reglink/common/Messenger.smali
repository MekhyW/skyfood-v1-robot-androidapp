.class public Lcom/reglink/common/Messenger;
.super Ljava/lang/Object;
.source "Messenger.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/reglink/common/Messenger$MessageCallback;,
        Lcom/reglink/common/Messenger$Callback;
    }
.end annotation


# static fields
.field private static singleton:Lcom/reglink/common/Messenger;


# instance fields
.field private callback:Lcom/reglink/common/Messenger$Callback;

.field private context:Landroid/content/Context;

.field private locker:Ljava/lang/Object;

.field private messageClient:Lcom/reglink/services/IMessageClient;

.field private messageService:Lcom/reglink/services/IMessageService;

.field private observers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/reglink/common/Messenger$MessageCallback;",
            ">;"
        }
    .end annotation
.end field

.field private whiteList:Landroid/util/SparseIntArray;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/reglink/common/Messenger;->locker:Ljava/lang/Object;

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/reglink/common/Messenger;->observers:Ljava/util/ArrayList;

    .line 27
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/reglink/common/Messenger;->whiteList:Landroid/util/SparseIntArray;

    .line 32
    iput-object p1, p0, Lcom/reglink/common/Messenger;->context:Landroid/content/Context;

    .line 33
    invoke-direct {p0}, Lcom/reglink/common/Messenger;->checkMessageService()V

    return-void
.end method

.method static synthetic access$000(Lcom/reglink/common/Messenger;)Landroid/util/SparseIntArray;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/reglink/common/Messenger;->whiteList:Landroid/util/SparseIntArray;

    return-object p0
.end method

.method static synthetic access$100(Lcom/reglink/common/Messenger;)Ljava/util/ArrayList;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/reglink/common/Messenger;->observers:Ljava/util/ArrayList;

    return-object p0
.end method

.method private varargs addWhiteMsg([I)V
    .locals 6

    .line 115
    iget-object v0, p0, Lcom/reglink/common/Messenger;->whiteList:Landroid/util/SparseIntArray;

    monitor-enter v0

    .line 116
    :try_start_0
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget v3, p1, v2

    .line 117
    iget-object v4, p0, Lcom/reglink/common/Messenger;->whiteList:Landroid/util/SparseIntArray;

    const/4 v5, 0x1

    invoke-virtual {v4, v3, v5}, Landroid/util/SparseIntArray;->append(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 119
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

.method private checkMessageService()V
    .locals 2

    .line 39
    :try_start_0
    invoke-static {}, Lcom/reglink/common/ServiceManager;->getDroidService()Lcom/reglink/services/IDroidService;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "Message"

    .line 41
    invoke-interface {v0, v1}, Lcom/reglink/services/IDroidService;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/reglink/services/IMessageService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/reglink/services/IMessageService;

    move-result-object v0

    iput-object v0, p0, Lcom/reglink/common/Messenger;->messageService:Lcom/reglink/services/IMessageService;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 44
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/reglink/common/Messenger;
    .locals 1

    .line 49
    sget-object v0, Lcom/reglink/common/Messenger;->singleton:Lcom/reglink/common/Messenger;

    if-nez v0, :cond_0

    .line 50
    new-instance v0, Lcom/reglink/common/Messenger;

    invoke-direct {v0, p0}, Lcom/reglink/common/Messenger;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/reglink/common/Messenger;->singleton:Lcom/reglink/common/Messenger;

    .line 52
    :cond_0
    sget-object p0, Lcom/reglink/common/Messenger;->singleton:Lcom/reglink/common/Messenger;

    return-object p0
.end method


# virtual methods
.method public call(Lcom/reglink/parcel/Message;Landroid/os/Handler$Callback;)V
    .locals 3

    .line 226
    invoke-direct {p0}, Lcom/reglink/common/Messenger;->checkMessageService()V

    .line 227
    iget-object v0, p0, Lcom/reglink/common/Messenger;->messageService:Lcom/reglink/services/IMessageService;

    if-eqz v0, :cond_1

    .line 228
    invoke-virtual {p1}, Lcom/reglink/parcel/Message;->bundle()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p1, v0}, Lcom/reglink/parcel/Message;->setBundle(Landroid/os/Bundle;)Lcom/reglink/parcel/Message;

    .line 229
    :cond_0
    invoke-virtual {p1}, Lcom/reglink/parcel/Message;->bundle()Landroid/os/Bundle;

    move-result-object v0

    new-instance v1, Landroid/os/Messenger;

    new-instance v2, Lcom/reglink/common/Messenger$2;

    invoke-direct {v2, p0, p2}, Lcom/reglink/common/Messenger$2;-><init>(Lcom/reglink/common/Messenger;Landroid/os/Handler$Callback;)V

    invoke-direct {v1, v2}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    const-string p2, "callback"

    invoke-virtual {v0, p2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 236
    :try_start_0
    iget-object p2, p0, Lcom/reglink/common/Messenger;->messageService:Lcom/reglink/services/IMessageService;

    invoke-interface {p2, p1}, Lcom/reglink/services/IMessageService;->sendMessage(Lcom/reglink/parcel/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 238
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method public call(Lcom/reglink/parcel/Message;Ljava/lang/Runnable;)V
    .locals 3

    .line 208
    invoke-direct {p0}, Lcom/reglink/common/Messenger;->checkMessageService()V

    .line 209
    iget-object v0, p0, Lcom/reglink/common/Messenger;->messageService:Lcom/reglink/services/IMessageService;

    if-eqz v0, :cond_1

    .line 210
    invoke-virtual {p1}, Lcom/reglink/parcel/Message;->bundle()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p1, v0}, Lcom/reglink/parcel/Message;->setBundle(Landroid/os/Bundle;)Lcom/reglink/parcel/Message;

    .line 211
    :cond_0
    invoke-virtual {p1}, Lcom/reglink/parcel/Message;->bundle()Landroid/os/Bundle;

    move-result-object v0

    new-instance v1, Landroid/os/Messenger;

    new-instance v2, Lcom/reglink/common/Messenger$1;

    invoke-direct {v2, p0, p2}, Lcom/reglink/common/Messenger$1;-><init>(Lcom/reglink/common/Messenger;Ljava/lang/Runnable;)V

    invoke-direct {v1, v2}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    const-string p2, "callback"

    invoke-virtual {v0, p2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 218
    :try_start_0
    iget-object p2, p0, Lcom/reglink/common/Messenger;->messageService:Lcom/reglink/services/IMessageService;

    invoke-interface {p2, p1}, Lcom/reglink/services/IMessageService;->sendMessage(Lcom/reglink/parcel/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 220
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onCreate()V
    .locals 0

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 108
    invoke-virtual {p0}, Lcom/reglink/common/Messenger;->unregisterMessageCallback()V

    .line 109
    iget-object v0, p0, Lcom/reglink/common/Messenger;->observers:Ljava/util/ArrayList;

    monitor-enter v0

    .line 110
    :try_start_0
    iget-object v1, p0, Lcom/reglink/common/Messenger;->observers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 111
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onPause()V
    .locals 0

    .line 100
    invoke-virtual {p0}, Lcom/reglink/common/Messenger;->unregisterMessageCallback()V

    return-void
.end method

.method public onResume()V
    .locals 0

    .line 96
    invoke-virtual {p0}, Lcom/reglink/common/Messenger;->registerMessageCallback()Z

    return-void
.end method

.method public registerMessageCallback(ILandroid/os/Handler;I)V
    .locals 2

    .line 123
    invoke-virtual {p0}, Lcom/reglink/common/Messenger;->onResume()V

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 124
    invoke-direct {p0, v0}, Lcom/reglink/common/Messenger;->addWhiteMsg([I)V

    .line 125
    iget-object v0, p0, Lcom/reglink/common/Messenger;->observers:Ljava/util/ArrayList;

    monitor-enter v0

    .line 126
    :try_start_0
    new-instance v1, Lcom/reglink/common/Messenger$MessageCallback;

    invoke-direct {v1, p2, p3}, Lcom/reglink/common/Messenger$MessageCallback;-><init>(Landroid/os/Handler;I)V

    .line 127
    invoke-virtual {v1, p1}, Lcom/reglink/common/Messenger$MessageCallback;->setKey(I)V

    .line 128
    iget-object p1, p0, Lcom/reglink/common/Messenger;->observers:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 129
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public registerMessageCallback(ILandroid/os/Handler;Ljava/lang/Runnable;)V
    .locals 2

    .line 133
    invoke-virtual {p0}, Lcom/reglink/common/Messenger;->onResume()V

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 134
    invoke-direct {p0, v0}, Lcom/reglink/common/Messenger;->addWhiteMsg([I)V

    .line 135
    iget-object v0, p0, Lcom/reglink/common/Messenger;->observers:Ljava/util/ArrayList;

    monitor-enter v0

    .line 136
    :try_start_0
    new-instance v1, Lcom/reglink/common/Messenger$MessageCallback;

    invoke-direct {v1, p2, p3}, Lcom/reglink/common/Messenger$MessageCallback;-><init>(Landroid/os/Handler;Ljava/lang/Runnable;)V

    .line 137
    invoke-virtual {v1, p1}, Lcom/reglink/common/Messenger$MessageCallback;->setKey(I)V

    .line 138
    iget-object p1, p0, Lcom/reglink/common/Messenger;->observers:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 139
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public registerMessageCallback(ILjava/lang/Runnable;)V
    .locals 2

    .line 143
    invoke-virtual {p0}, Lcom/reglink/common/Messenger;->onResume()V

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 144
    invoke-direct {p0, v0}, Lcom/reglink/common/Messenger;->addWhiteMsg([I)V

    .line 145
    iget-object v0, p0, Lcom/reglink/common/Messenger;->observers:Ljava/util/ArrayList;

    monitor-enter v0

    .line 146
    :try_start_0
    new-instance v1, Lcom/reglink/common/Messenger$MessageCallback;

    invoke-direct {v1, p2}, Lcom/reglink/common/Messenger$MessageCallback;-><init>(Ljava/lang/Runnable;)V

    .line 147
    invoke-virtual {v1, p1}, Lcom/reglink/common/Messenger$MessageCallback;->setKey(I)V

    .line 148
    iget-object p1, p0, Lcom/reglink/common/Messenger;->observers:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 149
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method registerMessageCallback()Z
    .locals 6

    .line 56
    iget-object v0, p0, Lcom/reglink/common/Messenger;->locker:Ljava/lang/Object;

    monitor-enter v0

    .line 57
    :try_start_0
    iget-object v1, p0, Lcom/reglink/common/Messenger;->callback:Lcom/reglink/common/Messenger$Callback;

    if-nez v1, :cond_0

    .line 58
    new-instance v1, Lcom/reglink/common/Messenger$Callback;

    invoke-direct {v1, p0}, Lcom/reglink/common/Messenger$Callback;-><init>(Lcom/reglink/common/Messenger;)V

    iput-object v1, p0, Lcom/reglink/common/Messenger;->callback:Lcom/reglink/common/Messenger$Callback;

    .line 60
    :cond_0
    iget-object v1, p0, Lcom/reglink/common/Messenger;->messageClient:Lcom/reglink/services/IMessageClient;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x1

    if-nez v1, :cond_2

    const/4 v1, 0x0

    .line 62
    :try_start_1
    invoke-direct {p0}, Lcom/reglink/common/Messenger;->checkMessageService()V

    .line 63
    iget-object v3, p0, Lcom/reglink/common/Messenger;->messageService:Lcom/reglink/services/IMessageService;

    if-eqz v3, :cond_1

    .line 64
    iget-object v4, p0, Lcom/reglink/common/Messenger;->callback:Lcom/reglink/common/Messenger$Callback;

    invoke-interface {v3, v4}, Lcom/reglink/services/IMessageService;->registerCallback(Lcom/reglink/services/IMessageCallback;)Lcom/reglink/services/IMessageClient;

    move-result-object v3

    iput-object v3, p0, Lcom/reglink/common/Messenger;->messageClient:Lcom/reglink/services/IMessageClient;

    if-eqz v3, :cond_1

    .line 66
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/reglink/common/Messenger;->context:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "-Messenger"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/reglink/services/IMessageClient;->setId(Ljava/lang/String;)V

    .line 67
    iget-object v3, p0, Lcom/reglink/common/Messenger;->messageClient:Lcom/reglink/services/IMessageClient;

    invoke-interface {v3, v2}, Lcom/reglink/services/IMessageClient;->subscribeAny(Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 68
    :try_start_2
    monitor-exit v0

    return v2

    .line 78
    :cond_1
    monitor-exit v0

    return v1

    :catch_0
    move-exception v2

    .line 72
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    .line 73
    monitor-exit v0

    return v1

    .line 76
    :cond_2
    monitor-exit v0

    return v2

    :catchall_0
    move-exception v1

    .line 78
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public sendEmptyMessage(I)V
    .locals 1

    .line 153
    invoke-direct {p0}, Lcom/reglink/common/Messenger;->checkMessageService()V

    .line 154
    iget-object v0, p0, Lcom/reglink/common/Messenger;->messageService:Lcom/reglink/services/IMessageService;

    if-eqz v0, :cond_0

    .line 156
    :try_start_0
    invoke-interface {v0, p1}, Lcom/reglink/services/IMessageService;->sendEmptyMessage(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 158
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public sendEmptyMessageDelayed(II)V
    .locals 3

    .line 164
    invoke-direct {p0}, Lcom/reglink/common/Messenger;->checkMessageService()V

    .line 165
    iget-object v0, p0, Lcom/reglink/common/Messenger;->messageService:Lcom/reglink/services/IMessageService;

    if-eqz v0, :cond_0

    int-to-long v1, p2

    .line 167
    :try_start_0
    invoke-interface {v0, p1, v1, v2}, Lcom/reglink/services/IMessageService;->sendEmptyMessageDelayed(IJ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 169
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public sendMessage(Lcom/reglink/parcel/Message;)V
    .locals 1

    .line 175
    invoke-direct {p0}, Lcom/reglink/common/Messenger;->checkMessageService()V

    .line 176
    iget-object v0, p0, Lcom/reglink/common/Messenger;->messageService:Lcom/reglink/services/IMessageService;

    if-eqz v0, :cond_0

    .line 178
    :try_start_0
    invoke-interface {v0, p1}, Lcom/reglink/services/IMessageService;->sendMessage(Lcom/reglink/parcel/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 180
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public sendMessageDelayed(Lcom/reglink/parcel/Message;I)V
    .locals 3

    .line 186
    invoke-direct {p0}, Lcom/reglink/common/Messenger;->checkMessageService()V

    .line 187
    iget-object v0, p0, Lcom/reglink/common/Messenger;->messageService:Lcom/reglink/services/IMessageService;

    if-eqz v0, :cond_0

    int-to-long v1, p2

    .line 189
    :try_start_0
    invoke-interface {v0, p1, v1, v2}, Lcom/reglink/services/IMessageService;->sendMessageDelayed(Lcom/reglink/parcel/Message;J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 191
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public sendMessageSync(Lcom/reglink/parcel/Message;)V
    .locals 1

    .line 197
    invoke-direct {p0}, Lcom/reglink/common/Messenger;->checkMessageService()V

    .line 198
    iget-object v0, p0, Lcom/reglink/common/Messenger;->messageService:Lcom/reglink/services/IMessageService;

    if-eqz v0, :cond_0

    .line 200
    :try_start_0
    invoke-interface {v0, p1}, Lcom/reglink/services/IMessageService;->sendMessageSync(Lcom/reglink/parcel/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 202
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method unregisterMessageCallback()V
    .locals 3

    .line 83
    iget-object v0, p0, Lcom/reglink/common/Messenger;->locker:Ljava/lang/Object;

    monitor-enter v0

    .line 84
    :try_start_0
    iget-object v1, p0, Lcom/reglink/common/Messenger;->messageClient:Lcom/reglink/services/IMessageClient;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/reglink/common/Messenger;->messageService:Lcom/reglink/services/IMessageService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 86
    :try_start_1
    iget-object v2, p0, Lcom/reglink/common/Messenger;->callback:Lcom/reglink/common/Messenger$Callback;

    invoke-interface {v1, v2}, Lcom/reglink/services/IMessageService;->unregisterCallback(Lcom/reglink/services/IMessageCallback;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 88
    :try_start_2
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    :goto_0
    const/4 v1, 0x0

    .line 91
    iput-object v1, p0, Lcom/reglink/common/Messenger;->messageClient:Lcom/reglink/services/IMessageClient;

    .line 92
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method
