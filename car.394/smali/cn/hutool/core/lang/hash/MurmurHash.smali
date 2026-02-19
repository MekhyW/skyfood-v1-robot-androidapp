.class public Lcn/hutool/core/lang/hash/MurmurHash;
.super Ljava/lang/Object;
.source "MurmurHash.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final C1:J = -0x783c846eeebdac2bL

.field private static final C1_32:I = -0x3361d2af

.field private static final C2:J = 0x4cf5ad432745937fL

.field private static final C2_32:I = 0x1b873593

.field private static final DEFAULT_CHARSET:Ljava/nio/charset/Charset;

.field private static final DEFAULT_ORDER:Ljava/nio/ByteOrder;

.field private static final DEFAULT_SEED:I = 0x0

.field private static final M:I = 0x5

.field private static final M_32:I = 0x5

.field private static final N1:I = 0x52dce729

.field private static final N2:I = 0x38495ab5

.field private static final N_32:I = -0x19ab949c

.field private static final R1:I = 0x1f

.field private static final R1_32:I = 0xf

.field private static final R2:I = 0x1b

.field private static final R2_32:I = 0xd

.field private static final R3:I = 0x21

.field private static final serialVersionUID:J = 0x1L


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 45
    sget-object v0, Lcn/hutool/core/util/CharsetUtil;->CHARSET_UTF_8:Ljava/nio/charset/Charset;

    sput-object v0, Lcn/hutool/core/lang/hash/MurmurHash;->DEFAULT_CHARSET:Ljava/nio/charset/Charset;

    .line 46
    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    sput-object v0, Lcn/hutool/core/lang/hash/MurmurHash;->DEFAULT_ORDER:Ljava/nio/ByteOrder;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static fmix32(I)I
    .locals 1

    ushr-int/lit8 v0, p0, 0x10

    xor-int/2addr p0, v0

    const v0, -0x7a143595

    mul-int/2addr p0, v0

    ushr-int/lit8 v0, p0, 0xd

    xor-int/2addr p0, v0

    const v0, -0x3d4d51cb

    mul-int/2addr p0, v0

    ushr-int/lit8 v0, p0, 0x10

    xor-int/2addr p0, v0

    return p0
.end method

.method private static fmix64(J)J
    .locals 3

    const/16 v0, 0x21

    ushr-long v1, p0, v0

    xor-long/2addr p0, v1

    const-wide v1, -0xae502812aa7333L

    mul-long/2addr p0, v1

    ushr-long v1, p0, v0

    xor-long/2addr p0, v1

    const-wide v1, -0x3b314601e57a13adL    # -2.902039044684214E23

    mul-long/2addr p0, v1

    ushr-long v0, p0, v0

    xor-long/2addr p0, v0

    return-wide p0
.end method

