.class public Lcom/reglink/common/MTKLogUtils;
.super Ljava/lang/Object;
.source "MTKLogUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MtkLogUtils"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static copyMtkLogToUsbStorage(Landroid/content/Context;)Z
    .locals 4

    const-string p0, "/mnt/usb_storage/USB_DISK0/udisk0/"

    .line 26
    invoke-static {p0}, Lcom/reglink/common/MTKLogUtils;->dirCanWrite(Ljava/lang/String;)Z

    move-result p0

    const/4 v0, 0x0

    const-string v1, "MtkLogUtils"

    if-eqz p0, :cond_0

    const-string p0, "/mnt/usb_storage/USB_DISK0/udisk0/mtklog/"

    goto :goto_0

    :cond_0
    const-string p0, "/mnt/usb_storage/"

    .line 28
    invoke-static {p0}, Lcom/reglink/common/MTKLogUtils;->dirCanWrite(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    const-string p0, "/mnt/usb_storage/mtklog/"

    goto :goto_0

    :cond_1
    const-string p0, "/mnt/media_rw/usbotg/"

    .line 30
    invoke-static {p0}, Lcom/reglink/common/MTKLogUtils;->dirCanWrite(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    const-string p0, "/mnt/media_rw/usbotg/mtklog/"

    goto :goto_0

    :cond_2
    const-string p0, "/mnt/external_sd/"

    .line 32
    invoke-static {p0}, Lcom/reglink/common/MTKLogUtils;->dirCanWrite(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_3

    const-string p0, "/mnt/external_sd/mtklog/"

    goto :goto_0

    :cond_3
    const-string p0, "/mnt/sdcard2/"

    .line 34
    invoke-static {p0}, Lcom/reglink/common/MTKLogUtils;->dirCanWrite(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_4

    const-string p0, "/mnt/sdcard2/mtklog/"

    goto :goto_0

    :cond_4
    const-string p0, "/mnt/sdcard/"

    .line 36
    invoke-static {p0}, Lcom/reglink/common/MTKLogUtils;->dirCanWrite(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_7

    const-string p0, "/mnt/sdcard/mtklog/"

    :goto_0
    const-string v2, "copyMtkLogToUsbStorage"

    .line 42
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 44
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 45
    invoke-static {}, Lcom/reglink/common/ReglinkNativeService;->getInstance()Lcom/reglink/common/ReglinkNativeService;

    move-result-object v2

    const-string v3, "rm -rf "

    invoke-virtual {v3, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/reglink/common/ReglinkNativeService;->su(Ljava/lang/String;)I

    .line 47
    :cond_5
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 51
    invoke-static {}, Lcom/reglink/common/ReglinkNativeService;->getInstance()Lcom/reglink/common/ReglinkNativeService;

    move-result-object v1

    const-string v2, "cp -r /sdcard/mtklog/* "

    invoke-virtual {v2, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/reglink/common/ReglinkNativeService;->su(Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_6

    const/4 v0, 0x1

    :cond_6
    return v0

    :cond_7
    const-string p0, "copyMtkLogToUsbStorage USB STORAGE NOT FOUND"

    .line 39
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method private static dirCanWrite(Ljava/lang/String;)Z
    .locals 1

    .line 20
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 21
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
