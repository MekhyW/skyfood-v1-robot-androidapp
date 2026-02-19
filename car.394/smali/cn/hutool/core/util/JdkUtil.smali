.class public Lcn/hutool/core/util/JdkUtil;
.super Ljava/lang/Object;
.source "JdkUtil.java"


# static fields
.field public static final IS_ANDROID:Z

.field public static final IS_AT_LEAST_JDK17:Z

.field public static final IS_JDK8:Z

.field public static final JVM_VERSION:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 43
    invoke-static {}, Lcn/hutool/core/util/JdkUtil;->_getJvmVersion()I

    move-result v0

    sput v0, Lcn/hutool/core/util/JdkUtil;->JVM_VERSION:I

    const/16 v1, 0x8

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v1, v0, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    .line 44
    :goto_0
    sput-boolean v1, Lcn/hutool/core/util/JdkUtil;->IS_JDK8:Z

    const/16 v1, 0x11

    if-lt v0, v1, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    .line 45
    :goto_1
    sput-boolean v2, Lcn/hutool/core/util/JdkUtil;->IS_AT_LEAST_JDK17:Z

    .line 48
    invoke-static {}, Lcn/hutool/core/util/JdkUtil;->_getJvmName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Dalvik"

    .line 49
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcn/hutool/core/util/JdkUtil;->IS_ANDROID:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static _getJvmName()Ljava/lang/String;
    .locals 1

    const-string v0, "java.vm.name"

    .line 58
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static _getJvmVersion()I
    .locals 3

    :try_start_0
    const-string v0, "java.specification.version"

    .line 70
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 71
    invoke-static {v0}, Lcn/hutool/core/util/StrUtil;->isNotBlank(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, -0x1

    if-eqz v1, :cond_1

    const-string v1, "1."

    .line 72
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    .line 73
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :cond_0
    const/16 v1, 0x2e

    .line 75
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-ne v1, v2, :cond_1

    .line 76
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    const/16 v2, 0x8

    :cond_1
    :goto_0
    return v2
.end method
