.class public Lcn/hutool/core/codec/Rot;
.super Ljava/lang/Object;
.source "Rot.java"


# static fields
.field private static final ACHAR:C = 'A'

.field private static final CHAR0:C = '0'

.field private static final CHAR9:C = '9'

.field private static final ZCHAR:C = 'Z'

.field private static final aCHAR:C = 'a'

.field private static final zCHAR:C = 'z'


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decode(Ljava/lang/String;IZ)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "rot must not be null"

    .line 91
    invoke-static {p0, v2, v1}, Lcn/hutool/core/lang/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 93
    new-array v2, v1, [C

    :goto_0
    if-ge v0, v1, :cond_0

    .line 96
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3, p1, p2}, Lcn/hutool/core/codec/Rot;->decodeChar(CIZ)C

    move-result v3

    aput-char v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 98
    :cond_0
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v2}, Ljava/lang/String;-><init>([C)V

    return-object p0
.end method

.method public static decode13(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    .line 68
    invoke-static {p0, v0}, Lcn/hutool/core/codec/Rot;->decode13(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static decode13(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 1

    const/16 v0, 0xd

    .line 79
    invoke-static {p0, v0, p1}, Lcn/hutool/core/codec/Rot;->decode(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static decodeChar(CIZ)C
    .locals 1

    if-eqz p2, :cond_1

    const/16 p2, 0x30

    if-lt p0, p2, :cond_1

    const/16 v0, 0x39

    if-gt p0, v0, :cond_1

    add-int/lit8 p0, p0, -0x30

    sub-int/2addr p0, p1

    :goto_0
    if-gez p0, :cond_0

    add-int/lit8 p0, p0, 0xa

    goto :goto_0

    :cond_0
    add-int/2addr p0, p2

    :cond_1
    const/16 p2, 0x41

    if-lt p0, p2, :cond_2

    const/16 v0, 0x5a

    if-gt p0, v0, :cond_2

    add-int/lit8 p0, p0, -0x41

    sub-int/2addr p0, p1

    :goto_1
    if-gez p0, :cond_3

    add-int/lit8 p0, p0, 0x1a

    goto :goto_1

    :cond_2
    const/16 p2, 0x61

    if-lt p0, p2, :cond_4

    const/16 v0, 0x7a

    if-gt p0, v0, :cond_4

    add-int/lit8 p0, p0, -0x61

    sub-int/2addr p0, p1

    if-gez p0, :cond_3

    add-int/lit8 p0, p0, 0x1a

    :cond_3
    add-int/2addr p0, p2

    :cond_4
    int-to-char p0, p0

    return p0
.end method

.method public static encode(Ljava/lang/String;IZ)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "message must not be null"

    .line 51
    invoke-static {p0, v2, v1}, Lcn/hutool/core/lang/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 53
    new-array v2, v1, [C

    :goto_0
    if-ge v0, v1, :cond_0

    .line 56
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3, p1, p2}, Lcn/hutool/core/codec/Rot;->encodeChar(CIZ)C

    move-result v3

    aput-char v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 58
    :cond_0
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v2}, Ljava/lang/String;-><init>([C)V

    return-object p0
.end method

.method public static encode13(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    .line 28
    invoke-static {p0, v0}, Lcn/hutool/core/codec/Rot;->encode13(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static encode13(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 1

    const/16 v0, 0xd

    .line 39
    invoke-static {p0, v0, p1}, Lcn/hutool/core/codec/Rot;->encode(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static encodeChar(CIZ)C
    .locals 1

    if-eqz p2, :cond_0

    const/16 p2, 0x30

    if-lt p0, p2, :cond_0

    const/16 v0, 0x39

    if-gt p0, v0, :cond_0

    add-int/lit8 p0, p0, -0x30

    int-to-char p0, p0

    add-int/2addr p0, p1

    .line 114
    rem-int/lit8 p0, p0, 0xa

    int-to-char p0, p0

    add-int/2addr p0, p2

    int-to-char p0, p0

    :cond_0
    const/16 p2, 0x41

    if-lt p0, p2, :cond_1

    const/16 v0, 0x5a

    if-gt p0, v0, :cond_1

    add-int/lit8 p0, p0, -0x41

    int-to-char p0, p0

    add-int/2addr p0, p1

    .line 122
    rem-int/lit8 p0, p0, 0x1a

    :goto_0
    int-to-char p0, p0

    add-int/2addr p0, p2

    int-to-char p0, p0

    goto :goto_1

    :cond_1
    const/16 p2, 0x61

    if-lt p0, p2, :cond_2

    const/16 v0, 0x7a

    if-gt p0, v0, :cond_2

    add-int/lit8 p0, p0, -0x61

    int-to-char p0, p0

    add-int/2addr p0, p1

    .line 128
    rem-int/lit8 p0, p0, 0x1a

    goto :goto_0

    :cond_2
    :goto_1
    return p0
.end method
