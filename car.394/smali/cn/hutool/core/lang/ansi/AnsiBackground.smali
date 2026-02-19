.class public final enum Lcn/hutool/core/lang/ansi/AnsiBackground;
.super Ljava/lang/Enum;
.source "AnsiBackground.java"

# interfaces
.implements Lcn/hutool/core/lang/ansi/AnsiElement;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcn/hutool/core/lang/ansi/AnsiBackground;",
        ">;",
        "Lcn/hutool/core/lang/ansi/AnsiElement;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcn/hutool/core/lang/ansi/AnsiBackground;

.field public static final enum BLACK:Lcn/hutool/core/lang/ansi/AnsiBackground;

.field public static final enum BLUE:Lcn/hutool/core/lang/ansi/AnsiBackground;

.field public static final enum BRIGHT_BLACK:Lcn/hutool/core/lang/ansi/AnsiBackground;

.field public static final enum BRIGHT_BLUE:Lcn/hutool/core/lang/ansi/AnsiBackground;

.field public static final enum BRIGHT_CYAN:Lcn/hutool/core/lang/ansi/AnsiBackground;

.field public static final enum BRIGHT_GREEN:Lcn/hutool/core/lang/ansi/AnsiBackground;

.field public static final enum BRIGHT_MAGENTA:Lcn/hutool/core/lang/ansi/AnsiBackground;

.field public static final enum BRIGHT_RED:Lcn/hutool/core/lang/ansi/AnsiBackground;

.field public static final enum BRIGHT_WHITE:Lcn/hutool/core/lang/ansi/AnsiBackground;

.field public static final enum BRIGHT_YELLOW:Lcn/hutool/core/lang/ansi/AnsiBackground;

.field public static final enum CYAN:Lcn/hutool/core/lang/ansi/AnsiBackground;

.field public static final enum DEFAULT:Lcn/hutool/core/lang/ansi/AnsiBackground;

.field public static final enum GREEN:Lcn/hutool/core/lang/ansi/AnsiBackground;

.field public static final enum MAGENTA:Lcn/hutool/core/lang/ansi/AnsiBackground;

.field public static final enum RED:Lcn/hutool/core/lang/ansi/AnsiBackground;

.field public static final enum WHITE:Lcn/hutool/core/lang/ansi/AnsiBackground;

.field public static final enum YELLOW:Lcn/hutool/core/lang/ansi/AnsiBackground;


# instance fields
.field private final code:I


