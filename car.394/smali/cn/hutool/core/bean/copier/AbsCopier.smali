.class public abstract Lcn/hutool/core/bean/copier/AbsCopier;
.super Ljava/lang/Object;
.source "AbsCopier.java"

# interfaces
.implements Lcn/hutool/core/lang/copier/Copier;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S:",
        "Ljava/lang/Object;",
        "T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcn/hutool/core/lang/copier/Copier<",
        "TT;>;"
    }
.end annotation


# instance fields
.field protected final copyOptions:Lcn/hutool/core/bean/copier/CopyOptions;

.field protected final source:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TS;"
        }
    .end annotation
.end field

.field protected final target:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Lcn/hutool/core/bean/copier/CopyOptions;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;TT;",
            "Lcn/hutool/core/bean/copier/CopyOptions;",
            ")V"
        }
    .end annotation

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcn/hutool/core/bean/copier/AbsCopier;->source:Ljava/lang/Object;

    .line 25
    iput-object p2, p0, Lcn/hutool/core/bean/copier/AbsCopier;->target:Ljava/lang/Object;

    .line 26
    new-instance p1, Lcn/hutool/core/bean/BeanUtil$$ExternalSyntheticLambda8;

    invoke-direct {p1}, Lcn/hutool/core/bean/BeanUtil$$ExternalSyntheticLambda8;-><init>()V

    invoke-static {p3, p1}, Lcn/hutool/core/util/ObjectUtil;->defaultIfNull(Ljava/lang/Object;Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/hutool/core/bean/copier/CopyOptions;

    iput-object p1, p0, Lcn/hutool/core/bean/copier/AbsCopier;->copyOptions:Lcn/hutool/core/bean/copier/CopyOptions;

    return-void
.end method
