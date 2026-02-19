.class public Lcn/hutool/core/text/StrBuilder;
.super Ljava/lang/Object;
.source "StrBuilder.java"

# interfaces
.implements Ljava/lang/CharSequence;
.implements Ljava/lang/Appendable;
.implements Ljava/io/Serializable;


# static fields
.field public static final DEFAULT_CAPACITY:I = 0x10

.field private static final serialVersionUID:J = 0x580092d1fcf6c1e3L


# instance fields
.field private position:I

.field private value:[C


# direct methods
.method public constructor <init>()V
    .locals 1

    const/16 v0, 0x10

    .line 70
    invoke-direct {p0, v0}, Lcn/hutool/core/text/StrBuilder;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    new-array p1, p1, [C

    iput-object p1, p0, Lcn/hutool/core/text/StrBuilder;->value:[C

    return-void
.end method

.method public varargs constructor <init>([Ljava/lang/CharSequence;)V
    .locals 3

    .line 89
    invoke-static {p1}, Lcn/hutool/core/util/ArrayUtil;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    const/16 v1, 0x10

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcn/hutool/core/text/StrBuilder;->totalLength([Ljava/lang/CharSequence;)I

    move-result v0

    add-int/2addr v1, v0

    :goto_0
    invoke-direct {p0, v1}, Lcn/hutool/core/text/StrBuilder;-><init>(I)V

    .line 90
    array-length v0, p1

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    .line 91
    invoke-virtual {p0, v2}, Lcn/hutool/core/text/StrBuilder;->append(Ljava/lang/CharSequence;)Lcn/hutool/core/text/StrBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public static create()Lcn/hutool/core/text/StrBuilder;
    .locals 1

    .line 40
    new-instance v0, Lcn/hutool/core/text/StrBuilder;

    invoke-direct {v0}, Lcn/hutool/core/text/StrBuilder;-><init>()V

    return-object v0
.end method

.method public static create(I)Lcn/hutool/core/text/StrBuilder;
    .locals 1

    .line 50
    new-instance v0, Lcn/hutool/core/text/StrBuilder;

    invoke-direct {v0, p0}, Lcn/hutool/core/text/StrBuilder;-><init>(I)V

    return-object v0
.end method

.method public static varargs create([Ljava/lang/CharSequence;)Lcn/hutool/core/text/StrBuilder;
    .locals 1

    .line 61
    new-instance v0, Lcn/hutool/core/text/StrBuilder;

    invoke-direct {v0, p0}, Lcn/hutool/core/text/StrBuilder;-><init>([Ljava/lang/CharSequence;)V

    return-object v0
.end method

.method private ensureCapacity(I)V
    .locals 1

    .line 548
    iget-object v0, p0, Lcn/hutool/core/text/StrBuilder;->value:[C

    array-length v0, v0

    sub-int v0, p1, v0

    if-lez v0, :cond_0

    .line 549
    invoke-direct {p0, p1}, Lcn/hutool/core/text/StrBuilder;->expandCapacity(I)V

    :cond_0
    return-void
.end method

.method private expandCapacity(I)V
    .locals 3

    .line 560
    iget-object v0, p0, Lcn/hutool/core/text/StrBuilder;->value:[C

    array-length v1, v0

    shl-int/lit8 v1, v1, 0x1

    add-int/lit8 v1, v1, 0x2

    sub-int v2, v1, p1

    if-gez v2, :cond_0

    goto :goto_0

    :cond_0
    move p1, v1

    :goto_0
    if-ltz p1, :cond_1

    .line 568
    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([CI)[C

    move-result-object p1

    iput-object p1, p0, Lcn/hutool/core/text/StrBuilder;->value:[C

    return-void

    .line 566
    :cond_1
    new-instance p1, Ljava/lang/OutOfMemoryError;

    const-string v0, "Capacity is too long and max than Integer.MAX"

    invoke-direct {p1, v0}, Ljava/lang/OutOfMemoryError;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private moveDataAfterIndex(II)V
    .locals 2

    .line 530
    iget v0, p0, Lcn/hutool/core/text/StrBuilder;->position:I

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/2addr v0, p2

    invoke-direct {p0, v0}, Lcn/hutool/core/text/StrBuilder;->ensureCapacity(I)V

    .line 531
    iget v0, p0, Lcn/hutool/core/text/StrBuilder;->position:I

    if-ge p1, v0, :cond_0

    .line 533
    iget-object v1, p0, Lcn/hutool/core/text/StrBuilder;->value:[C

    add-int/2addr p2, p1

    sub-int/2addr v0, p1

    invoke-static {v1, p1, v1, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    :cond_0
    if-le p1, v0, :cond_1

    .line 536
    iget-object p2, p0, Lcn/hutool/core/text/StrBuilder;->value:[C

    const/16 v1, 0x20

    invoke-static {p2, v0, p1, v1}, Ljava/util/Arrays;->fill([CIIC)V

    :cond_1
    :goto_0
    return-void
.end method

.method private static varargs totalLength([Ljava/lang/CharSequence;)I
    .locals 5

    .line 581
    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v4, p0, v2

    if-nez v4, :cond_0

    move v4, v1

    goto :goto_1

    .line 582
    :cond_0
    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    :goto_1
    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v3
.end method


# virtual methods
.method public append(C)Lcn/hutool/core/text/StrBuilder;
    .locals 1

    .line 116
    iget v0, p0, Lcn/hutool/core/text/StrBuilder;->position:I

    invoke-virtual {p0, v0, p1}, Lcn/hutool/core/text/StrBuilder;->insert(IC)Lcn/hutool/core/text/StrBuilder;

    move-result-object p1

    return-object p1
.end method

.method public append(Ljava/lang/CharSequence;)Lcn/hutool/core/text/StrBuilder;
    .locals 1

    .line 146
    iget v0, p0, Lcn/hutool/core/text/StrBuilder;->position:I

    invoke-virtual {p0, v0, p1}, Lcn/hutool/core/text/StrBuilder;->insert(ILjava/lang/CharSequence;)Lcn/hutool/core/text/StrBuilder;

    move-result-object p1

    return-object p1
.end method

.method public append(Ljava/lang/CharSequence;II)Lcn/hutool/core/text/StrBuilder;
    .locals 1

    .line 151
    iget v0, p0, Lcn/hutool/core/text/StrBuilder;->position:I

    invoke-virtual {p0, v0, p1, p2, p3}, Lcn/hutool/core/text/StrBuilder;->insert(ILjava/lang/CharSequence;II)Lcn/hutool/core/text/StrBuilder;

    move-result-object p1

    return-object p1
.end method

.method public append(Ljava/lang/Object;)Lcn/hutool/core/text/StrBuilder;
    .locals 1

    .line 105
    iget v0, p0, Lcn/hutool/core/text/StrBuilder;->position:I

    invoke-virtual {p0, v0, p1}, Lcn/hutool/core/text/StrBuilder;->insert(ILjava/lang/Object;)Lcn/hutool/core/text/StrBuilder;

    move-result-object p1

    return-object p1
.end method

.method public append([C)Lcn/hutool/core/text/StrBuilder;
    .locals 2

    .line 126
    invoke-static {p1}, Lcn/hutool/core/util/ArrayUtil;->isEmpty([C)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    const/4 v0, 0x0

    .line 129
    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcn/hutool/core/text/StrBuilder;->append([CII)Lcn/hutool/core/text/StrBuilder;

    move-result-object p1

    return-object p1
.end method

.method public append([CII)Lcn/hutool/core/text/StrBuilder;
    .locals 1

    .line 141
    iget v0, p0, Lcn/hutool/core/text/StrBuilder;->position:I

    invoke-virtual {p0, v0, p1, p2, p3}, Lcn/hutool/core/text/StrBuilder;->insert(I[CII)Lcn/hutool/core/text/StrBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic append(C)Ljava/lang/Appendable;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 17
    invoke-virtual {p0, p1}, Lcn/hutool/core/text/StrBuilder;->append(C)Lcn/hutool/core/text/StrBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 17
    invoke-virtual {p0, p1}, Lcn/hutool/core/text/StrBuilder;->append(Ljava/lang/CharSequence;)Lcn/hutool/core/text/StrBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;II)Ljava/lang/Appendable;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 17
    invoke-virtual {p0, p1, p2, p3}, Lcn/hutool/core/text/StrBuilder;->append(Ljava/lang/CharSequence;II)Lcn/hutool/core/text/StrBuilder;

    move-result-object p1

    return-object p1
.end method

.method public charAt(I)C
    .locals 1

    if-gez p1, :cond_0

    .line 487
    iget v0, p0, Lcn/hutool/core/text/StrBuilder;->position:I

    add-int/2addr p1, v0

    :cond_0
    if-ltz p1, :cond_1

    .line 489
    iget v0, p0, Lcn/hutool/core/text/StrBuilder;->position:I

    if-gt p1, v0, :cond_1

    .line 492
    iget-object v0, p0, Lcn/hutool/core/text/StrBuilder;->value:[C

    aget-char p1, v0, p1

    return p1

    .line 490
    :cond_1
    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(I)V

    throw v0
.end method

.method public clear()Lcn/hutool/core/text/StrBuilder;
    .locals 1

    .line 377
    invoke-virtual {p0}, Lcn/hutool/core/text/StrBuilder;->reset()Lcn/hutool/core/text/StrBuilder;

    move-result-object v0

    return-object v0
.end method

.method public del(II)Lcn/hutool/core/text/StrBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/StringIndexOutOfBoundsException;
        }
    .end annotation

    const/4 v0, 0x0

    if-gez p1, :cond_0

    move p1, v0

    .line 425
    :cond_0
    iget v1, p0, Lcn/hutool/core/text/StrBuilder;->position:I

    if-lt p2, v1, :cond_1

    .line 427
    iput p1, p0, Lcn/hutool/core/text/StrBuilder;->position:I

    return-object p0

    :cond_1
    if-gez p2, :cond_2

    move p2, v0

    :cond_2
    sub-int v0, p2, p1

    if-lez v0, :cond_3

    .line 437
    iget-object v2, p0, Lcn/hutool/core/text/StrBuilder;->value:[C

    add-int v3, p1, v0

    sub-int/2addr v1, p2

    invoke-static {v2, v3, v2, p1, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 438
    iget p1, p0, Lcn/hutool/core/text/StrBuilder;->position:I

    sub-int/2addr p1, v0

    iput p1, p0, Lcn/hutool/core/text/StrBuilder;->position:I

    goto :goto_0

    :cond_3
    if-ltz v0, :cond_4

    :goto_0
    return-object p0

    .line 440
    :cond_4
    new-instance p1, Ljava/lang/StringIndexOutOfBoundsException;

    const-string p2, "Start is greater than End."

    invoke-direct {p1, p2}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public delTo(I)Lcn/hutool/core/text/StrBuilder;
    .locals 1

    if-gez p1, :cond_0

    const/4 p1, 0x0

    .line 401
    :cond_0
    iget v0, p0, Lcn/hutool/core/text/StrBuilder;->position:I

    invoke-virtual {p0, p1, v0}, Lcn/hutool/core/text/StrBuilder;->del(II)Lcn/hutool/core/text/StrBuilder;

    move-result-object p1

    return-object p1
.end method

.method public getChars(II[CI)Lcn/hutool/core/text/StrBuilder;
    .locals 1

    const/4 v0, 0x0

    if-gez p1, :cond_0

    move p1, v0

    :cond_0
    if-gez p2, :cond_1

    :goto_0
    move p2, v0

    goto :goto_1

    .line 343
    :cond_1
    iget v0, p0, Lcn/hutool/core/text/StrBuilder;->position:I

    if-le p2, v0, :cond_2

    goto :goto_0

    :cond_2
    :goto_1
    if-gt p1, p2, :cond_3

    .line 349
    iget-object v0, p0, Lcn/hutool/core/text/StrBuilder;->value:[C

    sub-int/2addr p2, p1

    invoke-static {v0, p1, p3, p4, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p0

    .line 347
    :cond_3
    new-instance p1, Ljava/lang/StringIndexOutOfBoundsException;

    const-string p2, "srcBegin > srcEnd"

    invoke-direct {p1, p2}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public hasContent()Z
    .locals 1

    .line 359
    iget v0, p0, Lcn/hutool/core/text/StrBuilder;->position:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public insert(IC)Lcn/hutool/core/text/StrBuilder;
    .locals 2

    if-gez p1, :cond_0

    .line 179
    iget v0, p0, Lcn/hutool/core/text/StrBuilder;->position:I

    add-int/2addr p1, v0

    :cond_0
    if-ltz p1, :cond_1

    const/4 v0, 0x1

    .line 185
    invoke-direct {p0, p1, v0}, Lcn/hutool/core/text/StrBuilder;->moveDataAfterIndex(II)V

    .line 186
    iget-object v1, p0, Lcn/hutool/core/text/StrBuilder;->value:[C

    aput-char p2, v1, p1

    .line 187
    iget p2, p0, Lcn/hutool/core/text/StrBuilder;->position:I

    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    add-int/2addr p1, v0

    iput p1, p0, Lcn/hutool/core/text/StrBuilder;->position:I

    return-object p0

    .line 182
    :cond_1
    new-instance p2, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {p2, p1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(I)V

    throw p2
.end method

.method public insert(ILjava/lang/CharSequence;)Lcn/hutool/core/text/StrBuilder;
    .locals 5

    if-gez p1, :cond_0

    .line 254
    iget v0, p0, Lcn/hutool/core/text/StrBuilder;->position:I

    add-int/2addr p1, v0

    :cond_0
    if-ltz p1, :cond_7

    if-nez p2, :cond_1

    const-string p2, ""

    .line 263
    :cond_1
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 264
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-direct {p0, p1, v1}, Lcn/hutool/core/text/StrBuilder;->moveDataAfterIndex(II)V

    .line 265
    instance-of v1, p2, Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 266
    check-cast p2, Ljava/lang/String;

    iget-object v1, p0, Lcn/hutool/core/text/StrBuilder;->value:[C

    invoke-virtual {p2, v2, v0, v1, p1}, Ljava/lang/String;->getChars(II[CI)V

    goto :goto_1

    .line 267
    :cond_2
    instance-of v1, p2, Ljava/lang/StringBuilder;

    if-eqz v1, :cond_3

    .line 268
    check-cast p2, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/hutool/core/text/StrBuilder;->value:[C

    invoke-virtual {p2, v2, v0, v1, p1}, Ljava/lang/StringBuilder;->getChars(II[CI)V

    goto :goto_1

    .line 269
    :cond_3
    instance-of v1, p2, Ljava/lang/StringBuffer;

    if-eqz v1, :cond_4

    .line 270
    check-cast p2, Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcn/hutool/core/text/StrBuilder;->value:[C

    invoke-virtual {p2, v2, v0, v1, p1}, Ljava/lang/StringBuffer;->getChars(II[CI)V

    goto :goto_1

    .line 271
    :cond_4
    instance-of v1, p2, Lcn/hutool/core/text/StrBuilder;

    if-eqz v1, :cond_5

    .line 272
    check-cast p2, Lcn/hutool/core/text/StrBuilder;

    iget-object v1, p0, Lcn/hutool/core/text/StrBuilder;->value:[C

    invoke-virtual {p2, v2, v0, v1, p1}, Lcn/hutool/core/text/StrBuilder;->getChars(II[CI)Lcn/hutool/core/text/StrBuilder;

    goto :goto_1

    .line 274
    :cond_5
    iget v1, p0, Lcn/hutool/core/text/StrBuilder;->position:I

    :goto_0
    if-ge v2, v0, :cond_6

    .line 275
    iget-object v3, p0, Lcn/hutool/core/text/StrBuilder;->value:[C

    invoke-interface {p2, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    aput-char v4, v3, v1

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 278
    :cond_6
    :goto_1
    iget p2, p0, Lcn/hutool/core/text/StrBuilder;->position:I

    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    add-int/2addr p1, v0

    iput p1, p0, Lcn/hutool/core/text/StrBuilder;->position:I

    return-object p0

    .line 257
    :cond_7
    new-instance p2, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {p2, p1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(I)V

    throw p2
.end method

.method public insert(ILjava/lang/CharSequence;II)Lcn/hutool/core/text/StrBuilder;
    .locals 4

    if-nez p2, :cond_0

    const-string p2, "null"

    .line 297
    :cond_0
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-le p3, v0, :cond_1

    return-object p0

    :cond_1
    if-gez p3, :cond_2

    const/4 p3, 0x0

    :cond_2
    if-le p4, v0, :cond_3

    move p4, v0

    :cond_3
    if-lt p3, p4, :cond_4

    return-object p0

    :cond_4
    if-gez p1, :cond_5

    .line 311
    iget v0, p0, Lcn/hutool/core/text/StrBuilder;->position:I

    add-int/2addr p1, v0

    :cond_5
    if-ltz p1, :cond_7

    sub-int v0, p4, p3

    .line 318
    invoke-direct {p0, p1, v0}, Lcn/hutool/core/text/StrBuilder;->moveDataAfterIndex(II)V

    .line 319
    iget v1, p0, Lcn/hutool/core/text/StrBuilder;->position:I

    :goto_0
    if-ge p3, p4, :cond_6

    .line 320
    iget-object v2, p0, Lcn/hutool/core/text/StrBuilder;->value:[C

    invoke-interface {p2, p3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    aput-char v3, v2, v1

    add-int/lit8 p3, p3, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 322
    :cond_6
    iget p2, p0, Lcn/hutool/core/text/StrBuilder;->position:I

    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    add-int/2addr p1, v0

    iput p1, p0, Lcn/hutool/core/text/StrBuilder;->position:I

    return-object p0

    .line 314
    :cond_7
    new-instance p2, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {p2, p1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(I)V

    throw p2
.end method

.method public insert(ILjava/lang/Object;)Lcn/hutool/core/text/StrBuilder;
    .locals 1

    .line 164
    instance-of v0, p2, Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    .line 165
    check-cast p2, Ljava/lang/CharSequence;

    invoke-virtual {p0, p1, p2}, Lcn/hutool/core/text/StrBuilder;->insert(ILjava/lang/CharSequence;)Lcn/hutool/core/text/StrBuilder;

    move-result-object p1

    return-object p1

    .line 167
    :cond_0
    invoke-static {p2}, Lcn/hutool/core/convert/Convert;->toStr(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcn/hutool/core/text/StrBuilder;->insert(ILjava/lang/CharSequence;)Lcn/hutool/core/text/StrBuilder;

    move-result-object p1

    return-object p1
.end method

.method public insert(I[C)Lcn/hutool/core/text/StrBuilder;
    .locals 2

    .line 201
    invoke-static {p2}, Lcn/hutool/core/util/ArrayUtil;->isEmpty([C)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    const/4 v0, 0x0

    .line 204
    array-length v1, p2

    invoke-virtual {p0, p1, p2, v0, v1}, Lcn/hutool/core/text/StrBuilder;->insert(I[CII)Lcn/hutool/core/text/StrBuilder;

    move-result-object p1

    return-object p1
.end method

.method public insert(I[CII)Lcn/hutool/core/text/StrBuilder;
    .locals 2

    .line 219
    invoke-static {p2}, Lcn/hutool/core/util/ArrayUtil;->isEmpty([C)Z

    move-result v0

    if-nez v0, :cond_5

    array-length v0, p2

    if-gt p3, v0, :cond_5

    if-gtz p4, :cond_0

    goto :goto_1

    :cond_0
    if-gez p1, :cond_1

    .line 223
    iget v0, p0, Lcn/hutool/core/text/StrBuilder;->position:I

    add-int/2addr p1, v0

    :cond_1
    if-ltz p1, :cond_4

    if-gez p3, :cond_2

    const/4 p3, 0x0

    goto :goto_0

    :cond_2
    add-int v0, p3, p4

    .line 231
    array-length v1, p2

    if-le v0, v1, :cond_3

    .line 233
    array-length p4, p2

    sub-int/2addr p4, p3

    .line 236
    :cond_3
    :goto_0
    invoke-direct {p0, p1, p4}, Lcn/hutool/core/text/StrBuilder;->moveDataAfterIndex(II)V

    .line 238
    iget-object v0, p0, Lcn/hutool/core/text/StrBuilder;->value:[C

    invoke-static {p2, p3, v0, p1, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 239
    iget p2, p0, Lcn/hutool/core/text/StrBuilder;->position:I

    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    add-int/2addr p1, p4

    iput p1, p0, Lcn/hutool/core/text/StrBuilder;->position:I

    return-object p0

    .line 226
    :cond_4
    new-instance p2, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {p2, p1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(I)V

    throw p2

    :cond_5
    :goto_1
    return-object p0
.end method

.method public isEmpty()Z
    .locals 1

    .line 368
    iget v0, p0, Lcn/hutool/core/text/StrBuilder;->position:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public length()I
    .locals 1

    .line 481
    iget v0, p0, Lcn/hutool/core/text/StrBuilder;->position:I

    return v0
.end method

.method public reset()Lcn/hutool/core/text/StrBuilder;
    .locals 1

    const/4 v0, 0x0

    .line 386
    iput v0, p0, Lcn/hutool/core/text/StrBuilder;->position:I

    return-object p0
.end method

.method public subSequence(II)Ljava/lang/CharSequence;
    .locals 0

    .line 497
    invoke-virtual {p0, p1, p2}, Lcn/hutool/core/text/StrBuilder;->subString(II)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public subString(I)Ljava/lang/String;
    .locals 1

    .line 507
    iget v0, p0, Lcn/hutool/core/text/StrBuilder;->position:I

    invoke-virtual {p0, p1, v0}, Lcn/hutool/core/text/StrBuilder;->subString(II)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public subString(II)Ljava/lang/String;
    .locals 2

    .line 518
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcn/hutool/core/text/StrBuilder;->value:[C

    sub-int/2addr p2, p1

    invoke-direct {v0, v1, p1, p2}, Ljava/lang/String;-><init>([CII)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 476
    invoke-virtual {p0, v0}, Lcn/hutool/core/text/StrBuilder;->toString(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString(Z)Ljava/lang/String;
    .locals 4

    .line 452
    iget v0, p0, Lcn/hutool/core/text/StrBuilder;->position:I

    if-lez v0, :cond_1

    .line 453
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcn/hutool/core/text/StrBuilder;->value:[C

    const/4 v2, 0x0

    iget v3, p0, Lcn/hutool/core/text/StrBuilder;->position:I

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    if-eqz p1, :cond_0

    .line 455
    invoke-virtual {p0}, Lcn/hutool/core/text/StrBuilder;->reset()Lcn/hutool/core/text/StrBuilder;

    :cond_0
    return-object v0

    :cond_1
    const-string p1, ""

    return-object p1
.end method

.method public toStringAndReset()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    .line 468
    invoke-virtual {p0, v0}, Lcn/hutool/core/text/StrBuilder;->toString(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
