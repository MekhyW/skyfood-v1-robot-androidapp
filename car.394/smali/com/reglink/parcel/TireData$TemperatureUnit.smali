.class public final enum Lcom/reglink/parcel/TireData$TemperatureUnit;
.super Ljava/lang/Enum;
.source "TireData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/reglink/parcel/TireData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TemperatureUnit"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/reglink/parcel/TireData$TemperatureUnit;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/reglink/parcel/TireData$TemperatureUnit;

.field public static final enum C_degree:Lcom/reglink/parcel/TireData$TemperatureUnit;

.field public static final enum F_degree:Lcom/reglink/parcel/TireData$TemperatureUnit;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 56
    new-instance v0, Lcom/reglink/parcel/TireData$TemperatureUnit;

    const-string v1, "F_degree"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/reglink/parcel/TireData$TemperatureUnit;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/reglink/parcel/TireData$TemperatureUnit;->F_degree:Lcom/reglink/parcel/TireData$TemperatureUnit;

    .line 57
    new-instance v1, Lcom/reglink/parcel/TireData$TemperatureUnit;

    const-string v3, "C_degree"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/reglink/parcel/TireData$TemperatureUnit;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/reglink/parcel/TireData$TemperatureUnit;->C_degree:Lcom/reglink/parcel/TireData$TemperatureUnit;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/reglink/parcel/TireData$TemperatureUnit;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    .line 55
    sput-object v3, Lcom/reglink/parcel/TireData$TemperatureUnit;->$VALUES:[Lcom/reglink/parcel/TireData$TemperatureUnit;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 55
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/reglink/parcel/TireData$TemperatureUnit;
    .locals 1

    .line 55
    const-class v0, Lcom/reglink/parcel/TireData$TemperatureUnit;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/reglink/parcel/TireData$TemperatureUnit;

    return-object p0
.end method

.method public static values()[Lcom/reglink/parcel/TireData$TemperatureUnit;
    .locals 1

    .line 55
    sget-object v0, Lcom/reglink/parcel/TireData$TemperatureUnit;->$VALUES:[Lcom/reglink/parcel/TireData$TemperatureUnit;

    invoke-virtual {v0}, [Lcom/reglink/parcel/TireData$TemperatureUnit;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/reglink/parcel/TireData$TemperatureUnit;

    return-object v0
.end method
