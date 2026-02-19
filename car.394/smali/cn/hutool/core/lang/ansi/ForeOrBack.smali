.class public final enum Lcn/hutool/core/lang/ansi/ForeOrBack;
.super Ljava/lang/Enum;
.source "ForeOrBack.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcn/hutool/core/lang/ansi/ForeOrBack;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcn/hutool/core/lang/ansi/ForeOrBack;

.field public static final enum BACK:Lcn/hutool/core/lang/ansi/ForeOrBack;

.field public static final enum FORE:Lcn/hutool/core/lang/ansi/ForeOrBack;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 11
    new-instance v0, Lcn/hutool/core/lang/ansi/ForeOrBack;

    const-string v1, "FORE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcn/hutool/core/lang/ansi/ForeOrBack;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/hutool/core/lang/ansi/ForeOrBack;->FORE:Lcn/hutool/core/lang/ansi/ForeOrBack;

    .line 15
    new-instance v1, Lcn/hutool/core/lang/ansi/ForeOrBack;

    const-string v3, "BACK"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcn/hutool/core/lang/ansi/ForeOrBack;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcn/hutool/core/lang/ansi/ForeOrBack;->BACK:Lcn/hutool/core/lang/ansi/ForeOrBack;

    const/4 v3, 0x2

    new-array v3, v3, [Lcn/hutool/core/lang/ansi/ForeOrBack;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    .line 6
    sput-object v3, Lcn/hutool/core/lang/ansi/ForeOrBack;->$VALUES:[Lcn/hutool/core/lang/ansi/ForeOrBack;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 6
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcn/hutool/core/lang/ansi/ForeOrBack;
    .locals 1

    .line 6
    const-class v0, Lcn/hutool/core/lang/ansi/ForeOrBack;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcn/hutool/core/lang/ansi/ForeOrBack;

    return-object p0
.end method

.method public static values()[Lcn/hutool/core/lang/ansi/ForeOrBack;
    .locals 1

    .line 6
    sget-object v0, Lcn/hutool/core/lang/ansi/ForeOrBack;->$VALUES:[Lcn/hutool/core/lang/ansi/ForeOrBack;

    invoke-virtual {v0}, [Lcn/hutool/core/lang/ansi/ForeOrBack;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/hutool/core/lang/ansi/ForeOrBack;

    return-object v0
.end method
