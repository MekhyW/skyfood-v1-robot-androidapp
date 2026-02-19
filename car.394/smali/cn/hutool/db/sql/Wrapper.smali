.class public Lcn/hutool/db/sql/Wrapper;
.super Ljava/lang/Object;
.source "Wrapper.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private preWrapQuote:Ljava/lang/Character;

.field private sufWrapQuote:Ljava/lang/Character;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Character;)V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcn/hutool/db/sql/Wrapper;->preWrapQuote:Ljava/lang/Character;

    .line 43
    iput-object p1, p0, Lcn/hutool/db/sql/Wrapper;->sufWrapQuote:Ljava/lang/Character;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Character;Ljava/lang/Character;)V
    .locals 0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Lcn/hutool/db/sql/Wrapper;->preWrapQuote:Ljava/lang/Character;

    .line 54
    iput-object p2, p0, Lcn/hutool/db/sql/Wrapper;->sufWrapQuote:Ljava/lang/Character;

    return-void
.end method


# virtual methods
.method public getPreWrapQuote()C
    .locals 1

    .line 63
    iget-object v0, p0, Lcn/hutool/db/sql/Wrapper;->preWrapQuote:Ljava/lang/Character;

    invoke-virtual {v0}, Ljava/lang/Character;->charValue()C

    move-result v0

    return v0
.end method

.method public getSufWrapQuote()C
    .locals 1

    .line 79
    iget-object v0, p0, Lcn/hutool/db/sql/Wrapper;->sufWrapQuote:Ljava/lang/Character;

    invoke-virtual {v0}, Ljava/lang/Character;->charValue()C

    move-result v0

    return v0
.end method

