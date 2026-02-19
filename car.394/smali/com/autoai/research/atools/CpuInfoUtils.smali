.class public final Lcom/autoai/research/atools/CpuInfoUtils;
.super Ljava/lang/Object;
.source "CpuInfoUtils.java"


# static fields
.field public static final ARCH_64:Ljava/lang/String; = "arch64"

.field public static final ARM:Ljava/lang/String; = "arm"

.field public static final CPU:Ljava/lang/String; = "cpu"

.field private static final CPU_ARCH:Ljava/lang/String; = "CPU architecture"

.field private static final CPU_ARCHITECTURE_KEY_64:Ljava/lang/String; = "ro.product.cpu.abilist64"

.field private static final CPU_ARCHITECTURE_TYPE_32:Ljava/lang/String; = "32"

.field private static final CPU_ARCHITECTURE_TYPE_64:Ljava/lang/String; = "64"

.field private static final CPU_CORE_INFO_REVISION:Ljava/lang/String; = "CPU revision"

.field private static final CPU_FEATURES:Ljava/lang/String; = "Features"

.field private static final CPU_FILTER:Ljava/io/FileFilter;

.field private static final CPU_MODEL:Ljava/lang/String; = "Hardware"

.field private static final CPU_PART:Ljava/lang/String; = "CPU part"

.field private static final CPU_REVISION:Ljava/lang/String; = "Revision"

.field private static final CPU_SERIAL:Ljava/lang/String; = "Serial"

.field private static final CPU_VARIANT:Ljava/lang/String; = "CPU variant"

.field private static final DEVICEINFO_UNKNOWN:I = -0x1

.field private static final EI_CLASS:I = 0x4

.field private static final ELFCLASS64:I = 0x2

.field private static final PROC_CPU_INFO_PATH:Ljava/lang/String; = "/proc/cpuinfo"

.field public static final RO_PRODUCT_CPU_ABI:Ljava/lang/String; = "ro.product.cpu.abi"

.field public static final SYSTEM_BIN_CAT:Ljava/lang/String; = "/system/bin/cat"

.field private static final SYSTEM_LIB_C_PATH:Ljava/lang/String; = "/system/lib/libc.so"

.field private static final SYSTEM_LIB_C_PATH_64:Ljava/lang/String; = "/system/lib64/libc.so"

.field public static final SYS_DEVICES_SYSTEM_CPU:Ljava/lang/String; = "/sys/devices/system/cpu/"

.field private static final TAG:Ljava/lang/String; = "CpuInfoUtils"

