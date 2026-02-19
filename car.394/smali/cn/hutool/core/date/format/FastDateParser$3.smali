.class final Lcn/hutool/core/date/format/FastDateParser$3;
.super Lcn/hutool/core/date/format/FastDateParser$NumberStrategy;
.source "FastDateParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/hutool/core/date/format/FastDateParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>(I)V
    .locals 0

    .line 786
    invoke-direct {p0, p1}, Lcn/hutool/core/date/format/FastDateParser$NumberStrategy;-><init>(I)V

    return-void
.end method


# virtual methods
.method modify(Lcn/hutool/core/date/format/FastDateParser;I)I
    .locals 1

    const/4 p1, 0x7

    const/4 v0, 0x1

    if-eq p2, p1, :cond_0

    add-int/2addr v0, p2

    :cond_0
    return v0
.end method
