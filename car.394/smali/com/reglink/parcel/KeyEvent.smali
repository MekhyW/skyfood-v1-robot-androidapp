.class public Lcom/reglink/parcel/KeyEvent;
.super Ljava/lang/Object;
.source "KeyEvent.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final ACTION_CANCEL:I = 0x4

.field public static final ACTION_DOWN:I = 0x1

.field public static final ACTION_HOLD:I = 0x5

.field public static final ACTION_MOVE:I = 0x2

.field public static final ACTION_UP:I = 0x3

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/reglink/parcel/KeyEvent;",
            ">;"
        }
    .end annotation
.end field

.field public static final FROM_PANEL:I = 0x3

.field public static final FROM_SW:I = 0x1

.field public static final FROM_TOUCH:I = 0x2

.field public static final LongPressInterval:I = 0x32

.field public static final LongPressThreshold:I = 0x190


# instance fields
.field private action:I

.field private code:I

.field private from:I

.field private handleCount:I

.field private holdTime:I

.field private modelKey:I

.field private stringKey:Ljava/lang/String;

.field private timestamp:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 69
    new-instance v0, Lcom/reglink/parcel/KeyEvent$1;

    invoke-direct {v0}, Lcom/reglink/parcel/KeyEvent$1;-><init>()V

    sput-object v0, Lcom/reglink/parcel/KeyEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    invoke-virtual {p0, p1}, Lcom/reglink/parcel/KeyEvent;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/reglink/parcel/KeyEvent$1;)V
    .locals 0

    .line 13
    invoke-direct {p0, p1}, Lcom/reglink/parcel/KeyEvent;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static makeEvent(II)Lcom/reglink/parcel/KeyEvent;
    .locals 1

    .line 137
    new-instance v0, Lcom/reglink/parcel/KeyEvent;

    invoke-direct {v0}, Lcom/reglink/parcel/KeyEvent;-><init>()V

    .line 138
    iput p0, v0, Lcom/reglink/parcel/KeyEvent;->code:I

    .line 139
    iput p1, v0, Lcom/reglink/parcel/KeyEvent;->action:I

    .line 140
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p0

    iput-wide p0, v0, Lcom/reglink/parcel/KeyEvent;->timestamp:J

    const/4 p0, 0x0

    .line 141
    iput p0, v0, Lcom/reglink/parcel/KeyEvent;->handleCount:I

    return-object v0
.end method


# virtual methods
.method public action()I
    .locals 1

    .line 98
    iget v0, p0, Lcom/reglink/parcel/KeyEvent;->action:I

    return v0
.end method

.method public actionMasked()I
    .locals 1

    .line 106
    iget v0, p0, Lcom/reglink/parcel/KeyEvent;->action:I

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public addHandleCount()V
    .locals 1

    .line 125
    iget v0, p0, Lcom/reglink/parcel/KeyEvent;->handleCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/reglink/parcel/KeyEvent;->handleCount:I

    return-void
.end method

.method public clone()Lcom/reglink/parcel/KeyEvent;
    .locals 3

    .line 146
    iget v0, p0, Lcom/reglink/parcel/KeyEvent;->code:I

    iget v1, p0, Lcom/reglink/parcel/KeyEvent;->action:I

    invoke-static {v0, v1}, Lcom/reglink/parcel/KeyEvent;->makeEvent(II)Lcom/reglink/parcel/KeyEvent;

    move-result-object v0

    .line 147
    iget-wide v1, p0, Lcom/reglink/parcel/KeyEvent;->timestamp:J

    invoke-virtual {v0, v1, v2}, Lcom/reglink/parcel/KeyEvent;->setTimestamp(J)V

    .line 148
    iget v1, p0, Lcom/reglink/parcel/KeyEvent;->from:I

    invoke-virtual {v0, v1}, Lcom/reglink/parcel/KeyEvent;->setFrom(I)V

    .line 149
    iget v1, p0, Lcom/reglink/parcel/KeyEvent;->holdTime:I

    invoke-virtual {v0, v1}, Lcom/reglink/parcel/KeyEvent;->setHoldTime(I)V

    .line 150
    iget v1, p0, Lcom/reglink/parcel/KeyEvent;->handleCount:I

    iput v1, v0, Lcom/reglink/parcel/KeyEvent;->handleCount:I

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
    invoke-virtual {p0}, Lcom/reglink/parcel/KeyEvent;->clone()Lcom/reglink/parcel/KeyEvent;

    move-result-object v0

    return-object v0
.end method

.method public code()I
    .locals 1

    .line 82
    iget v0, p0, Lcom/reglink/parcel/KeyEvent;->code:I

    return v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public from()I
    .locals 1

    .line 114
    iget v0, p0, Lcom/reglink/parcel/KeyEvent;->from:I

    return v0
.end method

.method public getHandleCount()I
    .locals 1

    .line 110
    iget v0, p0, Lcom/reglink/parcel/KeyEvent;->handleCount:I

    return v0
.end method

.method public getModelKey()I
    .locals 1

    .line 192
    iget v0, p0, Lcom/reglink/parcel/KeyEvent;->modelKey:I

    return v0
.end method

