.class public abstract Lcom/reglink/services/IKeyService$Stub;
.super Landroid/os/Binder;
.source "IKeyService.java"

# interfaces
.implements Lcom/reglink/services/IKeyService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/reglink/services/IKeyService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/reglink/services/IKeyService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.reglink.services.IKeyService"

.field static final TRANSACTION_enableDispatch:I = 0x7

.field static final TRANSACTION_getLastEvent:I = 0x3

.field static final TRANSACTION_getPanelADCKey:I = 0x14

.field static final TRANSACTION_getSWADCKey:I = 0xc

.field static final TRANSACTION_getTouchBound:I = 0x10

.field static final TRANSACTION_getTouchKey:I = 0xe

.field static final TRANSACTION_hook:I = 0x4

.field static final TRANSACTION_registerCallback:I = 0x5

.field static final TRANSACTION_sendKey:I = 0x1

.field static final TRANSACTION_setPanelADCKey:I = 0x15

.field static final TRANSACTION_setSWADCKey:I = 0xd

.field static final TRANSACTION_setTouchBound:I = 0x11

.field static final TRANSACTION_setTouchKey:I = 0xf

.field static final TRANSACTION_simulateKeystroke:I = 0x2

.field static final TRANSACTION_startPanelADCKeyStudy:I = 0x12

.field static final TRANSACTION_startSWADCKeyStudy:I = 0xa

.field static final TRANSACTION_startTouchKeyStudy:I = 0x8

.field static final TRANSACTION_stopPanelADCKeyStudy:I = 0x13

.field static final TRANSACTION_stopSWADCKeyStudy:I = 0xb

.field static final TRANSACTION_stopTouchKeyStudy:I = 0x9

