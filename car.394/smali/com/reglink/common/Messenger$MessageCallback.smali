.class public Lcom/reglink/common/Messenger$MessageCallback;
.super Ljava/lang/Object;
.source "Messenger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/reglink/common/Messenger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MessageCallback"
.end annotation


# instance fields
.field private deliverMessage:I

.field private handler:Landroid/os/Handler;

.field private observeKeys:Landroid/util/SparseIntArray;

.field private runnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/os/Handler;I)V
    .locals 0

    .line 278
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 279
    iput-object p1, p0, Lcom/reglink/common/Messenger$MessageCallback;->handler:Landroid/os/Handler;

    .line 280
    iput p2, p0, Lcom/reglink/common/Messenger$MessageCallback;->deliverMessage:I

    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;Ljava/lang/Runnable;)V
    .locals 0

    .line 269
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 270
    iput-object p1, p0, Lcom/reglink/common/Messenger$MessageCallback;->handler:Landroid/os/Handler;

    .line 271
    iput-object p2, p0, Lcom/reglink/common/Messenger$MessageCallback;->runnable:Ljava/lang/Runnable;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Runnable;)V
    .locals 1

    const/4 v0, 0x0

    .line 275
    invoke-direct {p0, v0, p1}, Lcom/reglink/common/Messenger$MessageCallback;-><init>(Landroid/os/Handler;Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public containsKey(I)Z
    .locals 3

    .line 298
    iget-object v0, p0, Lcom/reglink/common/Messenger$MessageCallback;->observeKeys:Landroid/util/SparseIntArray;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v2, -0x1

    .line 299
    invoke-virtual {v0, p1, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    move v1, v0

    :cond_1
    return v1
.end method

.method public dispatchMessageCallback(I)V
    .locals 1

    .line 303
    iget-object p1, p0, Lcom/reglink/common/Messenger$MessageCallback;->handler:Landroid/os/Handler;

    if-eqz p1, :cond_1

    .line 304
    iget-object v0, p0, Lcom/reglink/common/Messenger$MessageCallback;->runnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 306
    :cond_0
    iget v0, p0, Lcom/reglink/common/Messenger$MessageCallback;->deliverMessage:I

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 309
    :cond_1
    iget-object p1, p0, Lcom/reglink/common/Messenger$MessageCallback;->runnable:Ljava/lang/Runnable;

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_2
    :goto_0
    return-void
.end method

.method public setKey(I)V
    .locals 2

    .line 284
    iget-object v0, p0, Lcom/reglink/common/Messenger$MessageCallback;->observeKeys:Landroid/util/SparseIntArray;

    if-nez v0, :cond_0

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/reglink/common/Messenger$MessageCallback;->observeKeys:Landroid/util/SparseIntArray;

    .line 285
    :cond_0
    iget-object v0, p0, Lcom/reglink/common/Messenger$MessageCallback;->observeKeys:Landroid/util/SparseIntArray;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->append(II)V

    return-void
.end method

.method public setKey([I)V
    .locals 5

    .line 289
    iget-object v0, p0, Lcom/reglink/common/Messenger$MessageCallback;->observeKeys:Landroid/util/SparseIntArray;

    if-nez v0, :cond_0

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/reglink/common/Messenger$MessageCallback;->observeKeys:Landroid/util/SparseIntArray;

    :cond_0
    if-eqz p1, :cond_1

    .line 291
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget v2, p1, v1

    .line 292
    iget-object v3, p0, Lcom/reglink/common/Messenger$MessageCallback;->observeKeys:Landroid/util/SparseIntArray;

    const/4 v4, 0x1

    invoke-virtual {v3, v2, v4}, Landroid/util/SparseIntArray;->append(II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
