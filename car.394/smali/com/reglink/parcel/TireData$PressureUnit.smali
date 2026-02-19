.class public final enum Lcom/reglink/parcel/TireData$PressureUnit;
.super Ljava/lang/Enum;
.source "TireData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/reglink/parcel/TireData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PressureUnit"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/reglink/parcel/TireData$PressureUnit;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/reglink/parcel/TireData$PressureUnit;

.field public static final enum Bar:Lcom/reglink/parcel/TireData$PressureUnit;

.field public static final enum KPa:Lcom/reglink/parcel/TireData$PressureUnit;

.field public static final enum Psi:Lcom/reglink/parcel/TireData$PressureUnit;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 50
    new-instance v0, Lcom/reglink/parcel/TireData$PressureUnit;

    const-string v1, "Bar"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/reglink/parcel/TireData$PressureUnit;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/reglink/parcel/TireData$PressureUnit;->Bar:Lcom/reglink/parcel/TireData$PressureUnit;

    .line 51
    new-instance v1, Lcom/reglink/parcel/TireData$PressureUnit;

    const-string v3, "Psi"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/reglink/parcel/TireData$PressureUnit;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/reglink/parcel/TireData$PressureUnit;->Psi:Lcom/reglink/parcel/TireData$PressureUnit;

    .line 52
    new-instance v3, Lcom/reglink/parcel/TireData$PressureUnit;

    const-string v5, "KPa"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/reglink/parcel/TireData$PressureUnit;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/reglink/parcel/TireData$PressureUnit;->KPa:Lcom/reglink/parcel/TireData$PressureUnit;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/reglink/parcel/TireData$PressureUnit;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 49
    sput-object v5, Lcom/reglink/parcel/TireData$PressureUnit;->$VALUES:[Lcom/reglink/parcel/TireData$PressureUnit;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 49
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/reglink/parcel/TireData$PressureUnit;
    .locals 1

    .line 49
    const-class v0, Lcom/reglink/parcel/TireData$PressureUnit;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/reglink/parcel/TireData$PressureUnit;

    return-object p0
.end method

.method public static values()[Lcom/reglink/parcel/TireData$PressureUnit;
    .locals 1

    .line 49
    sget-object v0, Lcom/reglink/parcel/TireData$PressureUnit;->$VALUES:[Lcom/reglink/parcel/TireData$PressureUnit;

    invoke-virtual {v0}, [Lcom/reglink/parcel/TireData$PressureUnit;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/reglink/parcel/TireData$PressureUnit;

    return-object v0
.end method
