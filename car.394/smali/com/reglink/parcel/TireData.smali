.class public Lcom/reglink/parcel/TireData;
.super Ljava/lang/Object;
.source "TireData.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/reglink/parcel/TireData$TemperatureUnit;,
        Lcom/reglink/parcel/TireData$PressureUnit;,
        Lcom/reglink/parcel/TireData$Position;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/reglink/parcel/TireData;",
            ">;"
        }
    .end annotation
.end field

.field public static final InvalidId:I = -0x1

.field public static final InvalidPressure:I = 0xff

.field public static final InvalidTemp:I = 0xff

.field public static final State_ExceptionMask:I = 0xffff

.field public static final State_FastLeak:I = 0x4

.field public static final State_HighPressure:I = 0x40

.field public static final State_HighTemp:I = 0x20

.field public static final State_Invalid:I = 0x10

.field public static final State_LowBattery:I = 0x2

.field public static final State_Normal:I = 0x0

.field public static final State_SlowLeak:I = 0x8

.field public static final State_WaitUpdate:I = 0x10000


# instance fields
.field private id:I

.field private newData:Z

.field private originalPosition:Lcom/reglink/parcel/TireData$Position;

.field private position:Lcom/reglink/parcel/TireData$Position;

.field private pressure:F

.field private pressureUnit:Lcom/reglink/parcel/TireData$PressureUnit;

.field private state:I

.field private temp:F

