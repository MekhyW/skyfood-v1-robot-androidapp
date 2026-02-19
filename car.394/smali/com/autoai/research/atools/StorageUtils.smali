.class public Lcom/autoai/research/atools/StorageUtils;
.super Ljava/lang/Object;
.source "StorageUtils.java"


# static fields
.field public static final SIZE_AVAIABLE:I = 0x3

.field public static final SIZE_FREE:I = 0x2

.field public static final SIZE_TOTAL:I = 0x1

.field public static final STORAGE_UNIT_B:I = 0x0

.field public static final STORAGE_UNIT_GB:I = 0x3

.field public static final STORAGE_UNIT_KB:I = 0x1

.field public static final STORAGE_UNIT_MB:I = 0x2


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInnerSdcardAvaibleSize(I)J
    .locals 2

    const/4 v0, 0x3

    .line 103
    invoke-static {p0, v0}, Lcom/autoai/research/atools/StorageUtils;->getInnerSdcardSize(II)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getInnerSdcardFreeSize(I)J
    .locals 2

    const/4 v0, 0x2

    .line 93
    invoke-static {p0, v0}, Lcom/autoai/research/atools/StorageUtils;->getInnerSdcardSize(II)J

    move-result-wide v0

    return-wide v0
.end method

.method private static getInnerSdcardSize(II)J
    .locals 2

    .line 165
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/autoai/research/atools/SdcardUtils;->getInnerSdcardPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 166
    invoke-static {v0, p0, p1}, Lcom/autoai/research/atools/StorageUtils;->getSizeByPath(Ljava/io/File;II)J

    move-result-wide p0

    return-wide p0
.end method

.method public static getInnerSdcardTotalSize(I)J
    .locals 2

    const/4 v0, 0x1

    .line 82
    invoke-static {p0, v0}, Lcom/autoai/research/atools/StorageUtils;->getInnerSdcardSize(II)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getOuterSdcardAvaibleSize(Landroid/content/Context;I)J
    .locals 1

    const/4 v0, 0x3

    .line 136
    invoke-static {p0, p1, v0}, Lcom/autoai/research/atools/StorageUtils;->getOuterSdcardSize(Landroid/content/Context;II)J

    move-result-wide p0

    return-wide p0
.end method

.method public static getOuterSdcardFreeSize(Landroid/content/Context;I)J
    .locals 1

    const/4 v0, 0x2

    .line 125
    invoke-static {p0, p1, v0}, Lcom/autoai/research/atools/StorageUtils;->getOuterSdcardSize(Landroid/content/Context;II)J

    move-result-wide p0

    return-wide p0
.end method

.method private static getOuterSdcardSize(Landroid/content/Context;II)J
    .locals 1

    .line 156
    invoke-static {p0}, Lcom/autoai/research/atools/SdcardUtils;->getOuterSdcardPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    .line 157
    invoke-static {p0}, Lcom/autoai/research/jtools/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 p0, 0x0

    return-wide p0

    .line 160
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 161
    invoke-static {v0, p1, p2}, Lcom/autoai/research/atools/StorageUtils;->getSizeByPath(Ljava/io/File;II)J

    move-result-wide p0

    return-wide p0
.end method

.method public static getOuterSdcardTotalSize(Landroid/content/Context;I)J
    .locals 1

    const/4 v0, 0x1

    .line 114
    invoke-static {p0, p1, v0}, Lcom/autoai/research/atools/StorageUtils;->getOuterSdcardSize(Landroid/content/Context;II)J

    move-result-wide p0

    return-wide p0
.end method

.method public static getRomAvaibleSize(I)J
    .locals 2

    const/4 v0, 0x3

    .line 72
    invoke-static {p0, v0}, Lcom/autoai/research/atools/StorageUtils;->getRomSize(II)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getRomFreeSize(I)J
    .locals 2

    const/4 v0, 0x2

    .line 62
    invoke-static {p0, v0}, Lcom/autoai/research/atools/StorageUtils;->getRomSize(II)J

    move-result-wide v0

    return-wide v0
.end method

.method private static getRomSize(II)J
    .locals 1

    .line 170
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    .line 171
    invoke-static {v0, p0, p1}, Lcom/autoai/research/atools/StorageUtils;->getSizeByPath(Ljava/io/File;II)J

    move-result-wide p0

    return-wide p0
.end method

.method public static getRomTotalSize(I)J
    .locals 2

    const/4 v0, 0x1

    .line 51
    invoke-static {p0, v0}, Lcom/autoai/research/atools/StorageUtils;->getRomSize(II)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getSizeByPath(Ljava/io/File;II)J
    .locals 5

    .line 183
    new-instance v0, Landroid/os/StatFs;

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 184
    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSizeLong()J

    move-result-wide v1

    const/4 p0, 0x1

    if-eq p2, p0, :cond_2

    const/4 p0, 0x2

    if-eq p2, p0, :cond_1

    const/4 p0, 0x3

    if-eq p2, p0, :cond_0

    const-wide/16 v3, 0x0

    goto :goto_0

    .line 194
    :cond_0
    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBlocksLong()J

    move-result-wide v3

    goto :goto_0

    .line 191
    :cond_1
    invoke-virtual {v0}, Landroid/os/StatFs;->getFreeBlocksLong()J

    move-result-wide v3

    goto :goto_0

    .line 188
    :cond_2
    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockCountLong()J

    move-result-wide v3

    :goto_0
    mul-long/2addr v3, v1

    .line 200
    invoke-static {v3, v4, p1}, Lcom/autoai/research/jtools/math/NumberUtils;->parseSize(JI)J

    move-result-wide p0

    return-wide p0
.end method
