.class public Lcn/hutool/core/net/URLEncoder;
.super Ljava/lang/Object;
.source "URLEncoder.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final ALL:Lcn/hutool/core/net/URLEncoder;

.field public static final DEFAULT:Lcn/hutool/core/net/URLEncoder;

.field public static final FRAGMENT:Lcn/hutool/core/net/URLEncoder;

.field public static final PATH_SEGMENT:Lcn/hutool/core/net/URLEncoder;

.field public static final QUERY:Lcn/hutool/core/net/URLEncoder;

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private encodeSpaceAsPlus:Z

.field private final safeCharacters:Ljava/util/BitSet;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 44
    invoke-static {}, Lcn/hutool/core/net/URLEncoder;->createDefault()Lcn/hutool/core/net/URLEncoder;

    move-result-object v0

    sput-object v0, Lcn/hutool/core/net/URLEncoder;->DEFAULT:Lcn/hutool/core/net/URLEncoder;

    .line 58
    invoke-static {}, Lcn/hutool/core/net/URLEncoder;->createPathSegment()Lcn/hutool/core/net/URLEncoder;

    move-result-object v0

    sput-object v0, Lcn/hutool/core/net/URLEncoder;->PATH_SEGMENT:Lcn/hutool/core/net/URLEncoder;

    .line 74
    invoke-static {}, Lcn/hutool/core/net/URLEncoder;->createFragment()Lcn/hutool/core/net/URLEncoder;

    move-result-object v0

    sput-object v0, Lcn/hutool/core/net/URLEncoder;->FRAGMENT:Lcn/hutool/core/net/URLEncoder;

    .line 89
    invoke-static {}, Lcn/hutool/core/net/URLEncoder;->createQuery()Lcn/hutool/core/net/URLEncoder;

    move-result-object v0

    sput-object v0, Lcn/hutool/core/net/URLEncoder;->QUERY:Lcn/hutool/core/net/URLEncoder;

    .line 99
    invoke-static {}, Lcn/hutool/core/net/URLEncoder;->createAll()Lcn/hutool/core/net/URLEncoder;

    move-result-object v0

    sput-object v0, Lcn/hutool/core/net/URLEncoder;->ALL:Lcn/hutool/core/net/URLEncoder;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 275
    new-instance v0, Ljava/util/BitSet;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    invoke-direct {p0, v0}, Lcn/hutool/core/net/URLEncoder;-><init>(Ljava/util/BitSet;)V

    .line 278
    invoke-direct {p0}, Lcn/hutool/core/net/URLEncoder;->addAlpha()V

    .line 279
    invoke-direct {p0}, Lcn/hutool/core/net/URLEncoder;->addDigit()V

    return-void
.end method

.method private constructor <init>(Ljava/util/BitSet;)V
    .locals 1

    .line 287
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 268
    iput-boolean v0, p0, Lcn/hutool/core/net/URLEncoder;->encodeSpaceAsPlus:Z

    .line 288
    iput-object p1, p0, Lcn/hutool/core/net/URLEncoder;->safeCharacters:Ljava/util/BitSet;

    return-void
.end method

.method private addAlpha()V
    .locals 2

    const/16 v0, 0x61

    :goto_0
    const/16 v1, 0x7a

    if-gt v0, v1, :cond_0

    .line 371
    invoke-virtual {p0, v0}, Lcn/hutool/core/net/URLEncoder;->addSafeCharacter(C)V

    add-int/lit8 v0, v0, 0x1

    int-to-char v0, v0

    goto :goto_0

    :cond_0
    const/16 v0, 0x41

    :goto_1
    const/16 v1, 0x5a

    if-gt v0, v1, :cond_1

    .line 374
    invoke-virtual {p0, v0}, Lcn/hutool/core/net/URLEncoder;->addSafeCharacter(C)V

    add-int/lit8 v0, v0, 0x1

    int-to-char v0, v0

    goto :goto_1

    :cond_1
    return-void
.end method

