.class public abstract Lcom/reglink/services/bluetooth/IBluetoothPbacpCallback$Stub;
.super Landroid/os/Binder;
.source "IBluetoothPbacpCallback.java"

# interfaces
.implements Lcom/reglink/services/bluetooth/IBluetoothPbacpCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/reglink/services/bluetooth/IBluetoothPbacpCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/reglink/services/bluetooth/IBluetoothPbacpCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.reglink.services.bluetooth.IBluetoothPbacpCallback"

.field static final TRANSACTION_contractDownloadEnd:I = 0x3

.field static final TRANSACTION_contractDownloadStart:I = 0x2

.field static final TRANSACTION_contractInfo:I = 0x4

.field static final TRANSACTION_pbacpState:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 16
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.reglink.services.bluetooth.IBluetoothPbacpCallback"

    .line 17
    invoke-virtual {p0, p0, v0}, Lcom/reglink/services/bluetooth/IBluetoothPbacpCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/reglink/services/bluetooth/IBluetoothPbacpCallback;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.reglink.services.bluetooth.IBluetoothPbacpCallback"

    .line 28
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 29
    instance-of v1, v0, Lcom/reglink/services/bluetooth/IBluetoothPbacpCallback;

    if-eqz v1, :cond_1

    .line 30
    check-cast v0, Lcom/reglink/services/bluetooth/IBluetoothPbacpCallback;

    return-object v0

    .line 32
    :cond_1
    new-instance v0, Lcom/reglink/services/bluetooth/IBluetoothPbacpCallback$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/reglink/services/bluetooth/IBluetoothPbacpCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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

    const/4 v0, 0x1

    const-string v1, "com.reglink.services.bluetooth.IBluetoothPbacpCallback"

    if-eq p1, v0, :cond_4

    const/4 v2, 0x2

    if-eq p1, v2, :cond_3

    const/4 v2, 0x3

    if-eq p1, v2, :cond_2

    const/4 v2, 0x4

    if-eq p1, v2, :cond_1

    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_0

    .line 90
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 45
    :cond_0
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v0

    .line 75
    :cond_1
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 77
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 79
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 81
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 83
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 84
    invoke-virtual {p0, p1, p4, v1, p2}, Lcom/reglink/services/bluetooth/IBluetoothPbacpCallback$Stub;->contractInfo(ILjava/lang/String;Ljava/lang/String;I)V

    .line 85
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 68
    :cond_2
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 69
    invoke-virtual {p0}, Lcom/reglink/services/bluetooth/IBluetoothPbacpCallback$Stub;->contractDownloadEnd()V

    .line 70
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 59
    :cond_3
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 61
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 62
    invoke-virtual {p0, p1}, Lcom/reglink/services/bluetooth/IBluetoothPbacpCallback$Stub;->contractDownloadStart(I)V

    .line 63
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 50
    :cond_4
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 52
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 53
    invoke-virtual {p0, p1}, Lcom/reglink/services/bluetooth/IBluetoothPbacpCallback$Stub;->pbacpState(Ljava/lang/String;)V

    .line 54
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0
.end method
