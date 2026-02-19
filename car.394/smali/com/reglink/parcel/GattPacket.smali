.class public Lcom/reglink/parcel/GattPacket;
.super Ljava/lang/Object;
.source "GattPacket.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/reglink/parcel/GattPacket$Builder;,
        Lcom/reglink/parcel/GattPacket$AdStruct;
    }
.end annotation


# static fields
.field public static final BtAddrLen:I = 0x6

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/reglink/parcel/GattPacket;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private adStructs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/reglink/parcel/GattPacket$AdStruct;",
            ">;"
        }
    .end annotation
.end field

.field private final address:[B

.field private raw:[B

.field private rssi:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 85
    new-instance v0, Lcom/reglink/parcel/GattPacket$1;

    invoke-direct {v0}, Lcom/reglink/parcel/GattPacket$1;-><init>()V

    sput-object v0, Lcom/reglink/parcel/GattPacket;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x6

    new-array v0, v0, [B

    .line 16
    iput-object v0, p0, Lcom/reglink/parcel/GattPacket;->address:[B

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/reglink/parcel/GattPacket;->adStructs:Ljava/util/ArrayList;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x6

    new-array v0, v0, [B

    .line 16
    iput-object v0, p0, Lcom/reglink/parcel/GattPacket;->address:[B

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/reglink/parcel/GattPacket;->adStructs:Ljava/util/ArrayList;

    .line 79
    invoke-virtual {p0, p1}, Lcom/reglink/parcel/GattPacket;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/reglink/parcel/GattPacket$1;)V
    .locals 0

    .line 14
    invoke-direct {p0, p1}, Lcom/reglink/parcel/GattPacket;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/reglink/parcel/GattPacket$1;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Lcom/reglink/parcel/GattPacket;-><init>()V

    return-void
.end method

.method static synthetic access$400(Lcom/reglink/parcel/GattPacket;)[B
    .locals 0

    .line 14
    iget-object p0, p0, Lcom/reglink/parcel/GattPacket;->address:[B

    return-object p0
.end method

.method static synthetic access$502(Lcom/reglink/parcel/GattPacket;I)I
    .locals 0

    .line 14
    iput p1, p0, Lcom/reglink/parcel/GattPacket;->rssi:I

    return p1
.end method

.method static synthetic access$600(Lcom/reglink/parcel/GattPacket;)Ljava/util/ArrayList;
    .locals 0

    .line 14
    iget-object p0, p0, Lcom/reglink/parcel/GattPacket;->adStructs:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$702(Lcom/reglink/parcel/GattPacket;[B)[B
    .locals 0

    .line 14
    iput-object p1, p0, Lcom/reglink/parcel/GattPacket;->raw:[B

    return-object p1
.end method

.method static throwIndexOutOfBoundsException(II)Ljava/lang/IndexOutOfBoundsException;
    .locals 3

    .line 136
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid index "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, ", size is "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getAdStruct(I)Lcom/reglink/parcel/GattPacket$AdStruct;
    .locals 1

    if-ltz p1, :cond_0

    .line 140
    iget-object v0, p0, Lcom/reglink/parcel/GattPacket;->adStructs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 141
    :cond_0
    iget-object v0, p0, Lcom/reglink/parcel/GattPacket;->adStructs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-static {p1, v0}, Lcom/reglink/parcel/GattPacket;->throwIndexOutOfBoundsException(II)Ljava/lang/IndexOutOfBoundsException;

    .line 143
    :cond_1
    iget-object v0, p0, Lcom/reglink/parcel/GattPacket;->adStructs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/reglink/parcel/GattPacket$AdStruct;

    return-object p1
.end method

.method public getAdStructCount()I
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/reglink/parcel/GattPacket;->adStructs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getAddress()[B
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/reglink/parcel/GattPacket;->address:[B

    return-object v0
.end method

.method public getAddressString()Ljava/lang/String;
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/reglink/parcel/GattPacket;->address:[B

    invoke-static {v0}, Lcom/reglink/common/Format;->formatBtAddress([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRawBytes()[B
    .locals 1

    .line 114
    iget-object v0, p0, Lcom/reglink/parcel/GattPacket;->raw:[B

    return-object v0
.end method

.method public getRssi()I
    .locals 1

    .line 106
    iget v0, p0, Lcom/reglink/parcel/GattPacket;->rssi:I

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 4

    .line 61
    iget-object v0, p0, Lcom/reglink/parcel/GattPacket;->address:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readByteArray([B)V

    .line 62
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/reglink/parcel/GattPacket;->rssi:I

    .line 63
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 66
    new-instance v2, Lcom/reglink/parcel/GattPacket$AdStruct;

    invoke-direct {v2}, Lcom/reglink/parcel/GattPacket$AdStruct;-><init>()V

    .line 67
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-static {v2, v3}, Lcom/reglink/parcel/GattPacket$AdStruct;->access$002(Lcom/reglink/parcel/GattPacket$AdStruct;I)I

    .line 68
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    invoke-static {v2, v3}, Lcom/reglink/parcel/GattPacket$AdStruct;->access$102(Lcom/reglink/parcel/GattPacket$AdStruct;[B)[B

    .line 69
    iget-object v3, p0, Lcom/reglink/parcel/GattPacket;->adStructs:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 72
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-lez v0, :cond_1

    .line 74
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p1

    iput-object p1, p0, Lcom/reglink/parcel/GattPacket;->raw:[B

    :cond_1
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    .line 119
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "address: "

    .line 120
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/reglink/parcel/GattPacket;->address:[B

    invoke-static {v2}, Lcom/reglink/common/Format;->formatBtAddress([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", rssi: "

    .line 121
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/reglink/parcel/GattPacket;->rssi:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", advertising: "

    .line 122
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    move v2, v1

    .line 123
    :goto_0
    invoke-virtual {p0}, Lcom/reglink/parcel/GattPacket;->getAdStructCount()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 124
    invoke-virtual {p0, v2}, Lcom/reglink/parcel/GattPacket;->getAdStruct(I)Lcom/reglink/parcel/GattPacket$AdStruct;

    move-result-object v3

    if-eqz v2, :cond_0

    const-string v4, ", "

    .line 126
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    const-string v4, "[type:"

    .line 128
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v3}, Lcom/reglink/parcel/GattPacket$AdStruct;->access$000(Lcom/reglink/parcel/GattPacket$AdStruct;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v1

    const-string v6, "%02x"

    invoke-static {v6, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",data:"

    .line 129
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v3}, Lcom/reglink/parcel/GattPacket$AdStruct;->access$100(Lcom/reglink/parcel/GattPacket$AdStruct;)[B

    move-result-object v3

    invoke-static {v3}, Lcom/reglink/common/Format;->hexFormat([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 131
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 45
    iget-object p2, p0, Lcom/reglink/parcel/GattPacket;->address:[B

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 46
    iget p2, p0, Lcom/reglink/parcel/GattPacket;->rssi:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 47
    iget-object p2, p0, Lcom/reglink/parcel/GattPacket;->adStructs:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 48
    iget-object p2, p0, Lcom/reglink/parcel/GattPacket;->adStructs:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/reglink/parcel/GattPacket$AdStruct;

    .line 49
    invoke-static {v0}, Lcom/reglink/parcel/GattPacket$AdStruct;->access$000(Lcom/reglink/parcel/GattPacket$AdStruct;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 50
    invoke-static {v0}, Lcom/reglink/parcel/GattPacket$AdStruct;->access$100(Lcom/reglink/parcel/GattPacket$AdStruct;)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    goto :goto_0

    .line 52
    :cond_0
    iget-object p2, p0, Lcom/reglink/parcel/GattPacket;->raw:[B

    if-nez p2, :cond_1

    const/4 p2, 0x0

    .line 53
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    .line 55
    :cond_1
    array-length p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 56
    iget-object p2, p0, Lcom/reglink/parcel/GattPacket;->raw:[B

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    :goto_1
    return-void
.end method
