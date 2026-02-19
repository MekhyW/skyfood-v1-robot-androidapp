.class public Lcn/hutool/core/convert/impl/DateConverter;
.super Lcn/hutool/core/convert/AbstractConverter;
.source "DateConverter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/hutool/core/convert/AbstractConverter<",
        "Ljava/util/Date;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private format:Ljava/lang/String;

.field private final targetType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Ljava/util/Date;",
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
            "Ljava/util/Date;",
            ">;)V"
        }
    .end annotation

    .line 32
    invoke-direct {p0}, Lcn/hutool/core/convert/AbstractConverter;-><init>()V

    .line 33
    iput-object p1, p0, Lcn/hutool/core/convert/impl/DateConverter;->targetType:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Ljava/util/Date;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 42
    invoke-direct {p0}, Lcn/hutool/core/convert/AbstractConverter;-><init>()V

    .line 43
    iput-object p1, p0, Lcn/hutool/core/convert/impl/DateConverter;->targetType:Ljava/lang/Class;

    .line 44
    iput-object p2, p0, Lcn/hutool/core/convert/impl/DateConverter;->format:Ljava/lang/String;

    return-void
.end method

.method private wrap(J)Ljava/util/Date;
    .locals 2

    const-string v0, "#sss"

    .line 124
    iget-object v1, p0, Lcn/hutool/core/convert/impl/DateConverter;->format:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x3e8

    mul-long/2addr p1, v0

    .line 126
    invoke-static {p1, p2}, Lcn/hutool/core/date/DateUtil;->date(J)Lcn/hutool/core/date/DateTime;

    move-result-object p1

    return-object p1

    .line 130
    :cond_0
    const-class v0, Ljava/util/Date;

    iget-object v1, p0, Lcn/hutool/core/convert/impl/DateConverter;->targetType:Ljava/lang/Class;

    if-ne v0, v1, :cond_1

    .line 131
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p1, p2}, Ljava/util/Date;-><init>(J)V

    return-object v0

    .line 133
    :cond_1
    const-class v0, Lcn/hutool/core/date/DateTime;

    if-ne v0, v1, :cond_2

    .line 134
    invoke-static {p1, p2}, Lcn/hutool/core/date/DateUtil;->date(J)Lcn/hutool/core/date/DateTime;

    move-result-object p1

    return-object p1

    .line 136
    :cond_2
    const-class v0, Ljava/sql/Date;

    if-ne v0, v1, :cond_3

    .line 137
    new-instance v0, Ljava/sql/Date;

    invoke-direct {v0, p1, p2}, Ljava/sql/Date;-><init>(J)V

    return-object v0

    .line 139
    :cond_3
    const-class v0, Ljava/sql/Time;

    if-ne v0, v1, :cond_4

    .line 140
    new-instance v0, Ljava/sql/Time;

    invoke-direct {v0, p1, p2}, Ljava/sql/Time;-><init>(J)V

    return-object v0

    .line 142
    :cond_4
    const-class v0, Ljava/sql/Timestamp;

    if-ne v0, v1, :cond_5

    .line 143
    new-instance v0, Ljava/sql/Timestamp;

    invoke-direct {v0, p1, p2}, Ljava/sql/Timestamp;-><init>(J)V

    return-object v0

    .line 146
    :cond_5
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Object;

    iget-object v0, p0, Lcn/hutool/core/convert/impl/DateConverter;->targetType:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, p2, v1

    const-string v0, "Unsupported target Date type: {}"

    invoke-static {v0, p2}, Lcn/hutool/core/util/StrUtil;->format(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private wrap(Lcn/hutool/core/date/DateTime;)Ljava/util/Date;
    .locals 3

    .line 98
    const-class v0, Ljava/util/Date;

    iget-object v1, p0, Lcn/hutool/core/convert/impl/DateConverter;->targetType:Ljava/lang/Class;

    if-ne v0, v1, :cond_0

    .line 99
    invoke-virtual {p1}, Lcn/hutool/core/date/DateTime;->toJdkDate()Ljava/util/Date;

    move-result-object p1

    return-object p1

    .line 101
    :cond_0
    const-class v0, Lcn/hutool/core/date/DateTime;

    if-ne v0, v1, :cond_1

    return-object p1

    .line 104
    :cond_1
    const-class v0, Ljava/sql/Date;

    if-ne v0, v1, :cond_2

    .line 105
    invoke-virtual {p1}, Lcn/hutool/core/date/DateTime;->toSqlDate()Ljava/sql/Date;

    move-result-object p1

    return-object p1

    .line 107
    :cond_2
    const-class v0, Ljava/sql/Time;

    if-ne v0, v1, :cond_3

    .line 108
    new-instance v0, Ljava/sql/Time;

    invoke-virtual {p1}, Lcn/hutool/core/date/DateTime;->getTime()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/sql/Time;-><init>(J)V

    return-object v0

    .line 110
    :cond_3
    const-class v0, Ljava/sql/Timestamp;

    if-ne v0, v1, :cond_4

    .line 111
    invoke-virtual {p1}, Lcn/hutool/core/date/DateTime;->toTimestamp()Ljava/sql/Timestamp;

    move-result-object p1

    return-object p1

    .line 114
    :cond_4
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcn/hutool/core/convert/impl/DateConverter;->targetType:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "Unsupported target Date type: {}"

    invoke-static {v1, v0}, Lcn/hutool/core/util/StrUtil;->format(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method protected bridge synthetic convertInternal(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 18
    invoke-virtual {p0, p1}, Lcn/hutool/core/convert/impl/DateConverter;->convertInternal(Ljava/lang/Object;)Ljava/util/Date;

    move-result-object p1

    return-object p1
.end method

.method protected convertInternal(Ljava/lang/Object;)Ljava/util/Date;
    .locals 4

    if-eqz p1, :cond_6

    .line 67
    instance-of v0, p1, Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/hutool/core/util/StrUtil;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 70
    :cond_0
    instance-of v0, p1, Ljava/time/temporal/TemporalAccessor;

    if-eqz v0, :cond_1

    .line 71
    check-cast p1, Ljava/time/temporal/TemporalAccessor;

    invoke-static {p1}, Lcn/hutool/core/date/DateUtil;->date(Ljava/time/temporal/TemporalAccessor;)Lcn/hutool/core/date/DateTime;

    move-result-object p1

    invoke-direct {p0, p1}, Lcn/hutool/core/convert/impl/DateConverter;->wrap(Lcn/hutool/core/date/DateTime;)Ljava/util/Date;

    move-result-object p1

    return-object p1

    .line 72
    :cond_1
    instance-of v0, p1, Ljava/util/Calendar;

    if-eqz v0, :cond_2

    .line 73
    check-cast p1, Ljava/util/Calendar;

    invoke-static {p1}, Lcn/hutool/core/date/DateUtil;->date(Ljava/util/Calendar;)Lcn/hutool/core/date/DateTime;

    move-result-object p1

    invoke-direct {p0, p1}, Lcn/hutool/core/convert/impl/DateConverter;->wrap(Lcn/hutool/core/date/DateTime;)Ljava/util/Date;

    move-result-object p1

    return-object p1

    .line 74
    :cond_2
    instance-of v0, p1, Ljava/lang/Number;

    if-eqz v0, :cond_3

    .line 75
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcn/hutool/core/convert/impl/DateConverter;->wrap(J)Ljava/util/Date;

    move-result-object p1

    return-object p1

    .line 78
    :cond_3
    invoke-virtual {p0, p1}, Lcn/hutool/core/convert/impl/DateConverter;->convertToStr(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 79
    iget-object v1, p0, Lcn/hutool/core/convert/impl/DateConverter;->format:Ljava/lang/String;

    invoke-static {v1}, Lcn/hutool/core/util/StrUtil;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 80
    invoke-static {v0}, Lcn/hutool/core/date/DateUtil;->parse(Ljava/lang/CharSequence;)Lcn/hutool/core/date/DateTime;

    move-result-object v0

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcn/hutool/core/convert/impl/DateConverter;->format:Ljava/lang/String;

    .line 81
    invoke-static {v0, v1}, Lcn/hutool/core/date/DateUtil;->parse(Ljava/lang/CharSequence;Ljava/lang/String;)Lcn/hutool/core/date/DateTime;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_5

    .line 83
    invoke-direct {p0, v0}, Lcn/hutool/core/convert/impl/DateConverter;->wrap(Lcn/hutool/core/date/DateTime;)Ljava/util/Date;

    move-result-object p1

    return-object p1

    .line 87
    :cond_5
    new-instance v0, Lcn/hutool/core/convert/ConvertException;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    aput-object p1, v1, v2

    iget-object p1, p0, Lcn/hutool/core/convert/impl/DateConverter;->targetType:Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x2

    aput-object p1, v1, v2

    const-string p1, "Can not convert {}:[{}] to {}"

    invoke-direct {v0, p1, v1}, Lcn/hutool/core/convert/ConvertException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    :cond_6
    :goto_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getFormat()Ljava/lang/String;
    .locals 1

    .line 53
    iget-object v0, p0, Lcn/hutool/core/convert/impl/DateConverter;->format:Ljava/lang/String;

    return-object v0
.end method

.method public getTargetType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Ljava/util/Date;",
            ">;"
        }
    .end annotation

    .line 152
    iget-object v0, p0, Lcn/hutool/core/convert/impl/DateConverter;->targetType:Ljava/lang/Class;

    return-object v0
.end method

.method public setFormat(Ljava/lang/String;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lcn/hutool/core/convert/impl/DateConverter;->format:Ljava/lang/String;

    return-void
.end method