.method private addDigit()V
    .locals 2

    const/16 v0, 0x30

    :goto_0
    const/16 v1, 0x39

    if-gt v0, v1, :cond_0

    .line 383
    invoke-virtual {p0, v0}, Lcn/hutool/core/net/URLEncoder;->addSafeCharacter(C)V

    add-int/lit8 v0, v0, 0x1

    int-to-char v0, v0

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static addSubDelims(Lcn/hutool/core/net/URLEncoder;)V
    .locals 1

    const/16 v0, 0x21

    .line 395
    invoke-virtual {p0, v0}, Lcn/hutool/core/net/URLEncoder;->addSafeCharacter(C)V

    const/16 v0, 0x24

    .line 396
    invoke-virtual {p0, v0}, Lcn/hutool/core/net/URLEncoder;->addSafeCharacter(C)V

    const/16 v0, 0x26

    .line 397
    invoke-virtual {p0, v0}, Lcn/hutool/core/net/URLEncoder;->addSafeCharacter(C)V

    const/16 v0, 0x27

    .line 398
    invoke-virtual {p0, v0}, Lcn/hutool/core/net/URLEncoder;->addSafeCharacter(C)V

    const/16 v0, 0x28

    .line 399
    invoke-virtual {p0, v0}, Lcn/hutool/core/net/URLEncoder;->addSafeCharacter(C)V

    const/16 v0, 0x29

    .line 400
    invoke-virtual {p0, v0}, Lcn/hutool/core/net/URLEncoder;->addSafeCharacter(C)V

    const/16 v0, 0x2a

    .line 401
    invoke-virtual {p0, v0}, Lcn/hutool/core/net/URLEncoder;->addSafeCharacter(C)V

    const/16 v0, 0x2b

    .line 402
    invoke-virtual {p0, v0}, Lcn/hutool/core/net/URLEncoder;->addSafeCharacter(C)V

    const/16 v0, 0x2c

    .line 403
    invoke-virtual {p0, v0}, Lcn/hutool/core/net/URLEncoder;->addSafeCharacter(C)V

    const/16 v0, 0x3b

    .line 404
    invoke-virtual {p0, v0}, Lcn/hutool/core/net/URLEncoder;->addSafeCharacter(C)V

    const/16 v0, 0x3d

    .line 405
    invoke-virtual {p0, v0}, Lcn/hutool/core/net/URLEncoder;->addSafeCharacter(C)V

    return-void
.end method

.method public static createAll()Lcn/hutool/core/net/URLEncoder;
    .locals 2

    .line 251
    new-instance v0, Lcn/hutool/core/net/URLEncoder;

    invoke-direct {v0}, Lcn/hutool/core/net/URLEncoder;-><init>()V

    const/16 v1, 0x2a

    .line 252
    invoke-virtual {v0, v1}, Lcn/hutool/core/net/URLEncoder;->addSafeCharacter(C)V

    const/16 v1, 0x2d

    .line 253
    invoke-virtual {v0, v1}, Lcn/hutool/core/net/URLEncoder;->addSafeCharacter(C)V

    const/16 v1, 0x2e

    .line 254
    invoke-virtual {v0, v1}, Lcn/hutool/core/net/URLEncoder;->addSafeCharacter(C)V

    const/16 v1, 0x5f

    .line 255
    invoke-virtual {v0, v1}, Lcn/hutool/core/net/URLEncoder;->addSafeCharacter(C)V

    return-object v0
.end method

.method public static createDefault()Lcn/hutool/core/net/URLEncoder;
    .locals 2

    .line 115
    new-instance v0, Lcn/hutool/core/net/URLEncoder;

    invoke-direct {v0}, Lcn/hutool/core/net/URLEncoder;-><init>()V

    const/16 v1, 0x2d

    .line 116
    invoke-virtual {v0, v1}, Lcn/hutool/core/net/URLEncoder;->addSafeCharacter(C)V

    const/16 v1, 0x2e

    .line 117
    invoke-virtual {v0, v1}, Lcn/hutool/core/net/URLEncoder;->addSafeCharacter(C)V

    const/16 v1, 0x5f

    .line 118
    invoke-virtual {v0, v1}, Lcn/hutool/core/net/URLEncoder;->addSafeCharacter(C)V

    const/16 v1, 0x7e

    .line 119
    invoke-virtual {v0, v1}, Lcn/hutool/core/net/URLEncoder;->addSafeCharacter(C)V

    .line 122
    invoke-static {v0}, Lcn/hutool/core/net/URLEncoder;->addSubDelims(Lcn/hutool/core/net/URLEncoder;)V

    const/16 v1, 0x3a

    .line 125
    invoke-virtual {v0, v1}, Lcn/hutool/core/net/URLEncoder;->addSafeCharacter(C)V

    const/16 v1, 0x40

    .line 126
    invoke-virtual {v0, v1}, Lcn/hutool/core/net/URLEncoder;->addSafeCharacter(C)V

    const/16 v1, 0x2f

    .line 129
    invoke-virtual {v0, v1}, Lcn/hutool/core/net/URLEncoder;->addSafeCharacter(C)V

    return-object v0