.field private temperatureUnit:Lcom/reglink/parcel/TireData$TemperatureUnit;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 179
    new-instance v0, Lcom/reglink/parcel/TireData$1;

    invoke-direct {v0}, Lcom/reglink/parcel/TireData$1;-><init>()V

    sput-object v0, Lcom/reglink/parcel/TireData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    sget-object v0, Lcom/reglink/parcel/TireData$Position;->Invalid:Lcom/reglink/parcel/TireData$Position;

    iput-object v0, p0, Lcom/reglink/parcel/TireData;->position:Lcom/reglink/parcel/TireData$Position;

    .line 66
    sget-object v0, Lcom/reglink/parcel/TireData$Position;->Invalid:Lcom/reglink/parcel/TireData$Position;

    iput-object v0, p0, Lcom/reglink/parcel/TireData;->originalPosition:Lcom/reglink/parcel/TireData$Position;

    const/4 v0, -0x1

    .line 67
    iput v0, p0, Lcom/reglink/parcel/TireData;->id:I

    const/high16 v0, 0x437f0000    # 255.0f

    .line 68
    iput v0, p0, Lcom/reglink/parcel/TireData;->pressure:F

    .line 69
    iput v0, p0, Lcom/reglink/parcel/TireData;->temp:F

    const/16 v0, 0x10

    .line 70
    iput v0, p0, Lcom/reglink/parcel/TireData;->state:I

    const/4 v0, 0x0

    .line 71
    iput-boolean v0, p0, Lcom/reglink/parcel/TireData;->newData:Z

    .line 73
    sget-object v0, Lcom/reglink/parcel/TireData$PressureUnit;->Bar:Lcom/reglink/parcel/TireData$PressureUnit;

    iput-object v0, p0, Lcom/reglink/parcel/TireData;->pressureUnit:Lcom/reglink/parcel/TireData$PressureUnit;

    .line 74
    sget-object v0, Lcom/reglink/parcel/TireData$TemperatureUnit;->C_degree:Lcom/reglink/parcel/TireData$TemperatureUnit;

    iput-object v0, p0, Lcom/reglink/parcel/TireData;->temperatureUnit:Lcom/reglink/parcel/TireData$TemperatureUnit;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    sget-object v0, Lcom/reglink/parcel/TireData$Position;->Invalid:Lcom/reglink/parcel/TireData$Position;

    iput-object v0, p0, Lcom/reglink/parcel/TireData;->position:Lcom/reglink/parcel/TireData$Position;

    .line 66
    sget-object v0, Lcom/reglink/parcel/TireData$Position;->Invalid:Lcom/reglink/parcel/TireData$Position;

    iput-object v0, p0, Lcom/reglink/parcel/TireData;->originalPosition:Lcom/reglink/parcel/TireData$Position;

    const/4 v0, -0x1

    .line 67
    iput v0, p0, Lcom/reglink/parcel/TireData;->id:I

    const/high16 v0, 0x437f0000    # 255.0f

    .line 68
    iput v0, p0, Lcom/reglink/parcel/TireData;->pressure:F

    .line 69
    iput v0, p0, Lcom/reglink/parcel/TireData;->temp:F

    const/16 v0, 0x10

    .line 70
    iput v0, p0, Lcom/reglink/parcel/TireData;->state:I

    const/4 v0, 0x0

    .line 71
    iput-boolean v0, p0, Lcom/reglink/parcel/TireData;->newData:Z

    .line 73
    sget-object v0, Lcom/reglink/parcel/TireData$PressureUnit;->Bar:Lcom/reglink/parcel/TireData$PressureUnit;

    iput-object v0, p0, Lcom/reglink/parcel/TireData;->pressureUnit:Lcom/reglink/parcel/TireData$PressureUnit;

    .line 74
    sget-object v0, Lcom/reglink/parcel/TireData$TemperatureUnit;->C_degree:Lcom/reglink/parcel/TireData$TemperatureUnit;

    iput-object v0, p0, Lcom/reglink/parcel/TireData;->temperatureUnit:Lcom/reglink/parcel/TireData$TemperatureUnit;

    .line 134
    invoke-virtual {p0, p1}, Lcom/reglink/parcel/TireData;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/reglink/parcel/TireData$1;)V
    .locals 0

    .line 11
    invoke-direct {p0, p1}, Lcom/reglink/parcel/TireData;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Lcom/reglink/parcel/TireData$Position;)V
    .locals 1

    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    sget-object v0, Lcom/reglink/parcel/TireData$Position;->Invalid:Lcom/reglink/parcel/TireData$Position;

    iput-object v0, p0, Lcom/reglink/parcel/TireData;->position:Lcom/reglink/parcel/TireData$Position;

    .line 66
    sget-object v0, Lcom/reglink/parcel/TireData$Position;->Invalid:Lcom/reglink/parcel/TireData$Position;

    iput-object v0, p0, Lcom/reglink/parcel/TireData;->originalPosition:Lcom/reglink/parcel/TireData$Position;

    const/4 v0, -0x1

    .line 67
    iput v0, p0, Lcom/reglink/parcel/TireData;->id:I

    const/high16 v0, 0x437f0000    # 255.0f

    .line 68
    iput v0, p0, Lcom/reglink/parcel/TireData;->pressure:F

    .line 69
    iput v0, p0, Lcom/reglink/parcel/TireData;->temp:F

    const/16 v0, 0x10

    .line 70
    iput v0, p0, Lcom/reglink/parcel/TireData;->state:I

    const/4 v0, 0x0

    .line 71
    iput-boolean v0, p0, Lcom/reglink/parcel/TireData;->newData:Z

    .line 73
    sget-object v0, Lcom/reglink/parcel/TireData$PressureUnit;->Bar:Lcom/reglink/parcel/TireData$PressureUnit;

    iput-object v0, p0, Lcom/reglink/parcel/TireData;->pressureUnit:Lcom/reglink/parcel/TireData$PressureUnit;

    .line 74
    sget-object v0, Lcom/reglink/parcel/TireData$TemperatureUnit;->C_degree:Lcom/reglink/parcel/TireData$TemperatureUnit;

    iput-object v0, p0, Lcom/reglink/parcel/TireData;->temperatureUnit:Lcom/reglink/parcel/TireData$TemperatureUnit;

    .line 141
    invoke-virtual {p0, p1}, Lcom/reglink/parcel/TireData;->setPosition(Lcom/reglink/parcel/TireData$Position;)V

    return-void
.end method

.method public static C_Degree2F_Degree(F)F
    .locals 4

    float-to-double v0, p0

    const-wide v2, 0x3ffccccccccccccdL    # 1.8

    mul-double/2addr v0, v2

    const-wide/high16 v2, 0x4040000000000000L    # 32.0

    add-double/2addr v0, v2

    double-to-float p0, v0

    return p0
.end method

.method public static F_Degree2C_Degree(F)F
    .locals 4

    const/high16 v0, 0x42000000    # 32.0f

    sub-float/2addr p0, v0

    float-to-double v0, p0

    const-wide v2, 0x3ffccccccccccccdL    # 1.8

    div-double/2addr v0, v2

    double-to-float p0, v0

    return p0
