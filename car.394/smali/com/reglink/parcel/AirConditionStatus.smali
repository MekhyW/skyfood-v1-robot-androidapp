.class public Lcom/reglink/parcel/AirConditionStatus;
.super Ljava/lang/Object;
.source "AirConditionStatus.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/reglink/parcel/AirConditionStatus;",
            ">;"
        }
    .end annotation
.end field

.field public static final Flag_AC:I = 0x4

.field public static final Flag_AcMax:I = 0x8

.field public static final Flag_Auto:I = 0x10

.field public static final Flag_airToFloor:I = 0x200

.field public static final Flag_airToPanel:I = 0x100

.field public static final Flag_airToScreen:I = 0x400

.field public static final Flag_backDemist:I = 0x1000

.field public static final Flag_blowerSpeed:I = 0x20

.field public static final Flag_defrost:I = 0x800

.field public static final Flag_driverSeatTemp:I = 0x8000

.field public static final Flag_driverTemp:I = 0x2000

.field public static final Flag_dual:I = 0x20000

.field public static final Flag_maxTempLimit:I = 0x40000

.field public static final Flag_minTempLimit:I = 0x80000

.field public static final Flag_passengerSeatTemp:I = 0x10000

.field public static final Flag_passengerTemp:I = 0x4000

.field public static final Flag_power:I = 0x2

.field public static final Flag_recycle:I = 0x40

.field public static final Flag_refresh:I = 0x80


# instance fields
.field public AC:Z

.field public AcMax:Z

.field public Auto:Z

.field public airToFloor:Z

.field public airToPanel:Z

.field public airToScreen:Z

.field public backDemist:Z

.field public defrost:Z

.field public driverSeatTemp:I

.field public driverTemp:D

.field public dual:Z

.field public fan:I

.field public isAvailable:Z

.field public maxTempLimit:D

.field public minTempLimit:D

.field public passengerSeatTemp:I

.field public passengerTemp:D

.field public power:Z

.field public privateData:I

.field public recycle:Z

