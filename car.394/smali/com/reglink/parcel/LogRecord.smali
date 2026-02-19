.class public Lcom/reglink/parcel/LogRecord;
.super Ljava/lang/Object;
.source "LogRecord.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/reglink/parcel/LogRecord;",
            ">;"
        }
    .end annotation
.end field

.field public static final LEVEL_DEBUG:I = 0x2

.field public static final LEVEL_ERROR:I = 0x4

.field public static final LEVEL_INFO:I = 0x1

.field public static final LEVEL_PANIC:I = 0x5

.field public static final LEVEL_WARN:I = 0x3


# instance fields
.field private level:I

.field private message:Ljava/lang/String;

.field private tag:Ljava/lang/String;

.field private tagAndLevelString:Ljava/lang/String;

.field private time:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 69
    new-instance v0, Lcom/reglink/parcel/LogRecord$1;

    invoke-direct {v0}, Lcom/reglink/parcel/LogRecord$1;-><init>()V

    sput-object v0, Lcom/reglink/parcel/LogRecord;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput p1, p0, Lcom/reglink/parcel/LogRecord;->level:I

    .line 32
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/reglink/parcel/LogRecord;->time:J

    .line 33
    iput-object p2, p0, Lcom/reglink/parcel/LogRecord;->tag:Ljava/lang/String;

    .line 34
    iput-object p3, p0, Lcom/reglink/parcel/LogRecord;->message:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    invoke-direct {p0, p1}, Lcom/reglink/parcel/LogRecord;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/reglink/parcel/LogRecord$1;)V
    .locals 0

    .line 11
    invoke-direct {p0, p1}, Lcom/reglink/parcel/LogRecord;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static debug(Ljava/lang/String;Ljava/lang/String;)Lcom/reglink/parcel/LogRecord;
    .locals 2

    .line 40
    new-instance v0, Lcom/reglink/parcel/LogRecord;

    const/4 v1, 0x2

    invoke-direct {v0, v1, p0, p1}, Lcom/reglink/parcel/LogRecord;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static error(Ljava/lang/String;Ljava/lang/String;)Lcom/reglink/parcel/LogRecord;
    .locals 2

    .line 46
    new-instance v0, Lcom/reglink/parcel/LogRecord;

    const/4 v1, 0x4

    invoke-direct {v0, v1, p0, p1}, Lcom/reglink/parcel/LogRecord;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static info(Ljava/lang/String;Ljava/lang/String;)Lcom/reglink/parcel/LogRecord;
    .locals 2

    .line 37
    new-instance v0, Lcom/reglink/parcel/LogRecord;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0, p1}, Lcom/reglink/parcel/LogRecord;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .locals 2

    .line 63
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    iput v0, p0, Lcom/reglink/parcel/LogRecord;->level:I

    .line 64
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/reglink/parcel/LogRecord;->time:J

    .line 65
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/reglink/parcel/LogRecord;->tag:Ljava/lang/String;

    .line 66
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/reglink/parcel/LogRecord;->message:Ljava/lang/String;

    return-void
.end method

.method public static warn(Ljava/lang/String;Ljava/lang/String;)Lcom/reglink/parcel/LogRecord;
    .locals 2

    .line 43
    new-instance v0, Lcom/reglink/parcel/LogRecord;

    const/4 v1, 0x3

    invoke-direct {v0, v1, p0, p1}, Lcom/reglink/parcel/LogRecord;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public combineLevelAndTag()Ljava/lang/String;
    .locals 2

    .line 98
    iget-object v0, p0, Lcom/reglink/parcel/LogRecord;->tagAndLevelString:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, ""

    .line 99
    iput-object v0, p0, Lcom/reglink/parcel/LogRecord;->tagAndLevelString:Ljava/lang/String;

    .line 100
    iget v0, p0, Lcom/reglink/parcel/LogRecord;->level:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    goto :goto_0

    :cond_1
    const-string v0, "E/"

    .line 111
    iput-object v0, p0, Lcom/reglink/parcel/LogRecord;->tagAndLevelString:Ljava/lang/String;

    goto :goto_0

    :cond_2
    const-string v0, "W/"

    .line 108
    iput-object v0, p0, Lcom/reglink/parcel/LogRecord;->tagAndLevelString:Ljava/lang/String;

    goto :goto_0

    :cond_3
    const-string v0, "D/"

    .line 105
    iput-object v0, p0, Lcom/reglink/parcel/LogRecord;->tagAndLevelString:Ljava/lang/String;

    goto :goto_0

    :cond_4
    const-string v0, "I/"

    .line 102
    iput-object v0, p0, Lcom/reglink/parcel/LogRecord;->tagAndLevelString:Ljava/lang/String;

    .line 114
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/reglink/parcel/LogRecord;->tagAndLevelString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/reglink/parcel/LogRecord;->tag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/reglink/parcel/LogRecord;->tagAndLevelString:Ljava/lang/String;

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getLevel()I
    .locals 1

    .line 82
    iget v0, p0, Lcom/reglink/parcel/LogRecord;->level:I

    return v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/reglink/parcel/LogRecord;->message:Ljava/lang/String;

    return-object v0
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/reglink/parcel/LogRecord;->tag:Ljava/lang/String;

    return-object v0
.end method

.method public getTime()J
    .locals 2

    .line 90
    iget-wide v0, p0, Lcom/reglink/parcel/LogRecord;->time:J

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 120
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{level:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 122
    iget v1, p0, Lcom/reglink/parcel/LogRecord;->level:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",tag:"

    .line 123
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    iget-object v1, p0, Lcom/reglink/parcel/LogRecord;->tag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",message:"

    .line 125
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    iget-object v1, p0, Lcom/reglink/parcel/LogRecord;->message:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    .line 127
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 56
    iget p2, p0, Lcom/reglink/parcel/LogRecord;->level:I

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 57
    iget-wide v0, p0, Lcom/reglink/parcel/LogRecord;->time:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 58
    iget-object p2, p0, Lcom/reglink/parcel/LogRecord;->tag:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 59
    iget-object p2, p0, Lcom/reglink/parcel/LogRecord;->message:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
