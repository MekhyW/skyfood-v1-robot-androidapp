.class public Lcom/reglink/parcel/AudioSource;
.super Ljava/lang/Object;
.source "AudioSource.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/reglink/parcel/AudioSource$AudioSourceMutable;,
        Lcom/reglink/parcel/AudioSource$Builder;
    }
.end annotation


# static fields
.field public static final Action_Add:I = 0x2

.field public static final Action_Ignore:I = 0x9

.field public static final Action_Remove:I = 0x3

.field public static final Action_ReplaceMainSource:I = 0x7

.field public static final Action_ReplaceStackTop:I = 0x8

.field public static final Action_Restore:I = 0x6

.field public static final Action_Switch:I = 0x1

.field public static final Action_Switch_And_Save:I = 0x4

.field public static final Android:I = 0x1

.field public static final AudioSourcePriority:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final Aux:I = 0x10

.field public static final BT:I = 0x8

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/reglink/parcel/AudioSource;",
            ">;"
        }
    .end annotation
.end field

.field public static final DTV:I = 0x20

.field public static final DVD:I = 0x4

.field public static final Flag_ClearHistory:I = 0x20

.field public static final Flag_DontPushStack:I = 0x200

.field public static final Flag_Duck:I = 0x2

.field public static final Flag_Force:I = 0x4

.field public static final Flag_IgnoreEmptyStack:I = 0x100

.field public static final Flag_Mix:I = 0x1

.field public static final Flag_NoRequestAudioFocus:I = 0x80

.field public static final Flag_NoSmoothVolume:I = 0x40

.field public static final Flag_NotClearHistory:I = 0x10

.field public static final Flag_SwitchSourceNotMute:I = 0x8

.field public static final ModelSourceBase:I = 0x10

.field public static final MuteAction_ForceUnmute:I = 0x4

.field public static final MuteAction_Mute:I = 0x1

.field public static final MuteAction_RemoveForceUnmute:I = 0x8

.field public static final MuteAction_Unmute:I = 0x2

.field public static final MuteSource_ArmAudioStandby:I = 0x100

.field public static final MuteSource_BandSwitch:I = 0x2

.field public static final MuteSource_Force:I = 0x400

.field public static final MuteSource_MediaServer:I = 0x4

.field public static final MuteSource_Phone:I = 0x20

.field public static final MuteSource_RadioPower:I = 0x200

.field public static final MuteSource_Reverse:I = 0x10

.field public static final MuteSource_SetVolume:I = 0x1

.field public static final MuteSource_Shutdown:I = 0x80

.field public static final MuteSource_Standby:I = 0x8

.field public static final Navigator:I = 0x800

.field public static final Phone:I = 0x200

.field public static final Radio:I = 0x2

.field public static final Transient:I = 0x1000

.field public static final Warning:I = 0x400


# instance fields
.field protected action:I

.field protected flag:I

.field protected mixSource:I

.field protected modelSource:I

