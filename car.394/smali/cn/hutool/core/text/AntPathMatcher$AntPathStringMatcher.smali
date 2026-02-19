.class public Lcn/hutool/core/text/AntPathMatcher$AntPathStringMatcher;
.super Ljava/lang/Object;
.source "AntPathMatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/hutool/core/text/AntPathMatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "AntPathStringMatcher"
.end annotation


# static fields
.field private static final DEFAULT_VARIABLE_PATTERN:Ljava/lang/String; = "((?s).*)"

.field private static final GLOB_PATTERN:Ljava/util/regex/Pattern;


# instance fields
.field private final caseSensitive:Z

.field private final exactMatch:Z

.field private final pattern:Ljava/util/regex/Pattern;

.field private final rawPattern:Ljava/lang/String;

.field private final variableNames:Ljava/util/List;
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

    const-string v0, "\\?|\\*|\\{((?:\\{[^/]+?}|[^/{}]|\\\\[{}])+?)}"

    .line 646
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcn/hutool/core/text/AntPathMatcher$AntPathStringMatcher;->GLOB_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 7

    .line 660
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 658
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/hutool/core/text/AntPathMatcher$AntPathStringMatcher;->variableNames:Ljava/util/List;

    .line 661
    iput-object p1, p0, Lcn/hutool/core/text/AntPathMatcher$AntPathStringMatcher;->rawPattern:Ljava/lang/String;

    .line 662
    iput-boolean p2, p0, Lcn/hutool/core/text/AntPathMatcher$AntPathStringMatcher;->caseSensitive:Z

    .line 663
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 664
    sget-object v0, Lcn/hutool/core/text/AntPathMatcher$AntPathStringMatcher;->GLOB_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    .line 666
    :goto_0
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_4

    .line 667
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->start()I

    move-result v3

    invoke-direct {p0, p1, v2, v3}, Lcn/hutool/core/text/AntPathMatcher$AntPathStringMatcher;->quote(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 668
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v2

    const-string v3, "?"

    .line 669
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v2, 0x2e

    .line 670
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_0
    const-string v3, "*"

    .line 671
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v2, ".*"

    .line 672
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    const-string v3, "{"

    .line 673
    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v3, "}"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/16 v3, 0x3a

    .line 674
    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    const/4 v5, -0x1

    if-ne v3, v5, :cond_2

    const-string v2, "((?s).*)"

    .line 676
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 677
    iget-object v2, p0, Lcn/hutool/core/text/AntPathMatcher$AntPathStringMatcher;->variableNames:Ljava/util/List;

    invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    add-int/lit8 v5, v3, 0x1

    .line 679
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    sub-int/2addr v6, v4

    invoke-virtual {v2, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x28

    .line 680
    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 681
    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v5, 0x29

    .line 682
    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 683
    invoke-virtual {v2, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 684
    iget-object v3, p0, Lcn/hutool/core/text/AntPathMatcher$AntPathStringMatcher;->variableNames:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 687
    :cond_3
    :goto_1
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->end()I

    move-result v2

    goto :goto_0

    :cond_4
    if-nez v2, :cond_5

    .line 691
    iput-boolean v4, p0, Lcn/hutool/core/text/AntPathMatcher$AntPathStringMatcher;->exactMatch:Z

    const/4 p1, 0x0

    .line 692
    iput-object p1, p0, Lcn/hutool/core/text/AntPathMatcher$AntPathStringMatcher;->pattern:Ljava/util/regex/Pattern;

    goto :goto_3

    .line 694
    :cond_5
    iput-boolean v1, p0, Lcn/hutool/core/text/AntPathMatcher$AntPathStringMatcher;->exactMatch:Z

    .line 695
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-direct {p0, p1, v2, v0}, Lcn/hutool/core/text/AntPathMatcher$AntPathStringMatcher;->quote(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 696
    iget-boolean p1, p0, Lcn/hutool/core/text/AntPathMatcher$AntPathStringMatcher;->caseSensitive:Z

    if-eqz p1, :cond_6

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p1

    goto :goto_2

    .line 697
    :cond_6
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x2

    invoke-static {p1, p2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object p1

    :goto_2
    iput-object p1, p0, Lcn/hutool/core/text/AntPathMatcher$AntPathStringMatcher;->pattern:Ljava/util/regex/Pattern;

    :goto_3
    return-void
.end method

.method private quote(Ljava/lang/String;II)Ljava/lang/String;
    .locals 0

    if-ne p2, p3, :cond_0

    const-string p1, ""

    return-object p1

    .line 705
    :cond_0
    invoke-virtual {p1, p2, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public matchStrings(Ljava/lang/String;Ljava/util/Map;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 716
    iget-boolean v0, p0, Lcn/hutool/core/text/AntPathMatcher$AntPathStringMatcher;->exactMatch:Z

    if-eqz v0, :cond_1

    .line 717
    iget-boolean p2, p0, Lcn/hutool/core/text/AntPathMatcher$AntPathStringMatcher;->caseSensitive:Z

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcn/hutool/core/text/AntPathMatcher$AntPathStringMatcher;->rawPattern:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcn/hutool/core/text/AntPathMatcher$AntPathStringMatcher;->rawPattern:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    :goto_0
    return p1

    .line 718
    :cond_1
    iget-object v0, p0, Lcn/hutool/core/text/AntPathMatcher$AntPathStringMatcher;->pattern:Ljava/util/regex/Pattern;

    if-eqz v0, :cond_5

    .line 719
    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    .line 720
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x1

    if-eqz p2, :cond_4

    .line 722
    iget-object v1, p0, Lcn/hutool/core/text/AntPathMatcher$AntPathStringMatcher;->variableNames:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->groupCount()I

    move-result v2

    if-ne v1, v2, :cond_3

    move v1, v0

    .line 728
    :goto_1
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->groupCount()I

    move-result v2

    if-gt v1, v2, :cond_4

    .line 729
    iget-object v2, p0, Lcn/hutool/core/text/AntPathMatcher$AntPathStringMatcher;->variableNames:Ljava/util/List;

    add-int/lit8 v3, v1, -0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "*"

    .line 730
    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 734
    invoke-virtual {p1, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    .line 735
    invoke-interface {p2, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 731
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Capturing patterns ("

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, ") are not supported by the AntPathMatcher. Use the PathPatternParser instead."

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 723
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "The number of capturing groups in the pattern segment "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcn/hutool/core/text/AntPathMatcher$AntPathStringMatcher;->pattern:Ljava/util/regex/Pattern;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, " does not match the number of URI template variables it defines, which can occur if capturing groups are used in a URI template regex. Use non-capturing groups instead."

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    return v0

    :cond_5
    const/4 p1, 0x0

    return p1
.end method
