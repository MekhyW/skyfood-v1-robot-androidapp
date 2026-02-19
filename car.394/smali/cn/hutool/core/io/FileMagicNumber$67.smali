.class final enum Lcn/hutool/core/io/FileMagicNumber$67;
.super Lcn/hutool/core/io/FileMagicNumber;
.source "FileMagicNumber.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/hutool/core/io/FileMagicNumber;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 952
    invoke-direct/range {v0 .. v5}, Lcn/hutool/core/io/FileMagicNumber;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcn/hutool/core/io/FileMagicNumber$1;)V

    return-void
.end method


# virtual methods
.method public match([B)Z
    .locals 7

    const/16 v0, 0x8

    new-array v1, v0, [B

    .line 955
    fill-array-data v1, :array_0

    .line 956
    array-length v2, p1

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/16 v5, 0x208

    if-le v2, v5, :cond_0

    invoke-static {p1, v4, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v2

    invoke-static {v2, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v4

    :goto_0
    if-eqz v1, :cond_6

    const/4 v1, 0x4

    new-array v1, v1, [B

    .line 958
    fill-array-data v1, :array_1

    const/16 v2, 0x204

    const/16 v6, 0x200

    .line 959
    invoke-static {p1, v6, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v2

    invoke-static {v2, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v1, 0x206

    aget-byte v1, p1, v1

    if-eqz v1, :cond_1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    :cond_1
    move v1, v3

    goto :goto_1

    :cond_2
    move v1, v4

    :goto_1
    new-array v0, v0, [B

    .line 960
    fill-array-data v0, :array_2

    .line 961
    invoke-static {p1, v6, v5}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v2

    invoke-static {v2, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    const/16 v2, 0xf

    new-array v2, v2, [B

    .line 962
    fill-array-data v2, :array_3

    .line 963
    array-length v5, p1

    const/16 v6, 0x82f

    if-le v5, v6, :cond_3

    const/16 v5, 0x620

    invoke-static {p1, v5, v6}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p1

    invoke-static {p1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    if-eqz p1, :cond_3

    move p1, v3

    goto :goto_2

    :cond_3
    move p1, v4

    :goto_2
    if-nez v1, :cond_5

    if-nez v0, :cond_5

    if-eqz p1, :cond_4

    goto :goto_3

    :cond_4
    move v3, v4

    :cond_5
    :goto_3
    return v3

    :cond_6
    return v4

    nop

    :array_0
    .array-data 1
        -0x30t
        -0x31t
        0x11t
        -0x20t
        -0x5ft
        -0x4ft
        0x1at
        -0x1ft
    .end array-data

    :array_1
    .array-data 1
        -0x3t
        -0x1t
        -0x1t
        -0x1t
    .end array-data

    :array_2
    .array-data 1
        0x9t
        0x8t
        0x10t
        0x0t
        0x0t
        0x6t
        0x5t
        0x0t
    .end array-data

    :array_3
    .array-data 1
        -0x1et
        0x0t
        0x0t
        0x0t
        0x5ct
        0x0t
        0x70t
        0x0t
        0x4t
        0x0t
        0x0t
        0x43t
        0x61t
        0x6ct
        0x63t
    .end array-data
.end method
