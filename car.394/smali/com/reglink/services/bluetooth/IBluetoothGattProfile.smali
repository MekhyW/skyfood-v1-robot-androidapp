.class public interface abstract Lcom/reglink/services/bluetooth/IBluetoothGattProfile;
.super Ljava/lang/Object;
.source "IBluetoothGattProfile.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/reglink/services/bluetooth/IBluetoothGattProfile$Stub;
    }
.end annotation


# virtual methods
.method public abstract addCallback(Lcom/reglink/services/bluetooth/IBluetoothGattCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract removeCallback(Lcom/reglink/services/bluetooth/IBluetoothGattCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
