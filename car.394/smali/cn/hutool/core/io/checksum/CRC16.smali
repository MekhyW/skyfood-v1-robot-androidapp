.class public Lcn/hutool/core/io/checksum/CRC16;
.super Ljava/lang/Object;
.source "CRC16.java"

# interfaces
.implements Ljava/util/zip/Checksum;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final crc16:Lcn/hutool/core/io/checksum/crc16/CRC16Checksum;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 21
    new-instance v0, Lcn/hutool/core/io/checksum/crc16/CRC16IBM;

    invoke-direct {v0}, Lcn/hutool/core/io/checksum/crc16/CRC16IBM;-><init>()V

    invoke-direct {p0, v0}, Lcn/hutool/core/io/checksum/CRC16;-><init>(Lcn/hutool/core/io/checksum/crc16/CRC16Checksum;)V

    return-void
.end method

.method public constructor <init>(Lcn/hutool/core/io/checksum/crc16/CRC16Checksum;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcn/hutool/core/io/checksum/CRC16;->crc16:Lcn/hutool/core/io/checksum/crc16/CRC16Checksum;

    return-void
.end method


# virtual methods
.method public getHexValue()Ljava/lang/String;
    .locals 1

    .line 40
    iget-object v0, p0, Lcn/hutool/core/io/checksum/CRC16;->crc16:Lcn/hutool/core/io/checksum/crc16/CRC16Checksum;

    invoke-virtual {v0}, Lcn/hutool/core/io/checksum/crc16/CRC16Checksum;->getHexValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHexValue(Z)Ljava/lang/String;
    .locals 1

    .line 51
    iget-object v0, p0, Lcn/hutool/core/io/checksum/CRC16;->crc16:Lcn/hutool/core/io/checksum/crc16/CRC16Checksum;

    invoke-virtual {v0, p1}, Lcn/hutool/core/io/checksum/crc16/CRC16Checksum;->getHexValue(Z)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getValue()J
    .locals 2

    .line 56
    iget-object v0, p0, Lcn/hutool/core/io/checksum/CRC16;->crc16:Lcn/hutool/core/io/checksum/crc16/CRC16Checksum;

    invoke-virtual {v0}, Lcn/hutool/core/io/checksum/crc16/CRC16Checksum;->getValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public reset()V
    .locals 1

    .line 61
    iget-object v0, p0, Lcn/hutool/core/io/checksum/CRC16;->crc16:Lcn/hutool/core/io/checksum/crc16/CRC16Checksum;

    invoke-virtual {v0}, Lcn/hutool/core/io/checksum/crc16/CRC16Checksum;->reset()V

    return-void
.end method

.method public update(I)V
    .locals 1

    .line 71
    iget-object v0, p0, Lcn/hutool/core/io/checksum/CRC16;->crc16:Lcn/hutool/core/io/checksum/crc16/CRC16Checksum;

    invoke-virtual {v0, p1}, Lcn/hutool/core/io/checksum/crc16/CRC16Checksum;->update(I)V

    return-void
.end method

.method public update([BII)V
    .locals 1

    .line 66
    iget-object v0, p0, Lcn/hutool/core/io/checksum/CRC16;->crc16:Lcn/hutool/core/io/checksum/crc16/CRC16Checksum;

    invoke-virtual {v0, p1, p2, p3}, Lcn/hutool/core/io/checksum/crc16/CRC16Checksum;->update([BII)V

    return-void
.end method
