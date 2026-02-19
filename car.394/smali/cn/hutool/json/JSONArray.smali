.class public Lcn/hutool/json/JSONArray;
.super Ljava/lang/Object;
.source "JSONArray.java"

# interfaces
.implements Lcn/hutool/json/JSON;
.implements Lcn/hutool/json/JSONGetter;
.implements Ljava/util/List;
.implements Ljava/util/RandomAccess;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcn/hutool/json/JSON;",
        "Lcn/hutool/json/JSONGetter<",
        "Ljava/lang/Integer;",
        ">;",
        "Ljava/util/List<",
        "Ljava/lang/Object;",
        ">;",
        "Ljava/util/RandomAccess;"
    }
.end annotation


# static fields
.field public static final DEFAULT_CAPACITY:I = 0xa

.field private static final serialVersionUID:J = 0x24fba0f2b0265504L


# instance fields
.field private final config:Lcn/hutool/json/JSONConfig;

.field private rawList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    const/16 v0, 0xa

    .line 57
    invoke-direct {p0, v0}, Lcn/hutool/json/JSONArray;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 68
    invoke-static {}, Lcn/hutool/json/JSONConfig;->create()Lcn/hutool/json/JSONConfig;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcn/hutool/json/JSONArray;-><init>(ILcn/hutool/json/JSONConfig;)V

    return-void
.end method