.method public static hash128(Ljava/lang/CharSequence;)[J
    .locals 1

    .line 209
    sget-object v0, Lcn/hutool/core/lang/hash/MurmurHash;->DEFAULT_CHARSET:Ljava/nio/charset/Charset;

    invoke-static {p0, v0}, Lcn/hutool/core/util/StrUtil;->bytes(Ljava/lang/CharSequence;Ljava/nio/charset/Charset;)[B

    move-result-object p0

    invoke-static {p0}, Lcn/hutool/core/lang/hash/MurmurHash;->hash128([B)[J

    move-result-object p0

    return-object p0
.end method

.method public static hash128([B)[J
    .locals 2

    .line 219
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcn/hutool/core/lang/hash/MurmurHash;->hash128([BII)[J

    move-result-object p0

    return-object p0
.end method

.method public static hash128([BII)[J
    .locals 1

    const/4 v0, 0x0

    .line 231
    invoke-static {p0, v0, p1, p2}, Lcn/hutool/core/lang/hash/MurmurHash;->hash128([BIII)[J

    move-result-object p0

    return-object p0
.end method

.method public static hash128([BIII)[J
    .locals 23

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    int-to-long v2, v2

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-long v2, v2

    shr-int/lit8 v4, v1, 0x4

    move-wide v6, v2

    const/4 v8, 0x0

    :goto_0
    const/16 v10, 0x1f

    const-wide v11, 0x4cf5ad432745937fL    # 5.573325460219186E62

    const-wide v13, -0x783c846eeebdac2bL

    const/16 v15, 0x8

    if-ge v8, v4, :cond_0

    shl-int/lit8 v16, v8, 0x4

    add-int v5, p1, v16

    .line 254
    sget-object v9, Lcn/hutool/core/lang/hash/MurmurHash;->DEFAULT_ORDER:Ljava/nio/ByteOrder;

    invoke-static {v0, v5, v9}, Lcn/hutool/core/util/ByteUtil;->bytesToLong([BILjava/nio/ByteOrder;)J

    move-result-wide v17

    add-int/2addr v5, v15

    .line 255
    invoke-static {v0, v5, v9}, Lcn/hutool/core/util/ByteUtil;->bytesToLong([BILjava/nio/ByteOrder;)J

    move-result-wide v19

    mul-long v0, v17, v13

    .line 259
    invoke-static {v0, v1, v10}, Ljava/lang/Long;->rotateLeft(JI)J

    move-result-wide v0

    mul-long/2addr v0, v11

    xor-long/2addr v0, v2

    const/16 v2, 0x1b

    .line 262
    invoke-static {v0, v1, v2}, Ljava/lang/Long;->rotateLeft(JI)J

    move-result-wide v0

    add-long/2addr v0, v6

    const-wide/16 v2, 0x5

    mul-long/2addr v0, v2

    const-wide/32 v17, 0x52dce729

    add-long v0, v0, v17

    mul-long v11, v11, v19

    const/16 v5, 0x21

    .line 268
    invoke-static {v11, v12, v5}, Ljava/lang/Long;->rotateLeft(JI)J

    move-result-wide v11

    mul-long/2addr v11, v13

    xor-long v5, v6, v11

    .line 271
    invoke-static {v5, v6, v10}, Ljava/lang/Long;->rotateLeft(JI)J

    move-result-wide v5

    add-long/2addr v5, v0

    mul-long/2addr v5, v2

    const-wide/32 v2, 0x38495ab5

    add-long v6, v5, v2

    add-int/lit8 v8, v8, 0x1

    move-wide v2, v0

    move-object/from16 v0, p0

    move/from16 v1, p2

    goto :goto_0

    :cond_0
    shl-int/lit8 v0, v4, 0x4

    add-int v0, p1, v0

    move/from16 v1, p2

    add-int v4, p1, v1

    sub-int/2addr v4, v0

    const/16 v5, 0x30

    const/16 v8, 0x28

    const/16 v9, 0x20

    const/16 v17, 0x18

    const/16 v18, 0x10

    const-wide/16 v19, 0x0

    packed-switch v4, :pswitch_data_0

    move-wide/from16 v21, v6

    goto/16 :goto_f

    :pswitch_0
    add-int/lit8 v4, v0, 0xe

    .line 282
    aget-byte v4, p0, v4

    and-int/lit16 v4, v4, 0xff

    int-to-long v13, v4

    shl-long/2addr v13, v5

    xor-long v13, v13, v19

    goto :goto_1

    :pswitch_1
    move-wide/from16 v13, v19

    :goto_1
    add-int/lit8 v4, v0, 0xd

    .line 284
    aget-byte v4, p0, v4

    and-int/lit16 v4, v4, 0xff

    move-wide/from16 v21, v6

    int-to-long v5, v4

    shl-long v4, v5, v8

    xor-long/2addr v4, v13

    goto :goto_2

    :pswitch_2
    move-wide/from16 v21, v6

    move-wide/from16 v4, v19

    :goto_2
    add-int/lit8 v6, v0, 0xc

    .line 286
    aget-byte v6, p0, v6

    and-int/lit16 v6, v6, 0xff

    int-to-long v6, v6

    shl-long/2addr v6, v9

    xor-long/2addr v4, v6

    goto :goto_3

    :pswitch_3
    move-wide/from16 v21, v6

    move-wide/from16 v4, v19

    :goto_3
    add-int/lit8 v6, v0, 0xb

    .line 288
    aget-byte v6, p0, v6

    and-int/lit16 v6, v6, 0xff

    int-to-long v6, v6

    shl-long v6, v6, v17

    xor-long/2addr v4, v6

    goto :goto_4

    :pswitch_4
    move-wide/from16 v21, v6

    move-wide/from16 v4, v19

    :goto_4
    add-int/lit8 v6, v0, 0xa

    .line 290
    aget-byte v6, p0, v6

    and-int/lit16 v6, v6, 0xff

    int-to-long v6, v6

    shl-long v6, v6, v18

    xor-long/2addr v4, v6

    goto :goto_5

    :pswitch_5
    move-wide/from16 v21, v6

    move-wide/from16 v4, v19

    :goto_5
    add-int/lit8 v6, v0, 0x9

    .line 292
    aget-byte v6, p0, v6

    and-int/lit16 v6, v6, 0xff

    int-to-long v6, v6

    shl-long/2addr v6, v15

    xor-long/2addr v4, v6

    goto :goto_6

    :pswitch_6
    move-wide/from16 v21, v6

    move-wide/from16 v4, v19

    :goto_6
    add-int/lit8 v6, v0, 0x8

    .line 294
    aget-byte v6, p0, v6

    and-int/lit16 v6, v6, 0xff

    int-to-long v6, v6

    xor-long/2addr v4, v6

    mul-long/2addr v4, v11

    const/16 v6, 0x21

    .line 296
    invoke-static {v4, v5, v6}, Ljava/lang/Long;->rotateLeft(JI)J

    move-result-wide v4

    const-wide v6, -0x783c846eeebdac2bL

    mul-long/2addr v4, v6

    xor-long v6, v21, v4

    goto :goto_7

    :pswitch_7
    move-wide/from16 v21, v6

    :goto_7
    add-int/lit8 v4, v0, 0x7

    .line 301
    aget-byte v4, p0, v4

    and-int/lit16 v4, v4, 0xff

    int-to-long v4, v4

    const/16 v13, 0x38

    shl-long/2addr v4, v13

    xor-long v19, v19, v4

    goto :goto_8

    :pswitch_8
    move-wide/from16 v21, v6

    :goto_8
    add-int/lit8 v4, v0, 0x6

    .line 303
    aget-byte v4, p0, v4

    and-int/lit16 v4, v4, 0xff

    int-to-long v4, v4

    const/16 v13, 0x30

    shl-long/2addr v4, v13

    xor-long v19, v19, v4

    goto :goto_9

    :pswitch_9
    move-wide/from16 v21, v6

    :goto_9
    add-int/lit8 v4, v0, 0x5

    .line 305
    aget-byte v4, p0, v4

    and-int/lit16 v4, v4, 0xff

    int-to-long v4, v4

    shl-long/2addr v4, v8

    xor-long v19, v19, v4

    goto :goto_a

    :pswitch_a
    move-wide/from16 v21, v6

    :goto_a
    add-int/lit8 v4, v0, 0x4

    .line 307
    aget-byte v4, p0, v4

    and-int/lit16 v4, v4, 0xff

    int-to-long v4, v4

    shl-long/2addr v4, v9

    xor-long v19, v19, v4

    goto :goto_b

    :pswitch_b
    move-wide/from16 v21, v6

    :goto_b
    add-int/lit8 v4, v0, 0x3

    .line 309
    aget-byte v4, p0, v4

    and-int/lit16 v4, v4, 0xff

    int-to-long v4, v4

    shl-long v4, v4, v17

    xor-long v19, v19, v4

    goto :goto_c

    :pswitch_c
    move-wide/from16 v21, v6

    :goto_c
    add-int/lit8 v4, v0, 0x2

    .line 311
    aget-byte v4, p0, v4

    and-int/lit16 v4, v4, 0xff

    int-to-long v4, v4

    shl-long v4, v4, v18

    xor-long v19, v19, v4

    goto :goto_d

    :pswitch_d
    move-wide/from16 v21, v6

    :goto_d
    add-int/lit8 v4, v0, 0x1

    .line 313
    aget-byte v4, p0, v4

    and-int/lit16 v4, v4, 0xff

    int-to-long v4, v4

    shl-long/2addr v4, v15

    xor-long v19, v19, v4

    goto :goto_e

    :pswitch_e
    move-wide/from16 v21, v6

    .line 315
    :goto_e
    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    int-to-long v4, v0

    xor-long v4, v19, v4

    const-wide v8, -0x783c846eeebdac2bL

    mul-long/2addr v4, v8

    .line 317
    invoke-static {v4, v5, v10}, Ljava/lang/Long;->rotateLeft(JI)J

    move-result-wide v4

    mul-long/2addr v4, v11

    xor-long/2addr v2, v4

    :goto_f
    int-to-long v0, v1

    xor-long/2addr v2, v0

    xor-long/2addr v0, v6

    add-long/2addr v2, v0

    add-long/2addr v0, v2

    .line 329
    invoke-static {v2, v3}, Lcn/hutool/core/lang/hash/MurmurHash;->fmix64(J)J

    move-result-wide v2

    .line 330
    invoke-static {v0, v1}, Lcn/hutool/core/lang/hash/MurmurHash;->fmix64(J)J

    move-result-wide v0

    add-long/2addr v2, v0

    add-long/2addr v0, v2

    const/4 v4, 0x2

    new-array v4, v4, [J

    const/4 v5, 0x0

    aput-wide v2, v4, v5

    const/4 v2, 0x1

    aput-wide v0, v4, v2

    return-object v4

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static hash32(Ljava/lang/CharSequence;)I
    .locals 1

    .line 55
    sget-object v0, Lcn/hutool/core/lang/hash/MurmurHash;->DEFAULT_CHARSET:Ljava/nio/charset/Charset;

    invoke-static {p0, v0}, Lcn/hutool/core/util/StrUtil;->bytes(Ljava/lang/CharSequence;Ljava/nio/charset/Charset;)[B

    move-result-object p0

    invoke-static {p0}, Lcn/hutool/core/lang/hash/MurmurHash;->hash32([B)I

    move-result p0

    return p0
.end method

.method public static hash32([B)I
    .locals 2

    .line 65
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcn/hutool/core/lang/hash/MurmurHash;->hash32([BII)I

    move-result p0

    return p0
.end method

.method public static hash32([BII)I
    .locals 1

    const/4 v0, 0x0

    .line 77
    invoke-static {p0, v0, p1, p2}, Lcn/hutool/core/lang/hash/MurmurHash;->hash32([BIII)I

    move-result p0

    return p0
.end method

.method public static hash32([BIII)I
    .locals 5

    shr-int/lit8 v0, p2, 0x2

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_0

    shl-int/lit8 v3, v2, 0x2

    add-int/2addr v3, p1

    .line 96
    sget-object v4, Lcn/hutool/core/lang/hash/MurmurHash;->DEFAULT_ORDER:Ljava/nio/ByteOrder;

    invoke-static {p0, v3, v4}, Lcn/hutool/core/util/ByteUtil;->bytesToInt([BILjava/nio/ByteOrder;)I

    move-result v3

    .line 98
    invoke-static {v3, p3}, Lcn/hutool/core/lang/hash/MurmurHash;->mix32(II)I

    move-result p3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x2

    shl-int/2addr v0, v2

    add-int/2addr v0, p1

    add-int/2addr p1, p2

    sub-int/2addr p1, v0

    const/4 v3, 0x1

    if-eq p1, v3, :cond_3

    if-eq p1, v2, :cond_2

    const/4 v2, 0x3

    if-eq p1, v2, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 p1, v0, 0x2

    .line 106
    aget-byte p1, p0, p1

    and-int/lit16 p1, p1, 0xff

    shl-int/lit8 p1, p1, 0x10

    xor-int/2addr v1, p1

    :cond_2
    add-int/lit8 p1, v0, 0x1

    .line 108
    aget-byte p1, p0, p1

    and-int/lit16 p1, p1, 0xff

    shl-int/lit8 p1, p1, 0x8

    xor-int/2addr v1, p1

    .line 110
    :cond_3
    aget-byte p0, p0, v0

    and-int/lit16 p0, p0, 0xff

    xor-int/2addr p0, v1

    const p1, -0x3361d2af    # -8.293031E7f

    mul-int/2addr p0, p1

    const/16 p1, 0xf

    .line 114
    invoke-static {p0, p1}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result p0

    const p1, 0x1b873593

    mul-int/2addr p0, p1

    xor-int/2addr p3, p0

    :goto_1
    xor-int p0, p3, p2

    .line 121
    invoke-static {p0}, Lcn/hutool/core/lang/hash/MurmurHash;->fmix32(I)I

    move-result p0

    return p0
.end method

.method public static hash64(Ljava/lang/CharSequence;)J
    .locals 2

    .line 131
    sget-object v0, Lcn/hutool/core/lang/hash/MurmurHash;->DEFAULT_CHARSET:Ljava/nio/charset/Charset;

    invoke-static {p0, v0}, Lcn/hutool/core/util/StrUtil;->bytes(Ljava/lang/CharSequence;Ljava/nio/charset/Charset;)[B

    move-result-object p0

    invoke-static {p0}, Lcn/hutool/core/lang/hash/MurmurHash;->hash64([B)J

    move-result-wide v0

    return-wide v0
.end method

.method public static hash64([B)J
    .locals 2

    .line 142
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcn/hutool/core/lang/hash/MurmurHash;->hash64([BII)J

    move-result-wide v0

    return-wide v0
.end method

.method public static hash64([BII)J
    .locals 15

    move-object v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    int-to-long v2, v2

    shr-int/lit8 v4, v1, 0x3

    const/4 v5, 0x0

    :goto_0
    const-wide v6, 0x4cf5ad432745937fL    # 5.573325460219186E62

    const/16 v8, 0x1f

    const-wide v9, -0x783c846eeebdac2bL

    if-ge v5, v4, :cond_0

    shl-int/lit8 v11, v5, 0x3

    .line 161
    sget-object v12, Lcn/hutool/core/lang/hash/MurmurHash;->DEFAULT_ORDER:Ljava/nio/ByteOrder;

    invoke-static {p0, v11, v12}, Lcn/hutool/core/util/ByteUtil;->bytesToLong([BILjava/nio/ByteOrder;)J

    move-result-wide v11

    mul-long/2addr v11, v9

    .line 165
    invoke-static {v11, v12, v8}, Ljava/lang/Long;->rotateLeft(JI)J

    move-result-wide v8

    mul-long/2addr v8, v6

    xor-long/2addr v2, v8

    const/16 v6, 0x1b

    .line 168
    invoke-static {v2, v3, v6}, Ljava/lang/Long;->rotateLeft(JI)J

    move-result-wide v2

    const-wide/16 v6, 0x5

    mul-long/2addr v2, v6

    const-wide/32 v6, 0x52dce729

    add-long/2addr v2, v6

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    shl-int/lit8 v4, v4, 0x3

    sub-int v5, v1, v4

    const-wide/16 v11, 0xff

    const-wide/16 v13, 0x0

    packed-switch v5, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    add-int/lit8 v5, v4, 0x6

    .line 176
    aget-byte v5, v0, v5

    int-to-long v6, v5

    and-long v5, v6, v11

    const/16 v7, 0x30

    shl-long/2addr v5, v7

    xor-long/2addr v13, v5

    :pswitch_1
    add-int/lit8 v5, v4, 0x5

    .line 178
    aget-byte v5, v0, v5

    int-to-long v5, v5

    and-long/2addr v5, v11

    const/16 v7, 0x28

    shl-long/2addr v5, v7

    xor-long/2addr v13, v5

    :pswitch_2
    add-int/lit8 v5, v4, 0x4

    .line 180
    aget-byte v5, v0, v5

    int-to-long v5, v5

    and-long/2addr v5, v11

    const/16 v7, 0x20

    shl-long/2addr v5, v7

    xor-long/2addr v13, v5

    :pswitch_3
    add-int/lit8 v5, v4, 0x3

    .line 182
    aget-byte v5, v0, v5

    int-to-long v5, v5

    and-long/2addr v5, v11

    const/16 v7, 0x18

    shl-long/2addr v5, v7

    xor-long/2addr v13, v5

    :pswitch_4
    add-int/lit8 v5, v4, 0x2

    .line 184
    aget-byte v5, v0, v5

    int-to-long v5, v5

    and-long/2addr v5, v11

    const/16 v7, 0x10

    shl-long/2addr v5, v7

    xor-long/2addr v13, v5

    :pswitch_5
    add-int/lit8 v5, v4, 0x1

    .line 186
    aget-byte v5, v0, v5

    int-to-long v5, v5

    and-long/2addr v5, v11

    const/16 v7, 0x8

    shl-long/2addr v5, v7

    xor-long/2addr v13, v5

    .line 188
    :pswitch_6
    aget-byte v0, v0, v4

    int-to-long v4, v0

    and-long/2addr v4, v11

    xor-long/2addr v4, v13

    mul-long/2addr v4, v9

    .line 190
    invoke-static {v4, v5, v8}, Ljava/lang/Long;->rotateLeft(JI)J

    move-result-wide v4

    const-wide v6, 0x4cf5ad432745937fL    # 5.573325460219186E62

    mul-long/2addr v4, v6

    xor-long/2addr v2, v4

    :goto_1
    int-to-long v0, v1

    xor-long/2addr v0, v2

    .line 197
    invoke-static {v0, v1}, Lcn/hutool/core/lang/hash/MurmurHash;->fmix64(J)J

    move-result-wide v0

    return-wide v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static mix32(II)I
    .locals 1

    const v0, -0x3361d2af    # -8.293031E7f

    mul-int/2addr p0, v0

    const/16 v0, 0xf

    .line 340
    invoke-static {p0, v0}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result p0

    const v0, 0x1b873593

    mul-int/2addr p0, v0

    xor-int/2addr p0, p1

    const/16 p1, 0xd

    .line 343
    invoke-static {p0, p1}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result p0

    mul-int/lit8 p0, p0, 0x5

    const p1, -0x19ab949c

    add-int/2addr p0, p1

    return p0
.end method
