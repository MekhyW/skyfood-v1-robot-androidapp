.class public Lcn/hutool/core/text/PasswdStrength;
.super Ljava/lang/Object;
.source "PasswdStrength.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/hutool/core/text/PasswdStrength$CHAR_TYPE;,
        Lcn/hutool/core/text/PasswdStrength$PASSWD_LEVEL;
    }
.end annotation


# static fields
.field private static final DICTIONARY:[Ljava/lang/String;

.field private static final SIZE_TABLE:[I


# direct methods
.method static constructor <clinit>()V
    .locals 13

    const-string v0, "password"

    const-string v1, "abc123"

    const-string v2, "iloveyou"

    const-string v3, "adobe123"

    const-string v4, "123123"

    const-string v5, "sunshine"

    const-string v6, "1314520"

    const-string v7, "a1b2c3"

    const-string v8, "123qwe"

    const-string v9, "aaa111"

    const-string v10, "qweasd"

    const-string v11, "admin"

    const-string v12, "passwd"

    .line 31
    filled-new-array/range {v0 .. v12}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/hutool/core/text/PasswdStrength;->DICTIONARY:[Ljava/lang/String;

    const/16 v0, 0xa

    new-array v0, v0, [I

    .line 37
    fill-array-data v0, :array_0

    sput-object v0, Lcn/hutool/core/text/PasswdStrength;->SIZE_TABLE:[I

    return-void

    :array_0
    .array-data 4
        0x9
        0x63
        0x3e7
        0x270f
        0x1869f
        0xf423f
        0x98967f
        0x5f5e0ff
        0x3b9ac9ff
        0x7fffffff
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static check(Ljava/lang/String;)I
    .locals 12

    if-eqz p0, :cond_35

    .line 50
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 54
    sget-object v1, Lcn/hutool/core/text/PasswdStrength$CHAR_TYPE;->NUM:Lcn/hutool/core/text/PasswdStrength$CHAR_TYPE;

    invoke-static {p0, v1}, Lcn/hutool/core/text/PasswdStrength;->countLetter(Ljava/lang/String;Lcn/hutool/core/text/PasswdStrength$CHAR_TYPE;)I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-lez v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    .line 57
    :goto_0
    sget-object v4, Lcn/hutool/core/text/PasswdStrength$CHAR_TYPE;->SMALL_LETTER:Lcn/hutool/core/text/PasswdStrength$CHAR_TYPE;

    invoke-static {p0, v4}, Lcn/hutool/core/text/PasswdStrength;->countLetter(Ljava/lang/String;Lcn/hutool/core/text/PasswdStrength$CHAR_TYPE;)I

    move-result v4

    if-lez v4, :cond_1

    add-int/lit8 v1, v1, 0x1

    :cond_1
    const/4 v4, 0x4

    if-le v0, v4, :cond_2

    .line 60
    sget-object v5, Lcn/hutool/core/text/PasswdStrength$CHAR_TYPE;->CAPITAL_LETTER:Lcn/hutool/core/text/PasswdStrength$CHAR_TYPE;

    invoke-static {p0, v5}, Lcn/hutool/core/text/PasswdStrength;->countLetter(Ljava/lang/String;Lcn/hutool/core/text/PasswdStrength$CHAR_TYPE;)I

    move-result v5

    if-lez v5, :cond_2

    add-int/lit8 v1, v1, 0x1

    :cond_2
    const/4 v5, 0x6

    if-le v0, v5, :cond_3

    .line 63
    sget-object v6, Lcn/hutool/core/text/PasswdStrength$CHAR_TYPE;->OTHER_CHAR:Lcn/hutool/core/text/PasswdStrength$CHAR_TYPE;

    invoke-static {p0, v6}, Lcn/hutool/core/text/PasswdStrength;->countLetter(Ljava/lang/String;Lcn/hutool/core/text/PasswdStrength$CHAR_TYPE;)I

    move-result v6

    if-lez v6, :cond_3

    add-int/lit8 v1, v1, 0x1

    :cond_3
    if-le v0, v4, :cond_4

    .line 67
    sget-object v6, Lcn/hutool/core/text/PasswdStrength$CHAR_TYPE;->NUM:Lcn/hutool/core/text/PasswdStrength$CHAR_TYPE;

    invoke-static {p0, v6}, Lcn/hutool/core/text/PasswdStrength;->countLetter(Ljava/lang/String;Lcn/hutool/core/text/PasswdStrength$CHAR_TYPE;)I

    move-result v6

    if-lez v6, :cond_4

    sget-object v6, Lcn/hutool/core/text/PasswdStrength$CHAR_TYPE;->SMALL_LETTER:Lcn/hutool/core/text/PasswdStrength$CHAR_TYPE;

    invoke-static {p0, v6}, Lcn/hutool/core/text/PasswdStrength;->countLetter(Ljava/lang/String;Lcn/hutool/core/text/PasswdStrength$CHAR_TYPE;)I

    move-result v6

    if-gtz v6, :cond_9

    :cond_4
    sget-object v6, Lcn/hutool/core/text/PasswdStrength$CHAR_TYPE;->NUM:Lcn/hutool/core/text/PasswdStrength$CHAR_TYPE;

    .line 68
    invoke-static {p0, v6}, Lcn/hutool/core/text/PasswdStrength;->countLetter(Ljava/lang/String;Lcn/hutool/core/text/PasswdStrength$CHAR_TYPE;)I

    move-result v6

    if-lez v6, :cond_5

    sget-object v6, Lcn/hutool/core/text/PasswdStrength$CHAR_TYPE;->CAPITAL_LETTER:Lcn/hutool/core/text/PasswdStrength$CHAR_TYPE;

    invoke-static {p0, v6}, Lcn/hutool/core/text/PasswdStrength;->countLetter(Ljava/lang/String;Lcn/hutool/core/text/PasswdStrength$CHAR_TYPE;)I

    move-result v6

    if-gtz v6, :cond_9

    :cond_5
    sget-object v6, Lcn/hutool/core/text/PasswdStrength$CHAR_TYPE;->NUM:Lcn/hutool/core/text/PasswdStrength$CHAR_TYPE;

    .line 69
    invoke-static {p0, v6}, Lcn/hutool/core/text/PasswdStrength;->countLetter(Ljava/lang/String;Lcn/hutool/core/text/PasswdStrength$CHAR_TYPE;)I

    move-result v6

    if-lez v6, :cond_6

    sget-object v6, Lcn/hutool/core/text/PasswdStrength$CHAR_TYPE;->OTHER_CHAR:Lcn/hutool/core/text/PasswdStrength$CHAR_TYPE;

    invoke-static {p0, v6}, Lcn/hutool/core/text/PasswdStrength;->countLetter(Ljava/lang/String;Lcn/hutool/core/text/PasswdStrength$CHAR_TYPE;)I

    move-result v6

    if-gtz v6, :cond_9

    :cond_6
    sget-object v6, Lcn/hutool/core/text/PasswdStrength$CHAR_TYPE;->SMALL_LETTER:Lcn/hutool/core/text/PasswdStrength$CHAR_TYPE;

    .line 70
    invoke-static {p0, v6}, Lcn/hutool/core/text/PasswdStrength;->countLetter(Ljava/lang/String;Lcn/hutool/core/text/PasswdStrength$CHAR_TYPE;)I

    move-result v6

    if-lez v6, :cond_7

    sget-object v6, Lcn/hutool/core/text/PasswdStrength$CHAR_TYPE;->CAPITAL_LETTER:Lcn/hutool/core/text/PasswdStrength$CHAR_TYPE;

    invoke-static {p0, v6}, Lcn/hutool/core/text/PasswdStrength;->countLetter(Ljava/lang/String;Lcn/hutool/core/text/PasswdStrength$CHAR_TYPE;)I

    move-result v6

    if-gtz v6, :cond_9

    :cond_7
    sget-object v6, Lcn/hutool/core/text/PasswdStrength$CHAR_TYPE;->SMALL_LETTER:Lcn/hutool/core/text/PasswdStrength$CHAR_TYPE;

    .line 71
    invoke-static {p0, v6}, Lcn/hutool/core/text/PasswdStrength;->countLetter(Ljava/lang/String;Lcn/hutool/core/text/PasswdStrength$CHAR_TYPE;)I

    move-result v6

    if-lez v6, :cond_8

    sget-object v6, Lcn/hutool/core/text/PasswdStrength$CHAR_TYPE;->OTHER_CHAR:Lcn/hutool/core/text/PasswdStrength$CHAR_TYPE;

    invoke-static {p0, v6}, Lcn/hutool/core/text/PasswdStrength;->countLetter(Ljava/lang/String;Lcn/hutool/core/text/PasswdStrength$CHAR_TYPE;)I

    move-result v6

    if-gtz v6, :cond_9

    :cond_8
    sget-object v6, Lcn/hutool/core/text/PasswdStrength$CHAR_TYPE;->CAPITAL_LETTER:Lcn/hutool/core/text/PasswdStrength$CHAR_TYPE;

    .line 72
    invoke-static {p0, v6}, Lcn/hutool/core/text/PasswdStrength;->countLetter(Ljava/lang/String;Lcn/hutool/core/text/PasswdStrength$CHAR_TYPE;)I

    move-result v6

    if-lez v6, :cond_a

    sget-object v6, Lcn/hutool/core/text/PasswdStrength$CHAR_TYPE;->OTHER_CHAR:Lcn/hutool/core/text/PasswdStrength$CHAR_TYPE;

    invoke-static {p0, v6}, Lcn/hutool/core/text/PasswdStrength;->countLetter(Ljava/lang/String;Lcn/hutool/core/text/PasswdStrength$CHAR_TYPE;)I

    move-result v6

    if-lez v6, :cond_a

    :cond_9
    add-int/lit8 v1, v1, 0x1

    :cond_a
    if-le v0, v5, :cond_b

    .line 76
    sget-object v6, Lcn/hutool/core/text/PasswdStrength$CHAR_TYPE;->NUM:Lcn/hutool/core/text/PasswdStrength$CHAR_TYPE;

    invoke-static {p0, v6}, Lcn/hutool/core/text/PasswdStrength;->countLetter(Ljava/lang/String;Lcn/hutool/core/text/PasswdStrength$CHAR_TYPE;)I

    move-result v6

    if-lez v6, :cond_b

    sget-object v6, Lcn/hutool/core/text/PasswdStrength$CHAR_TYPE;->SMALL_LETTER:Lcn/hutool/core/text/PasswdStrength$CHAR_TYPE;

    invoke-static {p0, v6}, Lcn/hutool/core/text/PasswdStrength;->countLetter(Ljava/lang/String;Lcn/hutool/core/text/PasswdStrength$CHAR_TYPE;)I

    move-result v6

    if-lez v6, :cond_b

    sget-object v6, Lcn/hutool/core/text/PasswdStrength$CHAR_TYPE;->CAPITAL_LETTER:Lcn/hutool/core/text/PasswdStrength$CHAR_TYPE;

    .line 77
    invoke-static {p0, v6}, Lcn/hutool/core/text/PasswdStrength;->countLetter(Ljava/lang/String;Lcn/hutool/core/text/PasswdStrength$CHAR_TYPE;)I

    move-result v6

    if-gtz v6, :cond_e

    :cond_b
    sget-object v6, Lcn/hutool/core/text/PasswdStrength$CHAR_TYPE;->NUM:Lcn/hutool/core/text/PasswdStrength$CHAR_TYPE;

    invoke-static {p0, v6}, Lcn/hutool/core/text/PasswdStrength;->countLetter(Ljava/lang/String;Lcn/hutool/core/text/PasswdStrength$CHAR_TYPE;)I

    move-result v6

    if-lez v6, :cond_c

    sget-object v6, Lcn/hutool/core/text/PasswdStrength$CHAR_TYPE;->SMALL_LETTER:Lcn/hutool/core/text/PasswdStrength$CHAR_TYPE;

    .line 78
    invoke-static {p0, v6}, Lcn/hutool/core/text/PasswdStrength;->countLetter(Ljava/lang/String;Lcn/hutool/core/text/PasswdStrength$CHAR_TYPE;)I

    move-result v6

    if-lez v6, :cond_c

    sget-object v6, Lcn/hutool/core/text/PasswdStrength$CHAR_TYPE;->OTHER_CHAR:Lcn/hutool/core/text/PasswdStrength$CHAR_TYPE;

    invoke-static {p0, v6}, Lcn/hutool/core/text/PasswdStrength;->countLetter(Ljava/lang/String;Lcn/hutool/core/text/PasswdStrength$CHAR_TYPE;)I

    move-result v6

    if-gtz v6, :cond_e

    :cond_c
    sget-object v6, Lcn/hutool/core/text/PasswdStrength$CHAR_TYPE;->NUM:Lcn/hutool/core/text/PasswdStrength$CHAR_TYPE;

    .line 79
    invoke-static {p0, v6}, Lcn/hutool/core/text/PasswdStrength;->countLetter(Ljava/lang/String;Lcn/hutool/core/text/PasswdStrength$CHAR_TYPE;)I

    move-result v6

    if-lez v6, :cond_d

    sget-object v6, Lcn/hutool/core/text/PasswdStrength$CHAR_TYPE;->CAPITAL_LETTER:Lcn/hutool/core/text/PasswdStrength$CHAR_TYPE;

    invoke-static {p0, v6}, Lcn/hutool/core/text/PasswdStrength;->countLetter(Ljava/lang/String;Lcn/hutool/core/text/PasswdStrength$CHAR_TYPE;)I

    move-result v6

    if-lez v6, :cond_d

    sget-object v6, Lcn/hutool/core/text/PasswdStrength$CHAR_TYPE;->OTHER_CHAR:Lcn/hutool/core/text/PasswdStrength$CHAR_TYPE;

    .line 80
    invoke-static {p0, v6}, Lcn/hutool/core/text/PasswdStrength;->countLetter(Ljava/lang/String;Lcn/hutool/core/text/PasswdStrength$CHAR_TYPE;)I

    move-result v6

    if-gtz v6, :cond_e

    :cond_d
    sget-object v6, Lcn/hutool/core/text/PasswdStrength$CHAR_TYPE;->SMALL_LETTER:Lcn/hutool/core/text/PasswdStrength$CHAR_TYPE;

    invoke-static {p0, v6}, Lcn/hutool/core/text/PasswdStrength;->countLetter(Ljava/lang/String;Lcn/hutool/core/text/PasswdStrength$CHAR_TYPE;)I

    move-result v6

    if-lez v6, :cond_f

    sget-object v6, Lcn/hutool/core/text/PasswdStrength$CHAR_TYPE;->CAPITAL_LETTER:Lcn/hutool/core/text/PasswdStrength$CHAR_TYPE;

    .line 81
    invoke-static {p0, v6}, Lcn/hutool/core/text/PasswdStrength;->countLetter(Ljava/lang/String;Lcn/hutool/core/text/PasswdStrength$CHAR_TYPE;)I

    move-result v6

    if-lez v6, :cond_f

    sget-object v6, Lcn/hutool/core/text/PasswdStrength$CHAR_TYPE;->OTHER_CHAR:Lcn/hutool/core/text/PasswdStrength$CHAR_TYPE;

    invoke-static {p0, v6}, Lcn/hutool/core/text/PasswdStrength;->countLetter(Ljava/lang/String;Lcn/hutool/core/text/PasswdStrength$CHAR_TYPE;)I

    move-result v6

    if-lez v6, :cond_f

    :cond_e
    add-int/lit8 v1, v1, 0x1

    :cond_f
    const/16 v6, 0x8

    if-le v0, v6, :cond_10

    .line 85
    sget-object v7, Lcn/hutool/core/text/PasswdStrength$CHAR_TYPE;->NUM:Lcn/hutool/core/text/PasswdStrength$CHAR_TYPE;

    invoke-static {p0, v7}, Lcn/hutool/core/text/PasswdStrength;->countLetter(Ljava/lang/String;Lcn/hutool/core/text/PasswdStrength$CHAR_TYPE;)I

    move-result v7

    if-lez v7, :cond_10

    sget-object v7, Lcn/hutool/core/text/PasswdStrength$CHAR_TYPE;->SMALL_LETTER:Lcn/hutool/core/text/PasswdStrength$CHAR_TYPE;

    invoke-static {p0, v7}, Lcn/hutool/core/text/PasswdStrength;->countLetter(Ljava/lang/String;Lcn/hutool/core/text/PasswdStrength$CHAR_TYPE;)I

    move-result v7

    if-lez v7, :cond_10

    sget-object v7, Lcn/hutool/core/text/PasswdStrength$CHAR_TYPE;->CAPITAL_LETTER:Lcn/hutool/core/text/PasswdStrength$CHAR_TYPE;

    .line 86
    invoke-static {p0, v7}, Lcn/hutool/core/text/PasswdStrength;->countLetter(Ljava/lang/String;Lcn/hutool/core/text/PasswdStrength$CHAR_TYPE;)I

    move-result v7

    if-lez v7, :cond_10

    sget-object v7, Lcn/hutool/core/text/PasswdStrength$CHAR_TYPE;->OTHER_CHAR:Lcn/hutool/core/text/PasswdStrength$CHAR_TYPE;

    invoke-static {p0, v7}, Lcn/hutool/core/text/PasswdStrength;->countLetter(Ljava/lang/String;Lcn/hutool/core/text/PasswdStrength$CHAR_TYPE;)I

    move-result v7

    if-lez v7, :cond_10

    add-int/lit8 v1, v1, 0x1

    :cond_10
    const/4 v7, 0x3

    const/4 v8, 0x2

    if-le v0, v5, :cond_11

    .line 90
    sget-object v9, Lcn/hutool/core/text/PasswdStrength$CHAR_TYPE;->NUM:Lcn/hutool/core/text/PasswdStrength$CHAR_TYPE;

    invoke-static {p0, v9}, Lcn/hutool/core/text/PasswdStrength;->countLetter(Ljava/lang/String;Lcn/hutool/core/text/PasswdStrength$CHAR_TYPE;)I

    move-result v9

    if-lt v9, v7, :cond_11

    sget-object v9, Lcn/hutool/core/text/PasswdStrength$CHAR_TYPE;->SMALL_LETTER:Lcn/hutool/core/text/PasswdStrength$CHAR_TYPE;

    invoke-static {p0, v9}, Lcn/hutool/core/text/PasswdStrength;->countLetter(Ljava/lang/String;Lcn/hutool/core/text/PasswdStrength$CHAR_TYPE;)I

    move-result v9

    if-ge v9, v7, :cond_16

    :cond_11
    sget-object v9, Lcn/hutool/core/text/PasswdStrength$CHAR_TYPE;->NUM:Lcn/hutool/core/text/PasswdStrength$CHAR_TYPE;

    .line 91
    invoke-static {p0, v9}, Lcn/hutool/core/text/PasswdStrength;->countLetter(Ljava/lang/String;Lcn/hutool/core/text/PasswdStrength$CHAR_TYPE;)I

    move-result v9

    if-lt v9, v7, :cond_12

    sget-object v9, Lcn/hutool/core/text/PasswdStrength$CHAR_TYPE;->CAPITAL_LETTER:Lcn/hutool/core/text/PasswdStrength$CHAR_TYPE;

    invoke-static {p0, v9}, Lcn/hutool/core/text/PasswdStrength;->countLetter(Ljava/lang/String;Lcn/hutool/core/text/PasswdStrength$CHAR_TYPE;)I

    move-result v9

    if-ge v9, v7, :cond_16

    :cond_12
    sget-object v9, Lcn/hutool/core/text/PasswdStrength$CHAR_TYPE;->NUM:Lcn/hutool/core/text/PasswdStrength$CHAR_TYPE;

    .line 92
    invoke-static {p0, v9}, Lcn/hutool/core/text/PasswdStrength;->countLetter(Ljava/lang/String;Lcn/hutool/core/text/PasswdStrength$CHAR_TYPE;)I

    move-result v9

    if-lt v9, v7, :cond_13

    sget-object v9, Lcn/hutool/core/text/PasswdStrength$CHAR_TYPE;->OTHER_CHAR:Lcn/hutool/core/text/PasswdStrength$CHAR_TYPE;

    invoke-static {p0, v9}, Lcn/hutool/core/text/PasswdStrength;->countLetter(Ljava/lang/String;Lcn/hutool/core/text/PasswdStrength$CHAR_TYPE;)I

    move-result v9

    if-ge v9, v8, :cond_16

    :cond_13
    sget-object v9, Lcn/hutool/core/text/PasswdStrength$CHAR_TYPE;->SMALL_LETTER:Lcn/hutool/core/text/PasswdStrength$CHAR_TYPE;

    .line 93
    invoke-static {p0, v9}, Lcn/hutool/core/text/PasswdStrength;->countLetter(Ljava/lang/String;Lcn/hutool/core/text/PasswdStrength$CHAR_TYPE;)I

    move-result v9

    if-lt v9, v7, :cond_14

    sget-object v9, Lcn/hutool/core/text/PasswdStrength$CHAR_TYPE;->CAPITAL_LETTER:Lcn/hutool/core/text/PasswdStrength$CHAR_TYPE;

    invoke-static {p0, v9}, Lcn/hutool/core/text/PasswdStrength;->countLetter(Ljava/lang/String;Lcn/hutool/core/text/PasswdStrength$CHAR_TYPE;)I

    move-result v9

    if-ge v9, v7, :cond_16

    :cond_14
    sget-object v9, Lcn/hutool/core/text/PasswdStrength$CHAR_TYPE;->SMALL_LETTER:Lcn/hutool/core/text/PasswdStrength$CHAR_TYPE;

    .line 94
    invoke-static {p0, v9}, Lcn/hutool/core/text/PasswdStrength;->countLetter(Ljava/lang/String;Lcn/hutool/core/text/PasswdStrength$CHAR_TYPE;)I

    move-result v9

    if-lt v9, v7, :cond_15

    sget-object v9, Lcn/hutool/core/text/PasswdStrength$CHAR_TYPE;->OTHER_CHAR:Lcn/hutool/core/text/PasswdStrength$CHAR_TYPE;

    invoke-static {p0, v9}, Lcn/hutool/core/text/PasswdStrength;->countLetter(Ljava/lang/String;Lcn/hutool/core/text/PasswdStrength$CHAR_TYPE;)I

    move-result v9

    if-ge v9, v8, :cond_16

    :cond_15
    sget-object v9, Lcn/hutool/core/text/PasswdStrength$CHAR_TYPE;->CAPITAL_LETTER:Lcn/hutool/core/text/PasswdStrength$CHAR_TYPE;

    .line 95
    invoke-static {p0, v9}, Lcn/hutool/core/text/PasswdStrength;->countLetter(Ljava/lang/String;Lcn/hutool/core/text/PasswdStrength$CHAR_TYPE;)I

    move-result v9

    if-lt v9, v7, :cond_17

    sget-object v9, Lcn/hutool/core/text/PasswdStrength$CHAR_TYPE;->OTHER_CHAR:Lcn/hutool/core/text/PasswdStrength$CHAR_TYPE;

    invoke-static {p0, v9}, Lcn/hutool/core/text/PasswdStrength;->countLetter(Ljava/lang/String;Lcn/hutool/core/text/PasswdStrength$CHAR_TYPE;)I

    move-result v9

    if-lt v9, v8, :cond_17

    :cond_16
    add-int/lit8 v1, v1, 0x1

    :cond_17
    if-le v0, v6, :cond_18

    .line 99
    sget-object v9, Lcn/hutool/core/text/PasswdStrength$CHAR_TYPE;->NUM:Lcn/hutool/core/text/PasswdStrength$CHAR_TYPE;

    invoke-static {p0, v9}, Lcn/hutool/core/text/PasswdStrength;->countLetter(Ljava/lang/String;Lcn/hutool/core/text/PasswdStrength$CHAR_TYPE;)I

    move-result v9

    if-lt v9, v8, :cond_18

    sget-object v9, Lcn/hutool/core/text/PasswdStrength$CHAR_TYPE;->SMALL_LETTER:Lcn/hutool/core/text/PasswdStrength$CHAR_TYPE;

    invoke-static {p0, v9}, Lcn/hutool/core/text/PasswdStrength;->countLetter(Ljava/lang/String;Lcn/hutool/core/text/PasswdStrength$CHAR_TYPE;)I

    move-result v9

    if-lt v9, v8, :cond_18

    sget-object v9, Lcn/hutool/core/text/PasswdStrength$CHAR_TYPE;->CAPITAL_LETTER:Lcn/hutool/core/text/PasswdStrength$CHAR_TYPE;

    .line 100
    invoke-static {p0, v9}, Lcn/hutool/core/text/PasswdStrength;->countLetter(Ljava/lang/String;Lcn/hutool/core/text/PasswdStrength$CHAR_TYPE;)I

    move-result v9

    if-ge v9, v8, :cond_1b

    :cond_18
    sget-object v9, Lcn/hutool/core/text/PasswdStrength$CHAR_TYPE;->NUM:Lcn/hutool/core/text/PasswdStrength$CHAR_TYPE;

    invoke-static {p0, v9}, Lcn/hutool/core/text/PasswdStrength;->countLetter(Ljava/lang/String;Lcn/hutool/core/text/PasswdStrength$CHAR_TYPE;)I

    move-result v9

    if-lt v9, v8, :cond_19

    sget-object v9, Lcn/hutool/core/text/PasswdStrength$CHAR_TYPE;->SMALL_LETTER:Lcn/hutool/core/text/PasswdStrength$CHAR_TYPE;

    .line 101
    invoke-static {p0, v9}, Lcn/hutool/core/text/PasswdStrength;->countLetter(Ljava/lang/String;Lcn/hutool/core/text/PasswdStrength$CHAR_TYPE;)I

    move-result v9

    if-lt v9, v8, :cond_19

    sget-object v9, Lcn/hutool/core/text/PasswdStrength$CHAR_TYPE;->OTHER_CHAR:Lcn/hutool/core/text/PasswdStrength$CHAR_TYPE;

    invoke-static {p0, v9}, Lcn/hutool/core/text/PasswdStrength;->countLetter(Ljava/lang/String;Lcn/hutool/core/text/PasswdStrength$CHAR_TYPE;)I

    move-result v9

    if-ge v9, v8, :cond_1b

    :cond_19
    sget-object v9, Lcn/hutool/core/text/PasswdStrength$CHAR_TYPE;->NUM:Lcn/hutool/core/text/PasswdStrength$CHAR_TYPE;

    .line 102
    invoke-static {p0, v9}, Lcn/hutool/core/text/PasswdStrength;->countLetter(Ljava/lang/String;Lcn/hutool/core/text/PasswdStrength$CHAR_TYPE;)I

    move-result v9

    if-lt v9, v8, :cond_1a

    sget-object v9, Lcn/hutool/core/text/PasswdStrength$CHAR_TYPE;->CAPITAL_LETTER:Lcn/hutool/core/text/PasswdStrength$CHAR_TYPE;

    invoke-static {p0, v9}, Lcn/hutool/core/text/PasswdStrength;->countLetter(Ljava/lang/String;Lcn/hutool/core/text/PasswdStrength$CHAR_TYPE;)I

    move-result v9

    if-lt v9, v8, :cond_1a

    sget-object v9, Lcn/hutool/core/text/PasswdStrength$CHAR_TYPE;->OTHER_CHAR:Lcn/hutool/core/text/PasswdStrength$CHAR_TYPE;

    .line 103
    invoke-static {p0, v9}, Lcn/hutool/core/text/PasswdStrength;->countLetter(Ljava/lang/String;Lcn/hutool/core/text/PasswdStrength$CHAR_TYPE;)I

    move-result v9

    if-ge v9, v8, :cond_1b

    :cond_1a
    sget-object v9, Lcn/hutool/core/text/PasswdStrength$CHAR_TYPE;->SMALL_LETTER:Lcn/hutool/core/text/PasswdStrength$CHAR_TYPE;

    invoke-static {p0, v9}, Lcn/hutool/core/text/PasswdStrength;->countLetter(Ljava/lang/String;Lcn/hutool/core/text/PasswdStrength$CHAR_TYPE;)I

    move-result v9

    if-lt v9, v8, :cond_1c

    sget-object v9, Lcn/hutool/core/text/PasswdStrength$CHAR_TYPE;->CAPITAL_LETTER:Lcn/hutool/core/text/PasswdStrength$CHAR_TYPE;

    .line 104
    invoke-static {p0, v9}, Lcn/hutool/core/text/PasswdStrength;->countLetter(Ljava/lang/String;Lcn/hutool/core/text/PasswdStrength$CHAR_TYPE;)I

    move-result v9

    if-lt v9, v8, :cond_1c

    sget-object v9, Lcn/hutool/core/text/PasswdStrength$CHAR_TYPE;->OTHER_CHAR:Lcn/hutool/core/text/PasswdStrength$CHAR_TYPE;

    invoke-static {p0, v9}, Lcn/hutool/core/text/PasswdStrength;->countLetter(Ljava/lang/String;Lcn/hutool/core/text/PasswdStrength$CHAR_TYPE;)I

    move-result v9

    if-lt v9, v8, :cond_1c

    :cond_1b
    add-int/lit8 v1, v1, 0x1

    :cond_1c
    const/16 v9, 0xa

    if-le v0, v9, :cond_1d

    .line 108
    sget-object v9, Lcn/hutool/core/text/PasswdStrength$CHAR_TYPE;->NUM:Lcn/hutool/core/text/PasswdStrength$CHAR_TYPE;

    invoke-static {p0, v9}, Lcn/hutool/core/text/PasswdStrength;->countLetter(Ljava/lang/String;Lcn/hutool/core/text/PasswdStrength$CHAR_TYPE;)I

    move-result v9

    if-lt v9, v8, :cond_1d

    sget-object v9, Lcn/hutool/core/text/PasswdStrength$CHAR_TYPE;->SMALL_LETTER:Lcn/hutool/core/text/PasswdStrength$CHAR_TYPE;

    invoke-static {p0, v9}, Lcn/hutool/core/text/PasswdStrength;->countLetter(Ljava/lang/String;Lcn/hutool/core/text/PasswdStrength$CHAR_TYPE;)I

    move-result v9

    if-lt v9, v8, :cond_1d

    sget-object v9, Lcn/hutool/core/text/PasswdStrength$CHAR_TYPE;->CAPITAL_LETTER:Lcn/hutool/core/text/PasswdStrength$CHAR_TYPE;

    .line 109
    invoke-static {p0, v9}, Lcn/hutool/core/text/PasswdStrength;->countLetter(Ljava/lang/String;Lcn/hutool/core/text/PasswdStrength$CHAR_TYPE;)I

    move-result v9

    if-lt v9, v8, :cond_1d

    sget-object v9, Lcn/hutool/core/text/PasswdStrength$CHAR_TYPE;->OTHER_CHAR:Lcn/hutool/core/text/PasswdStrength$CHAR_TYPE;

    invoke-static {p0, v9}, Lcn/hutool/core/text/PasswdStrength;->countLetter(Ljava/lang/String;Lcn/hutool/core/text/PasswdStrength$CHAR_TYPE;)I

    move-result v9

    if-lt v9, v8, :cond_1d

    add-int/lit8 v1, v1, 0x1

    .line 113
    :cond_1d
    sget-object v8, Lcn/hutool/core/text/PasswdStrength$CHAR_TYPE;->OTHER_CHAR:Lcn/hutool/core/text/PasswdStrength$CHAR_TYPE;

    invoke-static {p0, v8}, Lcn/hutool/core/text/PasswdStrength;->countLetter(Ljava/lang/String;Lcn/hutool/core/text/PasswdStrength$CHAR_TYPE;)I

    move-result v8

    if-lt v8, v7, :cond_1e

    add-int/lit8 v1, v1, 0x1

    .line 116
    :cond_1e
    sget-object v8, Lcn/hutool/core/text/PasswdStrength$CHAR_TYPE;->OTHER_CHAR:Lcn/hutool/core/text/PasswdStrength$CHAR_TYPE;

    invoke-static {p0, v8}, Lcn/hutool/core/text/PasswdStrength;->countLetter(Ljava/lang/String;Lcn/hutool/core/text/PasswdStrength$CHAR_TYPE;)I

    move-result v8

    if-lt v8, v5, :cond_1f

    add-int/lit8 v1, v1, 0x1

    :cond_1f
    const/16 v8, 0xc

    if-le v0, v8, :cond_20

    add-int/lit8 v1, v1, 0x1

    const/16 v9, 0x10

    if-lt v0, v9, :cond_20

    add-int/lit8 v1, v1, 0x1

    :cond_20
    const-string v9, "abcdefghijklmnopqrstuvwxyz"

    .line 128
    invoke-virtual {v9, p0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    if-gtz v9, :cond_21

    const-string v9, "ABCDEFGHIJKLMNOPQRSTUVWXYZ"

    invoke-virtual {v9, p0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    if-lez v9, :cond_22

    :cond_21
    add-int/lit8 v1, v1, -0x1

    :cond_22
    const-string v9, "qwertyuiop"

    .line 131
    invoke-virtual {v9, p0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    if-gtz v9, :cond_23

    const-string v9, "asdfghjkl"

    invoke-virtual {v9, p0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    if-gtz v9, :cond_23

    const-string v9, "zxcvbnm"

    invoke-virtual {v9, p0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    if-lez v9, :cond_24

    :cond_23
    add-int/lit8 v1, v1, -0x1

    .line 134
    :cond_24
    invoke-static {p0}, Lcn/hutool/core/util/StrUtil;->isNumeric(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_26

    const-string v9, "01234567890"

    invoke-virtual {v9, p0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    if-gtz v9, :cond_25

    const-string v9, "09876543210"

    invoke-virtual {v9, p0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    if-lez v9, :cond_26

    :cond_25
    add-int/lit8 v1, v1, -0x1

    .line 138
    :cond_26
    sget-object v9, Lcn/hutool/core/text/PasswdStrength$CHAR_TYPE;->NUM:Lcn/hutool/core/text/PasswdStrength$CHAR_TYPE;

    invoke-static {p0, v9}, Lcn/hutool/core/text/PasswdStrength;->countLetter(Ljava/lang/String;Lcn/hutool/core/text/PasswdStrength$CHAR_TYPE;)I

    move-result v9

    if-eq v9, v0, :cond_27

    sget-object v9, Lcn/hutool/core/text/PasswdStrength$CHAR_TYPE;->SMALL_LETTER:Lcn/hutool/core/text/PasswdStrength$CHAR_TYPE;

    invoke-static {p0, v9}, Lcn/hutool/core/text/PasswdStrength;->countLetter(Ljava/lang/String;Lcn/hutool/core/text/PasswdStrength$CHAR_TYPE;)I

    move-result v9

    if-eq v9, v0, :cond_27

    sget-object v9, Lcn/hutool/core/text/PasswdStrength$CHAR_TYPE;->CAPITAL_LETTER:Lcn/hutool/core/text/PasswdStrength$CHAR_TYPE;

    .line 139
    invoke-static {p0, v9}, Lcn/hutool/core/text/PasswdStrength;->countLetter(Ljava/lang/String;Lcn/hutool/core/text/PasswdStrength$CHAR_TYPE;)I

    move-result v9

    if-ne v9, v0, :cond_28

    :cond_27
    add-int/lit8 v1, v1, -0x1

    .line 143
    :cond_28
    rem-int/lit8 v9, v0, 0x2

    if-nez v9, :cond_2a

    .line 144
    div-int/lit8 v9, v0, 0x2

    invoke-virtual {p0, v2, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    .line 145
    invoke-virtual {p0, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    .line 146
    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_29

    add-int/lit8 v1, v1, -0x1

    .line 149
    :cond_29
    invoke-static {v10}, Lcn/hutool/core/util/StrUtil;->isCharEquals(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_2a

    invoke-static {v9}, Lcn/hutool/core/util/StrUtil;->isCharEquals(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_2a

    add-int/lit8 v1, v1, -0x1

    .line 153
    :cond_2a
    rem-int/lit8 v9, v0, 0x3

    if-nez v9, :cond_2b

    .line 154
    div-int/lit8 v9, v0, 0x3

    invoke-virtual {p0, v2, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    mul-int/lit8 v11, v9, 0x2

    .line 155
    invoke-virtual {p0, v9, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    .line 156
    invoke-virtual {p0, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    .line 157
    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2b

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2b

    add-int/lit8 v1, v1, -0x1

    .line 162
    :cond_2b
    invoke-static {p0}, Lcn/hutool/core/util/StrUtil;->isNumeric(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_2e

    if-lt v0, v5, :cond_2e

    if-gt v0, v6, :cond_2e

    if-eq v0, v6, :cond_2d

    if-ne v0, v5, :cond_2c

    goto :goto_1

    :cond_2c
    move v6, v2

    goto :goto_2

    :cond_2d
    :goto_1
    add-int/lit8 v6, v0, -0x4

    .line 165
    invoke-virtual {p0, v2, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 167
    :goto_2
    invoke-static {v6}, Lcn/hutool/core/text/PasswdStrength;->sizeOfInt(I)I

    move-result v9

    add-int/lit8 v10, v9, 0x2

    .line 168
    invoke-virtual {p0, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 169
    invoke-virtual {p0, v10, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    const/16 v11, 0x79e

    if-lt v6, v11, :cond_2e

    const/16 v11, 0x802

    if-ge v6, v11, :cond_2e

    if-lt v9, v3, :cond_2e

    if-gt v9, v8, :cond_2e

    if-lt v10, v3, :cond_2e

    const/16 v3, 0x1f

    if-gt v10, v3, :cond_2e

    add-int/lit8 v1, v1, -0x1

    .line 175
    :cond_2e
    sget-object v3, Lcn/hutool/core/text/PasswdStrength;->DICTIONARY:[Ljava/lang/String;

    array-length v6, v3

    move v8, v2

    :goto_3
    if-ge v8, v6, :cond_31

    aget-object v9, v3, v8

    .line 176
    invoke-virtual {p0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_30

    invoke-virtual {v9, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_2f

    goto :goto_4

    :cond_2f
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    :cond_30
    :goto_4
    add-int/lit8 v1, v1, -0x1

    :cond_31
    if-gt v0, v5, :cond_32

    add-int/lit8 v1, v1, -0x1

    if-gt v0, v4, :cond_32

    add-int/lit8 v1, v1, -0x1

    if-gt v0, v7, :cond_32

    move v1, v2

    .line 192
    :cond_32
    invoke-static {p0}, Lcn/hutool/core/util/StrUtil;->isCharEquals(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_33

    move v1, v2

    :cond_33
    if-gez v1, :cond_34

    goto :goto_5

    :cond_34
    move v2, v1

    :goto_5
    return v2

    .line 48
    :cond_35
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "password is empty"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static checkCharacterType(C)Lcn/hutool/core/text/PasswdStrength$CHAR_TYPE;
    .locals 1

    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-gt p0, v0, :cond_0

    .line 243
    sget-object p0, Lcn/hutool/core/text/PasswdStrength$CHAR_TYPE;->NUM:Lcn/hutool/core/text/PasswdStrength$CHAR_TYPE;

    return-object p0

    :cond_0
    const/16 v0, 0x41

    if-lt p0, v0, :cond_1

    const/16 v0, 0x5a

    if-gt p0, v0, :cond_1

    .line 246
    sget-object p0, Lcn/hutool/core/text/PasswdStrength$CHAR_TYPE;->CAPITAL_LETTER:Lcn/hutool/core/text/PasswdStrength$CHAR_TYPE;

    return-object p0

    :cond_1
    const/16 v0, 0x61

    if-lt p0, v0, :cond_2

    const/16 v0, 0x7a

    if-gt p0, v0, :cond_2

    .line 249
    sget-object p0, Lcn/hutool/core/text/PasswdStrength$CHAR_TYPE;->SMALL_LETTER:Lcn/hutool/core/text/PasswdStrength$CHAR_TYPE;

    return-object p0

    .line 251
    :cond_2
    sget-object p0, Lcn/hutool/core/text/PasswdStrength$CHAR_TYPE;->OTHER_CHAR:Lcn/hutool/core/text/PasswdStrength$CHAR_TYPE;

    return-object p0
.end method

.method private static countLetter(Ljava/lang/String;Lcn/hutool/core/text/PasswdStrength$CHAR_TYPE;)I
    .locals 4

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    .line 264
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_2

    move v2, v0

    :goto_0
    if-ge v0, v1, :cond_1

    .line 267
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lcn/hutool/core/text/PasswdStrength;->checkCharacterType(C)Lcn/hutool/core/text/PasswdStrength$CHAR_TYPE;

    move-result-object v3

    if-ne v3, p1, :cond_0

    add-int/lit8 v2, v2, 0x1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v2

    :cond_2
    return v0
.end method

.method public static getLevel(Ljava/lang/String;)Lcn/hutool/core/text/PasswdStrength$PASSWD_LEVEL;
    .locals 0

    .line 210
    invoke-static {p0}, Lcn/hutool/core/text/PasswdStrength;->check(Ljava/lang/String;)I

    move-result p0

    packed-switch p0, :pswitch_data_0

    .line 230
    sget-object p0, Lcn/hutool/core/text/PasswdStrength$PASSWD_LEVEL;->EXTREMELY_STRONG:Lcn/hutool/core/text/PasswdStrength$PASSWD_LEVEL;

    return-object p0

    .line 228
    :pswitch_0
    sget-object p0, Lcn/hutool/core/text/PasswdStrength$PASSWD_LEVEL;->VERY_STRONG:Lcn/hutool/core/text/PasswdStrength$PASSWD_LEVEL;

    return-object p0

    .line 224
    :pswitch_1
    sget-object p0, Lcn/hutool/core/text/PasswdStrength$PASSWD_LEVEL;->STRONG:Lcn/hutool/core/text/PasswdStrength$PASSWD_LEVEL;

    return-object p0

    .line 220
    :pswitch_2
    sget-object p0, Lcn/hutool/core/text/PasswdStrength$PASSWD_LEVEL;->MIDIUM:Lcn/hutool/core/text/PasswdStrength$PASSWD_LEVEL;

    return-object p0

    .line 216
    :pswitch_3
    sget-object p0, Lcn/hutool/core/text/PasswdStrength$PASSWD_LEVEL;->EASY:Lcn/hutool/core/text/PasswdStrength$PASSWD_LEVEL;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private static sizeOfInt(I)I
    .locals 2

    const/4 v0, 0x0

    .line 284
    :goto_0
    sget-object v1, Lcn/hutool/core/text/PasswdStrength;->SIZE_TABLE:[I

    aget v1, v1, v0

    if-gt p0, v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
