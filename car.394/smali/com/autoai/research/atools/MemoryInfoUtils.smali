.class public final Lcom/autoai/research/atools/MemoryInfoUtils;
.super Ljava/lang/Object;
.source "MemoryInfoUtils.java"


# static fields
.field private static final BUFFERS:Ljava/lang/String; = "Buffers"

.field private static final CACHED:Ljava/lang/String; = "Cached"

.field private static final MEMORY_AVAILABLE:Ljava/lang/String; = "MemAvailable"

.field private static final MEMORY_FREE:Ljava/lang/String; = "MemFree"

.field private static final MEMORY_TOTAL:Ljava/lang/String; = "MemTotal"

.field public static final PROC_MEMINFO:Ljava/lang/String; = "/proc/meminfo"

.field private static final SWAP_FREE:Ljava/lang/String; = "SwapFree"

.field private static final SWAP_TOTAL:Ljava/lang/String; = "SwapTotal"

.field private static final TAG:Ljava/lang/String; = "MemoryInfoUtils"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getMemAvaileSize(Landroid/content/Context;I)J
    .locals 6

    const-string v0, "MemoryInfoUtils"

    const-string v1, "getMemTotalSize   availMem="

    .line 136
    :try_start_0
    invoke-static {p0}, Lcom/autoai/research/atools/MemoryInfoUtils;->getMemoryInfo(Landroid/content/Context;)Landroid/app/ActivityManager$MemoryInfo;

    move-result-object p0

    .line 138
    iget-wide v2, p0, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    .line 139
    invoke-static {}, Lcom/autoai/research/atools/LogUtils;->isLoggable()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 140
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/autoai/research/atools/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-wide/16 v4, 0x0

    cmp-long p0, v2, v4

    if-lez p0, :cond_1

    .line 143
    invoke-static {v2, v3, p1}, Lcom/autoai/research/jtools/math/NumberUtils;->parseSize(JI)J

    move-result-wide v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-wide v2

    :catch_0
    move-exception p0

    .line 147
    invoke-static {}, Lcom/autoai/research/atools/LogUtils;->isLoggable()Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "getMemTotalSize   err:"

    .line 148
    invoke-static {v0, p1, p0}, Lcom/autoai/research/atools/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    const-wide/16 p0, -0x1

    return-wide p0
.end method

.method public static getMemTotalSize(Landroid/content/Context;I)J
    .locals 6

    const-string v0, "MemoryInfoUtils"

    const-string v1, "getMemTotalSize   totalMem="

    .line 98
    :try_start_0
    invoke-static {p0}, Lcom/autoai/research/atools/MemoryInfoUtils;->getMemoryInfo(Landroid/content/Context;)Landroid/app/ActivityManager$MemoryInfo;

    move-result-object p0

    .line 100
    iget-wide v2, p0, Landroid/app/ActivityManager$MemoryInfo;->totalMem:J

    .line 101
    invoke-static {}, Lcom/autoai/research/atools/LogUtils;->isLoggable()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 102
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/autoai/research/atools/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-wide/16 v4, 0x0

    cmp-long p0, v2, v4

    if-lez p0, :cond_1

    .line 105
    invoke-static {v2, v3, p1}, Lcom/autoai/research/jtools/math/NumberUtils;->parseSize(JI)J

    move-result-wide v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-wide v2

    :catch_0
    move-exception p0

    .line 109
    invoke-static {}, Lcom/autoai/research/atools/LogUtils;->isLoggable()Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "getMemTotalSize   err:"

    .line 110
    invoke-static {v0, p1, p0}, Lcom/autoai/research/atools/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    const-wide/16 p0, -0x1

    return-wide p0
.end method

.method private static getMemoryInfo(Landroid/content/Context;)Landroid/app/ActivityManager$MemoryInfo;
    .locals 1

    const-string v0, "activity"

    .line 119
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager;

    .line 120
    new-instance v0, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v0}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    .line 121
    invoke-virtual {p0, v0}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    return-object v0
.end method

