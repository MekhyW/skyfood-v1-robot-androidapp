.class public Lcn/hutool/core/text/StrSplitter;
.super Ljava/lang/Object;
.source "StrSplitter.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic lambda$trimFunc$0(ZLjava/lang/String;)Ljava/lang/String;
    .locals 0

    if-eqz p0, :cond_0

    .line 454
    invoke-static {p1}, Lcn/hutool/core/util/StrUtil;->trim(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method public static split(Ljava/lang/CharSequence;CIZLjava/util/function/Function;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/CharSequence;",
            "CIZ",
            "Ljava/util/function/Function<",
            "Ljava/lang/String;",
            "TR;>;)",
            "Ljava/util/List<",
            "TR;>;"
        }
    .end annotation

    const/4 v4, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v5, p4

    .line 142
    invoke-static/range {v0 .. v5}, Lcn/hutool/core/text/StrSplitter;->split(Ljava/lang/CharSequence;CIZZLjava/util/function/Function;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static split(Ljava/lang/CharSequence;CIZZ)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "CIZZ)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    .line 126
    invoke-static/range {v0 .. v5}, Lcn/hutool/core/text/StrSplitter;->split(Ljava/lang/CharSequence;CIZZZ)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static split(Ljava/lang/CharSequence;CIZZLjava/util/function/Function;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/CharSequence;",
            "CIZZ",
            "Ljava/util/function/Function<",
            "Ljava/lang/String;",
            "TR;>;)",
            "Ljava/util/List<",
            "TR;>;"
        }
    .end annotation

    if-nez p0, :cond_0

    .line 192
    new-instance p0, Ljava/util/ArrayList;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ljava/util/ArrayList;-><init>(I)V

    return-object p0

    .line 194
    :cond_0
    new-instance v0, Lcn/hutool/core/text/split/SplitIter;

    new-instance v1, Lcn/hutool/core/text/finder/CharFinder;

    invoke-direct {v1, p1, p4}, Lcn/hutool/core/text/finder/CharFinder;-><init>(CZ)V

    invoke-direct {v0, p0, v1, p2, p3}, Lcn/hutool/core/text/split/SplitIter;-><init>(Ljava/lang/CharSequence;Lcn/hutool/core/text/finder/TextFinder;IZ)V

    .line 195
    invoke-virtual {v0, p5}, Lcn/hutool/core/text/split/SplitIter;->toList(Ljava/util/function/Function;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static split(Ljava/lang/CharSequence;CIZZZ)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "CIZZZ)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 172
    invoke-static {p3}, Lcn/hutool/core/text/StrSplitter;->trimFunc(Z)Ljava/util/function/Function;

    move-result-object v5

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p4

    move v4, p5

    invoke-static/range {v0 .. v5}, Lcn/hutool/core/text/StrSplitter;->split(Ljava/lang/CharSequence;CIZZLjava/util/function/Function;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static split(Ljava/lang/CharSequence;CZZ)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "CZZ)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 97
    invoke-static {p0, p1, v0, p2, p3}, Lcn/hutool/core/text/StrSplitter;->split(Ljava/lang/CharSequence;CIZZ)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static split(Ljava/lang/CharSequence;I)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 350
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(I)V

    return-object p0

    .line 352
    :cond_0
    new-instance v1, Lcn/hutool/core/text/split/SplitIter;

    new-instance v2, Lcn/hutool/core/text/finder/CharMatcherFinder;

    new-instance v3, Lcn/hutool/core/text/StrSplitter$$ExternalSyntheticLambda0;

    invoke-direct {v3}, Lcn/hutool/core/text/StrSplitter$$ExternalSyntheticLambda0;-><init>()V

    invoke-direct {v2, v3}, Lcn/hutool/core/text/finder/CharMatcherFinder;-><init>(Lcn/hutool/core/lang/Matcher;)V

    const/4 v3, 0x1

    invoke-direct {v1, p0, v2, p1, v3}, Lcn/hutool/core/text/split/SplitIter;-><init>(Ljava/lang/CharSequence;Lcn/hutool/core/text/finder/TextFinder;IZ)V

    .line 353
    invoke-virtual {v1, v0}, Lcn/hutool/core/text/split/SplitIter;->toList(Z)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static split(Ljava/lang/CharSequence;Ljava/lang/String;IZZ)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/String;",
            "IZZ)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    .line 254
    invoke-static/range {v0 .. v5}, Lcn/hutool/core/text/StrSplitter;->split(Ljava/lang/CharSequence;Ljava/lang/String;IZZZ)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static split(Ljava/lang/CharSequence;Ljava/lang/String;IZZZ)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/String;",
            "IZZZ)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    if-nez p0, :cond_0

    .line 315
    new-instance p0, Ljava/util/ArrayList;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ljava/util/ArrayList;-><init>(I)V

    return-object p0

    .line 317
    :cond_0
    new-instance v0, Lcn/hutool/core/text/split/SplitIter;

    new-instance v1, Lcn/hutool/core/text/finder/StrFinder;

    invoke-direct {v1, p1, p5}, Lcn/hutool/core/text/finder/StrFinder;-><init>(Ljava/lang/CharSequence;Z)V

    invoke-direct {v0, p0, v1, p2, p4}, Lcn/hutool/core/text/split/SplitIter;-><init>(Ljava/lang/CharSequence;Lcn/hutool/core/text/finder/TextFinder;IZ)V

    .line 318
    invoke-virtual {v0, p3}, Lcn/hutool/core/text/split/SplitIter;->toList(Z)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static split(Ljava/lang/CharSequence;Ljava/lang/String;ZZ)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/String;",
            "ZZ)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v2, -0x1

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move v4, p3

    .line 226
    invoke-static/range {v0 .. v5}, Lcn/hutool/core/text/StrSplitter;->split(Ljava/lang/CharSequence;Ljava/lang/String;IZZZ)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static split(Ljava/lang/String;Ljava/util/regex/Pattern;IZZ)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/regex/Pattern;",
            "IZZ)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    if-nez p0, :cond_0

    .line 399
    new-instance p0, Ljava/util/ArrayList;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ljava/util/ArrayList;-><init>(I)V

    return-object p0

    .line 401
    :cond_0
    new-instance v0, Lcn/hutool/core/text/split/SplitIter;

    new-instance v1, Lcn/hutool/core/text/finder/PatternFinder;

    invoke-direct {v1, p1}, Lcn/hutool/core/text/finder/PatternFinder;-><init>(Ljava/util/regex/Pattern;)V

    invoke-direct {v0, p0, v1, p2, p4}, Lcn/hutool/core/text/split/SplitIter;-><init>(Ljava/lang/CharSequence;Lcn/hutool/core/text/finder/TextFinder;IZ)V

    .line 402
    invoke-virtual {v0, p3}, Lcn/hutool/core/text/split/SplitIter;->toList(Z)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static splitByLength(Ljava/lang/CharSequence;I)[Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    new-array p0, v0, [Ljava/lang/String;

    return-object p0

    .line 432
    :cond_0
    new-instance v1, Lcn/hutool/core/text/split/SplitIter;

    new-instance v2, Lcn/hutool/core/text/finder/LengthFinder;

    invoke-direct {v2, p1}, Lcn/hutool/core/text/finder/LengthFinder;-><init>(I)V

    const/4 p1, -0x1

    invoke-direct {v1, p0, v2, p1, v0}, Lcn/hutool/core/text/split/SplitIter;-><init>(Ljava/lang/CharSequence;Lcn/hutool/core/text/finder/TextFinder;IZ)V

    .line 433
    invoke-virtual {v1, v0}, Lcn/hutool/core/text/split/SplitIter;->toArray(Z)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static splitByRegex(Ljava/lang/String;Ljava/lang/String;IZZ)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IZZ)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 381
    invoke-static {p1}, Lcn/hutool/core/lang/PatternPool;->get(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p1

    .line 382
    invoke-static {p0, p1, p2, p3, p4}, Lcn/hutool/core/text/StrSplitter;->split(Ljava/lang/String;Ljava/util/regex/Pattern;IZZ)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static splitIgnoreCase(Ljava/lang/CharSequence;CIZZ)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "CIZZ)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v5, 0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    .line 157
    invoke-static/range {v0 .. v5}, Lcn/hutool/core/text/StrSplitter;->split(Ljava/lang/CharSequence;CIZZZ)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static splitIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/String;IZZ)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/String;",
            "IZZ)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    .line 283
    invoke-static/range {v0 .. v5}, Lcn/hutool/core/text/StrSplitter;->split(Ljava/lang/CharSequence;Ljava/lang/String;IZZZ)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static splitPath(Ljava/lang/CharSequence;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 35
    invoke-static {p0, v0}, Lcn/hutool/core/text/StrSplitter;->splitPath(Ljava/lang/CharSequence;I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static splitPath(Ljava/lang/CharSequence;I)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/16 v0, 0x2f

    const/4 v1, 0x1

    .line 58
    invoke-static {p0, v0, p1, v1, v1}, Lcn/hutool/core/text/StrSplitter;->split(Ljava/lang/CharSequence;CIZZ)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static splitPathToArray(Ljava/lang/CharSequence;)[Ljava/lang/String;
    .locals 0

    .line 46
    invoke-static {p0}, Lcn/hutool/core/text/StrSplitter;->splitPath(Ljava/lang/CharSequence;)Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lcn/hutool/core/text/StrSplitter;->toArray(Ljava/util/List;)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static splitPathToArray(Ljava/lang/CharSequence;I)[Ljava/lang/String;
    .locals 0

    .line 70
    invoke-static {p0, p1}, Lcn/hutool/core/text/StrSplitter;->splitPath(Ljava/lang/CharSequence;I)Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lcn/hutool/core/text/StrSplitter;->toArray(Ljava/util/List;)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static splitToArray(Ljava/lang/CharSequence;CIZZ)[Ljava/lang/String;
    .locals 0

    .line 210
    invoke-static {p0, p1, p2, p3, p4}, Lcn/hutool/core/text/StrSplitter;->split(Ljava/lang/CharSequence;CIZZ)Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lcn/hutool/core/text/StrSplitter;->toArray(Ljava/util/List;)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static splitToArray(Ljava/lang/CharSequence;Ljava/lang/String;IZZ)[Ljava/lang/String;
    .locals 0

    .line 333
    invoke-static {p0, p1, p2, p3, p4}, Lcn/hutool/core/text/StrSplitter;->split(Ljava/lang/CharSequence;Ljava/lang/String;IZZ)Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lcn/hutool/core/text/StrSplitter;->toArray(Ljava/util/List;)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static splitToArray(Ljava/lang/String;I)[Ljava/lang/String;
    .locals 0

    .line 365
    invoke-static {p0, p1}, Lcn/hutool/core/text/StrSplitter;->split(Ljava/lang/CharSequence;I)Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lcn/hutool/core/text/StrSplitter;->toArray(Ljava/util/List;)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static splitToArray(Ljava/lang/String;Ljava/util/regex/Pattern;IZZ)[Ljava/lang/String;
    .locals 0

    .line 417
    invoke-static {p0, p1, p2, p3, p4}, Lcn/hutool/core/text/StrSplitter;->split(Ljava/lang/String;Ljava/util/regex/Pattern;IZZ)Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lcn/hutool/core/text/StrSplitter;->toArray(Ljava/util/List;)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static splitTrim(Ljava/lang/CharSequence;CIZ)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "CIZ)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v3, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v4, p3

    .line 111
    invoke-static/range {v0 .. v5}, Lcn/hutool/core/text/StrSplitter;->split(Ljava/lang/CharSequence;CIZZZ)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static splitTrim(Ljava/lang/CharSequence;CZ)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "CZ)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 83
    invoke-static {p0, p1, v0, v1, p2}, Lcn/hutool/core/text/StrSplitter;->split(Ljava/lang/CharSequence;CIZZ)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static splitTrim(Ljava/lang/CharSequence;Ljava/lang/String;IZ)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/String;",
            "IZ)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 268
    invoke-static {p0, p1, p2, v0, p3}, Lcn/hutool/core/text/StrSplitter;->split(Ljava/lang/CharSequence;Ljava/lang/String;IZZ)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static splitTrim(Ljava/lang/CharSequence;Ljava/lang/String;Z)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 239
    invoke-static {p0, p1, v0, p2}, Lcn/hutool/core/text/StrSplitter;->split(Ljava/lang/CharSequence;Ljava/lang/String;ZZ)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static splitTrimIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/String;IZ)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/String;",
            "IZ)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v3, 0x1

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v4, p3

    .line 297
    invoke-static/range {v0 .. v5}, Lcn/hutool/core/text/StrSplitter;->split(Ljava/lang/CharSequence;Ljava/lang/String;IZZZ)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private static toArray(Ljava/util/List;)[Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)[",
            "Ljava/lang/String;"
        }
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    .line 444
    invoke-interface {p0, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method

.method private static trimFunc(Z)Ljava/util/function/Function;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/function/Function<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 454
    new-instance v0, Lcn/hutool/core/text/StrSplitter$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcn/hutool/core/text/StrSplitter$$ExternalSyntheticLambda1;-><init>(Z)V

    return-object v0
.end method
