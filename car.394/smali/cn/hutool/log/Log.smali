.class public interface abstract Lcn/hutool/log/Log;
.super Ljava/lang/Object;
.source "Log.java"

# interfaces
.implements Lcn/hutool/log/level/TraceLog;
.implements Lcn/hutool/log/level/DebugLog;
.implements Lcn/hutool/log/level/InfoLog;
.implements Lcn/hutool/log/level/WarnLog;
.implements Lcn/hutool/log/level/ErrorLog;


# direct methods
.method public static get()Lcn/hutool/log/Log;
    .locals 1

    .line 46
    invoke-static {}, Lcn/hutool/core/lang/caller/CallerUtil;->getCallerCaller()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcn/hutool/log/LogFactory;->get(Ljava/lang/Class;)Lcn/hutool/log/Log;

    move-result-object v0

    return-object v0
.end method

.method public static get(Ljava/lang/Class;)Lcn/hutool/log/Log;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcn/hutool/log/Log;"
        }
    .end annotation

    .line 27
    invoke-static {p0}, Lcn/hutool/log/LogFactory;->get(Ljava/lang/Class;)Lcn/hutool/log/Log;

    move-result-object p0

    return-object p0
.end method

.method public static get(Ljava/lang/String;)Lcn/hutool/log/Log;
    .locals 0

    .line 38
    invoke-static {p0}, Lcn/hutool/log/LogFactory;->get(Ljava/lang/String;)Lcn/hutool/log/Log;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract isEnabled(Lcn/hutool/log/level/Level;)Z
.end method

.method public varargs abstract log(Lcn/hutool/log/level/Level;Ljava/lang/String;[Ljava/lang/Object;)V
.end method

.method public varargs abstract log(Lcn/hutool/log/level/Level;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
.end method

.method public varargs abstract log(Ljava/lang/String;Lcn/hutool/log/level/Level;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
.end method
