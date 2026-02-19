.class public abstract Lcom/reglink/services/bluetooth/IBluetoothService$Stub;
.super Landroid/os/Binder;
.source "IBluetoothService.java"

# interfaces
.implements Lcom/reglink/services/bluetooth/IBluetoothService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/reglink/services/bluetooth/IBluetoothService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/reglink/services/bluetooth/IBluetoothService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.reglink.services.bluetooth.IBluetoothService"

.field static final TRANSACTION_getBlinkKey:I = 0xa

.field static final TRANSACTION_getBlueManufacturer:I = 0x5

.field static final TRANSACTION_getDefaultA2dp:I = 0x2

.field static final TRANSACTION_getDefaultAdapter:I = 0x1

.field static final TRANSACTION_getDefaultGatt:I = 0x9

.field static final TRANSACTION_getDefaultHfp:I = 0x3

.field static final TRANSACTION_getDefaultPbacp:I = 0x4

.field static final TRANSACTION_registerCallback:I = 0x7

.field static final TRANSACTION_unregisterCallback:I = 0x8

.field static final TRANSACTION_writeCommand:I = 0x6


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 16
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.reglink.services.bluetooth.IBluetoothService"

    .line 17
    invoke-virtual {p0, p0, v0}, Lcom/reglink/services/bluetooth/IBluetoothService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/reglink/services/bluetooth/IBluetoothService;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.reglink.services.bluetooth.IBluetoothService"

    .line 28
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 29
    instance-of v1, v0, Lcom/reglink/services/bluetooth/IBluetoothService;

    if-eqz v1, :cond_1

    .line 30
    check-cast v0, Lcom/reglink/services/bluetooth/IBluetoothService;

    return-object v0

    .line 32
    :cond_1
    new-instance v0, Lcom/reglink/services/bluetooth/IBluetoothService$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/reglink/services/bluetooth/IBluetoothService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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

    const-string v2, "com.reglink.services.bluetooth.IBluetoothService"

    if-eq p1, v0, :cond_6

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    .line 133
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 125
    :pswitch_0
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 126
    invoke-virtual {p0}, Lcom/reglink/services/bluetooth/IBluetoothService$Stub;->getBlinkKey()Lcom/reglink/services/bluetooth/IBlinkKey;

    move-result-object p1

    .line 127
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_0

    .line 128
    invoke-interface {p1}, Lcom/reglink/services/bluetooth/IBlinkKey;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    :cond_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    return v1

    .line 117
    :pswitch_1
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 118
    invoke-virtual {p0}, Lcom/reglink/services/bluetooth/IBluetoothService$Stub;->getDefaultGatt()Lcom/reglink/services/bluetooth/IBluetoothGattProfile;

    move-result-object p1

    .line 119
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_1

    .line 120
    invoke-interface {p1}, Lcom/reglink/services/bluetooth/IBluetoothGattProfile;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    :cond_1
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    return v1

    .line 108
    :pswitch_2
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 110
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/reglink/services/bluetooth/IBluetoothServiceCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/reglink/services/bluetooth/IBluetoothServiceCallback;

    move-result-object p1

    .line 111
    invoke-virtual {p0, p1}, Lcom/reglink/services/bluetooth/IBluetoothService$Stub;->unregisterCallback(Lcom/reglink/services/bluetooth/IBluetoothServiceCallback;)V

    .line 112
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 99
    :pswitch_3
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 101
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/reglink/services/bluetooth/IBluetoothServiceCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/reglink/services/bluetooth/IBluetoothServiceCallback;

    move-result-object p1

    .line 102
    invoke-virtual {p0, p1}, Lcom/reglink/services/bluetooth/IBluetoothService$Stub;->registerCallback(Lcom/reglink/services/bluetooth/IBluetoothServiceCallback;)V

    .line 103
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 90
    :pswitch_4
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 92
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 93
    invoke-virtual {p0, p1}, Lcom/reglink/services/bluetooth/IBluetoothService$Stub;->writeCommand(Ljava/lang/String;)V

    .line 94
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 82
    :pswitch_5
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 83
    invoke-virtual {p0}, Lcom/reglink/services/bluetooth/IBluetoothService$Stub;->getBlueManufacturer()Ljava/lang/String;

    move-result-object p1

    .line 84
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 85
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    .line 74
    :pswitch_6
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 75
    invoke-virtual {p0}, Lcom/reglink/services/bluetooth/IBluetoothService$Stub;->getDefaultPbacp()Lcom/reglink/services/bluetooth/IBluetoothPbacpProfile;

    move-result-object p1

    .line 76
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_2

    .line 77
    invoke-interface {p1}, Lcom/reglink/services/bluetooth/IBluetoothPbacpProfile;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    :cond_2
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    return v1

    .line 66
    :pswitch_7
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 67
    invoke-virtual {p0}, Lcom/reglink/services/bluetooth/IBluetoothService$Stub;->getDefaultHfp()Lcom/reglink/services/bluetooth/IBluetoothHfpProfile;

    move-result-object p1

    .line 68
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_3

    .line 69
    invoke-interface {p1}, Lcom/reglink/services/bluetooth/IBluetoothHfpProfile;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    :cond_3
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    return v1

    .line 58
    :pswitch_8
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 59
    invoke-virtual {p0}, Lcom/reglink/services/bluetooth/IBluetoothService$Stub;->getDefaultA2dp()Lcom/reglink/services/bluetooth/IBluetoothA2dpProfile;

    move-result-object p1

    .line 60
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_4

    .line 61
    invoke-interface {p1}, Lcom/reglink/services/bluetooth/IBluetoothA2dpProfile;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    :cond_4
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    return v1

    .line 50
    :pswitch_9
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 51
    invoke-virtual {p0}, Lcom/reglink/services/bluetooth/IBluetoothService$Stub;->getDefaultAdapter()Lcom/reglink/services/bluetooth/IBluetoothAdapter;

    move-result-object p1

    .line 52
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_5

    .line 53
    invoke-interface {p1}, Lcom/reglink/services/bluetooth/IBluetoothAdapter;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    :cond_5
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    return v1

    .line 45
    :cond_6
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    nop

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
