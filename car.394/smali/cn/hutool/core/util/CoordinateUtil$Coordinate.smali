.class public Lcn/hutool/core/util/CoordinateUtil$Coordinate;
.super Ljava/lang/Object;
.source "CoordinateUtil.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/hutool/core/util/CoordinateUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Coordinate"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private lat:D

.field private lng:D


# direct methods
.method public constructor <init>(DD)V
    .locals 0

    .line 248
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 249
    iput-wide p1, p0, Lcn/hutool/core/util/CoordinateUtil$Coordinate;->lng:D

    .line 250
    iput-wide p3, p0, Lcn/hutool/core/util/CoordinateUtil$Coordinate;->lat:D

    return-void
.end method

.method static synthetic access$000(Lcn/hutool/core/util/CoordinateUtil$Coordinate;)D
    .locals 2

    .line 230
    iget-wide v0, p0, Lcn/hutool/core/util/CoordinateUtil$Coordinate;->lng:D

    return-wide v0
.end method

.method static synthetic access$100(Lcn/hutool/core/util/CoordinateUtil$Coordinate;)D
    .locals 2

    .line 230
    iget-wide v0, p0, Lcn/hutool/core/util/CoordinateUtil$Coordinate;->lat:D

    return-wide v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 310
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 313
    :cond_1
    check-cast p1, Lcn/hutool/core/util/CoordinateUtil$Coordinate;

    .line 314
    iget-wide v2, p1, Lcn/hutool/core/util/CoordinateUtil$Coordinate;->lng:D

    iget-wide v4, p0, Lcn/hutool/core/util/CoordinateUtil$Coordinate;->lng:D

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Double;->compare(DD)I

    move-result v2

    if-nez v2, :cond_2

    iget-wide v2, p1, Lcn/hutool/core/util/CoordinateUtil$Coordinate;->lat:D

    iget-wide v4, p0, Lcn/hutool/core/util/CoordinateUtil$Coordinate;->lat:D

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Double;->compare(DD)I

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public getLat()D
    .locals 2

    .line 279
    iget-wide v0, p0, Lcn/hutool/core/util/CoordinateUtil$Coordinate;->lat:D

    return-wide v0
.end method

.method public getLng()D
    .locals 2

    .line 259
    iget-wide v0, p0, Lcn/hutool/core/util/CoordinateUtil$Coordinate;->lng:D

    return-wide v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 319
    iget-wide v1, p0, Lcn/hutool/core/util/CoordinateUtil$Coordinate;->lng:D

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-wide v1, p0, Lcn/hutool/core/util/CoordinateUtil$Coordinate;->lat:D

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public offset(Lcn/hutool/core/util/CoordinateUtil$Coordinate;)Lcn/hutool/core/util/CoordinateUtil$Coordinate;
    .locals 4

    .line 300
    iget-wide v0, p0, Lcn/hutool/core/util/CoordinateUtil$Coordinate;->lng:D

    iget-wide v2, p1, Lcn/hutool/core/util/CoordinateUtil$Coordinate;->lng:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Lcn/hutool/core/util/CoordinateUtil$Coordinate;->lng:D

    .line 301
    iget-wide v0, p0, Lcn/hutool/core/util/CoordinateUtil$Coordinate;->lat:D

    iget-wide v2, p1, Lcn/hutool/core/util/CoordinateUtil$Coordinate;->lat:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Lcn/hutool/core/util/CoordinateUtil$Coordinate;->lat:D

    return-object p0
.end method

.method public setLat(D)Lcn/hutool/core/util/CoordinateUtil$Coordinate;
    .locals 0

    .line 289
    iput-wide p1, p0, Lcn/hutool/core/util/CoordinateUtil$Coordinate;->lat:D

    return-object p0
.end method

.method public setLng(D)Lcn/hutool/core/util/CoordinateUtil$Coordinate;
    .locals 0

    .line 269
    iput-wide p1, p0, Lcn/hutool/core/util/CoordinateUtil$Coordinate;->lng:D

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 324
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Coordinate{lng="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lcn/hutool/core/util/CoordinateUtil$Coordinate;->lng:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", lat="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcn/hutool/core/util/CoordinateUtil$Coordinate;->lat:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
