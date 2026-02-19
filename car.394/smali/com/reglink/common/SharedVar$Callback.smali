.class Lcom/reglink/common/SharedVar$Callback;
.super Lcom/reglink/services/IMessageCallback$Stub;
.source "SharedVar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/reglink/common/SharedVar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Callback"
.end annotation


# instance fields
.field private final thiz:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/reglink/common/SharedVar;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/reglink/common/SharedVar;)V
    .locals 1

    .line 311
    invoke-direct {p0}, Lcom/reglink/services/IMessageCallback$Stub;-><init>()V

    .line 312
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/reglink/common/SharedVar$Callback;->thiz:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public handleMessage(Lcom/reglink/parcel/Message;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 316
    iget-object v0, p0, Lcom/reglink/common/SharedVar$Callback;->thiz:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 317
    iget-object v0, p0, Lcom/reglink/common/SharedVar$Callback;->thiz:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/reglink/common/SharedVar;

    invoke-static {v0, p1}, Lcom/reglink/common/SharedVar;->access$000(Lcom/reglink/common/SharedVar;Lcom/reglink/parcel/Message;)V

    :cond_0
    return-void
.end method
