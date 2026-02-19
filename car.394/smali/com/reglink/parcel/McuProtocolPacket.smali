.class public Lcom/reglink/parcel/McuProtocolPacket;
.super Lcom/reglink/parcel/RlBuffer;
.source "McuProtocolPacket.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/reglink/parcel/McuProtocolPacket$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/reglink/parcel/McuProtocolPacket;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private command:I

.field private length:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 37
    new-instance v0, Lcom/reglink/parcel/McuProtocolPacket$1;

    invoke-direct {v0}, Lcom/reglink/parcel/McuProtocolPacket$1;-><init>()V

    sput-object v0, Lcom/reglink/parcel/McuProtocolPacket;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Lcom/reglink/parcel/RlBuffer;-><init>()V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Lcom/reglink/parcel/RlBuffer;-><init>()V

    .line 29
    invoke-virtual {p0, p1}, Lcom/reglink/parcel/McuProtocolPacket;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/reglink/parcel/McuProtocolPacket$1;)V
    .locals 0

    .line 11
    invoke-direct {p0, p1}, Lcom/reglink/parcel/McuProtocolPacket;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method static synthetic access$102(Lcom/reglink/parcel/McuProtocolPacket;I)I
    .locals 0

    .line 11
    iput p1, p0, Lcom/reglink/parcel/McuProtocolPacket;->command:I

    return p1
.end method

.method static synthetic access$200(Lcom/reglink/parcel/McuProtocolPacket;)I
    .locals 0

    .line 11
    iget p0, p0, Lcom/reglink/parcel/McuProtocolPacket;->length:I

    return p0
.end method

.method static synthetic access$202(Lcom/reglink/parcel/McuProtocolPacket;I)I
    .locals 0

    .line 11
    iput p1, p0, Lcom/reglink/parcel/McuProtocolPacket;->length:I

    return p1
.end method


# virtual methods
.method public command()I
    .locals 1

    .line 95
    iget v0, p0, Lcom/reglink/parcel/McuProtocolPacket;->command:I

    return v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public length()I
    .locals 1

    .line 99
    iget v0, p0, Lcom/reglink/parcel/McuProtocolPacket;->length:I

    return v0
.end method

.method protected readFromParcel(Landroid/os/Parcel;)V
    .locals 1

    .line 21
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/reglink/parcel/McuProtocolPacket;->command:I

    .line 22
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/reglink/parcel/McuProtocolPacket;->length:I

    .line 23
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p1

    iput-object p1, p0, Lcom/reglink/parcel/McuProtocolPacket;->bytes:[B

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 105
    iget-object v0, p0, Lcom/reglink/parcel/McuProtocolPacket;->bytes:[B

    if-nez v0, :cond_0

    const-string v0, "[invalid]"

    return-object v0

    .line 106
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "0x"

    .line 107
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/reglink/parcel/McuProtocolPacket;->command()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",len:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/reglink/parcel/McuProtocolPacket;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",data:"

    .line 108
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    iget-object v1, p0, Lcom/reglink/parcel/McuProtocolPacket;->bytes:[B

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/reglink/parcel/McuProtocolPacket;->length()I

    move-result v3

    invoke-static {v1, v2, v3}, Lcom/reglink/common/Format;->hexFormat([BII)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 33
    iget p2, p0, Lcom/reglink/parcel/McuProtocolPacket;->command:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 34
    iget p2, p0, Lcom/reglink/parcel/McuProtocolPacket;->length:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 35
    iget-object p2, p0, Lcom/reglink/parcel/McuProtocolPacket;->bytes:[B

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    return-void
.end method
