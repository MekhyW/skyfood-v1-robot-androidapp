.class public Lcn/hutool/core/text/finder/CharFinder;
.super Lcn/hutool/core/text/finder/TextFinder;
.source "CharFinder.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final c:C

.field private final caseInsensitive:Z


# direct methods
.method public constructor <init>(C)V
    .locals 1

    const/4 v0, 0x0

    .line 25
    invoke-direct {p0, p1, v0}, Lcn/hutool/core/text/finder/CharFinder;-><init>(CZ)V

    return-void
.end method

.method public constructor <init>(CZ)V
    .locals 0

    .line 34
    invoke-direct {p0}, Lcn/hutool/core/text/finder/TextFinder;-><init>()V

    .line 35
    iput-char p1, p0, Lcn/hutool/core/text/finder/CharFinder;->c:C

    .line 36
    iput-boolean p2, p0, Lcn/hutool/core/text/finder/CharFinder;->caseInsensitive:Z

    return-void
.end method


# virtual methods
.method public end(I)I
    .locals 0

    if-gez p1, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    add-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public start(I)I
    .locals 4

    .line 41
    iget-object v0, p0, Lcn/hutool/core/text/finder/CharFinder;->text:Ljava/lang/CharSequence;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Text to find must be not null!"

    invoke-static {v0, v2, v1}, Lcn/hutool/core/lang/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    invoke-virtual {p0}, Lcn/hutool/core/text/finder/CharFinder;->getValidEndIndex()I

    move-result v0

    .line 43
    iget-boolean v1, p0, Lcn/hutool/core/text/finder/CharFinder;->negative:Z

    if-eqz v1, :cond_1

    :goto_0
    if-le p1, v0, :cond_3

    .line 45
    iget-char v1, p0, Lcn/hutool/core/text/finder/CharFinder;->c:C

    iget-object v2, p0, Lcn/hutool/core/text/finder/CharFinder;->text:Ljava/lang/CharSequence;

    invoke-interface {v2, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    iget-boolean v3, p0, Lcn/hutool/core/text/finder/CharFinder;->caseInsensitive:Z

    invoke-static {v1, v2, v3}, Lcn/hutool/core/util/NumberUtil;->equals(CCZ)Z

    move-result v1

    if-eqz v1, :cond_0

    return p1

    :cond_0
    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-ge p1, v0, :cond_3

    .line 51
    iget-char v1, p0, Lcn/hutool/core/text/finder/CharFinder;->c:C

    iget-object v2, p0, Lcn/hutool/core/text/finder/CharFinder;->text:Ljava/lang/CharSequence;

    invoke-interface {v2, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    iget-boolean v3, p0, Lcn/hutool/core/text/finder/CharFinder;->caseInsensitive:Z

    invoke-static {v1, v2, v3}, Lcn/hutool/core/util/NumberUtil;->equals(CCZ)Z

    move-result v1

    if-eqz v1, :cond_2

    return p1

    :cond_2
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_3
    const/4 p1, -0x1

    return p1
.end method
