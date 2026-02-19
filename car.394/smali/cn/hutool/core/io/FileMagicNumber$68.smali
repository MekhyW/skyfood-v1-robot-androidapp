.class final enum Lcn/hutool/core/io/FileMagicNumber$68;
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

    .line 970
    invoke-direct/range {v0 .. v5}, Lcn/hutool/core/io/FileMagicNumber;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcn/hutool/core/io/FileMagicNumber$1;)V

    return-void
.end method


# virtual methods
.method public match([B)Z
    .locals 9

    const/16 v0, 0x8

    new-array v1, v0, [B

    .line 973
    fill-array-data v1, :array_0

    .line 974
    array-length v2, p1

    const/16 v3, 0x20c

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-le v2, v3, :cond_0

    invoke-static {p1, v5, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v4

    goto :goto_0

    :cond_0
    move v0, v5

    :goto_0
    if-eqz v0, :cond_5

    const/4 v0, 0x4

    new-array v1, v0, [B

    .line 976
    fill-array-data v1, :array_1

    const/16 v2, 0x200

    const/16 v3, 0x204

    .line 977
    invoke-static {p1, v2, v3}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v2

    .line 978
    invoke-static {v2, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    new-array v3, v0, [B

    .line 979
    fill-array-data v3, :array_2

    .line 980
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    new-array v6, v0, [B

    .line 981
    fill-array-data v6, :array_3

    .line 982
    invoke-static {v2, v6}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v6

    new-array v0, v0, [B

    .line 983
    fill-array-data v0, :array_4

    .line 984
    invoke-static {v2, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x20a

    aget-byte v0, p1, v0

    if-nez v0, :cond_1

    const/16 v0, 0x20b

    aget-byte v0, p1, v0

    if-nez v0, :cond_1

    move v0, v4

    goto :goto_1

    :cond_1
    move v0, v5

    :goto_1
    const/16 v2, 0x18

    new-array v2, v2, [B

    .line 985
    fill-array-data v2, :array_5

    .line 988
    array-length v7, p1

    const/16 v8, 0x830

    if-le v7, v8, :cond_2

    const/16 v7, 0x818

    invoke-static {p1, v7, v8}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p1

    invoke-static {p1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    if-eqz p1, :cond_2

    move p1, v4

    goto :goto_2

    :cond_2
    move p1, v5

    :goto_2
    if-nez v1, :cond_4

    if-nez v3, :cond_4

    if-nez v6, :cond_4

    if-nez v0, :cond_4

    if-eqz p1, :cond_3

    goto :goto_3

    :cond_3
    move v4, v5

    :cond_4
    :goto_3
    return v4

    :cond_5
    return v5

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
        -0x60t
        0x46t
        0x1dt
        -0x10t
    .end array-data

    :array_2
    .array-data 1
        0x0t
        0x6et
        0x1et
        -0x10t
    .end array-data

    :array_3
    .array-data 1
        0xft
        0x0t
        -0x18t
        0x3t
    .end array-data

    :array_4
    .array-data 1
        -0x3t
        -0x1t
        -0x1t
        -0x1t
    .end array-data

    :array_5
    .array-data 1
        0x0t
        -0x47t
        0x29t
        -0x18t
        0x11t
        0x0t
        0x0t
        0x0t
        0x4dt
        0x53t
        0x20t
        0x50t
        0x6ft
        0x77t
        0x65t
        0x72t
        0x50t
        0x6ft
        0x69t
        0x6et
        0x74t
        0x20t
        0x39t
        0x37t
    .end array-data
.end method
