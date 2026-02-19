.class public Lcn/hutool/core/annotation/scanner/EmptyAnnotationScanner;
.super Ljava/lang/Object;
.source "EmptyAnnotationScanner.java"

# interfaces
.implements Lcn/hutool/core/annotation/scanner/AnnotationScanner;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAnnotations(Ljava/lang/reflect/AnnotatedElement;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/AnnotatedElement;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/annotation/Annotation;",
            ">;"
        }
    .end annotation

    .line 24
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public scan(Ljava/util/function/BiConsumer;Ljava/lang/reflect/AnnotatedElement;Ljava/util/function/Predicate;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiConsumer<",
            "Ljava/lang/Integer;",
            "Ljava/lang/annotation/Annotation;",
            ">;",
            "Ljava/lang/reflect/AnnotatedElement;",
            "Ljava/util/function/Predicate<",
            "Ljava/lang/annotation/Annotation;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public support(Ljava/lang/reflect/AnnotatedElement;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method
