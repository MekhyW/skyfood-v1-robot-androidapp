.class Lcom/reglink/common/Messenger$2;
.super Landroid/os/Handler;
.source "Messenger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/reglink/common/Messenger;->call(Lcom/reglink/parcel/Message;Landroid/os/Handler$Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/reglink/common/Messenger;

.field final synthetic val$callback:Landroid/os/Handler$Callback;


# direct methods
.method constructor <init>(Lcom/reglink/common/Messenger;Landroid/os/Handler$Callback;)V
    .locals 0

    .line 229
    iput-object p1, p0, Lcom/reglink/common/Messenger$2;->this$0:Lcom/reglink/common/Messenger;

    iput-object p2, p0, Lcom/reglink/common/Messenger$2;->val$callback:Landroid/os/Handler$Callback;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 232
    iget-object v0, p0, Lcom/reglink/common/Messenger$2;->val$callback:Landroid/os/Handler$Callback;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Landroid/os/Handler$Callback;->handleMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method
