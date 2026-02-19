.class final enum Lcn/hutool/core/io/FileMagicNumber$54;
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

    .line 705
    invoke-direct/range {v0 .. v5}, Lcn/hutool/core/io/FileMagicNumber;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcn/hutool/core/io/FileMagicNumber$1;)V

    return-void
.end method


# virtual methods
.method public match([B)Z
    .locals 6

    .line 708
    array-length v0, p1

    const/4 v1, 0x5

    const/4 v2, 0x0

    if-ge v0, v1, :cond_0

    return v2

    :cond_0
    const/4 v0, 0x7

    new-array v0, v0, [B

    .line 712
    fill-array-data v0, :array_0

    .line 713
    aget-byte v1, p1, v2

    invoke-static {v0, v1}, Lcn/hutool/core/util/ArrayUtil;->contains([BB)Z

    move-result v0

    const/4 v1, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v0, :cond_1

    aget-byte v0, p1, v4

    .line 714
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    const/16 v5, -0x4b

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    invoke-static {v0, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    aget-byte v0, p1, v3

    .line 715
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    const/16 v5, 0x2f

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    invoke-static {v0, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    aget-byte v0, p1, v1

    .line 716
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    const/4 v5, -0x3

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    invoke-static {v0, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v4

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    if-eqz v0, :cond_2

    return v4

    .line 720
    :cond_2
    aget-byte v0, p1, v2

    and-int/lit16 v0, v0, 0xf0

    const/16 v5, 0x50

    if-ne v0, v5, :cond_3

    .line 721
    aget-byte v0, p1, v4

    const/16 v5, 0x2a

    if-ne v0, v5, :cond_3

    aget-byte v0, p1, v3

    const/16 v3, 0x4d

    if-ne v0, v3, :cond_3

    aget-byte p1, p1, v1

    const/16 v0, 0x18

    if-ne p1, v0, :cond_3

    move v2, v4

    :cond_3
    return v2

    :array_0
    .array-data 1
        0x22t
        0x23t
        0x24t
        0x25t
        0x26t
        0x27t
        0x28t
    .end array-data
.end method
