.class public Lcn/hutool/core/text/finder/LengthFinder;
.super Lcn/hutool/core/text/finder/TextFinder;
.source "LengthFinder.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final length:I


# direct methods
.method public constructor <init>(I)V
    .locals 3

    .line 21
    invoke-direct {p0}, Lcn/hutool/core/text/finder/TextFinder;-><init>()V

    const/4 v0, 0x0

    if-lez p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    const-string v2, "Length must be great than 0"

    new-array v0, v0, [Ljava/lang/Object;

    .line 22
    invoke-static {v1, v2, v0}, Lcn/hutool/core/lang/Assert;->isTrue(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 23
    iput p1, p0, Lcn/hutool/core/text/finder/LengthFinder;->length:I

    return-void
.end method


# virtual methods
.method public end(I)I
    .locals 0

    return p1
.end method

.method public start(I)I
    .locals 3

    .line 28
    iget-object v0, p0, Lcn/hutool/core/text/finder/LengthFinder;->text:Ljava/lang/CharSequence;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Text to find must be not null!"

    invoke-static {v0, v2, v1}, Lcn/hutool/core/lang/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    invoke-virtual {p0}, Lcn/hutool/core/text/finder/LengthFinder;->getValidEndIndex()I

    move-result v0

    .line 31
    iget-boolean v1, p0, Lcn/hutool/core/text/finder/LengthFinder;->negative:Z

    if-eqz v1, :cond_0

    .line 32
    iget v1, p0, Lcn/hutool/core/text/finder/LengthFinder;->length:I

    sub-int/2addr p1, v1

    if-le p1, v0, :cond_1

    return p1

    .line 37
    :cond_0
    iget v1, p0, Lcn/hutool/core/text/finder/LengthFinder;->length:I

    add-int/2addr p1, v1

    if-ge p1, v0, :cond_1

    return p1

    :cond_1
    const/4 p1, -0x1

    return p1
.end method
