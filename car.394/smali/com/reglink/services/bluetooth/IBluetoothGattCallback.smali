.class public interface abstract Lcom/reglink/services/bluetooth/IBluetoothGattCallback;
.super Ljava/lang/Object;
.source "IBluetoothGattCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/reglink/services/bluetooth/IBluetoothGattCallback$Stub;
    }
.end annotation


# virtual methods
.method public abstract onLeScan(Lcom/reglink/parcel/GattPacket;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
