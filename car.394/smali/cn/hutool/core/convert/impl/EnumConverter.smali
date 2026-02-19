.class public Lcn/hutool/core/convert/impl/EnumConverter;
.super Lcn/hutool/core/convert/AbstractConverter;
.source "EnumConverter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/hutool/core/convert/AbstractConverter<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field private static final VALUE_OF_METHOD_CACHE:Lcn/hutool/core/map/WeakConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcn/hutool/core/map/WeakConcurrentMap<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/reflect/Method;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final enumClass:Ljava/lang/Class;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 28
    new-instance v0, Lcn/hutool/core/map/WeakConcurrentMap;

    invoke-direct {v0}, Lcn/hutool/core/map/WeakConcurrentMap;-><init>()V

    sput-object v0, Lcn/hutool/core/convert/impl/EnumConverter;->VALUE_OF_METHOD_CACHE:Lcn/hutool/core/map/WeakConcurrentMap;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Lcn/hutool/core/convert/AbstractConverter;-><init>()V

    .line 38
    iput-object p1, p0, Lcn/hutool/core/convert/impl/EnumConverter;->enumClass:Ljava/lang/Class;

    return-void
.end method

.method private static getMethodMap(Ljava/lang/Class;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation

    .line 135
    sget-object v0, Lcn/hutool/core/convert/impl/EnumConverter;->VALUE_OF_METHOD_CACHE:Lcn/hutool/core/map/WeakConcurrentMap;

    new-instance v1, Lcn/hutool/core/convert/impl/EnumConverter$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcn/hutool/core/convert/impl/EnumConverter$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Class;)V

    invoke-virtual {v0, p0, v1}, Lcn/hutool/core/map/WeakConcurrentMap;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    return-object p0
.end method

