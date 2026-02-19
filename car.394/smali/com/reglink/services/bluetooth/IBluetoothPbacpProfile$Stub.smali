.class public abstract Lcom/reglink/services/bluetooth/IBluetoothPbacpProfile$Stub;
.super Landroid/os/Binder;
.source "IBluetoothPbacpProfile.java"

# interfaces
.implements Lcom/reglink/services/bluetooth/IBluetoothPbacpProfile;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/reglink/services/bluetooth/IBluetoothPbacpProfile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/reglink/services/bluetooth/IBluetoothPbacpProfile$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.reglink.services.bluetooth.IBluetoothPbacpProfile"

.field static final TRANSACTION_abortDownload:I = 0xa

.field static final TRANSACTION_addCallback:I = 0x1

.field static final TRANSACTION_connectPBAPC:I = 0x4

.field static final TRANSACTION_disconnectPBAPC:I = 0x5

.field static final TRANSACTION_downloadIncomingCall:I = 0x7

.field static final TRANSACTION_downloadMissedCall:I = 0x9

.field static final TRANSACTION_downloadOutgoingCall:I = 0x8

.field static final TRANSACTION_downloadPhoneContracts:I = 0x6

.field static final TRANSACTION_getPBAPCState:I = 0x3

.field static final TRANSACTION_removeCallback:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.reglink.services.bluetooth.IBluetoothPbacpProfile"

    .line 15
    invoke-virtual {p0, p0, v0}, Lcom/reglink/services/bluetooth/IBluetoothPbacpProfile$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/reglink/services/bluetooth/IBluetoothPbacpProfile;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.reglink.services.bluetooth.IBluetoothPbacpProfile"

    .line 26
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 27
    instance-of v1, v0, Lcom/reglink/services/bluetooth/IBluetoothPbacpProfile;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lcom/reglink/services/bluetooth/IBluetoothPbacpProfile;

    return-object v0

    .line 30
    :cond_1
    new-instance v0, Lcom/reglink/services/bluetooth/IBluetoothPbacpProfile$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/reglink/services/bluetooth/IBluetoothPbacpProfile$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const v0, 0x5f4e5446

    const/4 v1, 0x1

    const-string v2, "com.reglink.services.bluetooth.IBluetoothPbacpProfile"

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    .line 127
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 120
    :pswitch_0
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 121
    invoke-virtual {p0}, Lcom/reglink/services/bluetooth/IBluetoothPbacpProfile$Stub;->abortDownload()V

    .line 122
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 112
    :pswitch_1
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 113
    invoke-virtual {p0}, Lcom/reglink/services/bluetooth/IBluetoothPbacpProfile$Stub;->downloadMissedCall()Z

    move-result p1

    .line 114
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 115
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 104
    :pswitch_2
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 105
    invoke-virtual {p0}, Lcom/reglink/services/bluetooth/IBluetoothPbacpProfile$Stub;->downloadOutgoingCall()Z

    move-result p1

    .line 106
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 107
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 96
    :pswitch_3
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 97
    invoke-virtual {p0}, Lcom/reglink/services/bluetooth/IBluetoothPbacpProfile$Stub;->downloadIncomingCall()Z

    move-result p1

    .line 98
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 99
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 88
    :pswitch_4
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 89
    invoke-virtual {p0}, Lcom/reglink/services/bluetooth/IBluetoothPbacpProfile$Stub;->downloadPhoneContracts()Z

    move-result p1

    .line 90
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 91
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 81
    :pswitch_5
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 82
    invoke-virtual {p0}, Lcom/reglink/services/bluetooth/IBluetoothPbacpProfile$Stub;->disconnectPBAPC()V

    .line 83
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 74
    :pswitch_6
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 75
    invoke-virtual {p0}, Lcom/reglink/services/bluetooth/IBluetoothPbacpProfile$Stub;->connectPBAPC()V

    .line 76
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 66
    :pswitch_7
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 67
    invoke-virtual {p0}, Lcom/reglink/services/bluetooth/IBluetoothPbacpProfile$Stub;->getPBAPCState()Ljava/lang/String;

    move-result-object p1

    .line 68
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 69
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    .line 57
    :pswitch_8
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 59
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/reglink/services/bluetooth/IBluetoothPbacpCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/reglink/services/bluetooth/IBluetoothPbacpCallback;

    move-result-object p1

    .line 60
    invoke-virtual {p0, p1}, Lcom/reglink/services/bluetooth/IBluetoothPbacpProfile$Stub;->removeCallback(Lcom/reglink/services/bluetooth/IBluetoothPbacpCallback;)V

    .line 61
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 48
    :pswitch_9
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 50
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/reglink/services/bluetooth/IBluetoothPbacpCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/reglink/services/bluetooth/IBluetoothPbacpCallback;

    move-result-object p1

    .line 51
    invoke-virtual {p0, p1}, Lcom/reglink/services/bluetooth/IBluetoothPbacpProfile$Stub;->addCallback(Lcom/reglink/services/bluetooth/IBluetoothPbacpCallback;)V

    .line 52
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 43
    :cond_0
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
