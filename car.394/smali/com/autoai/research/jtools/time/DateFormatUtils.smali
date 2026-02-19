.class public final Lcom/autoai/research/jtools/time/DateFormatUtils;
.super Ljava/lang/Object;
.source "DateFormatUtils.java"


# static fields
.field private static final FORMAT_CACHE:Lcom/autoai/research/jtools/time/AbstractFormatCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/autoai/research/jtools/time/AbstractFormatCache<",
            "Ljava/text/SimpleDateFormat;",
            ">;"
        }
    .end annotation
.end field

.field public static final ISO_8601_EXTENDED_DATETIME_FORMAT:Ljava/lang/String; = "yyyy-MM-dd\'T\'HH:mm:ss"

.field public static final ISO_8601_EXTENDED_DATETIME_TIME_ZONE_FORMAT:Ljava/lang/String; = "yyyy-MM-dd\'T\'HH:mm:ssZZ"

.field public static final ISO_8601_EXTENDED_DATE_FORMAT:Ljava/lang/String; = "yyyy-MM-dd"

.field public static final ISO_8601_EXTENDED_TIME_FORMAT:Ljava/lang/String; = "HH:mm:ss"

.field public static final ISO_8601_EXTENDED_TIME_TIME_ZONE_FORMAT:Ljava/lang/String; = "HH:mm:ssZZ"

.field public static final SMTP_DATETIME_FORMAT:Ljava/lang/String; = "EEE, dd MMM yyyy HH:mm:ss Z"

