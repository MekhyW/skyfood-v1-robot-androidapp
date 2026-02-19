.class public Lcom/reglink/common/ApLogUtils;
.super Ljava/lang/Object;
.source "ApLogUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ApLogUtils"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static copyApLogToUsbStorage(Landroid/content/Context;)Z
    .locals 6

    const-string p0, "aplog_.txt"

    const-string v0, "/mnt/usb_storage/USB_DISK0/udisk0/"

    .line 28
    invoke-static {v0}, Lcom/reglink/common/ApLogUtils;->dirCanWrite(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "ApLogUtils"

    if-eqz v0, :cond_0

    const-string v0, "/mnt/usb_storage/USB_DISK0/udisk0/aplogs/"

    goto :goto_0

    :cond_0
    const-string v0, "/mnt/usb_storage/"

    .line 30
    invoke-static {v0}, Lcom/reglink/common/ApLogUtils;->dirCanWrite(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "/mnt/usb_storage/aplogs/"

    goto :goto_0

    :cond_1
    const-string v0, "/mnt/media_rw/usbotg/"

    .line 32
    invoke-static {v0}, Lcom/reglink/common/ApLogUtils;->dirCanWrite(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "/mnt/media_rw/usbotg/aplogs/"

    goto :goto_0

    :cond_2
    const-string v0, "/mnt/external_sd/"

    .line 34
    invoke-static {v0}, Lcom/reglink/common/ApLogUtils;->dirCanWrite(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "/mnt/external_sd/aplogs/"

    goto :goto_0

    :cond_3
    const-string v0, "/mnt/sdcard2/"

    .line 36
    invoke-static {v0}, Lcom/reglink/common/ApLogUtils;->dirCanWrite(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "/mnt/sdcard2/aplogs/"

    goto :goto_0

    :cond_4
    const-string v0, "/mnt/sdcard/"

    .line 38
    invoke-static {v0}, Lcom/reglink/common/ApLogUtils;->dirCanWrite(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, "/mnt/sdcard/aplogs/"

    :goto_0
    const-string v3, "copyApLogToUsbStorage"

    .line 44
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 46
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 47
    invoke-static {}, Lcom/reglink/common/ReglinkNativeService;->getInstance()Lcom/reglink/common/ReglinkNativeService;

    move-result-object v4

    const-string v5, "rm -rf "

    invoke-virtual {v5, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/reglink/common/ReglinkNativeService;->su(Ljava/lang/String;)I

    .line 49
    :cond_5
    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    .line 52
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\u65f6\u95f4     "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 54
    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string v5, "yyyy\u5e74MM\u6708dd\u65e5    HH\u65f6mm\u5206ss\u79d2"

    invoke-direct {v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 55
    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    invoke-virtual {v4, v5}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\nHardware     "

    .line 56
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    sget-object v4, Landroid/os/Build;->HARDWARE:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    :try_start_0
    new-instance v4, Ljava/io/FileWriter;

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v4, p0}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    .line 61
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v4, p0}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 62
    invoke-virtual {v4}, Ljava/io/FileWriter;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    const-string v3, "an error occured while writing file..."

    .line 64
    invoke-static {v2, v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 66
    :goto_1
    invoke-static {}, Lcom/reglink/common/ReglinkNativeService;->getInstance()Lcom/reglink/common/ReglinkNativeService;

    move-result-object p0

    const-string v2, "cp -r /data/logs/aplogs/* "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/reglink/common/ReglinkNativeService;->su(Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_6

    const/4 v1, 0x1

    :cond_6
    return v1

    :cond_7
    const-string p0, "copyApLogToUsbStorage USB STORAGE NOT FOUND"

    .line 41
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method private static dirCanWrite(Ljava/lang/String;)Z
    .locals 1

    .line 22
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 23
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
