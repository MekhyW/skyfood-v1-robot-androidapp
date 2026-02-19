.class public Lcn/hutool/bloomfilter/filter/ELFFilter;
.super Lcn/hutool/bloomfilter/filter/FuncFilter;
.source "ELFFilter.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>(J)V
    .locals 1

    .line 9
    sget v0, Lcn/hutool/bloomfilter/filter/ELFFilter;->DEFAULT_MACHINE_NUM:I

    invoke-direct {p0, p1, p2, v0}, Lcn/hutool/bloomfilter/filter/ELFFilter;-><init>(JI)V

    return-void
.end method

.method public constructor <init>(JI)V
    .locals 1

    .line 13
    new-instance v0, Lcn/hutool/bloomfilter/filter/ELFFilter$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcn/hutool/bloomfilter/filter/ELFFilter$$ExternalSyntheticLambda0;-><init>()V

    invoke-direct {p0, p1, p2, p3, v0}, Lcn/hutool/bloomfilter/filter/FuncFilter;-><init>(JILjava/util/function/Function;)V

    return-void
.end method