.field private static final TAG:Ljava/lang/String; = "DateFormatUtils"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 27
    new-instance v0, Lcom/autoai/research/jtools/time/DateFormatUtils$1;

    invoke-direct {v0}, Lcom/autoai/research/jtools/time/DateFormatUtils$1;-><init>()V

    sput-object v0, Lcom/autoai/research/jtools/time/DateFormatUtils;->FORMAT_CACHE:Lcom/autoai/research/jtools/time/AbstractFormatCache;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static format(JLjava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 75
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p0, p1}, Ljava/util/Date;-><init>(J)V

    const/4 p0, 0x0

    invoke-static {v0, p2, p0, p0}, Lcom/autoai/research/jtools/time/DateFormatUtils;->format(Ljava/util/Date;Ljava/lang/String;Ljava/util/Locale;Ljava/util/TimeZone;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static format(JLjava/lang/String;Ljava/util/Locale;)Ljava/lang/String;
    .locals 1

    .line 109
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p0, p1}, Ljava/util/Date;-><init>(J)V

    const/4 p0, 0x0

    invoke-static {v0, p2, p3, p0}, Lcom/autoai/research/jtools/time/DateFormatUtils;->format(Ljava/util/Date;Ljava/lang/String;Ljava/util/Locale;Ljava/util/TimeZone;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static format(JLjava/lang/String;Ljava/util/Locale;Ljava/util/TimeZone;)Ljava/lang/String;
    .locals 1

    .line 183
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-static {v0, p2, p3, p4}, Lcom/autoai/research/jtools/time/DateFormatUtils;->format(Ljava/util/Date;Ljava/lang/String;Ljava/util/Locale;Ljava/util/TimeZone;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static format(JLjava/lang/String;Ljava/util/TimeZone;)Ljava/lang/String;
    .locals 1

    .line 146
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p0, p1}, Ljava/util/Date;-><init>(J)V

    const/4 p0, 0x0

    invoke-static {v0, p2, p0, p3}, Lcom/autoai/research/jtools/time/DateFormatUtils;->format(Ljava/util/Date;Ljava/lang/String;Ljava/util/Locale;Ljava/util/TimeZone;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static format(Ljava/util/Calendar;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 97
    invoke-virtual {p0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {p0, p1, v0, v0}, Lcom/autoai/research/jtools/time/DateFormatUtils;->format(Ljava/util/Date;Ljava/lang/String;Ljava/util/Locale;Ljava/util/TimeZone;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static format(Ljava/util/Calendar;Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;
    .locals 1

    .line 133
    invoke-virtual {p0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/autoai/research/jtools/time/DateFormatUtils;->format(Ljava/util/Date;Ljava/lang/String;Ljava/util/Locale;Ljava/util/TimeZone;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static format(Ljava/util/Calendar;Ljava/lang/String;Ljava/util/Locale;Ljava/util/TimeZone;)Ljava/lang/String;
    .locals 0

    .line 209
    invoke-virtual {p0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p0

    invoke-static {p0, p1, p2, p3}, Lcom/autoai/research/jtools/time/DateFormatUtils;->format(Ljava/util/Date;Ljava/lang/String;Ljava/util/Locale;Ljava/util/TimeZone;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static format(Ljava/util/Calendar;Ljava/lang/String;Ljava/util/TimeZone;)Ljava/lang/String;
    .locals 1

    .line 170
    invoke-virtual {p0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {p0, p1, v0, p2}, Lcom/autoai/research/jtools/time/DateFormatUtils;->format(Ljava/util/Date;Ljava/lang/String;Ljava/util/Locale;Ljava/util/TimeZone;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static format(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 86
    invoke-static {p0, p1, v0, v0}, Lcom/autoai/research/jtools/time/DateFormatUtils;->format(Ljava/util/Date;Ljava/lang/String;Ljava/util/Locale;Ljava/util/TimeZone;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static format(Ljava/util/Date;Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 121
    invoke-static {p0, p1, p2, v0}, Lcom/autoai/research/jtools/time/DateFormatUtils;->format(Ljava/util/Date;Ljava/lang/String;Ljava/util/Locale;Ljava/util/TimeZone;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static format(Ljava/util/Date;Ljava/lang/String;Ljava/util/Locale;Ljava/util/TimeZone;)Ljava/lang/String;
    .locals 1

    .line 196
    sget-object v0, Lcom/autoai/research/jtools/time/DateFormatUtils;->FORMAT_CACHE:Lcom/autoai/research/jtools/time/AbstractFormatCache;

    invoke-virtual {v0, p1, p3, p2}, Lcom/autoai/research/jtools/time/AbstractFormatCache;->getInstance(Ljava/lang/String;Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/text/Format;

    move-result-object p1

    check-cast p1, Ljava/text/SimpleDateFormat;

    invoke-virtual {p1, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static format(Ljava/util/Date;Ljava/lang/String;Ljava/util/TimeZone;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 158
    invoke-static {p0, p1, v0, p2}, Lcom/autoai/research/jtools/time/DateFormatUtils;->format(Ljava/util/Date;Ljava/lang/String;Ljava/util/Locale;Ljava/util/TimeZone;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static parse(Ljava/lang/String;Ljava/lang/String;)J
    .locals 1

    const/4 v0, 0x0

    .line 219
    invoke-static {p0, p1, v0, v0}, Lcom/autoai/research/jtools/time/DateFormatUtils;->parse(Ljava/lang/String;Ljava/lang/String;Ljava/util/Locale;Ljava/util/TimeZone;)J

    move-result-wide p0

    return-wide p0
.end method

.method public static parse(Ljava/lang/String;Ljava/lang/String;Ljava/util/Locale;)J
    .locals 1

    const/4 v0, 0x0

    .line 230
    invoke-static {p0, p1, p2, v0}, Lcom/autoai/research/jtools/time/DateFormatUtils;->parse(Ljava/lang/String;Ljava/lang/String;Ljava/util/Locale;Ljava/util/TimeZone;)J

    move-result-wide p0

    return-wide p0
.end method

.method public static parse(Ljava/lang/String;Ljava/lang/String;Ljava/util/Locale;Ljava/util/TimeZone;)J
    .locals 1

    .line 252
    :try_start_0
    sget-object v0, Lcom/autoai/research/jtools/time/DateFormatUtils;->FORMAT_CACHE:Lcom/autoai/research/jtools/time/AbstractFormatCache;

    invoke-virtual {v0, p1, p3, p2}, Lcom/autoai/research/jtools/time/AbstractFormatCache;->getInstance(Ljava/lang/String;Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/text/Format;

    move-result-object p1

    check-cast p1, Ljava/text/SimpleDateFormat;

    invoke-virtual {p1, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide p0
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide p0

    :catch_0
    move-exception p0

    .line 254
    invoke-static {}, Lcom/autoai/research/atools/LogUtils;->isLoggable()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "DateFormatUtils"

    const-string p2, ""

    .line 255
    invoke-static {p1, p2, p0}, Lcom/autoai/research/atools/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    const-wide/16 p0, 0x0

    return-wide p0
.end method

.method public static parse(Ljava/lang/String;Ljava/lang/String;Ljava/util/TimeZone;)J
    .locals 1

    const/4 v0, 0x0

    .line 240
    invoke-static {p0, p1, v0, p2}, Lcom/autoai/research/jtools/time/DateFormatUtils;->parse(Ljava/lang/String;Ljava/lang/String;Ljava/util/Locale;Ljava/util/TimeZone;)J

    move-result-wide p0

    return-wide p0
.end method