.method public constructor <init>(ILcn/hutool/json/JSONConfig;)V
    .locals 1

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcn/hutool/json/JSONArray;->rawList:Ljava/util/List;

    .line 92
    new-instance p1, Lcn/hutool/json/JSONArray$$ExternalSyntheticLambda2;

    invoke-direct {p1}, Lcn/hutool/json/JSONArray$$ExternalSyntheticLambda2;-><init>()V

    invoke-static {p2, p1}, Lcn/hutool/core/util/ObjectUtil;->defaultIfNull(Ljava/lang/Object;Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/hutool/json/JSONConfig;

    iput-object p1, p0, Lcn/hutool/json/JSONArray;->config:Lcn/hutool/json/JSONConfig;

    return-void
.end method

.method public constructor <init>(Lcn/hutool/json/JSONConfig;)V
    .locals 1

    const/16 v0, 0xa

    .line 79
    invoke-direct {p0, v0, p1}, Lcn/hutool/json/JSONArray;-><init>(ILcn/hutool/json/JSONConfig;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/hutool/json/JSONException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 109
    invoke-direct {p0, p1, v0}, Lcn/hutool/json/JSONArray;-><init>(Ljava/lang/Object;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Lcn/hutool/json/JSONConfig;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/hutool/json/JSONException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 146
    invoke-direct {p0, p1, p2, v0}, Lcn/hutool/json/JSONArray;-><init>(Ljava/lang/Object;Lcn/hutool/json/JSONConfig;Lcn/hutool/core/lang/Filter;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Lcn/hutool/json/JSONConfig;Lcn/hutool/core/lang/Filter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lcn/hutool/json/JSONConfig;",
            "Lcn/hutool/core/lang/Filter<",
            "Lcn/hutool/core/lang/mutable/Mutable<",
            "Ljava/lang/Object;",
            ">;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/hutool/json/JSONException;
        }
    .end annotation

    const/16 v0, 0xa

    .line 166
    invoke-direct {p0, v0, p2}, Lcn/hutool/json/JSONArray;-><init>(ILcn/hutool/json/JSONConfig;)V

    .line 167
    invoke-static {p1}, Lcn/hutool/json/ObjectMapper;->of(Ljava/lang/Object;)Lcn/hutool/json/ObjectMapper;

    move-result-object p1

    invoke-virtual {p1, p0, p3}, Lcn/hutool/json/ObjectMapper;->map(Lcn/hutool/json/JSONArray;Lcn/hutool/core/lang/Filter;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/hutool/json/JSONException;
        }
    .end annotation

    .line 127
    invoke-static {}, Lcn/hutool/json/JSONConfig;->create()Lcn/hutool/json/JSONConfig;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcn/hutool/json/JSONConfig;->setIgnoreNullValue(Z)Lcn/hutool/json/JSONConfig;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcn/hutool/json/JSONArray;-><init>(Ljava/lang/Object;Lcn/hutool/json/JSONConfig;)V

    return-void
.end method

.method static synthetic lambda$write$2cc9e97d$1(Lcn/hutool/json/serialize/JSONWriter;Lcn/hutool/core/lang/Filter;Ljava/lang/Object;I)V
    .locals 1

    .line 561
    new-instance v0, Lcn/hutool/core/lang/mutable/MutablePair;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-direct {v0, p3, p2}, Lcn/hutool/core/lang/mutable/MutablePair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v0, p1}, Lcn/hutool/json/serialize/JSONWriter;->writeField(Lcn/hutool/core/lang/mutable/MutablePair;Lcn/hutool/core/lang/Filter;)Lcn/hutool/json/serialize/JSONWriter;

    return-void
.end method


# virtual methods
.method public add(ILjava/lang/Object;)V
    .locals 2

    if-ltz p1, :cond_2

    .line 456
    invoke-virtual {p0}, Lcn/hutool/json/JSONArray;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 457
    invoke-static {p2}, Lcn/hutool/json/InternalJSONUtil;->testValidity(Ljava/lang/Object;)Ljava/lang/Object;

    .line 458
    iget-object v0, p0, Lcn/hutool/json/JSONArray;->rawList:Ljava/util/List;

    iget-object v1, p0, Lcn/hutool/json/JSONArray;->config:Lcn/hutool/json/JSONConfig;

    invoke-static {p2, v1}, Lcn/hutool/json/JSONUtil;->wrap(Ljava/lang/Object;Lcn/hutool/json/JSONConfig;)Ljava/lang/Object;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_1

    .line 460
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcn/hutool/json/JSONArray;->size()I

    move-result v0

    if-eq p1, v0, :cond_1

    .line 461
    sget-object v0, Lcn/hutool/json/JSONNull;->NULL:Lcn/hutool/json/JSONNull;

    invoke-virtual {p0, v0}, Lcn/hutool/json/JSONArray;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 463
    :cond_1
    invoke-virtual {p0, p2}, Lcn/hutool/json/JSONArray;->set(Ljava/lang/Object;)Lcn/hutool/json/JSONArray;

    :goto_1
    return-void

    .line 454
    :cond_2
    new-instance p2, Lcn/hutool/json/JSONException;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v1

    const-string p1, "JSONArray[{}] not found."

    invoke-direct {p2, p1, v0}, Lcn/hutool/json/JSONException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p2
.end method

.method public add(Ljava/lang/Object;)Z
    .locals 1

    .line 352
    iget-object v0, p0, Lcn/hutool/json/JSONArray;->config:Lcn/hutool/json/JSONConfig;

    invoke-static {p1, v0}, Lcn/hutool/json/JSONUtil;->wrap(Ljava/lang/Object;Lcn/hutool/json/JSONConfig;)Ljava/lang/Object;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcn/hutool/json/JSONArray;->addRaw(Ljava/lang/Object;Lcn/hutool/core/lang/Filter;)Z

    move-result p1

    return p1
.end method

.method public addAll(ILjava/util/Collection;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 386
    invoke-static {p2}, Lcn/hutool/core/collection/CollUtil;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 389
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 390
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 391
    iget-object v2, p0, Lcn/hutool/json/JSONArray;->config:Lcn/hutool/json/JSONConfig;

    invoke-static {v1, v2}, Lcn/hutool/json/JSONUtil;->wrap(Ljava/lang/Object;Lcn/hutool/json/JSONConfig;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 393
    :cond_1
    iget-object p2, p0, Lcn/hutool/json/JSONArray;->rawList:Ljava/util/List;

    invoke-interface {p2, p1, v0}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    move-result p1

    return p1
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 374
    invoke-static {p1}, Lcn/hutool/core/collection/CollUtil;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 377
    :cond_0
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 378
    invoke-virtual {p0, v0}, Lcn/hutool/json/JSONArray;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method protected addRaw(Ljava/lang/Object;Lcn/hutool/core/lang/Filter;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lcn/hutool/core/lang/Filter<",
            "Lcn/hutool/core/lang/mutable/Mutable<",
            "Ljava/lang/Object;",
            ">;>;)Z"
        }
    .end annotation

    if-eqz p2, :cond_1

    .line 585
    new-instance v0, Lcn/hutool/core/lang/mutable/MutableObj;

    invoke-direct {v0, p1}, Lcn/hutool/core/lang/mutable/MutableObj;-><init>(Ljava/lang/Object;)V

    .line 586
    invoke-interface {p2, v0}, Lcn/hutool/core/lang/Filter;->accept(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 588
    invoke-interface {v0}, Lcn/hutool/core/lang/mutable/Mutable;->get()Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    .line 594
    :cond_1
    :goto_0
    iget-object p2, p0, Lcn/hutool/json/JSONArray;->rawList:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public clear()V
    .locals 1

    .line 410
    iget-object v0, p0, Lcn/hutool/json/JSONArray;->rawList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 569
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/hutool/json/JSONArray;

    .line 570
    iget-object v1, p0, Lcn/hutool/json/JSONArray;->rawList:Ljava/util/List;

    invoke-static {v1}, Lcn/hutool/core/util/ObjectUtil;->clone(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    iput-object v1, v0, Lcn/hutool/json/JSONArray;->rawList:Ljava/util/List;

    return-object v0
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1

    .line 336
    iget-object v0, p0, Lcn/hutool/json/JSONArray;->rawList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 368
    iget-object v0, p0, Lcn/hutool/json/JSONArray;->rawList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    .line 298
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    return v1

    .line 301
    :cond_2
    check-cast p1, Lcn/hutool/json/JSONArray;

    .line 302
    iget-object v2, p0, Lcn/hutool/json/JSONArray;->rawList:Ljava/util/List;

    if-nez v2, :cond_4

    .line 303
    iget-object p1, p1, Lcn/hutool/json/JSONArray;->rawList:Ljava/util/List;

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    move v0, v1

    :goto_0
    return v0

    .line 305
    :cond_4
    iget-object p1, p1, Lcn/hutool/json/JSONArray;->rawList:Ljava/util/List;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public get(I)Ljava/lang/Object;
    .locals 1

    .line 202
    iget-object v0, p0, Lcn/hutool/json/JSONArray;->rawList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getByPath(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    .line 212
    invoke-static {p1}, Lcn/hutool/core/bean/BeanPath;->create(Ljava/lang/String;)Lcn/hutool/core/bean/BeanPath;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcn/hutool/core/bean/BeanPath;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getByPath(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 217
    invoke-virtual {p0, p1}, Lcn/hutool/json/JSONArray;->getByPath(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0}, Lcn/hutool/json/JSONArray;->getConfig()Lcn/hutool/json/JSONConfig;

    move-result-object v0

    invoke-static {p2, p1, v0}, Lcn/hutool/json/JSONConverter;->jsonConvert(Ljava/lang/reflect/Type;Ljava/lang/Object;Lcn/hutool/json/JSONConfig;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getConfig()Lcn/hutool/json/JSONConfig;
    .locals 1

    .line 173
    iget-object v0, p0, Lcn/hutool/json/JSONArray;->config:Lcn/hutool/json/JSONConfig;

    return-object v0
.end method

.method public getObj(Ljava/lang/Integer;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 207
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ltz v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0}, Lcn/hutool/json/JSONArray;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcn/hutool/json/JSONArray;->rawList:Ljava/util/List;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    :cond_1
    :goto_0
    return-object p2
.end method

.method public bridge synthetic getObj(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 33
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1, p2}, Lcn/hutool/json/JSONArray;->getObj(Ljava/lang/Integer;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public hashCode()I
    .locals 2

    .line 286
    iget-object v0, p0, Lcn/hutool/json/JSONArray;->rawList:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    const/16 v1, 0x1f

    add-int/2addr v1, v0

    return v1
.end method

.method public indexOf(Ljava/lang/Object;)I
    .locals 1

    .line 470
    iget-object v0, p0, Lcn/hutool/json/JSONArray;->rawList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public isEmpty()Z
    .locals 1

    .line 331
    iget-object v0, p0, Lcn/hutool/json/JSONArray;->rawList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 311
    iget-object v0, p0, Lcn/hutool/json/JSONArray;->rawList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public join(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/hutool/json/JSONException;
        }
    .end annotation

    .line 196
    invoke-static {p1}, Lcn/hutool/core/text/StrJoiner;->of(Ljava/lang/CharSequence;)Lcn/hutool/core/text/StrJoiner;

    move-result-object p1

    new-instance v0, Lcn/hutool/json/JSONArray$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcn/hutool/json/JSONArray$$ExternalSyntheticLambda1;-><init>()V

    .line 197
    invoke-virtual {p1, p0, v0}, Lcn/hutool/core/text/StrJoiner;->append(Ljava/lang/Iterable;Ljava/util/function/Function;)Lcn/hutool/core/text/StrJoiner;

    move-result-object p1

    invoke-virtual {p1}, Lcn/hutool/core/text/StrJoiner;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public jsonIter()Ljava/lang/Iterable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "Lcn/hutool/json/JSONObject;",
            ">;"
        }
    .end annotation

    .line 321
    new-instance v0, Lcn/hutool/json/JSONObjectIter;

    invoke-virtual {p0}, Lcn/hutool/json/JSONArray;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/hutool/json/JSONObjectIter;-><init>(Ljava/util/Iterator;)V

    return-object v0
.end method

.method public lastIndexOf(Ljava/lang/Object;)I
    .locals 1

    .line 475
    iget-object v0, p0, Lcn/hutool/json/JSONArray;->rawList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->lastIndexOf(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public listIterator()Ljava/util/ListIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ListIterator<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 480
    iget-object v0, p0, Lcn/hutool/json/JSONArray;->rawList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    return-object v0
.end method

.method public listIterator(I)Ljava/util/ListIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ListIterator<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 485
    iget-object v0, p0, Lcn/hutool/json/JSONArray;->rawList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object p1

    return-object p1
.end method

.method public put(ILjava/lang/Object;)Lcn/hutool/json/JSONArray;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/hutool/json/JSONException;
        }
    .end annotation

    .line 260
    invoke-virtual {p0, p1, p2}, Lcn/hutool/json/JSONArray;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public put(Ljava/lang/Object;)Lcn/hutool/json/JSONArray;
    .locals 0

    .line 234
    invoke-virtual {p0, p1}, Lcn/hutool/json/JSONArray;->set(Ljava/lang/Object;)Lcn/hutool/json/JSONArray;

    move-result-object p1

    return-object p1
.end method

.method public putByPath(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 222
    invoke-static {p1}, Lcn/hutool/core/bean/BeanPath;->create(Ljava/lang/String;)Lcn/hutool/core/bean/BeanPath;

    move-result-object p1

    invoke-virtual {p1, p0, p2}, Lcn/hutool/core/bean/BeanPath;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public remove(I)Ljava/lang/Object;
    .locals 1

    if-ltz p1, :cond_0

    .line 357
    invoke-virtual {p0}, Lcn/hutool/json/JSONArray;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcn/hutool/json/JSONArray;->rawList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 1

    .line 362
    iget-object v0, p0, Lcn/hutool/json/JSONArray;->rawList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 399
    iget-object v0, p0, Lcn/hutool/json/JSONArray;->rawList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    move-result p1

    return p1
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 405
    iget-object v0, p0, Lcn/hutool/json/JSONArray;->rawList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->retainAll(Ljava/util/Collection;)Z

    move-result p1

    return p1
.end method

.method public set(Ljava/lang/Object;)Lcn/hutool/json/JSONArray;
    .locals 0

    .line 246
    invoke-virtual {p0, p1}, Lcn/hutool/json/JSONArray;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    .line 423
    invoke-virtual {p0, p1, p2, v0}, Lcn/hutool/json/JSONArray;->set(ILjava/lang/Object;Lcn/hutool/core/lang/Filter;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public set(ILjava/lang/Object;Lcn/hutool/core/lang/Filter;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Object;",
            "Lcn/hutool/core/lang/Filter<",
            "Lcn/hutool/core/lang/mutable/MutablePair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    if-eqz p3, :cond_0

    .line 438
    new-instance v0, Lcn/hutool/core/lang/mutable/MutablePair;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Lcn/hutool/core/lang/mutable/MutablePair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 439
    invoke-interface {p3, v0}, Lcn/hutool/core/lang/Filter;->accept(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    .line 441
    invoke-virtual {v0}, Lcn/hutool/core/lang/mutable/MutablePair;->getValue()Ljava/lang/Object;

    move-result-object p2

    .line 445
    :cond_0
    invoke-virtual {p0}, Lcn/hutool/json/JSONArray;->size()I

    move-result p3

    if-lt p1, p3, :cond_1

    .line 446
    invoke-virtual {p0, p1, p2}, Lcn/hutool/json/JSONArray;->add(ILjava/lang/Object;)V

    .line 448
    :cond_1
    iget-object p3, p0, Lcn/hutool/json/JSONArray;->rawList:Ljava/util/List;

    iget-object v0, p0, Lcn/hutool/json/JSONArray;->config:Lcn/hutool/json/JSONConfig;

    invoke-static {p2, v0}, Lcn/hutool/json/JSONUtil;->wrap(Ljava/lang/Object;Lcn/hutool/json/JSONConfig;)Ljava/lang/Object;

    move-result-object p2

    invoke-interface {p3, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public setDateFormat(Ljava/lang/String;)Lcn/hutool/json/JSONArray;
    .locals 1

    .line 184
    iget-object v0, p0, Lcn/hutool/json/JSONArray;->config:Lcn/hutool/json/JSONConfig;

    invoke-virtual {v0, p1}, Lcn/hutool/json/JSONConfig;->setDateFormat(Ljava/lang/String;)Lcn/hutool/json/JSONConfig;

    return-object p0
.end method

.method public size()I
    .locals 1

    .line 326
    iget-object v0, p0, Lcn/hutool/json/JSONArray;->rawList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public subList(II)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 490
    iget-object v0, p0, Lcn/hutool/json/JSONArray;->rawList:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public toArray(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 500
    invoke-static {p0, p1}, Lcn/hutool/json/JSONConverter;->toArray(Lcn/hutool/json/JSONArray;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 1

    .line 341
    iget-object v0, p0, Lcn/hutool/json/JSONArray;->rawList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .line 347
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p1

    invoke-static {p0, p1}, Lcn/hutool/json/JSONConverter;->toArray(Lcn/hutool/json/JSONArray;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/Object;

    check-cast p1, [Ljava/lang/Object;

    return-object p1
.end method

.method public toJSONObject(Lcn/hutool/json/JSONArray;)Lcn/hutool/json/JSONObject;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/hutool/json/JSONException;
        }
    .end annotation

    if-eqz p1, :cond_2

    .line 272
    invoke-virtual {p1}, Lcn/hutool/json/JSONArray;->size()I

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcn/hutool/json/JSONArray;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 275
    :cond_0
    new-instance v0, Lcn/hutool/json/JSONObject;

    iget-object v1, p0, Lcn/hutool/json/JSONArray;->config:Lcn/hutool/json/JSONConfig;

    invoke-direct {v0, v1}, Lcn/hutool/json/JSONObject;-><init>(Lcn/hutool/json/JSONConfig;)V

    const/4 v1, 0x0

    .line 276
    :goto_0
    invoke-virtual {p1}, Lcn/hutool/json/JSONArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 277
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcn/hutool/json/JSONArray;->getStr(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcn/hutool/json/JSONArray;->getObj(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcn/hutool/json/JSONObject;->set(Ljava/lang/String;Ljava/lang/Object;)Lcn/hutool/json/JSONObject;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0

    :cond_2
    :goto_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public toJSONString(ILcn/hutool/core/lang/Filter;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcn/hutool/core/lang/Filter<",
            "Lcn/hutool/core/lang/mutable/MutablePair<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 535
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 536
    invoke-virtual {v0}, Ljava/io/StringWriter;->getBuffer()Ljava/lang/StringBuffer;

    move-result-object v1

    monitor-enter v1

    const/4 v2, 0x0

    .line 537
    :try_start_0
    invoke-virtual {p0, v0, p1, v2, p2}, Lcn/hutool/json/JSONArray;->write(Ljava/io/Writer;IILcn/hutool/core/lang/Filter;)Ljava/io/Writer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    monitor-exit v1

    return-object p1

    :catchall_0
    move-exception p1

    .line 538
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public toList(Ljava/lang/Class;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 512
    invoke-static {p0, p1}, Lcn/hutool/json/JSONConverter;->toList(Lcn/hutool/json/JSONArray;Ljava/lang/Class;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 522
    invoke-virtual {p0, v0}, Lcn/hutool/json/JSONArray;->toJSONString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public write(Ljava/io/Writer;II)Ljava/io/Writer;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/hutool/json/JSONException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 543
    invoke-virtual {p0, p1, p2, p3, v0}, Lcn/hutool/json/JSONArray;->write(Ljava/io/Writer;IILcn/hutool/core/lang/Filter;)Ljava/io/Writer;

    move-result-object p1

    return-object p1
.end method

.method public write(Ljava/io/Writer;IILcn/hutool/core/lang/Filter;)Ljava/io/Writer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/Writer;",
            "II",
            "Lcn/hutool/core/lang/Filter<",
            "Lcn/hutool/core/lang/mutable/MutablePair<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;>;)",
            "Ljava/io/Writer;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/hutool/json/JSONException;
        }
    .end annotation

    .line 559
    iget-object v0, p0, Lcn/hutool/json/JSONArray;->config:Lcn/hutool/json/JSONConfig;

    invoke-static {p1, p2, p3, v0}, Lcn/hutool/json/serialize/JSONWriter;->of(Ljava/io/Writer;IILcn/hutool/json/JSONConfig;)Lcn/hutool/json/serialize/JSONWriter;

    move-result-object p2

    invoke-virtual {p2}, Lcn/hutool/json/serialize/JSONWriter;->beginArray()Lcn/hutool/json/serialize/JSONWriter;

    move-result-object p2

    .line 561
    new-instance p3, Lcn/hutool/json/JSONArray$$ExternalSyntheticLambda0;

    invoke-direct {p3, p2, p4}, Lcn/hutool/json/JSONArray$$ExternalSyntheticLambda0;-><init>(Lcn/hutool/json/serialize/JSONWriter;Lcn/hutool/core/lang/Filter;)V

    invoke-static {p0, p3}, Lcn/hutool/core/collection/CollUtil;->forEach(Ljava/lang/Iterable;Lcn/hutool/core/collection/CollUtil$Consumer;)V

    .line 562
    invoke-virtual {p2}, Lcn/hutool/json/serialize/JSONWriter;->end()Lcn/hutool/json/serialize/JSONWriter;

    return-object p1
.end method
