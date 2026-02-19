.class final enum Lcn/hutool/core/io/FileMagicNumber$66;
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

    .line 932
    invoke-direct/range {v0 .. v5}, Lcn/hutool/core/io/FileMagicNumber;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcn/hutool/core/io/FileMagicNumber$1;)V

    return-void
.end method


# virtual methods
.method public match([B)Z
    .locals 6

    const/16 v0, 0x8

    new-array v1, v0, [B

    .line 935
    fill-array-data v1, :array_0

    .line 936
    array-length v2, p1

    const/16 v3, 0x203

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
    if-eqz v0, :cond_4

    const/4 v0, 0x4

    new-array v0, v0, [B

    .line 938
    fill-array-data v0, :array_1

    const/16 v1, 0x200

    const/16 v2, 0x204

    .line 939
    invoke-static {p1, v1, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v1

    invoke-static {v1, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    const/16 v1, 0x27

    new-array v1, v1, [B

    .line 940
    fill-array-data v1, :array_2

    const/16 v2, 0x81b

    const/16 v3, 0x85e

    .line 944
    invoke-static {p1, v2, v3}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v2

    .line 945
    array-length p1, p1

    if-le p1, v3, :cond_1

    invoke-static {v2, v1}, Lcn/hutool/core/io/FileMagicNumber;->access$100([B[B)I

    move-result p1

    if-lez p1, :cond_1

    move p1, v4

    goto :goto_1

    :cond_1
    move p1, v5

    :goto_1
    if-nez v0, :cond_3

    if-eqz p1, :cond_2

    goto :goto_2

    :cond_2
    move v4, v5

    :cond_3
    :goto_2
    return v4

    :cond_4
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
        -0x14t
        -0x5bt
        -0x3ft
        0x0t
    .end array-data

    :array_2
    .array-data 1
        0x0t
        0xat
        0x0t
        0x0t
        0x0t
        0x4dt
        0x53t
        0x57t
        0x6ft
        0x72t
        0x64t
        0x44t
        0x6ft
        0x63t
        0x0t
        0x10t
        0x0t
        0x0t
        0x0t
        0x57t
        0x6ft
        0x72t
        0x64t
        0x2et
        0x44t
        0x6ft
        0x63t
        0x75t
        0x6dt
        0x65t
        0x6et
        0x74t
        0x2et
        0x38t
        0x0t
        -0xct
        0x39t
        -0x4et
        0x71t
    .end array-data
.end method