.field public static final X_86:Ljava/lang/String; = "x86"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 302
    new-instance v0, Lcom/autoai/research/atools/CpuInfoUtils$1;

    invoke-direct {v0}, Lcom/autoai/research/atools/CpuInfoUtils$1;-><init>()V

    sput-object v0, Lcom/autoai/research/atools/CpuInfoUtils;->CPU_FILTER:Ljava/io/FileFilter;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkIfCPUx86()Z
    .locals 2

    const-string v0, "ro.product.cpu.abi"

    const-string v1, "arm"

    .line 87
    invoke-static {v0, v1}, Lcom/autoai/research/atools/CpuInfoUtils;->getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "x86"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method private static containHeader(Ljava/io/File;I)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    .line 172
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 176
    :cond_0
    invoke-static {p0}, Lcom/autoai/research/atools/CpuInfoUtils;->readELFHeadrIndentArray(Ljava/io/File;)[B

    move-result-object p0

    if-eqz p0, :cond_1

    const/4 v1, 0x4

    .line 177
    aget-byte p0, p0, v1

    if-ne p0, p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    :goto_0
    return v0
.end method

.method public static getArchType()Ljava/lang/String;
    .locals 4

    const-string v0, "ro.product.cpu.abilist64"

    const-string v1, ""

    .line 96
    invoke-static {v0, v1}, Lcom/autoai/research/atools/CpuInfoUtils;->getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const-string v1, "CpuInfoUtils"

    const-string v2, "64"

    if-lez v0, :cond_1

    .line 97
    invoke-static {}, Lcom/autoai/research/atools/LogUtils;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "CPU arch is 64bit"

    .line 98
    invoke-static {v1, v0}, Lcom/autoai/research/atools/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-object v2

    .line 101
    :cond_1
    new-instance v0, Ljava/io/File;

    const-string v3, "/proc/cpuinfo"

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/autoai/research/atools/CpuInfoUtils;->isCPUInfo64(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_2

    return-object v2

    :cond_2
    const-string v0, "/system/lib/libc.so"

    const-string v3, "/system/lib64/libc.so"

    .line 103
    filled-new-array {v0, v3}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/autoai/research/atools/CpuInfoUtils;->isLibc64([Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    return-object v2

    .line 106
    :cond_3
    invoke-static {}, Lcom/autoai/research/atools/LogUtils;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "return cpu DEFAULT 32bit!"

    .line 107
    invoke-static {v1, v0}, Lcom/autoai/research/atools/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    const-string v0, "32"

    return-object v0
.end method

.method public static getCPUABI()Ljava/lang/String;
    .locals 1

    .line 215
    sget-object v0, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    return-object v0
.end method

.method public static getCpuInfo()Lcom/autoai/research/atools/model/CPUInfo;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 225
    new-instance v0, Lcom/autoai/research/atools/model/CPUInfo;

    invoke-direct {v0}, Lcom/autoai/research/atools/model/CPUInfo;-><init>()V

    .line 227
    new-instance v1, Ljava/io/File;

    const-string v2, "/proc/cpuinfo"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/autoai/research/jtools/io/FileUtils;->lineIterator(Ljava/io/File;)Lcom/autoai/research/jtools/io/LineIterator;

    move-result-object v1

    .line 228
    invoke-virtual {v1}, Lcom/autoai/research/jtools/io/LineIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 229
    invoke-virtual {v1}, Lcom/autoai/research/jtools/io/LineIterator;->next()Ljava/lang/String;

    move-result-object v2

    .line 230
    invoke-static {v2}, Lcom/autoai/research/atools/CpuInfoUtils;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 231
    invoke-virtual {v0, v2}, Lcom/autoai/research/atools/model/CPUInfo;->setCpuName(Ljava/lang/String;)V

    .line 233
    :cond_0
    :goto_0
    invoke-virtual {v1}, Lcom/autoai/research/jtools/io/LineIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 234
    invoke-virtual {v1}, Lcom/autoai/research/jtools/io/LineIterator;->next()Ljava/lang/String;

    move-result-object v2

    const-string v3, ":"

    .line 235
    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 236
    array-length v3, v2

    const/4 v4, 0x2

    if-ge v3, v4, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    .line 239
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

    goto/16 :goto_2

    :sswitch_0
    const-string v3, "CPU part"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_1

    :cond_2
    const/4 v4, 0x7

    goto :goto_2

    :sswitch_1
    const-string v3, "CPU revision"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    goto :goto_1

    :cond_3
    const/4 v4, 0x6

    goto :goto_2

    :sswitch_2
    const-string v3, "CPU architecture"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    goto :goto_1

    :cond_4
    const/4 v4, 0x5

    goto :goto_2

    :sswitch_3
    const-string v3, "Hardware"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    goto :goto_1

    :cond_5
    const/4 v4, 0x4

    goto :goto_2

    :sswitch_4
    const-string v3, "Revision"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    goto :goto_1

    :cond_6
    const/4 v4, 0x3

    goto :goto_2

    :sswitch_5
    const-string v3, "Features"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    goto :goto_1

    :sswitch_6
    const-string v3, "CPU variant"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    goto :goto_1

    :cond_7
    move v4, v7

    goto :goto_2

    :sswitch_7
    const-string v4, "Serial"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    goto :goto_1

    :cond_8
    move v4, v3

    :cond_9
    :goto_2
    packed-switch v4, :pswitch_data_0

    goto/16 :goto_0

    .line 262
    :pswitch_0
    aget-object v2, v2, v7

    invoke-virtual {v0, v2}, Lcom/autoai/research/atools/model/CPUInfo;->setCpuPart(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 247
    :pswitch_1
    aget-object v2, v2, v7

    invoke-virtual {v0, v2}, Lcom/autoai/research/atools/model/CPUInfo;->setCpuCoreInfoRevision(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 256
    :pswitch_2
    aget-object v2, v2, v7

    invoke-virtual {v0, v2}, Lcom/autoai/research/atools/model/CPUInfo;->setCpuArch(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 250
    :pswitch_3
    aget-object v2, v2, v7

    invoke-virtual {v0, v2}, Lcom/autoai/research/atools/model/CPUInfo;->setCpuModel(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 244
    :pswitch_4
    aget-object v2, v2, v7

    invoke-virtual {v0, v2}, Lcom/autoai/research/atools/model/CPUInfo;->setCpuRevision(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 253
    :pswitch_5
    aget-object v2, v2, v7

    invoke-virtual {v0, v2}, Lcom/autoai/research/atools/model/CPUInfo;->setCpuFeatures(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 259
    :pswitch_6
    aget-object v2, v2, v7

    invoke-virtual {v0, v2}, Lcom/autoai/research/atools/model/CPUInfo;->setCpuVariant(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 241
    :pswitch_7
    aget-object v2, v2, v7

    invoke-virtual {v0, v2}, Lcom/autoai/research/atools/model/CPUInfo;->setCpuSerial(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_a
    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x6c9915ec -> :sswitch_7
        -0x6c365613 -> :sswitch_6
        -0xd78b7a3 -> :sswitch_5
        -0xbb0e405 -> :sswitch_4
        0xad24a08 -> :sswitch_3
        0x1ecf70eb -> :sswitch_2
        0x205b4b73 -> :sswitch_1
        0x4ae4838b -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getCurCpuFreq()Ljava/lang/String;
    .locals 2

    const-string v0, "/system/bin/cat"

    const-string v1, "/sys/devices/system/cpu/cpu0/cpufreq/scaling_cur_freq"

    .line 370
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    .line 372
    invoke-static {v0}, Lcom/autoai/research/atools/CpuInfoUtils;->getString([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getMaxCpuFreq()Ljava/lang/String;
    .locals 2

    const-string v0, "/system/bin/cat"

    const-string v1, "/sys/devices/system/cpu/cpu0/cpufreq/cpuinfo_max_freq"

    .line 359
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    .line 361
    invoke-static {v0}, Lcom/autoai/research/atools/CpuInfoUtils;->getString([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getMinCpuFreq()Ljava/lang/String;
    .locals 2

    const-string v0, "/system/bin/cat"

    const-string v1, "/sys/devices/system/cpu/cpu0/cpufreq/cpuinfo_min_freq"

    .line 325
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    .line 327
    invoke-static {v0}, Lcom/autoai/research/atools/CpuInfoUtils;->getString([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getNumberOfCPUCores()I
    .locals 2

    .line 294
    :try_start_0
    new-instance v0, Ljava/io/File;

    const-string v1, "/sys/devices/system/cpu/"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/autoai/research/atools/CpuInfoUtils;->CPU_FILTER:Ljava/io/FileFilter;

    invoke-virtual {v0, v1}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v0

    array-length v0, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method private static getString([Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 331
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 334
    :try_start_0
    new-instance v1, Ljava/lang/ProcessBuilder;

    invoke-direct {v1, p0}, Ljava/lang/ProcessBuilder;-><init>([Ljava/lang/String;)V

    .line 335
    invoke-virtual {v1}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;

    move-result-object p0

    .line 336
    invoke-virtual {p0}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object p0

    const/16 v1, 0x18

    new-array v1, v1, [B

    .line 338
    :goto_0
    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 339
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 341
    :cond_0
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 343
    invoke-static {}, Lcom/autoai/research/atools/LogUtils;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "CpuInfoUtils"

    const-string v2, ""

    .line 344
    invoke-static {v1, v2, p0}, Lcom/autoai/research/atools/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    const-string p0, "N/A"

    .line 346
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 348
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    const-string v0, "CpuInfoUtils"

    :try_start_0
    const-string v1, "android.os.SystemProperties"

    .line 116
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "get"

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Class;

    .line 117
    const-class v5, Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const-class v5, Ljava/lang/String;

    const/4 v7, 0x1

    aput-object v5, v4, v7

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p0, v3, v6

    const-string v4, ""

    aput-object v4, v3, v7

    .line 118
    invoke-virtual {v2, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    move-object v2, v1

    check-cast v2, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object p1, v1

    goto :goto_0

    :catch_0
    move-exception v1

    .line 120
    invoke-static {}, Lcom/autoai/research/atools/LogUtils;->isLoggable()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 121
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "key = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", error = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/autoai/research/atools/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    :cond_0
    :goto_0
    invoke-static {}, Lcom/autoai/research/atools/LogUtils;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 125
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, " = "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/autoai/research/atools/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-object p1
.end method

.method private static getValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, ":"

    .line 274
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x1

    .line 275
    aget-object p0, p0, v0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static isCPUInfo64(Ljava/io/File;)Z
    .locals 3

    const/4 v0, 0x0

    .line 136
    :try_start_0
    invoke-static {p0}, Lcom/autoai/research/jtools/io/FileUtils;->lineIterator(Ljava/io/File;)Lcom/autoai/research/jtools/io/LineIterator;

    move-result-object v0

    .line 137
    :cond_0
    invoke-virtual {v0}, Lcom/autoai/research/jtools/io/LineIterator;->hasNext()Z

    move-result p0

    if-eqz p0, :cond_2

    .line 138
    invoke-virtual {v0}, Lcom/autoai/research/jtools/io/LineIterator;->next()Ljava/lang/String;

    move-result-object p0

    const-string v1, "arch64"

    .line 139
    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_0

    if-eqz v0, :cond_1

    .line 150
    invoke-virtual {v0}, Lcom/autoai/research/jtools/io/LineIterator;->close()V

    :cond_1
    const/4 p0, 0x1

    return p0

    :cond_2
    if-eqz v0, :cond_4

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 144
    :try_start_1
    invoke-static {}, Lcom/autoai/research/atools/LogUtils;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "CpuInfoUtils"

    const-string v2, ""

    .line 145
    invoke-static {v1, v2, p0}, Lcom/autoai/research/atools/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_3
    if-eqz v0, :cond_4

    .line 150
    :goto_0
    invoke-virtual {v0}, Lcom/autoai/research/jtools/io/LineIterator;->close()V

    :cond_4
    const/4 p0, 0x0

    return p0

    :goto_1
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/autoai/research/jtools/io/LineIterator;->close()V

    :cond_5
    throw p0
.end method

.method private static varargs isLibc64([Ljava/lang/String;)Z
    .locals 5

    .line 162
    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p0, v2

    .line 163
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x2

    .line 164
    invoke-static {v4, v3}, Lcom/autoai/research/atools/CpuInfoUtils;->containHeader(Ljava/io/File;I)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method private static readELFHeadrIndentArray(Ljava/io/File;)[B
    .locals 5

    const-string v0, "CpuInfoUtils"

    const-string v1, "Error: e_indent lenght should be 16, but actual is "

    if-eqz p0, :cond_2

    .line 185
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 187
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/16 p0, 0x10

    :try_start_1
    new-array v3, p0, [B

    const/4 v4, 0x0

    .line 191
    invoke-virtual {v2, v3, v4, p0}, Ljava/io/FileInputStream;->read([BII)I

    move-result v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ne v4, p0, :cond_0

    .line 199
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    return-object v3

    .line 195
    :cond_0
    :try_start_3
    invoke-static {}, Lcom/autoai/research/atools/LogUtils;->isLoggable()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 196
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/autoai/research/atools/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 199
    :cond_1
    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_1

    :catchall_0
    move-exception p0

    .line 186
    :try_start_5
    throw p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception v1

    .line 199
    :try_start_6
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v2

    :try_start_7
    invoke-virtual {p0, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v1
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    :catch_0
    move-exception p0

    .line 200
    invoke-static {}, Lcom/autoai/research/atools/LogUtils;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 201
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/autoai/research/atools/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    :cond_2
    :goto_1
    sget-object p0, Lcom/autoai/research/jtools/math/ByteUtils;->EMPTY_BYTE_ARRAY:[B

    return-object p0
.end method
