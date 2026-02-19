.class public abstract Lcom/reglink/services/IKeyCallback$Stub;
.super Landroid/os/Binder;
.source "IKeyCallback.java"

# interfaces
.implements Lcom/reglink/services/IKeyCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/reglink/services/IKeyCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/reglink/services/IKeyCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.reglink.services.IKeyCallback"

.field static final TRANSACTION_keyCallback:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.reglink.services.IKeyCallback"

    .line 15
    invoke-virtual {p0, p0, v0}, Lcom/reglink/services/IKeyCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/reglink/services/IKeyCallback;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.reglink.services.IKeyCallback"

    .line 26
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 27
    instance-of v1, v0, Lcom/reglink/services/IKeyCallback;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lcom/reglink/services/IKeyCallback;

    return-object v0

    .line 30
    :cond_1
    new-instance v0, Lcom/reglink/services/IKeyCallback$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/reglink/services/IKeyCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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

    const-string v1, "com.reglink.services.IKeyCallback"

    if-eq p1, v0, :cond_1

    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_0

    .line 63
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 43
    :cond_0
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v0

    .line 48
    :cond_1
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 50
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_2

    .line 51
    sget-object p1, Lcom/reglink/parcel/KeyEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/reglink/parcel/KeyEvent;

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    .line 56
    :goto_0
    invoke-virtual {p0, p1}, Lcom/reglink/services/IKeyCallback$Stub;->keyCallback(Lcom/reglink/parcel/KeyEvent;)Z

    move-result p1

    .line 57
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 58
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0
.end method
