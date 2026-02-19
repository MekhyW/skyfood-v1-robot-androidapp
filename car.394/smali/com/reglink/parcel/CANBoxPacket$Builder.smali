.class public Lcom/reglink/parcel/CANBoxPacket$Builder;
.super Ljava/lang/Object;
.source "CANBoxPacket.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/reglink/parcel/CANBoxPacket;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field packet:Lcom/reglink/parcel/CANBoxPacket;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 80
    new-instance v0, Lcom/reglink/parcel/CANBoxPacket;

    invoke-direct {v0}, Lcom/reglink/parcel/CANBoxPacket;-><init>()V

    invoke-direct {p0, v0}, Lcom/reglink/parcel/CANBoxPacket$Builder;-><init>(Lcom/reglink/parcel/CANBoxPacket;)V

    return-void
.end method

.method public constructor <init>(Lcom/reglink/parcel/CANBoxPacket;)V
    .locals 0

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    iput-object p1, p0, Lcom/reglink/parcel/CANBoxPacket$Builder;->packet:Lcom/reglink/parcel/CANBoxPacket;

    return-void
.end method

.method public static build(I[B)Lcom/reglink/parcel/CANBoxPacket;
    .locals 1

    .line 103
    new-instance v0, Lcom/reglink/parcel/CANBoxPacket$Builder;

    invoke-direct {v0}, Lcom/reglink/parcel/CANBoxPacket$Builder;-><init>()V

    .line 104
    invoke-virtual {v0, p0}, Lcom/reglink/parcel/CANBoxPacket$Builder;->setDataType(I)Lcom/reglink/parcel/CANBoxPacket$Builder;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/reglink/parcel/CANBoxPacket$Builder;->setData([B)Lcom/reglink/parcel/CANBoxPacket$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/reglink/parcel/CANBoxPacket$Builder;->build()Lcom/reglink/parcel/CANBoxPacket;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public build()Lcom/reglink/parcel/CANBoxPacket;
    .locals 2

    .line 96
    iget-object v0, p0, Lcom/reglink/parcel/CANBoxPacket$Builder;->packet:Lcom/reglink/parcel/CANBoxPacket;

    iget-object v0, v0, Lcom/reglink/parcel/CANBoxPacket;->bytes:[B

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/reglink/parcel/CANBoxPacket$Builder;->packet:Lcom/reglink/parcel/CANBoxPacket;

    return-object v0

    .line 97
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "data can not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setData([B)Lcom/reglink/parcel/CANBoxPacket$Builder;
    .locals 2

    .line 87
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    .line 88
    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/reglink/parcel/CANBoxPacket$Builder;->setData([BII)Lcom/reglink/parcel/CANBoxPacket$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setData([BII)Lcom/reglink/parcel/CANBoxPacket$Builder;
    .locals 1

    .line 91
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 92
    iget-object v0, p0, Lcom/reglink/parcel/CANBoxPacket$Builder;->packet:Lcom/reglink/parcel/CANBoxPacket;

    invoke-virtual {v0, p1, p2, p3}, Lcom/reglink/parcel/CANBoxPacket;->initBytes([BII)V

    return-object p0
.end method

.method public setDataType(I)Lcom/reglink/parcel/CANBoxPacket$Builder;
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/reglink/parcel/CANBoxPacket$Builder;->packet:Lcom/reglink/parcel/CANBoxPacket;

    invoke-static {v0, p1}, Lcom/reglink/parcel/CANBoxPacket;->access$102(Lcom/reglink/parcel/CANBoxPacket;I)I

    return-object p0
.end method
