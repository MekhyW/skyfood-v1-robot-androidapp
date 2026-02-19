.class public abstract Lcn/hutool/core/io/copy/IoCopier;
.super Ljava/lang/Object;
.source "IoCopier.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S:",
        "Ljava/lang/Object;",
        "T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field protected final bufferSize:I

.field protected final count:J

.field protected flushEveryBuffer:Z

.field protected progress:Lcn/hutool/core/io/StreamProgress;


# direct methods
.method public constructor <init>(IJLcn/hutool/core/io/StreamProgress;)V
    .locals 2

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-lez p1, :cond_0

    goto :goto_0

    :cond_0
    const/16 p1, 0x2000

    .line 41
    :goto_0
    iput p1, p0, Lcn/hutool/core/io/copy/IoCopier;->bufferSize:I

    const-wide/16 v0, 0x0

    cmp-long p1, p2, v0

    if-gtz p1, :cond_1

    const-wide p2, 0x7fffffffffffffffL

    .line 42
    :cond_1
    iput-wide p2, p0, Lcn/hutool/core/io/copy/IoCopier;->count:J

    .line 43
    iput-object p4, p0, Lcn/hutool/core/io/copy/IoCopier;->progress:Lcn/hutool/core/io/StreamProgress;

    return-void
.end method


# virtual methods
.method protected bufferSize(J)I
    .locals 2

    .line 62
    iget v0, p0, Lcn/hutool/core/io/copy/IoCopier;->bufferSize:I

    int-to-long v0, v0

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p1

    long-to-int p1, p1

    return p1
.end method

.method public abstract copy(Ljava/lang/Object;Ljava/lang/Object;)J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;TT;)J"
        }
    .end annotation
.end method

.method public setFlushEveryBuffer(Z)Lcn/hutool/core/io/copy/IoCopier;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcn/hutool/core/io/copy/IoCopier<",
            "TS;TT;>;"
        }
    .end annotation

    .line 73
    iput-boolean p1, p0, Lcn/hutool/core/io/copy/IoCopier;->flushEveryBuffer:Z

    return-object p0
.end method
