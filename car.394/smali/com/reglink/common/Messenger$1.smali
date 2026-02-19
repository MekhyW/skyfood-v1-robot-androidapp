.class Lcom/reglink/common/Messenger$1;
.super Landroid/os/Handler;
.source "Messenger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/reglink/common/Messenger;->call(Lcom/reglink/parcel/Message;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/reglink/common/Messenger;

.field final synthetic val$callback:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/reglink/common/Messenger;Ljava/lang/Runnable;)V
    .locals 0

    .line 211
    iput-object p1, p0, Lcom/reglink/common/Messenger$1;->this$0:Lcom/reglink/common/Messenger;

    iput-object p2, p0, Lcom/reglink/common/Messenger$1;->val$callback:Ljava/lang/Runnable;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 0

    .line 214
    iget-object p1, p0, Lcom/reglink/common/Messenger$1;->val$callback:Ljava/lang/Runnable;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method