.method public getStringKey()Ljava/lang/String;
    .locals 1

    .line 200
    iget-object v0, p0, Lcom/reglink/parcel/KeyEvent;->stringKey:Ljava/lang/String;

    return-object v0
.end method

.method public getTimestamp()J
    .locals 2

    .line 90
    iget-wide v0, p0, Lcom/reglink/parcel/KeyEvent;->timestamp:J

    return-wide v0
.end method

.method public holdTime()I
    .locals 1

    .line 129
    iget v0, p0, Lcom/reglink/parcel/KeyEvent;->holdTime:I

    return v0
.end method

.method protected readFromParcel(Landroid/os/Parcel;)V
    .locals 2

    .line 41
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/reglink/parcel/KeyEvent;->code:I

    .line 42
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    iput v0, p0, Lcom/reglink/parcel/KeyEvent;->action:I

    .line 43
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/reglink/parcel/KeyEvent;->timestamp:J

    .line 44
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/reglink/parcel/KeyEvent;->handleCount:I

    .line 45
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    iput v0, p0, Lcom/reglink/parcel/KeyEvent;->from:I

    .line 46
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/reglink/parcel/KeyEvent;->holdTime:I

    .line 47
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/reglink/parcel/KeyEvent;->modelKey:I

    .line 48
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/reglink/parcel/KeyEvent;->stringKey:Ljava/lang/String;

    return-void
.end method

.method public resetHandleCount()V
    .locals 1

    const/4 v0, 0x0

    .line 122
    iput v0, p0, Lcom/reglink/parcel/KeyEvent;->handleCount:I

    return-void
.end method

.method public setAction(I)V
    .locals 0

    .line 102
    iput p1, p0, Lcom/reglink/parcel/KeyEvent;->action:I

    return-void
.end method

.method public setCode(I)V
    .locals 0

    .line 86
    iput p1, p0, Lcom/reglink/parcel/KeyEvent;->code:I

    return-void
.end method

.method public setFrom(I)V
    .locals 0

    .line 118
    iput p1, p0, Lcom/reglink/parcel/KeyEvent;->from:I

    return-void
.end method

.method public setHoldTime(I)V
    .locals 0

    .line 133
    iput p1, p0, Lcom/reglink/parcel/KeyEvent;->holdTime:I

    return-void
.end method

.method public setModelKey(I)V
    .locals 0

    .line 196
    iput p1, p0, Lcom/reglink/parcel/KeyEvent;->modelKey:I

    return-void
.end method

.method public setStringKey(Ljava/lang/String;)V
    .locals 0

    .line 204
    iput-object p1, p0, Lcom/reglink/parcel/KeyEvent;->stringKey:Ljava/lang/String;

    return-void
.end method

.method public setTimestamp(J)V
    .locals 0

    .line 94
    iput-wide p1, p0, Lcom/reglink/parcel/KeyEvent;->timestamp:J

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 156
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "{code:"

    .line 157
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    iget v1, p0, Lcom/reglink/parcel/KeyEvent;->code:I

    invoke-static {v1}, Lcom/reglink/common/Common$KeyCodes;->getName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",action:"

    .line 159
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    iget v1, p0, Lcom/reglink/parcel/KeyEvent;->action:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_4

    const/4 v2, 0x2

    if-eq v1, v2, :cond_3

    const/4 v2, 0x3

    if-eq v1, v2, :cond_2

    const/4 v2, 0x4

    if-eq v1, v2, :cond_1

    const/4 v2, 0x5

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "hold"

    .line 174
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    const-string v1, "cancel"

    .line 171
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_2
    const-string v1, "up"

    .line 168
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_3
    const-string v1, "move"

    .line 165
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_4
    const-string v1, "down"

    .line 162
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    const-string v1, ",timestamp:"

    .line 177
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    iget-wide v1, p0, Lcom/reglink/parcel/KeyEvent;->timestamp:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ",handle_count:"

    .line 179
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    iget v1, p0, Lcom/reglink/parcel/KeyEvent;->handleCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",hold_time:"

    .line 181
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    iget v1, p0, Lcom/reglink/parcel/KeyEvent;->holdTime:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",modelKey:"

    .line 183
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    iget v1, p0, Lcom/reglink/parcel/KeyEvent;->modelKey:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",strKey:"

    .line 185
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    invoke-virtual {p0}, Lcom/reglink/parcel/KeyEvent;->getStringKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    .line 187
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 59
    iget p2, p0, Lcom/reglink/parcel/KeyEvent;->code:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 60
    iget p2, p0, Lcom/reglink/parcel/KeyEvent;->action:I

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 61
    iget-wide v0, p0, Lcom/reglink/parcel/KeyEvent;->timestamp:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 62
    iget p2, p0, Lcom/reglink/parcel/KeyEvent;->handleCount:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 63
    iget p2, p0, Lcom/reglink/parcel/KeyEvent;->from:I

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 64
    iget p2, p0, Lcom/reglink/parcel/KeyEvent;->holdTime:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 65
    iget p2, p0, Lcom/reglink/parcel/KeyEvent;->modelKey:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 66
    iget-object p2, p0, Lcom/reglink/parcel/KeyEvent;->stringKey:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
