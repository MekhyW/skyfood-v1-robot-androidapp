.class public Lcn/hutool/core/util/CoordinateUtil;
.super Ljava/lang/Object;
.source "CoordinateUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/hutool/core/util/CoordinateUtil$Coordinate;
    }
.end annotation


# static fields
.field public static final CORRECTION_PARAM:D = 0.006693421622965943

.field public static final PI:D = 3.141592653589793

.field public static final RADIUS:D = 6378245.0

.field public static final X_PI:D = 52.35987755982988


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bd09ToGcj02(DD)Lcn/hutool/core/util/CoordinateUtil$Coordinate;
    .locals 8

    const-wide v0, 0x3f7a9fbe76c8b439L    # 0.0065

    sub-double/2addr p0, v0

    const-wide v0, 0x3f789374bc6a7efaL    # 0.006

    sub-double/2addr p2, v0

    mul-double v0, p0, p0

    mul-double v2, p2, p2

    add-double/2addr v0, v2

    .line 117
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    const-wide v2, 0x404a2e1077c7044eL    # 52.35987755982988

    mul-double v4, p2, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    const-wide v6, 0x3ef4f8b588e368f1L    # 2.0E-5

    mul-double/2addr v4, v6

    sub-double/2addr v0, v4

    .line 118
    invoke-static {p2, p3, p0, p1}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide p2

    mul-double/2addr p0, v2

    invoke-static {p0, p1}, Ljava/lang/Math;->cos(D)D

    move-result-wide p0

    const-wide v2, 0x3ec92a737110e454L    # 3.0E-6

    mul-double/2addr p0, v2

    sub-double/2addr p2, p0

    .line 119
    invoke-static {p2, p3}, Ljava/lang/Math;->cos(D)D

    move-result-wide p0

    mul-double/2addr p0, v0

    .line 120
    invoke-static {p2, p3}, Ljava/lang/Math;->sin(D)D

    move-result-wide p2

    mul-double/2addr v0, p2

    .line 121
    new-instance p2, Lcn/hutool/core/util/CoordinateUtil$Coordinate;

    invoke-direct {p2, p0, p1, v0, v1}, Lcn/hutool/core/util/CoordinateUtil$Coordinate;-><init>(DD)V

    return-object p2
.end method

.method public static bd09toWgs84(DD)Lcn/hutool/core/util/CoordinateUtil$Coordinate;
    .locals 2

    .line 132
    invoke-static {p0, p1, p2, p3}, Lcn/hutool/core/util/CoordinateUtil;->bd09ToGcj02(DD)Lcn/hutool/core/util/CoordinateUtil$Coordinate;

    move-result-object p0

    .line 133
    invoke-static {p0}, Lcn/hutool/core/util/CoordinateUtil$Coordinate;->access$000(Lcn/hutool/core/util/CoordinateUtil$Coordinate;)D

    move-result-wide p1

    invoke-static {p0}, Lcn/hutool/core/util/CoordinateUtil$Coordinate;->access$100(Lcn/hutool/core/util/CoordinateUtil$Coordinate;)D

    move-result-wide v0

    invoke-static {p1, p2, v0, v1}, Lcn/hutool/core/util/CoordinateUtil;->gcj02ToWgs84(DD)Lcn/hutool/core/util/CoordinateUtil$Coordinate;

    move-result-object p0

    return-object p0
.end method

.method public static gcj02ToBd09(DD)Lcn/hutool/core/util/CoordinateUtil$Coordinate;
    .locals 8

    mul-double v0, p0, p0

    mul-double v2, p2, p2

    add-double/2addr v0, v2

    .line 98
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    const-wide v2, 0x404a2e1077c7044eL    # 52.35987755982988

    mul-double v4, p2, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    const-wide v6, 0x3ef4f8b588e368f1L    # 2.0E-5

    mul-double/2addr v4, v6

    add-double/2addr v0, v4

    .line 99
    invoke-static {p2, p3, p0, p1}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide p2

    mul-double/2addr p0, v2

    invoke-static {p0, p1}, Ljava/lang/Math;->cos(D)D

    move-result-wide p0

    const-wide v2, 0x3ec92a737110e454L    # 3.0E-6

    mul-double/2addr p0, v2

    add-double/2addr p2, p0

    .line 100
    invoke-static {p2, p3}, Ljava/lang/Math;->cos(D)D

    move-result-wide p0

    mul-double/2addr p0, v0

    const-wide v2, 0x3f7a9fbe76c8b439L    # 0.0065

    add-double/2addr p0, v2

    .line 101
    invoke-static {p2, p3}, Ljava/lang/Math;->sin(D)D

    move-result-wide p2

    mul-double/2addr v0, p2

    const-wide p2, 0x3f789374bc6a7efaL    # 0.006

    add-double/2addr v0, p2

    .line 102
    new-instance p2, Lcn/hutool/core/util/CoordinateUtil$Coordinate;

    invoke-direct {p2, p0, p1, v0, v1}, Lcn/hutool/core/util/CoordinateUtil$Coordinate;-><init>(DD)V

    return-object p2
