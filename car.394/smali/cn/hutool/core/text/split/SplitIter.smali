.class public Lcn/hutool/core/text/split/SplitIter;
.super Lcn/hutool/core/collection/ComputeIter;
.source "SplitIter.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/hutool/core/collection/ComputeIter<",
        "Ljava/lang/String;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private count:I

.field private final finder:Lcn/hutool/core/text/finder/TextFinder;

.field private final ignoreEmpty:Z

.field private final limit:I

.field private offset:I

.field private final text:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;Lcn/hutool/core/text/finder/TextFinder;IZ)V
    .locals 2

    .line 46
    invoke-direct {p0}, Lcn/hutool/core/collection/ComputeIter;-><init>()V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Text must be not null!"

    .line 47
    invoke-static {p1, v1, v0}, Lcn/hutool/core/lang/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/hutool/core/text/split/SplitIter;->text:Ljava/lang/String;

    .line 49
    invoke-virtual {p2, p1}, Lcn/hutool/core/text/finder/TextFinder;->setText(Ljava/lang/CharSequence;)Lcn/hutool/core/text/finder/TextFinder;

    move-result-object p1

    iput-object p1, p0, Lcn/hutool/core/text/split/SplitIter;->finder:Lcn/hutool/core/text/finder/TextFinder;

    if-lez p3, :cond_0

    goto :goto_0

    :cond_0
    const p3, 0x7fffffff

    .line 50
    :goto_0
    iput p3, p0, Lcn/hutool/core/text/split/SplitIter;->limit:I

    .line 51
    iput-boolean p4, p0, Lcn/hutool/core/text/split/SplitIter;->ignoreEmpty:Z

    return-void
.end method

