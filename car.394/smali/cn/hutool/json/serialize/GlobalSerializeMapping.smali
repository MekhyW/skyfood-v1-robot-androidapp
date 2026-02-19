.class public Lcn/hutool/json/serialize/GlobalSerializeMapping;
.super Ljava/lang/Object;
.source "GlobalSerializeMapping.java"


# static fields
.field private static deserializerMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/reflect/Type;",
            "Lcn/hutool/json/serialize/JSONDeserializer<",
            "*>;>;"
        }
    .end annotation
.end field

.field private static serializerMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/reflect/Type;",
            "Lcn/hutool/json/serialize/JSONSerializer<",
            "+",
            "Lcn/hutool/json/JSON;",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 26
    new-instance v0, Lcn/hutool/core/map/SafeConcurrentHashMap;

    invoke-direct {v0}, Lcn/hutool/core/map/SafeConcurrentHashMap;-><init>()V

    sput-object v0, Lcn/hutool/json/serialize/GlobalSerializeMapping;->serializerMap:Ljava/util/Map;

    .line 27
    new-instance v0, Lcn/hutool/core/map/SafeConcurrentHashMap;

    invoke-direct {v0}, Lcn/hutool/core/map/SafeConcurrentHashMap;-><init>()V

    sput-object v0, Lcn/hutool/json/serialize/GlobalSerializeMapping;->deserializerMap:Ljava/util/Map;

    .line 29
    new-instance v0, Lcn/hutool/json/serialize/TemporalAccessorSerializer;

    const-class v1, Ljava/time/LocalDate;

    invoke-direct {v0, v1}, Lcn/hutool/json/serialize/TemporalAccessorSerializer;-><init>(Ljava/lang/Class;)V

    .line 30
    sget-object v1, Lcn/hutool/json/serialize/GlobalSerializeMapping;->serializerMap:Ljava/util/Map;

    const-class v2, Ljava/time/LocalDate;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    sget-object v1, Lcn/hutool/json/serialize/GlobalSerializeMapping;->deserializerMap:Ljava/util/Map;

    const-class v2, Ljava/time/LocalDate;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    new-instance v0, Lcn/hutool/json/serialize/TemporalAccessorSerializer;

    const-class v1, Ljava/time/LocalDateTime;

    invoke-direct {v0, v1}, Lcn/hutool/json/serialize/TemporalAccessorSerializer;-><init>(Ljava/lang/Class;)V

    .line 34
    sget-object v1, Lcn/hutool/json/serialize/GlobalSerializeMapping;->serializerMap:Ljava/util/Map;

    const-class v2, Ljava/time/LocalDateTime;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    sget-object v1, Lcn/hutool/json/serialize/GlobalSerializeMapping;->deserializerMap:Ljava/util/Map;

    const-class v2, Ljava/time/LocalDateTime;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    new-instance v0, Lcn/hutool/json/serialize/TemporalAccessorSerializer;

    const-class v1, Ljava/time/LocalTime;

    invoke-direct {v0, v1}, Lcn/hutool/json/serialize/TemporalAccessorSerializer;-><init>(Ljava/lang/Class;)V

    .line 38
    sget-object v1, Lcn/hutool/json/serialize/GlobalSerializeMapping;->serializerMap:Ljava/util/Map;

    const-class v2, Ljava/time/LocalTime;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    sget-object v1, Lcn/hutool/json/serialize/GlobalSerializeMapping;->deserializerMap:Ljava/util/Map;

    const-class v2, Ljava/time/LocalTime;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDeserializer(Ljava/lang/reflect/Type;)Lcn/hutool/json/serialize/JSONDeserializer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            ")",
            "Lcn/hutool/json/serialize/JSONDeserializer<",
            "*>;"
        }
    .end annotation

    .line 106
    sget-object v0, Lcn/hutool/json/serialize/GlobalSerializeMapping;->deserializerMap:Ljava/util/Map;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 109
    :cond_0
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcn/hutool/json/serialize/JSONDeserializer;

    return-object p0
.end method

.method public static getSerializer(Ljava/lang/reflect/Type;)Lcn/hutool/json/serialize/JSONSerializer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            ")",
            "Lcn/hutool/json/serialize/JSONSerializer<",
            "+",
            "Lcn/hutool/json/JSON;",
            "*>;"
        }
    .end annotation

    .line 94
    sget-object v0, Lcn/hutool/json/serialize/GlobalSerializeMapping;->serializerMap:Ljava/util/Map;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 97
    :cond_0
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcn/hutool/json/serialize/JSONSerializer;

    return-object p0
.end method

.method public static put(Ljava/lang/reflect/Type;Lcn/hutool/json/serialize/JSONArraySerializer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "Lcn/hutool/json/serialize/JSONArraySerializer<",
            "*>;)V"
        }
    .end annotation

    .line 49
    invoke-static {p0, p1}, Lcn/hutool/json/serialize/GlobalSerializeMapping;->putInternal(Ljava/lang/reflect/Type;Lcn/hutool/json/serialize/JSONSerializer;)V

    return-void
.end method

.method public static declared-synchronized put(Ljava/lang/reflect/Type;Lcn/hutool/json/serialize/JSONDeserializer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "Lcn/hutool/json/serialize/JSONDeserializer<",
            "*>;)V"
        }
    .end annotation

    const-class v0, Lcn/hutool/json/serialize/GlobalSerializeMapping;

    monitor-enter v0

    .line 82
    :try_start_0
    sget-object v1, Lcn/hutool/json/serialize/GlobalSerializeMapping;->deserializerMap:Ljava/util/Map;

    if-nez v1, :cond_0

    .line 83
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v1, Lcn/hutool/json/serialize/GlobalSerializeMapping;->deserializerMap:Ljava/util/Map;

    .line 85
    :cond_0
    sget-object v1, Lcn/hutool/json/serialize/GlobalSerializeMapping;->deserializerMap:Ljava/util/Map;

    invoke-interface {v1, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 86
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static put(Ljava/lang/reflect/Type;Lcn/hutool/json/serialize/JSONObjectSerializer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "Lcn/hutool/json/serialize/JSONObjectSerializer<",
            "*>;)V"
        }
    .end annotation

    .line 59
    invoke-static {p0, p1}, Lcn/hutool/json/serialize/GlobalSerializeMapping;->putInternal(Ljava/lang/reflect/Type;Lcn/hutool/json/serialize/JSONSerializer;)V

    return-void
.end method

.method private static declared-synchronized putInternal(Ljava/lang/reflect/Type;Lcn/hutool/json/serialize/JSONSerializer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "Lcn/hutool/json/serialize/JSONSerializer<",
            "+",
            "Lcn/hutool/json/JSON;",
            "*>;)V"
        }
    .end annotation

    const-class v0, Lcn/hutool/json/serialize/GlobalSerializeMapping;

    monitor-enter v0

    .line 69
    :try_start_0
    sget-object v1, Lcn/hutool/json/serialize/GlobalSerializeMapping;->serializerMap:Ljava/util/Map;

    if-nez v1, :cond_0

    .line 70
    new-instance v1, Lcn/hutool/core/map/SafeConcurrentHashMap;

    invoke-direct {v1}, Lcn/hutool/core/map/SafeConcurrentHashMap;-><init>()V

    sput-object v1, Lcn/hutool/json/serialize/GlobalSerializeMapping;->serializerMap:Ljava/util/Map;

    .line 72
    :cond_0
    sget-object v1, Lcn/hutool/json/serialize/GlobalSerializeMapping;->serializerMap:Ljava/util/Map;

    invoke-interface {v1, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 73
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method
