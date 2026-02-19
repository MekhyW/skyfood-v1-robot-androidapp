.class public Lcn/hutool/cron/pattern/CronPatternBuilder;
.super Ljava/lang/Object;
.source "CronPatternBuilder.java"

# interfaces
.implements Lcn/hutool/core/builder/Builder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcn/hutool/core/builder/Builder<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field final parts:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    .line 18
    iput-object v0, p0, Lcn/hutool/cron/pattern/CronPatternBuilder;->parts:[Ljava/lang/String;

    return-void
.end method

.method public static of()Lcn/hutool/cron/pattern/CronPatternBuilder;
    .locals 1

    .line 25
    new-instance v0, Lcn/hutool/cron/pattern/CronPatternBuilder;

    invoke-direct {v0}, Lcn/hutool/cron/pattern/CronPatternBuilder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic build()Ljava/lang/Object;
    .locals 1

    .line 15
    invoke-virtual {p0}, Lcn/hutool/cron/pattern/CronPatternBuilder;->build()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public build()Ljava/lang/String;
    .locals 3

    .line 71
    sget-object v0, Lcn/hutool/cron/pattern/Part;->MINUTE:Lcn/hutool/cron/pattern/Part;

    invoke-virtual {v0}, Lcn/hutool/cron/pattern/Part;->ordinal()I

    move-result v0

    :goto_0
    sget-object v1, Lcn/hutool/cron/pattern/Part;->YEAR:Lcn/hutool/cron/pattern/Part;

    invoke-virtual {v1}, Lcn/hutool/cron/pattern/Part;->ordinal()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 74
    iget-object v1, p0, Lcn/hutool/cron/pattern/CronPatternBuilder;->parts:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-static {v1}, Lcn/hutool/core/util/StrUtil;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 75
    iget-object v1, p0, Lcn/hutool/cron/pattern/CronPatternBuilder;->parts:[Ljava/lang/String;

    const-string v2, "*"

    aput-object v2, v1, v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const-string v0, " "

    .line 79
    invoke-static {v0}, Lcn/hutool/core/text/StrJoiner;->of(Ljava/lang/CharSequence;)Lcn/hutool/core/text/StrJoiner;

    move-result-object v0

    sget-object v1, Lcn/hutool/core/text/StrJoiner$NullMode;->IGNORE:Lcn/hutool/core/text/StrJoiner$NullMode;

    .line 80
    invoke-virtual {v0, v1}, Lcn/hutool/core/text/StrJoiner;->setNullMode(Lcn/hutool/core/text/StrJoiner$NullMode;)Lcn/hutool/core/text/StrJoiner;

    move-result-object v0

    iget-object v1, p0, Lcn/hutool/cron/pattern/CronPatternBuilder;->parts:[Ljava/lang/String;

    .line 81
    invoke-virtual {v0, v1}, Lcn/hutool/core/text/StrJoiner;->append([Ljava/lang/Object;)Lcn/hutool/core/text/StrJoiner;

    move-result-object v0

    .line 82
    invoke-virtual {v0}, Lcn/hutool/core/text/StrJoiner;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public set(Lcn/hutool/cron/pattern/Part;Ljava/lang/String;)Lcn/hutool/cron/pattern/CronPatternBuilder;
    .locals 1

    .line 65
    iget-object v0, p0, Lcn/hutool/cron/pattern/CronPatternBuilder;->parts:[Ljava/lang/String;

    invoke-virtual {p1}, Lcn/hutool/cron/pattern/Part;->ordinal()I

    move-result p1

    aput-object p2, v0, p1

    return-object p0
.end method

.method public setRange(Lcn/hutool/cron/pattern/Part;II)Lcn/hutool/cron/pattern/CronPatternBuilder;
    .locals 2

    .line 51
    invoke-static {p1}, Lcn/hutool/core/lang/Assert;->notNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    invoke-virtual {p1, p2}, Lcn/hutool/cron/pattern/Part;->checkValue(I)I

    .line 53
    invoke-virtual {p1, p3}, Lcn/hutool/cron/pattern/Part;->checkValue(I)I

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 54
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v0, v1

    const/4 p2, 0x1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, v0, p2

    const-string p2, "{}-{}"

    invoke-static {p2, v0}, Lcn/hutool/core/util/StrUtil;->format(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcn/hutool/cron/pattern/CronPatternBuilder;->set(Lcn/hutool/cron/pattern/Part;Ljava/lang/String;)Lcn/hutool/cron/pattern/CronPatternBuilder;

    move-result-object p1

    return-object p1
.end method

.method public varargs setValues(Lcn/hutool/cron/pattern/Part;[I)Lcn/hutool/cron/pattern/CronPatternBuilder;
    .locals 3

    .line 36
    array-length v0, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget v2, p2, v1

    .line 37
    invoke-virtual {p1, v2}, Lcn/hutool/cron/pattern/Part;->checkValue(I)I

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const-string v0, ","

    .line 39
    invoke-static {p2, v0}, Lcn/hutool/core/util/ArrayUtil;->join(Ljava/lang/Object;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcn/hutool/cron/pattern/CronPatternBuilder;->set(Lcn/hutool/cron/pattern/Part;Ljava/lang/String;)Lcn/hutool/cron/pattern/CronPatternBuilder;

    move-result-object p1

    return-object p1
.end method
