.class public final enum Lcn/hutool/core/date/BetweenFormatter$Level;
.super Ljava/lang/Enum;
.source "BetweenFormatter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/hutool/core/date/BetweenFormatter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Level"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcn/hutool/core/date/BetweenFormatter$Level;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcn/hutool/core/date/BetweenFormatter$Level;

.field public static final enum DAY:Lcn/hutool/core/date/BetweenFormatter$Level;

.field public static final enum HOUR:Lcn/hutool/core/date/BetweenFormatter$Level;

.field public static final enum MILLISECOND:Lcn/hutool/core/date/BetweenFormatter$Level;

.field public static final enum MINUTE:Lcn/hutool/core/date/BetweenFormatter$Level;

.field public static final enum SECOND:Lcn/hutool/core/date/BetweenFormatter$Level;


# instance fields
.field private final name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .line 151
    new-instance v0, Lcn/hutool/core/date/BetweenFormatter$Level;

    const-string v1, "\u5929"

    const-string v2, "DAY"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcn/hutool/core/date/BetweenFormatter$Level;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcn/hutool/core/date/BetweenFormatter$Level;->DAY:Lcn/hutool/core/date/BetweenFormatter$Level;

    .line 155
    new-instance v1, Lcn/hutool/core/date/BetweenFormatter$Level;

    const-string v2, "\u5c0f\u65f6"

    const-string v4, "HOUR"

    const/4 v5, 0x1

    invoke-direct {v1, v4, v5, v2}, Lcn/hutool/core/date/BetweenFormatter$Level;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcn/hutool/core/date/BetweenFormatter$Level;->HOUR:Lcn/hutool/core/date/BetweenFormatter$Level;

    .line 159
    new-instance v2, Lcn/hutool/core/date/BetweenFormatter$Level;

    const-string v4, "\u5206"

    const-string v6, "MINUTE"

    const/4 v7, 0x2

    invoke-direct {v2, v6, v7, v4}, Lcn/hutool/core/date/BetweenFormatter$Level;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcn/hutool/core/date/BetweenFormatter$Level;->MINUTE:Lcn/hutool/core/date/BetweenFormatter$Level;

    .line 163
    new-instance v4, Lcn/hutool/core/date/BetweenFormatter$Level;

    const-string v6, "\u79d2"

    const-string v8, "SECOND"

    const/4 v9, 0x3

    invoke-direct {v4, v8, v9, v6}, Lcn/hutool/core/date/BetweenFormatter$Level;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcn/hutool/core/date/BetweenFormatter$Level;->SECOND:Lcn/hutool/core/date/BetweenFormatter$Level;

    .line 167
    new-instance v6, Lcn/hutool/core/date/BetweenFormatter$Level;

    const-string v8, "\u6beb\u79d2"

    const-string v10, "MILLISECOND"

    const/4 v11, 0x4

    invoke-direct {v6, v10, v11, v8}, Lcn/hutool/core/date/BetweenFormatter$Level;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v6, Lcn/hutool/core/date/BetweenFormatter$Level;->MILLISECOND:Lcn/hutool/core/date/BetweenFormatter$Level;

    const/4 v8, 0x5

    new-array v8, v8, [Lcn/hutool/core/date/BetweenFormatter$Level;

    aput-object v0, v8, v3

    aput-object v1, v8, v5

    aput-object v2, v8, v7

    aput-object v4, v8, v9

    aput-object v6, v8, v11

    .line 146
    sput-object v8, Lcn/hutool/core/date/BetweenFormatter$Level;->$VALUES:[Lcn/hutool/core/date/BetweenFormatter$Level;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 179
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 180
    iput-object p3, p0, Lcn/hutool/core/date/BetweenFormatter$Level;->name:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcn/hutool/core/date/BetweenFormatter$Level;)Ljava/lang/String;
    .locals 0

    .line 146
    iget-object p0, p0, Lcn/hutool/core/date/BetweenFormatter$Level;->name:Ljava/lang/String;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcn/hutool/core/date/BetweenFormatter$Level;
    .locals 1

    .line 146
    const-class v0, Lcn/hutool/core/date/BetweenFormatter$Level;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcn/hutool/core/date/BetweenFormatter$Level;

    return-object p0
.end method

.method public static values()[Lcn/hutool/core/date/BetweenFormatter$Level;
    .locals 1

    .line 146
    sget-object v0, Lcn/hutool/core/date/BetweenFormatter$Level;->$VALUES:[Lcn/hutool/core/date/BetweenFormatter$Level;

    invoke-virtual {v0}, [Lcn/hutool/core/date/BetweenFormatter$Level;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/hutool/core/date/BetweenFormatter$Level;

    return-object v0
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .line 189
    iget-object v0, p0, Lcn/hutool/core/date/BetweenFormatter$Level;->name:Ljava/lang/String;

    return-object v0
.end method
