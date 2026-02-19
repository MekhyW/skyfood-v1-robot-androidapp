.class public Lcom/reglink/parcel/OTAInfo;
.super Ljava/lang/Object;
.source "OTAInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CMD_REQ_CHECK_UPDATE:I = 0x2711

.field public static final CMD_REQ_DOWNLOAD:I = 0x2713

.field public static final CMD_REQ_GET_OTA_INFO:I = 0x2712

.field public static final CMD_REQ_INSTALL:I = 0x2714

.field public static final CMD_REQ_REGISTER:I = 0x2715

.field public static final CMD_REQ_UNREGISTER:I = 0x2716

.field public static final CMD_RESP_DOWNLOAD_PROGRESS:I = 0x2776

.field public static final CMD_RESP_OTA_INFO:I = 0x2775

.field public static final CMD_RESP_VERIFY_STATUS:I = 0x2777

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/reglink/parcel/OTAInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final EXTRA_OTA_INFO:Ljava/lang/String; = "ota_info"


# instance fields
.field private buildDate:J

.field private desc:Ljava/lang/String;

.field private downloadUrl:Ljava/lang/String;

.field private fileSize:J

.field private important:I

.field private localAvailable:Z

.field private localPath:Ljava/lang/String;

.field private publishTime:J

.field private verified:Z

.field private version:I

.field private versionName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 56
    new-instance v0, Lcom/reglink/parcel/OTAInfo$1;

    invoke-direct {v0}, Lcom/reglink/parcel/OTAInfo$1;-><init>()V

    sput-object v0, Lcom/reglink/parcel/OTAInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/reglink/parcel/OTAInfo;->version:I

    .line 40
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/reglink/parcel/OTAInfo;->versionName:Ljava/lang/String;

    .line 41
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/reglink/parcel/OTAInfo;->desc:Ljava/lang/String;

    .line 42
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/reglink/parcel/OTAInfo;->buildDate:J

    .line 43
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/reglink/parcel/OTAInfo;->important:I

    .line 44
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/reglink/parcel/OTAInfo;->publishTime:J

    .line 45
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/reglink/parcel/OTAInfo;->fileSize:J

    .line 46
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/reglink/parcel/OTAInfo;->downloadUrl:Ljava/lang/String;

    .line 47
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iput-boolean v0, p0, Lcom/reglink/parcel/OTAInfo;->localAvailable:Z

    .line 48
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    iput-boolean v1, p0, Lcom/reglink/parcel/OTAInfo;->verified:Z

    .line 49
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/reglink/parcel/OTAInfo;->localPath:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getBuildDate()J
    .locals 2

    .line 113
    iget-wide v0, p0, Lcom/reglink/parcel/OTAInfo;->buildDate:J

    return-wide v0
.end method

.method public getDesc()Ljava/lang/String;
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/reglink/parcel/OTAInfo;->desc:Ljava/lang/String;

    return-object v0
.end method

.method public getDownloadUrl()Ljava/lang/String;
    .locals 1

    .line 145
    iget-object v0, p0, Lcom/reglink/parcel/OTAInfo;->downloadUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getFileSize()J
    .locals 2

    .line 137
    iget-wide v0, p0, Lcom/reglink/parcel/OTAInfo;->fileSize:J

    return-wide v0
.end method

.method public getImportant()I
    .locals 1

    .line 121
    iget v0, p0, Lcom/reglink/parcel/OTAInfo;->important:I

    return v0
.end method

.method public getLocalPath()Ljava/lang/String;
    .locals 1

    .line 169
    iget-object v0, p0, Lcom/reglink/parcel/OTAInfo;->localPath:Ljava/lang/String;

    return-object v0
.end method

.method public getPublishTime()J
    .locals 2

    .line 129
    iget-wide v0, p0, Lcom/reglink/parcel/OTAInfo;->publishTime:J

    return-wide v0
.end method

.method public getVersion()I
    .locals 1

    .line 89
    iget v0, p0, Lcom/reglink/parcel/OTAInfo;->version:I

    return v0
