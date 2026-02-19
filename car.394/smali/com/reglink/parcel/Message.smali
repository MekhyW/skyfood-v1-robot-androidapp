.class public Lcom/reglink/parcel/Message;
.super Ljava/lang/Object;
.source "Message.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/reglink/parcel/Message$Mutable;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/reglink/parcel/Message;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private bundle:Landroid/os/Bundle;

.field private paramInt:I

.field private paramString:Ljava/lang/String;

.field private sender:I

.field private what:I

.field private when:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 154
    new-instance v0, Lcom/reglink/parcel/Message$1;

    invoke-direct {v0}, Lcom/reglink/parcel/Message$1;-><init>()V

    sput-object v0, Lcom/reglink/parcel/Message;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    invoke-virtual {p0, p1}, Lcom/reglink/parcel/Message;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/reglink/parcel/Message$1;)V
    .locals 0

    .line 17
    invoke-direct {p0, p1}, Lcom/reglink/parcel/Message;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method static synthetic access$102(Lcom/reglink/parcel/Message;J)J
    .locals 0

    .line 17
    iput-wide p1, p0, Lcom/reglink/parcel/Message;->when:J

    return-wide p1
.end method

.method static synthetic access$202(Lcom/reglink/parcel/Message;I)I
    .locals 0

    .line 17
    iput p1, p0, Lcom/reglink/parcel/Message;->sender:I

    return p1
.end method

.method public static obtain(I)Lcom/reglink/parcel/Message;
    .locals 1

    const/4 v0, -0x1

    .line 70
    invoke-static {p0, v0}, Lcom/reglink/parcel/Message;->obtain(II)Lcom/reglink/parcel/Message;

    move-result-object p0

    return-object p0
.end method

.method public static obtain(II)Lcom/reglink/parcel/Message;
    .locals 1

    .line 53
    new-instance v0, Lcom/reglink/parcel/Message;

    invoke-direct {v0}, Lcom/reglink/parcel/Message;-><init>()V

    .line 54
    iput p0, v0, Lcom/reglink/parcel/Message;->what:I

    .line 55
    iput p1, v0, Lcom/reglink/parcel/Message;->paramInt:I

    const/4 p0, 0x0

    .line 56
    iput-object p0, v0, Lcom/reglink/parcel/Message;->bundle:Landroid/os/Bundle;

    return-object v0
.end method

.method public static obtain(ILandroid/os/Bundle;)Lcom/reglink/parcel/Message;
    .locals 1

    .line 75
    new-instance v0, Lcom/reglink/parcel/Message;

    invoke-direct {v0}, Lcom/reglink/parcel/Message;-><init>()V

    .line 76
    iput p0, v0, Lcom/reglink/parcel/Message;->what:I

    const/4 p0, -0x1

    .line 77
    iput p0, v0, Lcom/reglink/parcel/Message;->paramInt:I

    const/4 p0, 0x0

    .line 78
    iput-object p0, v0, Lcom/reglink/parcel/Message;->paramString:Ljava/lang/String;

    .line 79
    iput-object p1, v0, Lcom/reglink/parcel/Message;->bundle:Landroid/os/Bundle;

    return-object v0
.end method

.method public static obtain(ILjava/lang/String;)Lcom/reglink/parcel/Message;
    .locals 1

    .line 60
    new-instance v0, Lcom/reglink/parcel/Message;

    invoke-direct {v0}, Lcom/reglink/parcel/Message;-><init>()V

    .line 61
    iput p0, v0, Lcom/reglink/parcel/Message;->what:I

    const/4 p0, -0x1

    .line 62
    iput p0, v0, Lcom/reglink/parcel/Message;->paramInt:I

    .line 63
    iput-object p1, v0, Lcom/reglink/parcel/Message;->paramString:Ljava/lang/String;

    const/4 p0, 0x0

    .line 64
    iput-object p0, v0, Lcom/reglink/parcel/Message;->bundle:Landroid/os/Bundle;

    return-object v0
.end method


# virtual methods
.method public bundle()Landroid/os/Bundle;
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/reglink/parcel/Message;->bundle:Landroid/os/Bundle;

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public mutable()Lcom/reglink/parcel/Message$Mutable;
    .locals 1

    .line 186
    new-instance v0, Lcom/reglink/parcel/Message$Mutable;

    invoke-direct {v0, p0}, Lcom/reglink/parcel/Message$Mutable;-><init>(Lcom/reglink/parcel/Message;)V

    return-object v0
