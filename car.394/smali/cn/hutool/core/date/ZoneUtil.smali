.class public Lcn/hutool/core/date/ZoneUtil;
.super Ljava/lang/Object;
.source "ZoneUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static toTimeZone(Ljava/time/ZoneId;)Ljava/util/TimeZone;
    .locals 0

    if-nez p0, :cond_0

    .line 22
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object p0

    return-object p0

    .line 25
    :cond_0
    invoke-static {p0}, Ljava/util/TimeZone;->getTimeZone(Ljava/time/ZoneId;)Ljava/util/TimeZone;

    move-result-object p0

    return-object p0
.end method

.method public static toZoneId(Ljava/util/TimeZone;)Ljava/time/ZoneId;
    .locals 0

    if-nez p0, :cond_0

    .line 36
    invoke-static {}, Ljava/time/ZoneId;->systemDefault()Ljava/time/ZoneId;

    move-result-object p0

    return-object p0

    .line 39
    :cond_0
    invoke-virtual {p0}, Ljava/util/TimeZone;->toZoneId()Ljava/time/ZoneId;

    move-result-object p0

    return-object p0
.end method
