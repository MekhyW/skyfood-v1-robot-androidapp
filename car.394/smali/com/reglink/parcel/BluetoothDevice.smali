.class public Lcom/reglink/parcel/BluetoothDevice;
.super Ljava/lang/Object;
.source "BluetoothDevice.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/reglink/parcel/BluetoothDevice;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private address:Ljava/lang/String;

.field private name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 69
    new-instance v0, Lcom/reglink/parcel/BluetoothDevice$1;

    invoke-direct {v0}, Lcom/reglink/parcel/BluetoothDevice$1;-><init>()V

    sput-object v0, Lcom/reglink/parcel/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 10
    iput-object v0, p0, Lcom/reglink/parcel/BluetoothDevice;->name:Ljava/lang/String;

    .line 11
    iput-object v0, p0, Lcom/reglink/parcel/BluetoothDevice;->address:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 10
    iput-object v0, p0, Lcom/reglink/parcel/BluetoothDevice;->name:Ljava/lang/String;

    .line 11
    iput-object v0, p0, Lcom/reglink/parcel/BluetoothDevice;->address:Ljava/lang/String;

    .line 41
    invoke-virtual {p0, p1}, Lcom/reglink/parcel/BluetoothDevice;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/reglink/parcel/BluetoothDevice$1;)V
    .locals 0

    .line 9
    invoke-direct {p0, p1}, Lcom/reglink/parcel/BluetoothDevice;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static obtain(Ljava/lang/String;Ljava/lang/String;)Lcom/reglink/parcel/BluetoothDevice;
    .locals 1

    .line 47
    new-instance v0, Lcom/reglink/parcel/BluetoothDevice;

    invoke-direct {v0}, Lcom/reglink/parcel/BluetoothDevice;-><init>()V

    .line 48
    iput-object p0, v0, Lcom/reglink/parcel/BluetoothDevice;->name:Ljava/lang/String;

    .line 49
    iput-object p1, v0, Lcom/reglink/parcel/BluetoothDevice;->address:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public address()Ljava/lang/String;
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/reglink/parcel/BluetoothDevice;->address:Ljava/lang/String;

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x1

    if-ne p0, p1, :cond_1

    return v1

    .line 17
    :cond_1
    instance-of v2, p1, Lcom/reglink/parcel/BluetoothDevice;

    if-eqz v2, :cond_2

    .line 18
    check-cast p1, Lcom/reglink/parcel/BluetoothDevice;

    .line 19
    iget-object v2, p0, Lcom/reglink/parcel/BluetoothDevice;->name:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/reglink/parcel/BluetoothDevice;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/reglink/parcel/BluetoothDevice;->address:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/reglink/parcel/BluetoothDevice;->address()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    move v0, v1

    :cond_2
    return v0
.end method

.method public name()Ljava/lang/String;
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/reglink/parcel/BluetoothDevice;->name:Ljava/lang/String;

    return-object v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1

    .line 36
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/reglink/parcel/BluetoothDevice;->name:Ljava/lang/String;

    .line 37
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/reglink/parcel/BluetoothDevice;->address:Ljava/lang/String;

    return-void
.end method

.method public setAddress(Ljava/lang/String;)Lcom/reglink/parcel/BluetoothDevice;
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/reglink/parcel/BluetoothDevice;->address:Ljava/lang/String;

    return-object p0
.end method

.method public setName(Ljava/lang/String;)Lcom/reglink/parcel/BluetoothDevice;
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/reglink/parcel/BluetoothDevice;->name:Ljava/lang/String;

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 31
    iget-object p2, p0, Lcom/reglink/parcel/BluetoothDevice;->name:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 32
    iget-object p2, p0, Lcom/reglink/parcel/BluetoothDevice;->address:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
