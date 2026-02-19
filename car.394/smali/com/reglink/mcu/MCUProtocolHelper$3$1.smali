.class Lcom/reglink/mcu/MCUProtocolHelper$3$1;
.super Ljava/lang/Object;
.source "MCUProtocolHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/reglink/mcu/MCUProtocolHelper$3;->completion(Ljava/lang/Object;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/reglink/mcu/MCUProtocolHelper$3;

.field final synthetic val$o2:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/reglink/mcu/MCUProtocolHelper$3;Ljava/lang/Object;)V
    .locals 0

    .line 114
    iput-object p1, p0, Lcom/reglink/mcu/MCUProtocolHelper$3$1;->this$1:Lcom/reglink/mcu/MCUProtocolHelper$3;

    iput-object p2, p0, Lcom/reglink/mcu/MCUProtocolHelper$3$1;->val$o2:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 117
    iget-object v0, p0, Lcom/reglink/mcu/MCUProtocolHelper$3$1;->this$1:Lcom/reglink/mcu/MCUProtocolHelper$3;

    iget-object v0, v0, Lcom/reglink/mcu/MCUProtocolHelper$3;->val$onCompletion:Lcom/reglink/mcu/MCUProtocolHelper$OnCompletion;

    iget-object v1, p0, Lcom/reglink/mcu/MCUProtocolHelper$3$1;->val$o2:Ljava/lang/Object;

    check-cast v1, Lcom/reglink/parcel/McuProtocolPacket;

    invoke-interface {v0, v1}, Lcom/reglink/mcu/MCUProtocolHelper$OnCompletion;->onCompletion(Lcom/reglink/parcel/McuProtocolPacket;)V

    return-void
.end method
