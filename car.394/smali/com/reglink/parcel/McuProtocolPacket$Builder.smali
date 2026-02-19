.class public Lcom/reglink/parcel/McuProtocolPacket$Builder;
.super Ljava/lang/Object;
.source "McuProtocolPacket.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/reglink/parcel/McuProtocolPacket;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field packet:Lcom/reglink/parcel/McuProtocolPacket;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 55
    new-instance v0, Lcom/reglink/parcel/McuProtocolPacket;

    invoke-direct {v0}, Lcom/reglink/parcel/McuProtocolPacket;-><init>()V

    invoke-direct {p0, v0}, Lcom/reglink/parcel/McuProtocolPacket$Builder;-><init>(Lcom/reglink/parcel/McuProtocolPacket;)V

    return-void
.end method

.method public constructor <init>(Lcom/reglink/parcel/McuProtocolPacket;)V
    .locals 0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lcom/reglink/parcel/McuProtocolPacket$Builder;->packet:Lcom/reglink/parcel/McuProtocolPacket;

    return-void
.end method

.method public static build(BI[B)Lcom/reglink/parcel/McuProtocolPacket;
    .locals 1

    .line 88
    new-instance v0, Lcom/reglink/parcel/McuProtocolPacket$Builder;

    invoke-direct {v0}, Lcom/reglink/parcel/McuProtocolPacket$Builder;-><init>()V

    .line 89
    invoke-virtual {v0, p0}, Lcom/reglink/parcel/McuProtocolPacket$Builder;->setCommand(I)Lcom/reglink/parcel/McuProtocolPacket$Builder;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/reglink/parcel/McuProtocolPacket$Builder;->setLength(I)Lcom/reglink/parcel/McuProtocolPacket$Builder;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/reglink/parcel/McuProtocolPacket$Builder;->setData([B)Lcom/reglink/parcel/McuProtocolPacket$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/reglink/parcel/McuProtocolPacket$Builder;->build()Lcom/reglink/parcel/McuProtocolPacket;

    move-result-object p0

    return-object p0
.end method

.method public static build(Lcom/reglink/parcel/McuProtocolPacket;BI[B)Lcom/reglink/parcel/McuProtocolPacket;
    .locals 1

    .line 84
    new-instance v0, Lcom/reglink/parcel/McuProtocolPacket$Builder;

    invoke-direct {v0, p0}, Lcom/reglink/parcel/McuProtocolPacket$Builder;-><init>(Lcom/reglink/parcel/McuProtocolPacket;)V

    .line 85
    invoke-virtual {v0, p1}, Lcom/reglink/parcel/McuProtocolPacket$Builder;->setCommand(I)Lcom/reglink/parcel/McuProtocolPacket$Builder;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/reglink/parcel/McuProtocolPacket$Builder;->setLength(I)Lcom/reglink/parcel/McuProtocolPacket$Builder;

    move-result-object p0

    invoke-virtual {p0, p3}, Lcom/reglink/parcel/McuProtocolPacket$Builder;->setData([B)Lcom/reglink/parcel/McuProtocolPacket$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/reglink/parcel/McuProtocolPacket$Builder;->build()Lcom/reglink/parcel/McuProtocolPacket;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public allocate(I)Lcom/reglink/parcel/McuProtocolPacket$Builder;
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/reglink/parcel/McuProtocolPacket$Builder;->packet:Lcom/reglink/parcel/McuProtocolPacket;

    invoke-virtual {v0, p1}, Lcom/reglink/parcel/McuProtocolPacket;->allocate(I)V

    return-object p0
.end method

.method public build()Lcom/reglink/parcel/McuProtocolPacket;
    .locals 2

    .line 77
    iget-object v0, p0, Lcom/reglink/parcel/McuProtocolPacket$Builder;->packet:Lcom/reglink/parcel/McuProtocolPacket;

    iget-object v0, v0, Lcom/reglink/parcel/McuProtocolPacket;->bytes:[B

    array-length v0, v0

    iget-object v1, p0, Lcom/reglink/parcel/McuProtocolPacket$Builder;->packet:Lcom/reglink/parcel/McuProtocolPacket;

    invoke-static {v1}, Lcom/reglink/parcel/McuProtocolPacket;->access$200(Lcom/reglink/parcel/McuProtocolPacket;)I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 80
    iget-object v0, p0, Lcom/reglink/parcel/McuProtocolPacket$Builder;->packet:Lcom/reglink/parcel/McuProtocolPacket;

    return-object v0

    .line 78
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "data size less than length"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setCommand(I)Lcom/reglink/parcel/McuProtocolPacket$Builder;
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/reglink/parcel/McuProtocolPacket$Builder;->packet:Lcom/reglink/parcel/McuProtocolPacket;

    invoke-static {v0, p1}, Lcom/reglink/parcel/McuProtocolPacket;->access$102(Lcom/reglink/parcel/McuProtocolPacket;I)I

    return-object p0
.end method

.method public setData([B)Lcom/reglink/parcel/McuProtocolPacket$Builder;
    .locals 2

    const/4 v0, 0x0

    .line 70
    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/reglink/parcel/McuProtocolPacket$Builder;->setData([BII)Lcom/reglink/parcel/McuProtocolPacket$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setData([BII)Lcom/reglink/parcel/McuProtocolPacket$Builder;
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/reglink/parcel/McuProtocolPacket$Builder;->packet:Lcom/reglink/parcel/McuProtocolPacket;

    invoke-virtual {v0, p1, p2, p3}, Lcom/reglink/parcel/McuProtocolPacket;->initBytes([BII)V

    return-object p0
.end method

.method public setLength(I)Lcom/reglink/parcel/McuProtocolPacket$Builder;
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/reglink/parcel/McuProtocolPacket$Builder;->packet:Lcom/reglink/parcel/McuProtocolPacket;

    invoke-static {v0, p1}, Lcom/reglink/parcel/McuProtocolPacket;->access$202(Lcom/reglink/parcel/McuProtocolPacket;I)I

    return-object p0
.end method
