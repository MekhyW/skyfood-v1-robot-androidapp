.class public Lcom/reglink/parcel/ModelInfo;
.super Ljava/lang/Object;
.source "ModelInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/reglink/parcel/ModelInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private configurationInfos:[Lcom/reglink/parcel/ConfigurationInfo;

.field private hidden:Z

.field private iconRes:Ljava/lang/String;

.field private model:Ljava/lang/String;

.field private platform:Ljava/lang/String;

.field private readableName:Ljava/lang/String;

.field private userData:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 61
    new-instance v0, Lcom/reglink/parcel/ModelInfo$1;

    invoke-direct {v0}, Lcom/reglink/parcel/ModelInfo$1;-><init>()V

    sput-object v0, Lcom/reglink/parcel/ModelInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    invoke-virtual {p0, p1}, Lcom/reglink/parcel/ModelInfo;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/reglink/parcel/ModelInfo$1;)V
    .locals 0

    .line 9
    invoke-direct {p0, p1}, Lcom/reglink/parcel/ModelInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getConfigurationInfos()[Lcom/reglink/parcel/ConfigurationInfo;
    .locals 1

    .line 107
    iget-object v0, p0, Lcom/reglink/parcel/ModelInfo;->configurationInfos:[Lcom/reglink/parcel/ConfigurationInfo;

    return-object v0
.end method

.method public getIconRes()Ljava/lang/String;
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/reglink/parcel/ModelInfo;->iconRes:Ljava/lang/String;

    return-object v0
.end method

.method public getModel()Ljava/lang/String;
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/reglink/parcel/ModelInfo;->model:Ljava/lang/String;

    return-object v0
.end method

.method public getPlatform()Ljava/lang/String;
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/reglink/parcel/ModelInfo;->platform:Ljava/lang/String;

    return-object v0
.end method

.method public getReadableName()Ljava/lang/String;
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/reglink/parcel/ModelInfo;->readableName:Ljava/lang/String;

    return-object v0
.end method

.method public getUserData()Ljava/lang/Object;
    .locals 1

    .line 123
    iget-object v0, p0, Lcom/reglink/parcel/ModelInfo;->userData:Ljava/lang/Object;

    return-object v0
.end method

.method public isHidden()Z
    .locals 1

    .line 115
    iget-boolean v0, p0, Lcom/reglink/parcel/ModelInfo;->hidden:Z

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 3

    .line 40
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/reglink/parcel/ModelInfo;->model:Ljava/lang/String;

    .line 41
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/reglink/parcel/ModelInfo;->readableName:Ljava/lang/String;

    .line 42
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/reglink/parcel/ModelInfo;->iconRes:Ljava/lang/String;

    .line 43
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/reglink/parcel/ModelInfo;->platform:Ljava/lang/String;

    .line 44
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
    iput-boolean v0, p0, Lcom/reglink/parcel/ModelInfo;->hidden:Z

    .line 45
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v2, :cond_1

    .line 47
    const-class v0, Lcom/reglink/parcel/ModelInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelableArray(Ljava/lang/ClassLoader;)[Landroid/os/Parcelable;

    move-result-object p1

    .line 48
    array-length v0, p1

    new-array v0, v0, [Lcom/reglink/parcel/ConfigurationInfo;

    iput-object v0, p0, Lcom/reglink/parcel/ModelInfo;->configurationInfos:[Lcom/reglink/parcel/ConfigurationInfo;

    .line 49
    :goto_1
    array-length v0, p1

    if-ge v1, v0, :cond_1

    .line 50
    iget-object v0, p0, Lcom/reglink/parcel/ModelInfo;->configurationInfos:[Lcom/reglink/parcel/ConfigurationInfo;

    aget-object v2, p1, v1

    check-cast v2, Lcom/reglink/parcel/ConfigurationInfo;

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public setConfigurationInfos([Lcom/reglink/parcel/ConfigurationInfo;)V
    .locals 0

    .line 111
    iput-object p1, p0, Lcom/reglink/parcel/ModelInfo;->configurationInfos:[Lcom/reglink/parcel/ConfigurationInfo;

    return-void
.end method

.method public setHidden(Z)V
    .locals 0

    .line 119
    iput-boolean p1, p0, Lcom/reglink/parcel/ModelInfo;->hidden:Z

    return-void
.end method

.method public setIconRes(Ljava/lang/String;)V
    .locals 0

    .line 95
    iput-object p1, p0, Lcom/reglink/parcel/ModelInfo;->iconRes:Ljava/lang/String;

    return-void
.end method

.method public setModel(Ljava/lang/String;)V
    .locals 0

    .line 79
    iput-object p1, p0, Lcom/reglink/parcel/ModelInfo;->model:Ljava/lang/String;

    return-void
.end method

.method public setPlatform(Ljava/lang/String;)V
    .locals 0

    .line 103
    iput-object p1, p0, Lcom/reglink/parcel/ModelInfo;->platform:Ljava/lang/String;

    return-void
.end method

.method public setReadableName(Ljava/lang/String;)V
    .locals 0

    .line 87
    iput-object p1, p0, Lcom/reglink/parcel/ModelInfo;->readableName:Ljava/lang/String;

    return-void
.end method

.method public setUserData(Ljava/lang/Object;)V
    .locals 0

    .line 127
    iput-object p1, p0, Lcom/reglink/parcel/ModelInfo;->userData:Ljava/lang/Object;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 27
    iget-object p2, p0, Lcom/reglink/parcel/ModelInfo;->model:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 28
    iget-object p2, p0, Lcom/reglink/parcel/ModelInfo;->readableName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 29
    iget-object p2, p0, Lcom/reglink/parcel/ModelInfo;->iconRes:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 30
    iget-object p2, p0, Lcom/reglink/parcel/ModelInfo;->platform:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 31
    iget-boolean p2, p0, Lcom/reglink/parcel/ModelInfo;->hidden:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 32
    iget-object p2, p0, Lcom/reglink/parcel/ModelInfo;->configurationInfos:[Lcom/reglink/parcel/ConfigurationInfo;

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    .line 33
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 34
    iget-object p2, p0, Lcom/reglink/parcel/ModelInfo;->configurationInfos:[Lcom/reglink/parcel/ConfigurationInfo;

    invoke-virtual {p1, p2, v0}, Landroid/os/Parcel;->writeParcelableArray([Landroid/os/Parcelable;I)V

    goto :goto_0

    .line 36
    :cond_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    return-void
.end method
