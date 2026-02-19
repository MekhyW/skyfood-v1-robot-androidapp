.class public abstract Lcom/reglink/services/bluetooth/IBluetoothAdapterCallback$Stub;
.super Landroid/os/Binder;
.source "IBluetoothAdapterCallback.java"

# interfaces
.implements Lcom/reglink/services/bluetooth/IBluetoothAdapterCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/reglink/services/bluetooth/IBluetoothAdapterCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/reglink/services/bluetooth/IBluetoothAdapterCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.reglink.services.bluetooth.IBluetoothAdapterCallback"

.field static final TRANSACTION_autoAnswerState:I = 0xc

.field static final TRANSACTION_autoConnectState:I = 0xb

.field static final TRANSACTION_connectedDevice:I = 0x2

.field static final TRANSACTION_discovery:I = 0xe

.field static final TRANSACTION_discoveryDone:I = 0xf

.field static final TRANSACTION_enableChanged:I = 0x7

.field static final TRANSACTION_lastConnectedDevice:I = 0x4

.field static final TRANSACTION_lastDisconnectedDevice:I = 0x5

.field static final TRANSACTION_pairCode:I = 0x3

.field static final TRANSACTION_pairList:I = 0xd

.field static final TRANSACTION_pairStateChanged:I = 0x1

.field static final TRANSACTION_propChanged:I = 0x6

.field static final TRANSACTION_unused2:I = 0x8

.field static final TRANSACTION_unused3:I = 0x9

.field static final TRANSACTION_unused4:I = 0xa


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.reglink.services.bluetooth.IBluetoothAdapterCallback"

    .line 15
    invoke-virtual {p0, p0, v0}, Lcom/reglink/services/bluetooth/IBluetoothAdapterCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/reglink/services/bluetooth/IBluetoothAdapterCallback;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.reglink.services.bluetooth.IBluetoothAdapterCallback"

    .line 26
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 27
    instance-of v1, v0, Lcom/reglink/services/bluetooth/IBluetoothAdapterCallback;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lcom/reglink/services/bluetooth/IBluetoothAdapterCallback;

    return-object v0

    .line 30
    :cond_1
    new-instance v0, Lcom/reglink/services/bluetooth/IBluetoothAdapterCallback$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/reglink/services/bluetooth/IBluetoothAdapterCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const v0, 0x5f4e5446

    const/4 v1, 0x1

    const-string v2, "com.reglink.services.bluetooth.IBluetoothAdapterCallback"

    if-eq p1, v0, :cond_6

    const/4 v0, 0x0

    const/4 v3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 190
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 183
    :pswitch_0
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 184
    invoke-virtual {p0}, Lcom/reglink/services/bluetooth/IBluetoothAdapterCallback$Stub;->discoveryDone()V

    .line 185
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 169
    :pswitch_1
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 171
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_0

    .line 172
    sget-object p1, Lcom/reglink/parcel/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Lcom/reglink/parcel/BluetoothDevice;

    .line 177
    :cond_0
    invoke-virtual {p0, v3}, Lcom/reglink/services/bluetooth/IBluetoothAdapterCallback$Stub;->discovery(Lcom/reglink/parcel/BluetoothDevice;)V

    .line 178
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 160
    :pswitch_2
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 162
    sget-object p1, Lcom/reglink/parcel/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/reglink/parcel/BluetoothDevice;

    .line 163
    invoke-virtual {p0, p1}, Lcom/reglink/services/bluetooth/IBluetoothAdapterCallback$Stub;->pairList([Lcom/reglink/parcel/BluetoothDevice;)V

    .line 164
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 151
    :pswitch_3
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 153
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_1

    move v0, v1

    .line 154
    :cond_1
    invoke-virtual {p0, v0}, Lcom/reglink/services/bluetooth/IBluetoothAdapterCallback$Stub;->autoAnswerState(Z)V

    .line 155
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 142
    :pswitch_4
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 144
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_2

    move v0, v1

    .line 145
    :cond_2
    invoke-virtual {p0, v0}, Lcom/reglink/services/bluetooth/IBluetoothAdapterCallback$Stub;->autoConnectState(Z)V

    .line 146
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 135
    :pswitch_5
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 136
    invoke-virtual {p0}, Lcom/reglink/services/bluetooth/IBluetoothAdapterCallback$Stub;->unused4()V

    .line 137
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 128
    :pswitch_6
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 129
    invoke-virtual {p0}, Lcom/reglink/services/bluetooth/IBluetoothAdapterCallback$Stub;->unused3()V

    .line 130
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 121
    :pswitch_7
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 122
    invoke-virtual {p0}, Lcom/reglink/services/bluetooth/IBluetoothAdapterCallback$Stub;->unused2()V

    .line 123
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 112
    :pswitch_8
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 114
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_3

    move v0, v1

    .line 115
    :cond_3
    invoke-virtual {p0, v0}, Lcom/reglink/services/bluetooth/IBluetoothAdapterCallback$Stub;->enableChanged(Z)V

    .line 116
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 103
    :pswitch_9
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 105
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 106
    invoke-virtual {p0, p1}, Lcom/reglink/services/bluetooth/IBluetoothAdapterCallback$Stub;->propChanged(Ljava/lang/String;)V

    .line 107
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 89
    :pswitch_a
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 91
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_4

    .line 92
    sget-object p1, Lcom/reglink/parcel/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Lcom/reglink/parcel/BluetoothDevice;

    .line 97
    :cond_4
    invoke-virtual {p0, v3}, Lcom/reglink/services/bluetooth/IBluetoothAdapterCallback$Stub;->lastDisconnectedDevice(Lcom/reglink/parcel/BluetoothDevice;)V

    .line 98
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 75
    :pswitch_b
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 77
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_5

    .line 78
    sget-object p1, Lcom/reglink/parcel/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Lcom/reglink/parcel/BluetoothDevice;

    .line 83
    :cond_5
    invoke-virtual {p0, v3}, Lcom/reglink/services/bluetooth/IBluetoothAdapterCallback$Stub;->lastConnectedDevice(Lcom/reglink/parcel/BluetoothDevice;)V

    .line 84
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 66
    :pswitch_c
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 68
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 69
    invoke-virtual {p0, p1}, Lcom/reglink/services/bluetooth/IBluetoothAdapterCallback$Stub;->pairCode(Ljava/lang/String;)V

    .line 70
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 57
    :pswitch_d
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 59
    sget-object p1, Lcom/reglink/parcel/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/reglink/parcel/BluetoothDevice;

    .line 60
    invoke-virtual {p0, p1}, Lcom/reglink/services/bluetooth/IBluetoothAdapterCallback$Stub;->connectedDevice([Lcom/reglink/parcel/BluetoothDevice;)V

    .line 61
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 48
    :pswitch_e
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 50
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 51
    invoke-virtual {p0, p1}, Lcom/reglink/services/bluetooth/IBluetoothAdapterCallback$Stub;->pairStateChanged(Ljava/lang/String;)V

    .line 52
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 43
    :cond_6
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
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
