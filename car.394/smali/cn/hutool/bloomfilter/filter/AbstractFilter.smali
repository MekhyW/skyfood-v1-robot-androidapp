.class public abstract Lcn/hutool/bloomfilter/filter/AbstractFilter;
.super Ljava/lang/Object;
.source "AbstractFilter.java"

# interfaces
.implements Lcn/hutool/bloomfilter/BloomFilter;


# static fields
.field protected static DEFAULT_MACHINE_NUM:I = 0x20

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private bm:Lcn/hutool/bloomfilter/bitMap/BitMap;

.field protected size:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(J)V
    .locals 1

    .line 39
    sget v0, Lcn/hutool/bloomfilter/filter/AbstractFilter;->DEFAULT_MACHINE_NUM:I

    invoke-direct {p0, p1, p2, v0}, Lcn/hutool/bloomfilter/filter/AbstractFilter;-><init>(JI)V

    return-void
.end method

.method public constructor <init>(JI)V
    .locals 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 19
    iput-object v0, p0, Lcn/hutool/bloomfilter/filter/AbstractFilter;->bm:Lcn/hutool/bloomfilter/bitMap/BitMap;

    .line 30
    invoke-virtual {p0, p1, p2, p3}, Lcn/hutool/bloomfilter/filter/AbstractFilter;->init(JI)V

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/String;)Z
    .locals 2

    .line 69
    invoke-virtual {p0, p1}, Lcn/hutool/bloomfilter/filter/AbstractFilter;->hash(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    .line 70
    iget-object p1, p0, Lcn/hutool/bloomfilter/filter/AbstractFilter;->bm:Lcn/hutool/bloomfilter/bitMap/BitMap;

    invoke-interface {p1, v0, v1}, Lcn/hutool/bloomfilter/bitMap/BitMap;->contains(J)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 74
    :cond_0
    iget-object p1, p0, Lcn/hutool/bloomfilter/filter/AbstractFilter;->bm:Lcn/hutool/bloomfilter/bitMap/BitMap;

    invoke-interface {p1, v0, v1}, Lcn/hutool/bloomfilter/bitMap/BitMap;->add(J)V

    const/4 p1, 0x1

    return p1
.end method

.method public contains(Ljava/lang/String;)Z
    .locals 3

    .line 64
    iget-object v0, p0, Lcn/hutool/bloomfilter/filter/AbstractFilter;->bm:Lcn/hutool/bloomfilter/bitMap/BitMap;

    invoke-virtual {p0, p1}, Lcn/hutool/bloomfilter/filter/AbstractFilter;->hash(Ljava/lang/String;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Math;->abs(J)J

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Lcn/hutool/bloomfilter/bitMap/BitMap;->contains(J)Z

    move-result p1

    return p1
.end method

.method public abstract hash(Ljava/lang/String;)J
.end method

.method public init(JI)V
    .locals 2

    .line 49
    iput-wide p1, p0, Lcn/hutool/bloomfilter/filter/AbstractFilter;->size:J

    const/16 p1, 0x20

    if-eq p3, p1, :cond_1

    const/16 p1, 0x40

    if-ne p3, p1, :cond_0

    .line 55
    new-instance p1, Lcn/hutool/bloomfilter/bitMap/LongMap;

    iget-wide v0, p0, Lcn/hutool/bloomfilter/filter/AbstractFilter;->size:J

    int-to-long p2, p3

    div-long/2addr v0, p2

    long-to-int p2, v0

    invoke-direct {p1, p2}, Lcn/hutool/bloomfilter/bitMap/LongMap;-><init>(I)V

    iput-object p1, p0, Lcn/hutool/bloomfilter/filter/AbstractFilter;->bm:Lcn/hutool/bloomfilter/bitMap/BitMap;

    goto :goto_0

    .line 58
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Error Machine number!"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 52
    :cond_1
    new-instance p1, Lcn/hutool/bloomfilter/bitMap/IntMap;

    iget-wide v0, p0, Lcn/hutool/bloomfilter/filter/AbstractFilter;->size:J

    int-to-long p2, p3

    div-long/2addr v0, p2

    long-to-int p2, v0

    invoke-direct {p1, p2}, Lcn/hutool/bloomfilter/bitMap/IntMap;-><init>(I)V

    iput-object p1, p0, Lcn/hutool/bloomfilter/filter/AbstractFilter;->bm:Lcn/hutool/bloomfilter/bitMap/BitMap;

    :goto_0
    return-void
.end method
