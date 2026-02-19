.class public Lcn/hutool/core/convert/ConverterRegistry;
.super Ljava/lang/Object;
.source "ConverterRegistry.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/hutool/core/convert/ConverterRegistry$SingletonHolder;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private volatile customConverterMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/reflect/Type;",
            "Lcn/hutool/core/convert/Converter<",
            "*>;>;"
        }
    .end annotation
.end field

.field private defaultConverterMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/reflect/Type;",
            "Lcn/hutool/core/convert/Converter<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    invoke-direct {p0}, Lcn/hutool/core/convert/ConverterRegistry;->defaultConverter()Lcn/hutool/core/convert/ConverterRegistry;

    .line 74
    invoke-direct {p0}, Lcn/hutool/core/convert/ConverterRegistry;->putCustomBySpi()V

    return-void
.end method

.method private convertSpecial(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/Object;",
            "TT;)TT;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return-object v0

    .line 289
    :cond_0
    const-class v1, Ljava/util/Collection;

    invoke-virtual {v1, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 290
    new-instance p2, Lcn/hutool/core/convert/impl/CollectionConverter;

    invoke-direct {p2, p1}, Lcn/hutool/core/convert/impl/CollectionConverter;-><init>(Ljava/lang/reflect/Type;)V

    .line 291
    check-cast p4, Ljava/util/Collection;

    invoke-virtual {p2, p3, p4}, Lcn/hutool/core/convert/impl/CollectionConverter;->convert(Ljava/lang/Object;Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object p1

    return-object p1

    .line 295
    :cond_1
    const-class v1, Ljava/util/Map;

    invoke-virtual {v1, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 296
    new-instance p2, Lcn/hutool/core/convert/impl/MapConverter;

    invoke-direct {p2, p1}, Lcn/hutool/core/convert/impl/MapConverter;-><init>(Ljava/lang/reflect/Type;)V

    .line 297
    check-cast p4, Ljava/util/Map;

    invoke-virtual {p2, p3, p4}, Lcn/hutool/core/convert/impl/MapConverter;->convert(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 301
    :cond_2
    const-class v1, Ljava/util/Map$Entry;

    invoke-virtual {v1, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 302
    new-instance p2, Lcn/hutool/core/convert/impl/EntryConverter;

    invoke-direct {p2, p1}, Lcn/hutool/core/convert/impl/EntryConverter;-><init>(Ljava/lang/reflect/Type;)V

    .line 303
    check-cast p4, Ljava/util/Map$Entry;

    invoke-virtual {p2, p3, p4}, Lcn/hutool/core/convert/impl/EntryConverter;->convert(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 307
    :cond_3
    invoke-virtual {p2, p3}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    return-object p3

    .line 312
    :cond_4
    invoke-virtual {p2}, Ljava/lang/Class;->isEnum()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 313
    new-instance p1, Lcn/hutool/core/convert/impl/EnumConverter;

    invoke-direct {p1, p2}, Lcn/hutool/core/convert/impl/EnumConverter;-><init>(Ljava/lang/Class;)V

    invoke-virtual {p1, p3, p4}, Lcn/hutool/core/convert/impl/EnumConverter;->convert(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 317
    :cond_5
    invoke-virtual {p2}, Ljava/lang/Class;->isArray()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 318
    new-instance p1, Lcn/hutool/core/convert/impl/ArrayConverter;

    invoke-direct {p1, p2}, Lcn/hutool/core/convert/impl/ArrayConverter;-><init>(Ljava/lang/Class;)V

    .line 319
    invoke-virtual {p1, p3, p4}, Lcn/hutool/core/convert/impl/ArrayConverter;->convert(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_6
    return-object v0
.end method

.method private defaultConverter()Lcn/hutool/core/convert/ConverterRegistry;
    .locals 4

    .line 332
    new-instance v0, Lcn/hutool/core/map/SafeConcurrentHashMap;

    invoke-direct {v0}, Lcn/hutool/core/map/SafeConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcn/hutool/core/convert/ConverterRegistry;->defaultConverterMap:Ljava/util/Map;

    .line 335
    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    new-instance v2, Lcn/hutool/core/convert/impl/PrimitiveConverter;

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {v2, v3}, Lcn/hutool/core/convert/impl/PrimitiveConverter;-><init>(Ljava/lang/Class;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 336
    iget-object v0, p0, Lcn/hutool/core/convert/ConverterRegistry;->defaultConverterMap:Ljava/util/Map;

    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    new-instance v2, Lcn/hutool/core/convert/impl/PrimitiveConverter;

    sget-object v3, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-direct {v2, v3}, Lcn/hutool/core/convert/impl/PrimitiveConverter;-><init>(Ljava/lang/Class;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 337
    iget-object v0, p0, Lcn/hutool/core/convert/ConverterRegistry;->defaultConverterMap:Ljava/util/Map;

    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    new-instance v2, Lcn/hutool/core/convert/impl/PrimitiveConverter;

    sget-object v3, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-direct {v2, v3}, Lcn/hutool/core/convert/impl/PrimitiveConverter;-><init>(Ljava/lang/Class;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 338
    iget-object v0, p0, Lcn/hutool/core/convert/ConverterRegistry;->defaultConverterMap:Ljava/util/Map;

    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    new-instance v2, Lcn/hutool/core/convert/impl/PrimitiveConverter;

    sget-object v3, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-direct {v2, v3}, Lcn/hutool/core/convert/impl/PrimitiveConverter;-><init>(Ljava/lang/Class;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 339
    iget-object v0, p0, Lcn/hutool/core/convert/ConverterRegistry;->defaultConverterMap:Ljava/util/Map;

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    new-instance v2, Lcn/hutool/core/convert/impl/PrimitiveConverter;

    sget-object v3, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-direct {v2, v3}, Lcn/hutool/core/convert/impl/PrimitiveConverter;-><init>(Ljava/lang/Class;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 340
    iget-object v0, p0, Lcn/hutool/core/convert/ConverterRegistry;->defaultConverterMap:Ljava/util/Map;

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    new-instance v2, Lcn/hutool/core/convert/impl/PrimitiveConverter;

    sget-object v3, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-direct {v2, v3}, Lcn/hutool/core/convert/impl/PrimitiveConverter;-><init>(Ljava/lang/Class;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 341
    iget-object v0, p0, Lcn/hutool/core/convert/ConverterRegistry;->defaultConverterMap:Ljava/util/Map;

    sget-object v1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    new-instance v2, Lcn/hutool/core/convert/impl/PrimitiveConverter;

    sget-object v3, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-direct {v2, v3}, Lcn/hutool/core/convert/impl/PrimitiveConverter;-><init>(Ljava/lang/Class;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 342
    iget-object v0, p0, Lcn/hutool/core/convert/ConverterRegistry;->defaultConverterMap:Ljava/util/Map;

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    new-instance v2, Lcn/hutool/core/convert/impl/PrimitiveConverter;

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-direct {v2, v3}, Lcn/hutool/core/convert/impl/PrimitiveConverter;-><init>(Ljava/lang/Class;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 345
    iget-object v0, p0, Lcn/hutool/core/convert/ConverterRegistry;->defaultConverterMap:Ljava/util/Map;

    const-class v1, Ljava/lang/Number;

    new-instance v2, Lcn/hutool/core/convert/impl/NumberConverter;

    invoke-direct {v2}, Lcn/hutool/core/convert/impl/NumberConverter;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 346
    iget-object v0, p0, Lcn/hutool/core/convert/ConverterRegistry;->defaultConverterMap:Ljava/util/Map;

    const-class v1, Ljava/lang/Integer;

    new-instance v2, Lcn/hutool/core/convert/impl/NumberConverter;

    const-class v3, Ljava/lang/Integer;

    invoke-direct {v2, v3}, Lcn/hutool/core/convert/impl/NumberConverter;-><init>(Ljava/lang/Class;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 347
    iget-object v0, p0, Lcn/hutool/core/convert/ConverterRegistry;->defaultConverterMap:Ljava/util/Map;

    const-class v1, Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v2, Lcn/hutool/core/convert/impl/NumberConverter;

    const-class v3, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v2, v3}, Lcn/hutool/core/convert/impl/NumberConverter;-><init>(Ljava/lang/Class;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 348
    iget-object v0, p0, Lcn/hutool/core/convert/ConverterRegistry;->defaultConverterMap:Ljava/util/Map;

    const-class v1, Ljava/lang/Long;

    new-instance v2, Lcn/hutool/core/convert/impl/NumberConverter;

    const-class v3, Ljava/lang/Long;

    invoke-direct {v2, v3}, Lcn/hutool/core/convert/impl/NumberConverter;-><init>(Ljava/lang/Class;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 349
    iget-object v0, p0, Lcn/hutool/core/convert/ConverterRegistry;->defaultConverterMap:Ljava/util/Map;

    const-class v1, Ljava/util/concurrent/atomic/LongAdder;

    new-instance v2, Lcn/hutool/core/convert/impl/NumberConverter;

    const-class v3, Ljava/util/concurrent/atomic/LongAdder;

    invoke-direct {v2, v3}, Lcn/hutool/core/convert/impl/NumberConverter;-><init>(Ljava/lang/Class;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 350
    iget-object v0, p0, Lcn/hutool/core/convert/ConverterRegistry;->defaultConverterMap:Ljava/util/Map;

    const-class v1, Ljava/util/concurrent/atomic/AtomicLong;

    new-instance v2, Lcn/hutool/core/convert/impl/NumberConverter;

    const-class v3, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v2, v3}, Lcn/hutool/core/convert/impl/NumberConverter;-><init>(Ljava/lang/Class;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 351
    iget-object v0, p0, Lcn/hutool/core/convert/ConverterRegistry;->defaultConverterMap:Ljava/util/Map;

    const-class v1, Ljava/lang/Byte;

    new-instance v2, Lcn/hutool/core/convert/impl/NumberConverter;

    const-class v3, Ljava/lang/Byte;

    invoke-direct {v2, v3}, Lcn/hutool/core/convert/impl/NumberConverter;-><init>(Ljava/lang/Class;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 352
    iget-object v0, p0, Lcn/hutool/core/convert/ConverterRegistry;->defaultConverterMap:Ljava/util/Map;

    const-class v1, Ljava/lang/Short;

    new-instance v2, Lcn/hutool/core/convert/impl/NumberConverter;

    const-class v3, Ljava/lang/Short;

    invoke-direct {v2, v3}, Lcn/hutool/core/convert/impl/NumberConverter;-><init>(Ljava/lang/Class;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 353
    iget-object v0, p0, Lcn/hutool/core/convert/ConverterRegistry;->defaultConverterMap:Ljava/util/Map;

    const-class v1, Ljava/lang/Float;

    new-instance v2, Lcn/hutool/core/convert/impl/NumberConverter;

    const-class v3, Ljava/lang/Float;

    invoke-direct {v2, v3}, Lcn/hutool/core/convert/impl/NumberConverter;-><init>(Ljava/lang/Class;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 354
    iget-object v0, p0, Lcn/hutool/core/convert/ConverterRegistry;->defaultConverterMap:Ljava/util/Map;

    const-class v1, Ljava/lang/Double;

    new-instance v2, Lcn/hutool/core/convert/impl/NumberConverter;

    const-class v3, Ljava/lang/Double;

    invoke-direct {v2, v3}, Lcn/hutool/core/convert/impl/NumberConverter;-><init>(Ljava/lang/Class;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 355
    iget-object v0, p0, Lcn/hutool/core/convert/ConverterRegistry;->defaultConverterMap:Ljava/util/Map;

    const-class v1, Ljava/util/concurrent/atomic/DoubleAdder;

    new-instance v2, Lcn/hutool/core/convert/impl/NumberConverter;

    const-class v3, Ljava/util/concurrent/atomic/DoubleAdder;

    invoke-direct {v2, v3}, Lcn/hutool/core/convert/impl/NumberConverter;-><init>(Ljava/lang/Class;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 356
    iget-object v0, p0, Lcn/hutool/core/convert/ConverterRegistry;->defaultConverterMap:Ljava/util/Map;

    const-class v1, Ljava/lang/Character;

    new-instance v2, Lcn/hutool/core/convert/impl/CharacterConverter;

    invoke-direct {v2}, Lcn/hutool/core/convert/impl/CharacterConverter;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 357
    iget-object v0, p0, Lcn/hutool/core/convert/ConverterRegistry;->defaultConverterMap:Ljava/util/Map;

    const-class v1, Ljava/lang/Boolean;

    new-instance v2, Lcn/hutool/core/convert/impl/BooleanConverter;

    invoke-direct {v2}, Lcn/hutool/core/convert/impl/BooleanConverter;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 358
    iget-object v0, p0, Lcn/hutool/core/convert/ConverterRegistry;->defaultConverterMap:Ljava/util/Map;

    const-class v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v2, Lcn/hutool/core/convert/impl/AtomicBooleanConverter;

    invoke-direct {v2}, Lcn/hutool/core/convert/impl/AtomicBooleanConverter;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 359
    iget-object v0, p0, Lcn/hutool/core/convert/ConverterRegistry;->defaultConverterMap:Ljava/util/Map;

    const-class v1, Ljava/math/BigDecimal;

    new-instance v2, Lcn/hutool/core/convert/impl/NumberConverter;

    const-class v3, Ljava/math/BigDecimal;

    invoke-direct {v2, v3}, Lcn/hutool/core/convert/impl/NumberConverter;-><init>(Ljava/lang/Class;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 360
    iget-object v0, p0, Lcn/hutool/core/convert/ConverterRegistry;->defaultConverterMap:Ljava/util/Map;

    const-class v1, Ljava/math/BigInteger;

    new-instance v2, Lcn/hutool/core/convert/impl/NumberConverter;

    const-class v3, Ljava/math/BigInteger;

    invoke-direct {v2, v3}, Lcn/hutool/core/convert/impl/NumberConverter;-><init>(Ljava/lang/Class;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 361
    iget-object v0, p0, Lcn/hutool/core/convert/ConverterRegistry;->defaultConverterMap:Ljava/util/Map;

    const-class v1, Ljava/lang/CharSequence;

    new-instance v2, Lcn/hutool/core/convert/impl/StringConverter;

    invoke-direct {v2}, Lcn/hutool/core/convert/impl/StringConverter;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 362
    iget-object v0, p0, Lcn/hutool/core/convert/ConverterRegistry;->defaultConverterMap:Ljava/util/Map;

    const-class v1, Ljava/lang/String;

    new-instance v2, Lcn/hutool/core/convert/impl/StringConverter;

    invoke-direct {v2}, Lcn/hutool/core/convert/impl/StringConverter;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 365
    iget-object v0, p0, Lcn/hutool/core/convert/ConverterRegistry;->defaultConverterMap:Ljava/util/Map;

    const-class v1, Ljava/net/URI;

    new-instance v2, Lcn/hutool/core/convert/impl/URIConverter;

    invoke-direct {v2}, Lcn/hutool/core/convert/impl/URIConverter;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 366
    iget-object v0, p0, Lcn/hutool/core/convert/ConverterRegistry;->defaultConverterMap:Ljava/util/Map;

    const-class v1, Ljava/net/URL;

    new-instance v2, Lcn/hutool/core/convert/impl/URLConverter;

    invoke-direct {v2}, Lcn/hutool/core/convert/impl/URLConverter;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 369
    iget-object v0, p0, Lcn/hutool/core/convert/ConverterRegistry;->defaultConverterMap:Ljava/util/Map;

    const-class v1, Ljava/util/Calendar;

    new-instance v2, Lcn/hutool/core/convert/impl/CalendarConverter;

    invoke-direct {v2}, Lcn/hutool/core/convert/impl/CalendarConverter;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 370
    iget-object v0, p0, Lcn/hutool/core/convert/ConverterRegistry;->defaultConverterMap:Ljava/util/Map;

    const-class v1, Ljava/util/Date;

    new-instance v2, Lcn/hutool/core/convert/impl/DateConverter;

    const-class v3, Ljava/util/Date;

    invoke-direct {v2, v3}, Lcn/hutool/core/convert/impl/DateConverter;-><init>(Ljava/lang/Class;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 371
    iget-object v0, p0, Lcn/hutool/core/convert/ConverterRegistry;->defaultConverterMap:Ljava/util/Map;

    const-class v1, Lcn/hutool/core/date/DateTime;

    new-instance v2, Lcn/hutool/core/convert/impl/DateConverter;

    const-class v3, Lcn/hutool/core/date/DateTime;

    invoke-direct {v2, v3}, Lcn/hutool/core/convert/impl/DateConverter;-><init>(Ljava/lang/Class;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 372
    iget-object v0, p0, Lcn/hutool/core/convert/ConverterRegistry;->defaultConverterMap:Ljava/util/Map;

    const-class v1, Ljava/sql/Date;

    new-instance v2, Lcn/hutool/core/convert/impl/DateConverter;

    const-class v3, Ljava/sql/Date;

    invoke-direct {v2, v3}, Lcn/hutool/core/convert/impl/DateConverter;-><init>(Ljava/lang/Class;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 373
    iget-object v0, p0, Lcn/hutool/core/convert/ConverterRegistry;->defaultConverterMap:Ljava/util/Map;

    const-class v1, Ljava/sql/Time;

    new-instance v2, Lcn/hutool/core/convert/impl/DateConverter;

    const-class v3, Ljava/sql/Time;

    invoke-direct {v2, v3}, Lcn/hutool/core/convert/impl/DateConverter;-><init>(Ljava/lang/Class;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 374
    iget-object v0, p0, Lcn/hutool/core/convert/ConverterRegistry;->defaultConverterMap:Ljava/util/Map;

    const-class v1, Ljava/sql/Timestamp;

    new-instance v2, Lcn/hutool/core/convert/impl/DateConverter;

    const-class v3, Ljava/sql/Timestamp;

    invoke-direct {v2, v3}, Lcn/hutool/core/convert/impl/DateConverter;-><init>(Ljava/lang/Class;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 377
    iget-object v0, p0, Lcn/hutool/core/convert/ConverterRegistry;->defaultConverterMap:Ljava/util/Map;

    const-class v1, Ljava/time/temporal/TemporalAccessor;

    new-instance v2, Lcn/hutool/core/convert/impl/TemporalAccessorConverter;

    const-class v3, Ljava/time/Instant;

    invoke-direct {v2, v3}, Lcn/hutool/core/convert/impl/TemporalAccessorConverter;-><init>(Ljava/lang/Class;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 378
    iget-object v0, p0, Lcn/hutool/core/convert/ConverterRegistry;->defaultConverterMap:Ljava/util/Map;

    const-class v1, Ljava/time/Instant;

    new-instance v2, Lcn/hutool/core/convert/impl/TemporalAccessorConverter;

    const-class v3, Ljava/time/Instant;

    invoke-direct {v2, v3}, Lcn/hutool/core/convert/impl/TemporalAccessorConverter;-><init>(Ljava/lang/Class;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 379
    iget-object v0, p0, Lcn/hutool/core/convert/ConverterRegistry;->defaultConverterMap:Ljava/util/Map;

    const-class v1, Ljava/time/LocalDateTime;

    new-instance v2, Lcn/hutool/core/convert/impl/TemporalAccessorConverter;

    const-class v3, Ljava/time/LocalDateTime;

    invoke-direct {v2, v3}, Lcn/hutool/core/convert/impl/TemporalAccessorConverter;-><init>(Ljava/lang/Class;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 380
    iget-object v0, p0, Lcn/hutool/core/convert/ConverterRegistry;->defaultConverterMap:Ljava/util/Map;

    const-class v1, Ljava/time/LocalDate;

    new-instance v2, Lcn/hutool/core/convert/impl/TemporalAccessorConverter;

    const-class v3, Ljava/time/LocalDate;

    invoke-direct {v2, v3}, Lcn/hutool/core/convert/impl/TemporalAccessorConverter;-><init>(Ljava/lang/Class;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 381
    iget-object v0, p0, Lcn/hutool/core/convert/ConverterRegistry;->defaultConverterMap:Ljava/util/Map;

    const-class v1, Ljava/time/LocalTime;

    new-instance v2, Lcn/hutool/core/convert/impl/TemporalAccessorConverter;

    const-class v3, Ljava/time/LocalTime;

    invoke-direct {v2, v3}, Lcn/hutool/core/convert/impl/TemporalAccessorConverter;-><init>(Ljava/lang/Class;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 382
    iget-object v0, p0, Lcn/hutool/core/convert/ConverterRegistry;->defaultConverterMap:Ljava/util/Map;

    const-class v1, Ljava/time/ZonedDateTime;

    new-instance v2, Lcn/hutool/core/convert/impl/TemporalAccessorConverter;

    const-class v3, Ljava/time/ZonedDateTime;

    invoke-direct {v2, v3}, Lcn/hutool/core/convert/impl/TemporalAccessorConverter;-><init>(Ljava/lang/Class;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 383
    iget-object v0, p0, Lcn/hutool/core/convert/ConverterRegistry;->defaultConverterMap:Ljava/util/Map;

    const-class v1, Ljava/time/OffsetDateTime;

    new-instance v2, Lcn/hutool/core/convert/impl/TemporalAccessorConverter;

    const-class v3, Ljava/time/OffsetDateTime;

    invoke-direct {v2, v3}, Lcn/hutool/core/convert/impl/TemporalAccessorConverter;-><init>(Ljava/lang/Class;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 384
    iget-object v0, p0, Lcn/hutool/core/convert/ConverterRegistry;->defaultConverterMap:Ljava/util/Map;

    const-class v1, Ljava/time/OffsetTime;

    new-instance v2, Lcn/hutool/core/convert/impl/TemporalAccessorConverter;

    const-class v3, Ljava/time/OffsetTime;

    invoke-direct {v2, v3}, Lcn/hutool/core/convert/impl/TemporalAccessorConverter;-><init>(Ljava/lang/Class;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 385
    iget-object v0, p0, Lcn/hutool/core/convert/ConverterRegistry;->defaultConverterMap:Ljava/util/Map;

    const-class v1, Ljava/time/DayOfWeek;

    new-instance v2, Lcn/hutool/core/convert/impl/TemporalAccessorConverter;

    const-class v3, Ljava/time/DayOfWeek;

    invoke-direct {v2, v3}, Lcn/hutool/core/convert/impl/TemporalAccessorConverter;-><init>(Ljava/lang/Class;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 386
    iget-object v0, p0, Lcn/hutool/core/convert/ConverterRegistry;->defaultConverterMap:Ljava/util/Map;

    const-class v1, Ljava/time/Month;

    new-instance v2, Lcn/hutool/core/convert/impl/TemporalAccessorConverter;

    const-class v3, Ljava/time/Month;

    invoke-direct {v2, v3}, Lcn/hutool/core/convert/impl/TemporalAccessorConverter;-><init>(Ljava/lang/Class;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 387
    iget-object v0, p0, Lcn/hutool/core/convert/ConverterRegistry;->defaultConverterMap:Ljava/util/Map;

    const-class v1, Ljava/time/MonthDay;

    new-instance v2, Lcn/hutool/core/convert/impl/TemporalAccessorConverter;

    const-class v3, Ljava/time/MonthDay;

    invoke-direct {v2, v3}, Lcn/hutool/core/convert/impl/TemporalAccessorConverter;-><init>(Ljava/lang/Class;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 388
    iget-object v0, p0, Lcn/hutool/core/convert/ConverterRegistry;->defaultConverterMap:Ljava/util/Map;

    const-class v1, Ljava/time/Period;

    new-instance v2, Lcn/hutool/core/convert/impl/PeriodConverter;

    invoke-direct {v2}, Lcn/hutool/core/convert/impl/PeriodConverter;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 389
    iget-object v0, p0, Lcn/hutool/core/convert/ConverterRegistry;->defaultConverterMap:Ljava/util/Map;

    const-class v1, Ljava/time/Duration;

    new-instance v2, Lcn/hutool/core/convert/impl/DurationConverter;

    invoke-direct {v2}, Lcn/hutool/core/convert/impl/DurationConverter;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 392
    iget-object v0, p0, Lcn/hutool/core/convert/ConverterRegistry;->defaultConverterMap:Ljava/util/Map;

    const-class v1, Ljava/lang/ref/WeakReference;

    new-instance v2, Lcn/hutool/core/convert/impl/ReferenceConverter;

    const-class v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, v3}, Lcn/hutool/core/convert/impl/ReferenceConverter;-><init>(Ljava/lang/Class;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 393
    iget-object v0, p0, Lcn/hutool/core/convert/ConverterRegistry;->defaultConverterMap:Ljava/util/Map;

    const-class v1, Ljava/lang/ref/SoftReference;

    new-instance v2, Lcn/hutool/core/convert/impl/ReferenceConverter;

    const-class v3, Ljava/lang/ref/SoftReference;

    invoke-direct {v2, v3}, Lcn/hutool/core/convert/impl/ReferenceConverter;-><init>(Ljava/lang/Class;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 394
    iget-object v0, p0, Lcn/hutool/core/convert/ConverterRegistry;->defaultConverterMap:Ljava/util/Map;

    const-class v1, Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v2, Lcn/hutool/core/convert/impl/AtomicReferenceConverter;

    invoke-direct {v2}, Lcn/hutool/core/convert/impl/AtomicReferenceConverter;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 397
    iget-object v0, p0, Lcn/hutool/core/convert/ConverterRegistry;->defaultConverterMap:Ljava/util/Map;

    const-class v1, Ljava/util/concurrent/atomic/AtomicIntegerArray;

    new-instance v2, Lcn/hutool/core/convert/impl/AtomicIntegerArrayConverter;

    invoke-direct {v2}, Lcn/hutool/core/convert/impl/AtomicIntegerArrayConverter;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 398
    iget-object v0, p0, Lcn/hutool/core/convert/ConverterRegistry;->defaultConverterMap:Ljava/util/Map;

    const-class v1, Ljava/util/concurrent/atomic/AtomicLongArray;

    new-instance v2, Lcn/hutool/core/convert/impl/AtomicLongArrayConverter;

    invoke-direct {v2}, Lcn/hutool/core/convert/impl/AtomicLongArrayConverter;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 401
    iget-object v0, p0, Lcn/hutool/core/convert/ConverterRegistry;->defaultConverterMap:Ljava/util/Map;

    const-class v1, Ljava/lang/Class;

    new-instance v2, Lcn/hutool/core/convert/impl/ClassConverter;

    invoke-direct {v2}, Lcn/hutool/core/convert/impl/ClassConverter;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 402
    iget-object v0, p0, Lcn/hutool/core/convert/ConverterRegistry;->defaultConverterMap:Ljava/util/Map;

    const-class v1, Ljava/util/TimeZone;

    new-instance v2, Lcn/hutool/core/convert/impl/TimeZoneConverter;

    invoke-direct {v2}, Lcn/hutool/core/convert/impl/TimeZoneConverter;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 403
    iget-object v0, p0, Lcn/hutool/core/convert/ConverterRegistry;->defaultConverterMap:Ljava/util/Map;

    const-class v1, Ljava/util/Locale;

    new-instance v2, Lcn/hutool/core/convert/impl/LocaleConverter;

    invoke-direct {v2}, Lcn/hutool/core/convert/impl/LocaleConverter;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 404
    iget-object v0, p0, Lcn/hutool/core/convert/ConverterRegistry;->defaultConverterMap:Ljava/util/Map;

    const-class v1, Ljava/nio/charset/Charset;

    new-instance v2, Lcn/hutool/core/convert/impl/CharsetConverter;

    invoke-direct {v2}, Lcn/hutool/core/convert/impl/CharsetConverter;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 405
    iget-object v0, p0, Lcn/hutool/core/convert/ConverterRegistry;->defaultConverterMap:Ljava/util/Map;

    const-class v1, Ljava/nio/file/Path;

    new-instance v2, Lcn/hutool/core/convert/impl/PathConverter;

    invoke-direct {v2}, Lcn/hutool/core/convert/impl/PathConverter;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 406
    iget-object v0, p0, Lcn/hutool/core/convert/ConverterRegistry;->defaultConverterMap:Ljava/util/Map;

    const-class v1, Ljava/util/Currency;

    new-instance v2, Lcn/hutool/core/convert/impl/CurrencyConverter;

    invoke-direct {v2}, Lcn/hutool/core/convert/impl/CurrencyConverter;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 407
    iget-object v0, p0, Lcn/hutool/core/convert/ConverterRegistry;->defaultConverterMap:Ljava/util/Map;

    const-class v1, Ljava/util/UUID;

    new-instance v2, Lcn/hutool/core/convert/impl/UUIDConverter;

    invoke-direct {v2}, Lcn/hutool/core/convert/impl/UUIDConverter;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 408
    iget-object v0, p0, Lcn/hutool/core/convert/ConverterRegistry;->defaultConverterMap:Ljava/util/Map;

    const-class v1, Ljava/lang/StackTraceElement;

    new-instance v2, Lcn/hutool/core/convert/impl/StackTraceElementConverter;

    invoke-direct {v2}, Lcn/hutool/core/convert/impl/StackTraceElementConverter;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 409
    iget-object v0, p0, Lcn/hutool/core/convert/ConverterRegistry;->defaultConverterMap:Ljava/util/Map;

    const-class v1, Ljava/util/Optional;

    new-instance v2, Lcn/hutool/core/convert/impl/OptionalConverter;

    invoke-direct {v2}, Lcn/hutool/core/convert/impl/OptionalConverter;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 410
    iget-object v0, p0, Lcn/hutool/core/convert/ConverterRegistry;->defaultConverterMap:Ljava/util/Map;

    const-class v1, Lcn/hutool/core/lang/Opt;

    new-instance v2, Lcn/hutool/core/convert/impl/OptConverter;

    invoke-direct {v2}, Lcn/hutool/core/convert/impl/OptConverter;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 411
    iget-object v0, p0, Lcn/hutool/core/convert/ConverterRegistry;->defaultConverterMap:Ljava/util/Map;

    const-class v1, Lcn/hutool/core/lang/Pair;

    new-instance v2, Lcn/hutool/core/convert/impl/PairConverter;

    const-class v3, Lcn/hutool/core/lang/Pair;

    invoke-direct {v2, v3}, Lcn/hutool/core/convert/impl/PairConverter;-><init>(Ljava/lang/reflect/Type;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public static getInstance()Lcn/hutool/core/convert/ConverterRegistry;
    .locals 1

    .line 66
    invoke-static {}, Lcn/hutool/core/convert/ConverterRegistry$SingletonHolder;->access$000()Lcn/hutool/core/convert/ConverterRegistry;

    move-result-object v0

    return-object v0
.end method

.method private putCustomBySpi()V
    .locals 2

    .line 81
    const-class v0, Lcn/hutool/core/convert/Converter;

    invoke-static {v0}, Lcn/hutool/core/util/ServiceLoaderUtil;->load(Ljava/lang/Class;)Ljava/util/ServiceLoader;

    move-result-object v0

    new-instance v1, Lcn/hutool/core/convert/ConverterRegistry$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcn/hutool/core/convert/ConverterRegistry$$ExternalSyntheticLambda0;-><init>(Lcn/hutool/core/convert/ConverterRegistry;)V

    invoke-virtual {v0, v1}, Ljava/util/ServiceLoader;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method


# virtual methods
.method public convert(Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/hutool/core/convert/ConvertException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 260
    invoke-virtual {p0, p1, p2, v0}, Lcn/hutool/core/convert/ConverterRegistry;->convert(Ljava/lang/reflect/Type;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public convert(Ljava/lang/reflect/Type;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Object;",
            "TT;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/hutool/core/convert/ConvertException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 247
    invoke-virtual {p0, p1, p2, p3, v0}, Lcn/hutool/core/convert/ConverterRegistry;->convert(Ljava/lang/reflect/Type;Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public convert(Ljava/lang/reflect/Type;Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Object;",
            "TT;Z)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/hutool/core/convert/ConvertException;
        }
    .end annotation

    .line 184
    invoke-static {p1}, Lcn/hutool/core/util/TypeUtil;->isUnknown(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez p3, :cond_0

    return-object p2

    .line 188
    :cond_0
    invoke-static {p2}, Lcn/hutool/core/util/ObjectUtil;->isNull(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-object p3

    .line 191
    :cond_1
    invoke-static {p1}, Lcn/hutool/core/util/TypeUtil;->isUnknown(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 192
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    .line 195
    :cond_2
    instance-of v0, p1, Lcn/hutool/core/lang/TypeReference;

    if-eqz v0, :cond_3

    .line 196
    check-cast p1, Lcn/hutool/core/lang/TypeReference;

    invoke-virtual {p1}, Lcn/hutool/core/lang/TypeReference;->getType()Ljava/lang/reflect/Type;

    move-result-object p1

    .line 200
    :cond_3
    instance-of v0, p2, Lcn/hutool/core/convert/TypeConverter;

    if-eqz v0, :cond_4

    .line 201
    move-object p4, p2

    check-cast p4, Lcn/hutool/core/convert/TypeConverter;

    invoke-interface {p4, p1, p2}, Lcn/hutool/core/convert/TypeConverter;->convert(Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1, p3}, Lcn/hutool/core/util/ObjUtil;->defaultIfNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 205
    :cond_4
    invoke-virtual {p0, p1, p4}, Lcn/hutool/core/convert/ConverterRegistry;->getConverter(Ljava/lang/reflect/Type;Z)Lcn/hutool/core/convert/Converter;

    move-result-object p4

    if-eqz p4, :cond_5

    .line 207
    invoke-interface {p4, p2, p3}, Lcn/hutool/core/convert/Converter;->convert(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 210
    :cond_5
    invoke-static {p1}, Lcn/hutool/core/util/TypeUtil;->getClass(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object p4

    if-nez p4, :cond_7

    if-eqz p3, :cond_6

    .line 213
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p4

    goto :goto_0

    :cond_6
    return-object p2

    .line 221
    :cond_7
    :goto_0
    invoke-direct {p0, p1, p4, p2, p3}, Lcn/hutool/core/convert/ConverterRegistry;->convertSpecial(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_8

    return-object v0

    .line 227
    :cond_8
    invoke-static {p4}, Lcn/hutool/core/bean/BeanUtil;->isBean(Ljava/lang/Class;)Z

    move-result p4

    if-eqz p4, :cond_9

    .line 228
    new-instance p4, Lcn/hutool/core/convert/impl/BeanConverter;

    invoke-direct {p4, p1}, Lcn/hutool/core/convert/impl/BeanConverter;-><init>(Ljava/lang/reflect/Type;)V

    invoke-virtual {p4, p2, p3}, Lcn/hutool/core/convert/impl/BeanConverter;->convert(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 232
    :cond_9
    new-instance p3, Lcn/hutool/core/convert/ConvertException;

    const/4 p4, 0x2

    new-array p4, p4, [Ljava/lang/Object;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    aput-object p2, p4, v0

    const/4 p2, 0x1

    invoke-interface {p1}, Ljava/lang/reflect/Type;->getTypeName()Ljava/lang/String;

    move-result-object p1

    aput-object p1, p4, p2

    const-string p1, "Can not Converter from [{}] to [{}]"

    invoke-direct {p3, p1, p4}, Lcn/hutool/core/convert/ConvertException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p3
.end method

.method public getConverter(Ljava/lang/reflect/Type;Z)Lcn/hutool/core/convert/Converter;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/reflect/Type;",
            "Z)",
            "Lcn/hutool/core/convert/Converter<",
            "TT;>;"
        }
    .end annotation

    if-eqz p2, :cond_0

    .line 134
    invoke-virtual {p0, p1}, Lcn/hutool/core/convert/ConverterRegistry;->getCustomConverter(Ljava/lang/reflect/Type;)Lcn/hutool/core/convert/Converter;

    move-result-object p2

    if-nez p2, :cond_1

    .line 136
    invoke-virtual {p0, p1}, Lcn/hutool/core/convert/ConverterRegistry;->getDefaultConverter(Ljava/lang/reflect/Type;)Lcn/hutool/core/convert/Converter;

    move-result-object p2

    goto :goto_0

    .line 139
    :cond_0
    invoke-virtual {p0, p1}, Lcn/hutool/core/convert/ConverterRegistry;->getDefaultConverter(Ljava/lang/reflect/Type;)Lcn/hutool/core/convert/Converter;

    move-result-object p2

    if-nez p2, :cond_1

    .line 141
    invoke-virtual {p0, p1}, Lcn/hutool/core/convert/ConverterRegistry;->getCustomConverter(Ljava/lang/reflect/Type;)Lcn/hutool/core/convert/Converter;

    move-result-object p2

    :cond_1
    :goto_0
    return-object p2
.end method

.method public getCustomConverter(Ljava/lang/reflect/Type;)Lcn/hutool/core/convert/Converter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/reflect/Type;",
            ")",
            "Lcn/hutool/core/convert/Converter<",
            "TT;>;"
        }
    .end annotation

    .line 168
    iget-object v0, p0, Lcn/hutool/core/convert/ConverterRegistry;->customConverterMap:Ljava/util/Map;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcn/hutool/core/convert/ConverterRegistry;->customConverterMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/hutool/core/convert/Converter;

    :goto_0
    return-object p1
.end method

.method public getDefaultConverter(Ljava/lang/reflect/Type;)Lcn/hutool/core/convert/Converter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/reflect/Type;",
            ")",
            "Lcn/hutool/core/convert/Converter<",
            "TT;>;"
        }
    .end annotation

    .line 156
    iget-object v0, p0, Lcn/hutool/core/convert/ConverterRegistry;->defaultConverterMap:Ljava/util/Map;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/hutool/core/convert/Converter;

    :goto_0
    return-object p1
.end method

.method synthetic lambda$putCustomBySpi$0$cn-hutool-core-convert-ConverterRegistry(Lcn/hutool/core/convert/Converter;)V
    .locals 1

    .line 83
    :try_start_0
    invoke-static {p1}, Lcn/hutool/core/util/ClassUtil;->getClass(Ljava/lang/Object;)Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcn/hutool/core/util/TypeUtil;->getTypeArgument(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 85
    invoke-virtual {p0, v0, p1}, Lcn/hutool/core/convert/ConverterRegistry;->putCustom(Ljava/lang/reflect/Type;Lcn/hutool/core/convert/Converter;)Lcn/hutool/core/convert/ConverterRegistry;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public putCustom(Ljava/lang/reflect/Type;Lcn/hutool/core/convert/Converter;)Lcn/hutool/core/convert/ConverterRegistry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "Lcn/hutool/core/convert/Converter<",
            "*>;)",
            "Lcn/hutool/core/convert/ConverterRegistry;"
        }
    .end annotation

    .line 112
    iget-object v0, p0, Lcn/hutool/core/convert/ConverterRegistry;->customConverterMap:Ljava/util/Map;

    if-nez v0, :cond_1

    .line 113
    monitor-enter p0

    .line 114
    :try_start_0
    iget-object v0, p0, Lcn/hutool/core/convert/ConverterRegistry;->customConverterMap:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 115
    new-instance v0, Lcn/hutool/core/map/SafeConcurrentHashMap;

    invoke-direct {v0}, Lcn/hutool/core/map/SafeConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcn/hutool/core/convert/ConverterRegistry;->customConverterMap:Ljava/util/Map;

    .line 117
    :cond_0
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 119
    :cond_1
    :goto_0
    iget-object v0, p0, Lcn/hutool/core/convert/ConverterRegistry;->customConverterMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public putCustom(Ljava/lang/reflect/Type;Ljava/lang/Class;)Lcn/hutool/core/convert/ConverterRegistry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Class<",
            "+",
            "Lcn/hutool/core/convert/Converter<",
            "*>;>;)",
            "Lcn/hutool/core/convert/ConverterRegistry;"
        }
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    .line 101
    invoke-static {p2, v0}, Lcn/hutool/core/util/ReflectUtil;->newInstance(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcn/hutool/core/convert/Converter;

    invoke-virtual {p0, p1, p2}, Lcn/hutool/core/convert/ConverterRegistry;->putCustom(Ljava/lang/reflect/Type;Lcn/hutool/core/convert/Converter;)Lcn/hutool/core/convert/ConverterRegistry;

    move-result-object p1

    return-object p1
.end method
