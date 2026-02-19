.class public Lcom/reglink/common/BuildProp;
.super Ljava/lang/Object;
.source "BuildProp.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "BuildProp"

.field private static instance_:Lcom/reglink/common/BuildProp;


# instance fields
.field private properties:Ljava/util/Properties;


# direct methods
.method private constructor <init>()V
    .locals 6

    const-string v0, "BuildProp"

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v1, Ljava/util/Properties;

    invoke-direct {v1}, Ljava/util/Properties;-><init>()V

    iput-object v1, p0, Lcom/reglink/common/BuildProp;->properties:Ljava/util/Properties;

    const/4 v1, 0x0

    .line 22
    :try_start_0
    invoke-static {}, Lcom/reglink/common/ReglinkNativeService;->getInstance()Lcom/reglink/common/ReglinkNativeService;

    move-result-object v2

    const-string v3, "/system/bin/reglink_build.prop"

    sget v4, Lcom/reglink/common/Fcntl;->O_RDONLY:I

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Lcom/reglink/common/ReglinkNativeService;->open(Ljava/lang/String;II)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 24
    new-instance v2, Ljava/io/FileInputStream;

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 25
    iget-object v3, p0, Lcom/reglink/common/BuildProp;->properties:Ljava/util/Properties;

    invoke-virtual {v3, v2}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 26
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    if-eqz v1, :cond_1

    .line 35
    :try_start_1
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v2

    .line 31
    :try_start_2
    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v1, :cond_1

    .line 35
    :try_start_3
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    :catch_1
    move-exception v2

    .line 29
    :try_start_4
    invoke-virtual {v2}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v1, :cond_1

    .line 35
    :try_start_5
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_0

    :catch_2
    move-exception v0

    .line 37
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_1
    :goto_0
    return-void

    :goto_1
    if-eqz v1, :cond_2

    .line 35
    :try_start_6
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_2

    :catch_3
    move-exception v1

    .line 37
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 38
    :cond_2
    :goto_2
    throw v0
.end method

.method public static dump(Ljava/io/PrintWriter;)V
    .locals 1

    .line 61
    invoke-static {}, Lcom/reglink/common/BuildProp;->getInstance()Lcom/reglink/common/BuildProp;

    move-result-object v0

    iget-object v0, v0, Lcom/reglink/common/BuildProp;->properties:Ljava/util/Properties;

    invoke-virtual {v0, p0}, Ljava/util/Properties;->list(Ljava/io/PrintWriter;)V

    return-void
.end method

.method private static getInstance()Lcom/reglink/common/BuildProp;
    .locals 1

    .line 45
    sget-object v0, Lcom/reglink/common/BuildProp;->instance_:Lcom/reglink/common/BuildProp;

    if-nez v0, :cond_0

    .line 46
    new-instance v0, Lcom/reglink/common/BuildProp;

    invoke-direct {v0}, Lcom/reglink/common/BuildProp;-><init>()V

    sput-object v0, Lcom/reglink/common/BuildProp;->instance_:Lcom/reglink/common/BuildProp;

    .line 48
    :cond_0
    sget-object v0, Lcom/reglink/common/BuildProp;->instance_:Lcom/reglink/common/BuildProp;

    return-object v0
.end method

.method public static getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 57
    invoke-static {}, Lcom/reglink/common/BuildProp;->getInstance()Lcom/reglink/common/BuildProp;

    move-result-object v0

    invoke-direct {v0, p0, p1}, Lcom/reglink/common/BuildProp;->getString_(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getString_(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/reglink/common/BuildProp;->properties:Ljava/util/Properties;

    invoke-virtual {v0, p1, p2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
