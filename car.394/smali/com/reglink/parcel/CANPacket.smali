.class public Lcom/reglink/parcel/CANPacket;
.super Lcom/reglink/parcel/RlBuffer;
.source "CANPacket.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/reglink/parcel/CANPacket$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/reglink/parcel/CANPacket;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private builder:Lcom/reglink/parcel/CANPacket$Builder;

.field private bus:B

.field private dlc:B

.field private id:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 63
    new-instance v0, Lcom/reglink/parcel/CANPacket$1;

    invoke-direct {v0}, Lcom/reglink/parcel/CANPacket$1;-><init>()V

    sput-object v0, Lcom/reglink/parcel/CANPacket;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 34
    invoke-direct {p0}, Lcom/reglink/parcel/RlBuffer;-><init>()V

    const/4 v0, 0x1

    .line 13
    iput-byte v0, p0, Lcom/reglink/parcel/CANPacket;->bus:B

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 53
    invoke-direct {p0}, Lcom/reglink/parcel/RlBuffer;-><init>()V

    const/4 v0, 0x1

    .line 13
    iput-byte v0, p0, Lcom/reglink/parcel/CANPacket;->bus:B

    .line 54
    invoke-virtual {p0, p1}, Lcom/reglink/parcel/CANPacket;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/reglink/parcel/CANPacket$1;)V
    .locals 0

    .line 12
    invoke-direct {p0, p1}, Lcom/reglink/parcel/CANPacket;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method static synthetic access$102(Lcom/reglink/parcel/CANPacket;J)J
    .locals 0

    .line 12
    iput-wide p1, p0, Lcom/reglink/parcel/CANPacket;->id:J

    return-wide p1
.end method

.method static synthetic access$202(Lcom/reglink/parcel/CANPacket;B)B
    .locals 0

    .line 12
    iput-byte p1, p0, Lcom/reglink/parcel/CANPacket;->bus:B

    return p1
.end method

.method static synthetic access$300(Lcom/reglink/parcel/CANPacket;)B
    .locals 0

    .line 12
    iget-byte p0, p0, Lcom/reglink/parcel/CANPacket;->dlc:B

    return p0
.end method

.method static synthetic access$302(Lcom/reglink/parcel/CANPacket;B)B
    .locals 0

    .line 12
    iput-byte p1, p0, Lcom/reglink/parcel/CANPacket;->dlc:B

    return p1
.end method

