.class Lcn/hutool/core/text/AntPathMatcher$PathSeparatorPatternCache;
.super Ljava/lang/Object;
.source "AntPathMatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/hutool/core/text/AntPathMatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PathSeparatorPatternCache"
.end annotation


# instance fields
.field private final endsOnDoubleWildCard:Ljava/lang/String;

.field private final endsOnWildCard:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 931
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 932
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "*"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/hutool/core/text/AntPathMatcher$PathSeparatorPatternCache;->endsOnWildCard:Ljava/lang/String;

    .line 933
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "**"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcn/hutool/core/text/AntPathMatcher$PathSeparatorPatternCache;->endsOnDoubleWildCard:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getEndsOnDoubleWildCard()Ljava/lang/String;
    .locals 1

    .line 941
    iget-object v0, p0, Lcn/hutool/core/text/AntPathMatcher$PathSeparatorPatternCache;->endsOnDoubleWildCard:Ljava/lang/String;

    return-object v0
.end method

.method public getEndsOnWildCard()Ljava/lang/String;
    .locals 1

    .line 937
    iget-object v0, p0, Lcn/hutool/core/text/AntPathMatcher$PathSeparatorPatternCache;->endsOnWildCard:Ljava/lang/String;

    return-object v0
.end method
