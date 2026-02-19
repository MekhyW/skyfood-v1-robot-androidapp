.class public Lcn/hutool/cron/pattern/matcher/BoolArrayMatcher;
.super Ljava/lang/Object;
.source "BoolArrayMatcher.java"

# interfaces
.implements Lcn/hutool/cron/pattern/matcher/PartMatcher;


# instance fields
.field private final bValues:[Z

.field private final minValue:I


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    invoke-static {p1}, Lcn/hutool/core/collection/CollUtil;->isNotEmpty(Ljava/util/Collection;)Z

    move-result v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Values must be not empty!"

    invoke-static {v0, v2, v1}, Lcn/hutool/core/lang/Assert;->isTrue(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 30
    invoke-static {p1}, Ljava/util/Collections;->max(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    new-array v0, v0, [Z

    iput-object v0, p0, Lcn/hutool/cron/pattern/matcher/BoolArrayMatcher;->bValues:[Z

    .line 32
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const v0, 0x7fffffff

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 33
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 34
    iget-object v3, p0, Lcn/hutool/cron/pattern/matcher/BoolArrayMatcher;->bValues:[Z

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aput-boolean v1, v3, v2

    goto :goto_0

    .line 36
    :cond_0
    iput v0, p0, Lcn/hutool/cron/pattern/matcher/BoolArrayMatcher;->minValue:I

    return-void
.end method


# virtual methods
.method public getMinValue()I
    .locals 1

    .line 70
    iget v0, p0, Lcn/hutool/cron/pattern/matcher/BoolArrayMatcher;->minValue:I

    return v0
.end method

.method public match(Ljava/lang/Integer;)Z
    .locals 3

    if-eqz p1, :cond_1

    .line 41
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lcn/hutool/cron/pattern/matcher/BoolArrayMatcher;->bValues:[Z

    array-length v2, v1

    if-lt v0, v2, :cond_0

    goto :goto_0

    .line 44
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    aget-boolean p1, v1, p1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public bridge synthetic match(Ljava/lang/Object;)Z
    .locals 0

    .line 15
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcn/hutool/cron/pattern/matcher/BoolArrayMatcher;->match(Ljava/lang/Integer;)Z

    move-result p1

    return p1
.end method

.method public nextAfter(I)I
    .locals 2

    .line 49
    iget v0, p0, Lcn/hutool/cron/pattern/matcher/BoolArrayMatcher;->minValue:I

    if-le p1, v0, :cond_1

    .line 50
    :goto_0
    iget-object v0, p0, Lcn/hutool/cron/pattern/matcher/BoolArrayMatcher;->bValues:[Z

    array-length v1, v0

    if-ge p1, v1, :cond_1

    .line 51
    aget-boolean v0, v0, p1

    if-eqz v0, :cond_0

    return p1

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 61
    :cond_1
    iget p1, p0, Lcn/hutool/cron/pattern/matcher/BoolArrayMatcher;->minValue:I

    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 75
    iget-object v2, p0, Lcn/hutool/cron/pattern/matcher/BoolArrayMatcher;->bValues:[Z

    aput-object v2, v0, v1

    const-string v1, "Matcher:{}"

    invoke-static {v1, v0}, Lcn/hutool/core/util/StrUtil;->format(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
