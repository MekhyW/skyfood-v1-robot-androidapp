.class public Lcn/hutool/cron/pattern/matcher/YearValueMatcher;
.super Ljava/lang/Object;
.source "YearValueMatcher.java"

# interfaces
.implements Lcn/hutool/cron/pattern/matcher/PartMatcher;


# instance fields
.field private final valueList:Ljava/util/LinkedHashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0, p1}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcn/hutool/cron/pattern/matcher/YearValueMatcher;->valueList:Ljava/util/LinkedHashSet;

    return-void
.end method


# virtual methods
.method public match(Ljava/lang/Integer;)Z
    .locals 1

    .line 22
    iget-object v0, p0, Lcn/hutool/cron/pattern/matcher/YearValueMatcher;->valueList:Ljava/util/LinkedHashSet;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashSet;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic match(Ljava/lang/Object;)Z
    .locals 0

    .line 12
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcn/hutool/cron/pattern/matcher/YearValueMatcher;->match(Ljava/lang/Integer;)Z

    move-result p1

    return p1
.end method

.method public nextAfter(I)I
    .locals 3

    .line 27
    iget-object v0, p0, Lcn/hutool/cron/pattern/matcher/YearValueMatcher;->valueList:Ljava/util/LinkedHashSet;

    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 28
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-lt v2, p1, :cond_0

    .line 29
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    :cond_1
    const/4 p1, -0x1

    return p1
.end method
