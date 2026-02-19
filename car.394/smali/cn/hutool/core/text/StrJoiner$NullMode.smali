.class public final enum Lcn/hutool/core/text/StrJoiner$NullMode;
.super Ljava/lang/Enum;
.source "StrJoiner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/hutool/core/text/StrJoiner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "NullMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcn/hutool/core/text/StrJoiner$NullMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcn/hutool/core/text/StrJoiner$NullMode;

.field public static final enum IGNORE:Lcn/hutool/core/text/StrJoiner$NullMode;

.field public static final enum NULL_STRING:Lcn/hutool/core/text/StrJoiner$NullMode;

.field public static final enum TO_EMPTY:Lcn/hutool/core/text/StrJoiner$NullMode;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 384
    new-instance v0, Lcn/hutool/core/text/StrJoiner$NullMode;

    const-string v1, "IGNORE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcn/hutool/core/text/StrJoiner$NullMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/hutool/core/text/StrJoiner$NullMode;->IGNORE:Lcn/hutool/core/text/StrJoiner$NullMode;

    .line 388
    new-instance v1, Lcn/hutool/core/text/StrJoiner$NullMode;

    const-string v3, "TO_EMPTY"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcn/hutool/core/text/StrJoiner$NullMode;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcn/hutool/core/text/StrJoiner$NullMode;->TO_EMPTY:Lcn/hutool/core/text/StrJoiner$NullMode;

    .line 392
    new-instance v3, Lcn/hutool/core/text/StrJoiner$NullMode;

    const-string v5, "NULL_STRING"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcn/hutool/core/text/StrJoiner$NullMode;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcn/hutool/core/text/StrJoiner$NullMode;->NULL_STRING:Lcn/hutool/core/text/StrJoiner$NullMode;

    const/4 v5, 0x3

    new-array v5, v5, [Lcn/hutool/core/text/StrJoiner$NullMode;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 380
    sput-object v5, Lcn/hutool/core/text/StrJoiner$NullMode;->$VALUES:[Lcn/hutool/core/text/StrJoiner$NullMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 380
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcn/hutool/core/text/StrJoiner$NullMode;
    .locals 1

    .line 380
    const-class v0, Lcn/hutool/core/text/StrJoiner$NullMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcn/hutool/core/text/StrJoiner$NullMode;

    return-object p0
.end method

.method public static values()[Lcn/hutool/core/text/StrJoiner$NullMode;
    .locals 1

    .line 380
    sget-object v0, Lcn/hutool/core/text/StrJoiner$NullMode;->$VALUES:[Lcn/hutool/core/text/StrJoiner$NullMode;

    invoke-virtual {v0}, [Lcn/hutool/core/text/StrJoiner$NullMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/hutool/core/text/StrJoiner$NullMode;

    return-object v0
.end method