.method public static varargs build(I[I)Lcom/reglink/parcel/CANPacket;
    .locals 4

    .line 45
    new-instance v0, Lcom/reglink/parcel/CANPacket$Builder;

    invoke-direct {v0}, Lcom/reglink/parcel/CANPacket$Builder;-><init>()V

    .line 46
    array-length v1, p1

    new-array v1, v1, [B

    const/4 v2, 0x0

    .line 47
    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_0

    .line 48
    aget v3, p1, v2

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    int-to-long v2, p0

    .line 50
    invoke-virtual {v0, v2, v3}, Lcom/reglink/parcel/CANPacket$Builder;->setId(J)Lcom/reglink/parcel/CANPacket$Builder;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/reglink/parcel/CANPacket$Builder;->setData([B)Lcom/reglink/parcel/CANPacket$Builder;

    move-result-object p0

    array-length p1, p1

    invoke-virtual {p0, p1}, Lcom/reglink/parcel/CANPacket$Builder;->setDlc(I)Lcom/reglink/parcel/CANPacket$Builder;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/reglink/parcel/CANPacket$Builder;->setBus(I)Lcom/reglink/parcel/CANPacket$Builder;

    .line 51
    invoke-virtual {v0}, Lcom/reglink/parcel/CANPacket$Builder;->build()Lcom/reglink/parcel/CANPacket;

    move-result-object p0

    return-object p0
.end method

.method public static varargs buildWithBus(BI[I)Lcom/reglink/parcel/CANPacket;
    .locals 0

    .line 38
    invoke-static {p1, p2}, Lcom/reglink/parcel/CANPacket;->build(I[I)Lcom/reglink/parcel/CANPacket;

    move-result-object p1

    .line 39
    iput-byte p0, p1, Lcom/reglink/parcel/CANPacket;->bus:B

    return-object p1
.end method


# virtual methods
.method public builder()Lcom/reglink/parcel/CANPacket$Builder;
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/reglink/parcel/CANPacket;->builder:Lcom/reglink/parcel/CANPacket$Builder;

    if-nez v0, :cond_0

    new-instance v0, Lcom/reglink/parcel/CANPacket$Builder;

    invoke-direct {v0, p0}, Lcom/reglink/parcel/CANPacket$Builder;-><init>(Lcom/reglink/parcel/CANPacket;)V

    iput-object v0, p0, Lcom/reglink/parcel/CANPacket;->builder:Lcom/reglink/parcel/CANPacket$Builder;

    .line 21
    :cond_0
    iget-object v0, p0, Lcom/reglink/parcel/CANPacket;->builder:Lcom/reglink/parcel/CANPacket$Builder;

    return-object v0
.end method

.method public bus()I
    .locals 1

    .line 125
    iget-byte v0, p0, Lcom/reglink/parcel/CANPacket;->bus:B

    return v0
.end method

.method public clone()Lcom/reglink/parcel/CANPacket;
    .locals 5

    .line 137
    invoke-virtual {p0}, Lcom/reglink/parcel/CANPacket;->bus()I

    move-result v0

    invoke-virtual {p0}, Lcom/reglink/parcel/CANPacket;->id()J

    move-result-wide v1

    invoke-virtual {p0}, Lcom/reglink/parcel/CANPacket;->dlc()I

    move-result v3

    invoke-virtual {p0}, Lcom/reglink/parcel/CANPacket;->copy()[B

    move-result-object v4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/reglink/parcel/CANPacket$Builder;->build(IJI[B)Lcom/reglink/parcel/CANPacket;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 12
    invoke-virtual {p0}, Lcom/reglink/parcel/CANPacket;->clone()Lcom/reglink/parcel/CANPacket;

    move-result-object v0

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public dlc()I
    .locals 1

    .line 133
    iget-byte v0, p0, Lcom/reglink/parcel/CANPacket;->dlc:B

    return v0
.end method

.method public id()J
    .locals 2

    .line 129
    iget-wide v0, p0, Lcom/reglink/parcel/CANPacket;->id:J

    return-wide v0
.end method

.method public mutable()Lcom/reglink/parcel/CANPacket$Builder;
    .locals 1

    .line 121
    new-instance v0, Lcom/reglink/parcel/CANPacket$Builder;

    invoke-direct {v0, p0}, Lcom/reglink/parcel/CANPacket$Builder;-><init>(Lcom/reglink/parcel/CANPacket;)V

    return-object v0
.end method

.method protected readFromParcel(Landroid/os/Parcel;)V
    .locals 2

    .line 29
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    iput-byte v0, p0, Lcom/reglink/parcel/CANPacket;->bus:B

    .line 30
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/reglink/parcel/CANPacket;->id:J

    .line 31
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    iput-byte v0, p0, Lcom/reglink/parcel/CANPacket;->dlc:B

    .line 32
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p1

    iput-object p1, p0, Lcom/reglink/parcel/CANPacket;->bytes:[B

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 143
    iget-object v0, p0, Lcom/reglink/parcel/CANPacket;->bytes:[B

    if-nez v0, :cond_0

    const-string v0, "[invalid]"

    return-object v0

    .line 144
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "id:0x"

    .line 145
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/reglink/parcel/CANPacket;->id()J

    move-result-wide v2

    long-to-int v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",dlc:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/reglink/parcel/CANPacket;->dlc()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",data:"

    .line 146
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/reglink/parcel/CANPacket;->bytes:[B

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/reglink/parcel/CANPacket;->dlc()I

    move-result v4

    invoke-static {v2, v3, v4}, Lcom/reglink/common/Format;->hexFormat([BII)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 58
    iget-byte p2, p0, Lcom/reglink/parcel/CANPacket;->bus:B

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 59
    iget-wide v0, p0, Lcom/reglink/parcel/CANPacket;->id:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 60
    iget-byte p2, p0, Lcom/reglink/parcel/CANPacket;->dlc:B

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 61
    iget-object p2, p0, Lcom/reglink/parcel/CANPacket;->bytes:[B

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    return-void
.end method