.field protected platformSource:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 15
    new-instance v0, Lcom/reglink/parcel/AudioSource$1;

    invoke-direct {v0}, Lcom/reglink/parcel/AudioSource$1;-><init>()V

    sput-object v0, Lcom/reglink/parcel/AudioSource;->AudioSourcePriority:Ljava/util/Map;

    .line 661
    new-instance v0, Lcom/reglink/parcel/AudioSource$2;

    invoke-direct {v0}, Lcom/reglink/parcel/AudioSource$2;-><init>()V

    sput-object v0, Lcom/reglink/parcel/AudioSource;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 557
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 78
    iput v0, p0, Lcom/reglink/parcel/AudioSource;->platformSource:I

    const/4 v1, 0x0

    .line 79
    iput v1, p0, Lcom/reglink/parcel/AudioSource;->mixSource:I

    .line 80
    iput v0, p0, Lcom/reglink/parcel/AudioSource;->modelSource:I

    .line 81
    iput v1, p0, Lcom/reglink/parcel/AudioSource;->flag:I

    .line 82
    iput v1, p0, Lcom/reglink/parcel/AudioSource;->action:I

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 560
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 78
    iput v0, p0, Lcom/reglink/parcel/AudioSource;->platformSource:I

    const/4 v1, 0x0

    .line 79
    iput v1, p0, Lcom/reglink/parcel/AudioSource;->mixSource:I

    .line 80
    iput v0, p0, Lcom/reglink/parcel/AudioSource;->modelSource:I

    .line 81
    iput v1, p0, Lcom/reglink/parcel/AudioSource;->flag:I

    .line 82
    iput v1, p0, Lcom/reglink/parcel/AudioSource;->action:I

    .line 561
    invoke-virtual {p0, p1}, Lcom/reglink/parcel/AudioSource;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Lcom/reglink/parcel/AudioSource;)V
    .locals 2

    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 78
    iput v0, p0, Lcom/reglink/parcel/AudioSource;->platformSource:I

    const/4 v1, 0x0

    .line 79
    iput v1, p0, Lcom/reglink/parcel/AudioSource;->mixSource:I

    .line 80
    iput v0, p0, Lcom/reglink/parcel/AudioSource;->modelSource:I

    .line 81
    iput v1, p0, Lcom/reglink/parcel/AudioSource;->flag:I

    .line 82
    iput v1, p0, Lcom/reglink/parcel/AudioSource;->action:I

    .line 150
    invoke-virtual {p0, p1}, Lcom/reglink/parcel/AudioSource;->copyFrom(Lcom/reglink/parcel/AudioSource;)V

    return-void
.end method

.method static synthetic access$000(Lcom/reglink/parcel/AudioSource;I)Lcom/reglink/parcel/AudioSource;
    .locals 0

    .line 13
    invoke-direct {p0, p1}, Lcom/reglink/parcel/AudioSource;->setPlatformSource(I)Lcom/reglink/parcel/AudioSource;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Lcom/reglink/parcel/AudioSource;I)Lcom/reglink/parcel/AudioSource;
    .locals 0

    .line 13
    invoke-direct {p0, p1}, Lcom/reglink/parcel/AudioSource;->setModelSource(I)Lcom/reglink/parcel/AudioSource;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1000(Lcom/reglink/parcel/AudioSource;I)Lcom/reglink/parcel/AudioSource;
    .locals 0

    .line 13
    invoke-direct {p0, p1}, Lcom/reglink/parcel/AudioSource;->addMixSource(I)Lcom/reglink/parcel/AudioSource;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1100(Lcom/reglink/parcel/AudioSource;I)Lcom/reglink/parcel/AudioSource;
    .locals 0

    .line 13
    invoke-direct {p0, p1}, Lcom/reglink/parcel/AudioSource;->removeMixSource(I)Lcom/reglink/parcel/AudioSource;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lcom/reglink/parcel/AudioSource;I)Lcom/reglink/parcel/AudioSource;
    .locals 0

    .line 13
    invoke-direct {p0, p1}, Lcom/reglink/parcel/AudioSource;->setAction(I)Lcom/reglink/parcel/AudioSource;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$300(Lcom/reglink/parcel/AudioSource;I)Lcom/reglink/parcel/AudioSource;
    .locals 0

    .line 13
    invoke-direct {p0, p1}, Lcom/reglink/parcel/AudioSource;->addFlag(I)Lcom/reglink/parcel/AudioSource;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$400(Lcom/reglink/parcel/AudioSource;I)Lcom/reglink/parcel/AudioSource;
    .locals 0

    .line 13
    invoke-direct {p0, p1}, Lcom/reglink/parcel/AudioSource;->clearFlag(I)Lcom/reglink/parcel/AudioSource;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$500(Lcom/reglink/parcel/AudioSource;I)Lcom/reglink/parcel/AudioSource;
    .locals 0

    .line 13
    invoke-direct {p0, p1}, Lcom/reglink/parcel/AudioSource;->setMixSource(I)Lcom/reglink/parcel/AudioSource;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$600(Lcom/reglink/parcel/AudioSource;)Lcom/reglink/parcel/AudioSource;
    .locals 0

    .line 13
    invoke-direct {p0}, Lcom/reglink/parcel/AudioSource;->clear()Lcom/reglink/parcel/AudioSource;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$700(Lcom/reglink/parcel/AudioSource;)Lcom/reglink/parcel/AudioSource;
    .locals 0

    .line 13
    invoke-direct {p0}, Lcom/reglink/parcel/AudioSource;->removeMixSource()Lcom/reglink/parcel/AudioSource;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$800(Lcom/reglink/parcel/AudioSource;)Lcom/reglink/parcel/AudioSource;
    .locals 0

    .line 13
    invoke-direct {p0}, Lcom/reglink/parcel/AudioSource;->clearFlag()Lcom/reglink/parcel/AudioSource;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$900(Lcom/reglink/parcel/AudioSource;)Lcom/reglink/parcel/AudioSource;
    .locals 0

    .line 13
    invoke-direct {p0}, Lcom/reglink/parcel/AudioSource;->clearAction()Lcom/reglink/parcel/AudioSource;

    move-result-object p0

    return-object p0
