.class Lcom/reglink/common/Messenger$Callback;
.super Lcom/reglink/services/IMessageCallback$Stub;
.source "Messenger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/reglink/common/Messenger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Callback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/reglink/common/Messenger;


# direct methods
.method constructor <init>(Lcom/reglink/common/Messenger;)V
    .locals 0

    .line 243
    iput-object p1, p0, Lcom/reglink/common/Messenger$Callback;->this$0:Lcom/reglink/common/Messenger;

    invoke-direct {p0}, Lcom/reglink/services/IMessageCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Lcom/reglink/parcel/Message;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 247
    iget-object v0, p0, Lcom/reglink/common/Messenger$Callback;->this$0:Lcom/reglink/common/Messenger;

    invoke-static {v0}, Lcom/reglink/common/Messenger;->access$000(Lcom/reglink/common/Messenger;)Landroid/util/SparseIntArray;

    move-result-object v0

    monitor-enter v0

    .line 248
    :try_start_0
    iget-object v1, p0, Lcom/reglink/common/Messenger$Callback;->this$0:Lcom/reglink/common/Messenger;

    invoke-static {v1}, Lcom/reglink/common/Messenger;->access$000(Lcom/reglink/common/Messenger;)Landroid/util/SparseIntArray;

    move-result-object v1

    invoke-virtual {p1}, Lcom/reglink/parcel/Message;->what()I

    move-result v2

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    monitor-exit v0

    return-void

    .line 249
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 250
    iget-object v0, p0, Lcom/reglink/common/Messenger$Callback;->this$0:Lcom/reglink/common/Messenger;

    invoke-static {v0}, Lcom/reglink/common/Messenger;->access$100(Lcom/reglink/common/Messenger;)Ljava/util/ArrayList;

    move-result-object v1

    monitor-enter v1

    .line 251
    :try_start_1
    iget-object v0, p0, Lcom/reglink/common/Messenger$Callback;->this$0:Lcom/reglink/common/Messenger;

    invoke-static {v0}, Lcom/reglink/common/Messenger;->access$100(Lcom/reglink/common/Messenger;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/reglink/common/Messenger$MessageCallback;

    if-eqz v2, :cond_1

    .line 253
    invoke-virtual {p1}, Lcom/reglink/parcel/Message;->what()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/reglink/common/Messenger$MessageCallback;->containsKey(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 254
    invoke-virtual {p1}, Lcom/reglink/parcel/Message;->what()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/reglink/common/Messenger$MessageCallback;->dispatchMessageCallback(I)V

    goto :goto_0

    .line 258
    :cond_2
    monitor-exit v1

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :catchall_1
    move-exception p1

    .line 249
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1
.end method
