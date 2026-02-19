.class public Lcom/reglink/parcel/PlatformInfo;
.super Ljava/lang/Object;
.source "PlatformInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/reglink/parcel/PlatformInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final HighConfiguration:Ljava/lang/String; = "H"

.field public static final LowConfiguration:Ljava/lang/String; = "L"

.field public static final MediumConfiguration:Ljava/lang/String; = "M"


# instance fields
.field private canBoxType:Ljava/lang/String;

.field private manufacturer:Ljava/lang/String;

.field private mcuVersion:Ljava/lang/String;

.field private model:Ljava/lang/String;

.field private modelPlatform:Ljava/lang/String;

.field private platform:Ljava/lang/String;

.field private productCode:Ljava/lang/String;

.field private productManufacturerCode:Ljava/lang/String;

.field private productManufacturerName:Ljava/lang/String;

.field private productName:Ljava/lang/String;

.field private readableConfigName:Ljava/lang/String;

.field private readableManufacturerName:Ljava/lang/String;

.field private readableModelName:Ljava/lang/String;

.field private vehicleConfiguration:Ljava/lang/String;

.field private version:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 115
    new-instance v0, Lcom/reglink/parcel/PlatformInfo$1;

    invoke-direct {v0}, Lcom/reglink/parcel/PlatformInfo$1;-><init>()V

    sput-object v0, Lcom/reglink/parcel/PlatformInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 17
    iput-object v0, p0, Lcom/reglink/parcel/PlatformInfo;->model:Ljava/lang/String;

    const-string v1, "M"

    .line 18
    iput-object v1, p0, Lcom/reglink/parcel/PlatformInfo;->vehicleConfiguration:Ljava/lang/String;

    .line 19
    iput-object v0, p0, Lcom/reglink/parcel/PlatformInfo;->platform:Ljava/lang/String;

    .line 20
    iput-object v0, p0, Lcom/reglink/parcel/PlatformInfo;->version:Ljava/lang/String;

    .line 22
    iput-object v0, p0, Lcom/reglink/parcel/PlatformInfo;->mcuVersion:Ljava/lang/String;

    .line 23
    iput-object v0, p0, Lcom/reglink/parcel/PlatformInfo;->manufacturer:Ljava/lang/String;

    .line 24
    iput-object v0, p0, Lcom/reglink/parcel/PlatformInfo;->modelPlatform:Ljava/lang/String;

    .line 26
    iput-object v0, p0, Lcom/reglink/parcel/PlatformInfo;->readableModelName:Ljava/lang/String;

    .line 27
    iput-object v0, p0, Lcom/reglink/parcel/PlatformInfo;->readableManufacturerName:Ljava/lang/String;

    .line 28
    iput-object v0, p0, Lcom/reglink/parcel/PlatformInfo;->readableConfigName:Ljava/lang/String;

    .line 30
    iput-object v0, p0, Lcom/reglink/parcel/PlatformInfo;->productCode:Ljava/lang/String;

    .line 32
    iput-object v0, p0, Lcom/reglink/parcel/PlatformInfo;->canBoxType:Ljava/lang/String;

    .line 66
    iput-object v0, p0, Lcom/reglink/parcel/PlatformInfo;->productManufacturerCode:Ljava/lang/String;

    .line 67
    iput-object v0, p0, Lcom/reglink/parcel/PlatformInfo;->productName:Ljava/lang/String;

    .line 68
    iput-object v0, p0, Lcom/reglink/parcel/PlatformInfo;->productManufacturerName:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 17
    iput-object v0, p0, Lcom/reglink/parcel/PlatformInfo;->model:Ljava/lang/String;

    const-string v1, "M"

    .line 18
    iput-object v1, p0, Lcom/reglink/parcel/PlatformInfo;->vehicleConfiguration:Ljava/lang/String;

    .line 19
    iput-object v0, p0, Lcom/reglink/parcel/PlatformInfo;->platform:Ljava/lang/String;

    .line 20
    iput-object v0, p0, Lcom/reglink/parcel/PlatformInfo;->version:Ljava/lang/String;

    .line 22
    iput-object v0, p0, Lcom/reglink/parcel/PlatformInfo;->mcuVersion:Ljava/lang/String;

    .line 23
    iput-object v0, p0, Lcom/reglink/parcel/PlatformInfo;->manufacturer:Ljava/lang/String;

    .line 24
    iput-object v0, p0, Lcom/reglink/parcel/PlatformInfo;->modelPlatform:Ljava/lang/String;

    .line 26
    iput-object v0, p0, Lcom/reglink/parcel/PlatformInfo;->readableModelName:Ljava/lang/String;

    .line 27
    iput-object v0, p0, Lcom/reglink/parcel/PlatformInfo;->readableManufacturerName:Ljava/lang/String;

    .line 28
    iput-object v0, p0, Lcom/reglink/parcel/PlatformInfo;->readableConfigName:Ljava/lang/String;

    .line 30
    iput-object v0, p0, Lcom/reglink/parcel/PlatformInfo;->productCode:Ljava/lang/String;

    .line 32
    iput-object v0, p0, Lcom/reglink/parcel/PlatformInfo;->canBoxType:Ljava/lang/String;

    .line 66
    iput-object v0, p0, Lcom/reglink/parcel/PlatformInfo;->productManufacturerCode:Ljava/lang/String;

    .line 67
    iput-object v0, p0, Lcom/reglink/parcel/PlatformInfo;->productName:Ljava/lang/String;

    .line 68
    iput-object v0, p0, Lcom/reglink/parcel/PlatformInfo;->productManufacturerName:Ljava/lang/String;

    .line 92
    invoke-virtual {p0, p1}, Lcom/reglink/parcel/PlatformInfo;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/reglink/parcel/PlatformInfo$1;)V
    .locals 0

    .line 11
    invoke-direct {p0, p1}, Lcom/reglink/parcel/PlatformInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public canBoxType()Ljava/lang/String;
    .locals 1

    .line 247
    iget-object v0, p0, Lcom/reglink/parcel/PlatformInfo;->canBoxType:Ljava/lang/String;

    return-object v0
