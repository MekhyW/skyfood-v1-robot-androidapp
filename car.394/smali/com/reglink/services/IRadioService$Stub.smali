.class public abstract Lcom/reglink/services/IRadioService$Stub;
.super Landroid/os/Binder;
.source "IRadioService.java"

# interfaces
.implements Lcom/reglink/services/IRadioService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/reglink/services/IRadioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/reglink/services/IRadioService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.reglink.services.IRadioService"

.field static final TRANSACTION_addCallback:I = 0x1

.field static final TRANSACTION_getBand:I = 0x5

.field static final TRANSACTION_getFreq:I = 0x7

.field static final TRANSACTION_isBandSupport:I = 0x14

.field static final TRANSACTION_isPowerOn:I = 0xf

.field static final TRANSACTION_isScanning:I = 0xe

.field static final TRANSACTION_power:I = 0x3

.field static final TRANSACTION_removeCallback:I = 0x2

.field static final TRANSACTION_scan:I = 0xc

.field static final TRANSACTION_seekDown:I = 0xb

.field static final TRANSACTION_seekUp:I = 0xa

.field static final TRANSACTION_setArea:I = 0x13

.field static final TRANSACTION_setBandFreq:I = 0x6

.field static final TRANSACTION_setLocType:I = 0x11

.field static final TRANSACTION_setParam:I = 0x10

.field static final TRANSACTION_setStereo:I = 0x12

.field static final TRANSACTION_shutdown:I = 0x4

.field static final TRANSACTION_stepDown:I = 0x9

.field static final TRANSACTION_stepUp:I = 0x8

.field static final TRANSACTION_stopScan:I = 0xd


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.reglink.services.IRadioService"

    .line 15
    invoke-virtual {p0, p0, v0}, Lcom/reglink/services/IRadioService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/reglink/services/IRadioService;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.reglink.services.IRadioService"

    .line 26
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 27
    instance-of v1, v0, Lcom/reglink/services/IRadioService;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lcom/reglink/services/IRadioService;

    return-object v0

    .line 30
    :cond_1
    new-instance v0, Lcom/reglink/services/IRadioService$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/reglink/services/IRadioService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const v0, 0x5f4e5446

    const/4 v1, 0x1

    const-string v2, "com.reglink.services.IRadioService"

    if-eq p1, v0, :cond_2

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    .line 235
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 225
    :pswitch_0
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 227
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 228
    invoke-virtual {p0, p1}, Lcom/reglink/services/IRadioService$Stub;->isBandSupport(Ljava/lang/String;)Z

    move-result p1

    .line 229
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 230
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 202
    :pswitch_1
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 204
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 206
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 208
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 210
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 212
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 214
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 216
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 218
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    move-object v2, p0

    .line 219
    invoke-virtual/range {v2 .. v10}, Lcom/reglink/services/IRadioService$Stub;->setArea(IIIIIIII)V

    .line 220
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 193
    :pswitch_2
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 195
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_0

    move v0, v1

    .line 196
    :cond_0
    invoke-virtual {p0, v0}, Lcom/reglink/services/IRadioService$Stub;->setStereo(Z)V

    .line 197
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 184
    :pswitch_3
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 186
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result p1

    .line 187
    invoke-virtual {p0, p1}, Lcom/reglink/services/IRadioService$Stub;->setLocType(B)V

    .line 188
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 167
    :pswitch_4
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 169
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result v3

    .line 171
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result v4

    .line 173
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result v5

    .line 175
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result v6

    .line 177
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result v7

    move-object v2, p0

    .line 178
    invoke-virtual/range {v2 .. v7}, Lcom/reglink/services/IRadioService$Stub;->setParam(BBBBB)V

    .line 179
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 159
    :pswitch_5
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 160
    invoke-virtual {p0}, Lcom/reglink/services/IRadioService$Stub;->isPowerOn()Z

    move-result p1

    .line 161
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 162
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 151
    :pswitch_6
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 152
    invoke-virtual {p0}, Lcom/reglink/services/IRadioService$Stub;->isScanning()Z

    move-result p1

    .line 153
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 154
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 144
    :pswitch_7
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 145
    invoke-virtual {p0}, Lcom/reglink/services/IRadioService$Stub;->stopScan()V

    .line 146
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 137
    :pswitch_8
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 138
    invoke-virtual {p0}, Lcom/reglink/services/IRadioService$Stub;->scan()V

    .line 139
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 130
    :pswitch_9
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 131
    invoke-virtual {p0}, Lcom/reglink/services/IRadioService$Stub;->seekDown()V

    .line 132
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 123
    :pswitch_a
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 124
    invoke-virtual {p0}, Lcom/reglink/services/IRadioService$Stub;->seekUp()V

    .line 125
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 116
    :pswitch_b
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 117
    invoke-virtual {p0}, Lcom/reglink/services/IRadioService$Stub;->stepDown()V

    .line 118
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 109
    :pswitch_c
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 110
    invoke-virtual {p0}, Lcom/reglink/services/IRadioService$Stub;->stepUp()V

    .line 111
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 101
    :pswitch_d
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 102
    invoke-virtual {p0}, Lcom/reglink/services/IRadioService$Stub;->getFreq()I

    move-result p1

    .line 103
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 104
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 90
    :pswitch_e
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 92
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 94
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 95
    invoke-virtual {p0, p1, p2}, Lcom/reglink/services/IRadioService$Stub;->setBandFreq(Ljava/lang/String;I)V

    .line 96
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 82
    :pswitch_f
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 83
    invoke-virtual {p0}, Lcom/reglink/services/IRadioService$Stub;->getBand()Ljava/lang/String;

    move-result-object p1

    .line 84
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 85
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    .line 75
    :pswitch_10
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 76
    invoke-virtual {p0}, Lcom/reglink/services/IRadioService$Stub;->shutdown()V

    .line 77
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 66
    :pswitch_11
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 68
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_1

    move v0, v1

    .line 69
    :cond_1
    invoke-virtual {p0, v0}, Lcom/reglink/services/IRadioService$Stub;->power(Z)V

    .line 70
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 57
    :pswitch_12
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 59
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/reglink/services/IRadioCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/reglink/services/IRadioCallback;

    move-result-object p1

    .line 60
    invoke-virtual {p0, p1}, Lcom/reglink/services/IRadioService$Stub;->removeCallback(Lcom/reglink/services/IRadioCallback;)V

    .line 61
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 48
    :pswitch_13
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 50
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/reglink/services/IRadioCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/reglink/services/IRadioCallback;

    move-result-object p1

    .line 51
    invoke-virtual {p0, p1}, Lcom/reglink/services/IRadioService$Stub;->addCallback(Lcom/reglink/services/IRadioCallback;)V

    .line 52
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 43
    :cond_2
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
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
