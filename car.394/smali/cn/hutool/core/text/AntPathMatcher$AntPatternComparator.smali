.class public Lcn/hutool/core/text/AntPathMatcher$AntPatternComparator;
.super Ljava/lang/Object;
.source "AntPathMatcher.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/hutool/core/text/AntPathMatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "AntPatternComparator"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/hutool/core/text/AntPathMatcher$AntPatternComparator$PatternInfo;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private final path:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 764
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 765
    iput-object p1, p0, Lcn/hutool/core/text/AntPathMatcher$AntPatternComparator;->path:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 760
    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcn/hutool/core/text/AntPathMatcher$AntPatternComparator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public compare(Ljava/lang/String;Ljava/lang/String;)I
    .locals 6

    .line 779
    new-instance v0, Lcn/hutool/core/text/AntPathMatcher$AntPatternComparator$PatternInfo;

    invoke-direct {v0, p1}, Lcn/hutool/core/text/AntPathMatcher$AntPatternComparator$PatternInfo;-><init>(Ljava/lang/String;)V

    .line 780
    new-instance v1, Lcn/hutool/core/text/AntPathMatcher$AntPatternComparator$PatternInfo;

    invoke-direct {v1, p2}, Lcn/hutool/core/text/AntPathMatcher$AntPatternComparator$PatternInfo;-><init>(Ljava/lang/String;)V

    .line 782
    invoke-virtual {v0}, Lcn/hutool/core/text/AntPathMatcher$AntPatternComparator$PatternInfo;->isLeastSpecific()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcn/hutool/core/text/AntPathMatcher$AntPatternComparator$PatternInfo;->isLeastSpecific()Z

    move-result v2

    if-eqz v2, :cond_0

    return v3

    .line 784
    :cond_0
    invoke-virtual {v0}, Lcn/hutool/core/text/AntPathMatcher$AntPatternComparator$PatternInfo;->isLeastSpecific()Z

    move-result v2

    const/4 v4, 0x1

    if-eqz v2, :cond_1

    return v4

    .line 786
    :cond_1
    invoke-virtual {v1}, Lcn/hutool/core/text/AntPathMatcher$AntPatternComparator$PatternInfo;->isLeastSpecific()Z

    move-result v2

    const/4 v5, -0x1

    if-eqz v2, :cond_2

    return v5

    .line 790
    :cond_2
    iget-object v2, p0, Lcn/hutool/core/text/AntPathMatcher$AntPatternComparator;->path:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    .line 791
    iget-object v2, p0, Lcn/hutool/core/text/AntPathMatcher$AntPatternComparator;->path:Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p1, :cond_3

    if-eqz p2, :cond_3

    return v3

    :cond_3
    if-eqz p1, :cond_4

    return v5

    :cond_4
    if-eqz p2, :cond_5

    return v4

    .line 800
    :cond_5
    invoke-virtual {v0}, Lcn/hutool/core/text/AntPathMatcher$AntPatternComparator$PatternInfo;->isPrefixPattern()Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-virtual {v1}, Lcn/hutool/core/text/AntPathMatcher$AntPatternComparator$PatternInfo;->isPrefixPattern()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 801
    invoke-virtual {v1}, Lcn/hutool/core/text/AntPathMatcher$AntPatternComparator$PatternInfo;->getLength()I

    move-result p1

    invoke-virtual {v0}, Lcn/hutool/core/text/AntPathMatcher$AntPatternComparator$PatternInfo;->getLength()I

    move-result p2

    :goto_0
    sub-int/2addr p1, p2

    return p1

    .line 802
    :cond_6
    invoke-virtual {v0}, Lcn/hutool/core/text/AntPathMatcher$AntPatternComparator$PatternInfo;->isPrefixPattern()Z

    move-result p1

    if-eqz p1, :cond_7

    invoke-virtual {v1}, Lcn/hutool/core/text/AntPathMatcher$AntPatternComparator$PatternInfo;->getDoubleWildcards()I

    move-result p1

    if-nez p1, :cond_7

    return v4

    .line 804
    :cond_7
    invoke-virtual {v1}, Lcn/hutool/core/text/AntPathMatcher$AntPatternComparator$PatternInfo;->isPrefixPattern()Z

    move-result p1

    if-eqz p1, :cond_8

    invoke-virtual {v0}, Lcn/hutool/core/text/AntPathMatcher$AntPatternComparator$PatternInfo;->getDoubleWildcards()I

    move-result p1

    if-nez p1, :cond_8

    return v5

    .line 808
    :cond_8
    invoke-virtual {v0}, Lcn/hutool/core/text/AntPathMatcher$AntPatternComparator$PatternInfo;->getTotalCount()I

    move-result p1

    invoke-virtual {v1}, Lcn/hutool/core/text/AntPathMatcher$AntPatternComparator$PatternInfo;->getTotalCount()I

    move-result p2

    if-eq p1, p2, :cond_9

    .line 809
    invoke-virtual {v0}, Lcn/hutool/core/text/AntPathMatcher$AntPatternComparator$PatternInfo;->getTotalCount()I

    move-result p1

    invoke-virtual {v1}, Lcn/hutool/core/text/AntPathMatcher$AntPatternComparator$PatternInfo;->getTotalCount()I

    move-result p2

    goto :goto_0

    .line 812
    :cond_9
    invoke-virtual {v0}, Lcn/hutool/core/text/AntPathMatcher$AntPatternComparator$PatternInfo;->getLength()I

    move-result p1

    invoke-virtual {v1}, Lcn/hutool/core/text/AntPathMatcher$AntPatternComparator$PatternInfo;->getLength()I

    move-result p2

    if-eq p1, p2, :cond_a

    .line 813
    invoke-virtual {v1}, Lcn/hutool/core/text/AntPathMatcher$AntPatternComparator$PatternInfo;->getLength()I

    move-result p1

    invoke-virtual {v0}, Lcn/hutool/core/text/AntPathMatcher$AntPatternComparator$PatternInfo;->getLength()I

    move-result p2

    goto :goto_0

    .line 816
    :cond_a
    invoke-virtual {v0}, Lcn/hutool/core/text/AntPathMatcher$AntPatternComparator$PatternInfo;->getSingleWildcards()I

    move-result p1

    invoke-virtual {v1}, Lcn/hutool/core/text/AntPathMatcher$AntPatternComparator$PatternInfo;->getSingleWildcards()I

    move-result p2

    if-ge p1, p2, :cond_b

    return v5

    .line 818
    :cond_b
    invoke-virtual {v1}, Lcn/hutool/core/text/AntPathMatcher$AntPatternComparator$PatternInfo;->getSingleWildcards()I

    move-result p1

    invoke-virtual {v0}, Lcn/hutool/core/text/AntPathMatcher$AntPatternComparator$PatternInfo;->getSingleWildcards()I

    move-result p2

    if-ge p1, p2, :cond_c

    return v4

    .line 822
    :cond_c
    invoke-virtual {v0}, Lcn/hutool/core/text/AntPathMatcher$AntPatternComparator$PatternInfo;->getUriVars()I

    move-result p1

    invoke-virtual {v1}, Lcn/hutool/core/text/AntPathMatcher$AntPatternComparator$PatternInfo;->getUriVars()I

    move-result p2

    if-ge p1, p2, :cond_d

    return v5

    .line 824
    :cond_d
    invoke-virtual {v1}, Lcn/hutool/core/text/AntPathMatcher$AntPatternComparator$PatternInfo;->getUriVars()I

    move-result p1

    invoke-virtual {v0}, Lcn/hutool/core/text/AntPathMatcher$AntPatternComparator$PatternInfo;->getUriVars()I

    move-result p2

    if-ge p1, p2, :cond_e

    return v4

    :cond_e
    return v3
.end method
