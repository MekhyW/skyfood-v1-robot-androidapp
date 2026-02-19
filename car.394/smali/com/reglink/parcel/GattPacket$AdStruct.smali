.class public final Lcom/reglink/parcel/GattPacket$AdStruct;
.super Ljava/lang/Object;
.source "GattPacket.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/reglink/parcel/GattPacket;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AdStruct"
.end annotation


# instance fields
.field private adType:I

.field private data:[B


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/reglink/parcel/GattPacket$AdStruct;)I
    .locals 0

    .line 21
    iget p0, p0, Lcom/reglink/parcel/GattPacket$AdStruct;->adType:I

    return p0
.end method

.method static synthetic access$002(Lcom/reglink/parcel/GattPacket$AdStruct;I)I
    .locals 0

    .line 21
    iput p1, p0, Lcom/reglink/parcel/GattPacket$AdStruct;->adType:I

    return p1
.end method

.method static synthetic access$100(Lcom/reglink/parcel/GattPacket$AdStruct;)[B
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/reglink/parcel/GattPacket$AdStruct;->data:[B

    return-object p0
.end method

.method static synthetic access$102(Lcom/reglink/parcel/GattPacket$AdStruct;[B)[B
    .locals 0

    .line 21
    iput-object p1, p0, Lcom/reglink/parcel/GattPacket$AdStruct;->data:[B

    return-object p1
.end method


# virtual methods
.method public adType()I
    .locals 1

    .line 26
    iget v0, p0, Lcom/reglink/parcel/GattPacket$AdStruct;->adType:I

    return v0
.end method

.method public data()[B
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/reglink/parcel/GattPacket$AdStruct;->data:[B

    return-object v0
.end method

.method public length()I
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/reglink/parcel/GattPacket$AdStruct;->data:[B

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    array-length v0, v0

    :goto_0
    return v0
.end method