.end method

.method public static actionDesc(I)Ljava/lang/String;
    .locals 2

    .line 451
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    const-string v1, "[unknown:"

    .line 485
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 486
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "]"

    .line 487
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :pswitch_1
    const-string p0, "Ignore"

    .line 479
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :pswitch_2
    const-string p0, "ReplaceStackTop"

    .line 482
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :pswitch_3
    const-string p0, "ReplaceMainSource"

    .line 476
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :pswitch_4
    const-string p0, "Restore"

    .line 470
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :pswitch_5
    const-string p0, "SwitchAndSave"

    .line 473
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :pswitch_6
    const-string p0, "Remove"

    .line 464
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :pswitch_7
    const-string p0, "Add"

    .line 458
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :pswitch_8
    const-string p0, "Switch"

    .line 461
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :pswitch_9
    const-string p0, ""

    .line 455
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 490
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private addFlag(I)Lcom/reglink/parcel/AudioSource;
    .locals 1

    .line 180
    iget v0, p0, Lcom/reglink/parcel/AudioSource;->flag:I

    and-int/lit8 p1, p1, -0x1

    or-int/2addr p1, v0

    iput p1, p0, Lcom/reglink/parcel/AudioSource;->flag:I

    return-object p0
.end method

.method private addMixSource(I)Lcom/reglink/parcel/AudioSource;
    .locals 1

    .line 220
    iget v0, p0, Lcom/reglink/parcel/AudioSource;->mixSource:I

    and-int/lit8 p1, p1, -0x1

    or-int/2addr p1, v0

    iput p1, p0, Lcom/reglink/parcel/AudioSource;->mixSource:I

    return-object p0
.end method

.method private clear()Lcom/reglink/parcel/AudioSource;
    .locals 2

    const/4 v0, 0x1

    .line 238
    iput v0, p0, Lcom/reglink/parcel/AudioSource;->platformSource:I

    const/4 v1, 0x0

    .line 239
    iput v1, p0, Lcom/reglink/parcel/AudioSource;->mixSource:I

    .line 240
    iput v0, p0, Lcom/reglink/parcel/AudioSource;->modelSource:I

    .line 241
    iput v1, p0, Lcom/reglink/parcel/AudioSource;->flag:I

    .line 242
    iput v1, p0, Lcom/reglink/parcel/AudioSource;->action:I

    return-object p0
.end method

.method private clearAction()Lcom/reglink/parcel/AudioSource;
    .locals 1

    const/4 v0, 0x0

    .line 195
    iput v0, p0, Lcom/reglink/parcel/AudioSource;->action:I

    return-object p0
.end method

.method private clearFlag()Lcom/reglink/parcel/AudioSource;
    .locals 1

    const/4 v0, 0x0

    .line 190
    iput v0, p0, Lcom/reglink/parcel/AudioSource;->flag:I

    return-object p0
.end method

.method private clearFlag(I)Lcom/reglink/parcel/AudioSource;
    .locals 1

    .line 185
    iget v0, p0, Lcom/reglink/parcel/AudioSource;->flag:I

    and-int/lit8 p1, p1, -0x1

    not-int p1, p1

    and-int/2addr p1, v0

    iput p1, p0, Lcom/reglink/parcel/AudioSource;->flag:I

    return-object p0
