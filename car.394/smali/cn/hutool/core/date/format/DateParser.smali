.class public interface abstract Lcn/hutool/core/date/format/DateParser;
.super Ljava/lang/Object;
.source "DateParser.java"

# interfaces
.implements Lcn/hutool/core/date/format/DateBasic;


# virtual methods
.method public abstract parse(Ljava/lang/String;)Ljava/util/Date;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation
.end method

.method public abstract parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;
.end method

.method public abstract parse(Ljava/lang/String;Ljava/text/ParsePosition;Ljava/util/Calendar;)Z
.end method

.method public parseObject(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 58
    invoke-interface {p0, p1}, Lcn/hutool/core/date/format/DateParser;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p1

    return-object p1
.end method

.method public parseObject(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Object;
    .locals 0

    .line 70
    invoke-interface {p0, p1, p2}, Lcn/hutool/core/date/format/DateParser;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;

    move-result-object p1

    return-object p1
.end method
