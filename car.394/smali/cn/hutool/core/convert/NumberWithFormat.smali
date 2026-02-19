.class public Lcn/hutool/core/convert/NumberWithFormat;
.super Ljava/lang/Number;
.source "NumberWithFormat.java"

# interfaces
.implements Lcn/hutool/core/convert/TypeConverter;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final format:Ljava/lang/String;

.field private final number:Ljava/lang/Number;


# direct methods
.method public constructor <init>(Ljava/lang/Number;Ljava/lang/String;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    .line 28
    iput-object p1, p0, Lcn/hutool/core/convert/NumberWithFormat;->number:Ljava/lang/Number;

    .line 29
    iput-object p2, p0, Lcn/hutool/core/convert/NumberWithFormat;->format:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public convert(Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 36
    iget-object p2, p0, Lcn/hutool/core/convert/NumberWithFormat;->format:Ljava/lang/String;

    const/4 v0, 0x0

    if-eqz p2, :cond_2

    instance-of p2, p1, Ljava/lang/Class;

    if-eqz p2, :cond_2

    .line 37
    move-object p2, p1

    check-cast p2, Ljava/lang/Class;

    .line 39
    const-class v1, Ljava/util/Date;

    invoke-virtual {v1, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 40
    new-instance p1, Lcn/hutool/core/convert/impl/DateConverter;

    iget-object v1, p0, Lcn/hutool/core/convert/NumberWithFormat;->format:Ljava/lang/String;

    invoke-direct {p1, p2, v1}, Lcn/hutool/core/convert/impl/DateConverter;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    iget-object p2, p0, Lcn/hutool/core/convert/NumberWithFormat;->number:Ljava/lang/Number;

    invoke-virtual {p1, p2, v0}, Lcn/hutool/core/convert/impl/DateConverter;->convert(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 41
    :cond_0
    const-class v1, Ljava/time/temporal/TemporalAccessor;

    invoke-virtual {v1, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 42
    new-instance p1, Lcn/hutool/core/convert/impl/TemporalAccessorConverter;

    iget-object v1, p0, Lcn/hutool/core/convert/NumberWithFormat;->format:Ljava/lang/String;

    invoke-direct {p1, p2, v1}, Lcn/hutool/core/convert/impl/TemporalAccessorConverter;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    iget-object p2, p0, Lcn/hutool/core/convert/NumberWithFormat;->number:Ljava/lang/Number;

    invoke-virtual {p1, p2, v0}, Lcn/hutool/core/convert/impl/TemporalAccessorConverter;->convert(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 43
    :cond_1
    const-class v1, Ljava/lang/String;

    if-ne v1, p2, :cond_2

    .line 44
    invoke-virtual {p0}, Lcn/hutool/core/convert/NumberWithFormat;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 51
    :cond_2
    iget-object p2, p0, Lcn/hutool/core/convert/NumberWithFormat;->number:Ljava/lang/Number;

    const/4 v1, 0x0

    invoke-static {p1, p2, v0, v1}, Lcn/hutool/core/convert/Convert;->convertWithCheck(Ljava/lang/reflect/Type;Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public doubleValue()D
    .locals 2

    .line 71
    iget-object v0, p0, Lcn/hutool/core/convert/NumberWithFormat;->number:Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    return-wide v0
.end method

.method public floatValue()F
    .locals 1

    .line 66
    iget-object v0, p0, Lcn/hutool/core/convert/NumberWithFormat;->number:Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    return v0
.end method

.method public intValue()I
    .locals 1

    .line 56
    iget-object v0, p0, Lcn/hutool/core/convert/NumberWithFormat;->number:Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    return v0
.end method

.method public longValue()J
    .locals 2

    .line 61
    iget-object v0, p0, Lcn/hutool/core/convert/NumberWithFormat;->number:Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 76
    iget-object v0, p0, Lcn/hutool/core/convert/NumberWithFormat;->number:Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
