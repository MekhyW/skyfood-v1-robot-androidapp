.class public Lcom/reglink/parcel/Radar;
.super Ljava/lang/Object;
.source "Radar.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/reglink/parcel/Radar;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field frontRadar:[B

.field frontRadarCount:I

.field public frontRadarValid:Z

.field rearRadar:[B

.field rearRadarCount:I

.field public rearRadarValid:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 57
    new-instance v0, Lcom/reglink/parcel/Radar$1;

    invoke-direct {v0}, Lcom/reglink/parcel/Radar$1;-><init>()V

    sput-object v0, Lcom/reglink/parcel/Radar;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 11
    iput v0, p0, Lcom/reglink/parcel/Radar;->frontRadarCount:I

    .line 12
    iput v0, p0, Lcom/reglink/parcel/Radar;->rearRadarCount:I

    .line 18
    iput-boolean v0, p0, Lcom/reglink/parcel/Radar;->frontRadarValid:Z

    .line 19
    iput-boolean v0, p0, Lcom/reglink/parcel/Radar;->rearRadarValid:Z

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 11
    iput v0, p0, Lcom/reglink/parcel/Radar;->frontRadarCount:I

    .line 12
    iput v0, p0, Lcom/reglink/parcel/Radar;->rearRadarCount:I

    .line 18
    iput-boolean v0, p0, Lcom/reglink/parcel/Radar;->frontRadarValid:Z

    .line 19
    iput-boolean v0, p0, Lcom/reglink/parcel/Radar;->rearRadarValid:Z

    .line 39
    invoke-virtual {p0, p1}, Lcom/reglink/parcel/Radar;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/reglink/parcel/Radar$1;)V
    .locals 0

    .line 10
    invoke-direct {p0, p1}, Lcom/reglink/parcel/Radar;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public clone()Lcom/reglink/parcel/Radar;
    .locals 5

    .line 160
    new-instance v0, Lcom/reglink/parcel/Radar;

    invoke-direct {v0}, Lcom/reglink/parcel/Radar;-><init>()V

    .line 162
    iget-boolean v1, p0, Lcom/reglink/parcel/Radar;->frontRadarValid:Z

    iput-boolean v1, v0, Lcom/reglink/parcel/Radar;->frontRadarValid:Z

    .line 163
    iget-boolean v1, p0, Lcom/reglink/parcel/Radar;->rearRadarValid:Z

    iput-boolean v1, v0, Lcom/reglink/parcel/Radar;->rearRadarValid:Z

    .line 165
    iget v1, p0, Lcom/reglink/parcel/Radar;->frontRadarCount:I

    iput v1, v0, Lcom/reglink/parcel/Radar;->frontRadarCount:I

    .line 167
    iget-object v1, p0, Lcom/reglink/parcel/Radar;->frontRadar:[B

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 168
    array-length v1, v1

    new-array v1, v1, [B

    iput-object v1, v0, Lcom/reglink/parcel/Radar;->frontRadar:[B

    .line 169
    iget-object v3, p0, Lcom/reglink/parcel/Radar;->frontRadar:[B

    array-length v4, v3

    invoke-static {v3, v2, v1, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 172
    :cond_0
    iget v1, p0, Lcom/reglink/parcel/Radar;->rearRadarCount:I

    iput v1, v0, Lcom/reglink/parcel/Radar;->rearRadarCount:I

    .line 174
    iget-object v1, p0, Lcom/reglink/parcel/Radar;->rearRadar:[B

    if-eqz v1, :cond_1

    .line 175
    array-length v1, v1

    new-array v1, v1, [B

    iput-object v1, v0, Lcom/reglink/parcel/Radar;->rearRadar:[B

    .line 176
    iget-object v3, p0, Lcom/reglink/parcel/Radar;->rearRadar:[B

    array-length v4, v3

    invoke-static {v3, v2, v1, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 9
    invoke-virtual {p0}, Lcom/reglink/parcel/Radar;->clone()Lcom/reglink/parcel/Radar;

    move-result-object v0

    return-object v0
.end method

.method public copyTo(Lcom/reglink/parcel/Radar;)V
    .locals 4

    .line 182
    iget v0, p0, Lcom/reglink/parcel/Radar;->frontRadarCount:I

    iput v0, p1, Lcom/reglink/parcel/Radar;->frontRadarCount:I

    .line 183
    iget-object v0, p0, Lcom/reglink/parcel/Radar;->frontRadar:[B

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 184
    array-length v0, v0

    new-array v0, v0, [B

    iput-object v0, p1, Lcom/reglink/parcel/Radar;->frontRadar:[B

    .line 185
    iget-object v2, p0, Lcom/reglink/parcel/Radar;->frontRadar:[B

    array-length v3, v2

    invoke-static {v2, v1, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 187
    :cond_0
    iget v0, p0, Lcom/reglink/parcel/Radar;->rearRadarCount:I

    iput v0, p1, Lcom/reglink/parcel/Radar;->rearRadarCount:I

    .line 188
    iget-object v0, p0, Lcom/reglink/parcel/Radar;->rearRadar:[B

    if-eqz v0, :cond_1

    .line 189
    array-length v0, v0

    new-array v0, v0, [B

    iput-object v0, p1, Lcom/reglink/parcel/Radar;->rearRadar:[B

    .line 190
    iget-object v2, p0, Lcom/reglink/parcel/Radar;->rearRadar:[B

    array-length v3, v2

    invoke-static {v2, v1, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 193
    :cond_1
    iget-boolean v0, p0, Lcom/reglink/parcel/Radar;->frontRadarValid:Z

    iput-boolean v0, p1, Lcom/reglink/parcel/Radar;->frontRadarValid:Z

    .line 194
    iget-boolean v0, p0, Lcom/reglink/parcel/Radar;->rearRadarValid:Z

    iput-boolean v0, p1, Lcom/reglink/parcel/Radar;->rearRadarValid:Z

    return-void
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_9

    .line 122
    instance-of v1, p1, Lcom/reglink/parcel/Radar;

    if-nez v1, :cond_0

    goto :goto_2

    .line 125
    :cond_0
    check-cast p1, Lcom/reglink/parcel/Radar;

    .line 126
    iget v1, p1, Lcom/reglink/parcel/Radar;->frontRadarCount:I

    iget v2, p0, Lcom/reglink/parcel/Radar;->frontRadarCount:I

    if-ne v1, v2, :cond_9

    iget v1, p1, Lcom/reglink/parcel/Radar;->rearRadarCount:I

    iget v2, p0, Lcom/reglink/parcel/Radar;->rearRadarCount:I

    if-ne v1, v2, :cond_9

    .line 128
    iget-object v1, p1, Lcom/reglink/parcel/Radar;->frontRadar:[B

    if-eqz v1, :cond_3

    iget-object v2, p0, Lcom/reglink/parcel/Radar;->frontRadar:[B

    if-eqz v2, :cond_3

    .line 129
    array-length v1, v1

    array-length v2, v2

    if-eq v1, v2, :cond_1

    return v0

    :cond_1
    move v1, v0

    .line 132
    :goto_0
    iget-object v2, p0, Lcom/reglink/parcel/Radar;->frontRadar:[B

    array-length v3, v2

    if-ge v1, v3, :cond_4

    .line 133
    aget-byte v2, v2, v1

    iget-object v3, p1, Lcom/reglink/parcel/Radar;->frontRadar:[B

    aget-byte v3, v3, v1

    if-eq v2, v3, :cond_2

    return v0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 137
    :cond_3
    iget-object v2, p0, Lcom/reglink/parcel/Radar;->frontRadar:[B

    if-eq v1, v2, :cond_4

    return v0

    .line 142
    :cond_4
    iget-object v1, p1, Lcom/reglink/parcel/Radar;->rearRadar:[B

    if-eqz v1, :cond_7

    iget-object v2, p0, Lcom/reglink/parcel/Radar;->rearRadar:[B

    if-eqz v2, :cond_7

    .line 143
    array-length v1, v1

    array-length v2, v2

    if-eq v1, v2, :cond_5

    return v0

    :cond_5
    move v1, v0

    .line 146
    :goto_1
    iget-object v2, p0, Lcom/reglink/parcel/Radar;->rearRadar:[B

    array-length v3, v2

    if-ge v1, v3, :cond_8

    .line 147
    aget-byte v2, v2, v1

    iget-object v3, p1, Lcom/reglink/parcel/Radar;->rearRadar:[B

    aget-byte v3, v3, v1

    if-eq v2, v3, :cond_6

    return v0

    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 151
    :cond_7
    iget-object p1, p0, Lcom/reglink/parcel/Radar;->rearRadar:[B

    if-eq v1, p1, :cond_8

    return v0

    :cond_8
    const/4 p1, 0x1

    return p1

    :cond_9
    :goto_2
    return v0
.end method

.method public getFrontRadar(I)I
    .locals 1

    if-ltz p1, :cond_0

    .line 90
    iget v0, p0, Lcom/reglink/parcel/Radar;->frontRadarCount:I

    if-ge p1, v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/reglink/parcel/Radar;->frontRadar:[B

    aget-byte p1, v0, p1

    return p1

    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method public getFrontRadarCount()I
    .locals 1

    .line 69
    iget v0, p0, Lcom/reglink/parcel/Radar;->frontRadarCount:I

    return v0
.end method

.method public getRearRadar(I)I
    .locals 1

    if-ltz p1, :cond_0

    .line 96
    iget v0, p0, Lcom/reglink/parcel/Radar;->rearRadarCount:I

    if-ge p1, v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/reglink/parcel/Radar;->rearRadar:[B

    aget-byte p1, v0, p1

    return p1

    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method public getRearRadarCount()I
    .locals 1

    .line 73
    iget v0, p0, Lcom/reglink/parcel/Radar;->rearRadarCount:I

    return v0
.end method

.method protected readFromParcel(Landroid/os/Parcel;)V
    .locals 1

    .line 26
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    iput v0, p0, Lcom/reglink/parcel/Radar;->frontRadarCount:I

    if-lez v0, :cond_0

    .line 28
    new-array v0, v0, [B

    iput-object v0, p0, Lcom/reglink/parcel/Radar;->frontRadar:[B

    .line 29
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readByteArray([B)V

    .line 32
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    iput v0, p0, Lcom/reglink/parcel/Radar;->rearRadarCount:I

    if-lez v0, :cond_1

    .line 34
    new-array v0, v0, [B

    iput-object v0, p0, Lcom/reglink/parcel/Radar;->rearRadar:[B

    .line 35
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readByteArray([B)V

    :cond_1
    return-void
.end method

.method public setFrontRadar(II)V
    .locals 2

    if-ltz p1, :cond_0

    .line 103
    iget v0, p0, Lcom/reglink/parcel/Radar;->frontRadarCount:I

    if-ge p1, v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/reglink/parcel/Radar;->frontRadar:[B

    int-to-byte v1, p2

    aput-byte v1, v0, p1

    if-eqz p2, :cond_0

    const/4 p1, 0x1

    .line 106
    iput-boolean p1, p0, Lcom/reglink/parcel/Radar;->frontRadarValid:Z

    :cond_0
    return-void
.end method

.method public setFrontRadarCount(I)V
    .locals 1

    .line 77
    iget v0, p0, Lcom/reglink/parcel/Radar;->frontRadarCount:I

    if-eq v0, p1, :cond_0

    .line 78
    iput p1, p0, Lcom/reglink/parcel/Radar;->frontRadarCount:I

    .line 79
    new-array p1, p1, [B

    iput-object p1, p0, Lcom/reglink/parcel/Radar;->frontRadar:[B

    :cond_0
    return-void
.end method

.method public setRearRadar(II)V
    .locals 2

    if-ltz p1, :cond_0

    .line 112
    iget v0, p0, Lcom/reglink/parcel/Radar;->rearRadarCount:I

    if-ge p1, v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/reglink/parcel/Radar;->rearRadar:[B

    int-to-byte v1, p2

    aput-byte v1, v0, p1

    if-eqz p2, :cond_0

    const/4 p1, 0x1

    .line 115
    iput-boolean p1, p0, Lcom/reglink/parcel/Radar;->rearRadarValid:Z

    :cond_0
    return-void
.end method

.method public setRearRadarCount(I)V
    .locals 1

    .line 84
    iget v0, p0, Lcom/reglink/parcel/Radar;->rearRadarCount:I

    if-eq v0, p1, :cond_0

    .line 85
    iput p1, p0, Lcom/reglink/parcel/Radar;->rearRadarCount:I

    .line 86
    new-array p1, p1, [B

    iput-object p1, p0, Lcom/reglink/parcel/Radar;->rearRadar:[B

    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    .line 199
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "{\u524d\u96f7\u8fbe:"

    .line 200
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    iget-object v1, p0, Lcom/reglink/parcel/Radar;->frontRadar:[B

    const-string v2, ","

    const/4 v3, 0x0

    const-string v4, "null"

    if-eqz v1, :cond_0

    .line 202
    array-length v5, v1

    move v6, v3

    :goto_0
    if-ge v6, v5, :cond_1

    aget-byte v7, v1, v6

    .line 203
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 206
    :cond_0
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    const-string v1, ",\u540e\u96f7\u8fbe:"

    .line 208
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    iget-object v1, p0, Lcom/reglink/parcel/Radar;->rearRadar:[B

    if-eqz v1, :cond_2

    .line 210
    array-length v4, v1

    :goto_1
    if-ge v3, v4, :cond_3

    aget-byte v5, v1, v3

    .line 211
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 214
    :cond_2
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    const-string v1, "}"

    .line 216
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 217
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 47
    iget p2, p0, Lcom/reglink/parcel/Radar;->frontRadarCount:I

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 48
    iget p2, p0, Lcom/reglink/parcel/Radar;->frontRadarCount:I

    if-lez p2, :cond_0

    .line 49
    iget-object p2, p0, Lcom/reglink/parcel/Radar;->frontRadar:[B

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 52
    :cond_0
    iget p2, p0, Lcom/reglink/parcel/Radar;->rearRadarCount:I

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 53
    iget p2, p0, Lcom/reglink/parcel/Radar;->rearRadarCount:I

    if-lez p2, :cond_1

    .line 54
    iget-object p2, p0, Lcom/reglink/parcel/Radar;->rearRadar:[B

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    :cond_1
    return-void
.end method
