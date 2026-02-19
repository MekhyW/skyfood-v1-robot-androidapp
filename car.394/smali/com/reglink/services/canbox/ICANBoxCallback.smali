.class public interface abstract Lcom/reglink/services/canbox/ICANBoxCallback;
.super Ljava/lang/Object;
.source "ICANBoxCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/reglink/services/canbox/ICANBoxCallback$Stub;
    }
.end annotation


# virtual methods
.method public abstract onCANBoxDataArrived(Lcom/reglink/parcel/CANBoxPacket;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onConnectionChanged(Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
