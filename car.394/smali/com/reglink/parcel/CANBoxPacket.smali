.class public Lcom/reglink/parcel/CANBoxPacket;
.super Lcom/reglink/parcel/RlBuffer;
.source "CANBoxPacket.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/reglink/parcel/CANBoxPacket$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/reglink/parcel/CANBoxPacket;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private builder:Lcom/reglink/parcel/CANBoxPacket$Builder;

.field private dataType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 62
    new-instance v0, Lcom/reglink/parcel/CANBoxPacket$1;

    invoke-direct {v0}, Lcom/reglink/parcel/CANBoxPacket$1;-><init>()V

    sput-object v0, Lcom/reglink/parcel/CANBoxPacket;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Lcom/reglink/parcel/RlBuffer;-><init>()V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .line 52
    invoke-direct {p0}, Lcom/reglink/parcel/RlBuffer;-><init>()V

    .line 53
    invoke-virtual {p0, p1}, Lcom/reglink/parcel/CANBoxPacket;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/reglink/parcel/CANBoxPacket$1;)V
    .locals 0

    .line 11
    invoke-direct {p0, p1}, Lcom/reglink/parcel/CANBoxPacket;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method static synthetic access$102(Lcom/reglink/parcel/CANBoxPacket;I)I
    .locals 0

    .line 11
    iput p1, p0, Lcom/reglink/parcel/CANBoxPacket;->dataType:I

    return p1
.end method

.method public static build(I[B)Lcom/reglink/parcel/CANBoxPacket;
    .locals 1

    .line 47
    new-instance v0, Lcom/reglink/parcel/CANBoxPacket$Builder;

    invoke-direct {v0}, Lcom/reglink/parcel/CANBoxPacket$Builder;-><init>()V

    .line 48
    invoke-virtual {v0, p0}, Lcom/reglink/parcel/CANBoxPacket$Builder;->setDataType(I)Lcom/reglink/parcel/CANBoxPacket$Builder;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/reglink/parcel/CANBoxPacket$Builder;->setData([B)Lcom/reglink/parcel/CANBoxPacket$Builder;

    .line 49
    invoke-virtual {v0}, Lcom/reglink/parcel/CANBoxPacket$Builder;->build()Lcom/reglink/parcel/CANBoxPacket;

    move-result-object p0

    return-object p0
.end method

.method public static varargs build(I[I)Lcom/reglink/parcel/CANBoxPacket;
    .locals 4

    .line 37
    new-instance v0, Lcom/reglink/parcel/CANBoxPacket$Builder;

    invoke-direct {v0}, Lcom/reglink/parcel/CANBoxPacket$Builder;-><init>()V

    .line 38
    array-length v1, p1

    new-array v1, v1, [B

    const/4 v2, 0x0

    .line 39
    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_0

    .line 40
    aget v3, p1, v2

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 42
    :cond_0
    invoke-virtual {v0, p0}, Lcom/reglink/parcel/CANBoxPacket$Builder;->setDataType(I)Lcom/reglink/parcel/CANBoxPacket$Builder;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/reglink/parcel/CANBoxPacket$Builder;->setData([B)Lcom/reglink/parcel/CANBoxPacket$Builder;

    .line 43
    invoke-virtual {v0}, Lcom/reglink/parcel/CANBoxPacket$Builder;->build()Lcom/reglink/parcel/CANBoxPacket;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public builder()Lcom/reglink/parcel/CANBoxPacket$Builder;
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/reglink/parcel/CANBoxPacket;->builder:Lcom/reglink/parcel/CANBoxPacket$Builder;

    if-nez v0, :cond_0

    new-instance v0, Lcom/reglink/parcel/CANBoxPacket$Builder;

    invoke-direct {v0, p0}, Lcom/reglink/parcel/CANBoxPacket$Builder;-><init>(Lcom/reglink/parcel/CANBoxPacket;)V

    iput-object v0, p0, Lcom/reglink/parcel/CANBoxPacket;->builder:Lcom/reglink/parcel/CANBoxPacket$Builder;

    .line 17
    :cond_0
    iget-object v0, p0, Lcom/reglink/parcel/CANBoxPacket;->builder:Lcom/reglink/parcel/CANBoxPacket$Builder;

    return-object v0
.end method

.method public clone()Lcom/reglink/parcel/CANBoxPacket;
    .locals 2

    .line 118
    invoke-virtual {p0}, Lcom/reglink/parcel/CANBoxPacket;->dataType()I

    move-result v0

    invoke-virtual {p0}, Lcom/reglink/parcel/CANBoxPacket;->copy()[B

    move-result-object v1

    invoke-static {v0, v1}, Lcom/reglink/parcel/CANBoxPacket$Builder;->build(I[B)Lcom/reglink/parcel/CANBoxPacket;

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

    .line 11
    invoke-virtual {p0}, Lcom/reglink/parcel/CANBoxPacket;->clone()Lcom/reglink/parcel/CANBoxPacket;

    move-result-object v0

    return-object v0
.end method

.method public dataType()I
    .locals 1

    .line 114
    iget v0, p0, Lcom/reglink/parcel/CANBoxPacket;->dataType:I

    return v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public length()I
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/reglink/parcel/CANBoxPacket;->bytes:[B

    array-length v0, v0

    return v0
.end method

.method public mutable()Lcom/reglink/parcel/CANBoxPacket$Builder;
    .locals 1

    .line 110
    new-instance v0, Lcom/reglink/parcel/CANBoxPacket$Builder;

    invoke-direct {v0, p0}, Lcom/reglink/parcel/CANBoxPacket$Builder;-><init>(Lcom/reglink/parcel/CANBoxPacket;)V

    return-object v0
.end method

.method protected readFromParcel(Landroid/os/Parcel;)V
    .locals 1

    .line 25
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/reglink/parcel/CANBoxPacket;->dataType:I

    .line 26
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p1

    iput-object p1, p0, Lcom/reglink/parcel/CANBoxPacket;->bytes:[B

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 124
    iget-object v0, p0, Lcom/reglink/parcel/CANBoxPacket;->bytes:[B

    if-nez v0, :cond_0

    const-string v0, "[invalid]"

    return-object v0

    .line 125
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "type:0x"

    .line 126
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/reglink/parcel/CANBoxPacket;->dataType()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",data:"

    .line 127
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/reglink/parcel/CANBoxPacket;->bytes:[B

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/reglink/parcel/CANBoxPacket;->length()I

    move-result v4

    invoke-static {v2, v3, v4}, Lcom/reglink/common/Format;->hexFormat([BII)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 58
    iget p2, p0, Lcom/reglink/parcel/CANBoxPacket;->dataType:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 59
    iget-object p2, p0, Lcom/reglink/parcel/CANBoxPacket;->bytes:[B

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    return-void
.end method
