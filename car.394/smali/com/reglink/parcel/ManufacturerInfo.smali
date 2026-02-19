.class public Lcom/reglink/parcel/ManufacturerInfo;
.super Ljava/lang/Object;
.source "ManufacturerInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/reglink/parcel/ManufacturerInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private hidden:Z

.field private iconRes:Ljava/lang/String;

.field private manufacturer:Ljava/lang/String;

.field private modelInfo:[Lcom/reglink/parcel/ModelInfo;

.field private readableName:Ljava/lang/String;

.field private resourcePackage:Ljava/lang/String;

.field private userData:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 59
    new-instance v0, Lcom/reglink/parcel/ManufacturerInfo$1;

    invoke-direct {v0}, Lcom/reglink/parcel/ManufacturerInfo$1;-><init>()V

    sput-object v0, Lcom/reglink/parcel/ManufacturerInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    invoke-virtual {p0, p1}, Lcom/reglink/parcel/ManufacturerInfo;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/reglink/parcel/ManufacturerInfo$1;)V
    .locals 0

    .line 9
    invoke-direct {p0, p1}, Lcom/reglink/parcel/ManufacturerInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getIconRes()Ljava/lang/String;
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/reglink/parcel/ManufacturerInfo;->iconRes:Ljava/lang/String;

    return-object v0
.end method

.method public getManufacturer()Ljava/lang/String;
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/reglink/parcel/ManufacturerInfo;->manufacturer:Ljava/lang/String;

    return-object v0
.end method

.method public getModelInfo()[Lcom/reglink/parcel/ModelInfo;
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/reglink/parcel/ManufacturerInfo;->modelInfo:[Lcom/reglink/parcel/ModelInfo;

    return-object v0
.end method

.method public getReadableName()Ljava/lang/String;
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/reglink/parcel/ManufacturerInfo;->readableName:Ljava/lang/String;

    return-object v0
.end method

.method public getResourcePackage()Ljava/lang/String;
    .locals 1

    .line 113
    iget-object v0, p0, Lcom/reglink/parcel/ManufacturerInfo;->resourcePackage:Ljava/lang/String;

    return-object v0
.end method

.method public getUserData()Ljava/lang/Object;
    .locals 1

    .line 121
    iget-object v0, p0, Lcom/reglink/parcel/ManufacturerInfo;->userData:Ljava/lang/Object;

    return-object v0
.end method

.method public isHidden()Z
    .locals 1

    .line 105
    iget-boolean v0, p0, Lcom/reglink/parcel/ManufacturerInfo;->hidden:Z

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 3

    .line 38
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/reglink/parcel/ManufacturerInfo;->manufacturer:Ljava/lang/String;

    .line 39
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/reglink/parcel/ManufacturerInfo;->readableName:Ljava/lang/String;

    .line 40
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/reglink/parcel/ManufacturerInfo;->resourcePackage:Ljava/lang/String;

    .line 41
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/reglink/parcel/ManufacturerInfo;->iconRes:Ljava/lang/String;

    .line 42
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/reglink/parcel/ManufacturerInfo;->hidden:Z

    .line 43
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v2, :cond_1

    .line 45
    const-class v0, Lcom/reglink/parcel/ModelInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelableArray(Ljava/lang/ClassLoader;)[Landroid/os/Parcelable;

    move-result-object p1

    .line 46
    array-length v0, p1

    new-array v0, v0, [Lcom/reglink/parcel/ModelInfo;

    iput-object v0, p0, Lcom/reglink/parcel/ManufacturerInfo;->modelInfo:[Lcom/reglink/parcel/ModelInfo;

    .line 47
    :goto_1
    array-length v0, p1

    if-ge v1, v0, :cond_1

    .line 48
    iget-object v0, p0, Lcom/reglink/parcel/ManufacturerInfo;->modelInfo:[Lcom/reglink/parcel/ModelInfo;

    aget-object v2, p1, v1

    check-cast v2, Lcom/reglink/parcel/ModelInfo;

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public setHidden(Z)V
    .locals 0

    .line 109
    iput-boolean p1, p0, Lcom/reglink/parcel/ManufacturerInfo;->hidden:Z

    return-void
.end method

.method public setIconRes(Ljava/lang/String;)V
    .locals 0

    .line 93
    iput-object p1, p0, Lcom/reglink/parcel/ManufacturerInfo;->iconRes:Ljava/lang/String;

    return-void
.end method

.method public setManufacturer(Ljava/lang/String;)V
    .locals 0

    .line 77
    iput-object p1, p0, Lcom/reglink/parcel/ManufacturerInfo;->manufacturer:Ljava/lang/String;

    return-void
.end method

.method public setModelInfo([Lcom/reglink/parcel/ModelInfo;)V
    .locals 0

    .line 101
    iput-object p1, p0, Lcom/reglink/parcel/ManufacturerInfo;->modelInfo:[Lcom/reglink/parcel/ModelInfo;

    return-void
.end method

.method public setReadableName(Ljava/lang/String;)V
    .locals 0

    .line 85
    iput-object p1, p0, Lcom/reglink/parcel/ManufacturerInfo;->readableName:Ljava/lang/String;

    return-void
.end method

.method public setResourcePackage(Ljava/lang/String;)V
    .locals 0

    .line 117
    iput-object p1, p0, Lcom/reglink/parcel/ManufacturerInfo;->resourcePackage:Ljava/lang/String;

    return-void
.end method

.method public setUserData(Ljava/lang/Object;)V
    .locals 0

    .line 125
    iput-object p1, p0, Lcom/reglink/parcel/ManufacturerInfo;->userData:Ljava/lang/Object;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 25
    iget-object p2, p0, Lcom/reglink/parcel/ManufacturerInfo;->manufacturer:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 26
    iget-object p2, p0, Lcom/reglink/parcel/ManufacturerInfo;->readableName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 27
    iget-object p2, p0, Lcom/reglink/parcel/ManufacturerInfo;->resourcePackage:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 28
    iget-object p2, p0, Lcom/reglink/parcel/ManufacturerInfo;->iconRes:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 29
    iget-boolean p2, p0, Lcom/reglink/parcel/ManufacturerInfo;->hidden:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 30
    iget-object p2, p0, Lcom/reglink/parcel/ManufacturerInfo;->modelInfo:[Lcom/reglink/parcel/ModelInfo;

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    .line 31
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 32
    iget-object p2, p0, Lcom/reglink/parcel/ManufacturerInfo;->modelInfo:[Lcom/reglink/parcel/ModelInfo;

    invoke-virtual {p1, p2, v0}, Landroid/os/Parcel;->writeParcelableArray([Landroid/os/Parcelable;I)V

    goto :goto_0

    .line 34
    :cond_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    return-void
.end method
