.class public interface abstract Lcn/hutool/core/annotation/Hierarchical;
.super Ljava/lang/Object;
.source "Hierarchical.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/hutool/core/annotation/Hierarchical$Selector;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcn/hutool/core/annotation/Hierarchical;",
        ">;"
    }
.end annotation


# static fields
.field public static final DEFAULT_HIERARCHICAL_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcn/hutool/core/annotation/Hierarchical;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 33
    new-instance v0, Lcn/hutool/core/annotation/Hierarchical$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcn/hutool/core/annotation/Hierarchical$$ExternalSyntheticLambda0;-><init>()V

    .line 34
    invoke-static {v0}, Ljava/util/Comparator;->comparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    move-result-object v0

    new-instance v1, Lcn/hutool/core/annotation/Hierarchical$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lcn/hutool/core/annotation/Hierarchical$$ExternalSyntheticLambda1;-><init>()V

    .line 35
    invoke-interface {v0, v1}, Ljava/util/Comparator;->thenComparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    move-result-object v0

    sput-object v0, Lcn/hutool/core/annotation/Hierarchical;->DEFAULT_HIERARCHICAL_COMPARATOR:Ljava/util/Comparator;

    return-void
.end method


# virtual methods
.method public compareTo(Lcn/hutool/core/annotation/Hierarchical;)I
    .locals 1

    .line 45
    sget-object v0, Lcn/hutool/core/annotation/Hierarchical;->DEFAULT_HIERARCHICAL_COMPARATOR:Ljava/util/Comparator;

    invoke-interface {v0, p0, p1}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 26
    check-cast p1, Lcn/hutool/core/annotation/Hierarchical;

    invoke-interface {p0, p1}, Lcn/hutool/core/annotation/Hierarchical;->compareTo(Lcn/hutool/core/annotation/Hierarchical;)I

    move-result p1

    return p1
.end method

.method public abstract getHorizontalDistance()I
.end method

.method public abstract getRoot()Ljava/lang/Object;
.end method

.method public abstract getVerticalDistance()I
.end method
