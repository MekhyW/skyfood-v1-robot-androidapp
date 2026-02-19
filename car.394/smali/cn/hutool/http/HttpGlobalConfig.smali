.class public Lcn/hutool/http/HttpGlobalConfig;
.super Ljava/lang/Object;
.source "HttpGlobalConfig.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static boundary:Ljava/lang/String; = null

.field private static decodeUrl:Z = false

.field private static ignoreEOFError:Z = false

.field private static isAllowPatch:Z = false

.field private static maxRedirectCount:I = 0x0

.field private static final serialVersionUID:J = 0x1L

.field private static timeout:I = -0x1


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 32
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "--------------------Hutool_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x10

    invoke-static {v1}, Lcn/hutool/core/util/RandomUtil;->randomString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/hutool/http/HttpGlobalConfig;->boundary:Ljava/lang/String;

    const/4 v0, 0x0

    .line 33
    sput v0, Lcn/hutool/http/HttpGlobalConfig;->maxRedirectCount:I

    const/4 v1, 0x1

    .line 34
    sput-boolean v1, Lcn/hutool/http/HttpGlobalConfig;->ignoreEOFError:Z

    .line 35
    sput-boolean v0, Lcn/hutool/http/HttpGlobalConfig;->decodeUrl:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized allowPatch()V
    .locals 11

    const-class v0, Lcn/hutool/http/HttpGlobalConfig;

    monitor-enter v0

    .line 191
    :try_start_0
    sget-boolean v1, Lcn/hutool/http/HttpGlobalConfig;->isAllowPatch:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 192
    monitor-exit v0

    return-void

    .line 194
    :cond_0
    :try_start_1
    const-class v1, Ljava/net/HttpURLConnection;

    const-string v2, "methods"

    invoke-static {v1, v2}, Lcn/hutool/core/util/ReflectUtil;->getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    .line 200
    invoke-static {v1}, Lcn/hutool/core/util/ReflectUtil;->removeFinalModify(Ljava/lang/reflect/Field;)V

    const-string v3, "GET"

    const-string v4, "POST"

    const-string v5, "HEAD"

    const-string v6, "OPTIONS"

    const-string v7, "PUT"

    const-string v8, "DELETE"

    const-string v9, "TRACE"

    const-string v10, "PATCH"

    .line 201
    filled-new-array/range {v3 .. v10}, [Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    .line 204
    invoke-static {v4, v1, v3}, Lcn/hutool/core/util/ReflectUtil;->setFieldValue(Ljava/lang/Object;Ljava/lang/reflect/Field;Ljava/lang/Object;)V

    .line 207
    invoke-static {v1}, Lcn/hutool/core/util/ReflectUtil;->getStaticFieldValue(Ljava/lang/reflect/Field;)Ljava/lang/Object;

    move-result-object v1

    .line 208
    invoke-static {v3, v1}, Lcn/hutool/core/util/ArrayUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 212
    sput-boolean v2, Lcn/hutool/http/HttpGlobalConfig;->isAllowPatch:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 213
    monitor-exit v0

    return-void

    .line 209
    :cond_1
    :try_start_2
    new-instance v1, Lcn/hutool/http/HttpException;

    const-string v2, "Inject value to field [methods] failed!"

    invoke-direct {v1, v2}, Lcn/hutool/http/HttpException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 196
    :cond_2
    new-instance v1, Lcn/hutool/http/HttpException;

    const-string v3, "None static field [methods] with Java version: [{}]"

    new-array v2, v2, [Ljava/lang/Object;

    const-string v4, "java.version"

    invoke-static {v4}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v2, v5

    invoke-direct {v1, v3, v2}, Lcn/hutool/http/HttpException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized closeCookie()V
    .locals 2

    const-class v0, Lcn/hutool/http/HttpGlobalConfig;

    monitor-enter v0

    const/4 v1, 0x0

    .line 180
    :try_start_0
    invoke-static {v1}, Lcn/hutool/http/cookie/GlobalCookieManager;->setCookieManager(Ljava/net/CookieManager;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 181
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static getBoundary()Ljava/lang/String;
    .locals 1

    .line 68
    sget-object v0, Lcn/hutool/http/HttpGlobalConfig;->boundary:Ljava/lang/String;

    return-object v0
.end method

.method public static getCookieManager()Ljava/net/CookieManager;
    .locals 1

    .line 159
    invoke-static {}, Lcn/hutool/http/cookie/GlobalCookieManager;->getCookieManager()Ljava/net/CookieManager;

    move-result-object v0

    return-object v0
.end method

.method public static getMaxRedirectCount()I
    .locals 1

    .line 89
    sget v0, Lcn/hutool/http/HttpGlobalConfig;->maxRedirectCount:I

    return v0
.end method

.method public static getTimeout()I
    .locals 1

    .line 43
    sget v0, Lcn/hutool/http/HttpGlobalConfig;->timeout:I

    return v0
.end method

.method public static isDecodeUrl()Z
    .locals 1

    .line 136
    sget-boolean v0, Lcn/hutool/http/HttpGlobalConfig;->decodeUrl:Z

    return v0
.end method

.method public static isIgnoreEOFError()Z
    .locals 1

    .line 112
    sget-boolean v0, Lcn/hutool/http/HttpGlobalConfig;->ignoreEOFError:Z

    return v0
.end method

.method public static declared-synchronized setBoundary(Ljava/lang/String;)V
    .locals 1

    const-class v0, Lcn/hutool/http/HttpGlobalConfig;

    monitor-enter v0

    .line 78
    :try_start_0
    sput-object p0, Lcn/hutool/http/HttpGlobalConfig;->boundary:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 79
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized setCookieManager(Ljava/net/CookieManager;)V
    .locals 1

    const-class v0, Lcn/hutool/http/HttpGlobalConfig;

    monitor-enter v0

    .line 170
    :try_start_0
    invoke-static {p0}, Lcn/hutool/http/cookie/GlobalCookieManager;->setCookieManager(Ljava/net/CookieManager;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 171
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized setDecodeUrl(Z)V
    .locals 1

    const-class v0, Lcn/hutool/http/HttpGlobalConfig;

    monitor-enter v0

    .line 148
    :try_start_0
    sput-boolean p0, Lcn/hutool/http/HttpGlobalConfig;->decodeUrl:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 149
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized setIgnoreEOFError(Z)V
    .locals 1

    const-class v0, Lcn/hutool/http/HttpGlobalConfig;

    monitor-enter v0

    .line 124
    :try_start_0
    sput-boolean p0, Lcn/hutool/http/HttpGlobalConfig;->ignoreEOFError:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 125
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized setMaxRedirectCount(I)V
    .locals 1

    const-class v0, Lcn/hutool/http/HttpGlobalConfig;

    monitor-enter v0

    .line 100
    :try_start_0
    sput p0, Lcn/hutool/http/HttpGlobalConfig;->maxRedirectCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 101
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized setTimeout(I)V
    .locals 1

    const-class v0, Lcn/hutool/http/HttpGlobalConfig;

    monitor-enter v0

    .line 58
    :try_start_0
    sput p0, Lcn/hutool/http/HttpGlobalConfig;->timeout:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method
