.class public Lcn/hutool/bloomfilter/filter/DefaultFilter;
.super Lcn/hutool/bloomfilter/filter/FuncFilter;
.source "DefaultFilter.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>(J)V
    .locals 1

    .line 14
    sget v0, Lcn/hutool/bloomfilter/filter/DefaultFilter;->DEFAULT_MACHINE_NUM:I

    invoke-direct {p0, p1, p2, v0}, Lcn/hutool/bloomfilter/filter/DefaultFilter;-><init>(JI)V

    return-void
.end method

.method public constructor <init>(JI)V
    .locals 1

    .line 18
    new-instance v0, Lcn/hutool/bloomfilter/filter/DefaultFilter$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcn/hutool/bloomfilter/filter/DefaultFilter$$ExternalSyntheticLambda0;-><init>()V

    invoke-direct {p0, p1, p2, p3, v0}, Lcn/hutool/bloomfilter/filter/FuncFilter;-><init>(JILjava/util/function/Function;)V

    return-void
.end method
