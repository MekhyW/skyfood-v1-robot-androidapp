.class public final Lcom/autoai/research/atools/DeviceInfoUtils;
.super Ljava/lang/Object;
.source "DeviceInfoUtils.java"


# static fields
.field public static final HEAD:Ljava/lang/String; = "dev_mount"

.field public static final IMSI_PREFIX_MOBILE1:Ljava/lang/String; = "46000"

.field public static final IMSI_PREFIX_MOBILE2:Ljava/lang/String; = "46002"

.field public static final IMSI_PREFIX_TELECOM:Ljava/lang/String; = "46003"

.field public static final IMSI_PREFIX_UNICOM:Ljava/lang/String; = "46001"

.field private static final NLABEL:I = 0x1

.field private static final NMOUNT_POINT:I = 0x3

.field private static final NPATH:I = 0x2

.field private static final NSYSFS_PATH:I = 0x4

.field private static final TAG:Ljava/lang/String; = "DeviceUtils"

.field private static final VOLD_FSTAB:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 42
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v2

    .line 43
    invoke-virtual {v2}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "etc"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "vold.fstab"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/autoai/research/atools/DeviceInfoUtils;->VOLD_FSTAB:Ljava/io/File;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBrand()Ljava/lang/String;
    .locals 1

    .line 226
    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    return-object v0
.end method

.method public static getBuildID()Ljava/lang/String;
    .locals 1

    .line 262
    sget-object v0, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    return-object v0
.end method

.method public static getDevInfoList()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/autoai/research/atools/model/DevInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 66
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 67
    sget-object v1, Lcom/autoai/research/atools/DeviceInfoUtils;->VOLD_FSTAB:Ljava/io/File;

    invoke-static {v1}, Lcom/autoai/research/jtools/io/FileUtils;->lineIterator(Ljava/io/File;)Lcom/autoai/research/jtools/io/LineIterator;

    move-result-object v1

    .line 68
    :cond_0
    :goto_0
    invoke-virtual {v1}, Lcom/autoai/research/jtools/io/LineIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 69
    invoke-virtual {v1}, Lcom/autoai/research/jtools/io/LineIterator;->next()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v3, "dev_mount"

    .line 70
    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, " "

    .line 71
    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 72
    array-length v3, v2

    const/4 v4, 0x5

    if-lt v3, v4, :cond_0

    .line 73
    new-instance v3, Lcom/autoai/research/atools/model/DevInfo;

    const/4 v4, 0x1

    aget-object v4, v2, v4

    const/4 v5, 0x2

    aget-object v5, v2, v5

    const/4 v6, 0x3

    aget-object v6, v2, v6

    const/4 v7, 0x4

    aget-object v2, v2, v7

    invoke-direct {v3, v4, v5, v6, v2}, Lcom/autoai/research/atools/model/DevInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 79
    :cond_1
    invoke-virtual {v1}, Lcom/autoai/research/jtools/io/LineIterator;->close()V

    return-object v0
.end method

