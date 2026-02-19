.class public Lcn/hutool/json/serialize/TemporalAccessorSerializer;
.super Ljava/lang/Object;
.source "TemporalAccessorSerializer.java"

# interfaces
.implements Lcn/hutool/json/serialize/JSONObjectSerializer;
.implements Lcn/hutool/json/serialize/JSONDeserializer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcn/hutool/json/serialize/JSONObjectSerializer<",
        "Ljava/time/temporal/TemporalAccessor;",
        ">;",
        "Lcn/hutool/json/serialize/JSONDeserializer<",
        "Ljava/time/temporal/TemporalAccessor;",
        ">;"
    }
.end annotation


# static fields
.field private static final DAY_KEY:Ljava/lang/String; = "day"

.field private static final HOUR_KEY:Ljava/lang/String; = "hour"

.field private static final MINUTE_KEY:Ljava/lang/String; = "minute"

.field private static final MONTH_KEY:Ljava/lang/String; = "month"

.field private static final NANO_KEY:Ljava/lang/String; = "nano"

.field private static final SECOND_KEY:Ljava/lang/String; = "second"

.field private static final YEAR_KEY:Ljava/lang/String; = "year"


# instance fields
.field private final temporalAccessorClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Ljava/time/temporal/TemporalAccessor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Ljava/time/temporal/TemporalAccessor;",
            ">;)V"
        }
    .end annotation

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcn/hutool/json/serialize/TemporalAccessorSerializer;->temporalAccessorClass:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public bridge synthetic deserialize(Lcn/hutool/json/JSON;)Ljava/lang/Object;
    .locals 0

    .line 18
    invoke-virtual {p0, p1}, Lcn/hutool/json/serialize/TemporalAccessorSerializer;->deserialize(Lcn/hutool/json/JSON;)Ljava/time/temporal/TemporalAccessor;

    move-result-object p1

    return-object p1
.end method

