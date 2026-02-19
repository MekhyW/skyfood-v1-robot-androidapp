.class public Lcn/hutool/core/annotation/Hierarchical$Selector$FarthestAndOldestPrioritySelector;
.super Ljava/lang/Object;
.source "Hierarchical.java"

# interfaces
.implements Lcn/hutool/core/annotation/Hierarchical$Selector;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/hutool/core/annotation/Hierarchical$Selector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FarthestAndOldestPrioritySelector"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public choose(Lcn/hutool/core/annotation/Hierarchical;Lcn/hutool/core/annotation/Hierarchical;)Lcn/hutool/core/annotation/Hierarchical;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcn/hutool/core/annotation/Hierarchical;",
            ">(TT;TT;)TT;"
        }
    .end annotation

    .line 139
    invoke-interface {p2}, Lcn/hutool/core/annotation/Hierarchical;->getVerticalDistance()I

    move-result v0

    invoke-interface {p1}, Lcn/hutool/core/annotation/Hierarchical;->getVerticalDistance()I

    move-result v1

    if-le v0, v1, :cond_0

    move-object p1, p2

    :cond_0
    return-object p1
.end method
