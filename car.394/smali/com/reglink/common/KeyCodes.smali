.class public Lcom/reglink/common/KeyCodes;
.super Ljava/lang/Object;
.source "KeyCodes.java"


# static fields
.field public static final Key_0:I = 0x59

.field public static final Key_1:I = 0x50

.field public static final Key_2:I = 0x51

.field public static final Key_3:I = 0x52

.field public static final Key_4:I = 0x53

.field public static final Key_5:I = 0x54

.field public static final Key_6:I = 0x55

.field public static final Key_7:I = 0x56

.field public static final Key_8:I = 0x57

.field public static final Key_9:I = 0x58

.field public static final Key_AC:I = 0x2a

.field public static final Key_AM:I = 0x23

.field public static final Key_AMS:I = 0x22

.field public static final Key_APP_Switch:I = 0x20

.field public static final Key_Apps:I = 0x29

.field public static final Key_Asterisk:I = 0x5c

.field public static final Key_Aux:I = 0x1d

.field public static final Key_BTMusic:I = 0x25

.field public static final Key_Back:I = 0xd

.field public static final Key_Base:I = 0xa

.field public static final Key_Browser:I = 0x26

.field public static final Key_CD:I = 0x1b

.field public static final Key_Car:I = 0x28

.field public static final Key_CarInfo:I = 0x2d

.field public static final Key_Display:I = 0x27

.field public static final Key_Down:I = 0x3f

.field public static final Key_EQ:I = 0x1f

.field public static final Key_Eject:I = 0x1e

.field public static final Key_FM:I = 0x24

.field public static final Key_Ford_Clock:I = 0x7e

.field public static final Key_Ford_Menu1:I = 0x7a

.field public static final Key_Ford_Menu2:I = 0x7b

.field public static final Key_Ford_Menu3:I = 0x7c

.field public static final Key_Ford_Menu4:I = 0x7d

.field public static final Key_Ford_PlayPause:I = 0x7f

.field public static final Key_Ford_Sound:I = 0x79

.field public static final Key_Ford_TA:I = 0x78

.field public static final Key_Home:I = 0xc

.field public static final Key_Left:I = 0x3c

.field public static final Key_Menu:I = 0xe

.field public static final Key_Mode:I = 0x12

.field public static final Key_ModelKey:I = 0x1

.field public static final Key_Music:I = 0x19

.field public static final Key_Mute:I = 0x14

.field public static final Key_Navi:I = 0x18

.field public static final Key_Next:I = 0x42

.field public static final Key_None:I = 0x0

.field public static final Key_Ok:I = 0x40

.field public static final Key_PageDown:I = 0x49

.field public static final Key_PageSwitch:I = 0x2e

.field public static final Key_PageUp:I = 0x4a

.field public static final Key_Panoramic:I = 0x2c

.field public static final Key_Pause:I = 0x46

.field public static final Key_Phone:I = 0x16

.field public static final Key_Phone_Hangup:I = 0x17

.field public static final Key_Play:I = 0x45

.field public static final Key_PlayPause:I = 0x48

.field public static final Key_Plus:I = 0x5b

.field public static final Key_Pound:I = 0x5a

.field public static final Key_Power:I = 0xf

.field public static final Key_Prev:I = 0x41

.field public static final Key_Radio:I = 0x1c

.field public static final Key_Right:I = 0x3d

.field public static final Key_RightCamera:I = 0x2b

.field public static final Key_Script_Base:I = 0xd2

.field public static final Key_Script_Fn:I = 0xd3

.field public static final Key_Script_Max:I = 0x104

.field public static final Key_Settings:I = 0x21

.field public static final Key_Siri:I = 0x15

.field public static final Key_Source:I = 0x13

.field public static final Key_Stop:I = 0x47

.field public static final Key_StringKey:I = 0x2

.field public static final Key_Sys_Base:I = 0x3e8

.field public static final Key_Sys_DisableOps:I = 0x3e9

.field public static final Key_TuneLeft:I = 0x43

.field public static final Key_TuneRight:I = 0x44

.field public static final Key_Up:I = 0x3e

.field public static final Key_Video:I = 0x1a

.field public static final Key_Vol_Down:I = 0x11

.field public static final Key_Vol_Up:I = 0x10

.field public static final codeToTitle:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final titleToCode:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 96
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Lcom/reglink/common/KeyCodes;->codeToTitle:Landroid/util/ArrayMap;

    .line 97
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Lcom/reglink/common/KeyCodes;->titleToCode:Landroid/util/ArrayMap;

    .line 101
    const-class v0, Lcom/reglink/common/KeyCodes;

    .line 102
    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 103
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v4

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v4, v5, :cond_0

    .line 105
    :try_start_0
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v4

    .line 106
    invoke-virtual {v3, v4}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v3

    .line 107
    sget-object v5, Lcom/reglink/common/KeyCodes;->codeToTitle:Landroid/util/ArrayMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    sget-object v5, Lcom/reglink/common/KeyCodes;->titleToCode:Landroid/util/ArrayMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v5, v4, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v3

    .line 110
    invoke-virtual {v3}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromString(Ljava/lang/String;)I
    .locals 1

    .line 125
    sget-object v0, Lcom/reglink/common/KeyCodes;->titleToCode:Landroid/util/ArrayMap;

    invoke-virtual {v0, p0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-eqz p0, :cond_0

    .line 126
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static getName(I)Ljava/lang/String;
    .locals 1

    .line 119
    sget-object v0, Lcom/reglink/common/KeyCodes;->codeToTitle:Landroid/util/ArrayMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-nez p0, :cond_0

    const-string p0, "null"

    :cond_0
    return-object p0
.end method