.end method

.method public static bar2kpa(F)F
    .locals 1

    const/high16 v0, 0x42c80000    # 100.0f

    mul-float/2addr p0, v0

    return p0
.end method

.method public static bar2psi(F)F
    .locals 1

    const v0, 0x3d8d1b71    # 0.0689f

    div-float/2addr p0, v0

    return p0
.end method

.method public static kpa2bar(F)F
    .locals 1

    const/high16 v0, 0x42c80000    # 100.0f

    div-float/2addr p0, v0

    return p0
.end method

.method public static kpa2psi(F)F
    .locals 0

    .line 265
    invoke-static {p0}, Lcom/reglink/parcel/TireData;->kpa2bar(F)F

    move-result p0

    invoke-static {p0}, Lcom/reglink/parcel/TireData;->bar2psi(F)F

    move-result p0

    return p0
.end method

.method public static psi2bar(F)F
    .locals 1

    const v0, 0x3d8d1b71    # 0.0689f

    mul-float/2addr p0, v0

    return p0
.end method

.method public static psi2kpa(F)F
    .locals 0

    .line 269
    invoke-static {p0}, Lcom/reglink/parcel/TireData;->psi2bar(F)F

    move-result p0

    invoke-static {p0}, Lcom/reglink/parcel/TireData;->bar2kpa(F)F

    move-result p0

    return p0
.end method


# virtual methods
.method public clone()Lcom/reglink/parcel/TireData;
    .locals 2

    .line 78
    new-instance v0, Lcom/reglink/parcel/TireData;

    invoke-direct {v0}, Lcom/reglink/parcel/TireData;-><init>()V

    .line 79
    iget-object v1, p0, Lcom/reglink/parcel/TireData;->position:Lcom/reglink/parcel/TireData$Position;

    iput-object v1, v0, Lcom/reglink/parcel/TireData;->position:Lcom/reglink/parcel/TireData$Position;

    .line 80
    iget v1, p0, Lcom/reglink/parcel/TireData;->id:I

    iput v1, v0, Lcom/reglink/parcel/TireData;->id:I

    .line 81
    iget v1, p0, Lcom/reglink/parcel/TireData;->pressure:F

    iput v1, v0, Lcom/reglink/parcel/TireData;->pressure:F

    .line 82
    iget v1, p0, Lcom/reglink/parcel/TireData;->temp:F

    iput v1, v0, Lcom/reglink/parcel/TireData;->temp:F

    .line 83
    iget v1, p0, Lcom/reglink/parcel/TireData;->state:I

    iput v1, v0, Lcom/reglink/parcel/TireData;->state:I

    .line 84
    iget-boolean v1, p0, Lcom/reglink/parcel/TireData;->newData:Z

    iput-boolean v1, v0, Lcom/reglink/parcel/TireData;->newData:Z

    .line 85
    iget-object v1, p0, Lcom/reglink/parcel/TireData;->pressureUnit:Lcom/reglink/parcel/TireData$PressureUnit;

    iput-object v1, v0, Lcom/reglink/parcel/TireData;->pressureUnit:Lcom/reglink/parcel/TireData$PressureUnit;

    .line 86
    iget-object v1, p0, Lcom/reglink/parcel/TireData;->temperatureUnit:Lcom/reglink/parcel/TireData$TemperatureUnit;

    iput-object v1, v0, Lcom/reglink/parcel/TireData;->temperatureUnit:Lcom/reglink/parcel/TireData$TemperatureUnit;

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
    invoke-virtual {p0}, Lcom/reglink/parcel/TireData;->clone()Lcom/reglink/parcel/TireData;

    move-result-object v0

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getId()I
    .locals 1

    .line 200
    iget v0, p0, Lcom/reglink/parcel/TireData;->id:I

    return v0
.end method

.method public getOriginalPosition()Lcom/reglink/parcel/TireData$Position;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/reglink/parcel/TireData;->originalPosition:Lcom/reglink/parcel/TireData$Position;

    return-object v0
.end method

.method public getPosition()Lcom/reglink/parcel/TireData$Position;
    .locals 1

    .line 192
    iget-object v0, p0, Lcom/reglink/parcel/TireData;->position:Lcom/reglink/parcel/TireData$Position;

    return-object v0
.end method

