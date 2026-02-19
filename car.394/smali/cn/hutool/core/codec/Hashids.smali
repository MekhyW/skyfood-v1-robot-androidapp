.class public Lcn/hutool/core/codec/Hashids;
.super Ljava/lang/Object;
.source "Hashids.java"

# interfaces
.implements Lcn/hutool/core/codec/Encoder;
.implements Lcn/hutool/core/codec/Decoder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcn/hutool/core/codec/Encoder<",
        "[J",
        "Ljava/lang/String;",
        ">;",
        "Lcn/hutool/core/codec/Decoder<",
        "Ljava/lang/String;",
        "[J>;"
    }
.end annotation


# static fields
.field public static final DEFAULT_ALPHABET:[C

.field private static final DEFAULT_SEPARATORS:[C

.field private static final GUARD_THRESHOLD:D = 12.0

.field private static final HEX_VALUES_PATTERN:Ljava/util/regex/Pattern;

.field private static final LOTTERY_MOD:I = 0x64

.field private static final MIN_ALPHABET_LENGTH:I = 0x10

.field private static final SEPARATOR_THRESHOLD:D = 3.5


# instance fields
.field private final alphabet:[C

.field private final guards:[C

.field private final minLength:I

.field private final salt:[C

.field private final separators:[C

.field private final separatorsSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Character;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$V_2yvik5jWIsoB-X31znzlOi5ZU(J)Ljava/lang/String;
    .locals 0

    invoke-static {p0, p1}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 1

    const-string v0, "[\\w\\W]{1,12}"

    .line 43
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcn/hutool/core/codec/Hashids;->HEX_VALUES_PATTERN:Ljava/util/regex/Pattern;

    const/16 v0, 0x3e

    new-array v0, v0, [C

    .line 46
    fill-array-data v0, :array_0

    sput-object v0, Lcn/hutool/core/codec/Hashids;->DEFAULT_ALPHABET:[C

    const/16 v0, 0xe

    new-array v0, v0, [C

    .line 54
    fill-array-data v0, :array_1

    sput-object v0, Lcn/hutool/core/codec/Hashids;->DEFAULT_SEPARATORS:[C

    return-void

    nop

    :array_0
    .array-data 2
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
        0x67s
        0x68s
        0x69s
        0x6as
        0x6bs
        0x6cs
        0x6ds
        0x6es
        0x6fs
        0x70s
        0x71s
        0x72s
        0x73s
        0x74s
        0x75s
        0x76s
        0x77s
        0x78s
        0x79s
        0x7as
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
        0x47s
        0x48s
        0x49s
        0x4as
        0x4bs
        0x4cs
        0x4ds
        0x4es
        0x4fs
        0x50s
        0x51s
        0x52s
        0x53s
        0x54s
        0x55s
        0x56s
        0x57s
        0x58s
        0x59s
        0x5as
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x30s
    .end array-data

    :array_1
    .array-data 2
        0x63s
        0x66s
        0x68s
        0x69s
        0x73s
        0x74s
        0x75s
        0x43s
        0x46s
        0x48s
        0x49s
        0x53s
        0x54s
        0x55s
    .end array-data
.end method

.method public constructor <init>([C[CI)V
    .locals 7

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    iput p3, p0, Lcn/hutool/core/codec/Hashids;->minLength:I

    .line 114
    array-length p3, p1

    invoke-static {p1, p3}, Ljava/util/Arrays;->copyOf([CI)[C

    move-result-object p1

    iput-object p1, p0, Lcn/hutool/core/codec/Hashids;->salt:[C

    .line 117
    sget-object p3, Lcn/hutool/core/codec/Hashids;->DEFAULT_SEPARATORS:[C

    invoke-direct {p0, p3, p2}, Lcn/hutool/core/codec/Hashids;->filterSeparators([C[C)[C

    move-result-object p3

    invoke-direct {p0, p3, p1}, Lcn/hutool/core/codec/Hashids;->shuffle([C[C)[C

    move-result-object p3

    .line 120
    invoke-direct {p0, p2, p3}, Lcn/hutool/core/codec/Hashids;->validateAndFilterAlphabet([C[C)[C

    move-result-object v0

    .line 123
    array-length v1, p3

    const-wide/high16 v2, 0x400c000000000000L    # 3.5

    const/4 v4, 0x0

    if-eqz v1, :cond_0

    array-length v1, v0

    array-length v5, p3

    div-int/2addr v1, v5

    int-to-double v5, v1

    cmpl-double v1, v5, v2

    if-lez v1, :cond_1

    .line 125
    :cond_0
    array-length v1, v0

    int-to-double v5, v1

    div-double/2addr v5, v2

    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    .line 127
    array-length v2, p3

    if-le v1, v2, :cond_1

    .line 129
    array-length v2, p3

    sub-int/2addr v1, v2

    .line 130
    array-length v2, p3

    add-int/2addr v2, v1

    invoke-static {p3, v2}, Ljava/util/Arrays;->copyOf([CI)[C

    move-result-object p3

    .line 131
    array-length v2, p3

    sub-int/2addr v2, v1

    invoke-static {v0, v4, p3, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 133
    array-length v2, p3

    sub-int/2addr v2, v1

    invoke-static {v0, v4, p3, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 135
    array-length v2, v0

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->copyOfRange([CII)[C

    move-result-object v0

    .line 140
    :cond_1
    invoke-direct {p0, v0, p1}, Lcn/hutool/core/codec/Hashids;->shuffle([C[C)[C

    .line 143
    array-length p1, v0

    int-to-double v1, p1

    const-wide/high16 v5, 0x4028000000000000L    # 12.0

    div-double/2addr v1, v5

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int p1, v1

    new-array p1, p1, [C

    iput-object p1, p0, Lcn/hutool/core/codec/Hashids;->guards:[C

    .line 144
    array-length p2, p2

    const/4 v1, 0x3

    if-ge p2, v1, :cond_2

    .line 145
    array-length p2, p1

    invoke-static {p3, v4, p1, v4, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 146
    array-length p1, p1

    array-length p2, p3

    invoke-static {p3, p1, p2}, Ljava/util/Arrays;->copyOfRange([CII)[C

    move-result-object p1

    iput-object p1, p0, Lcn/hutool/core/codec/Hashids;->separators:[C

    .line 147
    iput-object v0, p0, Lcn/hutool/core/codec/Hashids;->alphabet:[C

    goto :goto_0

    .line 149
    :cond_2
    array-length p2, p1

    invoke-static {v0, v4, p1, v4, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 150
    iput-object p3, p0, Lcn/hutool/core/codec/Hashids;->separators:[C

    .line 151
    array-length p1, p1

    array-length p2, v0

    invoke-static {v0, p1, p2}, Ljava/util/Arrays;->copyOfRange([CII)[C

    move-result-object p1

    iput-object p1, p0, Lcn/hutool/core/codec/Hashids;->alphabet:[C

    .line 155
    :goto_0
    iget-object p1, p0, Lcn/hutool/core/codec/Hashids;->separators:[C

    array-length p1, p1

    invoke-static {v4, p1}, Ljava/util/stream/IntStream;->range(II)Ljava/util/stream/IntStream;

    move-result-object p1

    new-instance p2, Lcn/hutool/core/codec/Hashids$$ExternalSyntheticLambda12;

    invoke-direct {p2, p0}, Lcn/hutool/core/codec/Hashids$$ExternalSyntheticLambda12;-><init>(Lcn/hutool/core/codec/Hashids;)V

    .line 156
    invoke-interface {p1, p2}, Ljava/util/stream/IntStream;->mapToObj(Ljava/util/function/IntFunction;)Ljava/util/stream/Stream;

    move-result-object p1

    .line 157
    invoke-static {}, Ljava/util/stream/Collectors;->toSet()Ljava/util/stream/Collector;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Set;

    iput-object p1, p0, Lcn/hutool/core/codec/Hashids;->separatorsSet:Ljava/util/Set;

    return-void
.end method

.method public static create([C)Lcn/hutool/core/codec/Hashids;
    .locals 2

    .line 78
    sget-object v0, Lcn/hutool/core/codec/Hashids;->DEFAULT_ALPHABET:[C

    const/4 v1, -0x1

    invoke-static {p0, v0, v1}, Lcn/hutool/core/codec/Hashids;->create([C[CI)Lcn/hutool/core/codec/Hashids;

    move-result-object p0

    return-object p0
.end method

.method public static create([CI)Lcn/hutool/core/codec/Hashids;
    .locals 1

    .line 89
    sget-object v0, Lcn/hutool/core/codec/Hashids;->DEFAULT_ALPHABET:[C

    invoke-static {p0, v0, p1}, Lcn/hutool/core/codec/Hashids;->create([C[CI)Lcn/hutool/core/codec/Hashids;

    move-result-object p0

    return-object p0
.end method

.method public static create([C[CI)Lcn/hutool/core/codec/Hashids;
    .locals 1

    .line 101
    new-instance v0, Lcn/hutool/core/codec/Hashids;

    invoke-direct {v0, p0, p1, p2}, Lcn/hutool/core/codec/Hashids;-><init>([C[CI)V

    return-object v0
.end method

.method private deriveNewAlphabet([C[CC)[C
    .locals 4

    .line 424
    array-length v0, p1

    new-array v1, v0, [C

    const/4 v2, 0x0

    .line 427
    aput-char p3, v1, v2

    const/4 p3, 0x1

    sub-int/2addr v0, p3

    .line 431
    array-length v3, p2

    if-lez v3, :cond_0

    if-lez v0, :cond_0

    .line 432
    array-length v3, p2

    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 433
    invoke-static {p2, v2, v1, p3, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sub-int/2addr v0, v3

    add-int/2addr p3, v3

    :cond_0
    if-lez v0, :cond_1

    .line 439
    invoke-static {p1, v2, v1, p3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 443
    :cond_1
    invoke-direct {p0, p1, v1}, Lcn/hutool/core/codec/Hashids;->shuffle([C[C)[C

    move-result-object p1

    return-object p1
.end method

.method private filterSeparators([C[C)[C
    .locals 3

    .line 482
    array-length v0, p2

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/util/stream/IntStream;->range(II)Ljava/util/stream/IntStream;

    move-result-object v0

    new-instance v2, Lcn/hutool/core/codec/Hashids$$ExternalSyntheticLambda13;

    invoke-direct {v2, p2}, Lcn/hutool/core/codec/Hashids$$ExternalSyntheticLambda13;-><init>([C)V

    .line 483
    invoke-interface {v0, v2}, Ljava/util/stream/IntStream;->mapToObj(Ljava/util/function/IntFunction;)Ljava/util/stream/Stream;

    move-result-object p2

    .line 484
    invoke-static {}, Ljava/util/stream/Collectors;->toSet()Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Set;

    .line 486
    array-length v0, p1

    invoke-static {v1, v0}, Ljava/util/stream/IntStream;->range(II)Ljava/util/stream/IntStream;

    move-result-object v0

    new-instance v1, Lcn/hutool/core/codec/Hashids$$ExternalSyntheticLambda14;

    invoke-direct {v1, p1}, Lcn/hutool/core/codec/Hashids$$ExternalSyntheticLambda14;-><init>([C)V

    .line 487
    invoke-interface {v0, v1}, Ljava/util/stream/IntStream;->mapToObj(Ljava/util/function/IntFunction;)Ljava/util/stream/Stream;

    move-result-object p1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcn/hutool/core/codec/Hashids$$ExternalSyntheticLambda15;

    invoke-direct {v0, p2}, Lcn/hutool/core/codec/Hashids$$ExternalSyntheticLambda15;-><init>(Ljava/util/Set;)V

    .line 488
    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance p2, Lcn/hutool/core/codec/Hashids$$ExternalSyntheticLambda16;

    invoke-direct {p2}, Lcn/hutool/core/codec/Hashids$$ExternalSyntheticLambda16;-><init>()V

    .line 490
    invoke-interface {p1, p2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p1

    .line 491
    invoke-static {}, Ljava/util/stream/Collectors;->joining()Ljava/util/stream/Collector;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 492
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    return-object p1
.end method

.method static synthetic lambda$decode$5(Ljava/util/Set;Ljava/lang/String;I)Z
    .locals 0

    .line 321
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result p1

    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method static synthetic lambda$decodeToHex$3(Ljava/lang/StringBuilder;Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x1

    .line 298
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    return-void
.end method

.method static synthetic lambda$encode$1([JJJ)J
    .locals 4

    long-to-int v0, p3

    .line 206
    aget-wide v0, p0, v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-ltz p0, :cond_0

    const-wide/16 v2, 0x64

    add-long/2addr p3, v2

    .line 210
    rem-long/2addr v0, p3

    add-long/2addr p1, v0

    return-wide p1

    .line 208
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "invalid number: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static synthetic lambda$filterSeparators$13([CI)Ljava/lang/Character;
    .locals 0

    .line 483
    aget-char p0, p0, p1

    invoke-static {p0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$filterSeparators$14([CI)Ljava/lang/Character;
    .locals 0

    .line 487
    aget-char p0, p0, p1

    invoke-static {p0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$filterSeparators$15(Ljava/lang/Character;)Ljava/lang/String;
    .locals 0

    .line 490
    invoke-virtual {p0}, Ljava/lang/Character;->charValue()C

    move-result p0

    invoke-static {p0}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$translate$10(Ljava/lang/Character;)Ljava/lang/Integer;
    .locals 1

    .line 415
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid alphabet for hash"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static synthetic lambda$translate$6([CI)[Ljava/lang/Object;
    .locals 2

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 408
    aget-char p0, p0, p1

    invoke-static {p0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p0

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, p0

    return-object v0
.end method

.method static synthetic lambda$translate$7([Ljava/lang/Object;)Ljava/lang/Character;
    .locals 1

    const/4 v0, 0x0

    .line 409
    aget-object p0, p0, v0

    check-cast p0, Ljava/lang/Character;

    return-object p0
.end method

.method static synthetic lambda$translate$8([Ljava/lang/Object;)Ljava/lang/Integer;
    .locals 1

    const/4 v0, 0x1

    .line 410
    aget-object p0, p0, v0

    check-cast p0, Ljava/lang/Integer;

    return-object p0
.end method

.method static synthetic lambda$translate$9(Ljava/lang/Integer;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 0

    if-nez p0, :cond_0

    move-object p0, p1

    :cond_0
    return-object p0
.end method

.method static synthetic lambda$validateAndFilterAlphabet$11([CI)Ljava/lang/Character;
    .locals 0

    .line 455
    aget-char p0, p0, p1

    invoke-static {p0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$validateAndFilterAlphabet$12([CLjava/util/Set;Ljava/util/Set;I)V
    .locals 1

    .line 461
    aget-char p0, p0, p3

    const/16 v0, 0x20

    if-eq p0, v0, :cond_1

    .line 465
    invoke-static {p0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p0

    .line 466
    invoke-interface {p1, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 467
    invoke-interface {p2, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void

    .line 462
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    .line 463
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, p1, p2

    const-string p2, "alphabet must not contain spaces: index %d"

    .line 462
    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private shuffle([C[C)[C
    .locals 6

    .line 496
    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    array-length v3, p2

    if-lez v3, :cond_0

    if-lez v0, :cond_0

    .line 497
    array-length v3, p2

    rem-int/2addr v1, v3

    .line 498
    aget-char v3, p2, v1

    add-int/2addr v2, v3

    add-int/2addr v3, v1

    add-int/2addr v3, v2

    .line 499
    rem-int/2addr v3, v0

    .line 500
    aget-char v4, p1, v3

    .line 501
    aget-char v5, p1, v0

    aput-char v5, p1, v3

    .line 502
    aput-char v4, p1, v0

    add-int/lit8 v0, v0, -0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object p1
.end method

.method private translate([C[C)J
    .locals 10

    .line 407
    array-length v0, p2

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/util/stream/IntStream;->range(II)Ljava/util/stream/IntStream;

    move-result-object v0

    new-instance v2, Lcn/hutool/core/codec/Hashids$$ExternalSyntheticLambda2;

    invoke-direct {v2, p2}, Lcn/hutool/core/codec/Hashids$$ExternalSyntheticLambda2;-><init>([C)V

    .line 408
    invoke-interface {v0, v2}, Ljava/util/stream/IntStream;->mapToObj(Ljava/util/function/IntFunction;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v2, Lcn/hutool/core/codec/Hashids$$ExternalSyntheticLambda3;

    invoke-direct {v2}, Lcn/hutool/core/codec/Hashids$$ExternalSyntheticLambda3;-><init>()V

    new-instance v3, Lcn/hutool/core/codec/Hashids$$ExternalSyntheticLambda4;

    invoke-direct {v3}, Lcn/hutool/core/codec/Hashids$$ExternalSyntheticLambda4;-><init>()V

    new-instance v4, Lcn/hutool/core/codec/Hashids$$ExternalSyntheticLambda5;

    invoke-direct {v4}, Lcn/hutool/core/codec/Hashids$$ExternalSyntheticLambda5;-><init>()V

    const/4 v5, 0x0

    .line 411
    invoke-static {v5, v4}, Ljava/util/stream/Collectors;->reducing(Ljava/lang/Object;Ljava/util/function/BinaryOperator;)Ljava/util/stream/Collector;

    move-result-object v4

    .line 410
    invoke-static {v3, v4}, Ljava/util/stream/Collectors;->mapping(Ljava/util/function/Function;Ljava/util/stream/Collector;)Ljava/util/stream/Collector;

    move-result-object v3

    .line 409
    invoke-static {v2, v3}, Ljava/util/stream/Collectors;->groupingBy(Ljava/util/function/Function;Ljava/util/stream/Collector;)Ljava/util/stream/Collector;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-wide/16 v2, 0x0

    .line 413
    :goto_0
    array-length v4, p1

    if-ge v1, v4, :cond_0

    .line 414
    aget-char v4, p1, v1

    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    new-instance v5, Lcn/hutool/core/codec/Hashids$$ExternalSyntheticLambda6;

    invoke-direct {v5}, Lcn/hutool/core/codec/Hashids$$ExternalSyntheticLambda6;-><init>()V

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    int-to-long v4, v4

    array-length v6, p2

    int-to-double v6, v6

    array-length v8, p1

    sub-int/2addr v8, v1

    add-int/lit8 v8, v8, -0x1

    int-to-double v8, v8

    .line 416
    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    double-to-long v6, v6

    mul-long/2addr v4, v6

    add-long/2addr v2, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-wide v2
.end method

.method private translate(J[CLjava/lang/StringBuilder;I)Ljava/lang/StringBuilder;
    .locals 2

    .line 395
    :cond_0
    array-length v0, p3

    int-to-long v0, v0

    rem-long v0, p1, v0

    long-to-int v0, v0

    aget-char v0, p3, v0

    invoke-virtual {p4, p5, v0}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    .line 398
    array-length v0, p3

    int-to-long v0, v0

    div-long/2addr p1, v0

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_0

    return-object p4
.end method

.method private validateAndFilterAlphabet([C[C)[C
    .locals 4

    .line 448
    array-length v0, p1

    const/4 v1, 0x0

    const/16 v2, 0x10

    if-lt v0, v2, :cond_1

    .line 453
    new-instance v0, Ljava/util/LinkedHashSet;

    array-length v2, p1

    invoke-direct {v0, v2}, Ljava/util/LinkedHashSet;-><init>(I)V

    .line 454
    array-length v2, p2

    invoke-static {v1, v2}, Ljava/util/stream/IntStream;->range(II)Ljava/util/stream/IntStream;

    move-result-object v2

    new-instance v3, Lcn/hutool/core/codec/Hashids$$ExternalSyntheticLambda7;

    invoke-direct {v3, p2}, Lcn/hutool/core/codec/Hashids$$ExternalSyntheticLambda7;-><init>([C)V

    .line 455
    invoke-interface {v2, v3}, Ljava/util/stream/IntStream;->mapToObj(Ljava/util/function/IntFunction;)Ljava/util/stream/Stream;

    move-result-object p2

    .line 456
    invoke-static {}, Ljava/util/stream/Collectors;->toSet()Ljava/util/stream/Collector;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Set;

    .line 459
    array-length v2, p1

    invoke-static {v1, v2}, Ljava/util/stream/IntStream;->range(II)Ljava/util/stream/IntStream;

    move-result-object v2

    new-instance v3, Lcn/hutool/core/codec/Hashids$$ExternalSyntheticLambda8;

    invoke-direct {v3, p1, p2, v0}, Lcn/hutool/core/codec/Hashids$$ExternalSyntheticLambda8;-><init>([CLjava/util/Set;Ljava/util/Set;)V

    .line 460
    invoke-interface {v2, v3}, Ljava/util/stream/IntStream;->forEach(Ljava/util/function/IntConsumer;)V

    .line 472
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result p1

    new-array p1, p1, [C

    .line 474
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Character;

    invoke-virtual {v0}, Ljava/lang/Character;->charValue()C

    move-result v0

    add-int/lit8 v2, v1, 0x1

    .line 475
    aput-char v0, p1, v1

    move v1, v2

    goto :goto_0

    :cond_0
    return-object p1

    .line 449
    :cond_1
    new-instance p2, Ljava/lang/IllegalArgumentException;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 450
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    array-length p1, p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const-string p1, "alphabet must contain at least %d unique characters: %d"

    .line 449
    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method


# virtual methods
.method public bridge synthetic decode(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 36
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcn/hutool/core/codec/Hashids;->decode(Ljava/lang/String;)[J

    move-result-object p1

    return-object p1
.end method

.method public decode(Ljava/lang/String;)[J
    .locals 13

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 316
    :cond_0
    iget-object v0, p0, Lcn/hutool/core/codec/Hashids;->guards:[C

    array-length v0, v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/util/stream/IntStream;->range(II)Ljava/util/stream/IntStream;

    move-result-object v0

    new-instance v2, Lcn/hutool/core/codec/Hashids$$ExternalSyntheticLambda10;

    invoke-direct {v2, p0}, Lcn/hutool/core/codec/Hashids$$ExternalSyntheticLambda10;-><init>(Lcn/hutool/core/codec/Hashids;)V

    .line 317
    invoke-interface {v0, v2}, Ljava/util/stream/IntStream;->mapToObj(Ljava/util/function/IntFunction;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 318
    invoke-static {}, Ljava/util/stream/Collectors;->toSet()Ljava/util/stream/Collector;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 320
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {v1, v2}, Ljava/util/stream/IntStream;->range(II)Ljava/util/stream/IntStream;

    move-result-object v2

    new-instance v3, Lcn/hutool/core/codec/Hashids$$ExternalSyntheticLambda11;

    invoke-direct {v3, v0, p1}, Lcn/hutool/core/codec/Hashids$$ExternalSyntheticLambda11;-><init>(Ljava/util/Set;Ljava/lang/String;)V

    .line 321
    invoke-interface {v2, v3}, Ljava/util/stream/IntStream;->filter(Ljava/util/function/IntPredicate;)Ljava/util/stream/IntStream;

    move-result-object v0

    .line 322
    invoke-interface {v0}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object v0

    .line 325
    array-length v2, v0

    const/4 v3, 0x1

    if-lez v2, :cond_2

    .line 326
    aget v2, v0, v1

    add-int/2addr v2, v3

    .line 327
    array-length v4, v0

    if-le v4, v3, :cond_1

    aget v4, v0, v3

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    goto :goto_0

    .line 330
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    move v2, v1

    .line 333
    :goto_0
    invoke-static {}, Ljava/util/stream/LongStream;->empty()Ljava/util/stream/LongStream;

    move-result-object v5

    .line 335
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_7

    .line 336
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 339
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    array-length v0, v0

    sub-int/2addr v7, v0

    sub-int/2addr v7, v3

    .line 340
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 343
    iget-object v8, p0, Lcn/hutool/core/codec/Hashids;->alphabet:[C

    array-length v9, v8

    new-array v9, v9, [C

    .line 344
    aput-char v6, v9, v1

    .line 345
    iget-object v6, p0, Lcn/hutool/core/codec/Hashids;->salt:[C

    array-length v10, v6

    array-length v11, v8

    if-lt v10, v11, :cond_3

    array-length v8, v8

    sub-int/2addr v8, v3

    goto :goto_1

    :cond_3
    array-length v8, v6

    .line 346
    :goto_1
    invoke-static {v6, v1, v9, v3, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 347
    iget-object v6, p0, Lcn/hutool/core/codec/Hashids;->alphabet:[C

    array-length v10, v6

    sub-int/2addr v10, v8

    sub-int/2addr v10, v3

    .line 350
    array-length v8, v6

    invoke-static {v6, v8}, Ljava/util/Arrays;->copyOf([CI)[C

    move-result-object v6

    add-int/2addr v2, v3

    :goto_2
    if-ge v2, v4, :cond_7

    .line 353
    iget-object v3, p0, Lcn/hutool/core/codec/Hashids;->separatorsSet:Ljava/util/Set;

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-static {v8}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v8

    invoke-interface {v3, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 354
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v4, -0x1

    if-ge v2, v3, :cond_4

    goto :goto_3

    .line 361
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_6

    if-lez v10, :cond_5

    .line 364
    iget-object v3, p0, Lcn/hutool/core/codec/Hashids;->alphabet:[C

    array-length v3, v3

    sub-int/2addr v3, v10

    invoke-static {v6, v1, v9, v3, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 369
    :cond_5
    invoke-direct {p0, v6, v9}, Lcn/hutool/core/codec/Hashids;->shuffle([C[C)[C

    .line 372
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    invoke-direct {p0, v0, v6}, Lcn/hutool/core/codec/Hashids;->translate([C[C)J

    move-result-wide v11

    .line 373
    invoke-static {v11, v12}, Ljava/util/stream/LongStream;->of(J)Ljava/util/stream/LongStream;

    move-result-object v0

    invoke-static {v5, v0}, Ljava/util/stream/LongStream;->concat(Ljava/util/stream/LongStream;Ljava/util/stream/LongStream;)Ljava/util/stream/LongStream;

    move-result-object v5

    .line 376
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    :cond_6
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 382
    :cond_7
    invoke-interface {v5}, Ljava/util/stream/LongStream;->toArray()[J

    move-result-object v0

    .line 383
    invoke-virtual {p0, v0}, Lcn/hutool/core/codec/Hashids;->encode([J)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    return-object v0

    .line 384
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "invalid hash: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public decodeToHex(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 295
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 296
    invoke-virtual {p0, p1}, Lcn/hutool/core/codec/Hashids;->decode(Ljava/lang/String;)[J

    move-result-object p1

    invoke-static {p1}, Ljava/util/Arrays;->stream([J)Ljava/util/stream/LongStream;

    move-result-object p1

    new-instance v1, Lcn/hutool/core/codec/Hashids$$ExternalSyntheticLambda17;

    invoke-direct {v1}, Lcn/hutool/core/codec/Hashids$$ExternalSyntheticLambda17;-><init>()V

    .line 297
    invoke-interface {p1, v1}, Ljava/util/stream/LongStream;->mapToObj(Ljava/util/function/LongFunction;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v1, Lcn/hutool/core/codec/Hashids$$ExternalSyntheticLambda1;

    invoke-direct {v1, v0}, Lcn/hutool/core/codec/Hashids$$ExternalSyntheticLambda1;-><init>(Ljava/lang/StringBuilder;)V

    .line 298
    invoke-interface {p1, v1}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 299
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic encode(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 36
    check-cast p1, [J

    invoke-virtual {p0, p1}, Lcn/hutool/core/codec/Hashids;->encode([J)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public varargs encode([J)Ljava/lang/String;
    .locals 14

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 201
    :cond_0
    iget-object v0, p0, Lcn/hutool/core/codec/Hashids;->alphabet:[C

    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([CI)[C

    move-result-object v0

    .line 204
    array-length v1, p1

    int-to-long v1, v1

    const-wide/16 v3, 0x0

    invoke-static {v3, v4, v1, v2}, Ljava/util/stream/LongStream;->range(JJ)Ljava/util/stream/LongStream;

    move-result-object v1

    new-instance v2, Lcn/hutool/core/codec/Hashids$$ExternalSyntheticLambda0;

    invoke-direct {v2, p1}, Lcn/hutool/core/codec/Hashids$$ExternalSyntheticLambda0;-><init>([J)V

    .line 205
    invoke-interface {v1, v3, v4, v2}, Ljava/util/stream/LongStream;->reduce(JLjava/util/function/LongBinaryOperator;)J

    move-result-wide v8

    .line 212
    array-length v1, v0

    int-to-long v1, v1

    rem-long v1, v8, v1

    long-to-int v1, v1

    aget-char v1, v0, v1

    .line 215
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 216
    array-length v2, p1

    const/4 v11, 0x0

    invoke-static {v11, v2}, Ljava/util/stream/IntStream;->range(II)Ljava/util/stream/IntStream;

    move-result-object v12

    new-instance v13, Lcn/hutool/core/codec/Hashids$$ExternalSyntheticLambda9;

    move-object v2, v13

    move-object v3, p0

    move-object v4, v0

    move v5, v1

    move-object v6, v10

    move-object v7, p1

    invoke-direct/range {v2 .. v7}, Lcn/hutool/core/codec/Hashids$$ExternalSyntheticLambda9;-><init>(Lcn/hutool/core/codec/Hashids;[CCLjava/lang/StringBuilder;[J)V

    .line 217
    invoke-interface {v12, v13}, Ljava/util/stream/IntStream;->forEach(Ljava/util/function/IntConsumer;)V

    .line 238
    iget p1, p0, Lcn/hutool/core/codec/Hashids;->minLength:I

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    const/4 v3, 0x2

    if-le p1, v2, :cond_1

    int-to-long v1, v1

    add-long/2addr v1, v8

    .line 239
    iget-object p1, p0, Lcn/hutool/core/codec/Hashids;->guards:[C

    array-length v4, p1

    int-to-long v4, v4

    rem-long/2addr v1, v4

    long-to-int v1, v1

    .line 240
    aget-char p1, p1, v1

    invoke-virtual {v10, v11, p1}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    .line 241
    iget p1, p0, Lcn/hutool/core/codec/Hashids;->minLength:I

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-le p1, v1, :cond_1

    .line 242
    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result p1

    int-to-long v1, p1

    add-long/2addr v8, v1

    iget-object p1, p0, Lcn/hutool/core/codec/Hashids;->guards:[C

    array-length v1, p1

    int-to-long v1, v1

    rem-long/2addr v8, v1

    long-to-int v1, v8

    .line 243
    aget-char p1, p1, v1

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 248
    :cond_1
    iget p1, p0, Lcn/hutool/core/codec/Hashids;->minLength:I

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    :goto_0
    sub-int/2addr p1, v1

    :goto_1
    if-lez p1, :cond_4

    .line 250
    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([CI)[C

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcn/hutool/core/codec/Hashids;->shuffle([C[C)[C

    .line 252
    array-length v1, v0

    div-int/2addr v1, v3

    .line 253
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    .line 254
    array-length v4, v0

    if-le p1, v4, :cond_3

    .line 256
    array-length v4, v0

    rem-int/2addr v4, v3

    if-nez v4, :cond_2

    move v4, v11

    goto :goto_2

    :cond_2
    const/4 v4, 0x1

    :goto_2
    add-int/2addr v4, v1

    .line 258
    invoke-virtual {v10, v11, v0, v1, v4}, Ljava/lang/StringBuilder;->insert(I[CII)Ljava/lang/StringBuilder;

    add-int/2addr v4, v2

    .line 259
    invoke-virtual {v10, v4, v0, v11, v1}, Ljava/lang/StringBuilder;->insert(I[CII)Ljava/lang/StringBuilder;

    .line 261
    array-length v1, v0

    goto :goto_0

    .line 264
    :cond_3
    array-length v4, v0

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    add-int/2addr v4, v5

    iget v5, p0, Lcn/hutool/core/codec/Hashids;->minLength:I

    sub-int/2addr v4, v5

    .line 265
    invoke-static {v4, v3}, Ljava/lang/Math;->floorDiv(II)I

    move-result v4

    add-int/2addr v1, v4

    .line 266
    array-length v4, v0

    sub-int/2addr v4, v1

    sub-int/2addr p1, v4

    .line 269
    invoke-virtual {v10, v11, v0, v1, v4}, Ljava/lang/StringBuilder;->insert(I[CII)Ljava/lang/StringBuilder;

    add-int/2addr v4, v2

    .line 270
    invoke-virtual {v10, v4, v0, v11, p1}, Ljava/lang/StringBuilder;->insert(I[CII)Ljava/lang/StringBuilder;

    move p1, v11

    goto :goto_1

    .line 276
    :cond_4
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public encodeFromHex(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const-string v0, "0x"

    .line 173
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "0X"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x2

    .line 174
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 177
    :cond_2
    invoke-static {}, Ljava/util/stream/LongStream;->empty()Ljava/util/stream/LongStream;

    move-result-object v0

    .line 178
    sget-object v1, Lcn/hutool/core/codec/Hashids;->HEX_VALUES_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    .line 179
    :goto_0
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 180
    new-instance v1, Ljava/math/BigInteger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "1"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x10

    invoke-direct {v1, v2, v3}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v1}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v1

    .line 181
    invoke-static {v1, v2}, Ljava/util/stream/LongStream;->of(J)Ljava/util/stream/LongStream;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/stream/LongStream;->concat(Ljava/util/stream/LongStream;Ljava/util/stream/LongStream;)Ljava/util/stream/LongStream;

    move-result-object v0

    goto :goto_0

    .line 184
    :cond_3
    invoke-interface {v0}, Ljava/util/stream/LongStream;->toArray()[J

    move-result-object p1

    invoke-virtual {p0, p1}, Lcn/hutool/core/codec/Hashids;->encode([J)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method synthetic lambda$decode$4$cn-hutool-core-codec-Hashids(I)Ljava/lang/Character;
    .locals 1

    .line 317
    iget-object v0, p0, Lcn/hutool/core/codec/Hashids;->guards:[C

    aget-char p1, v0, p1

    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p1

    return-object p1
.end method

.method synthetic lambda$encode$2$cn-hutool-core-codec-Hashids([CCLjava/lang/StringBuilder;[JI)V
    .locals 7

    .line 219
    iget-object v0, p0, Lcn/hutool/core/codec/Hashids;->salt:[C

    invoke-direct {p0, p1, v0, p2}, Lcn/hutool/core/codec/Hashids;->deriveNewAlphabet([C[CC)[C

    .line 222
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    .line 223
    aget-wide v2, p4, p5

    move-object v1, p0

    move-object v4, p1

    move-object v5, p3

    move v6, v0

    invoke-direct/range {v1 .. v6}, Lcn/hutool/core/codec/Hashids;->translate(J[CLjava/lang/StringBuilder;I)Ljava/lang/StringBuilder;

    if-nez p5, :cond_0

    const/4 p1, 0x0

    .line 227
    invoke-virtual {p3, p1, p2}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    :cond_0
    add-int/lit8 p1, p5, 0x1

    .line 231
    array-length p2, p4

    if-ge p1, p2, :cond_1

    .line 232
    aget-wide p1, p4, p5

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result p4

    add-int/lit8 p4, p4, 0x1

    int-to-long p4, p4

    rem-long/2addr p1, p4

    .line 233
    iget-object p4, p0, Lcn/hutool/core/codec/Hashids;->separators:[C

    array-length p5, p4

    int-to-long v0, p5

    rem-long/2addr p1, v0

    long-to-int p1, p1

    aget-char p1, p4, p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_1
    return-void
.end method

.method synthetic lambda$new$0$cn-hutool-core-codec-Hashids(I)Ljava/lang/Character;
    .locals 1

    .line 156
    iget-object v0, p0, Lcn/hutool/core/codec/Hashids;->separators:[C

    aget-char p1, v0, p1

    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p1

    return-object p1
.end method