.end method

.method public configuration()Ljava/lang/String;
    .locals 1

    .line 148
    iget-object v0, p0, Lcom/reglink/parcel/PlatformInfo;->vehicleConfiguration:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getProductCode()Ljava/lang/String;
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/reglink/parcel/PlatformInfo;->productCode:Ljava/lang/String;

    return-object v0
.end method

.method public getProductManufacturerCode()Ljava/lang/String;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/reglink/parcel/PlatformInfo;->productManufacturerCode:Ljava/lang/String;

    return-object v0
.end method

.method public getProductManufacturerName()Ljava/lang/String;
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/reglink/parcel/PlatformInfo;->productManufacturerName:Ljava/lang/String;

    return-object v0
.end method

.method public getProductName()Ljava/lang/String;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/reglink/parcel/PlatformInfo;->productName:Ljava/lang/String;

    return-object v0
.end method

.method public getReadableConfigName()Ljava/lang/String;
    .locals 1

    .line 239
    iget-object v0, p0, Lcom/reglink/parcel/PlatformInfo;->readableConfigName:Ljava/lang/String;

    return-object v0
.end method

.method public getReadableManufacturerName()Ljava/lang/String;
    .locals 1

    .line 231
    iget-object v0, p0, Lcom/reglink/parcel/PlatformInfo;->readableManufacturerName:Ljava/lang/String;

    return-object v0
.end method

.method public getReadableModelName()Ljava/lang/String;
    .locals 1

    .line 223
    iget-object v0, p0, Lcom/reglink/parcel/PlatformInfo;->readableModelName:Ljava/lang/String;

    return-object v0
.end method

.method public manufacturer()Ljava/lang/String;
    .locals 1

    .line 143
    iget-object v0, p0, Lcom/reglink/parcel/PlatformInfo;->manufacturer:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public mcuVersion()Ljava/lang/String;
    .locals 1

    .line 177
    iget-object v0, p0, Lcom/reglink/parcel/PlatformInfo;->mcuVersion:Ljava/lang/String;

    return-object v0
.end method

.method public model()Ljava/lang/String;
    .locals 1

    .line 128
    iget-object v0, p0, Lcom/reglink/parcel/PlatformInfo;->model:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public modelPlatform()Ljava/lang/String;
    .locals 1

    .line 215
    iget-object v0, p0, Lcom/reglink/parcel/PlatformInfo;->modelPlatform:Ljava/lang/String;

    return-object v0
