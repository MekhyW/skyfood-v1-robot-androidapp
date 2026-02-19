.class public interface abstract Lcn/hutool/core/annotation/Hierarchical$Selector;
.super Ljava/lang/Object;
.source "Hierarchical.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/hutool/core/annotation/Hierarchical;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Selector"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/hutool/core/annotation/Hierarchical$Selector$FarthestAndNewestPrioritySelector;,
        Lcn/hutool/core/annotation/Hierarchical$Selector$FarthestAndOldestPrioritySelector;,
        Lcn/hutool/core/annotation/Hierarchical$Selector$NearestAndNewestPrioritySelector;,
        Lcn/hutool/core/annotation/Hierarchical$Selector$NearestAndOldestPrioritySelector;
    }
.end annotation

.annotation runtime Ljava/lang/FunctionalInterface;
.end annotation


# static fields
.field public static final FARTHEST_AND_NEWEST_PRIORITY:Lcn/hutool/core/annotation/Hierarchical$Selector;

.field public static final FARTHEST_AND_OLDEST_PRIORITY:Lcn/hutool/core/annotation/Hierarchical$Selector;

.field public static final NEAREST_AND_NEWEST_PRIORITY:Lcn/hutool/core/annotation/Hierarchical$Selector;

.field public static final NEAREST_AND_OLDEST_PRIORITY:Lcn/hutool/core/annotation/Hierarchical$Selector;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 86
    new-instance v0, Lcn/hutool/core/annotation/Hierarchical$Selector$NearestAndOldestPrioritySelector;

    invoke-direct {v0}, Lcn/hutool/core/annotation/Hierarchical$Selector$NearestAndOldestPrioritySelector;-><init>()V

    sput-object v0, Lcn/hutool/core/annotation/Hierarchical$Selector;->NEAREST_AND_OLDEST_PRIORITY:Lcn/hutool/core/annotation/Hierarchical$Selector;

    .line 91
    new-instance v0, Lcn/hutool/core/annotation/Hierarchical$Selector$NearestAndNewestPrioritySelector;

    invoke-direct {v0}, Lcn/hutool/core/annotation/Hierarchical$Selector$NearestAndNewestPrioritySelector;-><init>()V

    sput-object v0, Lcn/hutool/core/annotation/Hierarchical$Selector;->NEAREST_AND_NEWEST_PRIORITY:Lcn/hutool/core/annotation/Hierarchical$Selector;

    .line 96
    new-instance v0, Lcn/hutool/core/annotation/Hierarchical$Selector$FarthestAndOldestPrioritySelector;

    invoke-direct {v0}, Lcn/hutool/core/annotation/Hierarchical$Selector$FarthestAndOldestPrioritySelector;-><init>()V

    sput-object v0, Lcn/hutool/core/annotation/Hierarchical$Selector;->FARTHEST_AND_OLDEST_PRIORITY:Lcn/hutool/core/annotation/Hierarchical$Selector;

    .line 101
    new-instance v0, Lcn/hutool/core/annotation/Hierarchical$Selector$FarthestAndNewestPrioritySelector;

    invoke-direct {v0}, Lcn/hutool/core/annotation/Hierarchical$Selector$FarthestAndNewestPrioritySelector;-><init>()V

    sput-object v0, Lcn/hutool/core/annotation/Hierarchical$Selector;->FARTHEST_AND_NEWEST_PRIORITY:Lcn/hutool/core/annotation/Hierarchical$Selector;

    return-void
.end method


# virtual methods
.method public abstract choose(Lcn/hutool/core/annotation/Hierarchical;Lcn/hutool/core/annotation/Hierarchical;)Lcn/hutool/core/annotation/Hierarchical;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcn/hutool/core/annotation/Hierarchical;",
            ">(TT;TT;)TT;"
        }
    .end annotation
.end method
