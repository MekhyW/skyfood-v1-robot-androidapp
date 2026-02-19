.class public final Lcn/hutool/core/lang/Singleton;
.super Ljava/lang/Object;
.source "Singleton.java"


# static fields
.field private static final POOL:Lcn/hutool/core/map/SafeConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcn/hutool/core/map/SafeConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$rHUyT--XF3WwDhksPJwq4lmTN5I(Ljava/lang/Object;)Ljava/lang/Class;
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 21
    new-instance v0, Lcn/hutool/core/map/SafeConcurrentHashMap;

    invoke-direct {v0}, Lcn/hutool/core/map/SafeConcurrentHashMap;-><init>()V

    sput-object v0, Lcn/hutool/core/lang/Singleton;->POOL:Lcn/hutool/core/map/SafeConcurrentHashMap;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static varargs buildKey(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 2

    .line 155
    invoke-static {p1}, Lcn/hutool/core/util/ArrayUtil;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const-string p0, "_"

    .line 158
    invoke-static {p1, p0}, Lcn/hutool/core/util/ArrayUtil;->join([Ljava/lang/Object;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x1

    aput-object p0, v0, p1

    const-string p0, "{}#{}"

    invoke-static {p0, v0}, Lcn/hutool/core/util/StrUtil;->format(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static destroy()V
    .locals 1

    .line 142
    sget-object v0, Lcn/hutool/core/lang/Singleton;->POOL:Lcn/hutool/core/map/SafeConcurrentHashMap;

    invoke-virtual {v0}, Lcn/hutool/core/map/SafeConcurrentHashMap;->clear()V

    return-void
.end method

.method public static varargs exists(Ljava/lang/Class;[Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    if-eqz p0, :cond_0

    .line 103
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Lcn/hutool/core/lang/Singleton;->buildKey(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 104
    sget-object p1, Lcn/hutool/core/lang/Singleton;->POOL:Lcn/hutool/core/map/SafeConcurrentHashMap;

    invoke-virtual {p1, p0}, Lcn/hutool/core/map/SafeConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static varargs get(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;[",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Class must be not null !"

    .line 37
    invoke-static {p0, v1, v0}, Lcn/hutool/core/lang/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcn/hutool/core/lang/Singleton;->buildKey(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 39
    new-instance v1, Lcn/hutool/core/lang/Singleton$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lcn/hutool/core/lang/Singleton$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Class;[Ljava/lang/Object;)V

    invoke-static {v0, v1}, Lcn/hutool/core/lang/Singleton;->get(Ljava/lang/String;Lcn/hutool/core/lang/func/Func0;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static get(Ljava/lang/String;Lcn/hutool/core/lang/func/Func0;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lcn/hutool/core/lang/func/Func0<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 54
    sget-object v0, Lcn/hutool/core/lang/Singleton;->POOL:Lcn/hutool/core/map/SafeConcurrentHashMap;

    new-instance v1, Lcn/hutool/core/lang/Singleton$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1}, Lcn/hutool/core/lang/Singleton$$ExternalSyntheticLambda0;-><init>(Lcn/hutool/core/lang/func/Func0;)V

    invoke-virtual {v0, p0, v1}, Lcn/hutool/core/map/SafeConcurrentHashMap;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static varargs get(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Class name must be not blank !"

    .line 67
    invoke-static {p0, v1, v0}, Lcn/hutool/core/lang/Assert;->notBlank(Ljava/lang/CharSequence;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/CharSequence;

    .line 68
    invoke-static {p0}, Lcn/hutool/core/util/ClassUtil;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    .line 69
    invoke-static {p0, p1}, Lcn/hutool/core/lang/Singleton;->get(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static getExistClass()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation

    .line 115
    sget-object v0, Lcn/hutool/core/lang/Singleton;->POOL:Lcn/hutool/core/map/SafeConcurrentHashMap;

    invoke-virtual {v0}, Lcn/hutool/core/map/SafeConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcn/hutool/core/lang/Singleton$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Lcn/hutool/core/lang/Singleton$$ExternalSyntheticLambda2;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-static {}, Ljava/util/stream/Collectors;->toSet()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    return-object v0
.end method

.method static synthetic lambda$get$0(Lcn/hutool/core/lang/func/Func0;Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    .line 54
    invoke-interface {p0}, Lcn/hutool/core/lang/func/Func0;->callWithRuntimeException()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$get$3f3ed817$1(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 39
    invoke-static {p0, p1}, Lcn/hutool/core/util/ReflectUtil;->newInstance(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static put(Ljava/lang/Object;)V
    .locals 2

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Bean object must be not null !"

    .line 79
    invoke-static {p0, v1, v0}, Lcn/hutool/core/lang/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lcn/hutool/core/lang/Singleton;->put(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static put(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .line 91
    sget-object v0, Lcn/hutool/core/lang/Singleton;->POOL:Lcn/hutool/core/map/SafeConcurrentHashMap;

    invoke-virtual {v0, p0, p1}, Lcn/hutool/core/map/SafeConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static remove(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    if-eqz p0, :cond_0

    .line 125
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcn/hutool/core/lang/Singleton;->remove(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static remove(Ljava/lang/String;)V
    .locals 1

    .line 135
    sget-object v0, Lcn/hutool/core/lang/Singleton;->POOL:Lcn/hutool/core/map/SafeConcurrentHashMap;

    invoke-virtual {v0, p0}, Lcn/hutool/core/map/SafeConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