.method public static getDeviceIMSI(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/autoai/research/atools/io/PermissionException;
        }
    .end annotation

    const-string v0, "android.permission.READ_PHONE_STATE"

    .line 104
    invoke-static {p0, v0}, Lcom/autoai/research/atools/PermissionUtils;->checkPermissionAndThrowException(Landroid/content/Context;Ljava/lang/String;)Z

    .line 105
    invoke-static {p0}, Lcom/autoai/research/atools/DeviceInfoUtils;->getTelephoneManager(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object p0

    .line 106
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object p0

    .line 107
    invoke-static {p0}, Lcom/autoai/research/jtools/StringUtils;->strIsNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, ""

    :cond_0
    return-object p0
.end method

.method public static getDeviceId(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/autoai/research/atools/io/PermissionException;
        }
    .end annotation

    const-string v0, "android.permission.READ_PHONE_STATE"

    .line 91
    invoke-static {p0, v0}, Lcom/autoai/research/atools/PermissionUtils;->checkPermissionAndThrowException(Landroid/content/Context;Ljava/lang/String;)Z

    .line 92
    invoke-static {p0}, Lcom/autoai/research/atools/DeviceInfoUtils;->getTelephoneManager(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object p0

    .line 93
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getDeviceLaunchTime()J
    .locals 6

    .line 309
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v2

    const-wide/32 v4, 0xf4240

    div-long/2addr v2, v4

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public static getDeviceSoftwareVersion(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/autoai/research/atools/io/PermissionException;
        }
    .end annotation

    const-string v0, "android.permission.READ_PHONE_STATE"

    .line 123
    invoke-static {p0, v0}, Lcom/autoai/research/atools/PermissionUtils;->checkPermissionAndThrowException(Landroid/content/Context;Ljava/lang/String;)Z

    .line 124
    invoke-static {p0}, Lcom/autoai/research/atools/DeviceInfoUtils;->getTelephoneManager(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object p0

    .line 125
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getDeviceSoftwareVersion()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getMacAddress()Ljava/lang/String;
    .locals 1

    const-string v0, "wlan0"

    .line 160
    invoke-static {v0}, Lcom/autoai/research/atools/DeviceInfoUtils;->getMacAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getMacAddress(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .line 182
    invoke-static {p0}, Lcom/autoai/research/jtools/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_0

    return-object v1

    .line 187
    :cond_0
    :try_start_0
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    move-result-object v0

    .line 188
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/NetworkInterface;

    .line 189
    invoke-virtual {v2}, Ljava/net/NetworkInterface;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_0

    .line 192
    :cond_1
    invoke-virtual {v2}, Ljava/net/NetworkInterface;->getHardwareAddress()[B

    move-result-object p0

    if-nez p0, :cond_2

    return-object v1

    .line 196
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    move v3, v2

    .line 197
    :goto_1
    array-length v4, p0

    const/4 v5, 0x1

    if-ge v3, v4, :cond_3

    const-string v4, "%02X:"

    new-array v5, v5, [Ljava/lang/Object;

    .line 198
    aget-byte v6, p0, v3

    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 200
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    if-lez p0, :cond_4

    .line 201
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    sub-int/2addr p0, v5

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 203
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 207
    invoke-static {}, Lcom/autoai/research/atools/LogUtils;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "DeviceUtils"

    .line 208
    invoke-static {v0, v1, p0}, Lcom/autoai/research/atools/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_5
    return-object v1
.end method

.method public static getModel()Ljava/lang/String;
    .locals 1

    .line 235
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    return-object v0
.end method

.method public static getOperator(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/autoai/research/atools/io/PermissionException;
        }
    .end annotation

    .line 136
    invoke-static {p0}, Lcom/autoai/research/atools/DeviceInfoUtils;->getTelephoneManager(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    .line 137
    invoke-static {p0}, Lcom/autoai/research/atools/DeviceInfoUtils;->getDeviceIMSI(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_3

    const-string v1, "46000"

    .line 140
    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "46002"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "46001"

    .line 143
    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string p0, "\u4e2d\u56fd\u8054\u901a"

    return-object p0

    :cond_1
    const-string v1, "46003"

    .line 146
    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_3

    const-string p0, "\u4e2d\u56fd\u7535\u4fe1"

    return-object p0

    :cond_2
    :goto_0
    const-string p0, "\u4e2d\u56fd\u79fb\u52a8"

    return-object p0

    .line 151
    :cond_3
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getPhoneNum(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/autoai/research/atools/io/PermissionException;
        }
    .end annotation

    const-string v0, "android.permission.READ_PHONE_STATE"

    .line 171
    invoke-static {p0, v0}, Lcom/autoai/research/atools/PermissionUtils;->checkPermissionAndThrowException(Landroid/content/Context;Ljava/lang/String;)Z

    .line 172
    invoke-static {p0}, Lcom/autoai/research/atools/DeviceInfoUtils;->getTelephoneManager(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object p0

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getRomVersionCode()I
    .locals 1

    .line 253
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    return v0
.end method

.method public static getRomVersionName()Ljava/lang/String;
    .locals 1

    .line 244
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    return-object v0
.end method

.method public static getSystemCountry()Ljava/lang/String;
    .locals 1

    .line 280
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSystemLanguage()Ljava/lang/String;
    .locals 1

    .line 271
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getTelephoneManager(Landroid/content/Context;)Landroid/telephony/TelephonyManager;
    .locals 1

    const-string v0, "phone"

    .line 216
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    return-object p0
.end method
