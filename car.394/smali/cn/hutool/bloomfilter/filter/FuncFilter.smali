.class public Lcn/hutool/bloomfilter/filter/FuncFilter;
.super Lcn/hutool/bloomfilter/filter/AbstractFilter;
.source "FuncFilter.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final hashFunc:Ljava/util/function/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Function<",
            "Ljava/lang/String;",
            "Ljava/lang/Number;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(JILjava/util/function/Function;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JI",
            "Ljava/util/function/Function<",
            "Ljava/lang/String;",
            "Ljava/lang/Number;",
            ">;)V"
        }
    .end annotation

    .line 34
    invoke-direct {p0, p1, p2, p3}, Lcn/hutool/bloomfilter/filter/AbstractFilter;-><init>(JI)V

    .line 35
    iput-object p4, p0, Lcn/hutool/bloomfilter/filter/FuncFilter;->hashFunc:Ljava/util/function/Function;

    return-void
.end method

.method public constructor <init>(JLjava/util/function/Function;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/function/Function<",
            "Ljava/lang/String;",
            "Ljava/lang/Number;",
            ">;)V"
        }
    .end annotation

    .line 25
    sget v0, Lcn/hutool/bloomfilter/filter/FuncFilter;->DEFAULT_MACHINE_NUM:I

    invoke-direct {p0, p1, p2, v0, p3}, Lcn/hutool/bloomfilter/filter/FuncFilter;-><init>(JILjava/util/function/Function;)V

    return-void
.end method


# virtual methods
.method public hash(Ljava/lang/String;)J
    .locals 4

    .line 40
    iget-object v0, p0, Lcn/hutool/bloomfilter/filter/FuncFilter;->hashFunc:Ljava/util/function/Function;

    invoke-interface {v0, p1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    iget-wide v2, p0, Lcn/hutool/bloomfilter/filter/FuncFilter;->size:J

    rem-long/2addr v0, v2

    return-wide v0
.end method
