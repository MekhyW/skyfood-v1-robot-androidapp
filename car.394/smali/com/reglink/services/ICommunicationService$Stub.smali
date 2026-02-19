.class public abstract Lcom/reglink/services/ICommunicationService$Stub;
.super Landroid/os/Binder;
.source "ICommunicationService.java"

# interfaces
.implements Lcom/reglink/services/ICommunicationService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/reglink/services/ICommunicationService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/reglink/services/ICommunicationService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.reglink.services.ICommunicationService"

.field static final TRANSACTION_allowSendCANData:I = 0xd

.field static final TRANSACTION_registerCANCallback:I = 0x9

.field static final TRANSACTION_registerCommDataCallback:I = 0xb

.field static final TRANSACTION_unregisterCANCallback:I = 0xa

.field static final TRANSACTION_unregisterCommDataCallback:I = 0xc

.field static final TRANSACTION_write:I = 0x3

.field static final TRANSACTION_write2:I = 0x4

.field static final TRANSACTION_write3:I = 0x5

.field static final TRANSACTION_write4:I = 0x6

.field static final TRANSACTION_write5:I = 0x7

.field static final TRANSACTION_write6:I = 0x8

.field static final TRANSACTION_writeCANData:I = 0x1

.field static final TRANSACTION_writeRawData:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.reglink.services.ICommunicationService"

    .line 15
    invoke-virtual {p0, p0, v0}, Lcom/reglink/services/ICommunicationService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/reglink/services/ICommunicationService;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.reglink.services.ICommunicationService"

    .line 26
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 27
    instance-of v1, v0, Lcom/reglink/services/ICommunicationService;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lcom/reglink/services/ICommunicationService;

    return-object v0

    .line 30
    :cond_1
    new-instance v0, Lcom/reglink/services/ICommunicationService$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/reglink/services/ICommunicationService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const v2, 0x5f4e5446

    const/4 v7, 0x1

    const-string v3, "com.reglink.services.ICommunicationService"

    if-eq p1, v2, :cond_0

    packed-switch p1, :pswitch_data_0

    .line 201
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 193
    :pswitch_0
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 194
    invoke-virtual {p0}, Lcom/reglink/services/ICommunicationService$Stub;->allowSendCANData()Z

    move-result v0

    .line 195
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 196
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v7

    .line 184
    :pswitch_1
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 186
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/reglink/services/ICommDataCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/reglink/services/ICommDataCallback;

    move-result-object v0

    .line 187
    invoke-virtual {p0, v0}, Lcom/reglink/services/ICommunicationService$Stub;->unregisterCommDataCallback(Lcom/reglink/services/ICommDataCallback;)V

    .line 188
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v7

    .line 175
    :pswitch_2
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 177
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/reglink/services/ICommDataCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/reglink/services/ICommDataCallback;

    move-result-object v0

    .line 178
    invoke-virtual {p0, v0}, Lcom/reglink/services/ICommunicationService$Stub;->registerCommDataCallback(Lcom/reglink/services/ICommDataCallback;)V

    .line 179
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v7

    .line 166
    :pswitch_3
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 168
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/reglink/services/ICANCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/reglink/services/ICANCallback;

    move-result-object v0

    .line 169
    invoke-virtual {p0, v0}, Lcom/reglink/services/ICommunicationService$Stub;->unregisterCANCallback(Lcom/reglink/services/ICANCallback;)V

    .line 170
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v7

    .line 157
    :pswitch_4
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 159
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/reglink/services/ICANCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/reglink/services/ICANCallback;

    move-result-object v0

    .line 160
    invoke-virtual {p0, v0}, Lcom/reglink/services/ICommunicationService$Stub;->registerCANCallback(Lcom/reglink/services/ICANCallback;)V

    .line 161
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v7

    .line 138
    :pswitch_5
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 140
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result v2

    .line 142
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result v3

    .line 144
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result v4

    .line 146
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result v5

    .line 148
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result v6

    .line 150
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result v8

    move-object v0, p0

    move v1, v2

    move v2, v3

    move v3, v4

    move v4, v5

    move v5, v6

    move v6, v8

    .line 151
    invoke-virtual/range {v0 .. v6}, Lcom/reglink/services/ICommunicationService$Stub;->write6(BBBBBB)V

    .line 152
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v7

    .line 121
    :pswitch_6
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 123
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result v2

    .line 125
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result v3

    .line 127
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result v4

    .line 129
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result v5

    .line 131
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result v6

    move-object v0, p0

    move v1, v2

    move v2, v3

    move v3, v4

    move v4, v5

    move v5, v6

    .line 132
    invoke-virtual/range {v0 .. v5}, Lcom/reglink/services/ICommunicationService$Stub;->write5(BBBBB)V

    .line 133
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v7

    .line 106
    :pswitch_7
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 108
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result v0

    .line 110
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result v2

    .line 112
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result v3

    .line 114
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result v1

    .line 115
    invoke-virtual {p0, v0, v2, v3, v1}, Lcom/reglink/services/ICommunicationService$Stub;->write4(BBBB)V

    .line 116
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v7

    .line 93
    :pswitch_8
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 95
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result v0

    .line 97
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result v2

    .line 99
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result v1

    .line 100
    invoke-virtual {p0, v0, v2, v1}, Lcom/reglink/services/ICommunicationService$Stub;->write3(BBB)V

    .line 101
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v7

    .line 82
    :pswitch_9
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 84
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result v0

    .line 86
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result v1

    .line 87
    invoke-virtual {p0, v0, v1}, Lcom/reglink/services/ICommunicationService$Stub;->write2(BB)V

    .line 88
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v7

    .line 73
    :pswitch_a
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 75
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    .line 76
    invoke-virtual {p0, v0}, Lcom/reglink/services/ICommunicationService$Stub;->write([B)V

    .line 77
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v7

    .line 64
    :pswitch_b
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 66
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    .line 67
    invoke-virtual {p0, v0}, Lcom/reglink/services/ICommunicationService$Stub;->writeRawData([B)V

    .line 68
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v7

    .line 48
    :pswitch_c
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 50
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 52
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 54
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    .line 56
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 57
    invoke-virtual {p0, v0, v2, v3, v1}, Lcom/reglink/services/ICommunicationService$Stub;->writeCANData(II[BI)Z

    move-result v0

    .line 58
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 59
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v7

    .line 43
    :cond_0
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v7

    nop

    :pswitch_data_0
    .packed-switch 0x1
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
