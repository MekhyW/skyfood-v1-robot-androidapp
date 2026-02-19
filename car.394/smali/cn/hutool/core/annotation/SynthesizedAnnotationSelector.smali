.class public interface abstract Lcn/hutool/core/annotation/SynthesizedAnnotationSelector;
.super Ljava/lang/Object;
.source "SynthesizedAnnotationSelector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/hutool/core/annotation/SynthesizedAnnotationSelector$FarthestAndNewestPrioritySelector;,
        Lcn/hutool/core/annotation/SynthesizedAnnotationSelector$FarthestAndOldestPrioritySelector;,
        Lcn/hutool/core/annotation/SynthesizedAnnotationSelector$NearestAndNewestPrioritySelector;,
        Lcn/hutool/core/annotation/SynthesizedAnnotationSelector$NearestAndOldestPrioritySelector;
    }
.end annotation

.annotation runtime Ljava/lang/FunctionalInterface;
.end annotation


# static fields
.field public static final FARTHEST_AND_NEWEST_PRIORITY:Lcn/hutool/core/annotation/SynthesizedAnnotationSelector;

.field public static final FARTHEST_AND_OLDEST_PRIORITY:Lcn/hutool/core/annotation/SynthesizedAnnotationSelector;

.field public static final NEAREST_AND_NEWEST_PRIORITY:Lcn/hutool/core/annotation/SynthesizedAnnotationSelector;

.field public static final NEAREST_AND_OLDEST_PRIORITY:Lcn/hutool/core/annotation/SynthesizedAnnotationSelector;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 15
    new-instance v0, Lcn/hutool/core/annotation/SynthesizedAnnotationSelector$NearestAndOldestPrioritySelector;

    invoke-direct {v0}, Lcn/hutool/core/annotation/SynthesizedAnnotationSelector$NearestAndOldestPrioritySelector;-><init>()V

    sput-object v0, Lcn/hutool/core/annotation/SynthesizedAnnotationSelector;->NEAREST_AND_OLDEST_PRIORITY:Lcn/hutool/core/annotation/SynthesizedAnnotationSelector;

    .line 20
    new-instance v0, Lcn/hutool/core/annotation/SynthesizedAnnotationSelector$NearestAndNewestPrioritySelector;

    invoke-direct {v0}, Lcn/hutool/core/annotation/SynthesizedAnnotationSelector$NearestAndNewestPrioritySelector;-><init>()V

    sput-object v0, Lcn/hutool/core/annotation/SynthesizedAnnotationSelector;->NEAREST_AND_NEWEST_PRIORITY:Lcn/hutool/core/annotation/SynthesizedAnnotationSelector;

    .line 25
    new-instance v0, Lcn/hutool/core/annotation/SynthesizedAnnotationSelector$FarthestAndOldestPrioritySelector;

    invoke-direct {v0}, Lcn/hutool/core/annotation/SynthesizedAnnotationSelector$FarthestAndOldestPrioritySelector;-><init>()V

    sput-object v0, Lcn/hutool/core/annotation/SynthesizedAnnotationSelector;->FARTHEST_AND_OLDEST_PRIORITY:Lcn/hutool/core/annotation/SynthesizedAnnotationSelector;

    .line 30
    new-instance v0, Lcn/hutool/core/annotation/SynthesizedAnnotationSelector$FarthestAndNewestPrioritySelector;

    invoke-direct {v0}, Lcn/hutool/core/annotation/SynthesizedAnnotationSelector$FarthestAndNewestPrioritySelector;-><init>()V

    sput-object v0, Lcn/hutool/core/annotation/SynthesizedAnnotationSelector;->FARTHEST_AND_NEWEST_PRIORITY:Lcn/hutool/core/annotation/SynthesizedAnnotationSelector;

    return-void
.end method


# virtual methods
.method public abstract choose(Lcn/hutool/core/annotation/SynthesizedAnnotation;Lcn/hutool/core/annotation/SynthesizedAnnotation;)Lcn/hutool/core/annotation/SynthesizedAnnotation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcn/hutool/core/annotation/SynthesizedAnnotation;",
            ">(TT;TT;)TT;"
        }
    .end annotation
.end method
