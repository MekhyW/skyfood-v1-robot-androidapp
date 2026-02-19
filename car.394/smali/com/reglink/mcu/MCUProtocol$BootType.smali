.class public final enum Lcom/reglink/mcu/MCUProtocol$BootType;
.super Ljava/lang/Enum;
.source "MCUProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/reglink/mcu/MCUProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "BootType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/reglink/mcu/MCUProtocol$BootType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/reglink/mcu/MCUProtocol$BootType;

.field public static final enum BOOT_BY_ACC:Lcom/reglink/mcu/MCUProtocol$BootType;

.field public static final enum BOOT_BY_CAN:Lcom/reglink/mcu/MCUProtocol$BootType;

.field public static final enum BOOT_BY_DOOR:Lcom/reglink/mcu/MCUProtocol$BootType;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 102
    new-instance v0, Lcom/reglink/mcu/MCUProtocol$BootType;

    const-string v1, "BOOT_BY_ACC"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/reglink/mcu/MCUProtocol$BootType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/reglink/mcu/MCUProtocol$BootType;->BOOT_BY_ACC:Lcom/reglink/mcu/MCUProtocol$BootType;

    .line 103
    new-instance v1, Lcom/reglink/mcu/MCUProtocol$BootType;

    const-string v3, "BOOT_BY_CAN"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/reglink/mcu/MCUProtocol$BootType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/reglink/mcu/MCUProtocol$BootType;->BOOT_BY_CAN:Lcom/reglink/mcu/MCUProtocol$BootType;

    .line 104
    new-instance v3, Lcom/reglink/mcu/MCUProtocol$BootType;

    const-string v5, "BOOT_BY_DOOR"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/reglink/mcu/MCUProtocol$BootType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/reglink/mcu/MCUProtocol$BootType;->BOOT_BY_DOOR:Lcom/reglink/mcu/MCUProtocol$BootType;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/reglink/mcu/MCUProtocol$BootType;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 101
    sput-object v5, Lcom/reglink/mcu/MCUProtocol$BootType;->$VALUES:[Lcom/reglink/mcu/MCUProtocol$BootType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 101
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/reglink/mcu/MCUProtocol$BootType;
    .locals 1

    .line 101
    const-class v0, Lcom/reglink/mcu/MCUProtocol$BootType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/reglink/mcu/MCUProtocol$BootType;

    return-object p0
.end method

.method public static values()[Lcom/reglink/mcu/MCUProtocol$BootType;
    .locals 1

    .line 101
    sget-object v0, Lcom/reglink/mcu/MCUProtocol$BootType;->$VALUES:[Lcom/reglink/mcu/MCUProtocol$BootType;

    invoke-virtual {v0}, [Lcom/reglink/mcu/MCUProtocol$BootType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/reglink/mcu/MCUProtocol$BootType;

    return-object v0
.end method
