.class public final enum Lcn/hutool/core/text/PasswdStrength$PASSWD_LEVEL;
.super Ljava/lang/Enum;
.source "PasswdStrength.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/hutool/core/text/PasswdStrength;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PASSWD_LEVEL"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcn/hutool/core/text/PasswdStrength$PASSWD_LEVEL;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcn/hutool/core/text/PasswdStrength$PASSWD_LEVEL;

.field public static final enum EASY:Lcn/hutool/core/text/PasswdStrength$PASSWD_LEVEL;

.field public static final enum EXTREMELY_STRONG:Lcn/hutool/core/text/PasswdStrength$PASSWD_LEVEL;

.field public static final enum MIDIUM:Lcn/hutool/core/text/PasswdStrength$PASSWD_LEVEL;

.field public static final enum STRONG:Lcn/hutool/core/text/PasswdStrength$PASSWD_LEVEL;

.field public static final enum VERY_STRONG:Lcn/hutool/core/text/PasswdStrength$PASSWD_LEVEL;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 18
    new-instance v0, Lcn/hutool/core/text/PasswdStrength$PASSWD_LEVEL;

    const-string v1, "EASY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcn/hutool/core/text/PasswdStrength$PASSWD_LEVEL;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/hutool/core/text/PasswdStrength$PASSWD_LEVEL;->EASY:Lcn/hutool/core/text/PasswdStrength$PASSWD_LEVEL;

    new-instance v1, Lcn/hutool/core/text/PasswdStrength$PASSWD_LEVEL;

    const-string v3, "MIDIUM"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcn/hutool/core/text/PasswdStrength$PASSWD_LEVEL;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcn/hutool/core/text/PasswdStrength$PASSWD_LEVEL;->MIDIUM:Lcn/hutool/core/text/PasswdStrength$PASSWD_LEVEL;

    new-instance v3, Lcn/hutool/core/text/PasswdStrength$PASSWD_LEVEL;

    const-string v5, "STRONG"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcn/hutool/core/text/PasswdStrength$PASSWD_LEVEL;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcn/hutool/core/text/PasswdStrength$PASSWD_LEVEL;->STRONG:Lcn/hutool/core/text/PasswdStrength$PASSWD_LEVEL;

    new-instance v5, Lcn/hutool/core/text/PasswdStrength$PASSWD_LEVEL;

    const-string v7, "VERY_STRONG"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcn/hutool/core/text/PasswdStrength$PASSWD_LEVEL;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcn/hutool/core/text/PasswdStrength$PASSWD_LEVEL;->VERY_STRONG:Lcn/hutool/core/text/PasswdStrength$PASSWD_LEVEL;

    new-instance v7, Lcn/hutool/core/text/PasswdStrength$PASSWD_LEVEL;

    const-string v9, "EXTREMELY_STRONG"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcn/hutool/core/text/PasswdStrength$PASSWD_LEVEL;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcn/hutool/core/text/PasswdStrength$PASSWD_LEVEL;->EXTREMELY_STRONG:Lcn/hutool/core/text/PasswdStrength$PASSWD_LEVEL;

    const/4 v9, 0x5

    new-array v9, v9, [Lcn/hutool/core/text/PasswdStrength$PASSWD_LEVEL;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    .line 17
    sput-object v9, Lcn/hutool/core/text/PasswdStrength$PASSWD_LEVEL;->$VALUES:[Lcn/hutool/core/text/PasswdStrength$PASSWD_LEVEL;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 17
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcn/hutool/core/text/PasswdStrength$PASSWD_LEVEL;
    .locals 1

    .line 17
    const-class v0, Lcn/hutool/core/text/PasswdStrength$PASSWD_LEVEL;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcn/hutool/core/text/PasswdStrength$PASSWD_LEVEL;

    return-object p0
.end method

.method public static values()[Lcn/hutool/core/text/PasswdStrength$PASSWD_LEVEL;
    .locals 1

    .line 17
    sget-object v0, Lcn/hutool/core/text/PasswdStrength$PASSWD_LEVEL;->$VALUES:[Lcn/hutool/core/text/PasswdStrength$PASSWD_LEVEL;

    invoke-virtual {v0}, [Lcn/hutool/core/text/PasswdStrength$PASSWD_LEVEL;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/hutool/core/text/PasswdStrength$PASSWD_LEVEL;

    return-object v0
.end method
