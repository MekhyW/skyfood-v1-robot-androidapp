.class public Lcom/reglink/parcel/GattPacket$Builder;
.super Ljava/lang/Object;
.source "GattPacket.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/reglink/parcel/GattPacket;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field final gattPacket:Lcom/reglink/parcel/GattPacket;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 147
    new-instance v0, Lcom/reglink/parcel/GattPacket;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/reglink/parcel/GattPacket;-><init>(Lcom/reglink/parcel/GattPacket$1;)V

    iput-object v0, p0, Lcom/reglink/parcel/GattPacket$Builder;->gattPacket:Lcom/reglink/parcel/GattPacket;

    return-void
.end method


# virtual methods
.method public addAdStruct(I[B)Lcom/reglink/parcel/GattPacket$Builder;
    .locals 3

    .line 157
    new-instance v0, Lcom/reglink/parcel/GattPacket$AdStruct;

    invoke-direct {v0}, Lcom/reglink/parcel/GattPacket$AdStruct;-><init>()V

    .line 158
    invoke-static {v0, p1}, Lcom/reglink/parcel/GattPacket$AdStruct;->access$002(Lcom/reglink/parcel/GattPacket$AdStruct;I)I

    .line 159
    array-length p1, p2

    new-array p1, p1, [B

    invoke-static {v0, p1}, Lcom/reglink/parcel/GattPacket$AdStruct;->access$102(Lcom/reglink/parcel/GattPacket$AdStruct;[B)[B

    .line 160
    invoke-static {v0}, Lcom/reglink/parcel/GattPacket$AdStruct;->access$100(Lcom/reglink/parcel/GattPacket$AdStruct;)[B

    move-result-object p1

    array-length v1, p2

    const/4 v2, 0x0

    invoke-static {p2, v2, p1, v2, v1}, Lcom/reglink/common/ByteArrayHelper;->bytesCopy([BI[BII)V

    .line 161
    iget-object p1, p0, Lcom/reglink/parcel/GattPacket$Builder;->gattPacket:Lcom/reglink/parcel/GattPacket;

    invoke-static {p1}, Lcom/reglink/parcel/GattPacket;->access$600(Lcom/reglink/parcel/GattPacket;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public build()Lcom/reglink/parcel/GattPacket;
    .locals 1

    .line 171
    iget-object v0, p0, Lcom/reglink/parcel/GattPacket$Builder;->gattPacket:Lcom/reglink/parcel/GattPacket;

    return-object v0
.end method

.method public setAddress([B)Lcom/reglink/parcel/GattPacket$Builder;
    .locals 3

    .line 149
    iget-object v0, p0, Lcom/reglink/parcel/GattPacket$Builder;->gattPacket:Lcom/reglink/parcel/GattPacket;

    invoke-static {v0}, Lcom/reglink/parcel/GattPacket;->access$400(Lcom/reglink/parcel/GattPacket;)[B

    move-result-object v0

    const/4 v1, 0x6

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v2, v1}, Lcom/reglink/common/ByteArrayHelper;->bytesCopy([BI[BII)V

    return-object p0
.end method

.method public setRawBytes([B)Lcom/reglink/parcel/GattPacket$Builder;
    .locals 1

    .line 166
    iget-object v0, p0, Lcom/reglink/parcel/GattPacket$Builder;->gattPacket:Lcom/reglink/parcel/GattPacket;

    invoke-static {v0, p1}, Lcom/reglink/parcel/GattPacket;->access$702(Lcom/reglink/parcel/GattPacket;[B)[B

    return-object p0
.end method

.method public setRssi(I)Lcom/reglink/parcel/GattPacket$Builder;
    .locals 1

    .line 153
    iget-object v0, p0, Lcom/reglink/parcel/GattPacket$Builder;->gattPacket:Lcom/reglink/parcel/GattPacket;

    invoke-static {v0, p1}, Lcom/reglink/parcel/GattPacket;->access$502(Lcom/reglink/parcel/GattPacket;I)I

    return-object p0
.end method
