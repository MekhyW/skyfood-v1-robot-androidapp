.class public Lcom/reglink/common/GpioPorts;
.super Ljava/lang/Object;
.source "GpioPorts.java"


# static fields
.field public static final Aux:I = 0x1

.field public static final ILL:I = 0x3

.field public static final InBase:I = 0x0

.field public static final InMax:I = 0x8

.field public static final OutAMP:I = 0x6b

.field public static final OutAUXPower:I = 0x70

.field public static final OutBackLight:I = 0x6d

.field public static final OutBluetooth:I = 0x71

.field public static final OutBuzzer:I = 0x72

.field public static final OutCoolantFan:I = 0x69

.field public static final OutDTVPower:I = 0x6e

.field public static final OutDVRPower:I = 0x6f

.field public static final OutExternalAMP:I = 0x6a

.field public static final OutFrontCameraPower:I = 0x6c

.field public static final OutMax:I = 0x74

.field public static final OutNaviSound:I = 0x68

.field public static final OutPanoramic:I = 0x73

.field public static final OutRadioAntPower:I = 0x67

.field public static final OutReverseCameraPower:I = 0x66

.field public static final OutUsb5v:I = 0x65

.field public static final OutputBase:I = 0x64

.field public static final Panoramic:I = 0x7

.field public static final ParkingBrake:I = 0x4

.field public static final PhoneMute:I = 0x5

.field public static final Reverse:I = 0x2

.field public static final RightCamera:I = 0x6

.field private static value2Names:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 10
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/reglink/common/GpioPorts;->value2Names:Landroid/util/SparseArray;

    const/4 v1, 0x1

    const-string v2, "Aux"

    .line 41
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 42
    sget-object v0, Lcom/reglink/common/GpioPorts;->value2Names:Landroid/util/SparseArray;

    const/4 v1, 0x2

    const-string v2, "Reverse"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 43
    sget-object v0, Lcom/reglink/common/GpioPorts;->value2Names:Landroid/util/SparseArray;

    const/4 v1, 0x3

    const-string v2, "ILL"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 44
    sget-object v0, Lcom/reglink/common/GpioPorts;->value2Names:Landroid/util/SparseArray;

    const/4 v1, 0x4

    const-string v2, "ParkingBrake"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 45
    sget-object v0, Lcom/reglink/common/GpioPorts;->value2Names:Landroid/util/SparseArray;

    const/4 v1, 0x5

    const-string v2, "PhoneMute"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 46
    sget-object v0, Lcom/reglink/common/GpioPorts;->value2Names:Landroid/util/SparseArray;

    const/4 v1, 0x6

    const-string v2, "RightCamera"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 47
    sget-object v0, Lcom/reglink/common/GpioPorts;->value2Names:Landroid/util/SparseArray;

    const/4 v1, 0x7

    const-string v2, "Panoramic"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 48
    sget-object v0, Lcom/reglink/common/GpioPorts;->value2Names:Landroid/util/SparseArray;

    const/16 v1, 0x8

    const-string v2, "InMax"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 51
    sget-object v0, Lcom/reglink/common/GpioPorts;->value2Names:Landroid/util/SparseArray;

    const/16 v1, 0x65

    const-string v2, "OutUsb5v"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 52
    sget-object v0, Lcom/reglink/common/GpioPorts;->value2Names:Landroid/util/SparseArray;

    const/16 v1, 0x66

    const-string v2, "OutReverseCameraPower"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 53
    sget-object v0, Lcom/reglink/common/GpioPorts;->value2Names:Landroid/util/SparseArray;

    const/16 v1, 0x67

    const-string v2, "OutRadioAntPower"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 54
    sget-object v0, Lcom/reglink/common/GpioPorts;->value2Names:Landroid/util/SparseArray;

    const/16 v1, 0x68

    const-string v2, "OutNaviSound"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 55
    sget-object v0, Lcom/reglink/common/GpioPorts;->value2Names:Landroid/util/SparseArray;

    const/16 v1, 0x69

    const-string v2, "OutCoolantFan"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 56
    sget-object v0, Lcom/reglink/common/GpioPorts;->value2Names:Landroid/util/SparseArray;

    const/16 v1, 0x6a

    const-string v2, "OutExternalAMP"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 57
    sget-object v0, Lcom/reglink/common/GpioPorts;->value2Names:Landroid/util/SparseArray;

    const/16 v1, 0x6b

    const-string v2, "OutAMP"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 58
    sget-object v0, Lcom/reglink/common/GpioPorts;->value2Names:Landroid/util/SparseArray;

    const/16 v1, 0x6c

    const-string v2, "OutFrontCameraPower"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 59
    sget-object v0, Lcom/reglink/common/GpioPorts;->value2Names:Landroid/util/SparseArray;

    const/16 v1, 0x6d

    const-string v2, "OutBackLight"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 60
    sget-object v0, Lcom/reglink/common/GpioPorts;->value2Names:Landroid/util/SparseArray;

    const/16 v1, 0x6e

    const-string v2, "OutDTVPower"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 61
    sget-object v0, Lcom/reglink/common/GpioPorts;->value2Names:Landroid/util/SparseArray;

    const/16 v1, 0x6f

    const-string v2, "OutDVRPower"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 62
    sget-object v0, Lcom/reglink/common/GpioPorts;->value2Names:Landroid/util/SparseArray;

    const/16 v1, 0x70

    const-string v2, "OutAUXPower"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 63
    sget-object v0, Lcom/reglink/common/GpioPorts;->value2Names:Landroid/util/SparseArray;

    const/16 v1, 0x71

    const-string v2, "OutBluetooth"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 64
    sget-object v0, Lcom/reglink/common/GpioPorts;->value2Names:Landroid/util/SparseArray;

    const/16 v1, 0x72

    const-string v2, "OutBuzzer"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 65
    sget-object v0, Lcom/reglink/common/GpioPorts;->value2Names:Landroid/util/SparseArray;

    const/16 v1, 0x73

    const-string v2, "OutPanoramic"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 66
    sget-object v0, Lcom/reglink/common/GpioPorts;->value2Names:Landroid/util/SparseArray;

    const/16 v1, 0x74

    const-string v2, "OutMax"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getPortByName(Ljava/lang/String;)I
    .locals 3

    .line 73
    sget-object v0, Lcom/reglink/common/GpioPorts;->value2Names:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 75
    sget-object v2, Lcom/reglink/common/GpioPorts;->value2Names:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 76
    sget-object p0, Lcom/reglink/common/GpioPorts;->value2Names:Landroid/util/SparseArray;

    invoke-virtual {p0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result p0

    return p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public static getPortName(I)Ljava/lang/String;
    .locals 3

    .line 70
    sget-object v0, Lcom/reglink/common/GpioPorts;->value2Names:Landroid/util/SparseArray;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method
