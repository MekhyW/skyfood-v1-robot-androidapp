.class public Lcn/hutool/core/date/chinese/GanZhi;
.super Ljava/lang/Object;
.source "GanZhi.java"


# static fields
.field private static final GAN:[Ljava/lang/String;

.field private static final ZHI:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    const-string v0, "\u7532"

    const-string v1, "\u4e59"

    const-string v2, "\u4e19"

    const-string v3, "\u4e01"

    const-string v4, "\u620a"

    const-string v5, "\u5df1"

    const-string v6, "\u5e9a"

    const-string v7, "\u8f9b"

    const-string v8, "\u58ec"

    const-string v9, "\u7678"

    .line 21
    filled-new-array/range {v0 .. v9}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/hutool/core/date/chinese/GanZhi;->GAN:[Ljava/lang/String;

    const-string v1, "\u5b50"

    const-string v2, "\u4e11"

    const-string v3, "\u5bc5"

    const-string v4, "\u536f"

    const-string v5, "\u8fb0"

    const-string v6, "\u5df3"

    const-string v7, "\u5348"

    const-string v8, "\u672a"

    const-string v9, "\u7533"

    const-string v10, "\u9149"

    const-string v11, "\u620c"

    const-string v12, "\u4ea5"

    .line 22
    filled-new-array/range {v1 .. v12}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/hutool/core/date/chinese/GanZhi;->ZHI:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static cyclicalm(I)Ljava/lang/String;
    .locals 3

    .line 31
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcn/hutool/core/date/chinese/GanZhi;->GAN:[Ljava/lang/String;

    rem-int/lit8 v2, p0, 0xa

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcn/hutool/core/date/chinese/GanZhi;->ZHI:[Ljava/lang/String;

    rem-int/lit8 p0, p0, 0xc

    aget-object p0, v1, p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getGanzhiOfDay(III)Ljava/lang/String;
    .locals 2

    .line 77
    invoke-static {p0, p1, p2}, Ljava/time/LocalDate;->of(III)Ljava/time/LocalDate;

    move-result-object p0

    invoke-virtual {p0}, Ljava/time/LocalDate;->toEpochDay()J

    move-result-wide p0

    const-wide/16 v0, 0x1

    sub-long/2addr p0, v0

    .line 79
    sget-wide v0, Lcn/hutool/core/date/chinese/LunarInfo;->BASE_DAY:J

    sub-long/2addr p0, v0

    const-wide/16 v0, 0x29

    add-long/2addr p0, v0

    long-to-int p0, p0

    invoke-static {p0}, Lcn/hutool/core/date/chinese/GanZhi;->cyclicalm(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getGanzhiOfMonth(III)Ljava/lang/String;
    .locals 1

    mul-int/lit8 v0, p1, 0x2

    add-int/lit8 v0, v0, -0x1

    .line 57
    invoke-static {p0, v0}, Lcn/hutool/core/date/chinese/SolarTerms;->getTerm(II)I

    move-result v0

    add-int/lit16 p0, p0, -0x76c

    mul-int/lit8 p0, p0, 0xc

    add-int/2addr p0, p1

    add-int/lit8 p0, p0, 0xb

    if-lt p2, v0, :cond_0

    add-int/lit8 p0, p0, 0x1

    .line 63
    :cond_0
    invoke-static {p0}, Lcn/hutool/core/date/chinese/GanZhi;->cyclicalm(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getGanzhiOfYear(I)Ljava/lang/String;
    .locals 0

    add-int/lit16 p0, p0, -0x76c

    add-int/lit8 p0, p0, 0x24

    .line 43
    invoke-static {p0}, Lcn/hutool/core/date/chinese/GanZhi;->cyclicalm(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
