.class public final enum Lcn/hutool/core/lang/ansi/AnsiColors$BitDepth;
.super Ljava/lang/Enum;
.source "AnsiColors.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/hutool/core/lang/ansi/AnsiColors;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "BitDepth"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcn/hutool/core/lang/ansi/AnsiColors$BitDepth;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcn/hutool/core/lang/ansi/AnsiColors$BitDepth;

.field public static final enum EIGHT:Lcn/hutool/core/lang/ansi/AnsiColors$BitDepth;

.field public static final enum FOUR:Lcn/hutool/core/lang/ansi/AnsiColors$BitDepth;


# instance fields
.field private final bits:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 129
    new-instance v0, Lcn/hutool/core/lang/ansi/AnsiColors$BitDepth;

    const/4 v1, 0x4

    const-string v2, "FOUR"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcn/hutool/core/lang/ansi/AnsiColors$BitDepth;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcn/hutool/core/lang/ansi/AnsiColors$BitDepth;->FOUR:Lcn/hutool/core/lang/ansi/AnsiColors$BitDepth;

    .line 135
    new-instance v1, Lcn/hutool/core/lang/ansi/AnsiColors$BitDepth;

    const/16 v2, 0x8

    const-string v4, "EIGHT"

    const/4 v5, 0x1

    invoke-direct {v1, v4, v5, v2}, Lcn/hutool/core/lang/ansi/AnsiColors$BitDepth;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcn/hutool/core/lang/ansi/AnsiColors$BitDepth;->EIGHT:Lcn/hutool/core/lang/ansi/AnsiColors$BitDepth;

    const/4 v2, 0x2

    new-array v2, v2, [Lcn/hutool/core/lang/ansi/AnsiColors$BitDepth;

    aput-object v0, v2, v3

    aput-object v1, v2, v5

    .line 122
    sput-object v2, Lcn/hutool/core/lang/ansi/AnsiColors$BitDepth;->$VALUES:[Lcn/hutool/core/lang/ansi/AnsiColors$BitDepth;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 139
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 140
    iput p3, p0, Lcn/hutool/core/lang/ansi/AnsiColors$BitDepth;->bits:I

    return-void
.end method

.method public static of(I)Lcn/hutool/core/lang/ansi/AnsiColors$BitDepth;
    .locals 5

    .line 144
    invoke-static {}, Lcn/hutool/core/lang/ansi/AnsiColors$BitDepth;->values()[Lcn/hutool/core/lang/ansi/AnsiColors$BitDepth;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 145
    iget v4, v3, Lcn/hutool/core/lang/ansi/AnsiColors$BitDepth;->bits:I

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 149
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unsupported ANSI bit depth \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, "\'"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcn/hutool/core/lang/ansi/AnsiColors$BitDepth;
    .locals 1

    .line 122
    const-class v0, Lcn/hutool/core/lang/ansi/AnsiColors$BitDepth;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcn/hutool/core/lang/ansi/AnsiColors$BitDepth;

    return-object p0
.end method

.method public static values()[Lcn/hutool/core/lang/ansi/AnsiColors$BitDepth;
    .locals 1

    .line 122
    sget-object v0, Lcn/hutool/core/lang/ansi/AnsiColors$BitDepth;->$VALUES:[Lcn/hutool/core/lang/ansi/AnsiColors$BitDepth;

    invoke-virtual {v0}, [Lcn/hutool/core/lang/ansi/AnsiColors$BitDepth;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/hutool/core/lang/ansi/AnsiColors$BitDepth;

    return-object v0
.end method
