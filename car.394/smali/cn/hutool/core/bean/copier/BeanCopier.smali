.class public Lcn/hutool/core/bean/copier/BeanCopier;
.super Ljava/lang/Object;
.source "BeanCopier.java"

# interfaces
.implements Lcn/hutool/core/lang/copier/Copier;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcn/hutool/core/lang/copier/Copier<",
        "TT;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final copier:Lcn/hutool/core/lang/copier/Copier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcn/hutool/core/lang/copier/Copier<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;Lcn/hutool/core/bean/copier/CopyOptions;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "TT;",
            "Ljava/lang/reflect/Type;",
            "Lcn/hutool/core/bean/copier/CopyOptions;",
            ")V"
        }
    .end annotation

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "Source bean must be not null!"

    .line 66
    invoke-static {p1, v2, v1}, Lcn/hutool/core/lang/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "Target bean must be not null!"

    new-array v0, v0, [Ljava/lang/Object;

    .line 67
    invoke-static {p2, v1, v0}, Lcn/hutool/core/lang/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    instance-of v0, p1, Ljava/util/Map;

    if-eqz v0, :cond_1

    .line 70
    instance-of v0, p2, Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 72
    new-instance v0, Lcn/hutool/core/bean/copier/MapToMapCopier;

    check-cast p1, Ljava/util/Map;

    check-cast p2, Ljava/util/Map;

    invoke-direct {v0, p1, p2, p3, p4}, Lcn/hutool/core/bean/copier/MapToMapCopier;-><init>(Ljava/util/Map;Ljava/util/Map;Ljava/lang/reflect/Type;Lcn/hutool/core/bean/copier/CopyOptions;)V

    goto :goto_0

    .line 74
    :cond_0
    new-instance v0, Lcn/hutool/core/bean/copier/MapToBeanCopier;

    check-cast p1, Ljava/util/Map;

    invoke-direct {v0, p1, p2, p3, p4}, Lcn/hutool/core/bean/copier/MapToBeanCopier;-><init>(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/reflect/Type;Lcn/hutool/core/bean/copier/CopyOptions;)V

    goto :goto_0

    .line 76
    :cond_1
    instance-of v0, p1, Lcn/hutool/core/bean/copier/ValueProvider;

    if-eqz v0, :cond_2

    .line 78
    new-instance v0, Lcn/hutool/core/bean/copier/ValueProviderToBeanCopier;

    check-cast p1, Lcn/hutool/core/bean/copier/ValueProvider;

    invoke-direct {v0, p1, p2, p3, p4}, Lcn/hutool/core/bean/copier/ValueProviderToBeanCopier;-><init>(Lcn/hutool/core/bean/copier/ValueProvider;Ljava/lang/Object;Ljava/lang/reflect/Type;Lcn/hutool/core/bean/copier/CopyOptions;)V

    goto :goto_0

    .line 80
    :cond_2
    instance-of v0, p2, Ljava/util/Map;

    if-eqz v0, :cond_3

    .line 82
    new-instance v0, Lcn/hutool/core/bean/copier/BeanToMapCopier;

    check-cast p2, Ljava/util/Map;

    invoke-direct {v0, p1, p2, p3, p4}, Lcn/hutool/core/bean/copier/BeanToMapCopier;-><init>(Ljava/lang/Object;Ljava/util/Map;Ljava/lang/reflect/Type;Lcn/hutool/core/bean/copier/CopyOptions;)V

    goto :goto_0

    .line 84
    :cond_3
    new-instance v0, Lcn/hutool/core/bean/copier/BeanToBeanCopier;

    invoke-direct {v0, p1, p2, p3, p4}, Lcn/hutool/core/bean/copier/BeanToBeanCopier;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;Lcn/hutool/core/bean/copier/CopyOptions;)V

    .line 87
    :goto_0
    iput-object v0, p0, Lcn/hutool/core/bean/copier/BeanCopier;->copier:Lcn/hutool/core/lang/copier/Copier;

    return-void
.end method

.method public static create(Ljava/lang/Object;Ljava/lang/Object;Lcn/hutool/core/bean/copier/CopyOptions;)Lcn/hutool/core/bean/copier/BeanCopier;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "TT;",
            "Lcn/hutool/core/bean/copier/CopyOptions;",
            ")",
            "Lcn/hutool/core/bean/copier/BeanCopier<",
            "TT;>;"
        }
    .end annotation

    .line 40
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {p0, p1, v0, p2}, Lcn/hutool/core/bean/copier/BeanCopier;->create(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;Lcn/hutool/core/bean/copier/CopyOptions;)Lcn/hutool/core/bean/copier/BeanCopier;

    move-result-object p0

    return-object p0
.end method

.method public static create(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;Lcn/hutool/core/bean/copier/CopyOptions;)Lcn/hutool/core/bean/copier/BeanCopier;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "TT;",
            "Ljava/lang/reflect/Type;",
            "Lcn/hutool/core/bean/copier/CopyOptions;",
            ")",
            "Lcn/hutool/core/bean/copier/BeanCopier<",
            "TT;>;"
        }
    .end annotation

    .line 54
    new-instance v0, Lcn/hutool/core/bean/copier/BeanCopier;

    invoke-direct {v0, p0, p1, p2, p3}, Lcn/hutool/core/bean/copier/BeanCopier;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;Lcn/hutool/core/bean/copier/CopyOptions;)V

    return-object v0
.end method


# virtual methods
.method public copy()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 92
    iget-object v0, p0, Lcn/hutool/core/bean/copier/BeanCopier;->copier:Lcn/hutool/core/lang/copier/Copier;

    invoke-interface {v0}, Lcn/hutool/core/lang/copier/Copier;->copy()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