.field public refresh:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 122
    new-instance v0, Lcom/reglink/parcel/AirConditionStatus$1;

    invoke-direct {v0}, Lcom/reglink/parcel/AirConditionStatus$1;-><init>()V

    sput-object v0, Lcom/reglink/parcel/AirConditionStatus;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/high16 v0, 0x403d000000000000L    # 29.0

    .line 29
    iput-wide v0, p0, Lcom/reglink/parcel/AirConditionStatus;->maxTempLimit:D

    const-wide v0, 0x4030800000000000L    # 16.5

    .line 30
    iput-wide v0, p0, Lcom/reglink/parcel/AirConditionStatus;->minTempLimit:D

    const/4 v0, 0x0

    .line 55
    iput-boolean v0, p0, Lcom/reglink/parcel/AirConditionStatus;->isAvailable:Z

    .line 56
    iput v0, p0, Lcom/reglink/parcel/AirConditionStatus;->privateData:I

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/high16 v0, 0x403d000000000000L    # 29.0

    .line 29
    iput-wide v0, p0, Lcom/reglink/parcel/AirConditionStatus;->maxTempLimit:D

    const-wide v0, 0x4030800000000000L    # 16.5

    .line 30
    iput-wide v0, p0, Lcom/reglink/parcel/AirConditionStatus;->minTempLimit:D

    const/4 v0, 0x0

    .line 55
    iput-boolean v0, p0, Lcom/reglink/parcel/AirConditionStatus;->isAvailable:Z

    .line 56
    iput v0, p0, Lcom/reglink/parcel/AirConditionStatus;->privateData:I

    .line 116
    invoke-virtual {p0, p1}, Lcom/reglink/parcel/AirConditionStatus;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/reglink/parcel/AirConditionStatus$1;)V
    .locals 0

    .line 9
    invoke-direct {p0, p1}, Lcom/reglink/parcel/AirConditionStatus;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private static boolean2byte(Z)B
    .locals 1

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static byte2boolean(B)Z
    .locals 0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public clone()Lcom/reglink/parcel/AirConditionStatus;
    .locals 3

    .line 158
    new-instance v0, Lcom/reglink/parcel/AirConditionStatus;

    invoke-direct {v0}, Lcom/reglink/parcel/AirConditionStatus;-><init>()V

    .line 159
    iget-boolean v1, p0, Lcom/reglink/parcel/AirConditionStatus;->AC:Z

    iput-boolean v1, v0, Lcom/reglink/parcel/AirConditionStatus;->AC:Z

    .line 160
    iget-boolean v1, p0, Lcom/reglink/parcel/AirConditionStatus;->AcMax:Z

    iput-boolean v1, v0, Lcom/reglink/parcel/AirConditionStatus;->AcMax:Z

    .line 161
    iget-boolean v1, p0, Lcom/reglink/parcel/AirConditionStatus;->Auto:Z

    iput-boolean v1, v0, Lcom/reglink/parcel/AirConditionStatus;->Auto:Z

    .line 162
    iget-boolean v1, p0, Lcom/reglink/parcel/AirConditionStatus;->power:Z

    iput-boolean v1, v0, Lcom/reglink/parcel/AirConditionStatus;->power:Z

    .line 163
    iget-boolean v1, p0, Lcom/reglink/parcel/AirConditionStatus;->airToFloor:Z

    iput-boolean v1, v0, Lcom/reglink/parcel/AirConditionStatus;->airToFloor:Z

    .line 164
    iget-boolean v1, p0, Lcom/reglink/parcel/AirConditionStatus;->airToPanel:Z

    iput-boolean v1, v0, Lcom/reglink/parcel/AirConditionStatus;->airToPanel:Z

    .line 165
    iget-boolean v1, p0, Lcom/reglink/parcel/AirConditionStatus;->airToScreen:Z

    iput-boolean v1, v0, Lcom/reglink/parcel/AirConditionStatus;->airToScreen:Z

    .line 166
    iget v1, p0, Lcom/reglink/parcel/AirConditionStatus;->fan:I

    iput v1, v0, Lcom/reglink/parcel/AirConditionStatus;->fan:I

    .line 167
    iget-boolean v1, p0, Lcom/reglink/parcel/AirConditionStatus;->recycle:Z

    iput-boolean v1, v0, Lcom/reglink/parcel/AirConditionStatus;->recycle:Z

    .line 168
    iget-boolean v1, p0, Lcom/reglink/parcel/AirConditionStatus;->refresh:Z

    iput-boolean v1, v0, Lcom/reglink/parcel/AirConditionStatus;->refresh:Z

    .line 169
    iget-boolean v1, p0, Lcom/reglink/parcel/AirConditionStatus;->defrost:Z

    iput-boolean v1, v0, Lcom/reglink/parcel/AirConditionStatus;->defrost:Z

    .line 170
    iget-boolean v1, p0, Lcom/reglink/parcel/AirConditionStatus;->backDemist:Z

    iput-boolean v1, v0, Lcom/reglink/parcel/AirConditionStatus;->backDemist:Z

    .line 171
    iget-wide v1, p0, Lcom/reglink/parcel/AirConditionStatus;->driverTemp:D

    iput-wide v1, v0, Lcom/reglink/parcel/AirConditionStatus;->driverTemp:D

    .line 172
    iget-wide v1, p0, Lcom/reglink/parcel/AirConditionStatus;->passengerTemp:D

    iput-wide v1, v0, Lcom/reglink/parcel/AirConditionStatus;->passengerTemp:D

    .line 173
    iget-boolean v1, p0, Lcom/reglink/parcel/AirConditionStatus;->dual:Z

    iput-boolean v1, v0, Lcom/reglink/parcel/AirConditionStatus;->dual:Z

    .line 174
    iget v1, p0, Lcom/reglink/parcel/AirConditionStatus;->driverSeatTemp:I

    iput v1, v0, Lcom/reglink/parcel/AirConditionStatus;->driverSeatTemp:I

    .line 175
    iget v1, p0, Lcom/reglink/parcel/AirConditionStatus;->passengerSeatTemp:I

    iput v1, v0, Lcom/reglink/parcel/AirConditionStatus;->passengerSeatTemp:I

    .line 176
    iget-wide v1, p0, Lcom/reglink/parcel/AirConditionStatus;->maxTempLimit:D

    iput-wide v1, v0, Lcom/reglink/parcel/AirConditionStatus;->maxTempLimit:D

    .line 177
    iget-wide v1, p0, Lcom/reglink/parcel/AirConditionStatus;->minTempLimit:D

    iput-wide v1, v0, Lcom/reglink/parcel/AirConditionStatus;->minTempLimit:D

    .line 178
    iget v1, p0, Lcom/reglink/parcel/AirConditionStatus;->privateData:I

    iput v1, v0, Lcom/reglink/parcel/AirConditionStatus;->privateData:I

    .line 179
    iget-boolean v1, p0, Lcom/reglink/parcel/AirConditionStatus;->isAvailable:Z

    iput-boolean v1, v0, Lcom/reglink/parcel/AirConditionStatus;->isAvailable:Z

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 9
    invoke-virtual {p0}, Lcom/reglink/parcel/AirConditionStatus;->clone()Lcom/reglink/parcel/AirConditionStatus;

    move-result-object v0

    return-object v0