.end method

.method public static createFragment()Lcn/hutool/core/net/URLEncoder;
    .locals 2

    .line 185
    new-instance v0, Lcn/hutool/core/net/URLEncoder;

    invoke-direct {v0}, Lcn/hutool/core/net/URLEncoder;-><init>()V

    const/16 v1, 0x2d

    .line 186
    invoke-virtual {v0, v1}, Lcn/hutool/core/net/URLEncoder;->addSafeCharacter(C)V

    const/16 v1, 0x2e

    .line 187
    invoke-virtual {v0, v1}, Lcn/hutool/core/net/URLEncoder;->addSafeCharacter(C)V

    const/16 v1, 0x5f

    .line 188
    invoke-virtual {v0, v1}, Lcn/hutool/core/net/URLEncoder;->addSafeCharacter(C)V

    const/16 v1, 0x7e

    .line 189
    invoke-virtual {v0, v1}, Lcn/hutool/core/net/URLEncoder;->addSafeCharacter(C)V

    .line 192
    invoke-static {v0}, Lcn/hutool/core/net/URLEncoder;->addSubDelims(Lcn/hutool/core/net/URLEncoder;)V

    const/16 v1, 0x3a

    .line 195
    invoke-virtual {v0, v1}, Lcn/hutool/core/net/URLEncoder;->addSafeCharacter(C)V

    const/16 v1, 0x40

    .line 196
    invoke-virtual {v0, v1}, Lcn/hutool/core/net/URLEncoder;->addSafeCharacter(C)V

    const/16 v1, 0x2f

    .line 198
    invoke-virtual {v0, v1}, Lcn/hutool/core/net/URLEncoder;->addSafeCharacter(C)V

    const/16 v1, 0x3f

    .line 199
    invoke-virtual {v0, v1}, Lcn/hutool/core/net/URLEncoder;->addSafeCharacter(C)V

    return-object v0
.end method

.method public static createPathSegment()Lcn/hutool/core/net/URLEncoder;
    .locals 2

    .line 149
    new-instance v0, Lcn/hutool/core/net/URLEncoder;

    invoke-direct {v0}, Lcn/hutool/core/net/URLEncoder;-><init>()V

    const/16 v1, 0x2d

    .line 152
    invoke-virtual {v0, v1}, Lcn/hutool/core/net/URLEncoder;->addSafeCharacter(C)V

    const/16 v1, 0x2e

    .line 153
    invoke-virtual {v0, v1}, Lcn/hutool/core/net/URLEncoder;->addSafeCharacter(C)V

    const/16 v1, 0x5f

    .line 154
    invoke-virtual {v0, v1}, Lcn/hutool/core/net/URLEncoder;->addSafeCharacter(C)V

    const/16 v1, 0x7e

    .line 155
    invoke-virtual {v0, v1}, Lcn/hutool/core/net/URLEncoder;->addSafeCharacter(C)V

    .line 158
    invoke-static {v0}, Lcn/hutool/core/net/URLEncoder;->addSubDelims(Lcn/hutool/core/net/URLEncoder;)V

    const/16 v1, 0x40

    .line 163
    invoke-virtual {v0, v1}, Lcn/hutool/core/net/URLEncoder;->addSafeCharacter(C)V

    return-object v0
.end method

