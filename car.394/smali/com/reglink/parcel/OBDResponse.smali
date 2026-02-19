.class public Lcom/reglink/parcel/OBDResponse;
.super Lcom/reglink/parcel/RlBuffer;
.source "OBDResponse.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/reglink/parcel/OBDResponse;",
            ">;"
        }
    .end annotation
.end field

.field public static final ErrorNRC:I = 0x2

.field public static final ErrorNoError:I = 0x0

.field public static final ErrorTimeout:I = 0x1


# instance fields
.field private errorType:I

.field private mode:B

.field private nrcError:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 45
    new-instance v0, Lcom/reglink/parcel/OBDResponse$1;

    invoke-direct {v0}, Lcom/reglink/parcel/OBDResponse$1;-><init>()V

    sput-object v0, Lcom/reglink/parcel/OBDResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 20
    invoke-direct {p0}, Lcom/reglink/parcel/RlBuffer;-><init>()V

    const/4 v0, 0x0

    .line 17
    iput v0, p0, Lcom/reglink/parcel/OBDResponse;->errorType:I

    .line 18
    iput v0, p0, Lcom/reglink/parcel/OBDResponse;->nrcError:I

    const/4 v0, -0x1

    .line 19
    iput-byte v0, p0, Lcom/reglink/parcel/OBDResponse;->mode:B

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 42
    invoke-direct {p0}, Lcom/reglink/parcel/RlBuffer;-><init>()V

    const/4 v0, 0x0

    .line 17
    iput v0, p0, Lcom/reglink/parcel/OBDResponse;->errorType:I

    .line 18
    iput v0, p0, Lcom/reglink/parcel/OBDResponse;->nrcError:I

    const/4 v0, -0x1

    .line 19
    iput-byte v0, p0, Lcom/reglink/parcel/OBDResponse;->mode:B

    .line 43
    invoke-virtual {p0, p1}, Lcom/reglink/parcel/OBDResponse;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/reglink/parcel/OBDResponse$1;)V
    .locals 0

    .line 12
    invoke-direct {p0, p1}, Lcom/reglink/parcel/OBDResponse;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getErrorType()I
    .locals 1

    .line 62
    iget v0, p0, Lcom/reglink/parcel/OBDResponse;->errorType:I

    return v0
.end method

.method public getMode()B
    .locals 1

    .line 78
    iget-byte v0, p0, Lcom/reglink/parcel/OBDResponse;->mode:B

    return v0
.end method

.method public getNrcError()I
    .locals 1

    .line 70
    iget v0, p0, Lcom/reglink/parcel/OBDResponse;->nrcError:I

    return v0
.end method

.method public getPid(Z)I
    .locals 1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 87
    iget-object p1, p0, Lcom/reglink/parcel/OBDResponse;->bytes:[B

    invoke-static {p1, v0}, Lcom/reglink/common/BinaryUtil;->readUShortBE([BI)I

    move-result p1

    return p1

    .line 89
    :cond_0
    iget-object p1, p0, Lcom/reglink/parcel/OBDResponse;->bytes:[B

    aget-byte p1, p1, v0

    and-int/lit16 p1, p1, 0xff

    return p1
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1

    .line 37
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/reglink/parcel/OBDResponse;->errorType:I

    .line 38
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/reglink/parcel/OBDResponse;->nrcError:I

    .line 39
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    iput-byte v0, p0, Lcom/reglink/parcel/OBDResponse;->mode:B

    .line 40
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p1

    iput-object p1, p0, Lcom/reglink/parcel/OBDResponse;->bytes:[B

    return-void
.end method

.method public setErrorType(I)V
    .locals 0

    .line 66
    iput p1, p0, Lcom/reglink/parcel/OBDResponse;->errorType:I

    return-void
.end method

.method public setMode(B)V
    .locals 0

    .line 82
    iput-byte p1, p0, Lcom/reglink/parcel/OBDResponse;->mode:B

    return-void
.end method

.method public setNrcError(I)V
    .locals 0

    .line 74
    iput p1, p0, Lcom/reglink/parcel/OBDResponse;->nrcError:I

    return-void
.end method

.method public setRespData([B)V
    .locals 0

    .line 58
    invoke-virtual {p0, p1}, Lcom/reglink/parcel/OBDResponse;->initBytes([B)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 94
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/16 v1, 0x7b

    .line 95
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 96
    invoke-virtual {p0}, Lcom/reglink/parcel/OBDResponse;->getErrorType()I

    move-result v1

    const-string v2, "}"

    if-eqz v1, :cond_2

    const-string v1, "error:"

    .line 97
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    invoke-virtual {p0}, Lcom/reglink/parcel/OBDResponse;->getErrorType()I

    move-result v1

    const/4 v3, 0x1

    if-eq v1, v3, :cond_1

    const/4 v3, 0x2

    if-eq v1, v3, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "NRC("

    .line 100
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/reglink/parcel/OBDResponse;->getNrcError()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ")"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    const-string v1, "Timeout"

    .line 103
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    const-string v1, ",mode:"

    .line 106
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/reglink/parcel/OBDResponse;->getMode()B

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    const-string v1, "mode:"

    .line 110
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/reglink/parcel/OBDResponse;->getMode()B

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",data:"

    .line 111
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/reglink/parcel/OBDResponse;->bytes:[B

    invoke-static {v3}, Lcom/reglink/common/Format;->hexFormat([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 30
    iget p2, p0, Lcom/reglink/parcel/OBDResponse;->errorType:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 31
    iget p2, p0, Lcom/reglink/parcel/OBDResponse;->nrcError:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 32
    iget-byte p2, p0, Lcom/reglink/parcel/OBDResponse;->mode:B

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 33
    iget-object p2, p0, Lcom/reglink/parcel/OBDResponse;->bytes:[B

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    return-void
.end method