.end method

.method public platform()Ljava/lang/String;
    .locals 1

    .line 133
    iget-object v0, p0, Lcom/reglink/parcel/PlatformInfo;->platform:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method protected readFromParcel(Landroid/os/Parcel;)V
    .locals 1

    .line 75
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/reglink/parcel/PlatformInfo;->setModel(Ljava/lang/String;)V

    .line 76
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/reglink/parcel/PlatformInfo;->setPlatform(Ljava/lang/String;)V

    .line 77
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/reglink/parcel/PlatformInfo;->setVersion(Ljava/lang/String;)V

    .line 78
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/reglink/parcel/PlatformInfo;->setMcuVersion(Ljava/lang/String;)V

    .line 79
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/reglink/parcel/PlatformInfo;->setManufacturer(Ljava/lang/String;)V

    .line 80
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/reglink/parcel/PlatformInfo;->setConfiguration(Ljava/lang/String;)V

    .line 81
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/reglink/parcel/PlatformInfo;->setModelPlatform(Ljava/lang/String;)V

    .line 82
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/reglink/parcel/PlatformInfo;->setProductCode(Ljava/lang/String;)V

    .line 83
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/reglink/parcel/PlatformInfo;->setProductName(Ljava/lang/String;)V

    .line 84
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/reglink/parcel/PlatformInfo;->setProductManufacturerCode(Ljava/lang/String;)V

    .line 85
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/reglink/parcel/PlatformInfo;->setProductManufacturerName(Ljava/lang/String;)V

    .line 86
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/reglink/parcel/PlatformInfo;->setReadableManufacturerName(Ljava/lang/String;)V

    .line 87
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/reglink/parcel/PlatformInfo;->setReadableModelName(Ljava/lang/String;)V

    .line 88
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/reglink/parcel/PlatformInfo;->setReadableConfigName(Ljava/lang/String;)V

    .line 89
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/reglink/parcel/PlatformInfo;->setCanBoxType(Ljava/lang/String;)V

    return-void
.end method

.method public setCanBoxType(Ljava/lang/String;)V
    .locals 0

    .line 251
    iput-object p1, p0, Lcom/reglink/parcel/PlatformInfo;->canBoxType:Ljava/lang/String;

    return-void
.end method

.method public setConfiguration(Ljava/lang/String;)V
    .locals 0

    .line 157
    iput-object p1, p0, Lcom/reglink/parcel/PlatformInfo;->vehicleConfiguration:Ljava/lang/String;

    return-void
.end method

.method public setManufacturer(Ljava/lang/String;)V
    .locals 0

    .line 173
    iput-object p1, p0, Lcom/reglink/parcel/PlatformInfo;->manufacturer:Ljava/lang/String;

    return-void
.end method

.method public setMcuVersion(Ljava/lang/String;)V
    .locals 0

    .line 169
    iput-object p1, p0, Lcom/reglink/parcel/PlatformInfo;->mcuVersion:Ljava/lang/String;

    return-void
.end method

.method public setModel(Ljava/lang/String;)V
    .locals 0

    .line 153
    iput-object p1, p0, Lcom/reglink/parcel/PlatformInfo;->model:Ljava/lang/String;

    return-void
.end method

.method public setModelPlatform(Ljava/lang/String;)V
    .locals 0

    .line 219
    iput-object p1, p0, Lcom/reglink/parcel/PlatformInfo;->modelPlatform:Ljava/lang/String;

    return-void
.end method

.method public setPlatform(Ljava/lang/String;)V
    .locals 0

    .line 161
    iput-object p1, p0, Lcom/reglink/parcel/PlatformInfo;->platform:Ljava/lang/String;

    return-void
.end method