.field static final TRANSACTION_unregisterCallback:I = 0x6


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.reglink.services.IKeyService"

    .line 15
    invoke-virtual {p0, p0, v0}, Lcom/reglink/services/IKeyService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/reglink/services/IKeyService;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.reglink.services.IKeyService"

    .line 26
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 27
    instance-of v1, v0, Lcom/reglink/services/IKeyService;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lcom/reglink/services/IKeyService;

    return-object v0

    .line 30
    :cond_1
    new-instance v0, Lcom/reglink/services/IKeyService$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/reglink/services/IKeyService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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

    const-string v2, "com.reglink.services.IKeyService"

    if-eq p1, v0, :cond_6

    const/4 v0, 0x0

    const/4 v3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 261
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 250
    :pswitch_0
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 252
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 254
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 255
    invoke-virtual {p0, p1, p2}, Lcom/reglink/services/IKeyService$Stub;->setPanelADCKey(II)V

    .line 256
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 240
    :pswitch_1
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 242
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 243
    invoke-virtual {p0, p1}, Lcom/reglink/services/IKeyService$Stub;->getPanelADCKey(I)I

    move-result p1

    .line 244
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 245
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 233
    :pswitch_2
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 234
    invoke-virtual {p0}, Lcom/reglink/services/IKeyService$Stub;->stopPanelADCKeyStudy()V

    .line 235
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 224
    :pswitch_3
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 226
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/reglink/services/IADCKeyCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/reglink/services/IADCKeyCallback;

    move-result-object p1

    .line 227
    invoke-virtual {p0, p1}, Lcom/reglink/services/IKeyService$Stub;->startPanelADCKeyStudy(Lcom/reglink/services/IADCKeyCallback;)V

    .line 228
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 215
    :pswitch_4
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 217
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 218
    invoke-virtual {p0, p1}, Lcom/reglink/services/IKeyService$Stub;->setTouchBound(I)V

    .line 219
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 207
    :pswitch_5
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 208
    invoke-virtual {p0}, Lcom/reglink/services/IKeyService$Stub;->getTouchBound()I

    move-result p1

    .line 209
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 210
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 191
    :pswitch_6
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 193
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 195
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_0

    .line 196
    sget-object p4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v3, p2

    check-cast v3, Landroid/os/Bundle;

    .line 201
    :cond_0
    invoke-virtual {p0, p1, v3}, Lcom/reglink/services/IKeyService$Stub;->setTouchKey(ILandroid/os/Bundle;)V

    .line 202
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 175
    :pswitch_7
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 177
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 178
    invoke-virtual {p0, p1}, Lcom/reglink/services/IKeyService$Stub;->getTouchKey(I)Landroid/os/Bundle;

    move-result-object p1

    .line 179
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_1

    .line 181
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 182
    invoke-virtual {p1, p3, v1}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 185
    :cond_1
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    return v1

    .line 164
    :pswitch_8
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 166
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 168
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 169
    invoke-virtual {p0, p1, p2}, Lcom/reglink/services/IKeyService$Stub;->setSWADCKey(II)V

    .line 170
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 154
    :pswitch_9
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 156
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 157
    invoke-virtual {p0, p1}, Lcom/reglink/services/IKeyService$Stub;->getSWADCKey(I)I

    move-result p1

    .line 158
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 159
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 147
    :pswitch_a
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 148
    invoke-virtual {p0}, Lcom/reglink/services/IKeyService$Stub;->stopSWADCKeyStudy()V

    .line 149
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 138
    :pswitch_b
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 140
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/reglink/services/IADCKeyCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/reglink/services/IADCKeyCallback;

    move-result-object p1

    .line 141
    invoke-virtual {p0, p1}, Lcom/reglink/services/IKeyService$Stub;->startSWADCKeyStudy(Lcom/reglink/services/IADCKeyCallback;)V

    .line 142
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 131
    :pswitch_c
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 132
    invoke-virtual {p0}, Lcom/reglink/services/IKeyService$Stub;->stopTouchKeyStudy()V

    .line 133
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 122
    :pswitch_d
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 124
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/reglink/services/ITouchKeyCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/reglink/services/ITouchKeyCallback;

    move-result-object p1

    .line 125
    invoke-virtual {p0, p1}, Lcom/reglink/services/IKeyService$Stub;->startTouchKeyStudy(Lcom/reglink/services/ITouchKeyCallback;)V

    .line 126
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 113
    :pswitch_e
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 115
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_2

    move v0, v1

    .line 116
    :cond_2
    invoke-virtual {p0, v0}, Lcom/reglink/services/IKeyService$Stub;->enableDispatch(Z)V

    .line 117
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 104
    :pswitch_f
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 106
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/reglink/services/IKeyCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/reglink/services/IKeyCallback;

    move-result-object p1

    .line 107
    invoke-virtual {p0, p1}, Lcom/reglink/services/IKeyService$Stub;->unregisterCallback(Lcom/reglink/services/IKeyCallback;)V

    .line 108
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 94
    :pswitch_10
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 96
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/reglink/services/IKeyCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/reglink/services/IKeyCallback;

    move-result-object p1

    .line 97
    invoke-virtual {p0, p1}, Lcom/reglink/services/IKeyService$Stub;->registerCallback(Lcom/reglink/services/IKeyCallback;)Lcom/reglink/services/IKeyClient;

    move-result-object p1

    .line 98
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_3

    .line 99
    invoke-interface {p1}, Lcom/reglink/services/IKeyClient;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    :cond_3
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    return v1

    .line 85
    :pswitch_11
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 87
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/reglink/services/IKeyCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/reglink/services/IKeyCallback;

    move-result-object p1

    .line 88
    invoke-virtual {p0, p1}, Lcom/reglink/services/IKeyService$Stub;->hook(Lcom/reglink/services/IKeyCallback;)V

    .line 89
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 71
    :pswitch_12
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 72
    invoke-virtual {p0}, Lcom/reglink/services/IKeyService$Stub;->getLastEvent()Lcom/reglink/parcel/KeyEvent;

    move-result-object p1

    .line 73
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_4

    .line 75
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 76
    invoke-virtual {p1, p3, v1}, Lcom/reglink/parcel/KeyEvent;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1

    .line 79
    :cond_4
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1
    return v1

    .line 62
    :pswitch_13
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 64
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 65
    invoke-virtual {p0, p1}, Lcom/reglink/services/IKeyService$Stub;->simulateKeystroke(I)V

    .line 66
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 48
    :pswitch_14
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 50
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_5

    .line 51
    sget-object p1, Lcom/reglink/parcel/KeyEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Lcom/reglink/parcel/KeyEvent;

    .line 56
    :cond_5
    invoke-virtual {p0, v3}, Lcom/reglink/services/IKeyService$Stub;->sendKey(Lcom/reglink/parcel/KeyEvent;)V

    .line 57
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 43
    :cond_6
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_14
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
