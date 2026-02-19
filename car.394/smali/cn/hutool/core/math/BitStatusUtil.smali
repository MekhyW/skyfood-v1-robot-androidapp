.class public Lcn/hutool/core/math/BitStatusUtil;
.super Ljava/lang/Object;
.source "BitStatusUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static add(II)I
    .locals 2

    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p0, v0, v1

    const/4 v1, 0x1

    aput p1, v0, v1

    .line 22
    invoke-static {v0}, Lcn/hutool/core/math/BitStatusUtil;->check([I)V

    or-int/2addr p0, p1

    return p0
.end method

.method private static varargs check([I)V
    .locals 5

    .line 72
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    aget v2, p0, v1

    if-ltz v2, :cond_1

    and-int/lit8 v3, v2, 0x1

    const/4 v4, 0x1

    if-eq v3, v4, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 77
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \u4e0d\u662f\u5076\u6570"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 74
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \u5fc5\u987b\u5927\u4e8e\u7b49\u4e8e0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    return-void
.end method

.method public static clear()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static has(II)Z
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p0, v0, v1

    const/4 v2, 0x1

    aput p1, v0, v2

    .line 34
    invoke-static {v0}, Lcn/hutool/core/math/BitStatusUtil;->check([I)V

    and-int/2addr p0, p1

    if-ne p0, p1, :cond_0

    move v1, v2

    :cond_0
    return v1
.end method

.method public static remove(II)I
    .locals 2

    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p0, v0, v1

    const/4 v1, 0x1

    aput p1, v0, v1

    .line 46
    invoke-static {v0}, Lcn/hutool/core/math/BitStatusUtil;->check([I)V

    .line 47
    invoke-static {p0, p1}, Lcn/hutool/core/math/BitStatusUtil;->has(II)Z

    move-result v0

    if-eqz v0, :cond_0

    xor-int/2addr p0, p1

    :cond_0
    return p0
.end method