.end method

.method public static gcj02ToWgs84(DD)Lcn/hutool/core/util/CoordinateUtil$Coordinate;
    .locals 2

    .line 87
    new-instance v0, Lcn/hutool/core/util/CoordinateUtil$Coordinate;

    invoke-direct {v0, p0, p1, p2, p3}, Lcn/hutool/core/util/CoordinateUtil$Coordinate;-><init>(DD)V

    const/4 v1, 0x0

    invoke-static {p0, p1, p2, p3, v1}, Lcn/hutool/core/util/CoordinateUtil;->offset(DDZ)Lcn/hutool/core/util/CoordinateUtil$Coordinate;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcn/hutool/core/util/CoordinateUtil$Coordinate;->offset(Lcn/hutool/core/util/CoordinateUtil$Coordinate;)Lcn/hutool/core/util/CoordinateUtil$Coordinate;

    move-result-object p0

    return-object p0
.end method

.method public static mercatorToWgs84(DD)Lcn/hutool/core/util/CoordinateUtil$Coordinate;
    .locals 4

    const-wide v0, 0x41731bf8457c1093L    # 2.0037508342789244E7

    div-double/2addr p0, v0

    const-wide v2, 0x4066800000000000L    # 180.0

    mul-double/2addr p0, v2

    div-double/2addr p2, v0

    mul-double/2addr p2, v2

    const-wide v0, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr p2, v0

    div-double/2addr p2, v2

    .line 160
    invoke-static {p2, p3}, Ljava/lang/Math;->exp(D)D

    move-result-wide p2

    invoke-static {p2, p3}, Ljava/lang/Math;->atan(D)D

    move-result-wide p2

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    mul-double/2addr p2, v0

    const-wide v0, 0x3ff921fb54442d18L    # 1.5707963267948966

    sub-double/2addr p2, v0

    const-wide v0, 0x404ca5dc1a63c1f8L    # 57.29577951308232

    mul-double/2addr p2, v0

    .line 161
    new-instance v0, Lcn/hutool/core/util/CoordinateUtil$Coordinate;

    invoke-direct {v0, p0, p1, p2, p3}, Lcn/hutool/core/util/CoordinateUtil$Coordinate;-><init>(DD)V

    return-object v0
.end method

.method private static offset(DDZ)Lcn/hutool/core/util/CoordinateUtil$Coordinate;
    .locals 16

    const-wide v0, 0x405a400000000000L    # 105.0

    sub-double v0, p0, v0

    const-wide v2, 0x4041800000000000L    # 35.0

    sub-double v2, p2, v2

    .line 175
    invoke-static {v0, v1, v2, v3}, Lcn/hutool/core/util/CoordinateUtil;->transLng(DD)D

    move-result-wide v4

    .line 176
    invoke-static {v0, v1, v2, v3}, Lcn/hutool/core/util/CoordinateUtil;->transLat(DD)D

    move-result-wide v0

    const-wide v2, 0x4066800000000000L    # 180.0

    div-double v6, p2, v2

    const-wide v8, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v6, v8

    .line 178
    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v10

    const-wide v12, 0x3f7b6a8faf80ef0bL    # 0.006693421622965943

    mul-double/2addr v12, v10

    mul-double/2addr v12, v10

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v10, v12

    .line 180
    invoke-static {v10, v11}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v12

    mul-double/2addr v4, v2

    const-wide v14, 0x415854c140000000L    # 6378245.0

    div-double/2addr v14, v12

    .line 182
    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    mul-double/2addr v14, v6

    mul-double/2addr v14, v8

    div-double/2addr v4, v14

    mul-double/2addr v0, v2

    const-wide v2, 0x41582b102de355c1L    # 6335552.717000426

    mul-double/2addr v10, v12

    div-double/2addr v2, v10

    mul-double/2addr v2, v8

    div-double/2addr v0, v2

    if-nez p4, :cond_0

    neg-double v4, v4

    neg-double v0, v0

    .line 190
    :cond_0
    new-instance v2, Lcn/hutool/core/util/CoordinateUtil$Coordinate;

    invoke-direct {v2, v4, v5, v0, v1}, Lcn/hutool/core/util/CoordinateUtil$Coordinate;-><init>(DD)V

    return-object v2