.method synthetic lambda$wrap$0$cn-hutool-db-sql-Wrapper(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 116
    iget-object v2, p0, Lcn/hutool/db/sql/Wrapper;->preWrapQuote:Ljava/lang/Character;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 p1, 0x2

    iget-object v1, p0, Lcn/hutool/db/sql/Wrapper;->sufWrapQuote:Ljava/lang/Character;

    aput-object v1, v0, p1

    const-string p1, "{}{}{}"

    invoke-static {p1, v0}, Lcn/hutool/core/util/StrUtil;->format(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public setPreWrapQuote(Ljava/lang/Character;)V
    .locals 0

    .line 72
    iput-object p1, p0, Lcn/hutool/db/sql/Wrapper;->preWrapQuote:Ljava/lang/Character;

    return-void
.end method

.method public setSufWrapQuote(Ljava/lang/Character;)V
    .locals 0

    .line 88
    iput-object p1, p0, Lcn/hutool/db/sql/Wrapper;->sufWrapQuote:Ljava/lang/Character;

    return-void
.end method

.method public wrap(Lcn/hutool/db/Entity;)Lcn/hutool/db/Entity;
    .locals 3

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 170
    :cond_0
    new-instance v0, Lcn/hutool/db/Entity;

    invoke-direct {v0}, Lcn/hutool/db/Entity;-><init>()V

    .line 173
    invoke-virtual {p1}, Lcn/hutool/db/Entity;->getTableName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcn/hutool/db/sql/Wrapper;->wrap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/hutool/db/Entity;->setTableName(Ljava/lang/String;)Lcn/hutool/db/Entity;

    .line 176
    invoke-virtual {p1}, Lcn/hutool/db/Entity;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 177
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcn/hutool/db/sql/Wrapper;->wrap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcn/hutool/db/Entity;->set(Ljava/lang/String;Ljava/lang/Object;)Lcn/hutool/db/Entity;

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public wrap(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 100
    iget-object v0, p0, Lcn/hutool/db/sql/Wrapper;->preWrapQuote:Ljava/lang/Character;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcn/hutool/db/sql/Wrapper;->sufWrapQuote:Ljava/lang/Character;

    if-eqz v0, :cond_4

    invoke-static {p1}, Lcn/hutool/core/util/StrUtil;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 105
    :cond_0
    iget-object v0, p0, Lcn/hutool/db/sql/Wrapper;->preWrapQuote:Ljava/lang/Character;

    invoke-virtual {v0}, Ljava/lang/Character;->charValue()C

    move-result v0

    iget-object v1, p0, Lcn/hutool/db/sql/Wrapper;->sufWrapQuote:Ljava/lang/Character;

    invoke-virtual {v1}, Ljava/lang/Character;->charValue()C

    move-result v1

    invoke-static {p1, v0, v1}, Lcn/hutool/core/util/StrUtil;->isSurround(Ljava/lang/CharSequence;CC)Z

    move-result v0

    if-eqz v0, :cond_1

    return-object p1

    :cond_1
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/CharSequence;

    const-string v1, "*"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "("

    const/4 v3, 0x1

    aput-object v1, v0, v3

    const-string v1, " "

    const/4 v4, 0x2

    aput-object v1, v0, v4

    const-string v1, " as "

    const/4 v5, 0x3

    aput-object v1, v0, v5

    .line 110
    invoke-static {p1, v0}, Lcn/hutool/core/util/StrUtil;->containsAnyIgnoreCase(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    return-object p1

    :cond_2
    const-string v0, "."

    .line 115
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v1, 0x2e

    .line 116
    invoke-static {p1, v1, v4}, Lcn/hutool/core/util/StrUtil;->split(Ljava/lang/CharSequence;CI)Ljava/util/List;

    move-result-object p1

    new-instance v1, Lcn/hutool/db/sql/Wrapper$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcn/hutool/db/sql/Wrapper$$ExternalSyntheticLambda0;-><init>(Lcn/hutool/db/sql/Wrapper;)V

    invoke-static {p1, v1}, Lcn/hutool/core/collection/CollUtil;->edit(Ljava/util/Collection;Lcn/hutool/core/lang/Editor;)Ljava/util/Collection;

    move-result-object p1

    .line 117
    invoke-static {p1, v0}, Lcn/hutool/core/collection/CollectionUtil;->join(Ljava/lang/Iterable;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_3
    new-array v0, v5, [Ljava/lang/Object;

    .line 120
    iget-object v1, p0, Lcn/hutool/db/sql/Wrapper;->preWrapQuote:Ljava/lang/Character;

    aput-object v1, v0, v2

    aput-object p1, v0, v3

    iget-object p1, p0, Lcn/hutool/db/sql/Wrapper;->sufWrapQuote:Ljava/lang/Character;

    aput-object p1, v0, v4

    const-string p1, "{}{}{}"

    invoke-static {p1, v0}, Lcn/hutool/core/util/StrUtil;->format(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :cond_4
    :goto_0
    return-object p1
.end method

.method public wrap(Ljava/util/Collection;)Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 151
    invoke-static {p1}, Lcn/hutool/core/collection/CollectionUtil;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    .line 155
    invoke-interface {p1, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcn/hutool/db/sql/Wrapper;->wrap([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public varargs wrap([Lcn/hutool/db/sql/Condition;)[Lcn/hutool/db/sql/Condition;
    .locals 4

    .line 191
    array-length v0, p1

    new-array v0, v0, [Lcn/hutool/db/sql/Condition;

    .line 192
    invoke-static {p1}, Lcn/hutool/core/util/ArrayUtil;->isNotEmpty([Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 194
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    .line 195
    aget-object v2, p1, v1

    invoke-virtual {v2}, Lcn/hutool/db/sql/Condition;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/hutool/db/sql/Condition;

    .line 196
    invoke-virtual {v2}, Lcn/hutool/db/sql/Condition;->getField()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcn/hutool/db/sql/Wrapper;->wrap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcn/hutool/db/sql/Condition;->setField(Ljava/lang/String;)V

    .line 197
    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public varargs wrap([Ljava/lang/String;)[Ljava/lang/String;
    .locals 3

    .line 131
    invoke-static {p1}, Lcn/hutool/core/util/ArrayUtil;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    .line 135
    :cond_0
    array-length v0, p1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 136
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    .line 137
    aget-object v2, p1, v1

    invoke-virtual {p0, v2}, Lcn/hutool/db/sql/Wrapper;->wrap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method
