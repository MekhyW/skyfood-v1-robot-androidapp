.class public abstract Lcn/hutool/core/collection/ComputeIter;
.super Ljava/lang/Object;
.source "ComputeIter.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private finished:Z

.field private next:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract computeNext()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public finish()V
    .locals 1

    const/4 v0, 0x1

    .line 70
    iput-boolean v0, p0, Lcn/hutool/core/collection/ComputeIter;->finished:Z

    const/4 v0, 0x0

    .line 71
    iput-object v0, p0, Lcn/hutool/core/collection/ComputeIter;->next:Ljava/lang/Object;

    return-void
.end method

.method public hasNext()Z
    .locals 3

    .line 34
    iget-object v0, p0, Lcn/hutool/core/collection/ComputeIter;->next:Ljava/lang/Object;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 37
    :cond_0
    iget-boolean v0, p0, Lcn/hutool/core/collection/ComputeIter;->finished:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    return v2

    .line 42
    :cond_1
    invoke-virtual {p0}, Lcn/hutool/core/collection/ComputeIter;->computeNext()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2

    .line 45
    iput-boolean v1, p0, Lcn/hutool/core/collection/ComputeIter;->finished:Z

    return v2

    .line 48
    :cond_2
    iput-object v0, p0, Lcn/hutool/core/collection/ComputeIter;->next:Ljava/lang/Object;

    return v1
.end method

.method public next()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 56
    invoke-virtual {p0}, Lcn/hutool/core/collection/ComputeIter;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 60
    iget-object v0, p0, Lcn/hutool/core/collection/ComputeIter;->next:Ljava/lang/Object;

    const/4 v1, 0x0

    .line 62
    iput-object v1, p0, Lcn/hutool/core/collection/ComputeIter;->next:Ljava/lang/Object;

    return-object v0

    .line 57
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "No more lines"

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