# direct methods
.method static constructor <clinit>()V
    .locals 20

    .line 18
    new-instance v0, Lcn/hutool/core/lang/ansi/AnsiBackground;

    const/16 v1, 0x31

    const-string v2, "DEFAULT"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcn/hutool/core/lang/ansi/AnsiBackground;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcn/hutool/core/lang/ansi/AnsiBackground;->DEFAULT:Lcn/hutool/core/lang/ansi/AnsiBackground;

    .line 23
    new-instance v1, Lcn/hutool/core/lang/ansi/AnsiBackground;

    const/16 v2, 0x28

    const-string v4, "BLACK"

    const/4 v5, 0x1

    invoke-direct {v1, v4, v5, v2}, Lcn/hutool/core/lang/ansi/AnsiBackground;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcn/hutool/core/lang/ansi/AnsiBackground;->BLACK:Lcn/hutool/core/lang/ansi/AnsiBackground;

    .line 28
    new-instance v2, Lcn/hutool/core/lang/ansi/AnsiBackground;

    const/16 v4, 0x29

    const-string v6, "RED"

    const/4 v7, 0x2

    invoke-direct {v2, v6, v7, v4}, Lcn/hutool/core/lang/ansi/AnsiBackground;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcn/hutool/core/lang/ansi/AnsiBackground;->RED:Lcn/hutool/core/lang/ansi/AnsiBackground;

    .line 33
    new-instance v4, Lcn/hutool/core/lang/ansi/AnsiBackground;

    const/16 v6, 0x2a

    const-string v8, "GREEN"

    const/4 v9, 0x3

    invoke-direct {v4, v8, v9, v6}, Lcn/hutool/core/lang/ansi/AnsiBackground;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcn/hutool/core/lang/ansi/AnsiBackground;->GREEN:Lcn/hutool/core/lang/ansi/AnsiBackground;

    .line 38
    new-instance v6, Lcn/hutool/core/lang/ansi/AnsiBackground;

    const/16 v8, 0x2b

    const-string v10, "YELLOW"

    const/4 v11, 0x4

    invoke-direct {v6, v10, v11, v8}, Lcn/hutool/core/lang/ansi/AnsiBackground;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcn/hutool/core/lang/ansi/AnsiBackground;->YELLOW:Lcn/hutool/core/lang/ansi/AnsiBackground;

    .line 43
    new-instance v8, Lcn/hutool/core/lang/ansi/AnsiBackground;

    const/16 v10, 0x2c

    const-string v12, "BLUE"

    const/4 v13, 0x5

    invoke-direct {v8, v12, v13, v10}, Lcn/hutool/core/lang/ansi/AnsiBackground;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lcn/hutool/core/lang/ansi/AnsiBackground;->BLUE:Lcn/hutool/core/lang/ansi/AnsiBackground;

    .line 48
    new-instance v10, Lcn/hutool/core/lang/ansi/AnsiBackground;

    const/16 v12, 0x2d

    const-string v14, "MAGENTA"

    const/4 v15, 0x6

    invoke-direct {v10, v14, v15, v12}, Lcn/hutool/core/lang/ansi/AnsiBackground;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lcn/hutool/core/lang/ansi/AnsiBackground;->MAGENTA:Lcn/hutool/core/lang/ansi/AnsiBackground;

    .line 53
    new-instance v12, Lcn/hutool/core/lang/ansi/AnsiBackground;

    const/16 v14, 0x2e

    const-string v15, "CYAN"

    const/4 v13, 0x7

    invoke-direct {v12, v15, v13, v14}, Lcn/hutool/core/lang/ansi/AnsiBackground;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lcn/hutool/core/lang/ansi/AnsiBackground;->CYAN:Lcn/hutool/core/lang/ansi/AnsiBackground;

    .line 58
    new-instance v14, Lcn/hutool/core/lang/ansi/AnsiBackground;

    const/16 v15, 0x2f

    const-string v13, "WHITE"

    const/16 v11, 0x8

    invoke-direct {v14, v13, v11, v15}, Lcn/hutool/core/lang/ansi/AnsiBackground;-><init>(Ljava/lang/String;II)V

    sput-object v14, Lcn/hutool/core/lang/ansi/AnsiBackground;->WHITE:Lcn/hutool/core/lang/ansi/AnsiBackground;

    .line 63
    new-instance v13, Lcn/hutool/core/lang/ansi/AnsiBackground;

    const/16 v15, 0x64

    const-string v11, "BRIGHT_BLACK"

    const/16 v9, 0x9

    invoke-direct {v13, v11, v9, v15}, Lcn/hutool/core/lang/ansi/AnsiBackground;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lcn/hutool/core/lang/ansi/AnsiBackground;->BRIGHT_BLACK:Lcn/hutool/core/lang/ansi/AnsiBackground;

    .line 68
    new-instance v11, Lcn/hutool/core/lang/ansi/AnsiBackground;

    const/16 v15, 0x65

    const-string v9, "BRIGHT_RED"

    const/16 v7, 0xa

    invoke-direct {v11, v9, v7, v15}, Lcn/hutool/core/lang/ansi/AnsiBackground;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lcn/hutool/core/lang/ansi/AnsiBackground;->BRIGHT_RED:Lcn/hutool/core/lang/ansi/AnsiBackground;

    .line 73
    new-instance v9, Lcn/hutool/core/lang/ansi/AnsiBackground;

    const/16 v15, 0x66

    const-string v7, "BRIGHT_GREEN"

    const/16 v5, 0xb

    invoke-direct {v9, v7, v5, v15}, Lcn/hutool/core/lang/ansi/AnsiBackground;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcn/hutool/core/lang/ansi/AnsiBackground;->BRIGHT_GREEN:Lcn/hutool/core/lang/ansi/AnsiBackground;

    .line 78
    new-instance v7, Lcn/hutool/core/lang/ansi/AnsiBackground;

    const/16 v15, 0x67

    const-string v5, "BRIGHT_YELLOW"

    const/16 v3, 0xc

    invoke-direct {v7, v5, v3, v15}, Lcn/hutool/core/lang/ansi/AnsiBackground;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcn/hutool/core/lang/ansi/AnsiBackground;->BRIGHT_YELLOW:Lcn/hutool/core/lang/ansi/AnsiBackground;

    .line 83
    new-instance v5, Lcn/hutool/core/lang/ansi/AnsiBackground;

    const/16 v15, 0x68

    const-string v3, "BRIGHT_BLUE"

    move-object/from16 v16, v7

    const/16 v7, 0xd

    invoke-direct {v5, v3, v7, v15}, Lcn/hutool/core/lang/ansi/AnsiBackground;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcn/hutool/core/lang/ansi/AnsiBackground;->BRIGHT_BLUE:Lcn/hutool/core/lang/ansi/AnsiBackground;

    .line 88
    new-instance v3, Lcn/hutool/core/lang/ansi/AnsiBackground;

    const/16 v15, 0x69

    const-string v7, "BRIGHT_MAGENTA"

    move-object/from16 v17, v5

    const/16 v5, 0xe

    invoke-direct {v3, v7, v5, v15}, Lcn/hutool/core/lang/ansi/AnsiBackground;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcn/hutool/core/lang/ansi/AnsiBackground;->BRIGHT_MAGENTA:Lcn/hutool/core/lang/ansi/AnsiBackground;

    .line 93
    new-instance v7, Lcn/hutool/core/lang/ansi/AnsiBackground;

    const/16 v15, 0x6a

    const-string v5, "BRIGHT_CYAN"

    move-object/from16 v18, v3

    const/16 v3, 0xf

    invoke-direct {v7, v5, v3, v15}, Lcn/hutool/core/lang/ansi/AnsiBackground;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcn/hutool/core/lang/ansi/AnsiBackground;->BRIGHT_CYAN:Lcn/hutool/core/lang/ansi/AnsiBackground;

    .line 98
    new-instance v5, Lcn/hutool/core/lang/ansi/AnsiBackground;

    const/16 v15, 0x6b

    const-string v3, "BRIGHT_WHITE"

    move-object/from16 v19, v7

    const/16 v7, 0x10

    invoke-direct {v5, v3, v7, v15}, Lcn/hutool/core/lang/ansi/AnsiBackground;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcn/hutool/core/lang/ansi/AnsiBackground;->BRIGHT_WHITE:Lcn/hutool/core/lang/ansi/AnsiBackground;

    const/16 v3, 0x11

    new-array v3, v3, [Lcn/hutool/core/lang/ansi/AnsiBackground;

    const/4 v15, 0x0

    aput-object v0, v3, v15

    const/4 v0, 0x1

    aput-object v1, v3, v0

    const/4 v0, 0x2

    aput-object v2, v3, v0

    const/4 v0, 0x3

    aput-object v4, v3, v0

    const/4 v0, 0x4

    aput-object v6, v3, v0

    const/4 v0, 0x5

    aput-object v8, v3, v0

    const/4 v0, 0x6

    aput-object v10, v3, v0

    const/4 v0, 0x7

    aput-object v12, v3, v0

    const/16 v0, 0x8

    aput-object v14, v3, v0

    const/16 v0, 0x9

    aput-object v13, v3, v0

    const/16 v0, 0xa

    aput-object v11, v3, v0

    const/16 v0, 0xb

    aput-object v9, v3, v0

    const/16 v0, 0xc

    aput-object v16, v3, v0

    const/16 v0, 0xd

    aput-object v17, v3, v0

    const/16 v0, 0xe

    aput-object v18, v3, v0

    const/16 v0, 0xf

    aput-object v19, v3, v0

    aput-object v5, v3, v7

    .line 13
    sput-object v3, Lcn/hutool/core/lang/ansi/AnsiBackground;->$VALUES:[Lcn/hutool/core/lang/ansi/AnsiBackground;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 102
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 103
    iput p3, p0, Lcn/hutool/core/lang/ansi/AnsiBackground;->code:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcn/hutool/core/lang/ansi/AnsiBackground;
    .locals 1

    .line 13
    const-class v0, Lcn/hutool/core/lang/ansi/AnsiBackground;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcn/hutool/core/lang/ansi/AnsiBackground;

    return-object p0
.end method

.method public static values()[Lcn/hutool/core/lang/ansi/AnsiBackground;
    .locals 1

    .line 13
    sget-object v0, Lcn/hutool/core/lang/ansi/AnsiBackground;->$VALUES:[Lcn/hutool/core/lang/ansi/AnsiBackground;

    invoke-virtual {v0}, [Lcn/hutool/core/lang/ansi/AnsiBackground;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/hutool/core/lang/ansi/AnsiBackground;

    return-object v0
.end method


# virtual methods
.method public getCode()I
    .locals 1

    .line 113
    iget v0, p0, Lcn/hutool/core/lang/ansi/AnsiBackground;->code:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 118
    iget v0, p0, Lcn/hutool/core/lang/ansi/AnsiBackground;->code:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lcn/hutool/core/util/StrUtil;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