.end method

.method public static flagDesc(I)Ljava/lang/String;
    .locals 9

    .line 494
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x7

    new-array v2, v1, [I

    .line 496
    fill-array-data v2, :array_0

    const/4 v3, 0x1

    const/4 v4, 0x0

    move v6, v3

    move v5, v4

    :goto_0
    if-ge v5, v1, :cond_b

    .line 497
    aget v7, v2, v5

    and-int v8, p0, v7

    if-eqz v8, :cond_a

    if-eqz v6, :cond_0

    move v6, v4

    goto :goto_1

    :cond_0
    const-string v8, "+"

    .line 500
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    if-eq v7, v3, :cond_9

    const/4 v8, 0x2

    if-eq v7, v8, :cond_8

    const/4 v8, 0x4

    if-eq v7, v8, :cond_7

    const/16 v8, 0x8

    if-eq v7, v8, :cond_6

    const/16 v8, 0x10

    if-eq v7, v8, :cond_5

    const/16 v8, 0x20

    if-eq v7, v8, :cond_4

    const/16 v8, 0x40

    if-eq v7, v8, :cond_3

    const/16 v8, 0x80

    if-eq v7, v8, :cond_2

    const/16 v8, 0x100

    if-eq v7, v8, :cond_1

    const-string v8, "[:"

    .line 530
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 531
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "]"

    .line 532
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_1
    const-string v7, "IgnoreEmptyStack"

    .line 527
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_2
    const-string v7, "NoRequestAudioFocus"

    .line 524
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_3
    const-string v7, "NoSmoothVolume"

    .line 521
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_4
    const-string v7, "ClearHistory"

    .line 518
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_5
    const-string v7, "NotClearHistory"

    .line 515
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_6
    const-string v7, "SwitchSourceNotMute"

    .line 512
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_7
    const-string v7, "Force"

    .line 509
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_8
    const-string v7, "Duck"

    .line 506
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_9
    const-string v7, "Mix"

    .line 503
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_a
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 537
    :cond_b
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    nop

    :array_0
    .array-data 4
        0x1
        0x2
        0x4
        0x8
        0x20
        0x10
        0x40
    .end array-data
.end method

.method public static getBuilder()Lcom/reglink/parcel/AudioSource$Builder;
    .locals 1

    .line 85
    new-instance v0, Lcom/reglink/parcel/AudioSource$Builder;

    invoke-direct {v0}, Lcom/reglink/parcel/AudioSource$Builder;-><init>()V

    return-object v0
.end method

.method public static getBuilder(Lcom/reglink/parcel/AudioSource;)Lcom/reglink/parcel/AudioSource$Builder;
    .locals 1

    .line 89
    new-instance v0, Lcom/reglink/parcel/AudioSource$Builder;

    invoke-direct {v0, p0}, Lcom/reglink/parcel/AudioSource$Builder;-><init>(Lcom/reglink/parcel/AudioSource;)V

    return-object v0
.end method

.method public static makeAndroidSource()Lcom/reglink/parcel/AudioSource;
    .locals 2

    .line 393
    new-instance v0, Lcom/reglink/parcel/AudioSource;

    invoke-direct {v0}, Lcom/reglink/parcel/AudioSource;-><init>()V

    const/4 v1, 0x1

    .line 394
    invoke-direct {v0, v1}, Lcom/reglink/parcel/AudioSource;->setAction(I)Lcom/reglink/parcel/AudioSource;

    .line 395
    invoke-direct {v0, v1}, Lcom/reglink/parcel/AudioSource;->setPlatformSource(I)Lcom/reglink/parcel/AudioSource;

    .line 396
    invoke-direct {v0, v1}, Lcom/reglink/parcel/AudioSource;->setModelSource(I)Lcom/reglink/parcel/AudioSource;

    return-object v0
.end method

.method public static makeAudioSource(II)Lcom/reglink/parcel/AudioSource;
    .locals 1

    .line 382
    new-instance v0, Lcom/reglink/parcel/AudioSource;

    invoke-direct {v0}, Lcom/reglink/parcel/AudioSource;-><init>()V

    .line 383
    invoke-direct {v0, p0}, Lcom/reglink/parcel/AudioSource;->setAction(I)Lcom/reglink/parcel/AudioSource;

    .line 384
    invoke-direct {v0, p1}, Lcom/reglink/parcel/AudioSource;->setPlatformSource(I)Lcom/reglink/parcel/AudioSource;

    const/4 p0, 0x1

    .line 385
    invoke-direct {v0, p0}, Lcom/reglink/parcel/AudioSource;->setModelSource(I)Lcom/reglink/parcel/AudioSource;

    const/4 p0, 0x0

    .line 386
    iput p0, v0, Lcom/reglink/parcel/AudioSource;->flag:I

    return-object v0
.end method

.method public static makeAudioSource(III)Lcom/reglink/parcel/AudioSource;
    .locals 1

    .line 373
    new-instance v0, Lcom/reglink/parcel/AudioSource;

    invoke-direct {v0}, Lcom/reglink/parcel/AudioSource;-><init>()V

    .line 374
    invoke-direct {v0, p0}, Lcom/reglink/parcel/AudioSource;->setAction(I)Lcom/reglink/parcel/AudioSource;

    .line 375
    invoke-direct {v0, p1}, Lcom/reglink/parcel/AudioSource;->setPlatformSource(I)Lcom/reglink/parcel/AudioSource;

    const/4 p0, 0x1

    .line 376
    invoke-direct {v0, p0}, Lcom/reglink/parcel/AudioSource;->setModelSource(I)Lcom/reglink/parcel/AudioSource;

    .line 377
    iput p2, v0, Lcom/reglink/parcel/AudioSource;->flag:I

    return-object v0
.end method

.method public static muteSourceName(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_9

    const/4 v0, 0x2

    if-eq p0, v0, :cond_8

    const/4 v0, 0x4

    if-eq p0, v0, :cond_7

    const/16 v0, 0x8

    if-eq p0, v0, :cond_6

    const/16 v0, 0x10

    if-eq p0, v0, :cond_5

    const/16 v0, 0x20

    if-eq p0, v0, :cond_4

    const/16 v0, 0x80

    if-eq p0, v0, :cond_3

    const/16 v0, 0x100

    if-eq p0, v0, :cond_2

    const/16 v0, 0x200

    if-eq p0, v0, :cond_1

    const/16 v0, 0x400

    if-eq p0, v0, :cond_0

    .line 595
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, "MuteSource_Force"

    return-object p0

    :cond_1
    const-string p0, "RadioPower"

    return-object p0

    :cond_2
    const-string p0, "ArmAudioStandby"

    return-object p0

    :cond_3
    const-string p0, "Shutdown"

    return-object p0

    :cond_4
    const-string p0, "Phone"

    return-object p0

    :cond_5
    const-string p0, "Reverse"

    return-object p0

    :cond_6
    const-string p0, "Standby"

    return-object p0

    :cond_7
    const-string p0, "MediaServer"

    return-object p0

    :cond_8
    const-string p0, "BandSwitch"

    return-object p0

    :cond_9
    const-string p0, "SetVolume"

    return-object p0
.end method

.method private removeMixSource()Lcom/reglink/parcel/AudioSource;
    .locals 1

    const/4 v0, 0x0

    .line 200
    iput v0, p0, Lcom/reglink/parcel/AudioSource;->mixSource:I

    return-object p0
.end method

.method private removeMixSource(I)Lcom/reglink/parcel/AudioSource;
    .locals 1

    .line 225
    iget v0, p0, Lcom/reglink/parcel/AudioSource;->mixSource:I

    and-int/lit8 p1, p1, -0x1

    not-int p1, p1

    and-int/2addr p1, v0

    iput p1, p0, Lcom/reglink/parcel/AudioSource;->mixSource:I

    return-object p0
.end method

.method private setAction(I)Lcom/reglink/parcel/AudioSource;
    .locals 0

    and-int/lit8 p1, p1, -0x1

    .line 175
    iput p1, p0, Lcom/reglink/parcel/AudioSource;->action:I

    return-object p0
.end method

.method private setMixSource(I)Lcom/reglink/parcel/AudioSource;
    .locals 0

    and-int/lit8 p1, p1, -0x1

    .line 215
    iput p1, p0, Lcom/reglink/parcel/AudioSource;->mixSource:I

    return-object p0
.end method

.method private setModelSource(I)Lcom/reglink/parcel/AudioSource;
    .locals 0

    and-int/lit8 p1, p1, -0x1

    .line 210
    iput p1, p0, Lcom/reglink/parcel/AudioSource;->modelSource:I

    return-object p0
.end method

.method private setPlatformSource(I)Lcom/reglink/parcel/AudioSource;
    .locals 0

    .line 205
    iput p1, p0, Lcom/reglink/parcel/AudioSource;->platformSource:I

    return-object p0
.end method

.method public static sourceDesc(I)Ljava/lang/String;
    .locals 9

    .line 402
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0xa

    new-array v2, v1, [I

    .line 404
    fill-array-data v2, :array_0

    const/4 v3, 0x1

    const/4 v4, 0x0

    move v6, v3

    move v5, v4

    :goto_0
    if-ge v5, v1, :cond_c

    .line 405
    aget v7, v2, v5

    and-int v8, p0, v7

    if-eqz v8, :cond_b

    if-eqz v6, :cond_0

    move v6, v4

    goto :goto_1

    :cond_0
    const-string v8, "+"

    .line 408
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    if-eq v7, v3, :cond_a

    const/4 v8, 0x2

    if-eq v7, v8, :cond_9

    const/4 v8, 0x4

    if-eq v7, v8, :cond_8

    const/16 v8, 0x8

    if-eq v7, v8, :cond_7

    const/16 v8, 0x10

    if-eq v7, v8, :cond_6

    const/16 v8, 0x20

    if-eq v7, v8, :cond_5

    const/16 v8, 0x200

    if-eq v7, v8, :cond_4

    const/16 v8, 0x400

    if-eq v7, v8, :cond_3

    const/16 v8, 0x800

    if-eq v7, v8, :cond_2

    const/16 v8, 0x1000

    if-eq v7, v8, :cond_1

    .line 441
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_1
    const-string v7, "Transient"

    .line 438
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_2
    const-string v7, "Navigator"

    .line 435
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_3
    const-string v7, "Warning"

    .line 429
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_4
    const-string v7, "Phone"

    .line 432
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_5
    const-string v7, "DTV"

    .line 426
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_6
    const-string v7, "Aux"

    .line 423
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_7
    const-string v7, "BT"

    .line 420
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_8
    const-string v7, "DVD"

    .line 417
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_9
    const-string v7, "Radio"

    .line 414
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_a
    const-string v7, "Android"

    .line 411
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_b
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 446
    :cond_c
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :array_0
    .array-data 4
        0x1
        0x2
        0x4
        0x8
        0x10
        0x20
        0x400
        0x200
        0x800
        0x1000
    .end array-data
.end method

.method public static sourceName(I)Ljava/lang/String;
    .locals 9

    .line 600
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0xa

    new-array v2, v1, [I

    .line 602
    fill-array-data v2, :array_0

    const/4 v3, 0x1

    const/4 v4, 0x0

    move v6, v3

    move v5, v4

    :goto_0
    if-ge v5, v1, :cond_c

    .line 603
    aget v7, v2, v5

    and-int v8, p0, v7

    if-eqz v8, :cond_b

    if-eqz v6, :cond_0

    move v6, v4

    goto :goto_1

    :cond_0
    const-string v8, "+"

    .line 606
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    if-eq v7, v3, :cond_a

    const/4 v8, 0x2

    if-eq v7, v8, :cond_9

    const/4 v8, 0x4

    if-eq v7, v8, :cond_8

    const/16 v8, 0x8

    if-eq v7, v8, :cond_7

    const/16 v8, 0x10

    if-eq v7, v8, :cond_6

    const/16 v8, 0x20

    if-eq v7, v8, :cond_5

    const/16 v8, 0x200

    if-eq v7, v8, :cond_4

    const/16 v8, 0x400

    if-eq v7, v8, :cond_3

    const/16 v8, 0x800

    if-eq v7, v8, :cond_2

    const/16 v8, 0x1000

    if-eq v7, v8, :cond_1

    .line 639
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_1
    const-string v7, "Transient"

    .line 636
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_2
    const-string v7, "Navigator"

    .line 633
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_3
    const-string v7, "Warning"

    .line 627
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_4
    const-string v7, "Phone"

    .line 630
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_5
    const-string v7, "DTV"

    .line 624
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_6
    const-string v7, "Aux"

    .line 621
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_7
    const-string v7, "BT"

    .line 618
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_8
    const-string v7, "DVD"

    .line 615
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_9
    const-string v7, "Radio"

    .line 612
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_a
    const-string v7, "Android"

    .line 609
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_b
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 644
    :cond_c
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :array_0
    .array-data 4
        0x1
        0x2
        0x4
        0x8
        0x10
        0x20
        0x400
        0x200
        0x800
        0x1000
    .end array-data
.end method


# virtual methods
.method public action()I
    .locals 1

    .line 154
    iget v0, p0, Lcom/reglink/parcel/AudioSource;->action:I

    return v0
.end method

.method public clone()Lcom/reglink/parcel/AudioSource;
    .locals 2

    .line 140
    new-instance v0, Lcom/reglink/parcel/AudioSource;

    invoke-direct {v0}, Lcom/reglink/parcel/AudioSource;-><init>()V

    .line 141
    iget v1, p0, Lcom/reglink/parcel/AudioSource;->platformSource:I

    iput v1, v0, Lcom/reglink/parcel/AudioSource;->platformSource:I

    .line 142
    iget v1, p0, Lcom/reglink/parcel/AudioSource;->mixSource:I

    iput v1, v0, Lcom/reglink/parcel/AudioSource;->mixSource:I

    .line 143
    iget v1, p0, Lcom/reglink/parcel/AudioSource;->modelSource:I

    iput v1, v0, Lcom/reglink/parcel/AudioSource;->modelSource:I

    .line 144
    iget v1, p0, Lcom/reglink/parcel/AudioSource;->flag:I

    iput v1, v0, Lcom/reglink/parcel/AudioSource;->flag:I

    .line 145
    iget v1, p0, Lcom/reglink/parcel/AudioSource;->action:I

    iput v1, v0, Lcom/reglink/parcel/AudioSource;->action:I

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 12
    invoke-virtual {p0}, Lcom/reglink/parcel/AudioSource;->clone()Lcom/reglink/parcel/AudioSource;

    move-result-object v0

    return-object v0
.end method

.method public copyFrom(Lcom/reglink/parcel/AudioSource;)V
    .locals 1

    .line 230
    iget v0, p1, Lcom/reglink/parcel/AudioSource;->platformSource:I

    iput v0, p0, Lcom/reglink/parcel/AudioSource;->platformSource:I

    .line 231
    iget v0, p1, Lcom/reglink/parcel/AudioSource;->mixSource:I

    iput v0, p0, Lcom/reglink/parcel/AudioSource;->mixSource:I

    .line 232
    iget v0, p1, Lcom/reglink/parcel/AudioSource;->modelSource:I

    iput v0, p0, Lcom/reglink/parcel/AudioSource;->modelSource:I

    .line 233
    iget v0, p1, Lcom/reglink/parcel/AudioSource;->flag:I

    iput v0, p0, Lcom/reglink/parcel/AudioSource;->flag:I

    .line 234
    iget p1, p1, Lcom/reglink/parcel/AudioSource;->action:I

    iput p1, p0, Lcom/reglink/parcel/AudioSource;->action:I

    return-void
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public flag()I
    .locals 1

    .line 157
    iget v0, p0, Lcom/reglink/parcel/AudioSource;->flag:I

    return v0
.end method

.method public hasFlag(I)Z
    .locals 1

    .line 160
    invoke-virtual {p0}, Lcom/reglink/parcel/AudioSource;->flag()I

    move-result v0

    and-int/2addr p1, v0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public hasMixSource(I)Z
    .locals 2

    .line 357
    iget v0, p0, Lcom/reglink/parcel/AudioSource;->mixSource:I

    and-int/lit8 v1, p1, -0x1

    and-int/2addr v0, v1

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isMixSourceEmpty()Z
    .locals 1

    .line 365
    iget v0, p0, Lcom/reglink/parcel/AudioSource;->mixSource:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public mixSource()I
    .locals 1

    .line 170
    iget v0, p0, Lcom/reglink/parcel/AudioSource;->mixSource:I

    return v0
.end method

.method public modelSource()I
    .locals 1

    .line 167
    iget v0, p0, Lcom/reglink/parcel/AudioSource;->modelSource:I

    return v0
.end method

.method public mutable()Lcom/reglink/parcel/AudioSource$AudioSourceMutable;
    .locals 1

    .line 247
    new-instance v0, Lcom/reglink/parcel/AudioSource$AudioSourceMutable;

    invoke-direct {v0, p0}, Lcom/reglink/parcel/AudioSource$AudioSourceMutable;-><init>(Lcom/reglink/parcel/AudioSource;)V

    return-object v0
.end method

.method public onNavigator()Z
    .locals 1

    const/16 v0, 0x800

    .line 361
    invoke-virtual {p0, v0}, Lcom/reglink/parcel/AudioSource;->hasMixSource(I)Z

    move-result v0

    return v0
.end method

.method public onPhone()Z
    .locals 2

    .line 369
    invoke-virtual {p0}, Lcom/reglink/parcel/AudioSource;->platformSource()I

    move-result v0

    const/16 v1, 0x200

    if-eq v0, v1, :cond_1

    invoke-virtual {p0, v1}, Lcom/reglink/parcel/AudioSource;->hasMixSource(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public platformSource()I
    .locals 1

    .line 164
    iget v0, p0, Lcom/reglink/parcel/AudioSource;->platformSource:I

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1

    .line 565
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/reglink/parcel/AudioSource;->platformSource:I

    .line 566
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/reglink/parcel/AudioSource;->modelSource:I

    .line 567
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/reglink/parcel/AudioSource;->mixSource:I

    .line 568
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/reglink/parcel/AudioSource;->flag:I

    .line 569
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/reglink/parcel/AudioSource;->action:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 541
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[Platform:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 543
    iget v1, p0, Lcom/reglink/parcel/AudioSource;->platformSource:I

    invoke-static {v1}, Lcom/reglink/parcel/AudioSource;->sourceDesc(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",MixSource:"

    .line 544
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 545
    iget v1, p0, Lcom/reglink/parcel/AudioSource;->mixSource:I

    invoke-static {v1}, Lcom/reglink/parcel/AudioSource;->sourceDesc(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",Model:"

    .line 546
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    .line 547
    iget v2, p0, Lcom/reglink/parcel/AudioSource;->modelSource:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "0x%X"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",Action:"

    .line 548
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 549
    invoke-virtual {p0}, Lcom/reglink/parcel/AudioSource;->action()I

    move-result v1

    invoke-static {v1}, Lcom/reglink/parcel/AudioSource;->actionDesc(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",Flag:"

    .line 550
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 551
    invoke-virtual {p0}, Lcom/reglink/parcel/AudioSource;->flag()I

    move-result v1

    invoke-static {v1}, Lcom/reglink/parcel/AudioSource;->flagDesc(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    .line 552
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 553
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 654
    iget p2, p0, Lcom/reglink/parcel/AudioSource;->platformSource:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 655
    iget p2, p0, Lcom/reglink/parcel/AudioSource;->modelSource:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 656
    iget p2, p0, Lcom/reglink/parcel/AudioSource;->mixSource:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 657
    iget p2, p0, Lcom/reglink/parcel/AudioSource;->flag:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 658
    iget p2, p0, Lcom/reglink/parcel/AudioSource;->action:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
