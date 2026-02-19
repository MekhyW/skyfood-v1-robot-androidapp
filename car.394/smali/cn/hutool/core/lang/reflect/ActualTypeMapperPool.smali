.class public Lcn/hutool/core/lang/reflect/ActualTypeMapperPool;
.super Ljava/lang/Object;
.source "ActualTypeMapperPool.java"


# static fields
.field private static final CACHE:Lcn/hutool/core/map/WeakConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcn/hutool/core/map/WeakConcurrentMap<",
            "Ljava/lang/reflect/Type;",
            "Ljava/util/Map<",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/reflect/Type;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 21
    new-instance v0, Lcn/hutool/core/map/WeakConcurrentMap;

    invoke-direct {v0}, Lcn/hutool/core/map/WeakConcurrentMap;-><init>()V

    sput-object v0, Lcn/hutool/core/lang/reflect/ActualTypeMapperPool;->CACHE:Lcn/hutool/core/map/WeakConcurrentMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static createTypeMap(Ljava/lang/reflect/Type;)Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/reflect/Type;",
            ">;"
        }
    .end annotation

    .line 86
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    :cond_0
    if-eqz p0, :cond_3

    .line 96
    invoke-static {p0}, Lcn/hutool/core/util/TypeUtil;->toParameterizedType(Ljava/lang/reflect/Type;)Ljava/lang/reflect/ParameterizedType;

    move-result-object p0

    if-nez p0, :cond_1

    goto :goto_1

    .line 100
    :cond_1
    invoke-interface {p0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v1

    .line 101
    invoke-interface {p0}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object p0

    check-cast p0, Ljava/lang/Class;

    .line 102
    invoke-virtual {p0}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v2

    const/4 v3, 0x0

    .line 105
    :goto_0
    array-length v4, v2

    if-ge v3, v4, :cond_0

    .line 106
    aget-object v4, v1, v3

    .line 108
    instance-of v5, v4, Ljava/lang/reflect/TypeVariable;

    if-nez v5, :cond_2

    .line 109
    aget-object v5, v2, v3

    invoke-interface {v0, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return-object v0
.end method

.method public static get(Ljava/lang/reflect/Type;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/reflect/Type;",
            ">;"
        }
    .end annotation

    .line 30
    sget-object v0, Lcn/hutool/core/lang/reflect/ActualTypeMapperPool;->CACHE:Lcn/hutool/core/map/WeakConcurrentMap;

    new-instance v1, Lcn/hutool/core/lang/reflect/ActualTypeMapperPool$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcn/hutool/core/lang/reflect/ActualTypeMapperPool$$ExternalSyntheticLambda0;-><init>(Ljava/lang/reflect/Type;)V

    invoke-virtual {v0, p0, v1}, Lcn/hutool/core/map/WeakConcurrentMap;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    return-object p0
.end method

.method public static getActualType(Ljava/lang/reflect/Type;Ljava/lang/reflect/TypeVariable;)Ljava/lang/reflect/Type;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/reflect/TypeVariable<",
            "*>;)",
            "Ljava/lang/reflect/Type;"
        }
    .end annotation

    .line 52
    invoke-static {p0}, Lcn/hutool/core/lang/reflect/ActualTypeMapperPool;->get(Ljava/lang/reflect/Type;)Ljava/util/Map;

    move-result-object p0

    .line 53
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/reflect/Type;

    .line 54
    :goto_0
    instance-of v0, p1, Ljava/lang/reflect/TypeVariable;

    if-eqz v0, :cond_0

    .line 55
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/reflect/Type;

    goto :goto_0

    :cond_0
    return-object p1
.end method

.method public static varargs getActualTypes(Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;)[Ljava/lang/reflect/Type;
    .locals 4

    .line 70
    array-length v0, p1

    new-array v0, v0, [Ljava/lang/reflect/Type;

    const/4 v1, 0x0

    .line 71
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    .line 72
    aget-object v2, p1, v1

    instance-of v3, v2, Ljava/lang/reflect/TypeVariable;

    if-eqz v3, :cond_0

    check-cast v2, Ljava/lang/reflect/TypeVariable;

    .line 73
    invoke-static {p0, v2}, Lcn/hutool/core/lang/reflect/ActualTypeMapperPool;->getActualType(Ljava/lang/reflect/Type;Ljava/lang/reflect/TypeVariable;)Ljava/lang/reflect/Type;

    move-result-object v2

    :cond_0
    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static getStrKeyMap(Ljava/lang/reflect/Type;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Type;",
            ">;"
        }
    .end annotation

    .line 41
    const-class v0, Ljava/lang/String;

    const-class v1, Ljava/lang/reflect/Type;

    invoke-static {p0}, Lcn/hutool/core/lang/reflect/ActualTypeMapperPool;->get(Ljava/lang/reflect/Type;)Ljava/util/Map;

    move-result-object p0

    invoke-static {v0, v1, p0}, Lcn/hutool/core/convert/Convert;->toMap(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$get$0(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)Ljava/util/Map;
    .locals 0

    .line 30
    invoke-static {p0}, Lcn/hutool/core/lang/reflect/ActualTypeMapperPool;->createTypeMap(Ljava/lang/reflect/Type;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method
