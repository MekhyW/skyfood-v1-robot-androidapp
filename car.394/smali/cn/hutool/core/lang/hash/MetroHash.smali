.class public Lcn/hutool/core/lang/hash/MetroHash;
.super Ljava/lang/Object;
.source "MetroHash.java"


# static fields
.field private static final k0_128:J = -0x37c56e1fL

.field private static final k0_64:J = -0x292fe70bL

.field private static final k1_128:J = -0x79b72425L

.field private static final k1_64:J = -0x5d55fcc5L

.field private static final k2_128:J = 0x7bdec03bL

.field private static final k2_64:J = 0x62992fc1L

.field private static final k3_128:J = 0x2f5870a5L

.field private static final k3_64:J = 0x30bc5b29L


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static hash128([B)Lcn/hutool/core/lang/hash/Number128;
    .locals 2

    const-wide/16 v0, 0x539

    .line 41
    invoke-static {p0, v0, v1}, Lcn/hutool/core/lang/hash/MetroHash;->hash128([BJ)Lcn/hutool/core/lang/hash/Number128;

    move-result-object p0

    return-object p0
.end method

.method public static hash128([BJ)Lcn/hutool/core/lang/hash/Number128;
    .locals 24

    const-wide/32 v0, -0x37c56e1f

    sub-long v2, p1, v0

    const-wide/32 v4, 0x2f5870a5

    mul-long/2addr v2, v4

    const-wide/32 v6, -0x79b72425

    add-long v8, p1, v6

    const-wide/32 v10, 0x7bdec03b

    mul-long/2addr v8, v10

    move-object/from16 v12, p0

    .line 124
    array-length v13, v12

    const/4 v14, 0x0

    const/16 v15, 0x20

    if-lt v13, v15, :cond_1

    add-long v17, p1, v0

    mul-long v17, v17, v10

    sub-long v19, p1, v6

    mul-long v19, v19, v4

    .line 128
    :goto_0
    array-length v13, v12

    if-lt v13, v15, :cond_0

    .line 129
    invoke-static {v12, v14}, Lcn/hutool/core/lang/hash/MetroHash;->littleEndian64([BI)J

    move-result-wide v21

    mul-long v21, v21, v0

    add-long v2, v2, v21

    .line 130
    array-length v13, v12

    const/16 v15, 0x8

    invoke-static {v12, v15, v13}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v12

    const/16 v13, 0x1d

    .line 131
    invoke-static {v2, v3, v13}, Lcn/hutool/core/lang/hash/MetroHash;->rotateRight(JI)J

    move-result-wide v2

    add-long v2, v2, v17

    .line 132
    invoke-static {v12, v14}, Lcn/hutool/core/lang/hash/MetroHash;->littleEndian64([BI)J

    move-result-wide v22

    mul-long v22, v22, v6

    add-long v8, v8, v22

    .line 133
    array-length v6, v12

    invoke-static {v12, v15, v6}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v6

    .line 134
    invoke-static {v8, v9, v13}, Lcn/hutool/core/lang/hash/MetroHash;->rotateRight(JI)J

    move-result-wide v7

    add-long v8, v7, v19

    .line 135
    invoke-static {v6, v14}, Lcn/hutool/core/lang/hash/MetroHash;->littleEndian64([BI)J

    move-result-wide v19

    mul-long v19, v19, v10

    add-long v10, v17, v19

    .line 136
    array-length v7, v6

    invoke-static {v6, v15, v7}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v6

    .line 137
    invoke-static {v10, v11, v13}, Lcn/hutool/core/lang/hash/MetroHash;->rotateRight(JI)J

    move-result-wide v10

    add-long v17, v10, v2

    .line 138
    invoke-static {v6, v14}, Lcn/hutool/core/lang/hash/MetroHash;->littleEndian64([BI)J

    move-result-wide v10

    mul-long/2addr v10, v4

    .line 139
    array-length v7, v6

    invoke-static {v6, v15, v7}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v12

    .line 140
    invoke-static {v10, v11, v13}, Lcn/hutool/core/lang/hash/MetroHash;->rotateRight(JI)J

    move-result-wide v6

    add-long v19, v6, v8

    const-wide/32 v6, -0x79b72425

    const-wide/32 v10, 0x7bdec03b

    const/16 v15, 0x20

    goto :goto_0

    :cond_0
    add-long v6, v2, v19

    mul-long/2addr v6, v0

    add-long/2addr v6, v8

    const/16 v10, 0x15

    .line 143
    invoke-static {v6, v7, v10}, Lcn/hutool/core/lang/hash/MetroHash;->rotateRight(JI)J

    move-result-wide v6

    const-wide/32 v21, -0x79b72425

    mul-long v6, v6, v21

    xor-long v6, v17, v6

    add-long v17, v8, v6

    mul-long v17, v17, v21

    add-long v4, v17, v2

    .line 144
    invoke-static {v4, v5, v10}, Lcn/hutool/core/lang/hash/MetroHash;->rotateRight(JI)J

    move-result-wide v4

    mul-long/2addr v4, v0

    xor-long v4, v19, v4

    add-long v17, v2, v6

    mul-long v17, v17, v0

    add-long v14, v17, v4

    .line 145
    invoke-static {v14, v15, v10}, Lcn/hutool/core/lang/hash/MetroHash;->rotateRight(JI)J

    move-result-wide v13

    mul-long v13, v13, v21

    xor-long/2addr v2, v13

    add-long/2addr v4, v8

    mul-long v4, v4, v21

    add-long/2addr v4, v6

    .line 146
    invoke-static {v4, v5, v10}, Lcn/hutool/core/lang/hash/MetroHash;->rotateRight(JI)J

    move-result-wide v4

    mul-long/2addr v4, v0

    xor-long/2addr v8, v4

    .line 149
    :cond_1
    array-length v4, v12

    const/16 v5, 0x10

    const/16 v6, 0x21

    if-lt v4, v5, :cond_2

    const/4 v4, 0x0

    .line 150
    invoke-static {v12, v4}, Lcn/hutool/core/lang/hash/MetroHash;->littleEndian64([BI)J

    move-result-wide v10

    const-wide/32 v13, 0x7bdec03b

    mul-long/2addr v10, v13

    add-long/2addr v2, v10

    .line 151
    array-length v5, v12

    const/16 v7, 0x8

    invoke-static {v12, v7, v5}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v5

    .line 152
    invoke-static {v2, v3, v6}, Lcn/hutool/core/lang/hash/MetroHash;->rotateRight(JI)J

    move-result-wide v2

    const-wide/32 v17, 0x2f5870a5

    mul-long v2, v2, v17

    .line 153
    invoke-static {v5, v4}, Lcn/hutool/core/lang/hash/MetroHash;->littleEndian64([BI)J

    move-result-wide v15

    mul-long/2addr v15, v13

    add-long/2addr v8, v15

    .line 154
    array-length v4, v5

    invoke-static {v5, v7, v4}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v12

    .line 155
    invoke-static {v8, v9, v6}, Lcn/hutool/core/lang/hash/MetroHash;->rotateRight(JI)J

    move-result-wide v4

    mul-long v4, v4, v17

    mul-long v7, v2, v13

    add-long/2addr v7, v4

    const/16 v9, 0x2d

    .line 156
    invoke-static {v7, v8, v9}, Lcn/hutool/core/lang/hash/MetroHash;->rotateRight(JI)J

    move-result-wide v7

    const-wide/32 v13, -0x79b72425

    add-long/2addr v7, v13

    xor-long/2addr v2, v7

    mul-long v7, v4, v17

    add-long/2addr v7, v2

    .line 157
    invoke-static {v7, v8, v9}, Lcn/hutool/core/lang/hash/MetroHash;->rotateRight(JI)J

    move-result-wide v7

    add-long/2addr v7, v0

    xor-long v8, v4, v7

    .line 160
    :cond_2
    array-length v4, v12

    const/16 v5, 0x8

    if-lt v4, v5, :cond_3

    const/4 v4, 0x0

    .line 161
    invoke-static {v12, v4}, Lcn/hutool/core/lang/hash/MetroHash;->littleEndian64([BI)J

    move-result-wide v13

    const-wide/32 v15, 0x7bdec03b

    mul-long/2addr v13, v15

    add-long/2addr v2, v13

    .line 162
    array-length v4, v12

    invoke-static {v12, v5, v4}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v12

    .line 163
    invoke-static {v2, v3, v6}, Lcn/hutool/core/lang/hash/MetroHash;->rotateRight(JI)J

    move-result-wide v2

    const-wide/32 v4, 0x2f5870a5

    mul-long/2addr v2, v4

    mul-long v4, v2, v15

    add-long/2addr v4, v8

    const/16 v7, 0x1b

    .line 164
    invoke-static {v4, v5, v7}, Lcn/hutool/core/lang/hash/MetroHash;->rotateRight(JI)J

    move-result-wide v4

    const-wide/32 v13, -0x79b72425

    mul-long/2addr v4, v13

    xor-long/2addr v2, v4

    .line 167
    :cond_3
    array-length v4, v12

    const/4 v5, 0x4

    if-lt v4, v5, :cond_4

    .line 168
    invoke-static {v12}, Lcn/hutool/core/lang/hash/MetroHash;->littleEndian32([B)I

    move-result v4

    int-to-long v13, v4

    const-wide/32 v15, 0x7bdec03b

    mul-long/2addr v13, v15

    add-long/2addr v8, v13

    .line 169
    array-length v4, v12

    invoke-static {v12, v5, v4}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v12

    .line 170
    invoke-static {v8, v9, v6}, Lcn/hutool/core/lang/hash/MetroHash;->rotateRight(JI)J

    move-result-wide v4

    const-wide/32 v7, 0x2f5870a5

    mul-long/2addr v4, v7

    mul-long v9, v4, v7

    add-long/2addr v9, v2

    const/16 v7, 0x2e

    .line 171
    invoke-static {v9, v10, v7}, Lcn/hutool/core/lang/hash/MetroHash;->rotateRight(JI)J

    move-result-wide v7

    mul-long/2addr v7, v0

    xor-long v8, v4, v7

    .line 174
    :cond_4
    array-length v4, v12

    const/4 v5, 0x2

    if-lt v4, v5, :cond_5

    .line 175
    invoke-static {v12}, Lcn/hutool/core/lang/hash/MetroHash;->littleEndian16([B)I

    move-result v4

    int-to-long v13, v4

    const-wide/32 v15, 0x7bdec03b

    mul-long/2addr v13, v15

    add-long/2addr v2, v13

    .line 176
    array-length v4, v12

    invoke-static {v12, v5, v4}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v12

    .line 177
    invoke-static {v2, v3, v6}, Lcn/hutool/core/lang/hash/MetroHash;->rotateRight(JI)J

    move-result-wide v2

    const-wide/32 v4, 0x2f5870a5

    mul-long/2addr v2, v4

    mul-long v4, v2, v15

    mul-long/2addr v4, v8

    const/16 v7, 0x16

    .line 178
    invoke-static {v4, v5, v7}, Lcn/hutool/core/lang/hash/MetroHash;->rotateRight(JI)J

    move-result-wide v4

    const-wide/32 v13, -0x79b72425

    mul-long/2addr v4, v13

    xor-long/2addr v2, v4

    .line 181
    :cond_5
    array-length v4, v12

    const/4 v5, 0x1

    if-lt v4, v5, :cond_6

    const/4 v4, 0x0

    .line 182
    aget-byte v4, v12, v4

    int-to-long v4, v4

    const-wide/32 v10, 0x7bdec03b

    mul-long/2addr v4, v10

    add-long/2addr v8, v4

    .line 183
    invoke-static {v8, v9, v6}, Lcn/hutool/core/lang/hash/MetroHash;->rotateRight(JI)J

    move-result-wide v4

    const-wide/32 v6, 0x2f5870a5

    mul-long/2addr v4, v6

    mul-long v8, v4, v6

    add-long/2addr v8, v2

    const/16 v6, 0x3a

    .line 184
    invoke-static {v8, v9, v6}, Lcn/hutool/core/lang/hash/MetroHash;->rotateRight(JI)J

    move-result-wide v6

    mul-long/2addr v6, v0

    xor-long v8, v4, v6

    :cond_6
    mul-long/2addr v0, v2

    add-long/2addr v0, v8

    const/16 v4, 0xd

    .line 187
    invoke-static {v0, v1, v4}, Lcn/hutool/core/lang/hash/MetroHash;->rotateRight(JI)J

    move-result-wide v0

    add-long/2addr v2, v0

    const-wide/32 v0, -0x79b72425

    mul-long v6, v8, v0

    add-long/2addr v6, v2

    const/16 v0, 0x25

    .line 188
    invoke-static {v6, v7, v0}, Lcn/hutool/core/lang/hash/MetroHash;->rotateRight(JI)J

    move-result-wide v5

    add-long/2addr v8, v5

    const-wide/32 v5, 0x7bdec03b

    mul-long v10, v2, v5

    add-long/2addr v10, v8

    .line 189
    invoke-static {v10, v11, v4}, Lcn/hutool/core/lang/hash/MetroHash;->rotateRight(JI)J

    move-result-wide v4

    add-long/2addr v2, v4

    const-wide/32 v4, 0x2f5870a5

    mul-long/2addr v4, v8

    add-long/2addr v4, v2

    .line 190
    invoke-static {v4, v5, v0}, Lcn/hutool/core/lang/hash/MetroHash;->rotateRight(JI)J

    move-result-wide v0

    add-long/2addr v8, v0

    .line 192
    new-instance v0, Lcn/hutool/core/lang/hash/Number128;

    invoke-direct {v0, v2, v3, v8, v9}, Lcn/hutool/core/lang/hash/Number128;-><init>(JJ)V

    return-object v0
.end method

.method public static hash64([B)J
    .locals 2

    const-wide/16 v0, 0x539

    .line 37
    invoke-static {p0, v0, v1}, Lcn/hutool/core/lang/hash/MetroHash;->hash64([BJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public static hash64([BJ)J
    .locals 26

    const-wide/32 v0, 0x62992fc1

    add-long v2, p1, v0

    const-wide/32 v4, -0x292fe70b

    mul-long/2addr v2, v4

    move-object/from16 v6, p0

    .line 54
    array-length v7, v6

    const/16 v8, 0x8

    const/4 v9, 0x0

    const/16 v10, -0x1d

    const-wide/32 v11, 0x30bc5b29

    const-wide/32 v13, -0x5d55fcc5

    const/16 v15, 0x20

    if-lt v7, v15, :cond_1

    move-wide/from16 v16, v2

    move-wide/from16 v18, v16

    move-wide/from16 v20, v18

    move-wide/from16 v22, v20

    .line 56
    :goto_0
    array-length v7, v6

    if-lt v7, v15, :cond_0

    .line 57
    invoke-static {v6, v9}, Lcn/hutool/core/lang/hash/MetroHash;->littleEndian64([BI)J

    move-result-wide v24

    mul-long v24, v24, v4

    add-long v4, v18, v24

    .line 58
    invoke-static {v4, v5, v10}, Lcn/hutool/core/lang/hash/MetroHash;->rotateLeft64(JI)J

    move-result-wide v4

    add-long v18, v4, v16

    .line 59
    invoke-static {v6, v8}, Lcn/hutool/core/lang/hash/MetroHash;->littleEndian64([BI)J

    move-result-wide v4

    mul-long/2addr v4, v13

    add-long v4, v22, v4

    .line 60
    invoke-static {v4, v5, v10}, Lcn/hutool/core/lang/hash/MetroHash;->rotateLeft64(JI)J

    move-result-wide v4

    add-long v22, v4, v20

    const/16 v4, 0x18

    .line 61
    invoke-static {v6, v4}, Lcn/hutool/core/lang/hash/MetroHash;->littleEndian64([BI)J

    move-result-wide v4

    mul-long/2addr v4, v0

    add-long v4, v16, v4

    .line 62
    invoke-static {v4, v5, v10}, Lcn/hutool/core/lang/hash/MetroHash;->rotateLeft64(JI)J

    move-result-wide v4

    add-long v16, v4, v18

    .line 63
    invoke-static {v6, v15}, Lcn/hutool/core/lang/hash/MetroHash;->littleEndian64([BI)J

    move-result-wide v4

    mul-long/2addr v4, v11

    add-long v4, v20, v4

    .line 64
    invoke-static {v4, v5, v10}, Lcn/hutool/core/lang/hash/MetroHash;->rotateLeft64(JI)J

    move-result-wide v4

    add-long v20, v4, v22

    .line 65
    array-length v4, v6

    invoke-static {v6, v15, v4}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v6

    const-wide/32 v4, -0x292fe70b

    goto :goto_0

    :cond_0
    add-long v4, v18, v20

    const-wide/32 v24, -0x292fe70b

    mul-long v4, v4, v24

    add-long v4, v4, v22

    const/16 v7, -0x25

    .line 68
    invoke-static {v4, v5, v7}, Lcn/hutool/core/lang/hash/MetroHash;->rotateLeft64(JI)J

    move-result-wide v4

    mul-long/2addr v4, v13

    xor-long v4, v16, v4

    add-long v15, v22, v4

    mul-long/2addr v15, v13

    add-long v11, v15, v18

    .line 69
    invoke-static {v11, v12, v7}, Lcn/hutool/core/lang/hash/MetroHash;->rotateLeft64(JI)J

    move-result-wide v11

    mul-long v11, v11, v24

    xor-long v11, v20, v11

    add-long v15, v18, v4

    mul-long v15, v15, v24

    add-long v0, v15, v11

    .line 70
    invoke-static {v0, v1, v7}, Lcn/hutool/core/lang/hash/MetroHash;->rotateLeft64(JI)J

    move-result-wide v0

    mul-long/2addr v0, v13

    xor-long v0, v18, v0

    add-long v11, v22, v11

    mul-long/2addr v11, v13

    add-long/2addr v11, v4

    .line 71
    invoke-static {v11, v12, v7}, Lcn/hutool/core/lang/hash/MetroHash;->rotateLeft64(JI)J

    move-result-wide v4

    mul-long v4, v4, v24

    xor-long v4, v22, v4

    xor-long/2addr v0, v4

    add-long/2addr v2, v0

    .line 75
    :cond_1
    array-length v0, v6

    const/16 v1, 0x10

    if-lt v0, v1, :cond_2

    .line 76
    invoke-static {v6, v9}, Lcn/hutool/core/lang/hash/MetroHash;->littleEndian64([BI)J

    move-result-wide v4

    const-wide/32 v11, 0x62992fc1

    mul-long/2addr v4, v11

    add-long/2addr v4, v2

    .line 77
    invoke-static {v4, v5, v10}, Lcn/hutool/core/lang/hash/MetroHash;->rotateLeft64(JI)J

    move-result-wide v4

    const-wide/32 v15, 0x30bc5b29

    mul-long/2addr v4, v15

    .line 78
    invoke-static {v6, v8}, Lcn/hutool/core/lang/hash/MetroHash;->littleEndian64([BI)J

    move-result-wide v17

    mul-long v17, v17, v11

    add-long v11, v2, v17

    .line 79
    invoke-static {v11, v12, v10}, Lcn/hutool/core/lang/hash/MetroHash;->rotateLeft64(JI)J

    move-result-wide v11

    mul-long/2addr v11, v15

    const-wide/32 v17, -0x292fe70b

    mul-long v13, v4, v17

    const/16 v0, -0x15

    .line 80
    invoke-static {v13, v14, v0}, Lcn/hutool/core/lang/hash/MetroHash;->rotateLeft64(JI)J

    move-result-wide v13

    add-long/2addr v13, v11

    xor-long/2addr v4, v13

    mul-long v13, v11, v15

    .line 81
    invoke-static {v13, v14, v0}, Lcn/hutool/core/lang/hash/MetroHash;->rotateLeft64(JI)J

    move-result-wide v13

    add-long/2addr v13, v4

    xor-long v4, v11, v13

    add-long/2addr v2, v4

    .line 83
    array-length v0, v6

    invoke-static {v6, v1, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v6

    .line 86
    :cond_2
    array-length v0, v6

    if-lt v0, v8, :cond_3

    .line 87
    invoke-static {v6, v9}, Lcn/hutool/core/lang/hash/MetroHash;->littleEndian64([BI)J

    move-result-wide v0

    const-wide/32 v4, 0x30bc5b29

    mul-long/2addr v0, v4

    add-long/2addr v2, v0

    .line 88
    array-length v0, v6

    invoke-static {v6, v8, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v6

    const/16 v0, -0x37

    .line 89
    invoke-static {v2, v3, v0}, Lcn/hutool/core/lang/hash/MetroHash;->rotateLeft64(JI)J

    move-result-wide v0

    const-wide/32 v4, -0x5d55fcc5

    mul-long/2addr v0, v4

    xor-long/2addr v2, v0

    .line 92
    :cond_3
    array-length v0, v6

    const/4 v1, 0x4

    if-lt v0, v1, :cond_4

    .line 93
    invoke-static {v6, v9, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    invoke-static {v0}, Lcn/hutool/core/lang/hash/MetroHash;->littleEndian32([B)I

    move-result v0

    int-to-long v4, v0

    const-wide/32 v7, 0x30bc5b29

    mul-long/2addr v4, v7

    add-long/2addr v2, v4

    const/16 v0, -0x1a

    .line 94
    invoke-static {v2, v3, v0}, Lcn/hutool/core/lang/hash/MetroHash;->rotateLeft64(JI)J

    move-result-wide v4

    const-wide/32 v7, -0x5d55fcc5

    mul-long/2addr v4, v7

    xor-long/2addr v2, v4

    .line 95
    array-length v0, v6

    invoke-static {v6, v1, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v6

    .line 98
    :cond_4
    array-length v0, v6

    const/4 v1, 0x2

    if-lt v0, v1, :cond_5

    .line 99
    invoke-static {v6, v9, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    invoke-static {v0}, Lcn/hutool/core/lang/hash/MetroHash;->littleEndian16([B)I

    move-result v0

    int-to-long v4, v0

    const-wide/32 v7, 0x30bc5b29

    mul-long/2addr v4, v7

    add-long/2addr v2, v4

    .line 100
    array-length v0, v6

    invoke-static {v6, v1, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v6

    const/16 v0, -0x30

    .line 101
    invoke-static {v2, v3, v0}, Lcn/hutool/core/lang/hash/MetroHash;->rotateLeft64(JI)J

    move-result-wide v0

    const-wide/32 v4, -0x5d55fcc5

    mul-long/2addr v0, v4

    xor-long/2addr v2, v0

    .line 104
    :cond_5
    array-length v0, v6

    const/4 v1, 0x1

    if-lt v0, v1, :cond_6

    .line 105
    aget-byte v0, v6, v9

    int-to-long v0, v0

    const-wide/32 v4, 0x30bc5b29

    mul-long/2addr v0, v4

    add-long/2addr v2, v0

    const/16 v0, -0x26

    .line 106
    invoke-static {v2, v3, v0}, Lcn/hutool/core/lang/hash/MetroHash;->rotateLeft64(JI)J

    move-result-wide v0

    const-wide/32 v4, -0x5d55fcc5

    mul-long/2addr v0, v4

    xor-long/2addr v2, v0

    :cond_6
    const/16 v0, -0x1c

    .line 109
    invoke-static {v2, v3, v0}, Lcn/hutool/core/lang/hash/MetroHash;->rotateLeft64(JI)J

    move-result-wide v0

    xor-long/2addr v0, v2

    const-wide/32 v2, -0x292fe70b

    mul-long/2addr v0, v2

    .line 111
    invoke-static {v0, v1, v10}, Lcn/hutool/core/lang/hash/MetroHash;->rotateLeft64(JI)J

    move-result-wide v2

    xor-long/2addr v0, v2

    return-wide v0
.end method

.method private static littleEndian16([B)I
    .locals 1

    .line 205
    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-static {p0, v0}, Lcn/hutool/core/util/ByteUtil;->bytesToShort([BLjava/nio/ByteOrder;)S

    move-result p0

    return p0
.end method

.method private static littleEndian32([B)I
    .locals 2

    const/4 v0, 0x0

    .line 201
    aget-byte v0, p0, v0

    const/4 v1, 0x1

    aget-byte v1, p0, v1

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    const/4 v1, 0x2

    aget-byte v1, p0, v1

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    const/4 v1, 0x3

    aget-byte p0, p0, v1

    shl-int/lit8 p0, p0, 0x18

    or-int/2addr p0, v0

    return p0
.end method

.method private static littleEndian64([BI)J
    .locals 1

    .line 197
    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-static {p0, p1, v0}, Lcn/hutool/core/util/ByteUtil;->bytesToLong([BILjava/nio/ByteOrder;)J

    move-result-wide p0

    return-wide p0
.end method

.method private static rotateLeft64(JI)J
    .locals 2

    and-int/lit8 p2, p2, 0x3f

    shl-long v0, p0, p2

    rsub-int/lit8 p2, p2, 0x40

    shr-long/2addr p0, p2

    or-long/2addr p0, v0

    return-wide p0
.end method

.method private static rotateRight(JI)J
    .locals 2

    shr-long v0, p0, p2

    rsub-int/lit8 p2, p2, 0x40

    shl-long/2addr p0, p2

    or-long/2addr p0, v0

    return-wide p0
.end method
