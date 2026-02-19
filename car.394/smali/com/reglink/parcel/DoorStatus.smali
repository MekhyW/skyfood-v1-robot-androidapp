.class public Lcom/reglink/parcel/DoorStatus;
.super Ljava/lang/Object;
.source "DoorStatus.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/reglink/parcel/DoorStatus;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public hood:Z

.field public leftFront:Z

.field public leftRear:Z

.field public rightFront:Z

.field public rightRear:Z

.field public trunk:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 55
    new-instance v0, Lcom/reglink/parcel/DoorStatus$1;

    invoke-direct {v0}, Lcom/reglink/parcel/DoorStatus$1;-><init>()V

    sput-object v0, Lcom/reglink/parcel/DoorStatus;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    invoke-virtual {p0, p1}, Lcom/reglink/parcel/DoorStatus;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/reglink/parcel/DoorStatus$1;)V
    .locals 0

    .line 9
    invoke-direct {p0, p1}, Lcom/reglink/parcel/DoorStatus;-><init>(Landroid/os/Parcel;)V

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
.method public copy()Lcom/reglink/parcel/DoorStatus;
    .locals 2

    .line 83
    new-instance v0, Lcom/reglink/parcel/DoorStatus;

    invoke-direct {v0}, Lcom/reglink/parcel/DoorStatus;-><init>()V

    .line 84
    iget-boolean v1, p0, Lcom/reglink/parcel/DoorStatus;->leftFront:Z

    iput-boolean v1, v0, Lcom/reglink/parcel/DoorStatus;->leftFront:Z

    .line 85
    iget-boolean v1, p0, Lcom/reglink/parcel/DoorStatus;->rightFront:Z

    iput-boolean v1, v0, Lcom/reglink/parcel/DoorStatus;->rightFront:Z

    .line 86
    iget-boolean v1, p0, Lcom/reglink/parcel/DoorStatus;->leftRear:Z

    iput-boolean v1, v0, Lcom/reglink/parcel/DoorStatus;->leftRear:Z

    .line 87
    iget-boolean v1, p0, Lcom/reglink/parcel/DoorStatus;->rightRear:Z

    iput-boolean v1, v0, Lcom/reglink/parcel/DoorStatus;->rightRear:Z

    .line 88
    iget-boolean v1, p0, Lcom/reglink/parcel/DoorStatus;->hood:Z

    iput-boolean v1, v0, Lcom/reglink/parcel/DoorStatus;->hood:Z

    .line 89
    iget-boolean v1, p0, Lcom/reglink/parcel/DoorStatus;->trunk:Z

    iput-boolean v1, v0, Lcom/reglink/parcel/DoorStatus;->trunk:Z

    return-object v0
.end method

