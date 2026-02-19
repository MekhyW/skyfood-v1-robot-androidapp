.class final enum Lcom/autoai/research/atools/LogUtils$CodeLocationStyle;
.super Ljava/lang/Enum;
.source "LogUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/autoai/research/atools/LogUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "CodeLocationStyle"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/autoai/research/atools/LogUtils$CodeLocationStyle;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/autoai/research/atools/LogUtils$CodeLocationStyle;

.field public static final enum FIRST:Lcom/autoai/research/atools/LogUtils$CodeLocationStyle;

.field public static final enum SUBSEQUENT:Lcom/autoai/research/atools/LogUtils$CodeLocationStyle;


# instance fields
.field private isAt:Z

.field private isSimpleClassName:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 271
    new-instance v0, Lcom/autoai/research/atools/LogUtils$CodeLocationStyle;

    const-string v1, "FIRST"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3, v3}, Lcom/autoai/research/atools/LogUtils$CodeLocationStyle;-><init>(Ljava/lang/String;IZZ)V

    sput-object v0, Lcom/autoai/research/atools/LogUtils$CodeLocationStyle;->FIRST:Lcom/autoai/research/atools/LogUtils$CodeLocationStyle;

    .line 275
    new-instance v1, Lcom/autoai/research/atools/LogUtils$CodeLocationStyle;

    const-string v4, "SUBSEQUENT"

    invoke-direct {v1, v4, v3, v3, v3}, Lcom/autoai/research/atools/LogUtils$CodeLocationStyle;-><init>(Ljava/lang/String;IZZ)V

    sput-object v1, Lcom/autoai/research/atools/LogUtils$CodeLocationStyle;->SUBSEQUENT:Lcom/autoai/research/atools/LogUtils$CodeLocationStyle;

    const/4 v4, 0x2

    new-array v4, v4, [Lcom/autoai/research/atools/LogUtils$CodeLocationStyle;

    aput-object v0, v4, v2

    aput-object v1, v4, v3

    .line 266
    sput-object v4, Lcom/autoai/research/atools/LogUtils$CodeLocationStyle;->$VALUES:[Lcom/autoai/research/atools/LogUtils$CodeLocationStyle;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ)V"
        }
    .end annotation

    .line 287
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 288
    iput-boolean p3, p0, Lcom/autoai/research/atools/LogUtils$CodeLocationStyle;->isAt:Z

    .line 289
    iput-boolean p4, p0, Lcom/autoai/research/atools/LogUtils$CodeLocationStyle;->isSimpleClassName:Z

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/autoai/research/atools/LogUtils$CodeLocationStyle;
    .locals 1

    .line 266
    const-class v0, Lcom/autoai/research/atools/LogUtils$CodeLocationStyle;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/autoai/research/atools/LogUtils$CodeLocationStyle;

    return-object p0
.end method

.method public static values()[Lcom/autoai/research/atools/LogUtils$CodeLocationStyle;
    .locals 1

    .line 266
    sget-object v0, Lcom/autoai/research/atools/LogUtils$CodeLocationStyle;->$VALUES:[Lcom/autoai/research/atools/LogUtils$CodeLocationStyle;

    invoke-virtual {v0}, [Lcom/autoai/research/atools/LogUtils$CodeLocationStyle;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/autoai/research/atools/LogUtils$CodeLocationStyle;

    return-object v0
.end method


# virtual methods
.method public isAt()Z
    .locals 1

    .line 296
    iget-boolean v0, p0, Lcom/autoai/research/atools/LogUtils$CodeLocationStyle;->isAt:Z

    return v0
.end method

.method public isSimpleClassName()Z
    .locals 1

    .line 303
    iget-boolean v0, p0, Lcom/autoai/research/atools/LogUtils$CodeLocationStyle;->isSimpleClassName:Z

    return v0
.end method
