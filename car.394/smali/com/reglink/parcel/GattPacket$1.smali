.class final Lcom/reglink/parcel/GattPacket$1;
.super Ljava/lang/Object;
.source "GattPacket.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/reglink/parcel/GattPacket;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/reglink/parcel/GattPacket;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/reglink/parcel/GattPacket;
    .locals 2

    .line 88
    new-instance v0, Lcom/reglink/parcel/GattPacket;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/reglink/parcel/GattPacket;-><init>(Landroid/os/Parcel;Lcom/reglink/parcel/GattPacket$1;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 85
    invoke-virtual {p0, p1}, Lcom/reglink/parcel/GattPacket$1;->createFromParcel(Landroid/os/Parcel;)Lcom/reglink/parcel/GattPacket;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/reglink/parcel/GattPacket;
    .locals 0

    .line 93
    new-array p1, p1, [Lcom/reglink/parcel/GattPacket;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 85
    invoke-virtual {p0, p1}, Lcom/reglink/parcel/GattPacket$1;->newArray(I)[Lcom/reglink/parcel/GattPacket;

    move-result-object p1

    return-object p1
.end method