.method public copyFrom(Lcom/reglink/parcel/DoorStatus;)V
    .locals 1

    .line 93
    iget-boolean v0, p1, Lcom/reglink/parcel/DoorStatus;->leftFront:Z

    iput-boolean v0, p0, Lcom/reglink/parcel/DoorStatus;->leftFront:Z

    .line 94
    iget-boolean v0, p1, Lcom/reglink/parcel/DoorStatus;->rightFront:Z

    iput-boolean v0, p0, Lcom/reglink/parcel/DoorStatus;->rightFront:Z

    .line 95
    iget-boolean v0, p1, Lcom/reglink/parcel/DoorStatus;->leftRear:Z

    iput-boolean v0, p0, Lcom/reglink/parcel/DoorStatus;->leftRear:Z

    .line 96
    iget-boolean v0, p1, Lcom/reglink/parcel/DoorStatus;->rightRear:Z

    iput-boolean v0, p0, Lcom/reglink/parcel/DoorStatus;->rightRear:Z

    .line 97
    iget-boolean v0, p1, Lcom/reglink/parcel/DoorStatus;->hood:Z

    iput-boolean v0, p0, Lcom/reglink/parcel/DoorStatus;->hood:Z

    .line 98
    iget-boolean p1, p1, Lcom/reglink/parcel/DoorStatus;->trunk:Z

    iput-boolean p1, p0, Lcom/reglink/parcel/DoorStatus;->trunk:Z

    return-void
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 70
    :cond_0
    instance-of v1, p1, Lcom/reglink/parcel/DoorStatus;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 71
    check-cast p1, Lcom/reglink/parcel/DoorStatus;

    .line 72
    iget-boolean v1, p1, Lcom/reglink/parcel/DoorStatus;->hood:Z

    iget-boolean v3, p0, Lcom/reglink/parcel/DoorStatus;->hood:Z

    if-ne v1, v3, :cond_1

    iget-boolean v1, p1, Lcom/reglink/parcel/DoorStatus;->trunk:Z

    iget-boolean v3, p0, Lcom/reglink/parcel/DoorStatus;->trunk:Z

    if-ne v1, v3, :cond_1

    iget-boolean v1, p1, Lcom/reglink/parcel/DoorStatus;->leftFront:Z

    iget-boolean v3, p0, Lcom/reglink/parcel/DoorStatus;->leftFront:Z

    if-ne v1, v3, :cond_1

    iget-boolean v1, p1, Lcom/reglink/parcel/DoorStatus;->rightFront:Z

    iget-boolean v3, p0, Lcom/reglink/parcel/DoorStatus;->rightFront:Z

    if-ne v1, v3, :cond_1

    iget-boolean v1, p1, Lcom/reglink/parcel/DoorStatus;->leftRear:Z

    iget-boolean v3, p0, Lcom/reglink/parcel/DoorStatus;->leftRear:Z

    if-ne v1, v3, :cond_1

    iget-boolean p1, p1, Lcom/reglink/parcel/DoorStatus;->rightRear:Z

    iget-boolean v1, p0, Lcom/reglink/parcel/DoorStatus;->rightRear:Z

    if-ne p1, v1, :cond_1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    return v0

    :cond_2
    return v2
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1

    .line 41
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    invoke-static {v0}, Lcom/reglink/parcel/DoorStatus;->byte2boolean(B)Z

    move-result v0

    iput-boolean v0, p0, Lcom/reglink/parcel/DoorStatus;->hood:Z

    .line 42
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    invoke-static {v0}, Lcom/reglink/parcel/DoorStatus;->byte2boolean(B)Z

    move-result v0

    iput-boolean v0, p0, Lcom/reglink/parcel/DoorStatus;->trunk:Z

    .line 43
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    invoke-static {v0}, Lcom/reglink/parcel/DoorStatus;->byte2boolean(B)Z

    move-result v0

    iput-boolean v0, p0, Lcom/reglink/parcel/DoorStatus;->leftFront:Z

    .line 44
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    invoke-static {v0}, Lcom/reglink/parcel/DoorStatus;->byte2boolean(B)Z

    move-result v0

    iput-boolean v0, p0, Lcom/reglink/parcel/DoorStatus;->rightFront:Z

    .line 45
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    invoke-static {v0}, Lcom/reglink/parcel/DoorStatus;->byte2boolean(B)Z

    move-result v0

    iput-boolean v0, p0, Lcom/reglink/parcel/DoorStatus;->leftRear:Z

    .line 46
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result p1

    invoke-static {p1}, Lcom/reglink/parcel/DoorStatus;->byte2boolean(B)Z

    move-result p1

    iput-boolean p1, p0, Lcom/reglink/parcel/DoorStatus;->rightRear:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 104
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 105
    iget-boolean v1, p0, Lcom/reglink/parcel/DoorStatus;->leftFront:Z

    if-eqz v1, :cond_0

    const-string v1, "\u5de6\u524d\u95e8\u5f00"

    goto :goto_0

    :cond_0
    const-string v1, "\u5de6\u524d\u95e8\u5173"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    .line 106
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    iget-boolean v2, p0, Lcom/reglink/parcel/DoorStatus;->rightFront:Z

    if-eqz v2, :cond_1

    const-string v2, "\u53f3\u524d\u95e8\u5f00"

    goto :goto_1

    :cond_1
    const-string v2, "\u53f3\u524d\u95e8\u5173"

    :goto_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    iget-boolean v2, p0, Lcom/reglink/parcel/DoorStatus;->leftRear:Z

    if-eqz v2, :cond_2

    const-string v2, "\u5de6\u540e\u95e8\u5f00"

    goto :goto_2

    :cond_2
    const-string v2, "\u5de6\u540e\u95e8\u5173"

    :goto_2
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    iget-boolean v2, p0, Lcom/reglink/parcel/DoorStatus;->rightRear:Z

    if-eqz v2, :cond_3

    const-string v2, "\u53f3\u540e\u95e8\u5f00"

    goto :goto_3

    :cond_3
    const-string v2, "\u53f3\u540e\u95e8\u5173"

    :goto_3
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    iget-boolean v2, p0, Lcom/reglink/parcel/DoorStatus;->hood:Z

    if-eqz v2, :cond_4

    const-string v2, "\u5f15\u64ce\u76d6\u5f00"

    goto :goto_4

    :cond_4
    const-string v2, "\u5f15\u64ce\u76d6\u5173"

    :goto_4
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    iget-boolean v1, p0, Lcom/reglink/parcel/DoorStatus;->trunk:Z

    if-eqz v1, :cond_5

    const-string v1, "\u540e\u5907\u7bb1\u5f00"

    goto :goto_5

    :cond_5
    const-string v1, "\u540e\u5907\u7bb1\u5173"

    :goto_5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 33
    iget-boolean p2, p0, Lcom/reglink/parcel/DoorStatus;->hood:Z

    invoke-static {p2}, Lcom/reglink/parcel/DoorStatus;->boolean2byte(Z)B

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 34
    iget-boolean p2, p0, Lcom/reglink/parcel/DoorStatus;->trunk:Z

    invoke-static {p2}, Lcom/reglink/parcel/DoorStatus;->boolean2byte(Z)B

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 35
    iget-boolean p2, p0, Lcom/reglink/parcel/DoorStatus;->leftFront:Z

    invoke-static {p2}, Lcom/reglink/parcel/DoorStatus;->boolean2byte(Z)B

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 36
    iget-boolean p2, p0, Lcom/reglink/parcel/DoorStatus;->rightFront:Z

    invoke-static {p2}, Lcom/reglink/parcel/DoorStatus;->boolean2byte(Z)B

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 37
    iget-boolean p2, p0, Lcom/reglink/parcel/DoorStatus;->leftRear:Z

    invoke-static {p2}, Lcom/reglink/parcel/DoorStatus;->boolean2byte(Z)B

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 38
    iget-boolean p2, p0, Lcom/reglink/parcel/DoorStatus;->rightRear:Z

    invoke-static {p2}, Lcom/reglink/parcel/DoorStatus;->boolean2byte(Z)B

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    return-void
.end method
