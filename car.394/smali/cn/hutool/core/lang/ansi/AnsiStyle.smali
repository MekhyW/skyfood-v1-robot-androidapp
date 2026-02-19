.class public final enum Lcn/hutool/core/lang/ansi/AnsiStyle;
.super Ljava/lang/Enum;
.source "AnsiStyle.java"

# interfaces
.implements Lcn/hutool/core/lang/ansi/AnsiElement;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcn/hutool/core/lang/ansi/AnsiStyle;",
        ">;",
        "Lcn/hutool/core/lang/ansi/AnsiElement;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcn/hutool/core/lang/ansi/AnsiStyle;

.field public static final enum BOLD:Lcn/hutool/core/lang/ansi/AnsiStyle;

.field public static final enum FAINT:Lcn/hutool/core/lang/ansi/AnsiStyle;

.field public static final enum ITALIC:Lcn/hutool/core/lang/ansi/AnsiStyle;

.field public static final enum NORMAL:Lcn/hutool/core/lang/ansi/AnsiStyle;

.field public static final enum UNDERLINE:Lcn/hutool/core/lang/ansi/AnsiStyle;


# instance fields
.field private final code:I


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 18
    new-instance v0, Lcn/hutool/core/lang/ansi/AnsiStyle;

    const-string v1, "NORMAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcn/hutool/core/lang/ansi/AnsiStyle;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcn/hutool/core/lang/ansi/AnsiStyle;->NORMAL:Lcn/hutool/core/lang/ansi/AnsiStyle;

    .line 23
    new-instance v1, Lcn/hutool/core/lang/ansi/AnsiStyle;

    const-string v3, "BOLD"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcn/hutool/core/lang/ansi/AnsiStyle;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcn/hutool/core/lang/ansi/AnsiStyle;->BOLD:Lcn/hutool/core/lang/ansi/AnsiStyle;

    .line 28
    new-instance v3, Lcn/hutool/core/lang/ansi/AnsiStyle;

    const-string v5, "FAINT"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcn/hutool/core/lang/ansi/AnsiStyle;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcn/hutool/core/lang/ansi/AnsiStyle;->FAINT:Lcn/hutool/core/lang/ansi/AnsiStyle;

    .line 33
    new-instance v5, Lcn/hutool/core/lang/ansi/AnsiStyle;

    const-string v7, "ITALIC"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lcn/hutool/core/lang/ansi/AnsiStyle;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcn/hutool/core/lang/ansi/AnsiStyle;->ITALIC:Lcn/hutool/core/lang/ansi/AnsiStyle;

    .line 38
    new-instance v7, Lcn/hutool/core/lang/ansi/AnsiStyle;

    const-string v9, "UNDERLINE"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v10}, Lcn/hutool/core/lang/ansi/AnsiStyle;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcn/hutool/core/lang/ansi/AnsiStyle;->UNDERLINE:Lcn/hutool/core/lang/ansi/AnsiStyle;

    const/4 v9, 0x5

    new-array v9, v9, [Lcn/hutool/core/lang/ansi/AnsiStyle;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    .line 13
    sput-object v9, Lcn/hutool/core/lang/ansi/AnsiStyle;->$VALUES:[Lcn/hutool/core/lang/ansi/AnsiStyle;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 42
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 43
    iput p3, p0, Lcn/hutool/core/lang/ansi/AnsiStyle;->code:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcn/hutool/core/lang/ansi/AnsiStyle;
    .locals 1

    .line 13
    const-class v0, Lcn/hutool/core/lang/ansi/AnsiStyle;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcn/hutool/core/lang/ansi/AnsiStyle;

    return-object p0
.end method

.method public static values()[Lcn/hutool/core/lang/ansi/AnsiStyle;
    .locals 1

    .line 13
    sget-object v0, Lcn/hutool/core/lang/ansi/AnsiStyle;->$VALUES:[Lcn/hutool/core/lang/ansi/AnsiStyle;

    invoke-virtual {v0}, [Lcn/hutool/core/lang/ansi/AnsiStyle;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/hutool/core/lang/ansi/AnsiStyle;

    return-object v0
.end method


# virtual methods
.method public getCode()I
    .locals 1

    .line 53
    iget v0, p0, Lcn/hutool/core/lang/ansi/AnsiStyle;->code:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 58
    iget v0, p0, Lcn/hutool/core/lang/ansi/AnsiStyle;->code:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lcn/hutool/core/util/StrUtil;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