.method public getPressure()F
    .locals 1

    .line 208
    iget v0, p0, Lcom/reglink/parcel/TireData;->pressure:F

    return v0
.end method

.method public getPressureUnit()Lcom/reglink/parcel/TireData$PressureUnit;
    .locals 1

    .line 232
    iget-object v0, p0, Lcom/reglink/parcel/TireData;->pressureUnit:Lcom/reglink/parcel/TireData$PressureUnit;

    return-object v0
.end method

.method public getState()I
    .locals 1

    .line 224
    iget v0, p0, Lcom/reglink/parcel/TireData;->state:I

    return v0
.end method

.method public getTemperature()F
    .locals 1

    .line 216
    iget v0, p0, Lcom/reglink/parcel/TireData;->temp:F

    return v0
.end method

.method public getTemperatureUnit()Lcom/reglink/parcel/TireData$TemperatureUnit;
    .locals 1

    .line 240
    iget-object v0, p0, Lcom/reglink/parcel/TireData;->temperatureUnit:Lcom/reglink/parcel/TireData$TemperatureUnit;

    return-object v0
.end method

.method public isNewData()Z
    .locals 1

    .line 15
    iget-boolean v0, p0, Lcom/reglink/parcel/TireData;->newData:Z

    return v0
.end method

.method protected readFromParcel(Landroid/os/Parcel;)V
    .locals 3

    .line 95
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/reglink/parcel/TireData$Position;->valueOf(Ljava/lang/String;)Lcom/reglink/parcel/TireData$Position;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/reglink/parcel/TireData;->setPosition(Lcom/reglink/parcel/TireData$Position;)V

    .line 96
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/reglink/parcel/TireData;->setId(I)V

    .line 97
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/reglink/parcel/TireData;->setPressure(F)V

    .line 98
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/reglink/parcel/TireData;->setTemperature(F)V

    .line 99
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/reglink/parcel/TireData;->setState(I)V

    .line 100
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    if-eq v0, v1, :cond_1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    .line 112
    sget-object v0, Lcom/reglink/parcel/TireData$PressureUnit;->Bar:Lcom/reglink/parcel/TireData$PressureUnit;

    invoke-virtual {p0, v0}, Lcom/reglink/parcel/TireData;->setPressureUnit(Lcom/reglink/parcel/TireData$PressureUnit;)V

    goto :goto_0

    .line 109
    :cond_0
    sget-object v0, Lcom/reglink/parcel/TireData$PressureUnit;->KPa:Lcom/reglink/parcel/TireData$PressureUnit;

    invoke-virtual {p0, v0}, Lcom/reglink/parcel/TireData;->setPressureUnit(Lcom/reglink/parcel/TireData$PressureUnit;)V

    goto :goto_0

    .line 106
    :cond_1
    sget-object v0, Lcom/reglink/parcel/TireData$PressureUnit;->Psi:Lcom/reglink/parcel/TireData$PressureUnit;

    invoke-virtual {p0, v0}, Lcom/reglink/parcel/TireData;->setPressureUnit(Lcom/reglink/parcel/TireData$PressureUnit;)V

    goto :goto_0

    .line 103
    :cond_2
    sget-object v0, Lcom/reglink/parcel/TireData$PressureUnit;->Bar:Lcom/reglink/parcel/TireData$PressureUnit;

    invoke-virtual {p0, v0}, Lcom/reglink/parcel/TireData;->setPressureUnit(Lcom/reglink/parcel/TireData$PressureUnit;)V

    .line 116
    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_4

    if-eq v0, v1, :cond_3

    .line 125
    sget-object v0, Lcom/reglink/parcel/TireData$TemperatureUnit;->C_degree:Lcom/reglink/parcel/TireData$TemperatureUnit;

    invoke-virtual {p0, v0}, Lcom/reglink/parcel/TireData;->setTemperatureUnit(Lcom/reglink/parcel/TireData$TemperatureUnit;)V

    goto :goto_1

    .line 122
    :cond_3
    sget-object v0, Lcom/reglink/parcel/TireData$TemperatureUnit;->F_degree:Lcom/reglink/parcel/TireData$TemperatureUnit;

    invoke-virtual {p0, v0}, Lcom/reglink/parcel/TireData;->setTemperatureUnit(Lcom/reglink/parcel/TireData$TemperatureUnit;)V

    goto :goto_1

    .line 119
    :cond_4
    sget-object v0, Lcom/reglink/parcel/TireData$TemperatureUnit;->C_degree:Lcom/reglink/parcel/TireData$TemperatureUnit;

    invoke-virtual {p0, v0}, Lcom/reglink/parcel/TireData;->setTemperatureUnit(Lcom/reglink/parcel/TireData$TemperatureUnit;)V

    .line 128
    :goto_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_2

    :cond_5
    const/4 v1, 0x0

    :goto_2
    iput-boolean v1, p0, Lcom/reglink/parcel/TireData;->newData:Z

    .line 129
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/reglink/parcel/TireData$Position;->valueOf(Ljava/lang/String;)Lcom/reglink/parcel/TireData$Position;

    move-result-object p1

    iput-object p1, p0, Lcom/reglink/parcel/TireData;->originalPosition:Lcom/reglink/parcel/TireData$Position;

    return-void
