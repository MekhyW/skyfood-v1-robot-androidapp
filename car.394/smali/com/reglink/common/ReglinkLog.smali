.class public Lcom/reglink/common/ReglinkLog;
.super Ljava/lang/Object;
.source "ReglinkLog.java"


# static fields
.field public static final LogLevel_MQTT:I = 0x8

.field static final TAG:Ljava/lang/String; = "ReglinkLog"

.field static final instance:Lcom/reglink/common/ReglinkLog;


# instance fields
.field private logcatPrefix:Ljava/lang/String;

.field simplerFileLogger:Lcom/reglink/common/SimplerFileLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 21
    new-instance v0, Lcom/reglink/common/ReglinkLog;

    invoke-direct {v0}, Lcom/reglink/common/ReglinkLog;-><init>()V

    sput-object v0, Lcom/reglink/common/ReglinkLog;->instance:Lcom/reglink/common/ReglinkLog;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 17
    iput-object v0, p0, Lcom/reglink/common/ReglinkLog;->logcatPrefix:Ljava/lang/String;

    return-void
.end method

.method private _init(Landroid/app/Application;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 28
    iget-object v0, p0, Lcom/reglink/common/ReglinkLog;->simplerFileLogger:Lcom/reglink/common/SimplerFileLogger;

    if-eqz v0, :cond_0

    return-void

    .line 32
    :cond_0
    iput-object p3, p0, Lcom/reglink/common/ReglinkLog;->logcatPrefix:Ljava/lang/String;

    .line 33
    new-instance p3, Lcom/reglink/common/SimplerFileLogger;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-direct {p3, p2, v0}, Lcom/reglink/common/SimplerFileLogger;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/reglink/common/ReglinkLog;->simplerFileLogger:Lcom/reglink/common/SimplerFileLogger;

    .line 34
    invoke-virtual {p1}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object p2

    const-string p3, ""

    .line 37
    :try_start_0
    invoke-virtual {p1}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, p2, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 39
    iget-object p2, p2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object p3, p2

    goto :goto_0

    :catch_0
    move-exception p2

    .line 42
    invoke-virtual {p2}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 44
    :cond_1
    :goto_0
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Package: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ", version: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ReglinkLog"

    invoke-static {p2, p1}, Lcom/reglink/common/ReglinkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private _log(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    if-eqz p2, :cond_8

    if-nez p3, :cond_0

    goto :goto_1

    .line 59
    :cond_0
    iget-object v0, p0, Lcom/reglink/common/ReglinkLog;->simplerFileLogger:Lcom/reglink/common/SimplerFileLogger;

    if-eqz v0, :cond_7

    const/4 v0, 0x2

    if-eq p1, v0, :cond_5

    const/4 v0, 0x3

    if-eq p1, v0, :cond_4

    const/4 v0, 0x5

    if-eq p1, v0, :cond_3

    const/4 v0, 0x6

    if-eq p1, v0, :cond_2

    const/16 v0, 0x8

    if-eq p1, v0, :cond_1

    .line 74
    invoke-direct {p0, p2}, Lcom/reglink/common/ReglinkLog;->makeTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 80
    :cond_1
    invoke-direct {p0, p2}, Lcom/reglink/common/ReglinkLog;->makeTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 67
    :cond_2
    invoke-direct {p0, p2}, Lcom/reglink/common/ReglinkLog;->makeTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 64
    :cond_3
    invoke-direct {p0, p2}, Lcom/reglink/common/ReglinkLog;->makeTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 70
    :cond_4
    invoke-direct {p0, p2}, Lcom/reglink/common/ReglinkLog;->makeTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 77
    :cond_5
    invoke-direct {p0, p2}, Lcom/reglink/common/ReglinkLog;->makeTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    :goto_0
    iget-object v0, p0, Lcom/reglink/common/ReglinkLog;->simplerFileLogger:Lcom/reglink/common/SimplerFileLogger;

    if-eqz v0, :cond_6

    .line 85
    invoke-virtual {v0, p1, p2, p3}, Lcom/reglink/common/SimplerFileLogger;->log(ILjava/lang/String;Ljava/lang/String;)V

    :cond_6
    return-void

    .line 60
    :cond_7
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "init has not been called yet"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 55
    :cond_8
    :goto_1
    new-instance p1, Ljava/lang/Exception;

    const-string p2, "ReglinkLog invalid parameter"

    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x3

    .line 98
    invoke-static {v0, p0, p1}, Lcom/reglink/common/ReglinkLog;->log(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x6

    .line 106
    invoke-static {v0, p0, p1}, Lcom/reglink/common/ReglinkLog;->log(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x4

    .line 110
    invoke-static {v0, p0, p1}, Lcom/reglink/common/ReglinkLog;->log(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static init(Landroid/app/Application;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 24
    sget-object v0, Lcom/reglink/common/ReglinkLog;->instance:Lcom/reglink/common/ReglinkLog;

    invoke-direct {v0, p0, p1, p2}, Lcom/reglink/common/ReglinkLog;->_init(Landroid/app/Application;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static log(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 49
    sget-object v0, Lcom/reglink/common/ReglinkLog;->instance:Lcom/reglink/common/ReglinkLog;

    invoke-direct {v0, p0, p1, p2}, Lcom/reglink/common/ReglinkLog;->_log(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static logMqtt(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/16 v0, 0x8

    .line 114
    invoke-static {v0, p0, p1}, Lcom/reglink/common/ReglinkLog;->log(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private makeTag(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 90
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/reglink/common/ReglinkLog;->logcatPrefix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x2

    .line 94
    invoke-static {v0, p0, p1}, Lcom/reglink/common/ReglinkLog;->log(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x5

    .line 102
    invoke-static {v0, p0, p1}, Lcom/reglink/common/ReglinkLog;->log(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method
