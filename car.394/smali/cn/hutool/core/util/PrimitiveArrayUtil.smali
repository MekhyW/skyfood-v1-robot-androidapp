.class public Lcn/hutool/core/util/PrimitiveArrayUtil;
.super Ljava/lang/Object;
.source "PrimitiveArrayUtil.java"


# static fields
.field public static final INDEX_NOT_FOUND:I = -0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static varargs addAll([[B)[B
    .locals 7

    .line 216
    array-length v0, p0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    .line 217
    aget-object p0, p0, v2

    return-object p0

    .line 222
    :cond_0
    array-length v0, p0

    move v1, v2

    move v3, v1

    :goto_0
    if-ge v1, v0, :cond_2

    aget-object v4, p0, v1

    .line 223
    invoke-static {v4}, Lcn/hutool/core/util/PrimitiveArrayUtil;->isNotEmpty([B)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 224
    array-length v4, v4

    add-int/2addr v3, v4

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 228
    :cond_2
    new-array v0, v3, [B

    .line 230
    array-length v1, p0

    move v3, v2

    move v4, v3

    :goto_1
    if-ge v3, v1, :cond_4

    aget-object v5, p0, v3

    .line 231
    invoke-static {v5}, Lcn/hutool/core/util/PrimitiveArrayUtil;->isNotEmpty([B)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 232
    array-length v6, v5

    invoke-static {v5, v2, v0, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 233
    array-length v5, v5

    add-int/2addr v4, v5

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    return-object v0
.end method

.method public static varargs addAll([[C)[C
    .locals 7

    .line 376
    array-length v0, p0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    .line 377
    aget-object p0, p0, v2

    return-object p0

    .line 382
    :cond_0
    array-length v0, p0

    move v1, v2

    move v3, v1

    :goto_0
    if-ge v1, v0, :cond_2

    aget-object v4, p0, v1

    .line 383
    invoke-static {v4}, Lcn/hutool/core/util/PrimitiveArrayUtil;->isNotEmpty([C)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 384
    array-length v4, v4

    add-int/2addr v3, v4

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 388
    :cond_2
    new-array v0, v3, [C

    .line 390
    array-length v1, p0

    move v3, v2

    move v4, v3

    :goto_1
    if-ge v3, v1, :cond_4

    aget-object v5, p0, v3

    .line 391
    invoke-static {v5}, Lcn/hutool/core/util/PrimitiveArrayUtil;->isNotEmpty([C)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 392
    array-length v6, v5

    invoke-static {v5, v2, v0, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 393
    array-length v5, v5

    add-int/2addr v4, v5

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    return-object v0
.end method

.method public static varargs addAll([[D)[D
    .locals 7

    .line 312
    array-length v0, p0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    .line 313
    aget-object p0, p0, v2

    return-object p0

    .line 318
    :cond_0
    array-length v0, p0

    move v1, v2

    move v3, v1

    :goto_0
    if-ge v1, v0, :cond_2

    aget-object v4, p0, v1

    .line 319
    invoke-static {v4}, Lcn/hutool/core/util/PrimitiveArrayUtil;->isNotEmpty([D)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 320
    array-length v4, v4

    add-int/2addr v3, v4

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 324
    :cond_2
    new-array v0, v3, [D

    .line 326
    array-length v1, p0

    move v3, v2

    move v4, v3

    :goto_1
    if-ge v3, v1, :cond_4

    aget-object v5, p0, v3

    .line 327
    invoke-static {v5}, Lcn/hutool/core/util/PrimitiveArrayUtil;->isNotEmpty([D)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 328
    array-length v6, v5

    invoke-static {v5, v2, v0, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 329
    array-length v5, v5

    add-int/2addr v4, v5

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    return-object v0
.end method

.method public static varargs addAll([[F)[F
    .locals 7

    .line 344
    array-length v0, p0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    .line 345
    aget-object p0, p0, v2

    return-object p0

    .line 350
    :cond_0
    array-length v0, p0

    move v1, v2

    move v3, v1

    :goto_0
    if-ge v1, v0, :cond_2

    aget-object v4, p0, v1

    .line 351
    invoke-static {v4}, Lcn/hutool/core/util/PrimitiveArrayUtil;->isNotEmpty([F)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 352
    array-length v4, v4

    add-int/2addr v3, v4

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 356
    :cond_2
    new-array v0, v3, [F

    .line 358
    array-length v1, p0

    move v3, v2

    move v4, v3

    :goto_1
    if-ge v3, v1, :cond_4

    aget-object v5, p0, v3

    .line 359
    invoke-static {v5}, Lcn/hutool/core/util/PrimitiveArrayUtil;->isNotEmpty([F)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 360
    array-length v6, v5

    invoke-static {v5, v2, v0, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 361
    array-length v5, v5

    add-int/2addr v4, v5

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    return-object v0
.end method

.method public static varargs addAll([[I)[I
    .locals 7

    .line 248
    array-length v0, p0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    .line 249
    aget-object p0, p0, v2

    return-object p0

    .line 254
    :cond_0
    array-length v0, p0

    move v1, v2

    move v3, v1

    :goto_0
    if-ge v1, v0, :cond_2

    aget-object v4, p0, v1

    .line 255
    invoke-static {v4}, Lcn/hutool/core/util/PrimitiveArrayUtil;->isNotEmpty([I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 256
    array-length v4, v4

    add-int/2addr v3, v4

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 260
    :cond_2
    new-array v0, v3, [I

    .line 262
    array-length v1, p0

    move v3, v2

    move v4, v3

    :goto_1
    if-ge v3, v1, :cond_4

    aget-object v5, p0, v3

    .line 263
    invoke-static {v5}, Lcn/hutool/core/util/PrimitiveArrayUtil;->isNotEmpty([I)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 264
    array-length v6, v5

    invoke-static {v5, v2, v0, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 265
    array-length v5, v5

    add-int/2addr v4, v5

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    return-object v0
.end method

.method public static varargs addAll([[J)[J
    .locals 7

    .line 280
    array-length v0, p0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    .line 281
    aget-object p0, p0, v2

    return-object p0

    .line 286
    :cond_0
    array-length v0, p0

    move v1, v2

    move v3, v1

    :goto_0
    if-ge v1, v0, :cond_2

    aget-object v4, p0, v1

    .line 287
    invoke-static {v4}, Lcn/hutool/core/util/PrimitiveArrayUtil;->isNotEmpty([J)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 288
    array-length v4, v4

    add-int/2addr v3, v4

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 292
    :cond_2
    new-array v0, v3, [J

    .line 294
    array-length v1, p0

    move v3, v2

    move v4, v3

    :goto_1
    if-ge v3, v1, :cond_4

    aget-object v5, p0, v3

    .line 295
    invoke-static {v5}, Lcn/hutool/core/util/PrimitiveArrayUtil;->isNotEmpty([J)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 296
    array-length v6, v5

    invoke-static {v5, v2, v0, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 297
    array-length v5, v5

    add-int/2addr v4, v5

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    return-object v0
.end method

.method public static varargs addAll([[S)[S
    .locals 7

    .line 440
    array-length v0, p0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    .line 441
    aget-object p0, p0, v2

    return-object p0

    .line 446
    :cond_0
    array-length v0, p0

    move v1, v2

    move v3, v1

    :goto_0
    if-ge v1, v0, :cond_2

    aget-object v4, p0, v1

    .line 447
    invoke-static {v4}, Lcn/hutool/core/util/PrimitiveArrayUtil;->isNotEmpty([S)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 448
    array-length v4, v4

    add-int/2addr v3, v4

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 452
    :cond_2
    new-array v0, v3, [S

    .line 454
    array-length v1, p0

    move v3, v2

    move v4, v3

    :goto_1
    if-ge v3, v1, :cond_4

    aget-object v5, p0, v3

    .line 455
    invoke-static {v5}, Lcn/hutool/core/util/PrimitiveArrayUtil;->isNotEmpty([S)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 456
    array-length v6, v5

    invoke-static {v5, v2, v0, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 457
    array-length v5, v5

    add-int/2addr v4, v5

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    return-object v0
.end method

.method public static varargs addAll([[Z)[Z
    .locals 7

    .line 408
    array-length v0, p0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    .line 409
    aget-object p0, p0, v2

    return-object p0

    .line 414
    :cond_0
    array-length v0, p0

    move v1, v2

    move v3, v1

    :goto_0
    if-ge v1, v0, :cond_2

    aget-object v4, p0, v1

    .line 415
    invoke-static {v4}, Lcn/hutool/core/util/PrimitiveArrayUtil;->isNotEmpty([Z)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 416
    array-length v4, v4

    add-int/2addr v3, v4

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 420
    :cond_2
    new-array v0, v3, [Z

    .line 422
    array-length v1, p0

    move v3, v2

    move v4, v3

    :goto_1
    if-ge v3, v1, :cond_4

    aget-object v5, p0, v3

    .line 423
    invoke-static {v5}, Lcn/hutool/core/util/PrimitiveArrayUtil;->isNotEmpty([Z)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 424
    array-length v6, v5

    invoke-static {v5, v2, v0, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 425
    array-length v5, v5

    add-int/2addr v4, v5

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    return-object v0
.end method

.method public static contains([BB)Z
    .locals 0

    .line 800
    invoke-static {p0, p1}, Lcn/hutool/core/util/PrimitiveArrayUtil;->indexOf([BB)I

    move-result p0

    const/4 p1, -0x1

    if-le p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static contains([CC)Z
    .locals 0

    .line 750
    invoke-static {p0, p1}, Lcn/hutool/core/util/PrimitiveArrayUtil;->indexOf([CC)I

    move-result p0

    const/4 p1, -0x1

    if-le p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static contains([DD)Z
    .locals 0

    .line 850
    invoke-static {p0, p1, p2}, Lcn/hutool/core/util/PrimitiveArrayUtil;->indexOf([DD)I

    move-result p0

    const/4 p1, -0x1

    if-le p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static contains([FF)Z
    .locals 0

    .line 900
    invoke-static {p0, p1}, Lcn/hutool/core/util/PrimitiveArrayUtil;->indexOf([FF)I

    move-result p0

    const/4 p1, -0x1

    if-le p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static contains([II)Z
    .locals 0

    .line 650
    invoke-static {p0, p1}, Lcn/hutool/core/util/PrimitiveArrayUtil;->indexOf([II)I

    move-result p0

    const/4 p1, -0x1

    if-le p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static contains([JJ)Z
    .locals 0

    .line 600
    invoke-static {p0, p1, p2}, Lcn/hutool/core/util/PrimitiveArrayUtil;->indexOf([JJ)I

    move-result p0

    const/4 p1, -0x1

    if-le p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static contains([SS)Z
    .locals 0

    .line 700
    invoke-static {p0, p1}, Lcn/hutool/core/util/PrimitiveArrayUtil;->indexOf([SS)I

    move-result p0

    const/4 p1, -0x1

    if-le p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static contains([ZZ)Z
    .locals 0

    .line 950
    invoke-static {p0, p1}, Lcn/hutool/core/util/PrimitiveArrayUtil;->indexOf([ZZ)I

    move-result p0

    const/4 p1, -0x1

    if-le p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static indexOf([BB)I
    .locals 2

    .line 762
    invoke-static {p0}, Lcn/hutool/core/util/PrimitiveArrayUtil;->isNotEmpty([B)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 763
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_1

    .line 764
    aget-byte v1, p0, v0

    if-ne p1, v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public static indexOf([CC)I
    .locals 2

    .line 712
    invoke-static {p0}, Lcn/hutool/core/util/PrimitiveArrayUtil;->isNotEmpty([C)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 713
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_1

    .line 714
    aget-char v1, p0, v0

    if-ne p1, v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public static indexOf([DD)I
    .locals 3

    .line 812
    invoke-static {p0}, Lcn/hutool/core/util/PrimitiveArrayUtil;->isNotEmpty([D)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 813
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_1

    .line 814
    aget-wide v1, p0, v0

    invoke-static {p1, p2, v1, v2}, Lcn/hutool/core/util/NumberUtil;->equals(DD)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public static indexOf([FF)I
    .locals 2

    .line 862
    invoke-static {p0}, Lcn/hutool/core/util/PrimitiveArrayUtil;->isNotEmpty([F)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 863
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_1

    .line 864
    aget v1, p0, v0

    invoke-static {p1, v1}, Lcn/hutool/core/util/NumberUtil;->equals(FF)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public static indexOf([II)I
    .locals 2

    .line 612
    invoke-static {p0}, Lcn/hutool/core/util/PrimitiveArrayUtil;->isNotEmpty([I)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 613
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_1

    .line 614
    aget v1, p0, v0

    if-ne p1, v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public static indexOf([JJ)I
    .locals 3

    .line 562
    invoke-static {p0}, Lcn/hutool/core/util/PrimitiveArrayUtil;->isNotEmpty([J)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 563
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_1

    .line 564
    aget-wide v1, p0, v0

    cmp-long v1, p1, v1

    if-nez v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public static indexOf([SS)I
    .locals 2

    .line 662
    invoke-static {p0}, Lcn/hutool/core/util/PrimitiveArrayUtil;->isNotEmpty([S)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 663
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_1

    .line 664
    aget-short v1, p0, v0

    if-ne p1, v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public static indexOf([ZZ)I
    .locals 2

    .line 912
    invoke-static {p0}, Lcn/hutool/core/util/PrimitiveArrayUtil;->isNotEmpty([Z)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 913
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_1

    .line 914
    aget-boolean v1, p0, v0

    if-ne p1, v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public static isEmpty([B)Z
    .locals 0

    if-eqz p0, :cond_1

    .line 68
    array-length p0, p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static isEmpty([C)Z
    .locals 0

    if-eqz p0, :cond_1

    .line 58
    array-length p0, p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static isEmpty([D)Z
    .locals 0

    if-eqz p0, :cond_1

    .line 78
    array-length p0, p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static isEmpty([F)Z
    .locals 0

    if-eqz p0, :cond_1

    .line 88
    array-length p0, p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static isEmpty([I)Z
    .locals 0

    if-eqz p0, :cond_1

    .line 38
    array-length p0, p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static isEmpty([J)Z
    .locals 0

    if-eqz p0, :cond_1

    .line 28
    array-length p0, p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static isEmpty([S)Z
    .locals 0

    if-eqz p0, :cond_1

    .line 48
    array-length p0, p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static isEmpty([Z)Z
    .locals 0

    if-eqz p0, :cond_1

    .line 98
    array-length p0, p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static isNotEmpty([B)Z
    .locals 0

    .line 150
    invoke-static {p0}, Lcn/hutool/core/util/PrimitiveArrayUtil;->isEmpty([B)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static isNotEmpty([C)Z
    .locals 0

    .line 140
    invoke-static {p0}, Lcn/hutool/core/util/PrimitiveArrayUtil;->isEmpty([C)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static isNotEmpty([D)Z
    .locals 0

    .line 160
    invoke-static {p0}, Lcn/hutool/core/util/PrimitiveArrayUtil;->isEmpty([D)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static isNotEmpty([F)Z
    .locals 0

    .line 170
    invoke-static {p0}, Lcn/hutool/core/util/PrimitiveArrayUtil;->isEmpty([F)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static isNotEmpty([I)Z
    .locals 0

    .line 120
    invoke-static {p0}, Lcn/hutool/core/util/PrimitiveArrayUtil;->isEmpty([I)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static isNotEmpty([J)Z
    .locals 0

    .line 110
    invoke-static {p0}, Lcn/hutool/core/util/PrimitiveArrayUtil;->isEmpty([J)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static isNotEmpty([S)Z
    .locals 0

    .line 130
    invoke-static {p0}, Lcn/hutool/core/util/PrimitiveArrayUtil;->isEmpty([S)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static isNotEmpty([Z)Z
    .locals 0

    .line 180
    invoke-static {p0}, Lcn/hutool/core/util/PrimitiveArrayUtil;->isEmpty([Z)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static isSorted([B)Z
    .locals 0

    .line 2835
    invoke-static {p0}, Lcn/hutool/core/util/PrimitiveArrayUtil;->isSortedASC([B)Z

    move-result p0

    return p0
.end method

.method public static isSorted([C)Z
    .locals 0

    .line 2947
    invoke-static {p0}, Lcn/hutool/core/util/PrimitiveArrayUtil;->isSortedASC([C)Z

    move-result p0

    return p0
.end method

.method public static isSorted([D)Z
    .locals 0

    .line 3115
    invoke-static {p0}, Lcn/hutool/core/util/PrimitiveArrayUtil;->isSortedASC([D)Z

    move-result p0

    return p0
.end method

.method public static isSorted([F)Z
    .locals 0

    .line 3171
    invoke-static {p0}, Lcn/hutool/core/util/PrimitiveArrayUtil;->isSortedASC([F)Z

    move-result p0

    return p0
.end method

.method public static isSorted([I)Z
    .locals 0

    .line 3003
    invoke-static {p0}, Lcn/hutool/core/util/PrimitiveArrayUtil;->isSortedASC([I)Z

    move-result p0

    return p0
.end method

.method public static isSorted([J)Z
    .locals 0

    .line 3059
    invoke-static {p0}, Lcn/hutool/core/util/PrimitiveArrayUtil;->isSortedASC([J)Z

    move-result p0

    return p0
.end method

.method public static isSorted([S)Z
    .locals 0

    .line 2891
    invoke-static {p0}, Lcn/hutool/core/util/PrimitiveArrayUtil;->isSortedASC([S)Z

    move-result p0

    return p0
.end method

.method public static isSortedASC([B)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    move v1, v0

    .line 2851
    :cond_1
    array-length v2, p0

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    if-ge v1, v2, :cond_2

    .line 2852
    aget-byte v2, p0, v1

    add-int/lit8 v1, v1, 0x1

    aget-byte v3, p0, v1

    if-le v2, v3, :cond_1

    return v0

    :cond_2
    return v3
.end method

.method public static isSortedASC([C)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    move v1, v0

    .line 2963
    :cond_1
    array-length v2, p0

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    if-ge v1, v2, :cond_2

    .line 2964
    aget-char v2, p0, v1

    add-int/lit8 v1, v1, 0x1

    aget-char v3, p0, v1

    if-le v2, v3, :cond_1

    return v0

    :cond_2
    return v3
.end method

.method public static isSortedASC([D)Z
    .locals 6

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    move v1, v0

    .line 3131
    :cond_1
    array-length v2, p0

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    if-ge v1, v2, :cond_2

    .line 3132
    aget-wide v2, p0, v1

    add-int/lit8 v1, v1, 0x1

    aget-wide v4, p0, v1

    cmpl-double v2, v2, v4

    if-lez v2, :cond_1

    return v0

    :cond_2
    return v3
.end method

.method public static isSortedASC([F)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    move v1, v0

    .line 3187
    :cond_1
    array-length v2, p0

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    if-ge v1, v2, :cond_2

    .line 3188
    aget v2, p0, v1

    add-int/lit8 v1, v1, 0x1

    aget v3, p0, v1

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1

    return v0

    :cond_2
    return v3
.end method

.method public static isSortedASC([I)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    move v1, v0

    .line 3019
    :cond_1
    array-length v2, p0

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    if-ge v1, v2, :cond_2

    .line 3020
    aget v2, p0, v1

    add-int/lit8 v1, v1, 0x1

    aget v3, p0, v1

    if-le v2, v3, :cond_1

    return v0

    :cond_2
    return v3
.end method

.method public static isSortedASC([J)Z
    .locals 6

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    move v1, v0

    .line 3075
    :cond_1
    array-length v2, p0

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    if-ge v1, v2, :cond_2

    .line 3076
    aget-wide v2, p0, v1

    add-int/lit8 v1, v1, 0x1

    aget-wide v4, p0, v1

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    return v0

    :cond_2
    return v3
.end method

.method public static isSortedASC([S)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    move v1, v0

    .line 2907
    :cond_1
    array-length v2, p0

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    if-ge v1, v2, :cond_2

    .line 2908
    aget-short v2, p0, v1

    add-int/lit8 v1, v1, 0x1

    aget-short v3, p0, v1

    if-le v2, v3, :cond_1

    return v0

    :cond_2
    return v3
.end method

.method public static isSortedDESC([B)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    move v1, v0

    .line 2873
    :cond_1
    array-length v2, p0

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    if-ge v1, v2, :cond_2

    .line 2874
    aget-byte v2, p0, v1

    add-int/lit8 v1, v1, 0x1

    aget-byte v3, p0, v1

    if-ge v2, v3, :cond_1

    return v0

    :cond_2
    return v3
.end method

.method public static isSortedDESC([C)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    move v1, v0

    .line 2985
    :cond_1
    array-length v2, p0

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    if-ge v1, v2, :cond_2

    .line 2986
    aget-char v2, p0, v1

    add-int/lit8 v1, v1, 0x1

    aget-char v3, p0, v1

    if-ge v2, v3, :cond_1

    return v0

    :cond_2
    return v3
.end method

.method public static isSortedDESC([D)Z
    .locals 6

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    move v1, v0

    .line 3153
    :cond_1
    array-length v2, p0

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    if-ge v1, v2, :cond_2

    .line 3154
    aget-wide v2, p0, v1

    add-int/lit8 v1, v1, 0x1

    aget-wide v4, p0, v1

    cmpg-double v2, v2, v4

    if-gez v2, :cond_1

    return v0

    :cond_2
    return v3
.end method

.method public static isSortedDESC([F)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    move v1, v0

    .line 3209
    :cond_1
    array-length v2, p0

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    if-ge v1, v2, :cond_2

    .line 3210
    aget v2, p0, v1

    add-int/lit8 v1, v1, 0x1

    aget v3, p0, v1

    cmpg-float v2, v2, v3

    if-gez v2, :cond_1

    return v0

    :cond_2
    return v3
.end method

.method public static isSortedDESC([I)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    move v1, v0

    .line 3041
    :cond_1
    array-length v2, p0

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    if-ge v1, v2, :cond_2

    .line 3042
    aget v2, p0, v1

    add-int/lit8 v1, v1, 0x1

    aget v3, p0, v1

    if-ge v2, v3, :cond_1

    return v0

    :cond_2
    return v3
.end method

.method public static isSortedDESC([J)Z
    .locals 6

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    move v1, v0

    .line 3097
    :cond_1
    array-length v2, p0

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    if-ge v1, v2, :cond_2

    .line 3098
    aget-wide v2, p0, v1

    add-int/lit8 v1, v1, 0x1

    aget-wide v4, p0, v1

    cmp-long v2, v2, v4

    if-gez v2, :cond_1

    return v0

    :cond_2
    return v3
.end method

.method public static isSortedDESC([S)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    move v1, v0

    .line 2929
    :cond_1
    array-length v2, p0

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    if-ge v1, v2, :cond_2

    .line 2930
    aget-short v2, p0, v1

    add-int/lit8 v1, v1, 0x1

    aget-short v3, p0, v1

    if-ge v2, v3, :cond_1

    return v0

    :cond_2
    return v3
.end method

.method public static lastIndexOf([BB)I
    .locals 2

    .line 781
    invoke-static {p0}, Lcn/hutool/core/util/PrimitiveArrayUtil;->isNotEmpty([B)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 782
    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 783
    aget-byte v1, p0, v0

    if-ne p1, v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public static lastIndexOf([CC)I
    .locals 2

    .line 731
    invoke-static {p0}, Lcn/hutool/core/util/PrimitiveArrayUtil;->isNotEmpty([C)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 732
    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 733
    aget-char v1, p0, v0

    if-ne p1, v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public static lastIndexOf([DD)I
    .locals 3

    .line 831
    invoke-static {p0}, Lcn/hutool/core/util/PrimitiveArrayUtil;->isNotEmpty([D)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 832
    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 833
    aget-wide v1, p0, v0

    invoke-static {p1, p2, v1, v2}, Lcn/hutool/core/util/NumberUtil;->equals(DD)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public static lastIndexOf([FF)I
    .locals 2

    .line 881
    invoke-static {p0}, Lcn/hutool/core/util/PrimitiveArrayUtil;->isNotEmpty([F)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 882
    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 883
    aget v1, p0, v0

    invoke-static {p1, v1}, Lcn/hutool/core/util/NumberUtil;->equals(FF)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public static lastIndexOf([II)I
    .locals 2

    .line 631
    invoke-static {p0}, Lcn/hutool/core/util/PrimitiveArrayUtil;->isNotEmpty([I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 632
    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 633
    aget v1, p0, v0

    if-ne p1, v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public static lastIndexOf([JJ)I
    .locals 3

    .line 581
    invoke-static {p0}, Lcn/hutool/core/util/PrimitiveArrayUtil;->isNotEmpty([J)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 582
    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 583
    aget-wide v1, p0, v0

    cmp-long v1, p1, v1

    if-nez v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public static lastIndexOf([SS)I
    .locals 2

    .line 681
    invoke-static {p0}, Lcn/hutool/core/util/PrimitiveArrayUtil;->isNotEmpty([S)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 682
    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 683
    aget-short v1, p0, v0

    if-ne p1, v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public static lastIndexOf([ZZ)I
    .locals 2

    .line 931
    invoke-static {p0}, Lcn/hutool/core/util/PrimitiveArrayUtil;->isNotEmpty([Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 932
    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 933
    aget-boolean v1, p0, v0

    if-ne p1, v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public static varargs max([B)B
    .locals 3

    .line 2352
    invoke-static {p0}, Lcn/hutool/core/util/PrimitiveArrayUtil;->isEmpty([B)Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    .line 2355
    aget-byte v0, p0, v0

    const/4 v1, 0x1

    .line 2356
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    .line 2357
    aget-byte v2, p0, v1

    if-ge v0, v2, :cond_0

    move v0, v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0

    .line 2353
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Number array must not empty !"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static varargs max([C)C
    .locals 3

    .line 2332
    invoke-static {p0}, Lcn/hutool/core/util/PrimitiveArrayUtil;->isEmpty([C)Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    .line 2335
    aget-char v0, p0, v0

    const/4 v1, 0x1

    .line 2336
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    .line 2337
    aget-char v2, p0, v1

    if-ge v0, v2, :cond_0

    move v0, v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0

    .line 2333
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Number array must not empty !"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static varargs max([D)D
    .locals 6

    .line 2372
    invoke-static {p0}, Lcn/hutool/core/util/PrimitiveArrayUtil;->isEmpty([D)Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    .line 2375
    aget-wide v0, p0, v0

    const/4 v2, 0x1

    .line 2376
    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_1

    .line 2377
    aget-wide v3, p0, v2

    cmpg-double v5, v0, v3

    if-gez v5, :cond_0

    move-wide v0, v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-wide v0

    .line 2373
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Number array must not empty !"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static varargs max([F)F
    .locals 4

    .line 2392
    invoke-static {p0}, Lcn/hutool/core/util/PrimitiveArrayUtil;->isEmpty([F)Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    .line 2395
    aget v0, p0, v0

    const/4 v1, 0x1

    .line 2396
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    .line 2397
    aget v2, p0, v1

    cmpg-float v3, v0, v2

    if-gez v3, :cond_0

    move v0, v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0

    .line 2393
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Number array must not empty !"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static varargs max([I)I
    .locals 3

    .line 2292
    invoke-static {p0}, Lcn/hutool/core/util/PrimitiveArrayUtil;->isEmpty([I)Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    .line 2295
    aget v0, p0, v0

    const/4 v1, 0x1

    .line 2296
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    .line 2297
    aget v2, p0, v1

    if-ge v0, v2, :cond_0

    move v0, v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0

    .line 2293
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Number array must not empty !"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static varargs max([J)J
    .locals 6

    .line 2272
    invoke-static {p0}, Lcn/hutool/core/util/PrimitiveArrayUtil;->isEmpty([J)Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    .line 2275
    aget-wide v0, p0, v0

    const/4 v2, 0x1

    .line 2276
    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_1

    .line 2277
    aget-wide v3, p0, v2

    cmp-long v5, v0, v3

    if-gez v5, :cond_0

    move-wide v0, v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-wide v0

    .line 2273
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Number array must not empty !"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static varargs max([S)S
    .locals 3

    .line 2312
    invoke-static {p0}, Lcn/hutool/core/util/PrimitiveArrayUtil;->isEmpty([S)Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    .line 2315
    aget-short v0, p0, v0

    const/4 v1, 0x1

    .line 2316
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    .line 2317
    aget-short v2, p0, v1

    if-ge v0, v2, :cond_0

    move v0, v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0

    .line 2313
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Number array must not empty !"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static varargs min([B)B
    .locals 3

    .line 2212
    invoke-static {p0}, Lcn/hutool/core/util/PrimitiveArrayUtil;->isEmpty([B)Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    .line 2215
    aget-byte v0, p0, v0

    const/4 v1, 0x1

    .line 2216
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    .line 2217
    aget-byte v2, p0, v1

    if-le v0, v2, :cond_0

    move v0, v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0

    .line 2213
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Number array must not empty !"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static varargs min([C)C
    .locals 3

    .line 2192
    invoke-static {p0}, Lcn/hutool/core/util/PrimitiveArrayUtil;->isEmpty([C)Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    .line 2195
    aget-char v0, p0, v0

    const/4 v1, 0x1

    .line 2196
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    .line 2197
    aget-char v2, p0, v1

    if-le v0, v2, :cond_0

    move v0, v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0

    .line 2193
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Number array must not empty !"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static varargs min([D)D
    .locals 6

    .line 2232
    invoke-static {p0}, Lcn/hutool/core/util/PrimitiveArrayUtil;->isEmpty([D)Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    .line 2235
    aget-wide v0, p0, v0

    const/4 v2, 0x1

    .line 2236
    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_1

    .line 2237
    aget-wide v3, p0, v2

    cmpl-double v5, v0, v3

    if-lez v5, :cond_0

    move-wide v0, v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-wide v0

    .line 2233
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Number array must not empty !"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static varargs min([F)F
    .locals 4

    .line 2252
    invoke-static {p0}, Lcn/hutool/core/util/PrimitiveArrayUtil;->isEmpty([F)Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    .line 2255
    aget v0, p0, v0

    const/4 v1, 0x1

    .line 2256
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    .line 2257
    aget v2, p0, v1

    cmpl-float v3, v0, v2

    if-lez v3, :cond_0

    move v0, v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0

    .line 2253
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Number array must not empty !"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static varargs min([I)I
    .locals 3

    .line 2152
    invoke-static {p0}, Lcn/hutool/core/util/PrimitiveArrayUtil;->isEmpty([I)Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    .line 2155
    aget v0, p0, v0

    const/4 v1, 0x1

    .line 2156
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    .line 2157
    aget v2, p0, v1

    if-le v0, v2, :cond_0

    move v0, v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0

    .line 2153
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Number array must not empty !"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static varargs min([J)J
    .locals 6

    .line 2132
    invoke-static {p0}, Lcn/hutool/core/util/PrimitiveArrayUtil;->isEmpty([J)Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    .line 2135
    aget-wide v0, p0, v0

    const/4 v2, 0x1

    .line 2136
    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_1

    .line 2137
    aget-wide v3, p0, v2

    cmp-long v5, v0, v3

    if-lez v5, :cond_0

    move-wide v0, v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-wide v0

    .line 2133
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Number array must not empty !"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static varargs min([S)S
    .locals 3

    .line 2172
    invoke-static {p0}, Lcn/hutool/core/util/PrimitiveArrayUtil;->isEmpty([S)Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    .line 2175
    aget-short v0, p0, v0

    const/4 v1, 0x1

    .line 2176
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    .line 2177
    aget-short v2, p0, v1

    if-le v0, v2, :cond_0

    move v0, v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0

    .line 2173
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Number array must not empty !"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static range(I)[I
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 472
    invoke-static {v0, p0, v1}, Lcn/hutool/core/util/PrimitiveArrayUtil;->range(III)[I

    move-result-object p0

    return-object p0
.end method

.method public static range(II)[I
    .locals 1

    const/4 v0, 0x1

    .line 484
    invoke-static {p0, p1, v0}, Lcn/hutool/core/util/PrimitiveArrayUtil;->range(III)[I

    move-result-object p0

    return-object p0
.end method

.method public static range(III)[I
    .locals 3

    if-le p0, p1, :cond_0

    move v2, p1

    move p1, p0

    move p0, v2

    :cond_0
    if-gtz p2, :cond_1

    const/4 p2, 0x1

    :cond_1
    sub-int/2addr p1, p0

    .line 508
    div-int v0, p1, p2

    .line 509
    rem-int/2addr p1, p2

    if-eqz p1, :cond_2

    add-int/lit8 v0, v0, 0x1

    .line 512
    :cond_2
    new-array p1, v0, [I

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    .line 514
    aput p0, p1, v1

    add-int/2addr p0, p2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-object p1
.end method

.method public static remove(Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1719
    :cond_0
    invoke-static {p0}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    if-ltz p1, :cond_3

    if-lt p1, v0, :cond_1

    goto :goto_0

    .line 1724
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    add-int/lit8 v2, v0, -0x1

    invoke-static {v1, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v1

    const/4 v3, 0x0

    .line 1725
    invoke-static {p0, v3, v1, v3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    if-ge p1, v2, :cond_2

    add-int/lit8 v2, p1, 0x1

    sub-int/2addr v0, p1

    add-int/lit8 v0, v0, -0x1

    .line 1728
    invoke-static {p0, v2, v1, p1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_2
    return-object v1

    :cond_3
    :goto_0
    return-object p0
.end method

.method public static remove([BI)[B
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 1659
    invoke-static {p0, p1}, Lcn/hutool/core/util/PrimitiveArrayUtil;->remove(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B

    check-cast p0, [B

    return-object p0
.end method

.method public static remove([CI)[C
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 1645
    invoke-static {p0, p1}, Lcn/hutool/core/util/PrimitiveArrayUtil;->remove(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [C

    check-cast p0, [C

    return-object p0
.end method

.method public static remove([DI)[D
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 1673
    invoke-static {p0, p1}, Lcn/hutool/core/util/PrimitiveArrayUtil;->remove(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [D

    check-cast p0, [D

    return-object p0
.end method

.method public static remove([FI)[F
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 1687
    invoke-static {p0, p1}, Lcn/hutool/core/util/PrimitiveArrayUtil;->remove(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [F

    check-cast p0, [F

    return-object p0
.end method

.method public static remove([II)[I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 1617
    invoke-static {p0, p1}, Lcn/hutool/core/util/PrimitiveArrayUtil;->remove(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    check-cast p0, [I

    return-object p0
.end method

.method public static remove([JI)[J
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 1603
    invoke-static {p0, p1}, Lcn/hutool/core/util/PrimitiveArrayUtil;->remove(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [J

    check-cast p0, [J

    return-object p0
.end method

.method public static remove([SI)[S
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 1631
    invoke-static {p0, p1}, Lcn/hutool/core/util/PrimitiveArrayUtil;->remove(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [S

    check-cast p0, [S

    return-object p0
.end method

.method public static remove([ZI)[Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 1701
    invoke-static {p0, p1}, Lcn/hutool/core/util/PrimitiveArrayUtil;->remove(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Z

    check-cast p0, [Z

    return-object p0
.end method

.method public static removeEle([BB)[B
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 1803
    invoke-static {p0, p1}, Lcn/hutool/core/util/PrimitiveArrayUtil;->indexOf([BB)I

    move-result p1

    invoke-static {p0, p1}, Lcn/hutool/core/util/PrimitiveArrayUtil;->remove([BI)[B

    move-result-object p0

    return-object p0
.end method

.method public static removeEle([CC)[C
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 1789
    invoke-static {p0, p1}, Lcn/hutool/core/util/PrimitiveArrayUtil;->indexOf([CC)I

    move-result p1

    invoke-static {p0, p1}, Lcn/hutool/core/util/PrimitiveArrayUtil;->remove([CI)[C

    move-result-object p0

    return-object p0
.end method

.method public static removeEle([DD)[D
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 1817
    invoke-static {p0, p1, p2}, Lcn/hutool/core/util/PrimitiveArrayUtil;->indexOf([DD)I

    move-result p1

    invoke-static {p0, p1}, Lcn/hutool/core/util/PrimitiveArrayUtil;->remove([DI)[D

    move-result-object p0

    return-object p0
.end method

.method public static removeEle([FF)[F
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 1831
    invoke-static {p0, p1}, Lcn/hutool/core/util/PrimitiveArrayUtil;->indexOf([FF)I

    move-result p1

    invoke-static {p0, p1}, Lcn/hutool/core/util/PrimitiveArrayUtil;->remove([FI)[F

    move-result-object p0

    return-object p0
.end method

.method public static removeEle([II)[I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 1761
    invoke-static {p0, p1}, Lcn/hutool/core/util/PrimitiveArrayUtil;->indexOf([II)I

    move-result p1

    invoke-static {p0, p1}, Lcn/hutool/core/util/PrimitiveArrayUtil;->remove([II)[I

    move-result-object p0

    return-object p0
.end method

.method public static removeEle([JJ)[J
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 1747
    invoke-static {p0, p1, p2}, Lcn/hutool/core/util/PrimitiveArrayUtil;->indexOf([JJ)I

    move-result p1

    invoke-static {p0, p1}, Lcn/hutool/core/util/PrimitiveArrayUtil;->remove([JI)[J

    move-result-object p0

    return-object p0
.end method

.method public static removeEle([SS)[S
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 1775
    invoke-static {p0, p1}, Lcn/hutool/core/util/PrimitiveArrayUtil;->indexOf([SS)I

    move-result p1

    invoke-static {p0, p1}, Lcn/hutool/core/util/PrimitiveArrayUtil;->remove([SI)[S

    move-result-object p0

    return-object p0
.end method

.method public static removeEle([ZZ)[Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 1845
    invoke-static {p0, p1}, Lcn/hutool/core/util/PrimitiveArrayUtil;->indexOf([ZZ)I

    move-result p1

    invoke-static {p0, p1}, Lcn/hutool/core/util/PrimitiveArrayUtil;->remove([ZI)[Z

    move-result-object p0

    return-object p0
.end method

.method public static resize([BI)[B
    .locals 2

    if-gez p1, :cond_0

    return-object p0

    .line 198
    :cond_0
    new-array v0, p1, [B

    if-lez p1, :cond_1

    .line 199
    invoke-static {p0}, Lcn/hutool/core/util/PrimitiveArrayUtil;->isNotEmpty([B)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 200
    array-length v1, p0

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    const/4 v1, 0x0

    invoke-static {p0, v1, v0, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    return-object v0
.end method

.method public static reverse([B)[B
    .locals 2

    const/4 v0, 0x0

    .line 2017
    array-length v1, p0

    invoke-static {p0, v0, v1}, Lcn/hutool/core/util/PrimitiveArrayUtil;->reverse([BII)[B

    move-result-object p0

    return-object p0
.end method

.method public static reverse([BII)[B
    .locals 1

    .line 1996
    invoke-static {p0}, Lcn/hutool/core/util/PrimitiveArrayUtil;->isEmpty([B)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    const/4 v0, 0x0

    .line 1999
    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 2000
    array-length v0, p0

    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    :goto_0
    if-le p2, p1, :cond_1

    .line 2002
    invoke-static {p0, p1, p2}, Lcn/hutool/core/util/PrimitiveArrayUtil;->swap([BII)[B

    add-int/lit8 p2, p2, -0x1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method public static reverse([C)[C
    .locals 2

    const/4 v0, 0x0

    .line 1983
    array-length v1, p0

    invoke-static {p0, v0, v1}, Lcn/hutool/core/util/PrimitiveArrayUtil;->reverse([CII)[C

    move-result-object p0

    return-object p0
.end method

.method public static reverse([CII)[C
    .locals 1

    .line 1962
    invoke-static {p0}, Lcn/hutool/core/util/PrimitiveArrayUtil;->isEmpty([C)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    const/4 v0, 0x0

    .line 1965
    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 1966
    array-length v0, p0

    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    :goto_0
    if-le p2, p1, :cond_1

    .line 1968
    invoke-static {p0, p1, p2}, Lcn/hutool/core/util/PrimitiveArrayUtil;->swap([CII)[C

    add-int/lit8 p2, p2, -0x1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method public static reverse([D)[D
    .locals 2

    const/4 v0, 0x0

    .line 2051
    array-length v1, p0

    invoke-static {p0, v0, v1}, Lcn/hutool/core/util/PrimitiveArrayUtil;->reverse([DII)[D

    move-result-object p0

    return-object p0
.end method

.method public static reverse([DII)[D
    .locals 1

    .line 2030
    invoke-static {p0}, Lcn/hutool/core/util/PrimitiveArrayUtil;->isEmpty([D)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    const/4 v0, 0x0

    .line 2033
    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 2034
    array-length v0, p0

    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    :goto_0
    if-le p2, p1, :cond_1

    .line 2036
    invoke-static {p0, p1, p2}, Lcn/hutool/core/util/PrimitiveArrayUtil;->swap([DII)[D

    add-int/lit8 p2, p2, -0x1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method public static reverse([F)[F
    .locals 2

    const/4 v0, 0x0

    .line 2085
    array-length v1, p0

    invoke-static {p0, v0, v1}, Lcn/hutool/core/util/PrimitiveArrayUtil;->reverse([FII)[F

    move-result-object p0

    return-object p0
.end method

.method public static reverse([FII)[F
    .locals 1

    .line 2064
    invoke-static {p0}, Lcn/hutool/core/util/PrimitiveArrayUtil;->isEmpty([F)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    const/4 v0, 0x0

    .line 2067
    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 2068
    array-length v0, p0

    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    :goto_0
    if-le p2, p1, :cond_1

    .line 2070
    invoke-static {p0, p1, p2}, Lcn/hutool/core/util/PrimitiveArrayUtil;->swap([FII)[F

    add-int/lit8 p2, p2, -0x1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method public static reverse([I)[I
    .locals 2

    const/4 v0, 0x0

    .line 1915
    array-length v1, p0

    invoke-static {p0, v0, v1}, Lcn/hutool/core/util/PrimitiveArrayUtil;->reverse([III)[I

    move-result-object p0

    return-object p0
.end method

.method public static reverse([III)[I
    .locals 1

    .line 1894
    invoke-static {p0}, Lcn/hutool/core/util/PrimitiveArrayUtil;->isEmpty([I)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    const/4 v0, 0x0

    .line 1897
    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 1898
    array-length v0, p0

    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    :goto_0
    if-le p2, p1, :cond_1

    .line 1900
    invoke-static {p0, p1, p2}, Lcn/hutool/core/util/PrimitiveArrayUtil;->swap([III)[I

    add-int/lit8 p2, p2, -0x1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method public static reverse([J)[J
    .locals 2

    const/4 v0, 0x0

    .line 1881
    array-length v1, p0

    invoke-static {p0, v0, v1}, Lcn/hutool/core/util/PrimitiveArrayUtil;->reverse([JII)[J

    move-result-object p0

    return-object p0
.end method

.method public static reverse([JII)[J
    .locals 1

    .line 1860
    invoke-static {p0}, Lcn/hutool/core/util/PrimitiveArrayUtil;->isEmpty([J)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    const/4 v0, 0x0

    .line 1863
    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 1864
    array-length v0, p0

    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    :goto_0
    if-le p2, p1, :cond_1

    .line 1866
    invoke-static {p0, p1, p2}, Lcn/hutool/core/util/PrimitiveArrayUtil;->swap([JII)[J

    add-int/lit8 p2, p2, -0x1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method public static reverse([S)[S
    .locals 2

    const/4 v0, 0x0

    .line 1949
    array-length v1, p0

    invoke-static {p0, v0, v1}, Lcn/hutool/core/util/PrimitiveArrayUtil;->reverse([SII)[S

    move-result-object p0

    return-object p0
.end method

.method public static reverse([SII)[S
    .locals 1

    .line 1928
    invoke-static {p0}, Lcn/hutool/core/util/PrimitiveArrayUtil;->isEmpty([S)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    const/4 v0, 0x0

    .line 1931
    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 1932
    array-length v0, p0

    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    :goto_0
    if-le p2, p1, :cond_1

    .line 1934
    invoke-static {p0, p1, p2}, Lcn/hutool/core/util/PrimitiveArrayUtil;->swap([SII)[S

    add-int/lit8 p2, p2, -0x1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method public static reverse([Z)[Z
    .locals 2

    const/4 v0, 0x0

    .line 2119
    array-length v1, p0

    invoke-static {p0, v0, v1}, Lcn/hutool/core/util/PrimitiveArrayUtil;->reverse([ZII)[Z

    move-result-object p0

    return-object p0
.end method

.method public static reverse([ZII)[Z
    .locals 1

    .line 2098
    invoke-static {p0}, Lcn/hutool/core/util/PrimitiveArrayUtil;->isEmpty([Z)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    const/4 v0, 0x0

    .line 2101
    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 2102
    array-length v0, p0

    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    :goto_0
    if-le p2, p1, :cond_1

    .line 2104
    invoke-static {p0, p1, p2}, Lcn/hutool/core/util/PrimitiveArrayUtil;->swap([ZII)[Z

    add-int/lit8 p2, p2, -0x1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method public static shuffle([B)[B
    .locals 1

    .line 2580
    invoke-static {}, Lcn/hutool/core/util/RandomUtil;->getRandom()Ljava/util/concurrent/ThreadLocalRandom;

    move-result-object v0

    invoke-static {p0, v0}, Lcn/hutool/core/util/PrimitiveArrayUtil;->shuffle([BLjava/util/Random;)[B

    move-result-object p0

    return-object p0
.end method

.method public static shuffle([BLjava/util/Random;)[B
    .locals 4

    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    .line 2593
    array-length v0, p0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    goto :goto_1

    .line 2597
    :cond_0
    array-length v0, p0

    :goto_0
    if-le v0, v1, :cond_1

    add-int/lit8 v2, v0, -0x1

    .line 2598
    invoke-virtual {p1, v0}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    invoke-static {p0, v2, v3}, Lcn/hutool/core/util/PrimitiveArrayUtil;->swap([BII)[B

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-object p0
.end method

.method public static shuffle([C)[C
    .locals 1

    .line 2613
    invoke-static {}, Lcn/hutool/core/util/RandomUtil;->getRandom()Ljava/util/concurrent/ThreadLocalRandom;

    move-result-object v0

    invoke-static {p0, v0}, Lcn/hutool/core/util/PrimitiveArrayUtil;->shuffle([CLjava/util/Random;)[C

    move-result-object p0

    return-object p0
.end method

.method public static shuffle([CLjava/util/Random;)[C
    .locals 4

    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    .line 2626
    array-length v0, p0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    goto :goto_1

    .line 2630
    :cond_0
    array-length v0, p0

    :goto_0
    if-le v0, v1, :cond_1

    add-int/lit8 v2, v0, -0x1

    .line 2631
    invoke-virtual {p1, v0}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    invoke-static {p0, v2, v3}, Lcn/hutool/core/util/PrimitiveArrayUtil;->swap([CII)[C

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-object p0
.end method

.method public static shuffle([D)[D
    .locals 1

    .line 2481
    invoke-static {}, Lcn/hutool/core/util/RandomUtil;->getRandom()Ljava/util/concurrent/ThreadLocalRandom;

    move-result-object v0

    invoke-static {p0, v0}, Lcn/hutool/core/util/PrimitiveArrayUtil;->shuffle([DLjava/util/Random;)[D

    move-result-object p0

    return-object p0
.end method

.method public static shuffle([DLjava/util/Random;)[D
    .locals 4

    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    .line 2494
    array-length v0, p0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    goto :goto_1

    .line 2498
    :cond_0
    array-length v0, p0

    :goto_0
    if-le v0, v1, :cond_1

    add-int/lit8 v2, v0, -0x1

    .line 2499
    invoke-virtual {p1, v0}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    invoke-static {p0, v2, v3}, Lcn/hutool/core/util/PrimitiveArrayUtil;->swap([DII)[D

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-object p0
.end method

.method public static shuffle([F)[F
    .locals 1

    .line 2514
    invoke-static {}, Lcn/hutool/core/util/RandomUtil;->getRandom()Ljava/util/concurrent/ThreadLocalRandom;

    move-result-object v0

    invoke-static {p0, v0}, Lcn/hutool/core/util/PrimitiveArrayUtil;->shuffle([FLjava/util/Random;)[F

    move-result-object p0

    return-object p0
.end method

.method public static shuffle([FLjava/util/Random;)[F
    .locals 4

    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    .line 2527
    array-length v0, p0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    goto :goto_1

    .line 2531
    :cond_0
    array-length v0, p0

    :goto_0
    if-le v0, v1, :cond_1

    add-int/lit8 v2, v0, -0x1

    .line 2532
    invoke-virtual {p1, v0}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    invoke-static {p0, v2, v3}, Lcn/hutool/core/util/PrimitiveArrayUtil;->swap([FII)[F

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-object p0
.end method

.method public static shuffle([I)[I
    .locals 1

    .line 2415
    invoke-static {}, Lcn/hutool/core/util/RandomUtil;->getRandom()Ljava/util/concurrent/ThreadLocalRandom;

    move-result-object v0

    invoke-static {p0, v0}, Lcn/hutool/core/util/PrimitiveArrayUtil;->shuffle([ILjava/util/Random;)[I

    move-result-object p0

    return-object p0
.end method

.method public static shuffle([ILjava/util/Random;)[I
    .locals 4

    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    .line 2428
    array-length v0, p0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    goto :goto_1

    .line 2432
    :cond_0
    array-length v0, p0

    :goto_0
    if-le v0, v1, :cond_1

    add-int/lit8 v2, v0, -0x1

    .line 2433
    invoke-virtual {p1, v0}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    invoke-static {p0, v2, v3}, Lcn/hutool/core/util/PrimitiveArrayUtil;->swap([III)[I

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-object p0
.end method

.method public static shuffle([J)[J
    .locals 1

    .line 2448
    invoke-static {}, Lcn/hutool/core/util/RandomUtil;->getRandom()Ljava/util/concurrent/ThreadLocalRandom;

    move-result-object v0

    invoke-static {p0, v0}, Lcn/hutool/core/util/PrimitiveArrayUtil;->shuffle([JLjava/util/Random;)[J

    move-result-object p0

    return-object p0
.end method

.method public static shuffle([JLjava/util/Random;)[J
    .locals 4

    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    .line 2461
    array-length v0, p0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    goto :goto_1

    .line 2465
    :cond_0
    array-length v0, p0

    :goto_0
    if-le v0, v1, :cond_1

    add-int/lit8 v2, v0, -0x1

    .line 2466
    invoke-virtual {p1, v0}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    invoke-static {p0, v2, v3}, Lcn/hutool/core/util/PrimitiveArrayUtil;->swap([JII)[J

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-object p0
.end method

.method public static shuffle([S)[S
    .locals 1

    .line 2646
    invoke-static {}, Lcn/hutool/core/util/RandomUtil;->getRandom()Ljava/util/concurrent/ThreadLocalRandom;

    move-result-object v0

    invoke-static {p0, v0}, Lcn/hutool/core/util/PrimitiveArrayUtil;->shuffle([SLjava/util/Random;)[S

    move-result-object p0

    return-object p0
.end method

.method public static shuffle([SLjava/util/Random;)[S
    .locals 4

    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    .line 2659
    array-length v0, p0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    goto :goto_1

    .line 2663
    :cond_0
    array-length v0, p0

    :goto_0
    if-le v0, v1, :cond_1

    add-int/lit8 v2, v0, -0x1

    .line 2664
    invoke-virtual {p1, v0}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    invoke-static {p0, v2, v3}, Lcn/hutool/core/util/PrimitiveArrayUtil;->swap([SII)[S

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-object p0
.end method

.method public static shuffle([Z)[Z
    .locals 1

    .line 2547
    invoke-static {}, Lcn/hutool/core/util/RandomUtil;->getRandom()Ljava/util/concurrent/ThreadLocalRandom;

    move-result-object v0

    invoke-static {p0, v0}, Lcn/hutool/core/util/PrimitiveArrayUtil;->shuffle([ZLjava/util/Random;)[Z

    move-result-object p0

    return-object p0
.end method

.method public static shuffle([ZLjava/util/Random;)[Z
    .locals 4

    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    .line 2560
    array-length v0, p0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    goto :goto_1

    .line 2564
    :cond_0
    array-length v0, p0

    :goto_0
    if-le v0, v1, :cond_1

    add-int/lit8 v2, v0, -0x1

    .line 2565
    invoke-virtual {p1, v0}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    invoke-static {p0, v2, v3}, Lcn/hutool/core/util/PrimitiveArrayUtil;->swap([ZII)[Z

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-object p0
.end method

.method public static split([BI)[[B
    .locals 7

    .line 530
    array-length v0, p0

    div-int/2addr v0, p1

    .line 531
    array-length v1, p0

    rem-int/2addr v1, p1

    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    .line 535
    :cond_0
    new-array v2, v0, [[B

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v0, :cond_2

    add-int/lit8 v5, v0, -0x1

    if-ne v4, v5, :cond_1

    if-eqz v1, :cond_1

    .line 540
    new-array v5, v1, [B

    mul-int v6, v4, p1

    .line 541
    invoke-static {p0, v6, v5, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1

    .line 543
    :cond_1
    new-array v5, p1, [B

    mul-int v6, v4, p1

    .line 544
    invoke-static {p0, v6, v5, v3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 546
    :goto_1
    aput-object v5, v2, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    return-object v2
.end method

.method public static sub([BII)[B
    .locals 3

    .line 1321
    invoke-static {p0}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    if-gez p1, :cond_0

    add-int/2addr p1, v0

    :cond_0
    if-gez p2, :cond_1

    add-int/2addr p2, v0

    :cond_1
    const/4 v1, 0x0

    if-ne p1, v0, :cond_2

    new-array p0, v1, [B

    return-object p0

    :cond_2
    if-le p1, p2, :cond_3

    goto :goto_0

    :cond_3
    move v2, p2

    move p2, p1

    move p1, v2

    :goto_0
    if-le p1, v0, :cond_4

    if-lt p2, v0, :cond_5

    new-array p0, v1, [B

    return-object p0

    :cond_4
    move v0, p1

    .line 1342
    :cond_5
    invoke-static {p0, p2, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    return-object p0
.end method

.method public static sub([CII)[C
    .locals 3

    .line 1461
    invoke-static {p0}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    if-gez p1, :cond_0

    add-int/2addr p1, v0

    :cond_0
    if-gez p2, :cond_1

    add-int/2addr p2, v0

    :cond_1
    const/4 v1, 0x0

    if-ne p1, v0, :cond_2

    new-array p0, v1, [C

    return-object p0

    :cond_2
    if-le p1, p2, :cond_3

    goto :goto_0

    :cond_3
    move v2, p2

    move p2, p1

    move p1, v2

    :goto_0
    if-le p1, v0, :cond_4

    if-lt p2, v0, :cond_5

    new-array p0, v1, [C

    return-object p0

    :cond_4
    move v0, p1

    .line 1482
    :cond_5
    invoke-static {p0, p2, v0}, Ljava/util/Arrays;->copyOfRange([CII)[C

    move-result-object p0

    return-object p0
.end method

.method public static sub([DII)[D
    .locals 3

    .line 1496
    invoke-static {p0}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    if-gez p1, :cond_0

    add-int/2addr p1, v0

    :cond_0
    if-gez p2, :cond_1

    add-int/2addr p2, v0

    :cond_1
    const/4 v1, 0x0

    if-ne p1, v0, :cond_2

    new-array p0, v1, [D

    return-object p0

    :cond_2
    if-le p1, p2, :cond_3

    goto :goto_0

    :cond_3
    move v2, p2

    move p2, p1

    move p1, v2

    :goto_0
    if-le p1, v0, :cond_4

    if-lt p2, v0, :cond_5

    new-array p0, v1, [D

    return-object p0

    :cond_4
    move v0, p1

    .line 1517
    :cond_5
    invoke-static {p0, p2, v0}, Ljava/util/Arrays;->copyOfRange([DII)[D

    move-result-object p0

    return-object p0
.end method

.method public static sub([FII)[F
    .locals 3

    .line 1531
    invoke-static {p0}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    if-gez p1, :cond_0

    add-int/2addr p1, v0

    :cond_0
    if-gez p2, :cond_1

    add-int/2addr p2, v0

    :cond_1
    const/4 v1, 0x0

    if-ne p1, v0, :cond_2

    new-array p0, v1, [F

    return-object p0

    :cond_2
    if-le p1, p2, :cond_3

    goto :goto_0

    :cond_3
    move v2, p2

    move p2, p1

    move p1, v2

    :goto_0
    if-le p1, v0, :cond_4

    if-lt p2, v0, :cond_5

    new-array p0, v1, [F

    return-object p0

    :cond_4
    move v0, p1

    .line 1552
    :cond_5
    invoke-static {p0, p2, v0}, Ljava/util/Arrays;->copyOfRange([FII)[F

    move-result-object p0

    return-object p0
.end method

.method public static sub([III)[I
    .locals 3

    .line 1356
    invoke-static {p0}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    if-gez p1, :cond_0

    add-int/2addr p1, v0

    :cond_0
    if-gez p2, :cond_1

    add-int/2addr p2, v0

    :cond_1
    const/4 v1, 0x0

    if-ne p1, v0, :cond_2

    new-array p0, v1, [I

    return-object p0

    :cond_2
    if-le p1, p2, :cond_3

    goto :goto_0

    :cond_3
    move v2, p2

    move p2, p1

    move p1, v2

    :goto_0
    if-le p1, v0, :cond_4

    if-lt p2, v0, :cond_5

    new-array p0, v1, [I

    return-object p0

    :cond_4
    move v0, p1

    .line 1377
    :cond_5
    invoke-static {p0, p2, v0}, Ljava/util/Arrays;->copyOfRange([III)[I

    move-result-object p0

    return-object p0
.end method

.method public static sub([JII)[J
    .locals 3

    .line 1391
    invoke-static {p0}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    if-gez p1, :cond_0

    add-int/2addr p1, v0

    :cond_0
    if-gez p2, :cond_1

    add-int/2addr p2, v0

    :cond_1
    const/4 v1, 0x0

    if-ne p1, v0, :cond_2

    new-array p0, v1, [J

    return-object p0

    :cond_2
    if-le p1, p2, :cond_3

    goto :goto_0

    :cond_3
    move v2, p2

    move p2, p1

    move p1, v2

    :goto_0
    if-le p1, v0, :cond_4

    if-lt p2, v0, :cond_5

    new-array p0, v1, [J

    return-object p0

    :cond_4
    move v0, p1

    .line 1412
    :cond_5
    invoke-static {p0, p2, v0}, Ljava/util/Arrays;->copyOfRange([JII)[J

    move-result-object p0

    return-object p0
.end method

.method public static sub([SII)[S
    .locals 3

    .line 1426
    invoke-static {p0}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    if-gez p1, :cond_0

    add-int/2addr p1, v0

    :cond_0
    if-gez p2, :cond_1

    add-int/2addr p2, v0

    :cond_1
    const/4 v1, 0x0

    if-ne p1, v0, :cond_2

    new-array p0, v1, [S

    return-object p0

    :cond_2
    if-le p1, p2, :cond_3

    goto :goto_0

    :cond_3
    move v2, p2

    move p2, p1

    move p1, v2

    :goto_0
    if-le p1, v0, :cond_4

    if-lt p2, v0, :cond_5

    new-array p0, v1, [S

    return-object p0

    :cond_4
    move v0, p1

    .line 1447
    :cond_5
    invoke-static {p0, p2, v0}, Ljava/util/Arrays;->copyOfRange([SII)[S

    move-result-object p0

    return-object p0
.end method

.method public static sub([ZII)[Z
    .locals 3

    .line 1566
    invoke-static {p0}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    if-gez p1, :cond_0

    add-int/2addr p1, v0

    :cond_0
    if-gez p2, :cond_1

    add-int/2addr p2, v0

    :cond_1
    const/4 v1, 0x0

    if-ne p1, v0, :cond_2

    new-array p0, v1, [Z

    return-object p0

    :cond_2
    if-le p1, p2, :cond_3

    goto :goto_0

    :cond_3
    move v2, p2

    move p2, p1

    move p1, v2

    :goto_0
    if-le p1, v0, :cond_4

    if-lt p2, v0, :cond_5

    new-array p0, v1, [Z

    return-object p0

    :cond_4
    move v0, p1

    .line 1587
    :cond_5
    invoke-static {p0, p2, v0}, Ljava/util/Arrays;->copyOfRange([ZII)[Z

    move-result-object p0

    return-object p0
.end method

.method public static swap([BII)[B
    .locals 2

    .line 2777
    invoke-static {p0}, Lcn/hutool/core/util/PrimitiveArrayUtil;->isEmpty([B)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2780
    aget-byte v0, p0, p1

    .line 2781
    aget-byte v1, p0, p2

    aput-byte v1, p0, p1

    .line 2782
    aput-byte v0, p0, p2

    return-object p0

    .line 2778
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Number array must not empty !"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static swap([CII)[C
    .locals 2

    .line 2796
    invoke-static {p0}, Lcn/hutool/core/util/PrimitiveArrayUtil;->isEmpty([C)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2799
    aget-char v0, p0, p1

    .line 2800
    aget-char v1, p0, p2

    aput-char v1, p0, p1

    .line 2801
    aput-char v0, p0, p2

    return-object p0

    .line 2797
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Number array must not empty !"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static swap([DII)[D
    .locals 4

    .line 2720
    invoke-static {p0}, Lcn/hutool/core/util/PrimitiveArrayUtil;->isEmpty([D)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2723
    aget-wide v0, p0, p1

    .line 2724
    aget-wide v2, p0, p2

    aput-wide v2, p0, p1

    .line 2725
    aput-wide v0, p0, p2

    return-object p0

    .line 2721
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Number array must not empty !"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static swap([FII)[F
    .locals 2

    .line 2739
    invoke-static {p0}, Lcn/hutool/core/util/PrimitiveArrayUtil;->isEmpty([F)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2742
    aget v0, p0, p1

    .line 2743
    aget v1, p0, p2

    aput v1, p0, p1

    .line 2744
    aput v0, p0, p2

    return-object p0

    .line 2740
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Number array must not empty !"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static swap([III)[I
    .locals 2

    .line 2682
    invoke-static {p0}, Lcn/hutool/core/util/PrimitiveArrayUtil;->isEmpty([I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2685
    aget v0, p0, p1

    .line 2686
    aget v1, p0, p2

    aput v1, p0, p1

    .line 2687
    aput v0, p0, p2

    return-object p0

    .line 2683
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Number array must not empty !"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static swap([JII)[J
    .locals 4

    .line 2701
    invoke-static {p0}, Lcn/hutool/core/util/PrimitiveArrayUtil;->isEmpty([J)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2704
    aget-wide v0, p0, p1

    .line 2705
    aget-wide v2, p0, p2

    aput-wide v2, p0, p1

    .line 2706
    aput-wide v0, p0, p2

    return-object p0

    .line 2702
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Number array must not empty !"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static swap([SII)[S
    .locals 2

    .line 2815
    invoke-static {p0}, Lcn/hutool/core/util/PrimitiveArrayUtil;->isEmpty([S)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2818
    aget-short v0, p0, p1

    .line 2819
    aget-short v1, p0, p2

    aput-short v1, p0, p1

    .line 2820
    aput-short v0, p0, p2

    return-object p0

    .line 2816
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Number array must not empty !"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static swap([ZII)[Z
    .locals 2

    .line 2758
    invoke-static {p0}, Lcn/hutool/core/util/PrimitiveArrayUtil;->isEmpty([Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2761
    aget-boolean v0, p0, p1

    .line 2762
    aget-boolean v1, p0, p2

    aput-boolean v1, p0, p1

    .line 2763
    aput-boolean v0, p0, p2

    return-object p0

    .line 2759
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Number array must not empty !"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static varargs unWrap([Ljava/lang/Byte;)[B
    .locals 6

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1119
    :cond_0
    array-length v0, p0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    new-array p0, v1, [B

    return-object p0

    .line 1124
    :cond_1
    new-array v2, v0, [B

    move v3, v1

    :goto_0
    if-ge v3, v0, :cond_2

    .line 1126
    aget-object v4, p0, v3

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    invoke-static {v4, v5}, Lcn/hutool/core/util/ObjectUtil;->defaultIfNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Byte;

    invoke-virtual {v4}, Ljava/lang/Byte;->byteValue()B

    move-result v4

    aput-byte v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-object v2
.end method

.method public static varargs unWrap([Ljava/lang/Character;)[C
    .locals 6

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1075
    :cond_0
    array-length v0, p0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    new-array p0, v1, [C

    return-object p0

    .line 1080
    :cond_1
    new-array v2, v0, [C

    move v3, v1

    :goto_0
    if-ge v3, v0, :cond_2

    .line 1082
    aget-object v4, p0, v3

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v5

    invoke-static {v4, v5}, Lcn/hutool/core/util/ObjectUtil;->defaultIfNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Character;

    invoke-virtual {v4}, Ljava/lang/Character;->charValue()C

    move-result v4

    aput-char v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-object v2
.end method

.method public static varargs unWrap([Ljava/lang/Double;)[D
    .locals 6

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1251
    :cond_0
    array-length v0, p0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    new-array p0, v1, [D

    return-object p0

    .line 1256
    :cond_1
    new-array v2, v0, [D

    :goto_0
    if-ge v1, v0, :cond_2

    .line 1258
    aget-object v3, p0, v1

    const-wide/16 v4, 0x0

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-static {v3, v4}, Lcn/hutool/core/util/ObjectUtil;->defaultIfNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Double;

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    aput-wide v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object v2
.end method

.method public static varargs unWrap([Ljava/lang/Float;)[F
    .locals 5

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1207
    :cond_0
    array-length v0, p0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    new-array p0, v1, [F

    return-object p0

    .line 1212
    :cond_1
    new-array v2, v0, [F

    :goto_0
    if-ge v1, v0, :cond_2

    .line 1214
    aget-object v3, p0, v1

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-static {v3, v4}, Lcn/hutool/core/util/ObjectUtil;->defaultIfNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object v2
.end method

.method public static varargs unWrap([Ljava/lang/Integer;)[I
    .locals 6

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 987
    :cond_0
    array-length v0, p0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    new-array p0, v1, [I

    return-object p0

    .line 992
    :cond_1
    new-array v2, v0, [I

    move v3, v1

    :goto_0
    if-ge v3, v0, :cond_2

    .line 994
    aget-object v4, p0, v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4, v5}, Lcn/hutool/core/util/ObjectUtil;->defaultIfNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    aput v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-object v2
.end method

.method public static varargs unWrap([Ljava/lang/Long;)[J
    .locals 6

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1031
    :cond_0
    array-length v0, p0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    new-array p0, v1, [J

    return-object p0

    .line 1036
    :cond_1
    new-array v2, v0, [J

    :goto_0
    if-ge v1, v0, :cond_2

    .line 1038
    aget-object v3, p0, v1

    const-wide/16 v4, 0x0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {v3, v4}, Lcn/hutool/core/util/ObjectUtil;->defaultIfNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    aput-wide v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object v2
.end method

.method public static varargs unWrap([Ljava/lang/Short;)[S
    .locals 6

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1163
    :cond_0
    array-length v0, p0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    new-array p0, v1, [S

    return-object p0

    .line 1168
    :cond_1
    new-array v2, v0, [S

    move v3, v1

    :goto_0
    if-ge v3, v0, :cond_2

    .line 1170
    aget-object v4, p0, v3

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v5

    invoke-static {v4, v5}, Lcn/hutool/core/util/ObjectUtil;->defaultIfNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Short;

    invoke-virtual {v4}, Ljava/lang/Short;->shortValue()S

    move-result v4

    aput-short v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-object v2
.end method

.method public static varargs unWrap([Ljava/lang/Boolean;)[Z
    .locals 6

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1296
    :cond_0
    array-length v0, p0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    new-array p0, v1, [Z

    return-object p0

    .line 1301
    :cond_1
    new-array v2, v0, [Z

    move v3, v1

    :goto_0
    if-ge v3, v0, :cond_2

    .line 1303
    aget-object v4, p0, v3

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-static {v4, v5}, Lcn/hutool/core/util/ObjectUtil;->defaultIfNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    aput-boolean v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-object v2
.end method

.method public static varargs wrap([Z)[Ljava/lang/Boolean;
    .locals 4

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1273
    :cond_0
    array-length v0, p0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    new-array p0, v1, [Ljava/lang/Boolean;

    return-object p0

    .line 1278
    :cond_1
    new-array v2, v0, [Ljava/lang/Boolean;

    :goto_0
    if-ge v1, v0, :cond_2

    .line 1280
    aget-boolean v3, p0, v1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object v2
.end method

.method public static varargs wrap([B)[Ljava/lang/Byte;
    .locals 4

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1097
    :cond_0
    array-length v0, p0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    new-array p0, v1, [Ljava/lang/Byte;

    return-object p0

    .line 1102
    :cond_1
    new-array v2, v0, [Ljava/lang/Byte;

    :goto_0
    if-ge v1, v0, :cond_2

    .line 1104
    aget-byte v3, p0, v1

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object v2
.end method

.method public static varargs wrap([C)[Ljava/lang/Character;
    .locals 4

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1053
    :cond_0
    array-length v0, p0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    new-array p0, v1, [Ljava/lang/Character;

    return-object p0

    .line 1058
    :cond_1
    new-array v2, v0, [Ljava/lang/Character;

    :goto_0
    if-ge v1, v0, :cond_2

    .line 1060
    aget-char v3, p0, v1

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object v2
.end method

.method public static varargs wrap([D)[Ljava/lang/Double;
    .locals 5

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1229
    :cond_0
    array-length v0, p0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    new-array p0, v1, [Ljava/lang/Double;

    return-object p0

    .line 1234
    :cond_1
    new-array v2, v0, [Ljava/lang/Double;

    :goto_0
    if-ge v1, v0, :cond_2

    .line 1236
    aget-wide v3, p0, v1

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object v2
.end method

.method public static varargs wrap([F)[Ljava/lang/Float;
    .locals 4

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1185
    :cond_0
    array-length v0, p0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    new-array p0, v1, [Ljava/lang/Float;

    return-object p0

    .line 1190
    :cond_1
    new-array v2, v0, [Ljava/lang/Float;

    :goto_0
    if-ge v1, v0, :cond_2

    .line 1192
    aget v3, p0, v1

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object v2
.end method

.method public static varargs wrap([I)[Ljava/lang/Integer;
    .locals 4

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 965
    :cond_0
    array-length v0, p0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    new-array p0, v1, [Ljava/lang/Integer;

    return-object p0

    .line 970
    :cond_1
    new-array v2, v0, [Ljava/lang/Integer;

    :goto_0
    if-ge v1, v0, :cond_2

    .line 972
    aget v3, p0, v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object v2
.end method

.method public static varargs wrap([J)[Ljava/lang/Long;
    .locals 5

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1009
    :cond_0
    array-length v0, p0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    new-array p0, v1, [Ljava/lang/Long;

    return-object p0

    .line 1014
    :cond_1
    new-array v2, v0, [Ljava/lang/Long;

    :goto_0
    if-ge v1, v0, :cond_2

    .line 1016
    aget-wide v3, p0, v1

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object v2
.end method

.method public static varargs wrap([S)[Ljava/lang/Short;
    .locals 4

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1141
    :cond_0
    array-length v0, p0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    new-array p0, v1, [Ljava/lang/Short;

    return-object p0

    .line 1146
    :cond_1
    new-array v2, v0, [Ljava/lang/Short;

    :goto_0
    if-ge v1, v0, :cond_2

    .line 1148
    aget-short v3, p0, v1

    invoke-static {v3}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v3

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object v2
.end method
