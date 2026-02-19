.class public Lcom/reglink/parcel/CANPacket$Builder;
.super Ljava/lang/Object;
.source "CANPacket.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/reglink/parcel/CANPacket;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field packet:Lcom/reglink/parcel/CANPacket;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 81
    new-instance v0, Lcom/reglink/parcel/CANPacket;

    invoke-direct {v0}, Lcom/reglink/parcel/CANPacket;-><init>()V

    invoke-direct {p0, v0}, Lcom/reglink/parcel/CANPacket$Builder;-><init>(Lcom/reglink/parcel/CANPacket;)V

    return-void
.end method

.method public constructor <init>(Lcom/reglink/parcel/CANPacket;)V
    .locals 0

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    iput-object p1, p0, Lcom/reglink/parcel/CANPacket$Builder;->packet:Lcom/reglink/parcel/CANPacket;

    return-void
.end method

.method public static build(IJI[B)Lcom/reglink/parcel/CANPacket;
    .locals 1

    .line 114
    new-instance v0, Lcom/reglink/parcel/CANPacket$Builder;

    invoke-direct {v0}, Lcom/reglink/parcel/CANPacket$Builder;-><init>()V

    .line 115
    invoke-virtual {v0, p0}, Lcom/reglink/parcel/CANPacket$Builder;->setBus(I)Lcom/reglink/parcel/CANPacket$Builder;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/reglink/parcel/CANPacket$Builder;->setId(J)Lcom/reglink/parcel/CANPacket$Builder;

    move-result-object p0

    invoke-virtual {p0, p3}, Lcom/reglink/parcel/CANPacket$Builder;->setDlc(I)Lcom/reglink/parcel/CANPacket$Builder;

    move-result-object p0

    invoke-virtual {p0, p4}, Lcom/reglink/parcel/CANPacket$Builder;->setData([B)Lcom/reglink/parcel/CANPacket$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/reglink/parcel/CANPacket$Builder;->build()Lcom/reglink/parcel/CANPacket;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public allocate()Lcom/reglink/parcel/CANPacket$Builder;
    .locals 2

    .line 84
    iget-object v0, p0, Lcom/reglink/parcel/CANPacket$Builder;->packet:Lcom/reglink/parcel/CANPacket;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/reglink/parcel/CANPacket;->allocate(I)V

    return-object p0
.end method

.method public build()Lcom/reglink/parcel/CANPacket;
    .locals 2

    .line 107
    iget-object v0, p0, Lcom/reglink/parcel/CANPacket$Builder;->packet:Lcom/reglink/parcel/CANPacket;

    iget-object v0, v0, Lcom/reglink/parcel/CANPacket;->bytes:[B

    array-length v0, v0

    iget-object v1, p0, Lcom/reglink/parcel/CANPacket$Builder;->packet:Lcom/reglink/parcel/CANPacket;

    invoke-static {v1}, Lcom/reglink/parcel/CANPacket;->access$300(Lcom/reglink/parcel/CANPacket;)B

    move-result v1

    if-lt v0, v1, :cond_0

    .line 110
    iget-object v0, p0, Lcom/reglink/parcel/CANPacket$Builder;->packet:Lcom/reglink/parcel/CANPacket;

    return-object v0

    .line 108
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "data size less than dlc"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setBus(I)Lcom/reglink/parcel/CANPacket$Builder;
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/reglink/parcel/CANPacket$Builder;->packet:Lcom/reglink/parcel/CANPacket;

    int-to-byte p1, p1

    invoke-static {v0, p1}, Lcom/reglink/parcel/CANPacket;->access$202(Lcom/reglink/parcel/CANPacket;B)B

    return-object p0
.end method

.method public setData([B)Lcom/reglink/parcel/CANPacket$Builder;
    .locals 2

    const/4 v0, 0x0

    .line 100
    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/reglink/parcel/CANPacket$Builder;->setData([BII)Lcom/reglink/parcel/CANPacket$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setData([BII)Lcom/reglink/parcel/CANPacket$Builder;
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/reglink/parcel/CANPacket$Builder;->packet:Lcom/reglink/parcel/CANPacket;

    invoke-virtual {v0, p1, p2, p3}, Lcom/reglink/parcel/CANPacket;->initBytes([BII)V

    return-object p0
.end method

.method public setDlc(I)Lcom/reglink/parcel/CANPacket$Builder;
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/reglink/parcel/CANPacket$Builder;->packet:Lcom/reglink/parcel/CANPacket;

    int-to-byte p1, p1

    invoke-static {v0, p1}, Lcom/reglink/parcel/CANPacket;->access$302(Lcom/reglink/parcel/CANPacket;B)B

    return-object p0
.end method

.method public setId(J)Lcom/reglink/parcel/CANPacket$Builder;
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/reglink/parcel/CANPacket$Builder;->packet:Lcom/reglink/parcel/CANPacket;

    invoke-static {v0, p1, p2}, Lcom/reglink/parcel/CANPacket;->access$102(Lcom/reglink/parcel/CANPacket;J)J

    return-object p0
.end method
