.class public Lcn/hutool/core/bean/BeanPath;
.super Ljava/lang/Object;
.source "BeanPath.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final EXP_CHARS:[C

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private isStartWith:Z

.field protected patternParts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x3

    new-array v0, v0, [C

    .line 42
    fill-array-data v0, :array_0

    sput-object v0, Lcn/hutool/core/bean/BeanPath;->EXP_CHARS:[C

    return-void

    nop

    :array_0
    .array-data 2
        0x2es
        0x5bs
        0x5ds
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 44
    iput-boolean v0, p0, Lcn/hutool/core/bean/BeanPath;->isStartWith:Z

    .line 79
    invoke-direct {p0, p1}, Lcn/hutool/core/bean/BeanPath;->init(Ljava/lang/String;)V

    return-void
.end method

.method public static create(Ljava/lang/String;)Lcn/hutool/core/bean/BeanPath;
    .locals 1

    .line 70
    new-instance v0, Lcn/hutool/core/bean/BeanPath;

    invoke-direct {v0, p0}, Lcn/hutool/core/bean/BeanPath;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private get(Ljava/util/List;Ljava/lang/Object;Z)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Object;",
            "Z)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 186
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-eqz p3, :cond_0

    add-int/lit8 v0, v0, -0x1

    :cond_0
    const/4 p3, 0x0

    const/4 v1, 0x1

    move-object v3, p2

    move v2, p3

    move v4, v1

    :goto_0
    if-ge v2, v0, :cond_3

    .line 194
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 195
    invoke-static {v3, v5}, Lcn/hutool/core/bean/BeanPath;->getFieldValue(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_2

    if-eqz v4, :cond_1

    .line 198
    iget-boolean v3, p0, Lcn/hutool/core/bean/BeanPath;->isStartWith:Z

    if-nez v3, :cond_1

    invoke-static {p2, v5, v1}, Lcn/hutool/core/bean/BeanUtil;->isMatchName(Ljava/lang/Object;Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_1

    move-object v3, p2

    move v4, p3

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    return-object p1

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-object v3
.end method

.method private static getFieldValue(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 6

    .line 211
    invoke-static {p1}, Lcn/hutool/core/util/StrUtil;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    const/16 v0, 0x3a

    .line 215
    invoke-static {p1, v0}, Lcn/hutool/core/util/StrUtil;->contains(Ljava/lang/CharSequence;C)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_4

    .line 217
    invoke-static {p1, v0}, Lcn/hutool/core/util/StrUtil;->splitTrim(Ljava/lang/CharSequence;C)Ljava/util/List;

    move-result-object p1

    .line 218
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/4 v2, 0x1

    .line 219
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x3

    .line 221
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    if-ne v4, v5, :cond_1

    const/4 v2, 0x2

    .line 222
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 224
    :cond_1
    instance-of p1, p0, Ljava/util/Collection;

    if-eqz p1, :cond_2

    .line 225
    check-cast p0, Ljava/util/Collection;

    invoke-static {p0, v0, v3, v2}, Lcn/hutool/core/collection/CollUtil;->sub(Ljava/util/Collection;III)Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 226
    :cond_2
    invoke-static {p0}, Lcn/hutool/core/util/ArrayUtil;->isArray(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 227
    invoke-static {p0, v0, v3, v2}, Lcn/hutool/core/util/ArrayUtil;->sub(Ljava/lang/Object;III)[Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_3
    return-object v1

    :cond_4
    const/16 v0, 0x2c

    .line 229
    invoke-static {p1, v0}, Lcn/hutool/core/util/StrUtil;->contains(Ljava/lang/CharSequence;C)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 231
    invoke-static {p1, v0}, Lcn/hutool/core/util/StrUtil;->splitTrim(Ljava/lang/CharSequence;C)Ljava/util/List;

    move-result-object p1

    .line 232
    instance-of v0, p0, Ljava/util/Collection;

    const-class v1, [I

    if-eqz v0, :cond_5

    .line 233
    check-cast p0, Ljava/util/Collection;

    invoke-static {v1, p1}, Lcn/hutool/core/convert/Convert;->convert(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [I

    invoke-static {p0, p1}, Lcn/hutool/core/collection/CollUtil;->getAny(Ljava/util/Collection;[I)Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 234
    :cond_5
    invoke-static {p0}, Lcn/hutool/core/util/ArrayUtil;->isArray(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 235
    invoke-static {v1, p1}, Lcn/hutool/core/convert/Convert;->convert(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [I

    invoke-static {p0, p1}, Lcn/hutool/core/util/ArrayUtil;->getAny(Ljava/lang/Object;[I)[Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 237
    :cond_6
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v1, v0, [Ljava/lang/String;

    move v2, v3

    :goto_0
    if-ge v2, v0, :cond_7

    .line 239
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    const/16 v5, 0x27

    invoke-static {v4, v5}, Lcn/hutool/core/util/StrUtil;->unWrap(Ljava/lang/CharSequence;C)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 241
    :cond_7
    instance-of p1, p0, Ljava/util/Map;

    if-eqz p1, :cond_8

    .line 243
    check-cast p0, Ljava/util/Map;

    invoke-static {p0, v1}, Lcn/hutool/core/map/MapUtil;->getAny(Ljava/util/Map;[Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p0

    return-object p0

    :cond_8
    new-array p1, v3, [Ljava/lang/String;

    .line 245
    invoke-static {p0, p1}, Lcn/hutool/core/bean/BeanUtil;->beanToMap(Ljava/lang/Object;[Ljava/lang/String;)Ljava/util/Map;

    move-result-object p0

    .line 246
    invoke-static {p0, v1}, Lcn/hutool/core/map/MapUtil;->getAny(Ljava/util/Map;[Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p0

    return-object p0

    .line 251
    :cond_9
    invoke-static {p0, p1}, Lcn/hutool/core/bean/BeanUtil;->getFieldValue(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static getParentParts(Ljava/util/List;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 174
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    invoke-interface {p0, v1, v0}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private init(Ljava/lang/String;)V
    .locals 12

    .line 263
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 264
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 266
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    move v6, v5

    :goto_0
    const-string v7, "Bad expression \'{}\':{}, we find \'[\' but no \']\' !"

    const/4 v8, 0x2

    const/4 v9, 0x1

    if-ge v4, v1, :cond_8

    .line 271
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v10

    if-nez v4, :cond_0

    const/16 v11, 0x24

    if-ne v11, v10, :cond_0

    .line 274
    iput-boolean v9, p0, Lcn/hutool/core/bean/BeanPath;->isStartWith:Z

    goto :goto_2

    :cond_0
    const/16 v11, 0x27

    if-ne v11, v10, :cond_1

    xor-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_1
    if-nez v6, :cond_7

    .line 284
    sget-object v11, Lcn/hutool/core/bean/BeanPath;->EXP_CHARS:[C

    invoke-static {v11, v10}, Lcn/hutool/core/util/ArrayUtil;->contains([CC)Z

    move-result v11

    if-eqz v11, :cond_7

    const/16 v11, 0x5d

    if-ne v11, v10, :cond_3

    if-eqz v5, :cond_2

    move v5, v3

    goto :goto_1

    .line 289
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-array v1, v8, [Ljava/lang/Object;

    aput-object p1, v1, v3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v9

    const-string p1, "Bad expression \'{}\':{}, we find \']\' but no \'[\' !"

    invoke-static {p1, v1}, Lcn/hutool/core/util/StrUtil;->format(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    if-nez v5, :cond_6

    const/16 v7, 0x5b

    if-ne v7, v10, :cond_4

    move v5, v9

    .line 303
    :cond_4
    :goto_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    if-lez v7, :cond_5

    .line 304
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 306
    :cond_5
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    goto :goto_2

    .line 296
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-array v1, v8, [Ljava/lang/Object;

    aput-object p1, v1, v3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v9

    invoke-static {v7, v1}, Lcn/hutool/core/util/StrUtil;->format(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 309
    :cond_7
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_8
    if-nez v5, :cond_a

    .line 317
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    if-lez p1, :cond_9

    .line 318
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 323
    :cond_9
    invoke-static {v0}, Lcn/hutool/core/collection/ListUtil;->unmodifiable(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcn/hutool/core/bean/BeanPath;->patternParts:Ljava/util/List;

    return-void

    .line 315
    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-array v2, v8, [Ljava/lang/Object;

    aput-object p1, v2, v3

    sub-int/2addr v1, v9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v9

    invoke-static {v7, v2}, Lcn/hutool/core/util/StrUtil;->format(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static lastIsNumber(Ljava/util/List;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 164
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Lcn/hutool/core/util/NumberUtil;->isInteger(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private set(Ljava/lang/Object;Ljava/util/List;ZLjava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x1

    .line 141
    invoke-direct {p0, p2, p1, v0}, Lcn/hutool/core/bean/BeanPath;->get(Ljava/util/List;Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    .line 144
    invoke-static {p2}, Lcn/hutool/core/bean/BeanPath;->getParentParts(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 145
    invoke-static {v1}, Lcn/hutool/core/bean/BeanPath;->lastIsNumber(Ljava/util/List;)Z

    move-result v2

    if-eqz p3, :cond_0

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0

    :cond_0
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    :goto_0
    invoke-direct {p0, p1, v1, v2, v3}, Lcn/hutool/core/bean/BeanPath;->set(Ljava/lang/Object;Ljava/util/List;ZLjava/lang/Object;)V

    .line 147
    invoke-direct {p0, p2, p1, v0}, Lcn/hutool/core/bean/BeanPath;->get(Ljava/util/List;Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v1

    .line 150
    :cond_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v0

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v1, v0, p4}, Lcn/hutool/core/bean/BeanUtil;->setFieldValue(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    if-eq p4, v1, :cond_2

    .line 153
    invoke-static {p2}, Lcn/hutool/core/bean/BeanPath;->getParentParts(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    invoke-direct {p0, p1, p2, p3, p4}, Lcn/hutool/core/bean/BeanPath;->set(Ljava/lang/Object;Ljava/util/List;ZLjava/lang/Object;)V

    :cond_2
    return-void
.end method


# virtual methods
.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 98
    iget-object v0, p0, Lcn/hutool/core/bean/BeanPath;->patternParts:Ljava/util/List;

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lcn/hutool/core/bean/BeanPath;->get(Ljava/util/List;Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getPatternParts()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 88
    iget-object v0, p0, Lcn/hutool/core/bean/BeanPath;->patternParts:Ljava/util/List;

    return-object v0
.end method

.method public set(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    .line 115
    iget-object v0, p0, Lcn/hutool/core/bean/BeanPath;->patternParts:Ljava/util/List;

    invoke-static {v0}, Lcn/hutool/core/bean/BeanPath;->lastIsNumber(Ljava/util/List;)Z

    move-result v1

    invoke-direct {p0, p1, v0, v1, p2}, Lcn/hutool/core/bean/BeanPath;->set(Ljava/lang/Object;Ljava/util/List;ZLjava/lang/Object;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 120
    iget-object v0, p0, Lcn/hutool/core/bean/BeanPath;->patternParts:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
