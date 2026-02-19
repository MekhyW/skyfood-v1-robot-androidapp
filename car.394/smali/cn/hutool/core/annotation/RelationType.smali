.class public final enum Lcn/hutool/core/annotation/RelationType;
.super Ljava/lang/Enum;
.source "RelationType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcn/hutool/core/annotation/RelationType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcn/hutool/core/annotation/RelationType;

.field public static final enum ALIAS_FOR:Lcn/hutool/core/annotation/RelationType;

.field public static final enum FORCE_ALIAS_FOR:Lcn/hutool/core/annotation/RelationType;

.field public static final enum MIRROR_FOR:Lcn/hutool/core/annotation/RelationType;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 33
    new-instance v0, Lcn/hutool/core/annotation/RelationType;

    const-string v1, "MIRROR_FOR"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcn/hutool/core/annotation/RelationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/hutool/core/annotation/RelationType;->MIRROR_FOR:Lcn/hutool/core/annotation/RelationType;

    .line 42
    new-instance v1, Lcn/hutool/core/annotation/RelationType;

    const-string v3, "ALIAS_FOR"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcn/hutool/core/annotation/RelationType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcn/hutool/core/annotation/RelationType;->ALIAS_FOR:Lcn/hutool/core/annotation/RelationType;

    .line 48
    new-instance v3, Lcn/hutool/core/annotation/RelationType;

    const-string v5, "FORCE_ALIAS_FOR"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcn/hutool/core/annotation/RelationType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcn/hutool/core/annotation/RelationType;->FORCE_ALIAS_FOR:Lcn/hutool/core/annotation/RelationType;

    const/4 v5, 0x3

    new-array v5, v5, [Lcn/hutool/core/annotation/RelationType;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 21
    sput-object v5, Lcn/hutool/core/annotation/RelationType;->$VALUES:[Lcn/hutool/core/annotation/RelationType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 21
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcn/hutool/core/annotation/RelationType;
    .locals 1

    .line 21
    const-class v0, Lcn/hutool/core/annotation/RelationType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcn/hutool/core/annotation/RelationType;

    return-object p0
.end method

.method public static values()[Lcn/hutool/core/annotation/RelationType;
    .locals 1

    .line 21
    sget-object v0, Lcn/hutool/core/annotation/RelationType;->$VALUES:[Lcn/hutool/core/annotation/RelationType;

    invoke-virtual {v0}, [Lcn/hutool/core/annotation/RelationType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/hutool/core/annotation/RelationType;

    return-object v0
.end method
