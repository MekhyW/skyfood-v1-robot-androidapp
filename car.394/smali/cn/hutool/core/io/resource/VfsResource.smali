.class public Lcn/hutool/core/io/resource/VfsResource;
.super Ljava/lang/Object;
.source "VfsResource.java"

# interfaces
.implements Lcn/hutool/core/io/resource/Resource;


# static fields
.field private static final VFS3_PKG:Ljava/lang/String; = "org.jboss.vfs."

.field private static final VIRTUAL_FILE_METHOD_EXISTS:Ljava/lang/reflect/Method;

.field private static final VIRTUAL_FILE_METHOD_GET_INPUT_STREAM:Ljava/lang/reflect/Method;

.field private static final VIRTUAL_FILE_METHOD_GET_LAST_MODIFIED:Ljava/lang/reflect/Method;

.field private static final VIRTUAL_FILE_METHOD_GET_NAME:Ljava/lang/reflect/Method;

.field private static final VIRTUAL_FILE_METHOD_GET_SIZE:Ljava/lang/reflect/Method;

.field private static final VIRTUAL_FILE_METHOD_TO_URL:Ljava/lang/reflect/Method;


# instance fields
.field private final lastModified:J

.field private final virtualFile:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "org.jboss.vfs.VirtualFile"

    .line 30
    invoke-static {v0}, Lcn/hutool/core/util/ClassLoaderUtil;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    :try_start_0
    const-string v1, "exists"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    .line 32
    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lcn/hutool/core/io/resource/VfsResource;->VIRTUAL_FILE_METHOD_EXISTS:Ljava/lang/reflect/Method;

    const-string v1, "openStream"

    new-array v3, v2, [Ljava/lang/Class;

    .line 33
    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lcn/hutool/core/io/resource/VfsResource;->VIRTUAL_FILE_METHOD_GET_INPUT_STREAM:Ljava/lang/reflect/Method;

    const-string v1, "getSize"

    new-array v3, v2, [Ljava/lang/Class;

    .line 34
    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lcn/hutool/core/io/resource/VfsResource;->VIRTUAL_FILE_METHOD_GET_SIZE:Ljava/lang/reflect/Method;

    const-string v1, "getLastModified"

    new-array v3, v2, [Ljava/lang/Class;

    .line 35
    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lcn/hutool/core/io/resource/VfsResource;->VIRTUAL_FILE_METHOD_GET_LAST_MODIFIED:Ljava/lang/reflect/Method;

    const-string v1, "toURL"

    new-array v3, v2, [Ljava/lang/Class;

    .line 36
    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lcn/hutool/core/io/resource/VfsResource;->VIRTUAL_FILE_METHOD_TO_URL:Ljava/lang/reflect/Method;

    const-string v1, "getName"

    new-array v2, v2, [Ljava/lang/Class;

    .line 37
    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcn/hutool/core/io/resource/VfsResource;->VIRTUAL_FILE_METHOD_GET_NAME:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 39
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Could not detect JBoss VFS infrastructure"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 2

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "VirtualFile must not be null"

    .line 55
    invoke-static {p1, v1, v0}, Lcn/hutool/core/lang/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    iput-object p1, p0, Lcn/hutool/core/io/resource/VfsResource;->virtualFile:Ljava/lang/Object;

    .line 57
    invoke-virtual {p0}, Lcn/hutool/core/io/resource/VfsResource;->getLastModified()J

    move-result-wide v0

    iput-wide v0, p0, Lcn/hutool/core/io/resource/VfsResource;->lastModified:J

    return-void
.end method


# virtual methods
.method public exists()Z
    .locals 3

    .line 66
    iget-object v0, p0, Lcn/hutool/core/io/resource/VfsResource;->virtualFile:Ljava/lang/Object;

    sget-object v1, Lcn/hutool/core/io/resource/VfsResource;->VIRTUAL_FILE_METHOD_EXISTS:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcn/hutool/core/util/ReflectUtil;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public getLastModified()J
    .locals 3

    .line 95
    iget-object v0, p0, Lcn/hutool/core/io/resource/VfsResource;->virtualFile:Ljava/lang/Object;

    sget-object v1, Lcn/hutool/core/io/resource/VfsResource;->VIRTUAL_FILE_METHOD_GET_LAST_MODIFIED:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcn/hutool/core/util/ReflectUtil;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .locals 3

    .line 71
    iget-object v0, p0, Lcn/hutool/core/io/resource/VfsResource;->virtualFile:Ljava/lang/Object;

    sget-object v1, Lcn/hutool/core/io/resource/VfsResource;->VIRTUAL_FILE_METHOD_GET_NAME:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcn/hutool/core/util/ReflectUtil;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getStream()Ljava/io/InputStream;
    .locals 3

    .line 81
    iget-object v0, p0, Lcn/hutool/core/io/resource/VfsResource;->virtualFile:Ljava/lang/Object;

    sget-object v1, Lcn/hutool/core/io/resource/VfsResource;->VIRTUAL_FILE_METHOD_GET_INPUT_STREAM:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcn/hutool/core/util/ReflectUtil;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/InputStream;

    return-object v0
.end method

.method public getUrl()Ljava/net/URL;
    .locals 3

    .line 76
    iget-object v0, p0, Lcn/hutool/core/io/resource/VfsResource;->virtualFile:Ljava/lang/Object;

    sget-object v1, Lcn/hutool/core/io/resource/VfsResource;->VIRTUAL_FILE_METHOD_TO_URL:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcn/hutool/core/util/ReflectUtil;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/URL;

    return-object v0
.end method

.method public isModified()Z
    .locals 4

    .line 86
    iget-wide v0, p0, Lcn/hutool/core/io/resource/VfsResource;->lastModified:J

    invoke-virtual {p0}, Lcn/hutool/core/io/resource/VfsResource;->getLastModified()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public size()J
    .locals 3

    .line 104
    iget-object v0, p0, Lcn/hutool/core/io/resource/VfsResource;->virtualFile:Ljava/lang/Object;

    sget-object v1, Lcn/hutool/core/io/resource/VfsResource;->VIRTUAL_FILE_METHOD_GET_SIZE:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcn/hutool/core/util/ReflectUtil;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method
