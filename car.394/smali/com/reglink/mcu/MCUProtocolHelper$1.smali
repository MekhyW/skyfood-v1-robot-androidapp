.class Lcom/reglink/mcu/MCUProtocolHelper$1;
.super Ljava/lang/Object;
.source "MCUProtocolHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/reglink/mcu/MCUProtocolHelper;->quque([BLcom/reglink/mcu/MCUProtocolHelper$OnCompletion;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/reglink/mcu/MCUProtocolHelper;

.field final synthetic val$command:[B


# direct methods
.method constructor <init>(Lcom/reglink/mcu/MCUProtocolHelper;[B)V
    .locals 0

    .line 74
    iput-object p1, p0, Lcom/reglink/mcu/MCUProtocolHelper$1;->this$0:Lcom/reglink/mcu/MCUProtocolHelper;

    iput-object p2, p0, Lcom/reglink/mcu/MCUProtocolHelper$1;->val$command:[B

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 78
    :try_start_0
    iget-object v0, p0, Lcom/reglink/mcu/MCUProtocolHelper$1;->this$0:Lcom/reglink/mcu/MCUProtocolHelper;

    invoke-static {v0}, Lcom/reglink/mcu/MCUProtocolHelper;->access$000(Lcom/reglink/mcu/MCUProtocolHelper;)Lcom/reglink/services/ICommunicationService;

    move-result-object v0

    iget-object v1, p0, Lcom/reglink/mcu/MCUProtocolHelper$1;->val$command:[B

    invoke-interface {v0, v1}, Lcom/reglink/services/ICommunicationService;->write([B)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "McuSyncHelper"

    .line 80
    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