.method public static createQuery()Lcn/hutool/core/net/URLEncoder;
    .locals 2

    .line 220
    new-instance v0, Lcn/hutool/core/net/URLEncoder;

    invoke-direct {v0}, Lcn/hutool/core/net/URLEncoder;-><init>()V

    const/4 v1, 0x1

    .line 222
    invoke-virtual {v0, v1}, Lcn/hutool/core/net/URLEncoder;->setEncodeSpaceAsPlus(Z)V

    const/16 v1, 0x2a

    .line 225
    invoke-virtual {v0, v1}, Lcn/hutool/core/net/URLEncoder;->addSafeCharacter(C)V

    const/16 v1, 0x2d

    .line 226
    invoke-virtual {v0, v1}, Lcn/hutool/core/net/URLEncoder;->addSafeCharacter(C)V

    const/16 v1, 0x2e

    .line 227
    invoke-virtual {v0, v1}, Lcn/hutool/core/net/URLEncoder;->addSafeCharacter(C)V

    const/16 v1, 0x5f

    .line 228
    invoke-virtual {v0, v1}, Lcn/hutool/core/net/URLEncoder;->addSafeCharacter(C)V

    const/16 v1, 0x3d

    .line 230
    invoke-virtual {v0, v1}, Lcn/hutool/core/net/URLEncoder;->addSafeCharacter(C)V

    const/16 v1, 0x26

    .line 231
    invoke-virtual {v0, v1}, Lcn/hutool/core/net/URLEncoder;->addSafeCharacter(C)V

    return-object v0
.end method


# virtual methods
.method public addSafeCharacter(C)V
    .locals 1

    .line 298
    iget-object v0, p0, Lcn/hutool/core/net/URLEncoder;->safeCharacters:Ljava/util/BitSet;

    invoke-virtual {v0, p1}, Ljava/util/BitSet;->set(I)V

    return-void
.end method

.method public encode(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/lang/String;
    .locals 9

    if-eqz p2, :cond_5

    .line 328
    invoke-static {p1}, Lcn/hutool/core/util/StrUtil;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_3

    .line 332
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 333
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 334
    new-instance v2, Ljava/io/OutputStreamWriter;

    invoke-direct {v2, v1, p2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    const/4 p2, 0x0

    move v3, p2

    .line 337
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v3, v4, :cond_4

    .line 338
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 339
    iget-object v5, p0, Lcn/hutool/core/net/URLEncoder;->safeCharacters:Ljava/util/BitSet;

    invoke-virtual {v5, v4}, Ljava/util/BitSet;->get(I)Z

    move-result v5

    if-eqz v5, :cond_1

    int-to-char v4, v4

    .line 340
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 341
    :cond_1
    iget-boolean v5, p0, Lcn/hutool/core/net/URLEncoder;->encodeSpaceAsPlus:Z

    if-eqz v5, :cond_2

    const/16 v5, 0x20

    if-ne v4, v5, :cond_2

    const/16 v4, 0x2b

    .line 343
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_2
    int-to-char v4, v4

    .line 347
    :try_start_0
    invoke-virtual {v2, v4}, Ljava/io/OutputStreamWriter;->write(I)V

    .line 348
    invoke-virtual {v2}, Ljava/io/OutputStreamWriter;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 354
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    .line 355
    array-length v5, v4

    move v6, p2

    :goto_1
    if-ge v6, v5, :cond_3

    aget-byte v7, v4, v6

    const/16 v8, 0x25

    .line 357
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 358
    invoke-static {v0, v7, p2}, Lcn/hutool/core/util/HexUtil;->appendHex(Ljava/lang/StringBuilder;BZ)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 360
    :cond_3
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->reset()V

    goto :goto_2

    .line 350
    :catch_0
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->reset()V

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 363
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_5
    :goto_3
    return-object p1
.end method

.method public removeSafeCharacter(C)V
    .locals 1

    .line 308
    iget-object v0, p0, Lcn/hutool/core/net/URLEncoder;->safeCharacters:Ljava/util/BitSet;

    invoke-virtual {v0, p1}, Ljava/util/BitSet;->clear(I)V

    return-void
.end method

.method public setEncodeSpaceAsPlus(Z)V
    .locals 0

    .line 317
    iput-boolean p1, p0, Lcn/hutool/core/net/URLEncoder;->encodeSpaceAsPlus:Z

    return-void
.end method
