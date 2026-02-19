.class public Lcom/reglink/parcel/ford/UsbItem;
.super Ljava/lang/Object;
.source "UsbItem.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/reglink/parcel/ford/UsbItem;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public folderId:I

.field public index:I

.field public isFolder:Z

.field public songId:I

.field public title:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 44
    new-instance v0, Lcom/reglink/parcel/ford/UsbItem$1;

    invoke-direct {v0}, Lcom/reglink/parcel/ford/UsbItem$1;-><init>()V

    sput-object v0, Lcom/reglink/parcel/ford/UsbItem;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    invoke-virtual {p0, p1}, Lcom/reglink/parcel/ford/UsbItem;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/reglink/parcel/ford/UsbItem$1;)V
    .locals 0

    .line 10
    invoke-direct {p0, p1}, Lcom/reglink/parcel/ford/UsbItem;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getFolderId()I
    .locals 1

    .line 91
    iget v0, p0, Lcom/reglink/parcel/ford/UsbItem;->folderId:I

    return v0
.end method

.method public getIndex()I
    .locals 1

    .line 67
    iget v0, p0, Lcom/reglink/parcel/ford/UsbItem;->index:I

    return v0
.end method

.method public getSongId()I
    .locals 1

    .line 99
    iget v0, p0, Lcom/reglink/parcel/ford/UsbItem;->songId:I

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/reglink/parcel/ford/UsbItem;->title:Ljava/lang/String;

    return-object v0
.end method

.method public isFolder()Z
    .locals 1

    .line 83
    iget-boolean v0, p0, Lcom/reglink/parcel/ford/UsbItem;->isFolder:Z

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 2

    .line 31
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/reglink/parcel/ford/UsbItem;->setIndex(I)V

    .line 32
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/reglink/parcel/ford/UsbItem;->setTitle(Ljava/lang/String;)V

    .line 33
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0, v1}, Lcom/reglink/parcel/ford/UsbItem;->setFolder(Z)V

    .line 34
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/reglink/parcel/ford/UsbItem;->setFolderId(I)V

    .line 35
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/reglink/parcel/ford/UsbItem;->setSongId(I)V

    return-void
.end method

.method public setFolder(Z)V
    .locals 0

    .line 87
    iput-boolean p1, p0, Lcom/reglink/parcel/ford/UsbItem;->isFolder:Z

    return-void
.end method

.method public setFolderId(I)V
    .locals 0

    .line 95
    iput p1, p0, Lcom/reglink/parcel/ford/UsbItem;->folderId:I

    return-void
.end method

.method public setIndex(I)V
    .locals 0

    .line 71
    iput p1, p0, Lcom/reglink/parcel/ford/UsbItem;->index:I

    return-void
.end method

.method public setSongId(I)V
    .locals 0

    .line 103
    iput p1, p0, Lcom/reglink/parcel/ford/UsbItem;->songId:I

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 79
    iput-object p1, p0, Lcom/reglink/parcel/ford/UsbItem;->title:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "index:"

    .line 59
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/reglink/parcel/ford/UsbItem;->getIndex()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",folderId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/reglink/parcel/ford/UsbItem;->getFolderId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",title:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/reglink/parcel/ford/UsbItem;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    invoke-virtual {p0}, Lcom/reglink/parcel/ford/UsbItem;->isFolder()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, ",isFolder:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/reglink/parcel/ford/UsbItem;->isFolder()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    const-string v1, ",songId:"

    .line 61
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/reglink/parcel/ford/UsbItem;->getSongId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 62
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 24
    invoke-virtual {p0}, Lcom/reglink/parcel/ford/UsbItem;->getIndex()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 25
    invoke-virtual {p0}, Lcom/reglink/parcel/ford/UsbItem;->getTitle()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 26
    invoke-virtual {p0}, Lcom/reglink/parcel/ford/UsbItem;->isFolder()Z

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 27
    invoke-virtual {p0}, Lcom/reglink/parcel/ford/UsbItem;->getFolderId()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 28
    invoke-virtual {p0}, Lcom/reglink/parcel/ford/UsbItem;->getSongId()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