.end method

.method public paramInt()I
    .locals 1

    .line 87
    iget v0, p0, Lcom/reglink/parcel/Message;->paramInt:I

    return v0
.end method

.method public paramString()Ljava/lang/String;
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/reglink/parcel/Message;->paramString:Ljava/lang/String;

    return-object v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 2

    .line 39
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/reglink/parcel/Message;->what:I

    .line 40
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/reglink/parcel/Message;->paramInt:I

    .line 41
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/reglink/parcel/Message;->paramString:Ljava/lang/String;

    .line 42
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/reglink/parcel/Message;->bundle:Landroid/os/Bundle;

    .line 43
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/reglink/parcel/Message;->sender:I

    .line 44
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/reglink/parcel/Message;->when:J

    return-void
.end method

.method public respond(Landroid/os/Message;)Z
    .locals 3

    .line 111
    iget-object v0, p0, Lcom/reglink/parcel/Message;->bundle:Landroid/os/Bundle;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const-string v2, "callback"

    .line 112
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/os/Messenger;

    if-nez v0, :cond_1

    return v1

    .line 115
    :cond_1
    :try_start_0
    invoke-virtual {v0, p1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p1

    .line 118
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    return v1
.end method

.method public senderPid()I
    .locals 1

    .line 124
    iget v0, p0, Lcom/reglink/parcel/Message;->sender:I

    return v0
.end method

.method public setBundle(Landroid/os/Bundle;)Lcom/reglink/parcel/Message;
    .locals 0

    .line 106
    iput-object p1, p0, Lcom/reglink/parcel/Message;->bundle:Landroid/os/Bundle;

    return-object p0
.end method

.method public setCallback(Landroid/os/Handler$Callback;)V
    .locals 2

    .line 132
    iget-object v0, p0, Lcom/reglink/parcel/Message;->bundle:Landroid/os/Bundle;

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/reglink/parcel/Message;->bundle:Landroid/os/Bundle;

    .line 133
    :cond_0
    new-instance v0, Landroid/os/Messenger;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1, p1}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    .line 134
    iget-object p1, p0, Lcom/reglink/parcel/Message;->bundle:Landroid/os/Bundle;

    const-string v1, "callback"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    return-void
.end method

.method public setParamInt(I)Lcom/reglink/parcel/Message;
    .locals 0

    .line 98
    iput p1, p0, Lcom/reglink/parcel/Message;->paramInt:I

    return-object p0
.end method

.method public setParamString(Ljava/lang/String;)Lcom/reglink/parcel/Message;
    .locals 0

    .line 102
    iput-object p1, p0, Lcom/reglink/parcel/Message;->paramString:Ljava/lang/String;

    return-object p0
.end method

.method public setWhat(I)Lcom/reglink/parcel/Message;
    .locals 0

    .line 94
    iput p1, p0, Lcom/reglink/parcel/Message;->what:I

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 140
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[what:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 142
    invoke-virtual {p0}, Lcom/reglink/parcel/Message;->what()I

    move-result v1

    invoke-static {v1}, Lcom/reglink/common/Common$Broadcast;->getName(I)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    .line 143
    iget v1, p0, Lcom/reglink/parcel/Message;->what:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :cond_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ",int:"

    .line 144
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    invoke-virtual {p0}, Lcom/reglink/parcel/Message;->paramInt()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",string:"

    .line 146
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    invoke-virtual {p0}, Lcom/reglink/parcel/Message;->paramString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",bundle:"

    .line 148
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    invoke-virtual {p0}, Lcom/reglink/parcel/Message;->bundle()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    .line 150
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public what()I
    .locals 1

    .line 84
    iget v0, p0, Lcom/reglink/parcel/Message;->what:I

    return v0
.end method

.method public when()J
    .locals 2

    .line 128
    iget-wide v0, p0, Lcom/reglink/parcel/Message;->when:J

    return-wide v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 31
    iget p2, p0, Lcom/reglink/parcel/Message;->what:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 32
    iget p2, p0, Lcom/reglink/parcel/Message;->paramInt:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 33
    iget-object p2, p0, Lcom/reglink/parcel/Message;->paramString:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 34
    iget-object p2, p0, Lcom/reglink/parcel/Message;->bundle:Landroid/os/Bundle;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 35
    iget p2, p0, Lcom/reglink/parcel/Message;->sender:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 36
    iget-wide v0, p0, Lcom/reglink/parcel/Message;->when:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method
