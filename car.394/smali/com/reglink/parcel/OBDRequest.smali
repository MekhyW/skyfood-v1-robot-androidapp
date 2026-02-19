.class public Lcom/reglink/parcel/OBDRequest;
.super Ljava/lang/Object;
.source "OBDRequest.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/reglink/parcel/OBDRequest;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private data:[B

.field private extendMode:Z

.field public isRawPacket:Z

.field private mode:B

.field private pid:S


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 40
    new-instance v0, Lcom/reglink/parcel/OBDRequest$1;

    invoke-direct {v0}, Lcom/reglink/parcel/OBDRequest$1;-><init>()V

    sput-object v0, Lcom/reglink/parcel/OBDRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 10
    iput-byte v0, p0, Lcom/reglink/parcel/OBDRequest;->mode:B

    .line 11
    iput-short v0, p0, Lcom/reglink/parcel/OBDRequest;->pid:S

    const/4 v0, 0x0

    .line 12
    iput-object v0, p0, Lcom/reglink/parcel/OBDRequest;->data:[B

    const/4 v0, 0x0

    .line 13
    iput-boolean v0, p0, Lcom/reglink/parcel/OBDRequest;->extendMode:Z

    .line 14
    iput-boolean v0, p0, Lcom/reglink/parcel/OBDRequest;->isRawPacket:Z

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 10
    iput-byte v0, p0, Lcom/reglink/parcel/OBDRequest;->mode:B

    .line 11
    iput-short v0, p0, Lcom/reglink/parcel/OBDRequest;->pid:S

    const/4 v0, 0x0

    .line 12
    iput-object v0, p0, Lcom/reglink/parcel/OBDRequest;->data:[B

    const/4 v0, 0x0

    .line 13
    iput-boolean v0, p0, Lcom/reglink/parcel/OBDRequest;->extendMode:Z

    .line 14
    iput-boolean v0, p0, Lcom/reglink/parcel/OBDRequest;->isRawPacket:Z

    .line 38
    invoke-virtual {p0, p1}, Lcom/reglink/parcel/OBDRequest;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/reglink/parcel/OBDRequest$1;)V
    .locals 0

    .line 9
    invoke-direct {p0, p1}, Lcom/reglink/parcel/OBDRequest;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getData()[B
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/reglink/parcel/OBDRequest;->data:[B

    return-object v0
.end method

.method public getExtendMode()Z
    .locals 1

    .line 77
    iget-boolean v0, p0, Lcom/reglink/parcel/OBDRequest;->extendMode:Z

    return v0
.end method

.method public getMode()B
    .locals 1

    .line 53
    iget-byte v0, p0, Lcom/reglink/parcel/OBDRequest;->mode:B

    return v0
.end method

.method public getPid()S
    .locals 1

    .line 61
    iget-short v0, p0, Lcom/reglink/parcel/OBDRequest;->pid:S

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 2

    .line 32
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    invoke-virtual {p0, v0}, Lcom/reglink/parcel/OBDRequest;->setMode(B)V

    .line 33
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    int-to-short v0, v0

    invoke-virtual {p0, v0}, Lcom/reglink/parcel/OBDRequest;->setPid(S)V

    .line 34
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0, v1}, Lcom/reglink/parcel/OBDRequest;->setExtendMode(Z)V

    .line 35
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/reglink/parcel/OBDRequest;->setData([B)V

    return-void
.end method

.method public setData([B)V
    .locals 0

    .line 73
    iput-object p1, p0, Lcom/reglink/parcel/OBDRequest;->data:[B

    return-void
.end method

.method public setExtendMode(Z)V
    .locals 0

    .line 81
    iput-boolean p1, p0, Lcom/reglink/parcel/OBDRequest;->extendMode:Z

    return-void
.end method

.method public setMode(B)V
    .locals 0

    .line 57
    iput-byte p1, p0, Lcom/reglink/parcel/OBDRequest;->mode:B

    return-void
.end method

.method public setPid(S)V
    .locals 0

    .line 65
    iput-short p1, p0, Lcom/reglink/parcel/OBDRequest;->pid:S

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 25
    iget-byte p2, p0, Lcom/reglink/parcel/OBDRequest;->mode:B

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 26
    iget-short p2, p0, Lcom/reglink/parcel/OBDRequest;->pid:S

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 27
    iget-boolean p2, p0, Lcom/reglink/parcel/OBDRequest;->extendMode:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 28
    iget-object p2, p0, Lcom/reglink/parcel/OBDRequest;->data:[B

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    return-void
.end method
