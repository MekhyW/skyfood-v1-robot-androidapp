.class public Lcn/hutool/system/SystemUtil;
.super Lcn/hutool/core/util/SystemPropsUtil;
.source "SystemUtil.java"


# static fields
.field public static final CLASS_PATH:Ljava/lang/String; = "java.class.path"

.field public static final CLASS_VERSION:Ljava/lang/String; = "java.class.version"

.field public static final COMPILER:Ljava/lang/String; = "java.compiler"

.field public static final EXT_DIRS:Ljava/lang/String; = "java.ext.dirs"

.field public static final FILE_SEPARATOR:Ljava/lang/String; = "file.separator"

.field public static final HOME:Ljava/lang/String; = "java.home"

.field public static final LIBRARY_PATH:Ljava/lang/String; = "java.library.path"

.field public static final LINE_SEPARATOR:Ljava/lang/String; = "line.separator"

.field public static final OS_ARCH:Ljava/lang/String; = "os.arch"

.field public static final OS_NAME:Ljava/lang/String; = "os.name"

.field public static final OS_VERSION:Ljava/lang/String; = "os.version"

.field public static final PATH_SEPARATOR:Ljava/lang/String; = "path.separator"

.field public static final SPECIFICATION_NAME:Ljava/lang/String; = "java.specification.name"

.field public static final SPECIFICATION_VENDOR:Ljava/lang/String; = "java.specification.vendor"

.field public static final SPECIFICATION_VERSION:Ljava/lang/String; = "java.specification.version"

.field public static final TMPDIR:Ljava/lang/String; = "java.io.tmpdir"

.field public static final USER_DIR:Ljava/lang/String; = "user.dir"

.field public static final USER_HOME:Ljava/lang/String; = "user.home"

.field public static final USER_NAME:Ljava/lang/String; = "user.name"

.field public static final VENDOR:Ljava/lang/String; = "java.vendor"

.field public static final VENDOR_URL:Ljava/lang/String; = "java.vendor.url"

.field public static final VERSION:Ljava/lang/String; = "java.version"

.field public static final VM_NAME:Ljava/lang/String; = "java.vm.name"

.field public static final VM_SPECIFICATION_NAME:Ljava/lang/String; = "java.vm.specification.name"

.field public static final VM_SPECIFICATION_VENDOR:Ljava/lang/String; = "java.vm.specification.vendor"

.field public static final VM_SPECIFICATION_VERSION:Ljava/lang/String; = "java.vm.specification.version"

.field public static final VM_VENDOR:Ljava/lang/String; = "java.vm.vendor"

.field public static final VM_VERSION:Ljava/lang/String; = "java.vm.version"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Lcn/hutool/core/util/SystemPropsUtil;-><init>()V

    return-void
.end method