.end method

.method public setId(I)V
    .locals 0

    .line 204
    iput p1, p0, Lcom/reglink/parcel/TireData;->id:I

    return-void
.end method

.method public setNewData(Z)V
    .locals 0

    .line 19
    iput-boolean p1, p0, Lcom/reglink/parcel/TireData;->newData:Z

    return-void
.end method

.method public setOriginalPosition(Lcom/reglink/parcel/TireData$Position;)V
    .locals 0

    .line 27
    iput-object p1, p0, Lcom/reglink/parcel/TireData;->originalPosition:Lcom/reglink/parcel/TireData$Position;

    return-void
.end method

.method public setPosition(Lcom/reglink/parcel/TireData$Position;)V
    .locals 0

    .line 196
    iput-object p1, p0, Lcom/reglink/parcel/TireData;->position:Lcom/reglink/parcel/TireData$Position;

    return-void
.end method

.method public setPressure(F)V
    .locals 0

    .line 212
    iput p1, p0, Lcom/reglink/parcel/TireData;->pressure:F

    return-void
.end method

.method public setPressureUnit(Lcom/reglink/parcel/TireData$PressureUnit;)V
    .locals 0

    .line 236
    iput-object p1, p0, Lcom/reglink/parcel/TireData;->pressureUnit:Lcom/reglink/parcel/TireData$PressureUnit;

    return-void
.end method

.method public setState(I)V
    .locals 0

    .line 228
    iput p1, p0, Lcom/reglink/parcel/TireData;->state:I

    return-void
.end method

.method public setTemperature(F)V
    .locals 0

    .line 220
    iput p1, p0, Lcom/reglink/parcel/TireData;->temp:F

    return-void
.end method