.end method

.method public getVersionName()Ljava/lang/String;
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/reglink/parcel/OTAInfo;->versionName:Ljava/lang/String;

    return-object v0
.end method

.method public isLocalAvailable()Z
    .locals 1

    .line 153
    iget-boolean v0, p0, Lcom/reglink/parcel/OTAInfo;->localAvailable:Z

    return v0
.end method

.method public isVerified()Z
    .locals 1

    .line 161
    iget-boolean v0, p0, Lcom/reglink/parcel/OTAInfo;->verified:Z

    return v0
.end method

.method public setBuildDate(J)V
    .locals 0

    .line 117
    iput-wide p1, p0, Lcom/reglink/parcel/OTAInfo;->buildDate:J

    return-void
.end method

.method public setDesc(Ljava/lang/String;)V
    .locals 0

    .line 109
    iput-object p1, p0, Lcom/reglink/parcel/OTAInfo;->desc:Ljava/lang/String;

    return-void
.end method

.method public setDownloadUrl(Ljava/lang/String;)V
    .locals 0

    .line 149
    iput-object p1, p0, Lcom/reglink/parcel/OTAInfo;->downloadUrl:Ljava/lang/String;

    return-void
.end method

.method public setFileSize(J)V
    .locals 0

    .line 141
    iput-wide p1, p0, Lcom/reglink/parcel/OTAInfo;->fileSize:J

    return-void
.end method

.method public setImportant(I)V
    .locals 0

    .line 125
    iput p1, p0, Lcom/reglink/parcel/OTAInfo;->important:I

    return-void
.end method

.method public setLocalAvailable(Z)V
    .locals 0

    .line 157
    iput-boolean p1, p0, Lcom/reglink/parcel/OTAInfo;->localAvailable:Z

    return-void
.end method

.method public setLocalPath(Ljava/lang/String;)V
    .locals 0

    .line 173
    iput-object p1, p0, Lcom/reglink/parcel/OTAInfo;->localPath:Ljava/lang/String;

    return-void
.end method

.method public setPublishTime(J)V
    .locals 0

    .line 133
    iput-wide p1, p0, Lcom/reglink/parcel/OTAInfo;->publishTime:J

    return-void
.end method

.method public setVerified(Z)V
    .locals 0

    .line 165
    iput-boolean p1, p0, Lcom/reglink/parcel/OTAInfo;->verified:Z

    return-void
.end method

.method public setVersion(I)V
    .locals 0

    .line 93
    iput p1, p0, Lcom/reglink/parcel/OTAInfo;->version:I

    return-void
.end method

.method public setVersionName(Ljava/lang/String;)V
    .locals 0

    .line 101
    iput-object p1, p0, Lcom/reglink/parcel/OTAInfo;->versionName:Ljava/lang/String;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 75
    iget p2, p0, Lcom/reglink/parcel/OTAInfo;->version:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 76
    iget-object p2, p0, Lcom/reglink/parcel/OTAInfo;->versionName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 77
    iget-object p2, p0, Lcom/reglink/parcel/OTAInfo;->desc:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 78
    iget-wide v0, p0, Lcom/reglink/parcel/OTAInfo;->buildDate:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 79
    iget p2, p0, Lcom/reglink/parcel/OTAInfo;->important:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 80
    iget-wide v0, p0, Lcom/reglink/parcel/OTAInfo;->publishTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 81
    iget-wide v0, p0, Lcom/reglink/parcel/OTAInfo;->fileSize:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 82
    iget-object p2, p0, Lcom/reglink/parcel/OTAInfo;->downloadUrl:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 83
    iget-boolean p2, p0, Lcom/reglink/parcel/OTAInfo;->localAvailable:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 84
    iget-boolean p2, p0, Lcom/reglink/parcel/OTAInfo;->verified:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 85
    iget-object p2, p0, Lcom/reglink/parcel/OTAInfo;->localPath:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