.method static synthetic lambda$getMethodMap$6(Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/Map;
    .locals 2

    .line 135
    invoke-virtual {p0}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lcn/hutool/core/convert/impl/EnumConverter$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcn/hutool/core/convert/impl/EnumConverter$$ExternalSyntheticLambda1;-><init>()V

    .line 136
    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lcn/hutool/core/convert/impl/EnumConverter$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcn/hutool/core/convert/impl/EnumConverter$$ExternalSyntheticLambda2;-><init>(Ljava/lang/Class;)V

    .line 137
    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p1, Lcn/hutool/core/convert/impl/EnumConverter$$ExternalSyntheticLambda3;

    invoke-direct {p1}, Lcn/hutool/core/convert/impl/EnumConverter$$ExternalSyntheticLambda3;-><init>()V

    .line 138
    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p1, Lcn/hutool/core/convert/impl/EnumConverter$$ExternalSyntheticLambda4;

    invoke-direct {p1}, Lcn/hutool/core/convert/impl/EnumConverter$$ExternalSyntheticLambda4;-><init>()V

    .line 139
    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p1, Lcn/hutool/core/convert/impl/EnumConverter$$ExternalSyntheticLambda5;

    invoke-direct {p1}, Lcn/hutool/core/convert/impl/EnumConverter$$ExternalSyntheticLambda5;-><init>()V

    new-instance v0, Lcn/hutool/core/convert/impl/EnumConverter$$ExternalSyntheticLambda6;

    invoke-direct {v0}, Lcn/hutool/core/convert/impl/EnumConverter$$ExternalSyntheticLambda6;-><init>()V

    new-instance v1, Lcn/hutool/core/convert/impl/EnumConverter$$ExternalSyntheticLambda7;

    invoke-direct {v1}, Lcn/hutool/core/convert/impl/EnumConverter$$ExternalSyntheticLambda7;-><init>()V

    .line 140
    invoke-static {p1, v0, v1}, Ljava/util/stream/Collectors;->toMap(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/BinaryOperator;)Ljava/util/stream/Collector;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    return-object p0
.end method

.method static synthetic lambda$null$0(Ljava/lang/Class;Ljava/lang/reflect/Method;)Z
    .locals 0

    .line 137
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object p1

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static synthetic lambda$null$1(Ljava/lang/reflect/Method;)Z
    .locals 1

    .line 138
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getParameterCount()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic lambda$null$2(Ljava/lang/reflect/Method;)Z
    .locals 1

    const-string v0, "valueOf"

    .line 139
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method static synthetic lambda$null$3(Ljava/lang/reflect/Method;)Ljava/lang/Class;
    .locals 1

    .line 140
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object p0

    const/4 v0, 0x0

    aget-object p0, p0, v0

    return-object p0
.end method

.method static synthetic lambda$null$4(Ljava/lang/reflect/Method;)Ljava/lang/reflect/Method;
    .locals 0

    return-object p0
.end method

.method static synthetic lambda$null$5(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)Ljava/lang/reflect/Method;
    .locals 0

    return-object p0
.end method

.method protected static tryConvertEnum(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Enum;
    .locals 6

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 80
    :cond_0
    const-class v1, Lcn/hutool/core/lang/EnumItem;

    invoke-virtual {v1, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 81
    invoke-static {p1, v2}, Lcn/hutool/core/util/EnumUtil;->getEnumAt(Ljava/lang/Class;I)Ljava/lang/Enum;

    move-result-object v1

    check-cast v1, Lcn/hutool/core/lang/EnumItem;

    if-eqz v1, :cond_2

    .line 83
    instance-of v3, p0, Ljava/lang/Integer;

    if-eqz v3, :cond_1

    .line 84
    check-cast p0, Ljava/lang/Integer;

    invoke-interface {v1, p0}, Lcn/hutool/core/lang/EnumItem;->fromInt(Ljava/lang/Integer;)Lcn/hutool/core/lang/EnumItem;

    move-result-object p0

    check-cast p0, Ljava/lang/Enum;

    return-object p0

    .line 85
    :cond_1
    instance-of v3, p0, Ljava/lang/String;

    if-eqz v3, :cond_2

    .line 86
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v1, p0}, Lcn/hutool/core/lang/EnumItem;->fromStr(Ljava/lang/String;)Lcn/hutool/core/lang/EnumItem;

    move-result-object p0

    check-cast p0, Ljava/lang/Enum;

    return-object p0

    .line 94
    :cond_2
    :try_start_0
    invoke-static {p1}, Lcn/hutool/core/convert/impl/EnumConverter;->getMethodMap(Ljava/lang/Class;)Ljava/util/Map;

    move-result-object v1

    .line 95
    invoke-static {v1}, Lcn/hutool/core/map/MapUtil;->isNotEmpty(Ljava/util/Map;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 96
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    .line 97
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 98
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Class;

    invoke-static {v5, v3}, Lcn/hutool/core/util/ClassUtil;->isAssignable(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 99
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/reflect/Method;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p0, v3, v2

    invoke-static {v1, v3}, Lcn/hutool/core/util/ReflectUtil;->invokeStatic(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Enum;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 115
    :catch_0
    :cond_4
    instance-of v1, p0, Ljava/lang/Integer;

    if-eqz v1, :cond_5

    .line 116
    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p1, p0}, Lcn/hutool/core/util/EnumUtil;->getEnumAt(Ljava/lang/Class;I)Ljava/lang/Enum;

    move-result-object v0

    goto :goto_0

    .line 117
    :cond_5
    instance-of v1, p0, Ljava/lang/String;

    if-eqz v1, :cond_6

    .line 119
    :try_start_1
    check-cast p0, Ljava/lang/String;

    invoke-static {p1, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :cond_6
    :goto_0
    return-object v0
.end method


# virtual methods
.method protected convertInternal(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 43
    iget-object v0, p0, Lcn/hutool/core/convert/impl/EnumConverter;->enumClass:Ljava/lang/Class;

    invoke-static {p1, v0}, Lcn/hutool/core/convert/impl/EnumConverter;->tryConvertEnum(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Enum;

    move-result-object v0

    if-nez v0, :cond_0

    .line 44
    instance-of v1, p1, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 46
    iget-object v0, p0, Lcn/hutool/core/convert/impl/EnumConverter;->enumClass:Ljava/lang/Class;

    invoke-virtual {p0, p1}, Lcn/hutool/core/convert/impl/EnumConverter;->convertToStr(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    :cond_0
    if-eqz v0, :cond_1

    return-object v0

    .line 53
    :cond_1
    new-instance v0, Lcn/hutool/core/convert/ConvertException;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x1

    iget-object v2, p0, Lcn/hutool/core/convert/impl/EnumConverter;->enumClass:Ljava/lang/Class;

    aput-object v2, v1, p1

    const-string p1, "Can not convert {} to {}"

    invoke-direct {v0, p1, v1}, Lcn/hutool/core/convert/ConvertException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0
.end method

.method public getTargetType()Ljava/lang/Class;
    .locals 1

    .line 58
    iget-object v0, p0, Lcn/hutool/core/convert/impl/EnumConverter;->enumClass:Ljava/lang/Class;

    return-object v0
.end method
