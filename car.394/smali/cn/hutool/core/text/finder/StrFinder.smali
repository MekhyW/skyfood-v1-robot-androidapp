.class public Lcn/hutool/core/text/finder/StrFinder;
.super Lcn/hutool/core/text/finder/TextFinder;
.source "StrFinder.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final caseInsensitive:Z

.field private final strToFind:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;Z)V
    .locals 0

    .line 24
    invoke-direct {p0}, Lcn/hutool/core/text/finder/TextFinder;-><init>()V

    .line 25
    invoke-static {p1}, Lcn/hutool/core/lang/Assert;->notEmpty(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 26
    iput-object p1, p0, Lcn/hutool/core/text/finder/StrFinder;->strToFind:Ljava/lang/CharSequence;

    .line 27
    iput-boolean p2, p0, Lcn/hutool/core/text/finder/StrFinder;->caseInsensitive:Z

    return-void
.end method


# virtual methods
.method public end(I)I
    .locals 1

    if-gez p1, :cond_0

    const/4 p1, -0x1

    return p1

    .line 62
    :cond_0
    iget-object v0, p0, Lcn/hutool/core/text/finder/StrFinder;->strToFind:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    add-int/2addr p1, v0

    return p1
.end method

.method public start(I)I
    .locals 8

    .line 32
    iget-object v0, p0, Lcn/hutool/core/text/finder/StrFinder;->text:Ljava/lang/CharSequence;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "Text to find must be not null!"

    invoke-static {v0, v3, v2}, Lcn/hutool/core/lang/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    iget-object v0, p0, Lcn/hutool/core/text/finder/StrFinder;->strToFind:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-gez p1, :cond_0

    move p1, v1

    .line 38
    :cond_0
    invoke-virtual {p0}, Lcn/hutool/core/text/finder/StrFinder;->getValidEndIndex()I

    move-result v1

    .line 39
    iget-boolean v2, p0, Lcn/hutool/core/text/finder/StrFinder;->negative:Z

    if-eqz v2, :cond_2

    :goto_0
    if-le p1, v1, :cond_4

    .line 41
    iget-object v2, p0, Lcn/hutool/core/text/finder/StrFinder;->text:Ljava/lang/CharSequence;

    iget-object v4, p0, Lcn/hutool/core/text/finder/StrFinder;->strToFind:Ljava/lang/CharSequence;

    const/4 v5, 0x0

    iget-boolean v7, p0, Lcn/hutool/core/text/finder/StrFinder;->caseInsensitive:Z

    move v3, p1

    move v6, v0

    invoke-static/range {v2 .. v7}, Lcn/hutool/core/text/CharSequenceUtil;->isSubEquals(Ljava/lang/CharSequence;ILjava/lang/CharSequence;IIZ)Z

    move-result v2

    if-eqz v2, :cond_1

    return p1

    :cond_1
    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_2
    sub-int/2addr v1, v0

    add-int/lit8 v1, v1, 0x1

    :goto_1
    if-ge p1, v1, :cond_4

    .line 48
    iget-object v2, p0, Lcn/hutool/core/text/finder/StrFinder;->text:Ljava/lang/CharSequence;

    iget-object v4, p0, Lcn/hutool/core/text/finder/StrFinder;->strToFind:Ljava/lang/CharSequence;

    const/4 v5, 0x0

    iget-boolean v7, p0, Lcn/hutool/core/text/finder/StrFinder;->caseInsensitive:Z

    move v3, p1

    move v6, v0

    invoke-static/range {v2 .. v7}, Lcn/hutool/core/text/CharSequenceUtil;->isSubEquals(Ljava/lang/CharSequence;ILjava/lang/CharSequence;IIZ)Z

    move-result v2

    if-eqz v2, :cond_3

    return p1

    :cond_3
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_4
    const/4 p1, -0x1

    return p1
.end method
