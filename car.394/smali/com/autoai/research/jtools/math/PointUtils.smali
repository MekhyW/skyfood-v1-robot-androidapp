.class public final Lcom/autoai/research/jtools/math/PointUtils;
.super Ljava/lang/Object;
.source "PointUtils.java"


# static fields
.field private static final EARTH_RADIUS:D = 6378137.0


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDistance(Landroid/graphics/Point;Landroid/graphics/Point;J)D
    .locals 10

    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 79
    :cond_0
    iget v0, p0, Landroid/graphics/Point;->x:I

    int-to-double v0, v0

    long-to-double p2, p2

    div-double v2, v0, p2

    iget p0, p0, Landroid/graphics/Point;->y:I

    int-to-double v0, p0

    div-double v4, v0, p2

    iget p0, p1, Landroid/graphics/Point;->x:I

    int-to-double v0, p0

    div-double v6, v0, p2

    iget p0, p1, Landroid/graphics/Point;->y:I

    int-to-double p0, p0

    div-double v8, p0, p2

    invoke-static/range {v2 .. v9}, Lcom/autoai/research/jtools/math/PointUtils;->getDistance1(DDDD)D

    move-result-wide p0

    return-wide p0

    :cond_1
    :goto_0
    const-wide/high16 p0, -0x4010000000000000L    # -1.0

    return-wide p0
.end method

.method private static getDistance1(DDDD)D
    .locals 2

    .line 92
    invoke-static {p2, p3}, Lcom/autoai/research/jtools/math/PointUtils;->rad(D)D

    move-result-wide p2

    .line 93
    invoke-static {p6, p7}, Lcom/autoai/research/jtools/math/PointUtils;->rad(D)D

    move-result-wide p6

    sub-double v0, p2, p6

    .line 95
    invoke-static {p0, p1}, Lcom/autoai/research/jtools/math/PointUtils;->rad(D)D

    move-result-wide p0

    invoke-static {p4, p5}, Lcom/autoai/research/jtools/math/PointUtils;->rad(D)D

    move-result-wide p4

    sub-double/2addr p0, p4

    const-wide/high16 p4, 0x4000000000000000L    # 2.0

    div-double/2addr v0, p4

    .line 96
    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    invoke-static {v0, v1, p4, p5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    .line 97
    invoke-static {p2, p3}, Ljava/lang/Math;->cos(D)D

    move-result-wide p2

    invoke-static {p6, p7}, Ljava/lang/Math;->cos(D)D

    move-result-wide p6

    mul-double/2addr p2, p6

    div-double/2addr p0, p4

    .line 98
    invoke-static {p0, p1}, Ljava/lang/Math;->sin(D)D

    move-result-wide p0

    invoke-static {p0, p1, p4, p5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p0

    mul-double/2addr p2, p0

    add-double/2addr v0, p2

    .line 96
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Math;->asin(D)D

    move-result-wide p0

    mul-double/2addr p0, p4

    const-wide p2, 0x415854a640000000L    # 6378137.0

    mul-double/2addr p0, p2

    const-wide p2, 0x40c3880000000000L    # 10000.0

    mul-double/2addr p0, p2

    .line 100
    invoke-static {p0, p1}, Ljava/lang/Math;->round(D)J

    move-result-wide p0

    long-to-double p0, p0

    div-double/2addr p0, p2

    return-wide p0
.end method

.method public static getPointsAngle(Landroid/graphics/Point;Landroid/graphics/Point;)D
    .locals 2

    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 34
    :cond_0
    iget v0, p1, Landroid/graphics/Point;->x:I

    iget v1, p0, Landroid/graphics/Point;->x:I

    sub-int/2addr v0, v1

    int-to-double v0, v0

    .line 35
    iget p1, p1, Landroid/graphics/Point;->y:I

    iget p0, p0, Landroid/graphics/Point;->y:I

    sub-int/2addr p1, p0

    int-to-double p0, p1

    .line 37
    invoke-static {p0, p1, v0, v1}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide p0

    const-wide v0, 0x4066800000000000L    # 180.0

    mul-double/2addr p0, v0

    const-wide v0, 0x400921fb54442d18L    # Math.PI

    div-double/2addr p0, v0

    return-wide p0

    :cond_1
    :goto_0
    const-wide/high16 p0, -0x4010000000000000L    # -1.0

    return-wide p0
.end method

.method public static isContain(Landroid/graphics/Rect;Landroid/graphics/Point;)Z
    .locals 1

    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 51
    :cond_0
    iget v0, p1, Landroid/graphics/Point;->x:I

    iget p1, p1, Landroid/graphics/Point;->y:I

    invoke-virtual {p0, v0, p1}, Landroid/graphics/Rect;->contains(II)Z

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isRectanglesIntersect(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z
    .locals 0

    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 136
    :cond_0
    invoke-virtual {p0, p1}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method private static rad(D)D
    .locals 2

    const-wide v0, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr p0, v0

    const-wide v0, 0x4066800000000000L    # 180.0

    div-double/2addr p0, v0

    return-wide p0
.end method

.method public static transformToLat(DD)D
    .locals 2

    const-wide v0, 0x408f400000000000L    # 1000.0

    div-double/2addr p0, v0

    const-wide v0, 0x405bc00000000000L    # 111.0

    .line 122
    invoke-static {p2, p3}, Ljava/lang/Math;->cos(D)D

    move-result-wide p2

    mul-double/2addr p2, v0

    div-double/2addr p0, p2

    return-wide p0
.end method

.method public static transformToLng(D)D
    .locals 2

    const-wide v0, 0x408f400000000000L    # 1000.0

    div-double/2addr p0, v0

    const-wide v0, 0x405bc00000000000L    # 111.0

    div-double/2addr p0, v0

    return-wide p0
.end method
