.class public Lcom/reglink/parcel/ConfigurationInfo;
.super Ljava/lang/Object;
.source "ConfigurationInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/reglink/parcel/ConfigurationInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private cap:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private configName:Ljava/lang/String;

.field private hidden:Z

.field private readableName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 52
    new-instance v0, Lcom/reglink/parcel/ConfigurationInfo$1;

    invoke-direct {v0}, Lcom/reglink/parcel/ConfigurationInfo$1;-><init>()V

    sput-object v0, Lcom/reglink/parcel/ConfigurationInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    invoke-virtual {p0, p1}, Lcom/reglink/parcel/ConfigurationInfo;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/reglink/parcel/ConfigurationInfo$1;)V
    .locals 0

    .line 11
    invoke-direct {p0, p1}, Lcom/reglink/parcel/ConfigurationInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getCap()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 82
    iget-object v0, p0, Lcom/reglink/parcel/ConfigurationInfo;->cap:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getConfigName()Ljava/lang/String;
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/reglink/parcel/ConfigurationInfo;->configName:Ljava/lang/String;

    return-object v0
.end method

.method public getReadableName()Ljava/lang/String;
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/reglink/parcel/ConfigurationInfo;->readableName:Ljava/lang/String;

    return-object v0
.end method

.method public isHidden()Z
    .locals 1

    .line 90
    iget-boolean v0, p0, Lcom/reglink/parcel/ConfigurationInfo;->hidden:Z

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 2

    .line 36
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/reglink/parcel/ConfigurationInfo;->configName:Ljava/lang/String;

    .line 37
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/reglink/parcel/ConfigurationInfo;->readableName:Ljava/lang/String;

    .line 38
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/reglink/parcel/ConfigurationInfo;->hidden:Z

    .line 39
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_1

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/reglink/parcel/ConfigurationInfo;->cap:Ljava/util/ArrayList;

    .line 42
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    :cond_1
    return-void
.end method

.method public setCap(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 86
    iput-object p1, p0, Lcom/reglink/parcel/ConfigurationInfo;->cap:Ljava/util/ArrayList;

    return-void
.end method

.method public setConfigName(Ljava/lang/String;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/reglink/parcel/ConfigurationInfo;->configName:Ljava/lang/String;

    return-void
.end method

.method public setHidden(Z)V
    .locals 0

    .line 94
    iput-boolean p1, p0, Lcom/reglink/parcel/ConfigurationInfo;->hidden:Z

    return-void
.end method

.method public setReadableName(Ljava/lang/String;)V
    .locals 0

    .line 78
    iput-object p1, p0, Lcom/reglink/parcel/ConfigurationInfo;->readableName:Ljava/lang/String;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 25
    iget-object p2, p0, Lcom/reglink/parcel/ConfigurationInfo;->configName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 26
    iget-object p2, p0, Lcom/reglink/parcel/ConfigurationInfo;->readableName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 27
    iget-boolean p2, p0, Lcom/reglink/parcel/ConfigurationInfo;->hidden:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 28
    iget-object p2, p0, Lcom/reglink/parcel/ConfigurationInfo;->cap:Ljava/util/ArrayList;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_0

    const/4 p2, 0x1

    .line 29
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 30
    iget-object p2, p0, Lcom/reglink/parcel/ConfigurationInfo;->cap:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 32
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    return-void
.end method