.method static synthetic lambda$toList$0(ZLjava/lang/String;)Ljava/lang/String;
    .locals 0

    if-eqz p0, :cond_0

    .line 128
    invoke-static {p1}, Lcn/hutool/core/util/StrUtil;->trim(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    :cond_0
    return-object p1
.end method


# virtual methods
.method protected bridge synthetic computeNext()Ljava/lang/Object;
    .locals 1

    .line 21
    invoke-virtual {p0}, Lcn/hutool/core/text/split/SplitIter;->computeNext()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected computeNext()Ljava/lang/String;
    .locals 3

    .line 57
    iget v0, p0, Lcn/hutool/core/text/split/SplitIter;->count:I

    iget v1, p0, Lcn/hutool/core/text/split/SplitIter;->limit:I

    const/4 v2, 0x0

    if-ge v0, v1, :cond_7

    iget v0, p0, Lcn/hutool/core/text/split/SplitIter;->offset:I

    iget-object v1, p0, Lcn/hutool/core/text/split/SplitIter;->text:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-le v0, v1, :cond_0

    goto/16 :goto_0

    .line 62
    :cond_0
    iget v0, p0, Lcn/hutool/core/text/split/SplitIter;->count:I

    iget v1, p0, Lcn/hutool/core/text/split/SplitIter;->limit:I

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_2

    .line 64
    iget-boolean v0, p0, Lcn/hutool/core/text/split/SplitIter;->ignoreEmpty:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcn/hutool/core/text/split/SplitIter;->offset:I

    iget-object v1, p0, Lcn/hutool/core/text/split/SplitIter;->text:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v0, v1, :cond_1

    return-object v2

    .line 70
    :cond_1
    iget v0, p0, Lcn/hutool/core/text/split/SplitIter;->count:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcn/hutool/core/text/split/SplitIter;->count:I

    .line 71
    iget-object v0, p0, Lcn/hutool/core/text/split/SplitIter;->text:Ljava/lang/String;

    iget v1, p0, Lcn/hutool/core/text/split/SplitIter;->offset:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 74
    :cond_2
    iget-object v0, p0, Lcn/hutool/core/text/split/SplitIter;->finder:Lcn/hutool/core/text/finder/TextFinder;

    iget v1, p0, Lcn/hutool/core/text/split/SplitIter;->offset:I

    invoke-virtual {v0, v1}, Lcn/hutool/core/text/finder/TextFinder;->start(I)I

    move-result v0

    if-gez v0, :cond_5

    .line 78
    iget v0, p0, Lcn/hutool/core/text/split/SplitIter;->offset:I

    iget-object v1, p0, Lcn/hutool/core/text/split/SplitIter;->text:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-gt v0, v1, :cond_4

    .line 79
    iget-object v0, p0, Lcn/hutool/core/text/split/SplitIter;->text:Ljava/lang/String;

    iget v1, p0, Lcn/hutool/core/text/split/SplitIter;->offset:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 80
    iget-boolean v1, p0, Lcn/hutool/core/text/split/SplitIter;->ignoreEmpty:Z

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    :cond_3
    const v1, 0x7fffffff

    .line 82
    iput v1, p0, Lcn/hutool/core/text/split/SplitIter;->offset:I

    return-object v0

    :cond_4
    return-object v2

    .line 90
    :cond_5
    iget-object v1, p0, Lcn/hutool/core/text/split/SplitIter;->text:Ljava/lang/String;

    iget v2, p0, Lcn/hutool/core/text/split/SplitIter;->offset:I

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 91
    iget-object v2, p0, Lcn/hutool/core/text/split/SplitIter;->finder:Lcn/hutool/core/text/finder/TextFinder;

    invoke-virtual {v2, v0}, Lcn/hutool/core/text/finder/TextFinder;->end(I)I

    move-result v0

    iput v0, p0, Lcn/hutool/core/text/split/SplitIter;->offset:I

    .line 93
    iget-boolean v0, p0, Lcn/hutool/core/text/split/SplitIter;->ignoreEmpty:Z

    if-eqz v0, :cond_6

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 95
    invoke-virtual {p0}, Lcn/hutool/core/text/split/SplitIter;->computeNext()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 98
    :cond_6
    iget v0, p0, Lcn/hutool/core/text/split/SplitIter;->count:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcn/hutool/core/text/split/SplitIter;->count:I

    return-object v1

    :cond_7
    :goto_0
    return-object v2
.end method

.method public reset()V
    .locals 1

    .line 106
    iget-object v0, p0, Lcn/hutool/core/text/split/SplitIter;->finder:Lcn/hutool/core/text/finder/TextFinder;

    invoke-virtual {v0}, Lcn/hutool/core/text/finder/TextFinder;->reset()Lcn/hutool/core/text/finder/Finder;

    const/4 v0, 0x0

    .line 107
    iput v0, p0, Lcn/hutool/core/text/split/SplitIter;->offset:I

    .line 108
    iput v0, p0, Lcn/hutool/core/text/split/SplitIter;->count:I

    return-void
.end method

.method public toArray(Z)[Ljava/lang/String;
    .locals 1

    .line 118
    invoke-virtual {p0, p1}, Lcn/hutool/core/text/split/SplitIter;->toList(Z)Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    return-object p1
.end method

.method public toList(Ljava/util/function/Function;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Function<",
            "Ljava/lang/String;",
            "TT;>;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 139
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 140
    :goto_0
    invoke-virtual {p0}, Lcn/hutool/core/text/split/SplitIter;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 141
    invoke-virtual {p0}, Lcn/hutool/core/text/split/SplitIter;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 142
    iget-boolean v2, p0, Lcn/hutool/core/text/split/SplitIter;->ignoreEmpty:Z

    if-eqz v2, :cond_0

    invoke-static {v1}, Lcn/hutool/core/util/StrUtil;->isEmptyIfStr(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 146
    :cond_0
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 148
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 149
    new-instance p1, Ljava/util/ArrayList;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    return-object p1

    :cond_2
    return-object v0
.end method

.method public toList(Z)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 128
    new-instance v0, Lcn/hutool/core/text/split/SplitIter$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Lcn/hutool/core/text/split/SplitIter$$ExternalSyntheticLambda0;-><init>(Z)V

    invoke-virtual {p0, v0}, Lcn/hutool/core/text/split/SplitIter;->toList(Ljava/util/function/Function;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