.end method

.method public static outOfChina(DD)Z
    .locals 2

    const-wide v0, 0x4052004189374bc7L    # 72.004

    cmpg-double v0, p0, v0

    if-ltz v0, :cond_1

    const-wide v0, 0x40613ab5dcc63f14L    # 137.8347

    cmpl-double p0, p0, v0

    if-gtz p0, :cond_1

    const-wide p0, 0x3fea89a027525461L    # 0.8293

    cmpg-double p0, p2, p0

    if-ltz p0, :cond_1

    const-wide p0, 0x404be9de69ad42c4L    # 55.8271

    cmpl-double p0, p2, p0

    if-lez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private static transLat(DD)D
    .locals 16

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    mul-double v2, p0, v0

    const-wide/high16 v4, -0x3fa7000000000000L    # -100.0

    add-double/2addr v4, v2

    const-wide/high16 v6, 0x4008000000000000L    # 3.0

    mul-double v8, p2, v6

    add-double/2addr v4, v8

    const-wide v8, 0x3fc999999999999aL    # 0.2

    mul-double v10, p2, v8

    mul-double v10, v10, p2

    add-double/2addr v4, v10

    const-wide v10, 0x3fb999999999999aL    # 0.1

    mul-double v10, v10, p0

    mul-double v10, v10, p2

    add-double/2addr v4, v10

    .line 217
    invoke-static/range {p0 .. p1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v10

    mul-double/2addr v10, v8

    add-double/2addr v4, v10

    const-wide/high16 v8, 0x4018000000000000L    # 6.0

    mul-double v8, v8, p0

    const-wide v10, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v8, v10

    .line 218
    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    const-wide/high16 v12, 0x4034000000000000L    # 20.0

    mul-double/2addr v8, v12

    mul-double/2addr v2, v10

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    mul-double/2addr v2, v12

    add-double/2addr v8, v2

    mul-double/2addr v8, v0

    div-double/2addr v8, v6

    add-double/2addr v4, v8

    mul-double v2, p2, v10

    .line 219
    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    mul-double/2addr v8, v12

    div-double v12, p2, v6

    mul-double/2addr v12, v10

    invoke-static {v12, v13}, Ljava/lang/Math;->sin(D)D

    move-result-wide v12

    const-wide/high16 v14, 0x4044000000000000L    # 40.0

    mul-double/2addr v12, v14

    add-double/2addr v8, v12

    mul-double/2addr v8, v0

    div-double/2addr v8, v6

    add-double/2addr v4, v8

    const-wide/high16 v8, 0x4028000000000000L    # 12.0

    div-double v8, p2, v8

    mul-double/2addr v8, v10

    .line 220
    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    const-wide/high16 v10, 0x4064000000000000L    # 160.0

    mul-double/2addr v8, v10

    const-wide/high16 v10, 0x403e000000000000L    # 30.0

    div-double/2addr v2, v10

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    const-wide/high16 v10, 0x4074000000000000L    # 320.0

    mul-double/2addr v2, v10

    add-double/2addr v8, v2

    mul-double/2addr v8, v0

    div-double/2addr v8, v6

    add-double/2addr v4, v8

    return-wide v4
.end method

.method private static transLng(DD)D
    .locals 16

    const-wide v0, 0x4072c00000000000L    # 300.0

    add-double v2, p0, v0

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    mul-double v6, p2, v4

    add-double/2addr v2, v6

    const-wide v6, 0x3fb999999999999aL    # 0.1

    mul-double v8, p0, v6

    mul-double v10, v8, p0

    add-double/2addr v2, v10

    mul-double v8, v8, p2

    add-double/2addr v2, v8

    .line 201
    invoke-static/range {p0 .. p1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    mul-double/2addr v8, v6

    add-double/2addr v2, v8

    const-wide/high16 v6, 0x4018000000000000L    # 6.0

    mul-double v6, v6, p0

    const-wide v8, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v6, v8

    .line 202
    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    const-wide/high16 v10, 0x4034000000000000L    # 20.0

    mul-double/2addr v6, v10

    mul-double v12, p0, v4

    mul-double/2addr v12, v8

    invoke-static {v12, v13}, Ljava/lang/Math;->sin(D)D

    move-result-wide v12

    mul-double/2addr v12, v10

    add-double/2addr v6, v12

    mul-double/2addr v6, v4

    const-wide/high16 v12, 0x4008000000000000L    # 3.0

    div-double/2addr v6, v12

    add-double/2addr v2, v6

    mul-double v6, p0, v8

    .line 203
    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    mul-double/2addr v6, v10

    div-double v10, p0, v12

    mul-double/2addr v10, v8

    invoke-static {v10, v11}, Ljava/lang/Math;->sin(D)D

    move-result-wide v10

    const-wide/high16 v14, 0x4044000000000000L    # 40.0

    mul-double/2addr v10, v14

    add-double/2addr v6, v10

    mul-double/2addr v6, v4

    div-double/2addr v6, v12

    add-double/2addr v2, v6

    const-wide/high16 v6, 0x4028000000000000L    # 12.0

    div-double v6, p0, v6

    mul-double/2addr v6, v8

    .line 204
    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    const-wide v10, 0x4062c00000000000L    # 150.0

    mul-double/2addr v6, v10

    const-wide/high16 v10, 0x403e000000000000L    # 30.0

    div-double v10, p0, v10

    mul-double/2addr v10, v8

    invoke-static {v10, v11}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    mul-double/2addr v8, v0

    add-double/2addr v6, v8

    mul-double/2addr v6, v4

    div-double/2addr v6, v12

    add-double/2addr v2, v6

    return-wide v2
.end method

.method public static wgs84ToBd09(DD)Lcn/hutool/core/util/CoordinateUtil$Coordinate;
    .locals 2

    .line 74
    invoke-static {p0, p1, p2, p3}, Lcn/hutool/core/util/CoordinateUtil;->wgs84ToGcj02(DD)Lcn/hutool/core/util/CoordinateUtil$Coordinate;

    move-result-object p0

    .line 75
    invoke-static {p0}, Lcn/hutool/core/util/CoordinateUtil$Coordinate;->access$000(Lcn/hutool/core/util/CoordinateUtil$Coordinate;)D

    move-result-wide p1

    invoke-static {p0}, Lcn/hutool/core/util/CoordinateUtil$Coordinate;->access$100(Lcn/hutool/core/util/CoordinateUtil$Coordinate;)D

    move-result-wide v0

    invoke-static {p1, p2, v0, v1}, Lcn/hutool/core/util/CoordinateUtil;->gcj02ToBd09(DD)Lcn/hutool/core/util/CoordinateUtil$Coordinate;

    move-result-object p0

    return-object p0
.end method

.method public static wgs84ToGcj02(DD)Lcn/hutool/core/util/CoordinateUtil$Coordinate;
    .locals 2

    .line 63
    new-instance v0, Lcn/hutool/core/util/CoordinateUtil$Coordinate;

    invoke-direct {v0, p0, p1, p2, p3}, Lcn/hutool/core/util/CoordinateUtil$Coordinate;-><init>(DD)V

    const/4 v1, 0x1

    invoke-static {p0, p1, p2, p3, v1}, Lcn/hutool/core/util/CoordinateUtil;->offset(DDZ)Lcn/hutool/core/util/CoordinateUtil$Coordinate;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcn/hutool/core/util/CoordinateUtil$Coordinate;->offset(Lcn/hutool/core/util/CoordinateUtil$Coordinate;)Lcn/hutool/core/util/CoordinateUtil$Coordinate;

    move-result-object p0

    return-object p0
.end method

.method public static wgs84ToMercator(DD)Lcn/hutool/core/util/CoordinateUtil$Coordinate;
    .locals 6

    const-wide v0, 0x41731bf8457c1093L    # 2.0037508342789244E7

    mul-double/2addr p0, v0

    const-wide v2, 0x4066800000000000L    # 180.0

    div-double/2addr p0, v2

    const-wide v4, 0x4056800000000000L    # 90.0

    add-double/2addr p2, v4

    const-wide v4, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr p2, v4

    const-wide v4, 0x4076800000000000L    # 360.0

    div-double/2addr p2, v4

    .line 145
    invoke-static {p2, p3}, Ljava/lang/Math;->tan(D)D

    move-result-wide p2

    invoke-static {p2, p3}, Ljava/lang/Math;->log(D)D

    move-result-wide p2

    const-wide v4, 0x3f91df46a2529d39L    # 0.017453292519943295

    div-double/2addr p2, v4

    mul-double/2addr p2, v0

    div-double/2addr p2, v2

    .line 147
    new-instance v0, Lcn/hutool/core/util/CoordinateUtil$Coordinate;

    invoke-direct {v0, p0, p1, p2, p3}, Lcn/hutool/core/util/CoordinateUtil$Coordinate;-><init>(DD)V

    return-object v0
.end method
