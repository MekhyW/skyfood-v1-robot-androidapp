.class Lcom/reglink/mcu/MCUProtocolHelper$3;
.super Ljava/lang/Object;
.source "MCUProtocolHelper.java"

# interfaces
.implements Lcom/reglink/common/WaitQueue$CompletionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/reglink/mcu/MCUProtocolHelper;->queueAsync(Ljava/lang/Runnable;ILcom/reglink/mcu/MCUProtocolHelper$OnCompletion;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/reglink/mcu/MCUProtocolHelper;

.field final synthetic val$onCompletion:Lcom/reglink/mcu/MCUProtocolHelper$OnCompletion;


# direct methods
.method constructor <init>(Lcom/reglink/mcu/MCUProtocolHelper;Lcom/reglink/mcu/MCUProtocolHelper$OnCompletion;)V
    .locals 0

    .line 111
    iput-object p1, p0, Lcom/reglink/mcu/MCUProtocolHelper$3;->this$0:Lcom/reglink/mcu/MCUProtocolHelper;

    iput-object p2, p0, Lcom/reglink/mcu/MCUProtocolHelper$3;->val$onCompletion:Lcom/reglink/mcu/MCUProtocolHelper$OnCompletion;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public completion(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    .line 114
    iget-object p1, p0, Lcom/reglink/mcu/MCUProtocolHelper$3;->this$0:Lcom/reglink/mcu/MCUProtocolHelper;

    invoke-static {p1}, Lcom/reglink/mcu/MCUProtocolHelper;->access$100(Lcom/reglink/mcu/MCUProtocolHelper;)Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/reglink/mcu/MCUProtocolHelper$3$1;

    invoke-direct {v0, p0, p2}, Lcom/reglink/mcu/MCUProtocolHelper$3$1;-><init>(Lcom/reglink/mcu/MCUProtocolHelper$3;Ljava/lang/Object;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