.method public setProductCode(Ljava/lang/String;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lcom/reglink/parcel/PlatformInfo;->productCode:Ljava/lang/String;

    return-void
.end method

.method public setProductManufacturerCode(Ljava/lang/String;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/reglink/parcel/PlatformInfo;->productManufacturerCode:Ljava/lang/String;

    return-void
.end method

.method public setProductManufacturerName(Ljava/lang/String;)V
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/reglink/parcel/PlatformInfo;->productManufacturerName:Ljava/lang/String;

    return-void
.end method

.method public setProductName(Ljava/lang/String;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/reglink/parcel/PlatformInfo;->productName:Ljava/lang/String;

    return-void
.end method

.method public setReadableConfigName(Ljava/lang/String;)V
    .locals 0

    .line 243
    iput-object p1, p0, Lcom/reglink/parcel/PlatformInfo;->readableConfigName:Ljava/lang/String;

    return-void
.end method

.method public setReadableManufacturerName(Ljava/lang/String;)V
    .locals 0

    .line 235
    iput-object p1, p0, Lcom/reglink/parcel/PlatformInfo;->readableManufacturerName:Ljava/lang/String;

    return-void
.end method

.method public setReadableModelName(Ljava/lang/String;)V
    .locals 0

    .line 227
    iput-object p1, p0, Lcom/reglink/parcel/PlatformInfo;->readableModelName:Ljava/lang/String;

    return-void
.end method

.method public setVersion(Ljava/lang/String;)V
    .locals 0

    .line 165
    iput-object p1, p0, Lcom/reglink/parcel/PlatformInfo;->version:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 183
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Model:"

    .line 184
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    invoke-virtual {p0}, Lcom/reglink/parcel/PlatformInfo;->model()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", Manufacturer:"

    .line 186
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    invoke-virtual {p0}, Lcom/reglink/parcel/PlatformInfo;->manufacturer()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", Configuration:"

    .line 188
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    invoke-virtual {p0}, Lcom/reglink/parcel/PlatformInfo;->configuration()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", ModelPlatform:"

    .line 190
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    invoke-virtual {p0}, Lcom/reglink/parcel/PlatformInfo;->modelPlatform()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", CANBox:"

    .line 192
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 193
    invoke-virtual {p0}, Lcom/reglink/parcel/PlatformInfo;->canBoxType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", ProductManufacturerName:"

    .line 201
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    invoke-virtual {p0}, Lcom/reglink/parcel/PlatformInfo;->getProductManufacturerName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", ReadableManufacturerName:"

    .line 204
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 205
    invoke-virtual {p0}, Lcom/reglink/parcel/PlatformInfo;->getReadableManufacturerName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", ReadableModelName:"

    .line 206
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    invoke-virtual {p0}, Lcom/reglink/parcel/PlatformInfo;->getReadableModelName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", ReadableConfigName:"

    .line 208
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    invoke-virtual {p0}, Lcom/reglink/parcel/PlatformInfo;->getReadableConfigName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public version()Ljava/lang/String;
    .locals 1

    .line 138
    iget-object v0, p0, Lcom/reglink/parcel/PlatformInfo;->version:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 99
    iget-object p2, p0, Lcom/reglink/parcel/PlatformInfo;->model:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 100
    iget-object p2, p0, Lcom/reglink/parcel/PlatformInfo;->platform:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 101
    iget-object p2, p0, Lcom/reglink/parcel/PlatformInfo;->version:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 102
    iget-object p2, p0, Lcom/reglink/parcel/PlatformInfo;->mcuVersion:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 103
    iget-object p2, p0, Lcom/reglink/parcel/PlatformInfo;->manufacturer:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 104
    iget-object p2, p0, Lcom/reglink/parcel/PlatformInfo;->vehicleConfiguration:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 105
    iget-object p2, p0, Lcom/reglink/parcel/PlatformInfo;->modelPlatform:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 106
    iget-object p2, p0, Lcom/reglink/parcel/PlatformInfo;->productCode:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 107
    iget-object p2, p0, Lcom/reglink/parcel/PlatformInfo;->productName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 108
    iget-object p2, p0, Lcom/reglink/parcel/PlatformInfo;->productManufacturerCode:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 109
    iget-object p2, p0, Lcom/reglink/parcel/PlatformInfo;->productManufacturerName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 110
    iget-object p2, p0, Lcom/reglink/parcel/PlatformInfo;->readableManufacturerName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 111
    iget-object p2, p0, Lcom/reglink/parcel/PlatformInfo;->readableModelName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 112
    iget-object p2, p0, Lcom/reglink/parcel/PlatformInfo;->readableConfigName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 113
    iget-object p2, p0, Lcom/reglink/parcel/PlatformInfo;->canBoxType:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