.method protected static append(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 419
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-static {p2}, Lcn/hutool/core/convert/Convert;->toStr(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "[n/a]"

    invoke-static {p1, p2}, Lcn/hutool/core/util/StrUtil;->nullToDefault(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, "\n"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public static dumpSystemInfo()V
    .locals 2

    .line 380
    new-instance v0, Ljava/io/PrintWriter;

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-direct {v0, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-static {v0}, Lcn/hutool/system/SystemUtil;->dumpSystemInfo(Ljava/io/PrintWriter;)V

    return-void
.end method

.method public static dumpSystemInfo(Ljava/io/PrintWriter;)V
    .locals 2

    const-string v0, "--------------"

    .line 389
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 390
    invoke-static {}, Lcn/hutool/system/SystemUtil;->getJvmSpecInfo()Lcn/hutool/system/JvmSpecInfo;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 391
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 392
    invoke-static {}, Lcn/hutool/system/SystemUtil;->getJvmInfo()Lcn/hutool/system/JvmInfo;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 393
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 394
    invoke-static {}, Lcn/hutool/system/SystemUtil;->getJavaSpecInfo()Lcn/hutool/system/JavaSpecInfo;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 395
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 396
    invoke-static {}, Lcn/hutool/system/SystemUtil;->getJavaInfo()Lcn/hutool/system/JavaInfo;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 397
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 398
    invoke-static {}, Lcn/hutool/system/SystemUtil;->getJavaRuntimeInfo()Lcn/hutool/system/JavaRuntimeInfo;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 399
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 400
    invoke-static {}, Lcn/hutool/system/SystemUtil;->getOsInfo()Lcn/hutool/system/OsInfo;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 401
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 402
    invoke-static {}, Lcn/hutool/system/SystemUtil;->getUserInfo()Lcn/hutool/system/UserInfo;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 403
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 404
    invoke-static {}, Lcn/hutool/system/SystemUtil;->getHostInfo()Lcn/hutool/system/HostInfo;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 405
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 406
    invoke-static {}, Lcn/hutool/system/SystemUtil;->getRuntimeInfo()Lcn/hutool/system/RuntimeInfo;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 407
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 408
    invoke-virtual {p0}, Ljava/io/PrintWriter;->flush()V

    return-void
.end method

.method public static getClassLoadingMXBean()Ljava/lang/management/ClassLoadingMXBean;
    .locals 1

    .line 167
    invoke-static {}, Ljava/lang/management/ManagementFactory;->getClassLoadingMXBean()Ljava/lang/management/ClassLoadingMXBean;

    move-result-object v0

    return-object v0
.end method

.method public static getCompilationMXBean()Ljava/lang/management/CompilationMXBean;
    .locals 1

    .line 208
    invoke-static {}, Ljava/lang/management/ManagementFactory;->getCompilationMXBean()Ljava/lang/management/CompilationMXBean;

    move-result-object v0

    return-object v0
.end method

.method public static getCurrentPID()J
    .locals 2

    .line 157
    invoke-static {}, Lcn/hutool/system/SystemUtil;->getRuntimeMXBean()Ljava/lang/management/RuntimeMXBean;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/management/RuntimeMXBean;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getFreeMemory()J
    .locals 2

    .line 348
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v0

    return-wide v0
.end method

.method public static getGarbageCollectorMXBeans()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/management/GarbageCollectorMXBean;",
            ">;"
        }
    .end annotation

    .line 247
    invoke-static {}, Ljava/lang/management/ManagementFactory;->getGarbageCollectorMXBeans()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static getHostInfo()Lcn/hutool/system/HostInfo;
    .locals 2

    .line 319
    const-class v0, Lcn/hutool/system/HostInfo;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcn/hutool/core/lang/Singleton;->get(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/hutool/system/HostInfo;

    return-object v0
.end method

.method public static getJavaInfo()Lcn/hutool/system/JavaInfo;
    .locals 2

    .line 283
    const-class v0, Lcn/hutool/system/JavaInfo;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcn/hutool/core/lang/Singleton;->get(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/hutool/system/JavaInfo;

    return-object v0
.end method

.method public static getJavaRuntimeInfo()Lcn/hutool/system/JavaRuntimeInfo;
    .locals 2

    .line 292
    const-class v0, Lcn/hutool/system/JavaRuntimeInfo;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcn/hutool/core/lang/Singleton;->get(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/hutool/system/JavaRuntimeInfo;

    return-object v0
.end method

.method public static getJavaSpecInfo()Lcn/hutool/system/JavaSpecInfo;
    .locals 2

    .line 274
    const-class v0, Lcn/hutool/system/JavaSpecInfo;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcn/hutool/core/lang/Singleton;->get(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/hutool/system/JavaSpecInfo;

    return-object v0
.end method

.method public static getJvmInfo()Lcn/hutool/system/JvmInfo;
    .locals 2

    .line 265
    const-class v0, Lcn/hutool/system/JvmInfo;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcn/hutool/core/lang/Singleton;->get(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/hutool/system/JvmInfo;

    return-object v0
.end method

.method public static getJvmSpecInfo()Lcn/hutool/system/JvmSpecInfo;
    .locals 2

    .line 256
    const-class v0, Lcn/hutool/system/JvmSpecInfo;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcn/hutool/core/lang/Singleton;->get(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/hutool/system/JvmSpecInfo;

    return-object v0
.end method

.method public static getMaxMemory()J
    .locals 2

    .line 358
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v0

    return-wide v0
.end method

.method public static getMemoryMXBean()Ljava/lang/management/MemoryMXBean;
    .locals 1

    .line 177
    invoke-static {}, Ljava/lang/management/ManagementFactory;->getMemoryMXBean()Ljava/lang/management/MemoryMXBean;

    move-result-object v0

    return-object v0
.end method

.method public static getMemoryManagerMXBeans()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/management/MemoryManagerMXBean;",
            ">;"
        }
    .end annotation

    .line 238
    invoke-static {}, Ljava/lang/management/ManagementFactory;->getMemoryManagerMXBeans()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static getMemoryPoolMXBeans()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/management/MemoryPoolMXBean;",
            ">;"
        }
    .end annotation

    .line 228
    invoke-static {}, Ljava/lang/management/ManagementFactory;->getMemoryPoolMXBeans()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static getOperatingSystemMXBean()Ljava/lang/management/OperatingSystemMXBean;
    .locals 1

    .line 218
    invoke-static {}, Ljava/lang/management/ManagementFactory;->getOperatingSystemMXBean()Ljava/lang/management/OperatingSystemMXBean;

    move-result-object v0

    return-object v0
.end method

.method public static getOsInfo()Lcn/hutool/system/OsInfo;
    .locals 2

    .line 301
    const-class v0, Lcn/hutool/system/OsInfo;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcn/hutool/core/lang/Singleton;->get(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/hutool/system/OsInfo;

    return-object v0
.end method

.method public static getRuntimeInfo()Lcn/hutool/system/RuntimeInfo;
    .locals 2

    .line 328
    const-class v0, Lcn/hutool/system/RuntimeInfo;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcn/hutool/core/lang/Singleton;->get(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/hutool/system/RuntimeInfo;

    return-object v0
.end method

.method public static getRuntimeMXBean()Ljava/lang/management/RuntimeMXBean;
    .locals 1

    .line 197
    invoke-static {}, Ljava/lang/management/ManagementFactory;->getRuntimeMXBean()Ljava/lang/management/RuntimeMXBean;

    move-result-object v0

    return-object v0
.end method

.method public static getThreadMXBean()Ljava/lang/management/ThreadMXBean;
    .locals 1

    .line 187
    invoke-static {}, Ljava/lang/management/ManagementFactory;->getThreadMXBean()Ljava/lang/management/ThreadMXBean;

    move-result-object v0

    return-object v0
.end method

.method public static getTotalMemory()J
    .locals 2

    .line 338
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->totalMemory()J

    move-result-wide v0

    return-wide v0
.end method

.method public static getTotalThreadCount()I
    .locals 2

    .line 367
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getThreadGroup()Ljava/lang/ThreadGroup;

    move-result-object v0

    .line 368
    :goto_0
    invoke-virtual {v0}, Ljava/lang/ThreadGroup;->getParent()Ljava/lang/ThreadGroup;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 369
    invoke-virtual {v0}, Ljava/lang/ThreadGroup;->getParent()Ljava/lang/ThreadGroup;

    move-result-object v0

    goto :goto_0

    .line 371
    :cond_0
    invoke-virtual {v0}, Ljava/lang/ThreadGroup;->activeCount()I

    move-result v0

    return v0
.end method

.method public static getUserInfo()Lcn/hutool/system/UserInfo;
    .locals 2

    .line 310
    const-class v0, Lcn/hutool/system/UserInfo;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcn/hutool/core/lang/Singleton;->get(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/hutool/system/UserInfo;

    return-object v0
.end method