.method public setTemperatureUnit(Lcom/reglink/parcel/TireData$TemperatureUnit;)V
    .locals 0

    .line 244
    iput-object p1, p0, Lcom/reglink/parcel/TireData;->temperatureUnit:Lcom/reglink/parcel/TireData$TemperatureUnit;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 285
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "\u4f4d\u7f6e:"

    .line 286
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/reglink/parcel/TireData;->position:Lcom/reglink/parcel/TireData$Position;

    invoke-virtual {v3}, Lcom/reglink/parcel/TireData$Position;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",original:"

    .line 287
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/reglink/parcel/TireData;->originalPosition:Lcom/reglink/parcel/TireData$Position;

    invoke-virtual {v3}, Lcom/reglink/parcel/TireData$Position;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",id:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/reglink/parcel/TireData;->id:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",\u538b\u529b:"

    .line 288
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/reglink/parcel/TireData;->pressure:F

    float-to-double v3, v3

    invoke-static {v3, v4}, Lcom/reglink/common/Format;->doubleToString1(D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "bar,,\u6e29\u5ea6:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 289
    iget v3, p0, Lcom/reglink/parcel/TireData;->temp:F

    float-to-double v3, v3

    invoke-static {v3, v4}, Lcom/reglink/common/Format;->doubleToString1(D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "C,,\u72b6\u6001:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 291
    iget v2, p0, Lcom/reglink/parcel/TireData;->state:I

    const v3, 0xffff

    and-int/2addr v3, v2

    if-eqz v3, :cond_5

    const/4 v3, 0x4

    and-int/2addr v2, v3

    if-ne v2, v3, :cond_0

    const-string v2, "\u5feb\u6f0f\u6c14"

    .line 292
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 293
    :cond_0
    iget v2, p0, Lcom/reglink/parcel/TireData;->state:I

    const/16 v3, 0x8

    and-int/2addr v2, v3

    if-ne v2, v3, :cond_1

    const-string v2, "\u6162\u6f0f\u6c14"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 294
    :cond_1
    iget v2, p0, Lcom/reglink/parcel/TireData;->state:I

    const/4 v3, 0x2

    and-int/2addr v2, v3

    if-ne v2, v3, :cond_2

    const-string v2, "\u7535\u91cf\u4f4e"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 295
    :cond_2
    iget v2, p0, Lcom/reglink/parcel/TireData;->state:I

    and-int/2addr v2, v1

    if-ne v2, v1, :cond_3

    const-string v1, "\u538b\u529b\u9ad8"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 296
    :cond_3
    iget v1, p0, Lcom/reglink/parcel/TireData;->state:I

    const/16 v2, 0x20

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_4

    const-string v1, "\u6e29\u5ea6\u9ad8"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 297
    :cond_4
    iget v1, p0, Lcom/reglink/parcel/TireData;->state:I

    const/16 v2, 0x10

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_7

    const-string v1, "\u8f6e\u80ce\u65e0\u6548"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_5
    if-nez v2, :cond_6

    const-string v1, "\u6b63\u5e38"

    .line 299
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 300
    :cond_6
    iget v1, p0, Lcom/reglink/parcel/TireData;->state:I

    const/high16 v2, 0x10000

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_7

    const-string v1, "\u66f4\u65b0\u4e2d"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 302
    :cond_7
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    .line 145
    invoke-virtual {p0}, Lcom/reglink/parcel/TireData;->getPosition()Lcom/reglink/parcel/TireData$Position;

    move-result-object p2

    invoke-virtual {p2}, Lcom/reglink/parcel/TireData$Position;->name()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 146
    invoke-virtual {p0}, Lcom/reglink/parcel/TireData;->getId()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 147
    invoke-virtual {p0}, Lcom/reglink/parcel/TireData;->getPressure()F

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 148
    invoke-virtual {p0}, Lcom/reglink/parcel/TireData;->getTemperature()F

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 149
    invoke-virtual {p0}, Lcom/reglink/parcel/TireData;->getState()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 151
    sget-object p2, Lcom/reglink/parcel/TireData$2;->$SwitchMap$com$reglink$parcel$TireData$PressureUnit:[I

    invoke-virtual {p0}, Lcom/reglink/parcel/TireData;->getPressureUnit()Lcom/reglink/parcel/TireData$PressureUnit;

    move-result-object v0

    invoke-virtual {v0}, Lcom/reglink/parcel/TireData$PressureUnit;->ordinal()I

    move-result v0

    aget p2, p2, v0

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq p2, v2, :cond_2

    if-eq p2, v0, :cond_1

    const/4 v3, 0x3

    if-eq p2, v3, :cond_0

    .line 162
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    goto :goto_0

    .line 159
    :cond_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    goto :goto_0

    .line 156
    :cond_1
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByte(B)V

    goto :goto_0

    .line 153
    :cond_2
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    .line 165
    :goto_0
    sget-object p2, Lcom/reglink/parcel/TireData$2;->$SwitchMap$com$reglink$parcel$TireData$TemperatureUnit:[I

    invoke-virtual {p0}, Lcom/reglink/parcel/TireData;->getTemperatureUnit()Lcom/reglink/parcel/TireData$TemperatureUnit;

    move-result-object v3

    invoke-virtual {v3}, Lcom/reglink/parcel/TireData$TemperatureUnit;->ordinal()I

    move-result v3

    aget p2, p2, v3

    if-eq p2, v2, :cond_4

    if-eq p2, v0, :cond_3

    .line 173
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    goto :goto_1

    .line 170
    :cond_3
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByte(B)V

    goto :goto_1

    .line 167
    :cond_4
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    .line 176
    :goto_1
    iget-boolean p2, p0, Lcom/reglink/parcel/TireData;->newData:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 177
    iget-object p2, p0, Lcom/reglink/parcel/TireData;->originalPosition:Lcom/reglink/parcel/TireData$Position;

    invoke-virtual {p2}, Lcom/reglink/parcel/TireData$Position;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
