.class public Lcn/hutool/bloomfilter/filter/HfFilter;
.super Lcn/hutool/bloomfilter/filter/FuncFilter;
.source "HfFilter.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>(J)V
    .locals 1

    .line 10
    sget v0, Lcn/hutool/bloomfilter/filter/HfFilter;->DEFAULT_MACHINE_NUM:I

    invoke-direct {p0, p1, p2, v0}, Lcn/hutool/bloomfilter/filter/HfFilter;-><init>(JI)V

    return-void
.end method

.method public constructor <init>(JI)V
    .locals 1

    .line 14
    new-instance v0, Lcn/hutool/bloomfilter/filter/HfFilter$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcn/hutool/bloomfilter/filter/HfFilter$$ExternalSyntheticLambda0;-><init>()V

    invoke-direct {p0, p1, p2, p3, v0}, Lcn/hutool/bloomfilter/filter/FuncFilter;-><init>(JILjava/util/function/Function;)V

    return-void
.end method
