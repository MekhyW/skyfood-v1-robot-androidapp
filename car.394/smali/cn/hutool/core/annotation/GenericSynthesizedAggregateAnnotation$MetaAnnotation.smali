.class public Lcn/hutool/core/annotation/GenericSynthesizedAggregateAnnotation$MetaAnnotation;
.super Lcn/hutool/core/annotation/GenericSynthesizedAnnotation;
.source "GenericSynthesizedAggregateAnnotation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/hutool/core/annotation/GenericSynthesizedAggregateAnnotation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MetaAnnotation"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/hutool/core/annotation/GenericSynthesizedAnnotation<",
        "Ljava/lang/annotation/Annotation;",
        "Ljava/lang/annotation/Annotation;",
        ">;"
    }
.end annotation


# direct methods
.method protected constructor <init>(Ljava/lang/annotation/Annotation;Ljava/lang/annotation/Annotation;II)V
    .locals 0

    .line 313
    invoke-direct {p0, p1, p2, p3, p4}, Lcn/hutool/core/annotation/GenericSynthesizedAnnotation;-><init>(Ljava/lang/Object;Ljava/lang/annotation/Annotation;II)V

    return-void
.end method
