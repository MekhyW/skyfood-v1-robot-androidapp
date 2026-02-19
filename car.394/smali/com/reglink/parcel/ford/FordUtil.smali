.class public Lcom/reglink/parcel/ford/FordUtil;
.super Ljava/lang/Object;
.source "FordUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static AMFreq2Int(I)I
    .locals 0

    return p0
.end method

.method public static FMFreq2Int(F)I
    .locals 1

    const/high16 v0, 0x42c80000    # 100.0f

    mul-float/2addr p0, v0

    float-to-int p0, p0

    return p0
.end method

.method public static Int2AMFreq(I)I
    .locals 0

    return p0
.end method

.method public static Int2FMFreq(I)F
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    int-to-float p0, p0

    mul-float/2addr p0, v0

    const/high16 v0, 0x42c80000    # 100.0f

    div-float/2addr p0, v0

    return p0
.end method

.method public static formatHz(Ljava/lang/String;I)Ljava/lang/String;
    .locals 3

    .line 43
    invoke-static {p0}, Lcom/reglink/parcel/ford/FordUtil;->isAM(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    new-array p0, v2, [Ljava/lang/Object;

    .line 44
    invoke-static {p1}, Lcom/reglink/parcel/ford/FordUtil;->Int2AMFreq(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p0, v1

    const-string p1, "%d KHz"

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 45
    :cond_0
    invoke-static {p0}, Lcom/reglink/parcel/ford/FordUtil;->isFM(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    new-array p0, v2, [Ljava/lang/Object;

    .line 47
    invoke-static {p1}, Lcom/reglink/parcel/ford/FordUtil;->Int2FMFreq(I)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    aput-object p1, p0, v1

    const-string p1, "%.2f MHz"

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const-string p0, ""

    return-object p0
.end method

.method public static isAM(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "am"

    .line 12
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "am_ast"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "am2"

    .line 13
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static isFM(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "fm"

    .line 19
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "fm_ast"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "fm2"

    .line 20
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static unicodeBytesToString([BII)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 71
    invoke-static {p0, p1, p2, v0}, Lcom/reglink/parcel/ford/FordUtil;->unicodeBytesToString([BIIZ)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static unicodeBytesToString([BIIZ)Ljava/lang/String;
    .locals 3

    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p3, :cond_1

    move p3, p1

    :goto_0
    add-int v1, p1, p2

    if-ge p3, v1, :cond_3

    .line 56
    invoke-static {p0, p3}, Lcom/reglink/common/BinaryUtil;->readUShortLE([BI)I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_2

    .line 58
    :cond_0
    new-instance v2, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Character;->toChars(I)[C

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 p3, p3, 0x2

    goto :goto_0

    :cond_1
    move p3, p1

    :goto_1
    add-int v1, p1, p2

    if-ge p3, v1, :cond_3

    .line 62
    invoke-static {p0, p3}, Lcom/reglink/common/BinaryUtil;->readUShortBE([BI)I

    move-result v1

    if-nez v1, :cond_2

    goto :goto_2

    .line 64
    :cond_2
    new-instance v2, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Character;->toChars(I)[C

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 p3, p3, 0x2

    goto :goto_1

    .line 67
    :cond_3
    :goto_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
