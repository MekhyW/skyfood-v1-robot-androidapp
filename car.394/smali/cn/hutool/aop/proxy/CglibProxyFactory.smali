.class public Lcn/hutool/aop/proxy/CglibProxyFactory;
.super Lcn/hutool/aop/proxy/ProxyFactory;
.source "CglibProxyFactory.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Lcn/hutool/aop/proxy/ProxyFactory;-><init>()V

    return-void
.end method

.method private static create(Lnet/sf/cglib/proxy/Enhancer;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lnet/sf/cglib/proxy/Enhancer;",
            "Ljava/lang/Class<",
            "*>;)TT;"
        }
    .end annotation

    .line 42
    invoke-static {p1}, Lcn/hutool/core/util/ReflectUtil;->getConstructors(Ljava/lang/Class;)[Ljava/lang/reflect/Constructor;

    move-result-object p1

    .line 46
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    aget-object v1, p1, v2

    .line 47
    invoke-virtual {v1}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v1

    .line 48
    invoke-static {v1}, Lcn/hutool/core/util/ClassUtil;->getDefaultValues([Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v3

    .line 51
    :try_start_0
    invoke-virtual {p0, v1, v3}, Lnet/sf/cglib/proxy/Enhancer;->create([Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    if-eqz v1, :cond_1

    .line 58
    throw v1

    .line 61
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "No constructor provided"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public proxy(Ljava/lang/Object;Lcn/hutool/aop/aspects/Aspect;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lcn/hutool/aop/aspects/Aspect;",
            ")TT;"
        }
    .end annotation

    .line 22
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 24
    new-instance v1, Lnet/sf/cglib/proxy/Enhancer;

    invoke-direct {v1}, Lnet/sf/cglib/proxy/Enhancer;-><init>()V

    .line 25
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Lnet/sf/cglib/proxy/Enhancer;->setSuperclass(Ljava/lang/Class;)V

    .line 26
    new-instance v2, Lcn/hutool/aop/interceptor/CglibInterceptor;

    invoke-direct {v2, p1, p2}, Lcn/hutool/aop/interceptor/CglibInterceptor;-><init>(Ljava/lang/Object;Lcn/hutool/aop/aspects/Aspect;)V

    invoke-virtual {v1, v2}, Lnet/sf/cglib/proxy/Enhancer;->setCallback(Lnet/sf/cglib/proxy/Callback;)V

    .line 27
    invoke-static {v1, v0}, Lcn/hutool/aop/proxy/CglibProxyFactory;->create(Lnet/sf/cglib/proxy/Enhancer;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
