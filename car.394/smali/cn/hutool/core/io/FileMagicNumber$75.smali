.class final enum Lcn/hutool/core/io/FileMagicNumber$75;
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

    .line 1052
    invoke-direct/range {v0 .. v5}, Lcn/hutool/core/io/FileMagicNumber;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcn/hutool/core/io/FileMagicNumber$1;)V

    return-void
.end method


# virtual methods
.method public match([B)Z
    .locals 9

    .line 1055
    array-length v0, p1

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-ge v0, v2, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x7

    new-array v3, v0, [B

    .line 1058
    fill-array-data v3, :array_0

    new-array v4, v2, [B

    .line 1059
    fill-array-data v4, :array_1

    const/4 v5, 0x6

    new-array v6, v5, [B

    .line 1060
    fill-array-data v6, :array_2

    const/16 v7, 0xd

    new-array v8, v7, [B

    .line 1061
    fill-array-data v8, :array_3

    .line 1062
    invoke-static {p1, v1, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    invoke-static {v0, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1063
    invoke-static {p1, v1, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    invoke-static {v0, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1064
    invoke-static {p1, v1, v5}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    invoke-static {v0, v6}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-nez v0, :cond_1

    array-length v0, p1

    if-le v0, v7, :cond_2

    .line 1065
    invoke-static {p1, v1, v7}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p1

    invoke-static {p1, v8}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    return v1

    :array_0
    .array-data 1
        0x46t
        0x72t
        0x6ft
        0x6dt
        0x20t
        0x20t
        0x20t
    .end array-data

    :array_1
    .array-data 1
        0x46t
        0x72t
        0x6ft
        0x6dt
        0x20t
        0x3ft
        0x3ft
        0x3ft
    .end array-data

    :array_2
    .array-data 1
        0x46t
        0x72t
        0x6ft
        0x6dt
        0x3at
        0x20t
    .end array-data

    nop

    :array_3
    .array-data 1
        0x52t
        0x65t
        0x74t
        0x75t
        0x72t
        0x6et
        0x2dt
        0x50t
        0x61t
        0x74t
        0x68t
        0x3at
        0x20t
    .end array-data
.end method
