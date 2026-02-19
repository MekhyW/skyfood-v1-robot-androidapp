.class public Lcn/hutool/core/img/LabColor;
.super Ljava/lang/Object;
.source "LabColor.java"


# static fields
.field private static final XYZ_COLOR_SPACE:Ljava/awt/color/ColorSpace;


# instance fields
.field private final a:D

.field private final b:D

.field private final l:D


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x3e9

    .line 21
    invoke-static {v0}, Ljava/awt/color/ColorSpace;->getInstance(I)Ljava/awt/color/ColorSpace;

    move-result-object v0

    sput-object v0, Lcn/hutool/core/img/LabColor;->XYZ_COLOR_SPACE:Ljava/awt/color/ColorSpace;

    return-void
.end method

.method public constructor <init>(Ljava/awt/Color;)V
    .locals 3

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "Color must not be null"

    .line 41
    invoke-static {p1, v2, v1}, Lcn/hutool/core/lang/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    sget-object v1, Lcn/hutool/core/img/LabColor;->XYZ_COLOR_SPACE:Ljava/awt/color/ColorSpace;

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Ljava/awt/Color;->getColorComponents(Ljava/awt/color/ColorSpace;[F)[F

    move-result-object p1

    invoke-direct {p0, p1}, Lcn/hutool/core/img/LabColor;->fromXyz([F)[F

    move-result-object p1

    .line 43
    aget v0, p1, v0

    float-to-double v0, v0

    iput-wide v0, p0, Lcn/hutool/core/img/LabColor;->l:D

    const/4 v0, 0x1

    .line 44
    aget v0, p1, v0

    float-to-double v0, v0

    iput-wide v0, p0, Lcn/hutool/core/img/LabColor;->a:D

    const/4 v0, 0x2

    .line 45
    aget p1, p1, v0

    float-to-double v0, p1

    iput-wide v0, p0, Lcn/hutool/core/img/LabColor;->b:D

    return-void
.end method

.method public constructor <init>(Ljava/lang/Integer;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 37
    new-instance v0, Ljava/awt/Color;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {v0, p1}, Ljava/awt/Color;-><init>(I)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, v0}, Lcn/hutool/core/img/LabColor;-><init>(Ljava/awt/Color;)V

    return-void
.end method

.method private static f(D)D
    .locals 4

    const-wide v0, 0x3f822354d28f7cd6L    # 0.008856451679035631

    cmpl-double v0, p0, v0

    if-lez v0, :cond_0

    .line 88
    invoke-static {p0, p1}, Ljava/lang/Math;->cbrt(D)D

    move-result-wide p0

    goto :goto_0

    :cond_0
    const-wide v0, 0x4013555555555555L    # 4.833333333333333

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    const-wide v2, 0x3fd5555555555555L    # 0.3333333333333333

    mul-double/2addr v0, v2

    mul-double/2addr v0, p0

    const-wide p0, 0x3fc1a7b9611a7b96L    # 0.13793103448275862

    add-double/2addr p0, v0

    :goto_0
    return-wide p0
.end method

.method private static fromXyz(FFF)[F
    .locals 6

    float-to-double v0, p1

    .line 81
    invoke-static {v0, v1}, Lcn/hutool/core/img/LabColor;->f(D)D

    move-result-wide v2

    const-wide/high16 v4, 0x4030000000000000L    # 16.0

    sub-double/2addr v2, v4

    const-wide/high16 v4, 0x405d000000000000L    # 116.0

    mul-double/2addr v2, v4

    float-to-double p0, p0

    .line 82
    invoke-static {p0, p1}, Lcn/hutool/core/img/LabColor;->f(D)D

    move-result-wide p0

    invoke-static {v0, v1}, Lcn/hutool/core/img/LabColor;->f(D)D

    move-result-wide v4

    sub-double/2addr p0, v4

    const-wide v4, 0x407f400000000000L    # 500.0

    mul-double/2addr p0, v4

    .line 83
    invoke-static {v0, v1}, Lcn/hutool/core/img/LabColor;->f(D)D

    move-result-wide v0

    float-to-double v4, p2

    invoke-static {v4, v5}, Lcn/hutool/core/img/LabColor;->f(D)D

    move-result-wide v4

    sub-double/2addr v0, v4

    const-wide/high16 v4, 0x4069000000000000L    # 200.0

    mul-double/2addr v0, v4

    const/4 p2, 0x3

    new-array p2, p2, [F

    const/4 v4, 0x0

    double-to-float v2, v2

    aput v2, p2, v4

    const/4 v2, 0x1

    double-to-float p0, p0

    aput p0, p2, v2

    const/4 p0, 0x2

    double-to-float p1, v0

    aput p1, p2, p0

    return-object p2
.end method

.method private fromXyz([F)[F
    .locals 3

    const/4 v0, 0x0

    .line 65
    aget v0, p1, v0

    const/4 v1, 0x1

    aget v1, p1, v1

    const/4 v2, 0x2

    aget p1, p1, v2

    invoke-static {v0, v1, p1}, Lcn/hutool/core/img/LabColor;->fromXyz(FFF)[F

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public getDistance(Lcn/hutool/core/img/LabColor;)D
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 55
    iget-wide v2, v0, Lcn/hutool/core/img/LabColor;->a:D

    mul-double/2addr v2, v2

    iget-wide v4, v0, Lcn/hutool/core/img/LabColor;->b:D

    mul-double/2addr v4, v4

    add-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    .line 56
    iget-wide v4, v1, Lcn/hutool/core/img/LabColor;->a:D

    mul-double/2addr v4, v4

    iget-wide v6, v1, Lcn/hutool/core/img/LabColor;->b:D

    mul-double/2addr v6, v6

    add-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    sub-double v4, v2, v4

    .line 57
    iget-wide v6, v0, Lcn/hutool/core/img/LabColor;->a:D

    iget-wide v8, v1, Lcn/hutool/core/img/LabColor;->a:D

    sub-double/2addr v6, v8

    .line 58
    iget-wide v8, v0, Lcn/hutool/core/img/LabColor;->b:D

    iget-wide v10, v1, Lcn/hutool/core/img/LabColor;->b:D

    sub-double/2addr v8, v10

    mul-double/2addr v6, v6

    mul-double/2addr v8, v8

    add-double/2addr v6, v8

    mul-double v8, v4, v4

    sub-double/2addr v6, v8

    const-wide/16 v8, 0x0

    .line 59
    invoke-static {v8, v9, v6, v7}, Ljava/lang/Math;->max(DD)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    .line 60
    iget-wide v10, v0, Lcn/hutool/core/img/LabColor;->l:D

    iget-wide v12, v1, Lcn/hutool/core/img/LabColor;->l:D

    sub-double/2addr v10, v12

    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v10

    const-wide v14, 0x3fa70a3d70a3d70aL    # 0.045

    mul-double/2addr v14, v2

    const-wide/high16 v16, 0x3ff0000000000000L    # 1.0

    add-double v14, v14, v16

    div-double/2addr v4, v14

    .line 61
    invoke-static {v4, v5, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    add-double/2addr v10, v4

    const-wide v4, 0x3f8eb851eb851eb8L    # 0.015

    mul-double/2addr v2, v4

    add-double v2, v2, v16

    div-double/2addr v6, v2

    invoke-static {v6, v7, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    add-double/2addr v10, v1

    .line 60
    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->max(DD)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    return-wide v1
.end method
