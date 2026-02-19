.class public Lcn/hutool/core/text/finder/PatternFinder;
.super Lcn/hutool/core/text/finder/TextFinder;
.source "PatternFinder.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private matcher:Ljava/util/regex/Matcher;

.field private final pattern:Ljava/util/regex/Pattern;


# direct methods
.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 0

    if-eqz p2, :cond_0

    const/4 p2, 0x2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 26
    :goto_0
    invoke-static {p1, p2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object p1

    invoke-direct {p0, p1}, Lcn/hutool/core/text/finder/PatternFinder;-><init>(Ljava/util/regex/Pattern;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/regex/Pattern;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Lcn/hutool/core/text/finder/TextFinder;-><init>()V

    .line 35
    iput-object p1, p0, Lcn/hutool/core/text/finder/PatternFinder;->pattern:Ljava/util/regex/Pattern;

    return-void
.end method


# virtual methods
.method public end(I)I
    .locals 2

    .line 62
    iget-object p1, p0, Lcn/hutool/core/text/finder/PatternFinder;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->end()I

    move-result p1

    .line 64
    iget v0, p0, Lcn/hutool/core/text/finder/PatternFinder;->endIndex:I

    if-gez v0, :cond_0

    .line 65
    iget-object v0, p0, Lcn/hutool/core/text/finder/PatternFinder;->text:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    goto :goto_0

    .line 67
    :cond_0
    iget v0, p0, Lcn/hutool/core/text/finder/PatternFinder;->endIndex:I

    iget-object v1, p0, Lcn/hutool/core/text/finder/PatternFinder;->text:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    :goto_0
    if-gt p1, v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 p1, -0x1

    :goto_1
    return p1
.end method

.method public bridge synthetic reset()Lcn/hutool/core/text/finder/Finder;
    .locals 1

    .line 13
    invoke-virtual {p0}, Lcn/hutool/core/text/finder/PatternFinder;->reset()Lcn/hutool/core/text/finder/PatternFinder;

    move-result-object v0

    return-object v0
.end method

.method public reset()Lcn/hutool/core/text/finder/PatternFinder;
    .locals 1

    .line 74
    iget-object v0, p0, Lcn/hutool/core/text/finder/PatternFinder;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->reset()Ljava/util/regex/Matcher;

    return-object p0
.end method

.method public setNegative(Z)Lcn/hutool/core/text/finder/TextFinder;
    .locals 1

    .line 46
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Negative is invalid for Pattern!"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setText(Ljava/lang/CharSequence;)Lcn/hutool/core/text/finder/TextFinder;
    .locals 1

    .line 40
    iget-object v0, p0, Lcn/hutool/core/text/finder/PatternFinder;->pattern:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    iput-object v0, p0, Lcn/hutool/core/text/finder/PatternFinder;->matcher:Ljava/util/regex/Matcher;

    .line 41
    invoke-super {p0, p1}, Lcn/hutool/core/text/finder/TextFinder;->setText(Ljava/lang/CharSequence;)Lcn/hutool/core/text/finder/TextFinder;

    move-result-object p1

    return-object p1
.end method

.method public start(I)I
    .locals 1

    .line 51
    iget-object v0, p0, Lcn/hutool/core/text/finder/PatternFinder;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v0, p1}, Ljava/util/regex/Matcher;->find(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 53
    iget-object p1, p0, Lcn/hutool/core/text/finder/PatternFinder;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->end()I

    move-result p1

    invoke-virtual {p0}, Lcn/hutool/core/text/finder/PatternFinder;->getValidEndIndex()I

    move-result v0

    if-gt p1, v0, :cond_0

    .line 54
    iget-object p1, p0, Lcn/hutool/core/text/finder/PatternFinder;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->start()I

    move-result p1

    return p1

    :cond_0
    const/4 p1, -0x1

    return p1
.end method