.method public static getMemoryInfo()Lcom/autoai/research/atools/model/MemoryInfo;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 47
    new-instance v0, Lcom/autoai/research/atools/model/MemoryInfo;

    invoke-direct {v0}, Lcom/autoai/research/atools/model/MemoryInfo;-><init>()V

    .line 48
    new-instance v1, Ljava/io/File;

    const-string v2, "/proc/meminfo"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/autoai/research/jtools/io/FileUtils;->lineIterator(Ljava/io/File;)Lcom/autoai/research/jtools/io/LineIterator;

    move-result-object v1

    .line 49
    :goto_0
    invoke-virtual {v1}, Lcom/autoai/research/jtools/io/LineIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 50
    invoke-virtual {v1}, Lcom/autoai/research/jtools/io/LineIterator;->next()Ljava/lang/String;

    move-result-object v2

    const-string v3, ":"

    .line 51
    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 52
    array-length v3, v2

    const/4 v4, 0x2

    if-ge v3, v4, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 55
    aget-object v5, v2, v3

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v6

    const/4 v7, 0x1

    const/4 v8, -0x1

    sparse-switch v6, :sswitch_data_0

    :goto_1
    move v4, v8

    goto :goto_2

    :sswitch_0
    const-string v3, "Cached"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    const/4 v4, 0x6

    goto :goto_2

    :sswitch_1
    const-string v3, "Buffers"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_1

    :cond_2
    const/4 v4, 0x5

    goto :goto_2

    :sswitch_2
    const-string v3, "MemAvailable"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    goto :goto_1

    :cond_3
    const/4 v4, 0x4

    goto :goto_2

    :sswitch_3
    const-string v3, "SwapTotal"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    goto :goto_1

    :cond_4
    const/4 v4, 0x3

    goto :goto_2

    :sswitch_4
    const-string v3, "SwapFree"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    goto :goto_1

    :sswitch_5
    const-string v3, "MemTotal"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    goto :goto_1

    :cond_5
    move v4, v7

    goto :goto_2

    :sswitch_6
    const-string v4, "MemFree"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    goto :goto_1

    :cond_6
    move v4, v3

    :cond_7
    :goto_2
    packed-switch v4, :pswitch_data_0

    goto :goto_0

    .line 63
    :pswitch_0
    aget-object v2, v2, v7

    invoke-static {v2}, Lcom/autoai/research/atools/MemoryInfoUtils;->parseLongByString(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/autoai/research/atools/model/MemoryInfo;->setCache(J)V

    goto/16 :goto_0

    .line 75
    :pswitch_1
    aget-object v2, v2, v7

    invoke-static {v2}, Lcom/autoai/research/atools/MemoryInfoUtils;->parseLongByString(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/autoai/research/atools/model/MemoryInfo;->setBuffers(J)V

    goto/16 :goto_0

    .line 72
    :pswitch_2
    aget-object v2, v2, v7

    invoke-static {v2}, Lcom/autoai/research/atools/MemoryInfoUtils;->parseLongByString(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/autoai/research/atools/model/MemoryInfo;->setMemoryAvailable(J)V

    goto/16 :goto_0

    .line 66
    :pswitch_3
    aget-object v2, v2, v7

    invoke-static {v2}, Lcom/autoai/research/atools/MemoryInfoUtils;->parseLongByString(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/autoai/research/atools/model/MemoryInfo;->setSwapTotal(J)V

    goto/16 :goto_0

    .line 69
    :pswitch_4
    aget-object v2, v2, v7

    invoke-static {v2}, Lcom/autoai/research/atools/MemoryInfoUtils;->parseLongByString(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/autoai/research/atools/model/MemoryInfo;->setSwapFree(J)V

    goto/16 :goto_0

    .line 57
    :pswitch_5
    aget-object v2, v2, v7

    invoke-static {v2}, Lcom/autoai/research/atools/MemoryInfoUtils;->parseLongByString(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/autoai/research/atools/model/MemoryInfo;->setMemoryTotal(J)V

    goto/16 :goto_0

    .line 60
    :pswitch_6
    aget-object v2, v2, v7

    invoke-static {v2}, Lcom/autoai/research/atools/MemoryInfoUtils;->parseLongByString(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/autoai/research/atools/model/MemoryInfo;->setMemoryFree(J)V

    goto/16 :goto_0

    .line 81
    :cond_8
    invoke-virtual {v1}, Lcom/autoai/research/jtools/io/LineIterator;->close()V

    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x64452a3f -> :sswitch_6
        -0x239bf971 -> :sswitch_5
        -0xf270141 -> :sswitch_4
        0x2b0afd51 -> :sswitch_3
        0x5da21894 -> :sswitch_2
        0x70cf8c13 -> :sswitch_1
        0x77da2d42 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static parseLongByString(Ljava/lang/String;)J
    .locals 2

    .line 86
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    const-string v0, "kb"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method
