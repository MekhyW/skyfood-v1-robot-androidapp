.class public final Lcom/autoai/research/atools/CameraInfoUtils;
.super Ljava/lang/Object;
.source "CameraInfoUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CameraInfo"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBackCameraResolution(Landroid/content/Context;)J
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/autoai/research/atools/io/PermissionException;
        }
    .end annotation

    const-string v0, "android.permission.CAMERA"

    .line 67
    invoke-static {p0, v0}, Lcom/autoai/research/atools/PermissionUtils;->checkPermissionAndThrowException(Landroid/content/Context;Ljava/lang/String;)Z

    const/4 p0, 0x0

    .line 68
    invoke-static {p0}, Lcom/autoai/research/atools/CameraInfoUtils;->getCameraResolution(I)[I

    move-result-object v0

    .line 69
    aget p0, v0, p0

    int-to-long v1, p0

    const/4 p0, 0x1

    aget p0, v0, p0

    int-to-long v3, p0

    mul-long/2addr v1, v3

    return-wide v1
.end method

.method private static getCameraResolution(I)[I
    .locals 9

    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    .line 76
    :try_start_0
    invoke-static {p0}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;

    move-result-object v1

    .line 77
    invoke-virtual {v1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object p0

    .line 78
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getSupportedPictureSizes()Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 79
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 80
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    .line 81
    new-array v3, v2, [I

    .line 82
    new-array v4, v2, [I

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    if-ge v6, v2, :cond_0

    .line 84
    invoke-interface {p0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/hardware/Camera$Size;

    .line 85
    iget v8, v7, Landroid/hardware/Camera$Size;->height:I

    aput v8, v3, v6

    .line 86
    iget v7, v7, Landroid/hardware/Camera$Size;->width:I

    aput v7, v4, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 88
    :cond_0
    invoke-static {v4}, Ljava/util/Arrays;->sort([I)V

    const/4 p0, 0x1

    sub-int/2addr v2, p0

    .line 89
    aget v4, v4, v2

    aput v4, v0, v5

    .line 90
    invoke-static {v3}, Ljava/util/Arrays;->sort([I)V

    .line 91
    aget v2, v3, v2

    aput v2, v0, p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    if-eqz v1, :cond_3

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_0
    move-exception p0

    .line 94
    :try_start_1
    invoke-static {}, Lcom/autoai/research/atools/LogUtils;->isLoggable()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "CameraInfo"

    const-string v3, ""

    .line 95
    invoke-static {v2, v3, p0}, Lcom/autoai/research/atools/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    if-eqz v1, :cond_3

    .line 99
    :goto_1
    invoke-virtual {v1}, Landroid/hardware/Camera;->release()V

    :cond_3
    return-object v0

    :goto_2
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Landroid/hardware/Camera;->release()V

    :cond_4
    throw p0
.end method

.method public static getFrontCameraResolution(Landroid/content/Context;)J
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/autoai/research/atools/io/PermissionException;
        }
    .end annotation

    const-string v0, "android.permission.CAMERA"

    .line 53
    invoke-static {p0, v0}, Lcom/autoai/research/atools/PermissionUtils;->checkPermissionAndThrowException(Landroid/content/Context;Ljava/lang/String;)Z

    const/4 p0, 0x1

    .line 54
    invoke-static {p0}, Lcom/autoai/research/atools/CameraInfoUtils;->getCameraResolution(I)[I

    move-result-object v0

    const/4 v1, 0x0

    .line 55
    aget v1, v0, v1

    int-to-long v1, v1

    aget p0, v0, p0

    int-to-long v3, p0

    mul-long/2addr v1, v3

    return-wide v1
.end method

.method public static hasCameraHardware(Landroid/content/Context;)Z
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 41
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v0, "android.hardware.camera"

    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method
