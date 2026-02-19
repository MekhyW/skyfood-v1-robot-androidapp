.class Lcn/hutool/core/text/AntPathMatcher$AntPatternComparator$PatternInfo;
.super Ljava/lang/Object;
.source "AntPathMatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/hutool/core/text/AntPathMatcher$AntPatternComparator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PatternInfo"
.end annotation


# instance fields
.field private catchAllPattern:Z

.field private doubleWildcards:I

.field private length:Ljava/lang/Integer;

.field private final pattern:Ljava/lang/String;

.field private prefixPattern:Z

.field private singleWildcards:I

.field private uriVars:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 3

    .line 846
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 847
    iput-object p1, p0, Lcn/hutool/core/text/AntPathMatcher$AntPatternComparator$PatternInfo;->pattern:Ljava/lang/String;

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 849
    invoke-virtual {p0}, Lcn/hutool/core/text/AntPathMatcher$AntPatternComparator$PatternInfo;->initCounters()V

    const-string v1, "/**"

    .line 850
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    iput-boolean v2, p0, Lcn/hutool/core/text/AntPathMatcher$AntPatternComparator$PatternInfo;->catchAllPattern:Z

    if-nez v2, :cond_0

    .line 851
    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    iput-boolean v1, p0, Lcn/hutool/core/text/AntPathMatcher$AntPatternComparator$PatternInfo;->prefixPattern:Z

    .line 853
    :cond_1
    iget v1, p0, Lcn/hutool/core/text/AntPathMatcher$AntPatternComparator$PatternInfo;->uriVars:I

    if-nez v1, :cond_3

    if-eqz p1, :cond_2

    .line 854
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    :cond_2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcn/hutool/core/text/AntPathMatcher$AntPatternComparator$PatternInfo;->length:Ljava/lang/Integer;

    :cond_3
    return-void
.end method


# virtual methods
.method public getDoubleWildcards()I
    .locals 1

    .line 891
    iget v0, p0, Lcn/hutool/core/text/AntPathMatcher$AntPatternComparator$PatternInfo;->doubleWildcards:I

    return v0
.end method

.method public getLength()I
    .locals 2

    .line 912
    iget-object v0, p0, Lcn/hutool/core/text/AntPathMatcher$AntPatternComparator$PatternInfo;->length:Ljava/lang/Integer;

    if-nez v0, :cond_1

    .line 913
    iget-object v0, p0, Lcn/hutool/core/text/AntPathMatcher$AntPatternComparator$PatternInfo;->pattern:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 914
    invoke-static {}, Lcn/hutool/core/text/AntPathMatcher;->access$000()Ljava/util/regex/Pattern;

    move-result-object v0

    iget-object v1, p0, Lcn/hutool/core/text/AntPathMatcher$AntPatternComparator$PatternInfo;->pattern:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 913
    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcn/hutool/core/text/AntPathMatcher$AntPatternComparator$PatternInfo;->length:Ljava/lang/Integer;

    .line 916
    :cond_1
    iget-object v0, p0, Lcn/hutool/core/text/AntPathMatcher$AntPatternComparator$PatternInfo;->length:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getSingleWildcards()I
    .locals 1

    .line 887
    iget v0, p0, Lcn/hutool/core/text/AntPathMatcher$AntPatternComparator$PatternInfo;->singleWildcards:I

    return v0
.end method

.method public getTotalCount()I
    .locals 2

    .line 903
    iget v0, p0, Lcn/hutool/core/text/AntPathMatcher$AntPatternComparator$PatternInfo;->uriVars:I

    iget v1, p0, Lcn/hutool/core/text/AntPathMatcher$AntPatternComparator$PatternInfo;->singleWildcards:I

    add-int/2addr v0, v1

    iget v1, p0, Lcn/hutool/core/text/AntPathMatcher$AntPatternComparator$PatternInfo;->doubleWildcards:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    return v0
.end method

.method public getUriVars()I
    .locals 1

    .line 883
    iget v0, p0, Lcn/hutool/core/text/AntPathMatcher$AntPatternComparator$PatternInfo;->uriVars:I

    return v0
.end method

.method protected initCounters()V
    .locals 4

    .line 860
    iget-object v0, p0, Lcn/hutool/core/text/AntPathMatcher$AntPatternComparator$PatternInfo;->pattern:Ljava/lang/String;

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    .line 861
    :goto_0
    iget-object v1, p0, Lcn/hutool/core/text/AntPathMatcher$AntPatternComparator$PatternInfo;->pattern:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_4

    .line 862
    iget-object v1, p0, Lcn/hutool/core/text/AntPathMatcher$AntPatternComparator$PatternInfo;->pattern:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x7b

    if-ne v1, v2, :cond_1

    .line 863
    iget v1, p0, Lcn/hutool/core/text/AntPathMatcher$AntPatternComparator$PatternInfo;->uriVars:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcn/hutool/core/text/AntPathMatcher$AntPatternComparator$PatternInfo;->uriVars:I

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 865
    :cond_1
    iget-object v1, p0, Lcn/hutool/core/text/AntPathMatcher$AntPatternComparator$PatternInfo;->pattern:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x2a

    if-ne v1, v2, :cond_0

    add-int/lit8 v1, v0, 0x1

    .line 866
    iget-object v3, p0, Lcn/hutool/core/text/AntPathMatcher$AntPatternComparator$PatternInfo;->pattern:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_2

    iget-object v3, p0, Lcn/hutool/core/text/AntPathMatcher$AntPatternComparator$PatternInfo;->pattern:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, v2, :cond_2

    .line 867
    iget v1, p0, Lcn/hutool/core/text/AntPathMatcher$AntPatternComparator$PatternInfo;->doubleWildcards:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcn/hutool/core/text/AntPathMatcher$AntPatternComparator$PatternInfo;->doubleWildcards:I

    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    :cond_2
    if-lez v0, :cond_3

    .line 869
    iget-object v2, p0, Lcn/hutool/core/text/AntPathMatcher$AntPatternComparator$PatternInfo;->pattern:Ljava/lang/String;

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, ".*"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 870
    iget v0, p0, Lcn/hutool/core/text/AntPathMatcher$AntPatternComparator$PatternInfo;->singleWildcards:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcn/hutool/core/text/AntPathMatcher$AntPatternComparator$PatternInfo;->singleWildcards:I

    :cond_3
    move v0, v1

    goto :goto_0

    :cond_4
    return-void
.end method

.method public isLeastSpecific()Z
    .locals 1

    .line 895
    iget-object v0, p0, Lcn/hutool/core/text/AntPathMatcher$AntPatternComparator$PatternInfo;->pattern:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcn/hutool/core/text/AntPathMatcher$AntPatternComparator$PatternInfo;->catchAllPattern:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isPrefixPattern()Z
    .locals 1

    .line 899
    iget-boolean v0, p0, Lcn/hutool/core/text/AntPathMatcher$AntPatternComparator$PatternInfo;->prefixPattern:Z

    return v0
.end method