.method public deserialize(Lcn/hutool/json/JSON;)Ljava/time/temporal/TemporalAccessor;
    .locals 17

    move-object/from16 v0, p0

    .line 63
    move-object/from16 v1, p1

    check-cast v1, Lcn/hutool/json/JSONObject;

    .line 64
    const-class v2, Ljava/time/LocalDate;

    iget-object v3, v0, Lcn/hutool/json/serialize/TemporalAccessorSerializer;->temporalAccessorClass:Ljava/lang/Class;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "day"

    const-string v4, "month"

    const-string v5, "year"

    if-eqz v2, :cond_0

    .line 65
    invoke-virtual {v1, v5}, Lcn/hutool/json/JSONObject;->getInt(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v4}, Lcn/hutool/json/JSONObject;->getInt(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v1, v3}, Lcn/hutool/json/JSONObject;->getInt(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v2, v4, v1}, Ljava/time/LocalDate;->of(III)Ljava/time/LocalDate;

    move-result-object v1

    return-object v1

    .line 66
    :cond_0
    const-class v2, Ljava/time/LocalDateTime;

    iget-object v6, v0, Lcn/hutool/json/serialize/TemporalAccessorSerializer;->temporalAccessorClass:Ljava/lang/Class;

    invoke-virtual {v2, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v6, "nano"

    const-string v7, "second"

    const-string v8, "minute"

    const-string v9, "hour"

    if-eqz v2, :cond_1

    .line 67
    invoke-virtual {v1, v5}, Lcn/hutool/json/JSONObject;->getInt(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-virtual {v1, v4}, Lcn/hutool/json/JSONObject;->getInt(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-virtual {v1, v3}, Lcn/hutool/json/JSONObject;->getInt(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v12

    .line 68
    invoke-virtual {v1, v9}, Lcn/hutool/json/JSONObject;->getInt(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-virtual {v1, v8}, Lcn/hutool/json/JSONObject;->getInt(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v14

    invoke-virtual {v1, v7}, Lcn/hutool/json/JSONObject;->getInt(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v15

    invoke-virtual {v1, v6}, Lcn/hutool/json/JSONObject;->getInt(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v16

    .line 67
    invoke-static/range {v10 .. v16}, Ljava/time/LocalDateTime;->of(IIIIIII)Ljava/time/LocalDateTime;

    move-result-object v1

    return-object v1

    .line 69
    :cond_1
    const-class v2, Ljava/time/LocalTime;

    iget-object v3, v0, Lcn/hutool/json/serialize/TemporalAccessorSerializer;->temporalAccessorClass:Ljava/lang/Class;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 70
    invoke-virtual {v1, v9}, Lcn/hutool/json/JSONObject;->getInt(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v8}, Lcn/hutool/json/JSONObject;->getInt(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v1, v7}, Lcn/hutool/json/JSONObject;->getInt(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v1, v6}, Lcn/hutool/json/JSONObject;->getInt(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v2, v3, v4, v1}, Ljava/time/LocalTime;->of(IIII)Ljava/time/LocalTime;

    move-result-object v1

    return-object v1

    .line 73
    :cond_2
    new-instance v1, Lcn/hutool/json/JSONException;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, v0, Lcn/hutool/json/serialize/TemporalAccessorSerializer;->temporalAccessorClass:Ljava/lang/Class;

    aput-object v4, v2, v3

    const-string v3, "Unsupported type from JSON: {}"

    invoke-direct {v1, v3, v2}, Lcn/hutool/json/JSONException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v1
.end method

.method public bridge synthetic serialize(Lcn/hutool/json/JSON;Ljava/lang/Object;)V
    .locals 0

    .line 18
    check-cast p1, Lcn/hutool/json/JSONObject;

    check-cast p2, Ljava/time/temporal/TemporalAccessor;

    invoke-virtual {p0, p1, p2}, Lcn/hutool/json/serialize/TemporalAccessorSerializer;->serialize(Lcn/hutool/json/JSONObject;Ljava/time/temporal/TemporalAccessor;)V

    return-void
.end method

.method public serialize(Lcn/hutool/json/JSONObject;Ljava/time/temporal/TemporalAccessor;)V
    .locals 8

    .line 36
    instance-of v0, p2, Ljava/time/LocalDate;

    const-string v1, "day"

    const-string v2, "month"

    const-string v3, "year"

    if-eqz v0, :cond_0

    .line 37
    check-cast p2, Ljava/time/LocalDate;

    .line 38
    invoke-virtual {p2}, Ljava/time/LocalDate;->getYear()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v3, v0}, Lcn/hutool/json/JSONObject;->set(Ljava/lang/String;Ljava/lang/Object;)Lcn/hutool/json/JSONObject;

    .line 39
    invoke-virtual {p2}, Ljava/time/LocalDate;->getMonthValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lcn/hutool/json/JSONObject;->set(Ljava/lang/String;Ljava/lang/Object;)Lcn/hutool/json/JSONObject;

    .line 40
    invoke-virtual {p2}, Ljava/time/LocalDate;->getDayOfMonth()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, v1, p2}, Lcn/hutool/json/JSONObject;->set(Ljava/lang/String;Ljava/lang/Object;)Lcn/hutool/json/JSONObject;

    goto/16 :goto_0

    .line 41
    :cond_0
    instance-of v0, p2, Ljava/time/LocalDateTime;

    const-string v4, "nano"

    const-string v5, "second"

    const-string v6, "minute"

    const-string v7, "hour"

    if-eqz v0, :cond_1

    .line 42
    check-cast p2, Ljava/time/LocalDateTime;

    .line 43
    invoke-virtual {p2}, Ljava/time/LocalDateTime;->getYear()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v3, v0}, Lcn/hutool/json/JSONObject;->set(Ljava/lang/String;Ljava/lang/Object;)Lcn/hutool/json/JSONObject;

    .line 44
    invoke-virtual {p2}, Ljava/time/LocalDateTime;->getMonthValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lcn/hutool/json/JSONObject;->set(Ljava/lang/String;Ljava/lang/Object;)Lcn/hutool/json/JSONObject;

    .line 45
    invoke-virtual {p2}, Ljava/time/LocalDateTime;->getDayOfMonth()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcn/hutool/json/JSONObject;->set(Ljava/lang/String;Ljava/lang/Object;)Lcn/hutool/json/JSONObject;

    .line 46
    invoke-virtual {p2}, Ljava/time/LocalDateTime;->getHour()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v7, v0}, Lcn/hutool/json/JSONObject;->set(Ljava/lang/String;Ljava/lang/Object;)Lcn/hutool/json/JSONObject;

    .line 47
    invoke-virtual {p2}, Ljava/time/LocalDateTime;->getMinute()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v6, v0}, Lcn/hutool/json/JSONObject;->set(Ljava/lang/String;Ljava/lang/Object;)Lcn/hutool/json/JSONObject;

    .line 48
    invoke-virtual {p2}, Ljava/time/LocalDateTime;->getSecond()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v5, v0}, Lcn/hutool/json/JSONObject;->set(Ljava/lang/String;Ljava/lang/Object;)Lcn/hutool/json/JSONObject;

    .line 49
    invoke-virtual {p2}, Ljava/time/LocalDateTime;->getNano()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, v4, p2}, Lcn/hutool/json/JSONObject;->set(Ljava/lang/String;Ljava/lang/Object;)Lcn/hutool/json/JSONObject;

    goto :goto_0

    .line 50
    :cond_1
    instance-of v0, p2, Ljava/time/LocalTime;

    if-eqz v0, :cond_2

    .line 51
    check-cast p2, Ljava/time/LocalTime;

    .line 52
    invoke-virtual {p2}, Ljava/time/LocalTime;->getHour()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v7, v0}, Lcn/hutool/json/JSONObject;->set(Ljava/lang/String;Ljava/lang/Object;)Lcn/hutool/json/JSONObject;

    .line 53
    invoke-virtual {p2}, Ljava/time/LocalTime;->getMinute()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v6, v0}, Lcn/hutool/json/JSONObject;->set(Ljava/lang/String;Ljava/lang/Object;)Lcn/hutool/json/JSONObject;

    .line 54
    invoke-virtual {p2}, Ljava/time/LocalTime;->getSecond()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v5, v0}, Lcn/hutool/json/JSONObject;->set(Ljava/lang/String;Ljava/lang/Object;)Lcn/hutool/json/JSONObject;

    .line 55
    invoke-virtual {p2}, Ljava/time/LocalTime;->getNano()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, v4, p2}, Lcn/hutool/json/JSONObject;->set(Ljava/lang/String;Ljava/lang/Object;)Lcn/hutool/json/JSONObject;

    :goto_0
    return-void

    .line 57
    :cond_2
    new-instance p1, Lcn/hutool/json/JSONException;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const-string p2, "Unsupported type to JSON: {}"

    invoke-direct {p1, p2, v0}, Lcn/hutool/json/JSONException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p1
.end method
