.class public Lcn/hutool/dfa/WordTree;
.super Ljava/util/HashMap;
.source "WordTree.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap<",
        "Ljava/lang/Character;",
        "Lcn/hutool/dfa/WordTree;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x407b6958849e617cL


# instance fields
.field private charFilter:Lcn/hutool/core/lang/Filter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcn/hutool/core/lang/Filter<",
            "Ljava/lang/Character;",
            ">;"
        }
    .end annotation
.end field

.field private final endCharacterSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Character;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 46
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 35
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcn/hutool/dfa/WordTree;->endCharacterSet:Ljava/util/Set;

    .line 39
    new-instance v0, Lcn/hutool/dfa/WordTree$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcn/hutool/dfa/WordTree$$ExternalSyntheticLambda0;-><init>()V

    iput-object v0, p0, Lcn/hutool/dfa/WordTree;->charFilter:Lcn/hutool/core/lang/Filter;

    return-void
.end method

.method private isEnd(Ljava/lang/Character;)Z
    .locals 1

    .line 309
    iget-object v0, p0, Lcn/hutool/dfa/WordTree;->endCharacterSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method private setEnd(Ljava/lang/Character;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 319
    iget-object v0, p0, Lcn/hutool/dfa/WordTree;->endCharacterSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public addWord(Ljava/lang/String;)Lcn/hutool/dfa/WordTree;
    .locals 8

    .line 101
    iget-object v0, p0, Lcn/hutool/dfa/WordTree;->charFilter:Lcn/hutool/core/lang/Filter;

    .line 106
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v5, p0

    move v4, v3

    :goto_0
    if-ge v3, v1, :cond_2

    .line 108
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 109
    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v6

    invoke-interface {v0, v6}, Lcn/hutool/core/lang/Filter;->accept(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 110
    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v5, v2}, Lcn/hutool/dfa/WordTree;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/hutool/dfa/WordTree;

    if-nez v2, :cond_0

    .line 113
    new-instance v2, Lcn/hutool/dfa/WordTree;

    invoke-direct {v2}, Lcn/hutool/dfa/WordTree;-><init>()V

    .line 114
    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v6

    invoke-virtual {v5, v6, v2}, Lcn/hutool/dfa/WordTree;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    move-object v7, v5

    move-object v5, v2

    move-object v2, v7

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    if-eqz v2, :cond_3

    .line 121
    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p1

    invoke-direct {v2, p1}, Lcn/hutool/dfa/WordTree;->setEnd(Ljava/lang/Character;)V

    :cond_3
    return-object p0
.end method

.method public addWords(Ljava/util/Collection;)Lcn/hutool/dfa/WordTree;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)",
            "Lcn/hutool/dfa/WordTree;"
        }
    .end annotation

    .line 72
    instance-of v0, p1, Ljava/util/Set;

    if-nez v0, :cond_0

    .line 73
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    move-object p1, v0

    .line 75
    :cond_0
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 76
    invoke-virtual {p0, v0}, Lcn/hutool/dfa/WordTree;->addWord(Ljava/lang/String;)Lcn/hutool/dfa/WordTree;

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method public varargs addWords([Ljava/lang/String;)Lcn/hutool/dfa/WordTree;
    .locals 1

    .line 88
    invoke-static {p1}, Lcn/hutool/core/collection/CollUtil;->newHashSet([Ljava/lang/Object;)Ljava/util/HashSet;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 89
    invoke-virtual {p0, v0}, Lcn/hutool/dfa/WordTree;->addWord(Ljava/lang/String;)Lcn/hutool/dfa/WordTree;

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public clear()V
    .locals 1

    .line 330
    invoke-super {p0}, Ljava/util/HashMap;->clear()V

    .line 331
    iget-object v0, p0, Lcn/hutool/dfa/WordTree;->endCharacterSet:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    return-void
.end method

.method public isMatch(Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 137
    :cond_0
    invoke-virtual {p0, p1}, Lcn/hutool/dfa/WordTree;->matchWord(Ljava/lang/String;)Lcn/hutool/dfa/FoundWord;

    move-result-object p1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public match(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 147
    invoke-virtual {p0, p1}, Lcn/hutool/dfa/WordTree;->matchWord(Ljava/lang/String;)Lcn/hutool/dfa/FoundWord;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 148
    invoke-virtual {p1}, Lcn/hutool/dfa/FoundWord;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public matchAll(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, -0x1

    .line 175
    invoke-virtual {p0, p1, v0}, Lcn/hutool/dfa/WordTree;->matchAll(Ljava/lang/String;I)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public matchAll(Ljava/lang/String;I)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 197
    invoke-virtual {p0, p1, p2, v0, v0}, Lcn/hutool/dfa/WordTree;->matchAll(Ljava/lang/String;IZZ)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public matchAll(Ljava/lang/String;IZZ)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IZZ)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 224
    invoke-virtual {p0, p1, p2, p3, p4}, Lcn/hutool/dfa/WordTree;->matchAllWords(Ljava/lang/String;IZZ)Ljava/util/List;

    move-result-object p1

    .line 225
    new-instance p2, Lcn/hutool/dfa/WordTree$$ExternalSyntheticLambda1;

    invoke-direct {p2}, Lcn/hutool/dfa/WordTree$$ExternalSyntheticLambda1;-><init>()V

    const/4 p3, 0x1

    invoke-static {p1, p2, p3}, Lcn/hutool/core/collection/CollUtil;->map(Ljava/lang/Iterable;Ljava/util/function/Function;Z)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public matchAllWords(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcn/hutool/dfa/FoundWord;",
            ">;"
        }
    .end annotation

    const/4 v0, -0x1

    .line 186
    invoke-virtual {p0, p1, v0}, Lcn/hutool/dfa/WordTree;->matchAllWords(Ljava/lang/String;I)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public matchAllWords(Ljava/lang/String;I)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Lcn/hutool/dfa/FoundWord;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 209
    invoke-virtual {p0, p1, p2, v0, v0}, Lcn/hutool/dfa/WordTree;->matchAllWords(Ljava/lang/String;IZZ)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public matchAllWords(Ljava/lang/String;IZZ)Ljava/util/List;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IZZ)",
            "Ljava/util/List<",
            "Lcn/hutool/dfa/FoundWord;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p1

    move/from16 v1, p2

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 245
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 247
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v3

    move-object/from16 v4, p0

    .line 248
    iget-object v5, v4, Lcn/hutool/dfa/WordTree;->charFilter:Lcn/hutool/core/lang/Filter;

    .line 250
    invoke-static {}, Lcn/hutool/core/util/StrUtil;->builder()Ljava/lang/StringBuilder;

    move-result-object v6

    .line 251
    invoke-static {}, Lcn/hutool/core/util/StrUtil;->builder()Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v8, 0x0

    move v9, v8

    :goto_0
    if-ge v9, v3, :cond_9

    .line 254
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 255
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->setLength(I)V

    move-object v11, v4

    move v10, v9

    :goto_1
    if-ge v9, v3, :cond_8

    .line 257
    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v12

    .line 259
    invoke-static {v12}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v13

    invoke-interface {v5, v13}, Lcn/hutool/core/lang/Filter;->accept(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_2

    .line 260
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v13

    if-lez v13, :cond_1

    .line 262
    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 268
    :cond_2
    invoke-static {v12}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v13

    invoke-virtual {v11, v13}, Lcn/hutool/dfa/WordTree;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_3

    goto :goto_3

    .line 272
    :cond_3
    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 273
    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 274
    invoke-static {v12}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v13

    invoke-direct {v11, v13}, Lcn/hutool/dfa/WordTree;->isEnd(Ljava/lang/Character;)Z

    move-result v13

    if-eqz v13, :cond_6

    .line 276
    new-instance v13, Lcn/hutool/dfa/FoundWord;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v13, v14, v15, v10, v9}, Lcn/hutool/dfa/FoundWord;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    invoke-interface {v2, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-lez v1, :cond_4

    .line 277
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v13

    if-lt v13, v1, :cond_4

    return-object v2

    :cond_4
    if-nez p3, :cond_5

    goto :goto_4

    :cond_5
    if-nez p4, :cond_6

    goto :goto_3

    .line 291
    :cond_6
    invoke-static {v12}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcn/hutool/dfa/WordTree;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcn/hutool/dfa/WordTree;

    if-nez v11, :cond_7

    goto :goto_3

    :cond_7
    :goto_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_8
    :goto_3
    move v9, v10

    :goto_4
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_9
    return-object v2
.end method

.method public matchWord(Ljava/lang/String;)Lcn/hutool/dfa/FoundWord;
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const/4 v0, 0x1

    .line 162
    invoke-virtual {p0, p1, v0}, Lcn/hutool/dfa/WordTree;->matchAllWords(Ljava/lang/String;I)Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    .line 163
    invoke-static {p1, v0}, Lcn/hutool/core/collection/CollUtil;->get(Ljava/util/Collection;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/hutool/dfa/FoundWord;

    return-object p1
.end method

.method public setCharFilter(Lcn/hutool/core/lang/Filter;)Lcn/hutool/dfa/WordTree;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/hutool/core/lang/Filter<",
            "Ljava/lang/Character;",
            ">;)",
            "Lcn/hutool/dfa/WordTree;"
        }
    .end annotation

    .line 59
    iput-object p1, p0, Lcn/hutool/dfa/WordTree;->charFilter:Lcn/hutool/core/lang/Filter;

    return-object p0
.end method