.end method

.method public copyFrom(Lcom/reglink/parcel/AirConditionStatus;)V
    .locals 2

    .line 134
    iget-boolean v0, p1, Lcom/reglink/parcel/AirConditionStatus;->AC:Z

    iput-boolean v0, p0, Lcom/reglink/parcel/AirConditionStatus;->AC:Z

    .line 135
    iget-boolean v0, p1, Lcom/reglink/parcel/AirConditionStatus;->AcMax:Z

    iput-boolean v0, p0, Lcom/reglink/parcel/AirConditionStatus;->AcMax:Z

    .line 136
    iget-boolean v0, p1, Lcom/reglink/parcel/AirConditionStatus;->Auto:Z

    iput-boolean v0, p0, Lcom/reglink/parcel/AirConditionStatus;->Auto:Z

    .line 137
    iget-boolean v0, p1, Lcom/reglink/parcel/AirConditionStatus;->power:Z

    iput-boolean v0, p0, Lcom/reglink/parcel/AirConditionStatus;->power:Z

    .line 138
    iget-boolean v0, p1, Lcom/reglink/parcel/AirConditionStatus;->airToFloor:Z

    iput-boolean v0, p0, Lcom/reglink/parcel/AirConditionStatus;->airToFloor:Z

    .line 139
    iget-boolean v0, p1, Lcom/reglink/parcel/AirConditionStatus;->airToPanel:Z

    iput-boolean v0, p0, Lcom/reglink/parcel/AirConditionStatus;->airToPanel:Z

    .line 140
    iget-boolean v0, p1, Lcom/reglink/parcel/AirConditionStatus;->airToScreen:Z

    iput-boolean v0, p0, Lcom/reglink/parcel/AirConditionStatus;->airToScreen:Z

    .line 141
    iget v0, p1, Lcom/reglink/parcel/AirConditionStatus;->fan:I

    iput v0, p0, Lcom/reglink/parcel/AirConditionStatus;->fan:I

    .line 142
    iget-boolean v0, p1, Lcom/reglink/parcel/AirConditionStatus;->recycle:Z

    iput-boolean v0, p0, Lcom/reglink/parcel/AirConditionStatus;->recycle:Z

    .line 143
    iget-boolean v0, p1, Lcom/reglink/parcel/AirConditionStatus;->refresh:Z

    iput-boolean v0, p0, Lcom/reglink/parcel/AirConditionStatus;->refresh:Z

    .line 144
    iget-boolean v0, p1, Lcom/reglink/parcel/AirConditionStatus;->defrost:Z

    iput-boolean v0, p0, Lcom/reglink/parcel/AirConditionStatus;->defrost:Z

    .line 145
    iget-boolean v0, p1, Lcom/reglink/parcel/AirConditionStatus;->backDemist:Z

    iput-boolean v0, p0, Lcom/reglink/parcel/AirConditionStatus;->backDemist:Z

    .line 146
    iget-wide v0, p1, Lcom/reglink/parcel/AirConditionStatus;->driverTemp:D

    iput-wide v0, p0, Lcom/reglink/parcel/AirConditionStatus;->driverTemp:D

    .line 147
    iget-wide v0, p1, Lcom/reglink/parcel/AirConditionStatus;->passengerTemp:D

    iput-wide v0, p0, Lcom/reglink/parcel/AirConditionStatus;->passengerTemp:D

    .line 148
    iget-boolean v0, p1, Lcom/reglink/parcel/AirConditionStatus;->dual:Z

    iput-boolean v0, p0, Lcom/reglink/parcel/AirConditionStatus;->dual:Z

    .line 149
    iget v0, p1, Lcom/reglink/parcel/AirConditionStatus;->driverSeatTemp:I

    iput v0, p0, Lcom/reglink/parcel/AirConditionStatus;->driverSeatTemp:I

    .line 150
    iget v0, p1, Lcom/reglink/parcel/AirConditionStatus;->passengerSeatTemp:I

    iput v0, p0, Lcom/reglink/parcel/AirConditionStatus;->passengerSeatTemp:I

    .line 151
    iget-wide v0, p1, Lcom/reglink/parcel/AirConditionStatus;->maxTempLimit:D

    iput-wide v0, p0, Lcom/reglink/parcel/AirConditionStatus;->maxTempLimit:D

    .line 152
    iget-wide v0, p1, Lcom/reglink/parcel/AirConditionStatus;->minTempLimit:D

    iput-wide v0, p0, Lcom/reglink/parcel/AirConditionStatus;->minTempLimit:D

    .line 154
    iget v0, p1, Lcom/reglink/parcel/AirConditionStatus;->privateData:I

    iput v0, p0, Lcom/reglink/parcel/AirConditionStatus;->privateData:I

    .line 155
    iget-boolean p1, p1, Lcom/reglink/parcel/AirConditionStatus;->isAvailable:Z

    iput-boolean p1, p0, Lcom/reglink/parcel/AirConditionStatus;->isAvailable:Z

    return-void
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 186
    :cond_0
    instance-of v1, p1, Lcom/reglink/parcel/AirConditionStatus;

    if-nez v1, :cond_1

    return v0

    .line 187
    :cond_1
    check-cast p1, Lcom/reglink/parcel/AirConditionStatus;

    .line 188
    iget-boolean v1, p1, Lcom/reglink/parcel/AirConditionStatus;->AC:Z

    iget-boolean v2, p0, Lcom/reglink/parcel/AirConditionStatus;->AC:Z

    if-ne v1, v2, :cond_2

    iget-boolean v1, p1, Lcom/reglink/parcel/AirConditionStatus;->AcMax:Z

    iget-boolean v2, p0, Lcom/reglink/parcel/AirConditionStatus;->AcMax:Z

    if-ne v1, v2, :cond_2

    iget-boolean v1, p1, Lcom/reglink/parcel/AirConditionStatus;->Auto:Z

    iget-boolean v2, p0, Lcom/reglink/parcel/AirConditionStatus;->Auto:Z

    if-ne v1, v2, :cond_2

    iget-boolean v1, p1, Lcom/reglink/parcel/AirConditionStatus;->power:Z

    iget-boolean v2, p0, Lcom/reglink/parcel/AirConditionStatus;->power:Z

    if-ne v1, v2, :cond_2

    iget-boolean v1, p1, Lcom/reglink/parcel/AirConditionStatus;->airToFloor:Z

    iget-boolean v2, p0, Lcom/reglink/parcel/AirConditionStatus;->airToFloor:Z

    if-ne v1, v2, :cond_2

    iget-boolean v1, p1, Lcom/reglink/parcel/AirConditionStatus;->airToPanel:Z

    iget-boolean v2, p0, Lcom/reglink/parcel/AirConditionStatus;->airToPanel:Z

    if-ne v1, v2, :cond_2

    iget-boolean v1, p1, Lcom/reglink/parcel/AirConditionStatus;->airToScreen:Z

    iget-boolean v2, p0, Lcom/reglink/parcel/AirConditionStatus;->airToScreen:Z

    if-ne v1, v2, :cond_2

    iget v1, p1, Lcom/reglink/parcel/AirConditionStatus;->fan:I

    iget v2, p0, Lcom/reglink/parcel/AirConditionStatus;->fan:I

    if-ne v1, v2, :cond_2

    iget-boolean v1, p1, Lcom/reglink/parcel/AirConditionStatus;->recycle:Z

    iget-boolean v2, p0, Lcom/reglink/parcel/AirConditionStatus;->recycle:Z

    if-ne v1, v2, :cond_2

    iget-boolean v1, p1, Lcom/reglink/parcel/AirConditionStatus;->refresh:Z

    iget-boolean v2, p0, Lcom/reglink/parcel/AirConditionStatus;->refresh:Z

    if-ne v1, v2, :cond_2

    iget-boolean v1, p1, Lcom/reglink/parcel/AirConditionStatus;->defrost:Z

    iget-boolean v2, p0, Lcom/reglink/parcel/AirConditionStatus;->defrost:Z

    if-ne v1, v2, :cond_2

    iget-boolean v1, p1, Lcom/reglink/parcel/AirConditionStatus;->backDemist:Z

    iget-boolean v2, p0, Lcom/reglink/parcel/AirConditionStatus;->backDemist:Z

    if-ne v1, v2, :cond_2

    iget-boolean v1, p1, Lcom/reglink/parcel/AirConditionStatus;->dual:Z

    iget-boolean v2, p0, Lcom/reglink/parcel/AirConditionStatus;->dual:Z

    if-ne v1, v2, :cond_2

    iget v1, p1, Lcom/reglink/parcel/AirConditionStatus;->driverSeatTemp:I

    iget v2, p0, Lcom/reglink/parcel/AirConditionStatus;->driverSeatTemp:I

    if-ne v1, v2, :cond_2

    iget v1, p1, Lcom/reglink/parcel/AirConditionStatus;->passengerSeatTemp:I

    iget v2, p0, Lcom/reglink/parcel/AirConditionStatus;->passengerSeatTemp:I

    if-ne v1, v2, :cond_2

    .line 203
    iget-wide v1, p1, Lcom/reglink/parcel/AirConditionStatus;->driverTemp:D

    iget-wide v3, p0, Lcom/reglink/parcel/AirConditionStatus;->driverTemp:D

    sub-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->abs(D)D

    move-result-wide v1

    const-wide/high16 v3, 0x3fe0000000000000L    # 0.5

    cmpg-double v1, v1, v3

    if-gez v1, :cond_2

    iget-wide v1, p1, Lcom/reglink/parcel/AirConditionStatus;->passengerTemp:D

    iget-wide v5, p0, Lcom/reglink/parcel/AirConditionStatus;->passengerTemp:D

    sub-double/2addr v1, v5

    .line 204
    invoke-static {v1, v2}, Ljava/lang/Math;->abs(D)D

    move-result-wide v1

    cmpg-double p1, v1, v3

    if-gez p1, :cond_2

    const/4 p1, 0x1

    return p1

    :cond_2
    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 2

    .line 94
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    invoke-static {v0}, Lcom/reglink/parcel/AirConditionStatus;->byte2boolean(B)Z

    move-result v0

    iput-boolean v0, p0, Lcom/reglink/parcel/AirConditionStatus;->power:Z

    .line 95
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    invoke-static {v0}, Lcom/reglink/parcel/AirConditionStatus;->byte2boolean(B)Z

    move-result v0

    iput-boolean v0, p0, Lcom/reglink/parcel/AirConditionStatus;->AC:Z

    .line 96
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    invoke-static {v0}, Lcom/reglink/parcel/AirConditionStatus;->byte2boolean(B)Z

    move-result v0

    iput-boolean v0, p0, Lcom/reglink/parcel/AirConditionStatus;->AcMax:Z

    .line 97
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    invoke-static {v0}, Lcom/reglink/parcel/AirConditionStatus;->byte2boolean(B)Z

    move-result v0

    iput-boolean v0, p0, Lcom/reglink/parcel/AirConditionStatus;->Auto:Z

    .line 98
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/reglink/parcel/AirConditionStatus;->fan:I

    .line 99
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    invoke-static {v0}, Lcom/reglink/parcel/AirConditionStatus;->byte2boolean(B)Z

    move-result v0

    iput-boolean v0, p0, Lcom/reglink/parcel/AirConditionStatus;->recycle:Z

    .line 100
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    invoke-static {v0}, Lcom/reglink/parcel/AirConditionStatus;->byte2boolean(B)Z

    move-result v0

    iput-boolean v0, p0, Lcom/reglink/parcel/AirConditionStatus;->refresh:Z

    .line 101
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    invoke-static {v0}, Lcom/reglink/parcel/AirConditionStatus;->byte2boolean(B)Z

    move-result v0

    iput-boolean v0, p0, Lcom/reglink/parcel/AirConditionStatus;->airToPanel:Z

    .line 102
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    invoke-static {v0}, Lcom/reglink/parcel/AirConditionStatus;->byte2boolean(B)Z

    move-result v0

    iput-boolean v0, p0, Lcom/reglink/parcel/AirConditionStatus;->airToFloor:Z

    .line 103
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    invoke-static {v0}, Lcom/reglink/parcel/AirConditionStatus;->byte2boolean(B)Z

    move-result v0

    iput-boolean v0, p0, Lcom/reglink/parcel/AirConditionStatus;->airToScreen:Z

    .line 104
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    invoke-static {v0}, Lcom/reglink/parcel/AirConditionStatus;->byte2boolean(B)Z

    move-result v0

    iput-boolean v0, p0, Lcom/reglink/parcel/AirConditionStatus;->defrost:Z

    .line 105
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    invoke-static {v0}, Lcom/reglink/parcel/AirConditionStatus;->byte2boolean(B)Z

    move-result v0

    iput-boolean v0, p0, Lcom/reglink/parcel/AirConditionStatus;->backDemist:Z

    .line 106
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/reglink/parcel/AirConditionStatus;->driverTemp:D

    .line 107
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/reglink/parcel/AirConditionStatus;->passengerTemp:D

    .line 108
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    invoke-static {v0}, Lcom/reglink/parcel/AirConditionStatus;->byte2boolean(B)Z

    move-result v0

    iput-boolean v0, p0, Lcom/reglink/parcel/AirConditionStatus;->dual:Z

    .line 109
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/reglink/parcel/AirConditionStatus;->driverSeatTemp:I

    .line 110
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/reglink/parcel/AirConditionStatus;->passengerSeatTemp:I

    .line 111
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/reglink/parcel/AirConditionStatus;->maxTempLimit:D

    .line 112
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/reglink/parcel/AirConditionStatus;->minTempLimit:D

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 71
    iget-boolean p2, p0, Lcom/reglink/parcel/AirConditionStatus;->power:Z

    invoke-static {p2}, Lcom/reglink/parcel/AirConditionStatus;->boolean2byte(Z)B

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 72
    iget-boolean p2, p0, Lcom/reglink/parcel/AirConditionStatus;->AC:Z

    invoke-static {p2}, Lcom/reglink/parcel/AirConditionStatus;->boolean2byte(Z)B

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 73
    iget-boolean p2, p0, Lcom/reglink/parcel/AirConditionStatus;->AcMax:Z

    invoke-static {p2}, Lcom/reglink/parcel/AirConditionStatus;->boolean2byte(Z)B

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 74
    iget-boolean p2, p0, Lcom/reglink/parcel/AirConditionStatus;->Auto:Z

    invoke-static {p2}, Lcom/reglink/parcel/AirConditionStatus;->boolean2byte(Z)B

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 75
    iget p2, p0, Lcom/reglink/parcel/AirConditionStatus;->fan:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 76
    iget-boolean p2, p0, Lcom/reglink/parcel/AirConditionStatus;->recycle:Z

    invoke-static {p2}, Lcom/reglink/parcel/AirConditionStatus;->boolean2byte(Z)B

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 77
    iget-boolean p2, p0, Lcom/reglink/parcel/AirConditionStatus;->refresh:Z

    invoke-static {p2}, Lcom/reglink/parcel/AirConditionStatus;->boolean2byte(Z)B

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 78
    iget-boolean p2, p0, Lcom/reglink/parcel/AirConditionStatus;->airToPanel:Z

    invoke-static {p2}, Lcom/reglink/parcel/AirConditionStatus;->boolean2byte(Z)B

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 79
    iget-boolean p2, p0, Lcom/reglink/parcel/AirConditionStatus;->airToFloor:Z

    invoke-static {p2}, Lcom/reglink/parcel/AirConditionStatus;->boolean2byte(Z)B

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 80
    iget-boolean p2, p0, Lcom/reglink/parcel/AirConditionStatus;->airToScreen:Z

    invoke-static {p2}, Lcom/reglink/parcel/AirConditionStatus;->boolean2byte(Z)B

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 81
    iget-boolean p2, p0, Lcom/reglink/parcel/AirConditionStatus;->defrost:Z

    invoke-static {p2}, Lcom/reglink/parcel/AirConditionStatus;->boolean2byte(Z)B

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 82
    iget-boolean p2, p0, Lcom/reglink/parcel/AirConditionStatus;->backDemist:Z

    invoke-static {p2}, Lcom/reglink/parcel/AirConditionStatus;->boolean2byte(Z)B

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 83
    iget-wide v0, p0, Lcom/reglink/parcel/AirConditionStatus;->driverTemp:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 84
    iget-wide v0, p0, Lcom/reglink/parcel/AirConditionStatus;->passengerTemp:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 85
    iget-boolean p2, p0, Lcom/reglink/parcel/AirConditionStatus;->dual:Z

    invoke-static {p2}, Lcom/reglink/parcel/AirConditionStatus;->boolean2byte(Z)B

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 86
    iget p2, p0, Lcom/reglink/parcel/AirConditionStatus;->driverSeatTemp:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 87
    iget p2, p0, Lcom/reglink/parcel/AirConditionStatus;->passengerSeatTemp:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 88
    iget-wide v0, p0, Lcom/reglink/parcel/AirConditionStatus;->maxTempLimit:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 89
    iget-wide v0, p0, Lcom/reglink/parcel/AirConditionStatus;->minTempLimit:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    return-void
.end method
